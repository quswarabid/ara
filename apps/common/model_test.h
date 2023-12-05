#ifndef _COMPLIANCE_MODEL_H
#define _COMPLIANCE_MODEL_H
#define RVMODEL_DATA_SECTION \
        .pushsection .tohost,"aw",@progbits;                            \
        .align 8; .global tohost; tohost: .dword 0;                     \
        .align 8; .global fromhost; fromhost: .dword 0;                 \
        .popsection;                                                    \
        .align 8; .global begin_regstate; begin_regstate:               \
        .word 128;                                                      \
        .align 8; .global end_regstate; end_regstate:                   \
        .word 4;

//RV_COMPLIANCE_HALT
#define RVMODEL_HALT                                              \
    la t0, eoc_address_reg;                                              \
    sd a0, 0(t0);                                              \
    jal x0, _eoc
//  li x1, 1;                                                                   \
//  write_tohost:                                                               \
//    sw x1, tohost, t5;                                                        \
//    j write_tohost;

#define RVMODEL_BOOT

//RV_COMPLIANCE_DATA_BEGIN
#define RVMODEL_DATA_BEGIN                                              \
  RVMODEL_DATA_SECTION                                                        \
  .align 4;\
  .global begin_signature; begin_signature:

//RV_COMPLIANCE_DATA_END
#define RVMODEL_DATA_END                                                      \
  .align 4;\
  .global end_signature; end_signature:  

//RVTEST_IO_INIT
#define RVMODEL_IO_INIT
//RVTEST_IO_WRITE_STR
#define RVMODEL_IO_WRITE_STR(_R, _STR)
//RVTEST_IO_CHECK
#define RVMODEL_IO_CHECK()
//RVTEST_IO_ASSERT_GPR_EQ
#define RVMODEL_IO_ASSERT_GPR_EQ(_S, _R, _I)
//RVTEST_IO_ASSERT_SFPR_EQ
#define RVMODEL_IO_ASSERT_SFPR_EQ(_F, _R, _I)
//RVTEST_IO_ASSERT_DFPR_EQ
#define RVMODEL_IO_ASSERT_DFPR_EQ(_D, _R, _I)

#define RVMODEL_SET_MSW_INT       \
 li t1, 1;                         \
 li t2, 0x2000000;                 \
 sw t1, 0(t2);

#define RVMODEL_CLEAR_MSW_INT     \
 li t2, 0x2000000;                 \
 sw x0, 0(t2);

#define RVMODEL_CLEAR_MTIMER_INT

#define RVMODEL_CLEAR_MEXT_INT


#include "encoding.h"

//-----------------------------------------------------------------------
// Begin Macro
//-----------------------------------------------------------------------

#define RVTEST_RV64U

#define RVTEST_RV64UF                                                          \
  .globl rvtest_init;                                                          \
  rvtest_init:                                                                 \
  RVTEST_FP_ENABLE;                                                            \
  ret

#define RVTEST_RV64UV                                                          \
  .globl rvtest_init;                                                          \
  rvtest_init:                                                                 \
  RVTEST_VECTOR_ENABLE;
ret

#define RVTEST_RV64M                                                           \
  .globl rvtest_init;                                                          \
  rvtest_init:                                                                 \
  RVTEST_ENABLE_MACHINE;                                                       \
  ret

#define RVTEST_RV64S                                                           \
  .globl rvtest_init;                                                          \
  rvtest_init:                                                                 \
  RVTEST_ENABLE_SUPERVISOR;                                                    \
  ret

#define RVTEST_ENABLE_SUPERVISOR                                               \
  li a0, MSTATUS_MPP &(MSTATUS_MPP >> 1);                                      \
  csrs mstatus, a0;                                                            \
  li a0, SIP_SSIP | SIP_STIP;                                                  \
  csrs mideleg, a0;

#define RVTEST_ENABLE_MACHINE                                                  \
  li a0, MSTATUS_MPP;                                                          \
  csrs mstatus, a0;

//#define RVTEST_FP_ENABLE                                                       \
//  li a0, MSTATUS_FS &(MSTATUS_FS >> 1);                                        \
//  csrs mstatus, a0;                                                            \
//  csrwi fcsr, 0

#define RVTEST_VECTOR_ENABLE                                                   \
  li a0, (MSTATUS_VS & (MSTATUS_VS >> 1)) | (MSTATUS_FS & (MSTATUS_FS >> 1));  \
  csrs mstatus, a0;                                                            \
  csrwi fcsr, 0;                                                               \
  csrwi vcsr, 0;

#define RISCV_MULTICORE_DISABLE                                                \
  csrr a0, mhartid;                                                            \
  1 : bnez a0, 1b

#define RVTEST_CODE_BEGIN                                                      \
  .globl main;                                                                 \
  .align 2;                                                                    \
  main:

//-----------------------------------------------------------------------
// End Macro
//-----------------------------------------------------------------------

#define RVTEST_CODE_END unimp

//-----------------------------------------------------------------------
// Pass/Fail Macro
//-----------------------------------------------------------------------

#define RVTEST_PASS                                                            \
  li a0, 0;                                                                    \
  j _eoc

#define TESTNUM gp
#define RVTEST_FAIL                                                            \
  fence;                                                                       \
  1 : beqz TESTNUM, 1b;                                                        \
  sll TESTNUM, TESTNUM, 1;                                                     \
  or TESTNUM, TESTNUM, 1;                                                      \
  addi a0, TESTNUM, 0;                                                         \
  j _fail

//-----------------------------------------------------------------------
// Data Section Macro
//-----------------------------------------------------------------------

#define EXTRA_DATA

//#define RVTEST_DATA_BEGIN
//#define RVTEST_DATA_END


#endif // _COMPLIANCE_MODEL_H

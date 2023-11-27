#----------------------------------------------------------------------------- 
    # vmsbc.S
    #-----------------------------------------------------------------------------
    #
    # Test vmsbc instructions.
    #

    #include "model_test.h"
    #include "arch_test.h"
    #include "test_macros_vector.h"

RVTEST_ISA("RV64RV64IMAFDCVZicsr")
    
    .section .text.init
    .globl rvtest_entry_point
    rvtest_entry_point:
    
    #ifdef TEST_CASE_1
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmsbc)
    
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
    RVTEST_SIGBASE( x12,signature_x12_1)
    RVTEST_SIGBASE( x20,signature_x20_0)
    RVTEST_SIGBASE( x24,signature_x24_0)
    
    
#undef TEST_MADC_VV_OP 
#define TEST_MADC_VV_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v8, v16; \
            VECTOR_RVTEST_SIGUPD(x12, v24) \
        )
#undef TEST_MADC_VX_OP 
#define TEST_MADC_VX_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            li x1, MASK_XLEN(val2); \
            inst v24, v8, x1; \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#undef TEST_MADC_VI_OP 
#define TEST_MADC_VI_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            inst v24, v8, SEXT_IMM(val2); \
            VECTOR_RVTEST_SIGUPD(x24, v24) \
        )
#define TEST_MADC_VVM_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            la x7, val2; \
            vle64.v v16, (x7); \
            inst v24, v8, v16, v0; \
            VECTOR_RVTEST_SIGUPD(x12, v24) \
        )
#define TEST_MADC_VXM_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            li x1, MASK_VSEW(val2); \
            inst v24, v8, x1, v0; \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_MADC_VIM_OP( testnum, inst, result, val1, val2 ) \
        TEST_CASE_MASK_4VL( testnum, v24, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            inst v24, v8, SEXT_IMM(val2), v0; \
            VECTOR_RVTEST_SIGUPD(x24, v24) \
        )
#define TEST_MADC_VV_OP_11( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v1, (x7); \
                inst v24, v8, v1;  \
            )
#define TEST_MADC_VV_OP_12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v2, (x7); \
                inst v24, v8, v2;  \
            )
#define TEST_MADC_VV_OP_13( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v3, (x7); \
                inst v24, v8, v3;  \
            )
#define TEST_MADC_VV_OP_14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v4, (x7); \
                inst v24, v8, v4;  \
            )
#define TEST_MADC_VV_OP_15( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v5, (x7); \
                inst v24, v8, v5;  \
            )
#define TEST_MADC_VV_OP_16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v6, (x7); \
                inst v24, v8, v6;  \
            )
#define TEST_MADC_VV_OP_17( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v7, (x7); \
                inst v24, v8, v7;  \
            )
#define TEST_MADC_VV_OP_19( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v9, (x7); \
                inst v24, v8, v9;  \
            )
#define TEST_MADC_VV_OP_110( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v10, (x7); \
                inst v24, v8, v10;  \
            )
#define TEST_MADC_VV_OP_111( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v11, (x7); \
                inst v24, v8, v11;  \
            )
#define TEST_MADC_VV_OP_112( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v12, (x7); \
                inst v24, v8, v12;  \
            )
#define TEST_MADC_VV_OP_113( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v13, (x7); \
                inst v24, v8, v13;  \
            )
#define TEST_MADC_VV_OP_114( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v14, (x7); \
                inst v24, v8, v14;  \
            )
#define TEST_MADC_VV_OP_115( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v15, (x7); \
                inst v24, v8, v15;  \
            )
#define TEST_MADC_VV_OP_117( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v17, (x7); \
                inst v24, v8, v17;  \
            )
#define TEST_MADC_VV_OP_118( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v18, (x7); \
                inst v24, v8, v18;  \
            )
#define TEST_MADC_VV_OP_119( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v19, (x7); \
                inst v24, v8, v19;  \
            )
#define TEST_MADC_VV_OP_120( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v20, (x7); \
                inst v24, v8, v20;  \
            )
#define TEST_MADC_VV_OP_121( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v21, (x7); \
                inst v24, v8, v21;  \
            )
#define TEST_MADC_VV_OP_122( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v22, (x7); \
                inst v24, v8, v22;  \
            )
#define TEST_MADC_VV_OP_123( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v23, (x7); \
                inst v24, v8, v23;  \
            )
#define TEST_MADC_VV_OP_125( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v25, (x7); \
                inst v24, v8, v25;  \
            )
#define TEST_MADC_VV_OP_126( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v26, (x7); \
                inst v24, v8, v26;  \
            )
#define TEST_MADC_VV_OP_127( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v27, (x7); \
                inst v24, v8, v27;  \
            )
#define TEST_MADC_VV_OP_128( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v28, (x7); \
                inst v24, v8, v28;  \
            )
#define TEST_MADC_VV_OP_129( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v29, (x7); \
                inst v24, v8, v29;  \
            )
#define TEST_MADC_VV_OP_130( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v30, (x7); \
                inst v24, v8, v30;  \
            )
#define TEST_MADC_VV_OP_131( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val2; \
                vle64.v v8, (x7); \
                la x7, val1; \
                vle64.v v31, (x7); \
                inst v24, v8, v31;  \
            )
#define TEST_MADC_VV_OP_rd2( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v2, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v2, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v2, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd4( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v4, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v4, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v4, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd6( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v6, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v6, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v6, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd10( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v10, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v10, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v10, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd12( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v12, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v12, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v12, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd14( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v14, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v14, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v14, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd18( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v18, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v18, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v18, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd20( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v20, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v20, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v20, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd22( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v22, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v22, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v22, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd26( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v26, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v26, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v26, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd28( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v28, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v28, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v28, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd30( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v30, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v30, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v8, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v30, v8, v16;  \
        ) 
#define TEST_MADC_VV_OP_rd8( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v8, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v8, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v24, (x7); \
            la x7, val1; \
            vle64.v v16, (x7); \
            inst v8, v24, v16; \
        )
#define TEST_MADC_VV_OP_rd16( testnum, inst, result, val2, val1 ) \
        TEST_CASE_MASK_4VL( testnum, v16, result, \
            VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v16, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val2; \
            vle64.v v24, (x7); \
            la x7, val1; \
            vle64.v v8, (x7); \
            inst v16, v24, v8; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_MADC_VV_OP( 1,  vmsbc.vv, 5201314, rs2_data+0, rs1_data+0)
  TEST_MADC_VV_OP( 2,  vmsbc.vv, 5201314, rs2_data+64, rs1_data+64)
  TEST_MADC_VV_OP( 3,  vmsbc.vv, 5201314, rs2_data+128, rs1_data+128)
  TEST_MADC_VV_OP( 4,  vmsbc.vv, 5201314, rs2_data+192, rs1_data+192)
  TEST_MADC_VV_OP( 5,  vmsbc.vv, 5201314, rs2_data+256, rs1_data+256)
  TEST_MADC_VV_OP( 6,  vmsbc.vv, 5201314, rs2_data+320, rs1_data+320)
  TEST_MADC_VV_OP( 7,  vmsbc.vv, 5201314, rs2_data+384, rs1_data+384)
  TEST_MADC_VV_OP( 8,  vmsbc.vv, 5201314, rs2_data+448, rs1_data+448)
  TEST_MADC_VV_OP( 9,  vmsbc.vv, 5201314, rs2_data+512, rs1_data+512)
  TEST_MADC_VV_OP( 10,  vmsbc.vv, 5201314, rs2_data+576, rs1_data+576)
  TEST_MADC_VV_OP( 11,  vmsbc.vv, 5201314, rs2_data+640, rs1_data+640)
  TEST_MADC_VV_OP( 12,  vmsbc.vv, 5201314, rs2_data+704, rs1_data+704)
  TEST_MADC_VV_OP( 13,  vmsbc.vv, 5201314, rs2_data+768, rs1_data+768)
  TEST_MADC_VV_OP( 14,  vmsbc.vv, 5201314, rs2_data+832, rs1_data+832)
  TEST_MADC_VV_OP( 15,  vmsbc.vv, 5201314, rs2_data+896, rs1_data+896)
  TEST_MADC_VV_OP( 16,  vmsbc.vv, 5201314, rs2_data+960, rs1_data+960)
  TEST_MADC_VV_OP( 17,  vmsbc.vv, 5201314, rs2_data+1024, rs1_data+1024)
  TEST_MADC_VV_OP( 18,  vmsbc.vv, 5201314, rs2_data+1088, rs1_data+1088)
  TEST_MADC_VV_OP( 19,  vmsbc.vv, 5201314, rs2_data+1152, rs1_data+1152)
  TEST_MADC_VV_OP( 20,  vmsbc.vv, 5201314, rs2_data+1216, rs1_data+1216)
  TEST_MADC_VV_OP( 21,  vmsbc.vv, 5201314, rs2_data+1280, rs1_data+1280)
  TEST_MADC_VV_OP( 22,  vmsbc.vv, 5201314, rs2_data+1344, rs1_data+1344)
  TEST_MADC_VV_OP( 23,  vmsbc.vv, 5201314, rs2_data+1408, rs1_data+1408)
  TEST_MADC_VV_OP( 24,  vmsbc.vv, 5201314, rs2_data+1472, rs1_data+1472)
  TEST_MADC_VV_OP( 25,  vmsbc.vv, 5201314, rs2_data+1536, rs1_data+1536)
  TEST_MADC_VV_OP( 26,  vmsbc.vv, 5201314, rs2_data+1600, rs1_data+1600)
  TEST_MADC_VV_OP( 27,  vmsbc.vv, 5201314, rs2_data+1664, rs1_data+1664)
  TEST_MADC_VV_OP( 28,  vmsbc.vv, 5201314, rs2_data+1728, rs1_data+1728)
  TEST_MADC_VV_OP( 29,  vmsbc.vv, 5201314, rs2_data+1792, rs1_data+1792)
  TEST_MADC_VV_OP( 30,  vmsbc.vv, 5201314, rs2_data+1856, rs1_data+1856)
  TEST_MADC_VV_OP( 31,  vmsbc.vv, 5201314, rs2_data+1920, rs1_data+1920)
  TEST_MADC_VV_OP( 32,  vmsbc.vv, 5201314, rs2_data+1984, rs1_data+1984)
  TEST_MADC_VV_OP( 33,  vmsbc.vv, 5201314, rs2_data+2048, rs1_data+2048)
  TEST_MADC_VV_OP( 34,  vmsbc.vv, 5201314, rs2_data+2112, rs1_data+2112)
  TEST_MADC_VV_OP( 35,  vmsbc.vv, 5201314, rs2_data+2176, rs1_data+2176)
  TEST_MADC_VV_OP( 36,  vmsbc.vv, 5201314, rs2_data+2240, rs1_data+2240)
  TEST_MADC_VV_OP( 37,  vmsbc.vv, 5201314, rs2_data+2304, rs1_data+2304)
  TEST_MADC_VV_OP( 38,  vmsbc.vv, 5201314, rs2_data+2368, rs1_data+2368)
  TEST_MADC_VV_OP( 39,  vmsbc.vv, 5201314, rs2_data+2432, rs1_data+2432)
  TEST_MADC_VV_OP( 40,  vmsbc.vv, 5201314, rs2_data+2496, rs1_data+2496)
  TEST_MADC_VV_OP( 41,  vmsbc.vv, 5201314, rs2_data+2560, rs1_data+2560)
  TEST_MADC_VV_OP( 42,  vmsbc.vv, 5201314, rs2_data+2624, rs1_data+2624)
  TEST_MADC_VV_OP( 43,  vmsbc.vv, 5201314, rs2_data+2688, rs1_data+2688)
  TEST_MADC_VV_OP( 44,  vmsbc.vv, 5201314, rs2_data+2752, rs1_data+2752)
  TEST_MADC_VV_OP( 45,  vmsbc.vv, 5201314, rs2_data+2816, rs1_data+2816)
  TEST_MADC_VV_OP( 46,  vmsbc.vv, 5201314, rs2_data+2880, rs1_data+2880)
  TEST_MADC_VV_OP( 47,  vmsbc.vv, 5201314, rs2_data+2944, rs1_data+2944)
  TEST_MADC_VV_OP( 48,  vmsbc.vv, 5201314, rs2_data+3008, rs1_data+3008)
  TEST_MADC_VV_OP( 49,  vmsbc.vv, 5201314, rs2_data+3072, rs1_data+3072)
  TEST_MADC_VV_OP( 50,  vmsbc.vv, 5201314, rs2_data+3136, rs1_data+3136)
  TEST_MADC_VV_OP( 51,  vmsbc.vv, 5201314, rs2_data+3200, rs1_data+3200)
  TEST_MADC_VV_OP( 52,  vmsbc.vv, 5201314, rs2_data+3264, rs1_data+3264)
  TEST_MADC_VV_OP( 53,  vmsbc.vv, 5201314, rs2_data+3328, rs1_data+3328)
  TEST_MADC_VV_OP( 54,  vmsbc.vv, 5201314, rs2_data+3392, rs1_data+3392)
  TEST_MADC_VV_OP( 55,  vmsbc.vv, 5201314, rs2_data+3456, rs1_data+3456)
  TEST_MADC_VV_OP( 56,  vmsbc.vv, 5201314, rs2_data+3520, rs1_data+3520)
  TEST_MADC_VV_OP( 57,  vmsbc.vv, 5201314, rs2_data+3584, rs1_data+3584)
  TEST_MADC_VV_OP( 58,  vmsbc.vv, 5201314, rs2_data+3648, rs1_data+3648)
  TEST_MADC_VV_OP( 59,  vmsbc.vv, 5201314, rs2_data+3712, rs1_data+3712)
  TEST_MADC_VV_OP( 60,  vmsbc.vv, 5201314, rs2_data+3776, rs1_data+3776)
  TEST_MADC_VV_OP( 61,  vmsbc.vv, 5201314, rs2_data+3840, rs1_data+3840)
  TEST_MADC_VV_OP( 62,  vmsbc.vv, 5201314, rs2_data+3904, rs1_data+3904)
  TEST_MADC_VV_OP( 63,  vmsbc.vv, 5201314, rs2_data+3968, rs1_data+3968)
  TEST_MADC_VV_OP( 64,  vmsbc.vv, 5201314, rs2_data+4032, rs1_data+4032)
  TEST_MADC_VV_OP( 65,  vmsbc.vv, 5201314, rs2_data+4096, rs1_data+4096)
  TEST_MADC_VV_OP( 66,  vmsbc.vv, 5201314, rs2_data+4160, rs1_data+4160)
  TEST_MADC_VV_OP( 67,  vmsbc.vv, 5201314, rs2_data+4224, rs1_data+4224)
  TEST_MADC_VV_OP( 68,  vmsbc.vv, 5201314, rs2_data+4288, rs1_data+4288)
  TEST_MADC_VV_OP( 69,  vmsbc.vv, 5201314, rs2_data+4352, rs1_data+4352)
  TEST_MADC_VV_OP( 70,  vmsbc.vv, 5201314, rs2_data+4416, rs1_data+4416)
  TEST_MADC_VV_OP( 71,  vmsbc.vv, 5201314, rs2_data+4480, rs1_data+4480)
  TEST_MADC_VV_OP( 72,  vmsbc.vv, 5201314, rs2_data+4544, rs1_data+4544)
  TEST_MADC_VV_OP( 73,  vmsbc.vv, 5201314, rs2_data+4608, rs1_data+4608)
  TEST_MADC_VV_OP( 74,  vmsbc.vv, 5201314, rs2_data+4672, rs1_data+4672)
  TEST_MADC_VV_OP( 75,  vmsbc.vv, 5201314, rs2_data+4736, rs1_data+4736)
  TEST_MADC_VV_OP( 76,  vmsbc.vv, 5201314, rs2_data+4800, rs1_data+4800)
  TEST_MADC_VV_OP_rd2( 77,  vmsbc.vv, 5201314, rs2_data+64, rs1_data+64)
  TEST_MADC_VV_OP_13( 78,  vmsbc.vv, 5201314, rs2_data+64, rs1_data+64)
  TEST_MADC_VV_OP_rd4( 79,  vmsbc.vv, 5201314, rs2_data+192, rs1_data+192)
  TEST_MADC_VV_OP_15( 80,  vmsbc.vv, 5201314, rs2_data+192, rs1_data+192)
  TEST_MADC_VV_OP_rd6( 81,  vmsbc.vv, 5201314, rs2_data+320, rs1_data+320)
  TEST_MADC_VV_OP_17( 82,  vmsbc.vv, 5201314, rs2_data+320, rs1_data+320)
  TEST_MADC_VV_OP_rd10( 83,  vmsbc.vv, 5201314, rs2_data+576, rs1_data+576)
  TEST_MADC_VV_OP_111( 84,  vmsbc.vv, 5201314, rs2_data+576, rs1_data+576)
  TEST_MADC_VV_OP_rd14( 85,  vmsbc.vv, 5201314, rs2_data+832, rs1_data+832)
  TEST_MADC_VV_OP_115( 86,  vmsbc.vv, 5201314, rs2_data+832, rs1_data+832)
  TEST_MADC_VV_OP_rd18( 87,  vmsbc.vv, 5201314, rs2_data+1088, rs1_data+1088)
  TEST_MADC_VV_OP_119( 88,  vmsbc.vv, 5201314, rs2_data+1088, rs1_data+1088)
  TEST_MADC_VV_OP_rd22( 89,  vmsbc.vv, 5201314, rs2_data+1344, rs1_data+1344)
  TEST_MADC_VV_OP_123( 90,  vmsbc.vv, 5201314, rs2_data+1344, rs1_data+1344)
  TEST_MADC_VV_OP_rd26( 91,  vmsbc.vv, 5201314, rs2_data+1600, rs1_data+1600)
  TEST_MADC_VV_OP_127( 92,  vmsbc.vv, 5201314, rs2_data+1600, rs1_data+1600)
  TEST_MADC_VV_OP_rd28( 93,  vmsbc.vv, 5201314, rs2_data+1728, rs1_data+1728)
  TEST_MADC_VV_OP_129( 94,  vmsbc.vv, 5201314, rs2_data+1728, rs1_data+1728)
  TEST_MADC_VV_OP_rd30( 95,  vmsbc.vv, 5201314, rs2_data+1856, rs1_data+1856)
  TEST_MADC_VV_OP_131( 96,  vmsbc.vv, 5201314, rs2_data+1856, rs1_data+1856)
  #-------------------------------------------------------------
  # VVM Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_MADC_VVM_OP( 97,  vmsbc.vvm, 5201314, rs2_data+0, rs1_data+0)
  TEST_MADC_VVM_OP( 98,  vmsbc.vvm, 5201314, rs2_data+64, rs1_data+64)
  TEST_MADC_VVM_OP( 99,  vmsbc.vvm, 5201314, rs2_data+128, rs1_data+128)
  TEST_MADC_VVM_OP( 100,  vmsbc.vvm, 5201314, rs2_data+192, rs1_data+192)
  TEST_MADC_VVM_OP( 101,  vmsbc.vvm, 5201314, rs2_data+256, rs1_data+256)
  TEST_MADC_VVM_OP( 102,  vmsbc.vvm, 5201314, rs2_data+320, rs1_data+320)
  TEST_MADC_VVM_OP( 103,  vmsbc.vvm, 5201314, rs2_data+384, rs1_data+384)
  TEST_MADC_VVM_OP( 104,  vmsbc.vvm, 5201314, rs2_data+448, rs1_data+448)
  TEST_MADC_VVM_OP( 105,  vmsbc.vvm, 5201314, rs2_data+512, rs1_data+512)
  TEST_MADC_VVM_OP( 106,  vmsbc.vvm, 5201314, rs2_data+576, rs1_data+576)
  TEST_MADC_VVM_OP( 107,  vmsbc.vvm, 5201314, rs2_data+640, rs1_data+640)
  TEST_MADC_VVM_OP( 108,  vmsbc.vvm, 5201314, rs2_data+704, rs1_data+704)
  TEST_MADC_VVM_OP( 109,  vmsbc.vvm, 5201314, rs2_data+768, rs1_data+768)
  TEST_MADC_VVM_OP( 110,  vmsbc.vvm, 5201314, rs2_data+832, rs1_data+832)
  TEST_MADC_VVM_OP( 111,  vmsbc.vvm, 5201314, rs2_data+896, rs1_data+896)
  TEST_MADC_VVM_OP( 112,  vmsbc.vvm, 5201314, rs2_data+960, rs1_data+960)
  TEST_MADC_VVM_OP( 113,  vmsbc.vvm, 5201314, rs2_data+1024, rs1_data+1024)
  TEST_MADC_VVM_OP( 114,  vmsbc.vvm, 5201314, rs2_data+1088, rs1_data+1088)
  TEST_MADC_VVM_OP( 115,  vmsbc.vvm, 5201314, rs2_data+1152, rs1_data+1152)
  TEST_MADC_VVM_OP( 116,  vmsbc.vvm, 5201314, rs2_data+1216, rs1_data+1216)
  TEST_MADC_VVM_OP( 117,  vmsbc.vvm, 5201314, rs2_data+1280, rs1_data+1280)
  TEST_MADC_VVM_OP( 118,  vmsbc.vvm, 5201314, rs2_data+1344, rs1_data+1344)
  TEST_MADC_VVM_OP( 119,  vmsbc.vvm, 5201314, rs2_data+1408, rs1_data+1408)
  TEST_MADC_VVM_OP( 120,  vmsbc.vvm, 5201314, rs2_data+1472, rs1_data+1472)
  TEST_MADC_VVM_OP( 121,  vmsbc.vvm, 5201314, rs2_data+1536, rs1_data+1536)
  TEST_MADC_VVM_OP( 122,  vmsbc.vvm, 5201314, rs2_data+1600, rs1_data+1600)
  TEST_MADC_VVM_OP( 123,  vmsbc.vvm, 5201314, rs2_data+1664, rs1_data+1664)
  TEST_MADC_VVM_OP( 124,  vmsbc.vvm, 5201314, rs2_data+1728, rs1_data+1728)
  TEST_MADC_VVM_OP( 125,  vmsbc.vvm, 5201314, rs2_data+1792, rs1_data+1792)
  TEST_MADC_VVM_OP( 126,  vmsbc.vvm, 5201314, rs2_data+1856, rs1_data+1856)
  TEST_MADC_VVM_OP( 127,  vmsbc.vvm, 5201314, rs2_data+1920, rs1_data+1920)
  TEST_MADC_VVM_OP( 128,  vmsbc.vvm, 5201314, rs2_data+1984, rs1_data+1984)
  TEST_MADC_VVM_OP( 129,  vmsbc.vvm, 5201314, rs2_data+2048, rs1_data+2048)
  TEST_MADC_VVM_OP( 130,  vmsbc.vvm, 5201314, rs2_data+2112, rs1_data+2112)
  TEST_MADC_VVM_OP( 131,  vmsbc.vvm, 5201314, rs2_data+2176, rs1_data+2176)
  TEST_MADC_VVM_OP( 132,  vmsbc.vvm, 5201314, rs2_data+2240, rs1_data+2240)
  TEST_MADC_VVM_OP( 133,  vmsbc.vvm, 5201314, rs2_data+2304, rs1_data+2304)
  TEST_MADC_VVM_OP( 134,  vmsbc.vvm, 5201314, rs2_data+2368, rs1_data+2368)
  TEST_MADC_VVM_OP( 135,  vmsbc.vvm, 5201314, rs2_data+2432, rs1_data+2432)
  TEST_MADC_VVM_OP( 136,  vmsbc.vvm, 5201314, rs2_data+2496, rs1_data+2496)
  TEST_MADC_VVM_OP( 137,  vmsbc.vvm, 5201314, rs2_data+2560, rs1_data+2560)
  TEST_MADC_VVM_OP( 138,  vmsbc.vvm, 5201314, rs2_data+2624, rs1_data+2624)
  TEST_MADC_VVM_OP( 139,  vmsbc.vvm, 5201314, rs2_data+2688, rs1_data+2688)
  TEST_MADC_VVM_OP( 140,  vmsbc.vvm, 5201314, rs2_data+2752, rs1_data+2752)
  TEST_MADC_VVM_OP( 141,  vmsbc.vvm, 5201314, rs2_data+2816, rs1_data+2816)
  TEST_MADC_VVM_OP( 142,  vmsbc.vvm, 5201314, rs2_data+2880, rs1_data+2880)
  TEST_MADC_VVM_OP( 143,  vmsbc.vvm, 5201314, rs2_data+2944, rs1_data+2944)
  TEST_MADC_VVM_OP( 144,  vmsbc.vvm, 5201314, rs2_data+3008, rs1_data+3008)
  TEST_MADC_VVM_OP( 145,  vmsbc.vvm, 5201314, rs2_data+3072, rs1_data+3072)
  TEST_MADC_VVM_OP( 146,  vmsbc.vvm, 5201314, rs2_data+3136, rs1_data+3136)
  TEST_MADC_VVM_OP( 147,  vmsbc.vvm, 5201314, rs2_data+3200, rs1_data+3200)
  TEST_MADC_VVM_OP( 148,  vmsbc.vvm, 5201314, rs2_data+3264, rs1_data+3264)
  TEST_MADC_VVM_OP( 149,  vmsbc.vvm, 5201314, rs2_data+3328, rs1_data+3328)
  TEST_MADC_VVM_OP( 150,  vmsbc.vvm, 5201314, rs2_data+3392, rs1_data+3392)
  TEST_MADC_VVM_OP( 151,  vmsbc.vvm, 5201314, rs2_data+3456, rs1_data+3456)
  TEST_MADC_VVM_OP( 152,  vmsbc.vvm, 5201314, rs2_data+3520, rs1_data+3520)
  TEST_MADC_VVM_OP( 153,  vmsbc.vvm, 5201314, rs2_data+3584, rs1_data+3584)
  TEST_MADC_VVM_OP( 154,  vmsbc.vvm, 5201314, rs2_data+3648, rs1_data+3648)
  TEST_MADC_VVM_OP( 155,  vmsbc.vvm, 5201314, rs2_data+3712, rs1_data+3712)
  TEST_MADC_VVM_OP( 156,  vmsbc.vvm, 5201314, rs2_data+3776, rs1_data+3776)
  TEST_MADC_VVM_OP( 157,  vmsbc.vvm, 5201314, rs2_data+3840, rs1_data+3840)
  TEST_MADC_VVM_OP( 158,  vmsbc.vvm, 5201314, rs2_data+3904, rs1_data+3904)
  TEST_MADC_VVM_OP( 159,  vmsbc.vvm, 5201314, rs2_data+3968, rs1_data+3968)
  TEST_MADC_VVM_OP( 160,  vmsbc.vvm, 5201314, rs2_data+4032, rs1_data+4032)
  TEST_MADC_VVM_OP( 161,  vmsbc.vvm, 5201314, rs2_data+4096, rs1_data+4096)
  TEST_MADC_VVM_OP( 162,  vmsbc.vvm, 5201314, rs2_data+4160, rs1_data+4160)
  TEST_MADC_VVM_OP( 163,  vmsbc.vvm, 5201314, rs2_data+4224, rs1_data+4224)
  TEST_MADC_VVM_OP( 164,  vmsbc.vvm, 5201314, rs2_data+4288, rs1_data+4288)
  TEST_MADC_VVM_OP( 165,  vmsbc.vvm, 5201314, rs2_data+4352, rs1_data+4352)
  TEST_MADC_VVM_OP( 166,  vmsbc.vvm, 5201314, rs2_data+4416, rs1_data+4416)
  TEST_MADC_VVM_OP( 167,  vmsbc.vvm, 5201314, rs2_data+4480, rs1_data+4480)
  TEST_MADC_VVM_OP( 168,  vmsbc.vvm, 5201314, rs2_data+4544, rs1_data+4544)
  TEST_MADC_VVM_OP( 169,  vmsbc.vvm, 5201314, rs2_data+4608, rs1_data+4608)
  TEST_MADC_VVM_OP( 170,  vmsbc.vvm, 5201314, rs2_data+4672, rs1_data+4672)
  TEST_MADC_VVM_OP( 171,  vmsbc.vvm, 5201314, rs2_data+4736, rs1_data+4736)
  TEST_MADC_VVM_OP( 172,  vmsbc.vvm, 5201314, rs2_data+4800, rs1_data+4800)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_MADC_VX_OP( 173,  vmsbc.vx, 5201314, rs2_data+0, 0xfffffffffffffffe)
  TEST_MADC_VX_OP( 174,  vmsbc.vx, 5201314, rs2_data+64, 0xfffffffffffffffd)
  TEST_MADC_VX_OP( 175,  vmsbc.vx, 5201314, rs2_data+128, 0xfffffffffffffffb)
  TEST_MADC_VX_OP( 176,  vmsbc.vx, 5201314, rs2_data+192, 0xfffffffffffffff7)
  TEST_MADC_VX_OP( 177,  vmsbc.vx, 5201314, rs2_data+256, 0xffffffffffffffef)
  TEST_MADC_VX_OP( 178,  vmsbc.vx, 5201314, rs2_data+320, 0xffffffffffffffdf)
  TEST_MADC_VX_OP( 179,  vmsbc.vx, 5201314, rs2_data+384, 0xffffffffffffffbf)
  TEST_MADC_VX_OP( 180,  vmsbc.vx, 5201314, rs2_data+448, 0xffffffffffffff7f)
  TEST_MADC_VX_OP( 181,  vmsbc.vx, 5201314, rs2_data+512, 0xfffffffffffffeff)
  TEST_MADC_VX_OP( 182,  vmsbc.vx, 5201314, rs2_data+576, 0xfffffffffffffdff)
  TEST_MADC_VX_OP( 183,  vmsbc.vx, 5201314, rs2_data+640, 0xfffffffffffffbff)
  TEST_MADC_VX_OP( 184,  vmsbc.vx, 5201314, rs2_data+704, 0xfffffffffffff7ff)
  TEST_MADC_VX_OP( 185,  vmsbc.vx, 5201314, rs2_data+768, 0xffffffffffffefff)
  TEST_MADC_VX_OP( 186,  vmsbc.vx, 5201314, rs2_data+832, 0xffffffffffffdfff)
  TEST_MADC_VX_OP( 187,  vmsbc.vx, 5201314, rs2_data+896, 0xffffffffffffbfff)
  TEST_MADC_VX_OP( 188,  vmsbc.vx, 5201314, rs2_data+960, 0xffffffffffff7fff)
  TEST_MADC_VX_OP( 189,  vmsbc.vx, 5201314, rs2_data+1024, 0xfffffffffffeffff)
  TEST_MADC_VX_OP( 190,  vmsbc.vx, 5201314, rs2_data+1088, 0xfffffffffffdffff)
  TEST_MADC_VX_OP( 191,  vmsbc.vx, 5201314, rs2_data+1152, 0xfffffffffffbffff)
  TEST_MADC_VX_OP( 192,  vmsbc.vx, 5201314, rs2_data+1216, 0xfffffffffff7ffff)
  TEST_MADC_VX_OP( 193,  vmsbc.vx, 5201314, rs2_data+1280, 0xffffffffffefffff)
  TEST_MADC_VX_OP( 194,  vmsbc.vx, 5201314, rs2_data+1344, 0xffffffffffdfffff)
  TEST_MADC_VX_OP( 195,  vmsbc.vx, 5201314, rs2_data+1408, 0xffffffffffbfffff)
  TEST_MADC_VX_OP( 196,  vmsbc.vx, 5201314, rs2_data+1472, 0xffffffffff7fffff)
  TEST_MADC_VX_OP( 197,  vmsbc.vx, 5201314, rs2_data+1536, 0xfffffffffeffffff)
  TEST_MADC_VX_OP( 198,  vmsbc.vx, 5201314, rs2_data+1600, 0xfffffffffdffffff)
  TEST_MADC_VX_OP( 199,  vmsbc.vx, 5201314, rs2_data+1664, 0xfffffffffbffffff)
  TEST_MADC_VX_OP( 200,  vmsbc.vx, 5201314, rs2_data+1728, 0xfffffffff7ffffff)
  TEST_MADC_VX_OP( 201,  vmsbc.vx, 5201314, rs2_data+1792, 0xffffffffefffffff)
  TEST_MADC_VX_OP( 202,  vmsbc.vx, 5201314, rs2_data+1856, 0xffffffffdfffffff)
  TEST_MADC_VX_OP( 203,  vmsbc.vx, 5201314, rs2_data+1920, 0xffffffffbfffffff)
  TEST_MADC_VX_OP( 204,  vmsbc.vx, 5201314, rs2_data+1984, 0xffffffff7fffffff)
  TEST_MADC_VX_OP( 205,  vmsbc.vx, 5201314, rs2_data+2048, 0xfffffffeffffffff)
  TEST_MADC_VX_OP( 206,  vmsbc.vx, 5201314, rs2_data+2112, 0xfffffffdffffffff)
  TEST_MADC_VX_OP( 207,  vmsbc.vx, 5201314, rs2_data+2176, 0xfffffffbffffffff)
  TEST_MADC_VX_OP( 208,  vmsbc.vx, 5201314, rs2_data+2240, 0xfffffff7ffffffff)
  TEST_MADC_VX_OP( 209,  vmsbc.vx, 5201314, rs2_data+2304, 0xffffffefffffffff)
  TEST_MADC_VX_OP( 210,  vmsbc.vx, 5201314, rs2_data+2368, 0xffffffdfffffffff)
  TEST_MADC_VX_OP( 211,  vmsbc.vx, 5201314, rs2_data+2432, 0xffffffbfffffffff)
  TEST_MADC_VX_OP( 212,  vmsbc.vx, 5201314, rs2_data+2496, 0xffffff7fffffffff)
  TEST_MADC_VX_OP( 213,  vmsbc.vx, 5201314, rs2_data+2560, 0xfffffeffffffffff)
  TEST_MADC_VX_OP( 214,  vmsbc.vx, 5201314, rs2_data+2624, 0xfffffdffffffffff)
  TEST_MADC_VX_OP( 215,  vmsbc.vx, 5201314, rs2_data+2688, 0xfffffbffffffffff)
  TEST_MADC_VX_OP( 216,  vmsbc.vx, 5201314, rs2_data+2752, 0xfffff7ffffffffff)
  TEST_MADC_VX_OP( 217,  vmsbc.vx, 5201314, rs2_data+2816, 0xffffefffffffffff)
  TEST_MADC_VX_OP( 218,  vmsbc.vx, 5201314, rs2_data+2880, 0xffffdfffffffffff)
  TEST_MADC_VX_OP( 219,  vmsbc.vx, 5201314, rs2_data+2944, 0xffffbfffffffffff)
  TEST_MADC_VX_OP( 220,  vmsbc.vx, 5201314, rs2_data+3008, 0xffff7fffffffffff)
  TEST_MADC_VX_OP( 221,  vmsbc.vx, 5201314, rs2_data+3072, 0xfffeffffffffffff)
  TEST_MADC_VX_OP( 222,  vmsbc.vx, 5201314, rs2_data+3136, 0xfffdffffffffffff)
  TEST_MADC_VX_OP( 223,  vmsbc.vx, 5201314, rs2_data+3200, 0xfffbffffffffffff)
  TEST_MADC_VX_OP( 224,  vmsbc.vx, 5201314, rs2_data+3264, 0xfff7ffffffffffff)
  TEST_MADC_VX_OP( 225,  vmsbc.vx, 5201314, rs2_data+3328, 0xffefffffffffffff)
  TEST_MADC_VX_OP( 226,  vmsbc.vx, 5201314, rs2_data+3392, 0xffdfffffffffffff)
  TEST_MADC_VX_OP( 227,  vmsbc.vx, 5201314, rs2_data+3456, 0xffbfffffffffffff)
  TEST_MADC_VX_OP( 228,  vmsbc.vx, 5201314, rs2_data+3520, 0xff7fffffffffffff)
  TEST_MADC_VX_OP( 229,  vmsbc.vx, 5201314, rs2_data+3584, 0xfeffffffffffffff)
  TEST_MADC_VX_OP( 230,  vmsbc.vx, 5201314, rs2_data+3648, 0xfdffffffffffffff)
  TEST_MADC_VX_OP( 231,  vmsbc.vx, 5201314, rs2_data+3712, 0xfbffffffffffffff)
  TEST_MADC_VX_OP( 232,  vmsbc.vx, 5201314, rs2_data+3776, 0xf7ffffffffffffff)
  TEST_MADC_VX_OP( 233,  vmsbc.vx, 5201314, rs2_data+3840, 0xefffffffffffffff)
  TEST_MADC_VX_OP( 234,  vmsbc.vx, 5201314, rs2_data+3904, 0xdfffffffffffffff)
  TEST_MADC_VX_OP( 235,  vmsbc.vx, 5201314, rs2_data+3968, 0xbfffffffffffffff)
  TEST_MADC_VX_OP( 236,  vmsbc.vx, 5201314, rs2_data+4032, 0x7fffffffffffffff)
  TEST_MADC_VX_OP( 237,  vmsbc.vx, 5201314, rs2_data+4096, 0x00000000000001)
  TEST_MADC_VX_OP( 238,  vmsbc.vx, 5201314, rs2_data+4160, 0x00000000000002)
  TEST_MADC_VX_OP( 239,  vmsbc.vx, 5201314, rs2_data+4224, 0x00000000000004)
  TEST_MADC_VX_OP( 240,  vmsbc.vx, 5201314, rs2_data+4288, 0x00000000000008)
  TEST_MADC_VX_OP( 241,  vmsbc.vx, 5201314, rs2_data+4352, 0x00000000000010)
  TEST_MADC_VX_OP( 242,  vmsbc.vx, 5201314, rs2_data+4416, 0x00000000000020)
  TEST_MADC_VX_OP( 243,  vmsbc.vx, 5201314, rs2_data+4480, 0x00000000000040)
  TEST_MADC_VX_OP( 244,  vmsbc.vx, 5201314, rs2_data+4544, 0x00000000000080)
  TEST_MADC_VX_OP( 245,  vmsbc.vx, 5201314, rs2_data+4608, 0x00000000000100)
  TEST_MADC_VX_OP( 246,  vmsbc.vx, 5201314, rs2_data+4672, 0x00000000000200)
  TEST_MADC_VX_OP( 247,  vmsbc.vx, 5201314, rs2_data+4736, 0x00000000000400)
  TEST_MADC_VX_OP( 248,  vmsbc.vx, 5201314, rs2_data+4800, 0x00000000000800)
  #-------------------------------------------------------------
  # VXM Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_MADC_VXM_OP( 249,  vmsbc.vxm, 5201314, rs2_data+0, 0xfffffffffffffffe)
  TEST_MADC_VXM_OP( 250,  vmsbc.vxm, 5201314, rs2_data+64, 0xfffffffffffffffd)
  TEST_MADC_VXM_OP( 251,  vmsbc.vxm, 5201314, rs2_data+128, 0xfffffffffffffffb)
  TEST_MADC_VXM_OP( 252,  vmsbc.vxm, 5201314, rs2_data+192, 0xfffffffffffffff7)
  TEST_MADC_VXM_OP( 253,  vmsbc.vxm, 5201314, rs2_data+256, 0xffffffffffffffef)
  TEST_MADC_VXM_OP( 254,  vmsbc.vxm, 5201314, rs2_data+320, 0xffffffffffffffdf)
  TEST_MADC_VXM_OP( 255,  vmsbc.vxm, 5201314, rs2_data+384, 0xffffffffffffffbf)
  TEST_MADC_VXM_OP( 256,  vmsbc.vxm, 5201314, rs2_data+448, 0xffffffffffffff7f)
  TEST_MADC_VXM_OP( 257,  vmsbc.vxm, 5201314, rs2_data+512, 0xfffffffffffffeff)
  TEST_MADC_VXM_OP( 258,  vmsbc.vxm, 5201314, rs2_data+576, 0xfffffffffffffdff)
  TEST_MADC_VXM_OP( 259,  vmsbc.vxm, 5201314, rs2_data+640, 0xfffffffffffffbff)
  TEST_MADC_VXM_OP( 260,  vmsbc.vxm, 5201314, rs2_data+704, 0xfffffffffffff7ff)
  TEST_MADC_VXM_OP( 261,  vmsbc.vxm, 5201314, rs2_data+768, 0xffffffffffffefff)
  TEST_MADC_VXM_OP( 262,  vmsbc.vxm, 5201314, rs2_data+832, 0xffffffffffffdfff)
  TEST_MADC_VXM_OP( 263,  vmsbc.vxm, 5201314, rs2_data+896, 0xffffffffffffbfff)
  TEST_MADC_VXM_OP( 264,  vmsbc.vxm, 5201314, rs2_data+960, 0xffffffffffff7fff)
  TEST_MADC_VXM_OP( 265,  vmsbc.vxm, 5201314, rs2_data+1024, 0xfffffffffffeffff)
  TEST_MADC_VXM_OP( 266,  vmsbc.vxm, 5201314, rs2_data+1088, 0xfffffffffffdffff)
  TEST_MADC_VXM_OP( 267,  vmsbc.vxm, 5201314, rs2_data+1152, 0xfffffffffffbffff)
  TEST_MADC_VXM_OP( 268,  vmsbc.vxm, 5201314, rs2_data+1216, 0xfffffffffff7ffff)
  TEST_MADC_VXM_OP( 269,  vmsbc.vxm, 5201314, rs2_data+1280, 0xffffffffffefffff)
  TEST_MADC_VXM_OP( 270,  vmsbc.vxm, 5201314, rs2_data+1344, 0xffffffffffdfffff)
  TEST_MADC_VXM_OP( 271,  vmsbc.vxm, 5201314, rs2_data+1408, 0xffffffffffbfffff)
  TEST_MADC_VXM_OP( 272,  vmsbc.vxm, 5201314, rs2_data+1472, 0xffffffffff7fffff)
  TEST_MADC_VXM_OP( 273,  vmsbc.vxm, 5201314, rs2_data+1536, 0xfffffffffeffffff)
  TEST_MADC_VXM_OP( 274,  vmsbc.vxm, 5201314, rs2_data+1600, 0xfffffffffdffffff)
  TEST_MADC_VXM_OP( 275,  vmsbc.vxm, 5201314, rs2_data+1664, 0xfffffffffbffffff)
  TEST_MADC_VXM_OP( 276,  vmsbc.vxm, 5201314, rs2_data+1728, 0xfffffffff7ffffff)
  TEST_MADC_VXM_OP( 277,  vmsbc.vxm, 5201314, rs2_data+1792, 0xffffffffefffffff)
  TEST_MADC_VXM_OP( 278,  vmsbc.vxm, 5201314, rs2_data+1856, 0xffffffffdfffffff)
  TEST_MADC_VXM_OP( 279,  vmsbc.vxm, 5201314, rs2_data+1920, 0xffffffffbfffffff)
  TEST_MADC_VXM_OP( 280,  vmsbc.vxm, 5201314, rs2_data+1984, 0xffffffff7fffffff)
  TEST_MADC_VXM_OP( 281,  vmsbc.vxm, 5201314, rs2_data+2048, 0xfffffffeffffffff)
  TEST_MADC_VXM_OP( 282,  vmsbc.vxm, 5201314, rs2_data+2112, 0xfffffffdffffffff)
  TEST_MADC_VXM_OP( 283,  vmsbc.vxm, 5201314, rs2_data+2176, 0xfffffffbffffffff)
  TEST_MADC_VXM_OP( 284,  vmsbc.vxm, 5201314, rs2_data+2240, 0xfffffff7ffffffff)
  TEST_MADC_VXM_OP( 285,  vmsbc.vxm, 5201314, rs2_data+2304, 0xffffffefffffffff)
  TEST_MADC_VXM_OP( 286,  vmsbc.vxm, 5201314, rs2_data+2368, 0xffffffdfffffffff)
  TEST_MADC_VXM_OP( 287,  vmsbc.vxm, 5201314, rs2_data+2432, 0xffffffbfffffffff)
  TEST_MADC_VXM_OP( 288,  vmsbc.vxm, 5201314, rs2_data+2496, 0xffffff7fffffffff)
  TEST_MADC_VXM_OP( 289,  vmsbc.vxm, 5201314, rs2_data+2560, 0xfffffeffffffffff)
  TEST_MADC_VXM_OP( 290,  vmsbc.vxm, 5201314, rs2_data+2624, 0xfffffdffffffffff)
  TEST_MADC_VXM_OP( 291,  vmsbc.vxm, 5201314, rs2_data+2688, 0xfffffbffffffffff)
  TEST_MADC_VXM_OP( 292,  vmsbc.vxm, 5201314, rs2_data+2752, 0xfffff7ffffffffff)
  TEST_MADC_VXM_OP( 293,  vmsbc.vxm, 5201314, rs2_data+2816, 0xffffefffffffffff)
  TEST_MADC_VXM_OP( 294,  vmsbc.vxm, 5201314, rs2_data+2880, 0xffffdfffffffffff)
  TEST_MADC_VXM_OP( 295,  vmsbc.vxm, 5201314, rs2_data+2944, 0xffffbfffffffffff)
  TEST_MADC_VXM_OP( 296,  vmsbc.vxm, 5201314, rs2_data+3008, 0xffff7fffffffffff)
  TEST_MADC_VXM_OP( 297,  vmsbc.vxm, 5201314, rs2_data+3072, 0xfffeffffffffffff)
  TEST_MADC_VXM_OP( 298,  vmsbc.vxm, 5201314, rs2_data+3136, 0xfffdffffffffffff)
  TEST_MADC_VXM_OP( 299,  vmsbc.vxm, 5201314, rs2_data+3200, 0xfffbffffffffffff)
  TEST_MADC_VXM_OP( 300,  vmsbc.vxm, 5201314, rs2_data+3264, 0xfff7ffffffffffff)
  TEST_MADC_VXM_OP( 301,  vmsbc.vxm, 5201314, rs2_data+3328, 0xffefffffffffffff)
  TEST_MADC_VXM_OP( 302,  vmsbc.vxm, 5201314, rs2_data+3392, 0xffdfffffffffffff)
  TEST_MADC_VXM_OP( 303,  vmsbc.vxm, 5201314, rs2_data+3456, 0xffbfffffffffffff)
  TEST_MADC_VXM_OP( 304,  vmsbc.vxm, 5201314, rs2_data+3520, 0xff7fffffffffffff)
  TEST_MADC_VXM_OP( 305,  vmsbc.vxm, 5201314, rs2_data+3584, 0xfeffffffffffffff)
  TEST_MADC_VXM_OP( 306,  vmsbc.vxm, 5201314, rs2_data+3648, 0xfdffffffffffffff)
  TEST_MADC_VXM_OP( 307,  vmsbc.vxm, 5201314, rs2_data+3712, 0xfbffffffffffffff)
  TEST_MADC_VXM_OP( 308,  vmsbc.vxm, 5201314, rs2_data+3776, 0xf7ffffffffffffff)
  TEST_MADC_VXM_OP( 309,  vmsbc.vxm, 5201314, rs2_data+3840, 0xefffffffffffffff)
  TEST_MADC_VXM_OP( 310,  vmsbc.vxm, 5201314, rs2_data+3904, 0xdfffffffffffffff)
  TEST_MADC_VXM_OP( 311,  vmsbc.vxm, 5201314, rs2_data+3968, 0xbfffffffffffffff)
  TEST_MADC_VXM_OP( 312,  vmsbc.vxm, 5201314, rs2_data+4032, 0x7fffffffffffffff)
  TEST_MADC_VXM_OP( 313,  vmsbc.vxm, 5201314, rs2_data+4096, 0x00000000000001)
  TEST_MADC_VXM_OP( 314,  vmsbc.vxm, 5201314, rs2_data+4160, 0x00000000000002)
  TEST_MADC_VXM_OP( 315,  vmsbc.vxm, 5201314, rs2_data+4224, 0x00000000000004)
  TEST_MADC_VXM_OP( 316,  vmsbc.vxm, 5201314, rs2_data+4288, 0x00000000000008)
  TEST_MADC_VXM_OP( 317,  vmsbc.vxm, 5201314, rs2_data+4352, 0x00000000000010)
  TEST_MADC_VXM_OP( 318,  vmsbc.vxm, 5201314, rs2_data+4416, 0x00000000000020)
  TEST_MADC_VXM_OP( 319,  vmsbc.vxm, 5201314, rs2_data+4480, 0x00000000000040)
  TEST_MADC_VXM_OP( 320,  vmsbc.vxm, 5201314, rs2_data+4544, 0x00000000000080)
  TEST_MADC_VXM_OP( 321,  vmsbc.vxm, 5201314, rs2_data+4608, 0x00000000000100)
  TEST_MADC_VXM_OP( 322,  vmsbc.vxm, 5201314, rs2_data+4672, 0x00000000000200)
  TEST_MADC_VXM_OP( 323,  vmsbc.vxm, 5201314, rs2_data+4736, 0x00000000000400)
  TEST_MADC_VXM_OP( 324,  vmsbc.vxm, 5201314, rs2_data+4800, 0x00000000000800)
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    
    
.align 8
rs1_data:
.dword	0xfffffffffffffffe
.dword	0xfffffffffffffffd
.dword	0xfffffffffffffffb
.dword	0xfffffffffffffff7
.dword	0xffffffffffffffef
.dword	0xffffffffffffffdf
.dword	0xffffffffffffffbf
.dword	0xffffffffffffff7f
.dword	0xfffffffffffffeff
.dword	0xfffffffffffffdff
.dword	0xfffffffffffffbff
.dword	0xfffffffffffff7ff
.dword	0xffffffffffffefff
.dword	0xffffffffffffdfff
.dword	0xffffffffffffbfff
.dword	0xffffffffffff7fff
.dword	0xfffffffffffeffff
.dword	0xfffffffffffdffff
.dword	0xfffffffffffbffff
.dword	0xfffffffffff7ffff
.dword	0xffffffffffefffff
.dword	0xffffffffffdfffff
.dword	0xffffffffffbfffff
.dword	0xffffffffff7fffff
.dword	0xfffffffffeffffff
.dword	0xfffffffffdffffff
.dword	0xfffffffffbffffff
.dword	0xfffffffff7ffffff
.dword	0xffffffffefffffff
.dword	0xffffffffdfffffff
.dword	0xffffffffbfffffff
.dword	0xffffffff7fffffff
.dword	0xfffffffeffffffff
.dword	0xfffffffdffffffff
.dword	0xfffffffbffffffff
.dword	0xfffffff7ffffffff
.dword	0xffffffefffffffff
.dword	0xffffffdfffffffff
.dword	0xffffffbfffffffff
.dword	0xffffff7fffffffff
.dword	0xfffffeffffffffff
.dword	0xfffffdffffffffff
.dword	0xfffffbffffffffff
.dword	0xfffff7ffffffffff
.dword	0xffffefffffffffff
.dword	0xffffdfffffffffff
.dword	0xffffbfffffffffff
.dword	0xffff7fffffffffff
.dword	0xfffeffffffffffff
.dword	0xfffdffffffffffff
.dword	0xfffbffffffffffff
.dword	0xfff7ffffffffffff
.dword	0xffefffffffffffff
.dword	0xffdfffffffffffff
.dword	0xffbfffffffffffff
.dword	0xff7fffffffffffff
.dword	0xfeffffffffffffff
.dword	0xfdffffffffffffff
.dword	0xfbffffffffffffff
.dword	0xf7ffffffffffffff
.dword	0xefffffffffffffff
.dword	0xdfffffffffffffff
.dword	0xbfffffffffffffff
.dword	0x7fffffffffffffff
.dword	0x00000000000001
.dword	0x00000000000002
.dword	0x00000000000004
.dword	0x00000000000008
.dword	0x00000000000010
.dword	0x00000000000020
.dword	0x00000000000040
.dword	0x00000000000080
.dword	0x00000000000100
.dword	0x00000000000200
.dword	0x00000000000400
.dword	0x00000000000800
.dword	0x00000000001000
.dword	0x00000000002000
.dword	0x00000000004000
.dword	0x00000000008000
.dword	0x00000000010000
.dword	0x00000000020000
.dword	0x00000000040000
.dword	0x00000000080000
.dword	0x00000000100000
.dword	0x00000000200000
.dword	0x00000000400000
.dword	0x00000000800000
.dword	0x00000001000000
.dword	0x00000002000000
.dword	0x00000004000000
.dword	0x00000008000000
.dword	0x00000010000000
.dword	0x00000020000000
.dword	0x00000040000000
.dword	0x00000080000000
.dword	0x00000100000000
.dword	0x00000200000000
.dword	0x00000400000000
.dword	0x00000800000000
.dword	0x00001000000000
.dword	0x00002000000000
.dword	0x00004000000000
.dword	0x00008000000000
.dword	0x00010000000000
.dword	0x00020000000000
.dword	0x00040000000000
.dword	0x00080000000000
.dword	0x00100000000000
.dword	0x00200000000000
.dword	0x00400000000000
.dword	0x00800000000000
.dword	0x01000000000000
.dword	0x02000000000000
.dword	0x04000000000000
.dword	0x08000000000000
.dword	0x10000000000000
.dword	0x20000000000000
.dword	0x40000000000000
.dword	0x80000000000000
.dword	0x100000000000000
.dword	0x200000000000000
.dword	0x400000000000000
.dword	0x800000000000000
.dword	0x1000000000000000
.dword	0x2000000000000000
.dword	0x4000000000000000
.dword	0x8000000000000000
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x00000000000000
.dword	0x00000000000003
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334
.dword	0x000000b504f334

.align 8
rs2_data:
.dword	0xfffffffffffffffe
.dword	0xfffffffffffffffd
.dword	0xfffffffffffffffb
.dword	0xfffffffffffffff7
.dword	0xffffffffffffffef
.dword	0xffffffffffffffdf
.dword	0xffffffffffffffbf
.dword	0xffffffffffffff7f
.dword	0xfffffffffffffeff
.dword	0xfffffffffffffdff
.dword	0xfffffffffffffbff
.dword	0xfffffffffffff7ff
.dword	0xffffffffffffefff
.dword	0xffffffffffffdfff
.dword	0xffffffffffffbfff
.dword	0xffffffffffff7fff
.dword	0xfffffffffffeffff
.dword	0xfffffffffffdffff
.dword	0xfffffffffffbffff
.dword	0xfffffffffff7ffff
.dword	0xffffffffffefffff
.dword	0xffffffffffdfffff
.dword	0xffffffffffbfffff
.dword	0xffffffffff7fffff
.dword	0xfffffffffeffffff
.dword	0xfffffffffdffffff
.dword	0xfffffffffbffffff
.dword	0xfffffffff7ffffff
.dword	0xffffffffefffffff
.dword	0xffffffffdfffffff
.dword	0xffffffffbfffffff
.dword	0xffffffff7fffffff
.dword	0xfffffffeffffffff
.dword	0xfffffffdffffffff
.dword	0xfffffffbffffffff
.dword	0xfffffff7ffffffff
.dword	0xffffffefffffffff
.dword	0xffffffdfffffffff
.dword	0xffffffbfffffffff
.dword	0xffffff7fffffffff
.dword	0xfffffeffffffffff
.dword	0xfffffdffffffffff
.dword	0xfffffbffffffffff
.dword	0xfffff7ffffffffff
.dword	0xffffefffffffffff
.dword	0xffffdfffffffffff
.dword	0xffffbfffffffffff
.dword	0xffff7fffffffffff
.dword	0xfffeffffffffffff
.dword	0xfffdffffffffffff
.dword	0xfffbffffffffffff
.dword	0xfff7ffffffffffff
.dword	0xffefffffffffffff
.dword	0xffdfffffffffffff
.dword	0xffbfffffffffffff
.dword	0xff7fffffffffffff
.dword	0xfeffffffffffffff
.dword	0xfdffffffffffffff
.dword	0xfbffffffffffffff
.dword	0xf7ffffffffffffff
.dword	0xefffffffffffffff
.dword	0xdfffffffffffffff
.dword	0xbfffffffffffffff
.dword	0x7fffffffffffffff
.dword	0x00000000000001
.dword	0x00000000000002
.dword	0x00000000000004
.dword	0x00000000000008
.dword	0x00000000000010
.dword	0x00000000000020
.dword	0x00000000000040
.dword	0x00000000000080
.dword	0x00000000000100
.dword	0x00000000000200
.dword	0x00000000000400
.dword	0x00000000000800
.dword	0x00000000001000
.dword	0x00000000002000
.dword	0x00000000004000
.dword	0x00000000008000
.dword	0x00000000010000
.dword	0x00000000020000
.dword	0x00000000040000
.dword	0x00000000080000
.dword	0x00000000100000
.dword	0x00000000200000
.dword	0x00000000400000
.dword	0x00000000800000
.dword	0x00000001000000
.dword	0x00000002000000
.dword	0x00000004000000
.dword	0x00000008000000
.dword	0x00000010000000
.dword	0x00000020000000
.dword	0x00000040000000
.dword	0x00000080000000
.dword	0x00000100000000
.dword	0x00000200000000
.dword	0x00000400000000
.dword	0x00000800000000
.dword	0x00001000000000
.dword	0x00002000000000
.dword	0x00004000000000
.dword	0x00008000000000
.dword	0x00010000000000
.dword	0x00020000000000
.dword	0x00040000000000
.dword	0x00080000000000
.dword	0x00100000000000
.dword	0x00200000000000
.dword	0x00400000000000
.dword	0x00800000000000
.dword	0x01000000000000
.dword	0x02000000000000
.dword	0x04000000000000
.dword	0x08000000000000
.dword	0x10000000000000
.dword	0x20000000000000
.dword	0x40000000000000
.dword	0x80000000000000
.dword	0x100000000000000
.dword	0x200000000000000
.dword	0x400000000000000
.dword	0x800000000000000
.dword	0x1000000000000000
.dword	0x2000000000000000
.dword	0x4000000000000000
.dword	0x8000000000000000
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0x5555555555555555
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334
.dword	0x00000000000003
.dword	0x5555555555555555
.dword	0xaaaaaaaaaaaaaaaa
.dword	0x00000000000005
.dword	0x3333333333333333
.dword	0x6666666666666666
.dword	0xffffffff4afb0ccd
.dword	0x000000b504f333
.dword	0x00000000000002
.dword	0x5555555555555554
.dword	0x3333333333333332
.dword	0x6666666666666665
.dword	0x00000000000000
.dword	0x000000b504f332
.dword	0x00000000000004
.dword	0x5555555555555556
.dword	0xaaaaaaaaaaaaaaab
.dword	0x00000000000006
.dword	0x3333333333333334
.dword	0x6666666666666667
.dword	0xffffffff4afb0cce
.dword	0x000000b504f334

.align 8
rd_data_vv:

rd_data_vx:

rd_data_vi:

.align 4
mask_data:
	.word 0x11111111
	.word 0x86569d27
	.word 0x429ede3d
	.word 0x20219a51
	.word 0x91a8d5fd
	.word 0xbd8f6c65
	.word 0x466250f
	.word 0xe31ffa64
	.word 0xc737ad3a
	.word 0xe54c8c1e
	.word 0x7ca660db
	.word 0x692dadf
	.word 0x2c63c847
	.word 0xfbba7ae7
	.word 0x195b62bf
	.word 0xf600a3d1
	.word 0x34b80fd4
	.word 0x3aef5ff4
	.word 0x34267ad9
	.word 0x681454c0
	.word 0x67dd3492
	.word 0xb02d663e
	.word 0xb2d3f1c5
	.word 0x824d39ae
 

.align 4
rd_origin_data:
    .word 0x66da64aa
	.word 0xf682191a
	.word 0xfd2ce83f
	.word 0x67f9ab29
	.word 0x112e3ffd
	.word 0xc4d9b1e2
	.word 0x9ed4e137
	.word 0xb49ae54e
	.word 0xd075dd45
	.word 0x74daa72e
	.word 0x48324db4
	.word 0x167d97b5
	.word 0x8b536536
	.word 0xe85755eb
	.word 0x1cd86c0a
	.word 0x4c811ecf
	.word 0x8085dbf1
	.word 0x547cdce3
	.word 0x65d27882
	.word 0xb72d2ec4
	.word 0x954ee841
	.word 0xb36fd636
	.word 0xbc4988da
	.word 0xaea05c04
	.word 0xce7483a6
	.word 0xea0309d7
	.word 0x62498466
	.word 0x1cd29ac4
	.word 0x97f38b62
	.word 0x690bcf85
	.word 0x97f38b62
	.word 0x9bd83b8b
    

    RVTEST_DATA_END
    
    RVMODEL_DATA_BEGIN
    
    signature_x12_0:
        .fill 0,4,0xdeadbeef
    
    
    signature_x12_1:
        .fill 32,4,0xdeadbeef
    
    
    signature_x20_0:
        .fill 512,4,0xdeadbeef
    
    
    signature_x20_1:
        .fill 512,4,0xdeadbeef
    
    
    signature_x20_2:
        .fill 376,4,0xdeadbeef
    
    signature_x24_0:
        .fill 512,4,0xdeadbeef
    
    
    signature_x24_1:
        .fill 512,4,0xdeadbeef
    
    
    signature_x24_2:
        .fill 376,4,0xdeadbeef
    
    #ifdef rvtest_mtrap_routine
    
    mtrap_sigptr:
        .fill 128,4,0xdeadbeef
    
    #endif
    
    #ifdef rvtest_gpr_save
    
    gpr_save:
        .fill 32*(XLEN/32),4,0xdeadbeef
    
    #endif
    
    RVMODEL_DATA_END
    
    

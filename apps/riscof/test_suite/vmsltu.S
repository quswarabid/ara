#----------------------------------------------------------------------------- 
    # vmsltu.S
    #-----------------------------------------------------------------------------
    #
    # Test vmsltu instructions.
    #

    #include "model_test.h"
    #include "arch_test.h"
    #include "test_macros_vector.h"

RVTEST_ISA("RV64RV64IMAFDCVZicsr")
    
    .section .text.init
    .globl rvtest_entry_point
    rvtest_entry_point:
    
    #ifdef TEST_CASE_1
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vmsltu)
    
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
    RVTEST_SIGBASE( x12,signature_x12_1)
    RVTEST_SIGBASE( x20,signature_x20_0)
    RVTEST_SIGBASE( x24,signature_x24_0)
    
    
#undef TEST_VVM_OP 
#define TEST_VVM_OP( testnum, inst, result, val1, val2 ) \
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
                inst v24, v8, v16, v0.t;  \
                VECTOR_RVTEST_SIGUPD(x12, v24) \
            )
#define TEST_VVM_OP_11( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v1, (x7); \
                inst v24, v8, v1, v0.t;  \
            )
#define TEST_VVM_OP_12( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v2, (x7); \
                inst v24, v8, v2, v0.t;  \
            )
#define TEST_VVM_OP_13( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v3, (x7); \
                inst v24, v8, v3, v0.t;  \
            )
#define TEST_VVM_OP_14( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v4, (x7); \
                inst v24, v8, v4, v0.t;  \
            )
#define TEST_VVM_OP_15( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v5, (x7); \
                inst v24, v8, v5, v0.t;  \
            )
#define TEST_VVM_OP_16( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v6, (x7); \
                inst v24, v8, v6, v0.t;  \
            )
#define TEST_VVM_OP_17( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v7, (x7); \
                inst v24, v8, v7, v0.t;  \
            )
#define TEST_VVM_OP_19( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v9, (x7); \
                inst v24, v8, v9, v0.t;  \
            )
#define TEST_VVM_OP_110( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v10, (x7); \
                inst v24, v8, v10, v0.t;  \
            )
#define TEST_VVM_OP_111( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v11, (x7); \
                inst v24, v8, v11, v0.t;  \
            )
#define TEST_VVM_OP_112( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v12, (x7); \
                inst v24, v8, v12, v0.t;  \
            )
#define TEST_VVM_OP_113( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v13, (x7); \
                inst v24, v8, v13, v0.t;  \
            )
#define TEST_VVM_OP_114( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v14, (x7); \
                inst v24, v8, v14, v0.t;  \
            )
#define TEST_VVM_OP_115( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v15, (x7); \
                inst v24, v8, v15, v0.t;  \
            )
#define TEST_VVM_OP_117( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v17, (x7); \
                inst v24, v8, v17, v0.t;  \
            )
#define TEST_VVM_OP_118( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v18, (x7); \
                inst v24, v8, v18, v0.t;  \
            )
#define TEST_VVM_OP_119( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v19, (x7); \
                inst v24, v8, v19, v0.t;  \
            )
#define TEST_VVM_OP_120( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v20, (x7); \
                inst v24, v8, v20, v0.t;  \
            )
#define TEST_VVM_OP_121( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v21, (x7); \
                inst v24, v8, v21, v0.t;  \
            )
#define TEST_VVM_OP_122( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v22, (x7); \
                inst v24, v8, v22, v0.t;  \
            )
#define TEST_VVM_OP_123( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v23, (x7); \
                inst v24, v8, v23, v0.t;  \
            )
#define TEST_VVM_OP_125( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v25, (x7); \
                inst v24, v8, v25, v0.t;  \
            )
#define TEST_VVM_OP_126( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v26, (x7); \
                inst v24, v8, v26, v0.t;  \
            )
#define TEST_VVM_OP_127( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v27, (x7); \
                inst v24, v8, v27, v0.t;  \
            )
#define TEST_VVM_OP_128( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v28, (x7); \
                inst v24, v8, v28, v0.t;  \
            )
#define TEST_VVM_OP_129( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v29, (x7); \
                inst v24, v8, v29, v0.t;  \
            )
#define TEST_VVM_OP_130( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v30, (x7); \
                inst v24, v8, v30, v0.t;  \
            )
#define TEST_VVM_OP_131( testnum, inst, result, val2, val1 ) \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v31, (x7); \
                inst v24, v8, v31, v0.t;  \
            )
#define TEST_VVM_OP_rd2( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v2, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v2, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v2, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd4( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v4, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v4, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v4, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd6( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v6, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v6, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v6, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd10( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v10, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v10, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v10, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd12( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v12, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v12, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v12, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd14( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v14, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v14, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v14, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd18( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v18, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v18, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v18, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd20( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v20, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v20, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v20, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd22( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v22, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v22, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v22, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd26( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v26, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v26, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v26, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd28( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v28, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v28, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v28, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd30( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v30, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v30, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v30, v8, v16, v0.t; \
            ) 
#define TEST_VVM_OP_rd8( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v8, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v16, (x7); \
                inst v8, v24, v16, v0.t;  \
            )
#define TEST_VVM_OP_rd16( testnum, inst, result, val2, val1 ) \
            TEST_CASE_MASK_4VL( testnum, v16, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v16, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v24, (x7); \
                la x7, val2; \
                vle64.v v8, (x7); \
                inst v16, v24, v8, v0.t;  \
            )
#undef TEST_VXM_OP 
#define TEST_VXM_OP( testnum, inst, result, val1, val2 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v24, v8, x1, v0.t;  \
                VECTOR_RVTEST_SIGUPD(x20, v24) \
            )
#define TEST_VXM_OP_11( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v24, v8, x1, v0.t;  \
            )
#define TEST_VXM_OP_12( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x2, MASK_XLEN(val2); \
                inst v24, v8, x2, v0.t;  \
            )
#define TEST_VXM_OP_13( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x3, MASK_XLEN(val2); \
                inst v24, v8, x3, v0.t;  \
            )
#define TEST_VXM_OP_14( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x4, MASK_XLEN(val2); \
                inst v24, v8, x4, v0.t;  \
            )
#define TEST_VXM_OP_15( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x5, MASK_XLEN(val2); \
                inst v24, v8, x5, v0.t;  \
            )
#define TEST_VXM_OP_16( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x6, MASK_XLEN(val2); \
                inst v24, v8, x6, v0.t;  \
            )
#define TEST_VXM_OP_17( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x7, MASK_XLEN(val2); \
                inst v24, v8, x7, v0.t;  \
            )
#define TEST_VXM_OP_18( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x8, MASK_XLEN(val2); \
                inst v24, v8, x8, v0.t;  \
            )
#define TEST_VXM_OP_19( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x9, MASK_XLEN(val2); \
                inst v24, v8, x9, v0.t;  \
            )
#define TEST_VXM_OP_110( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x10, MASK_XLEN(val2); \
                inst v24, v8, x10, v0.t;  \
            )
#define TEST_VXM_OP_111( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x11, MASK_XLEN(val2); \
                inst v24, v8, x11, v0.t;  \
            )
#define TEST_VXM_OP_112( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x12, MASK_XLEN(val2); \
                inst v24, v8, x12, v0.t;  \
            )
#define TEST_VXM_OP_113( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x13, MASK_XLEN(val2); \
                inst v24, v8, x13, v0.t;  \
            )
#define TEST_VXM_OP_114( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x14, MASK_XLEN(val2); \
                inst v24, v8, x14, v0.t;  \
            )
#define TEST_VXM_OP_115( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x15, MASK_XLEN(val2); \
                inst v24, v8, x15, v0.t;  \
            )
#define TEST_VXM_OP_116( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x16, MASK_XLEN(val2); \
                inst v24, v8, x16, v0.t;  \
            )
#define TEST_VXM_OP_117( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x17, MASK_XLEN(val2); \
                inst v24, v8, x17, v0.t;  \
            )
#define TEST_VXM_OP_118( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x18, MASK_XLEN(val2); \
                inst v24, v8, x18, v0.t;  \
            )
#define TEST_VXM_OP_119( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x19, MASK_XLEN(val2); \
                inst v24, v8, x19, v0.t;  \
            )
#define TEST_VXM_OP_120( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x20, MASK_XLEN(val2); \
                inst v24, v8, x20, v0.t;  \
            )
#define TEST_VXM_OP_121( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x21, MASK_XLEN(val2); \
                inst v24, v8, x21, v0.t;  \
            )
#define TEST_VXM_OP_122( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x22, MASK_XLEN(val2); \
                inst v24, v8, x22, v0.t;  \
            )
#define TEST_VXM_OP_123( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x23, MASK_XLEN(val2); \
                inst v24, v8, x23, v0.t;  \
            )
#define TEST_VXM_OP_124( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x24, MASK_XLEN(val2); \
                inst v24, v8, x24, v0.t;  \
            )
#define TEST_VXM_OP_125( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x25, MASK_XLEN(val2); \
                inst v24, v8, x25, v0.t;  \
            )
#define TEST_VXM_OP_126( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x26, MASK_XLEN(val2); \
                inst v24, v8, x26, v0.t;  \
            )
#define TEST_VXM_OP_127( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x27, MASK_XLEN(val2); \
                inst v24, v8, x27, v0.t;  \
            )
#define TEST_VXM_OP_128( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x28, MASK_XLEN(val2); \
                inst v24, v8, x28, v0.t;  \
            )
#define TEST_VXM_OP_129( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x29, MASK_XLEN(val2); \
                inst v24, v8, x29, v0.t;  \
            )
#define TEST_VXM_OP_130( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x30, MASK_XLEN(val2); \
                inst v24, v8, x30, v0.t;  \
            )
#define TEST_VXM_OP_131( testnum, inst, result, val1, val2 )  \
            TEST_CASE_MASK_4VL( testnum, v24, result,  \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x31, MASK_XLEN(val2); \
                inst v24, v8, x31, v0.t;  \
            )
#define TEST_VXM_OP_rd1( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v1, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v1, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v1, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd2( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v2, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v2, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v2, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd3( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v3, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v3, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v3, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd4( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v4, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v4, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v4, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd5( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v5, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v5, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v5, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd6( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v6, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v6, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v6, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd7( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v7, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v7, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v7, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd9( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v9, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v9, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v9, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd10( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v10, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v10, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v10, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd11( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v11, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v11, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v11, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd12( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v12, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v12, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v12, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd13( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v13, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v13, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v13, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd14( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v14, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v14, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v14, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd15( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v15, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v15, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v15, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd17( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v17, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v17, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v17, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd18( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v18, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v18, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v18, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd19( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v19, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v19, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v19, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd20( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v20, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v20, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v20, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd21( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v21, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v21, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v21, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd22( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v22, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v22, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v22, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd23( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v23, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v23, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v23, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd24( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v24, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v24, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v24, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd25( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v25, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v25, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v25, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd26( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v26, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v26, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v26, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd27( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v27, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v27, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v27, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd28( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v28, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v28, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v28, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd29( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v29, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v29, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v29, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd30( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v30, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v30, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v30, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd31( testnum, inst, result, val1, val2 )  \
                TEST_CASE_MASK_4VL( testnum, v31, result, \
                    VSET_VSEW_4AVL \
                    la x7, rd_origin_data; \
                    vle64.v v31, (x7); \
                    la x7, mask_data; \
    vle64.v v0, (x7); \
                        la x7, val1; \
                    vle64.v v8, (x7); \
                    li x1, MASK_XLEN(val2); \
                    inst v31, v8, x1, v0.t;  \
                ) 
#define TEST_VXM_OP_rd8( testnum, inst, result, val1, val2 ) \
            TEST_CASE_MASK_4VL( testnum, v8, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v8, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v16, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v8, v16, x1, v0.t;  \
            )
#define TEST_VXM_OP_rd16( testnum, inst, result, val1, val2 ) \
            TEST_CASE_MASK_4VL( testnum, v24, result, \
                VSET_VSEW_4AVL \
                la x7, rd_origin_data; \
                vle64.v v24, (x7); \
                la x7, mask_data; \
    vle64.v v0, (x7); \
                    la x7, val1; \
                vle64.v v8, (x7); \
                li x1, MASK_XLEN(val2); \
                inst v24, v8, x1, v0.t;  \
            )
#undef TEST_VIM_OP 
#define TEST_VIM_OP( testnum, inst, result, val1, val2 )         TEST_CASE_MASK_4VL( testnum, v24, result,             VSET_VSEW_4AVL \
            la x7, rd_origin_data; \
            vle64.v v24, (x7); \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                la x7, val1; \
            vle64.v v8, (x7); \
            inst v24, v8, SEXT_IMM(val2), v0.t;  \
            VECTOR_RVTEST_SIGUPD(x24, v24) \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VVM_OP( 1,  vmsltu.vv, 5201314, rs2_data+0, rs1_data+0)
  TEST_VVM_OP( 2,  vmsltu.vv, 5201314, rs2_data+64, rs1_data+64)
  TEST_VVM_OP( 3,  vmsltu.vv, 5201314, rs2_data+128, rs1_data+128)
  TEST_VVM_OP( 4,  vmsltu.vv, 5201314, rs2_data+192, rs1_data+192)
  TEST_VVM_OP( 5,  vmsltu.vv, 5201314, rs2_data+256, rs1_data+256)
  TEST_VVM_OP( 6,  vmsltu.vv, 5201314, rs2_data+320, rs1_data+320)
  TEST_VVM_OP( 7,  vmsltu.vv, 5201314, rs2_data+384, rs1_data+384)
  TEST_VVM_OP( 8,  vmsltu.vv, 5201314, rs2_data+448, rs1_data+448)
  TEST_VVM_OP( 9,  vmsltu.vv, 5201314, rs2_data+512, rs1_data+512)
  TEST_VVM_OP( 10,  vmsltu.vv, 5201314, rs2_data+576, rs1_data+576)
  TEST_VVM_OP( 11,  vmsltu.vv, 5201314, rs2_data+640, rs1_data+640)
  TEST_VVM_OP( 12,  vmsltu.vv, 5201314, rs2_data+704, rs1_data+704)
  TEST_VVM_OP( 13,  vmsltu.vv, 5201314, rs2_data+768, rs1_data+768)
  TEST_VVM_OP( 14,  vmsltu.vv, 5201314, rs2_data+832, rs1_data+832)
  TEST_VVM_OP( 15,  vmsltu.vv, 5201314, rs2_data+896, rs1_data+896)
  TEST_VVM_OP( 16,  vmsltu.vv, 5201314, rs2_data+960, rs1_data+960)
  TEST_VVM_OP( 17,  vmsltu.vv, 5201314, rs2_data+1024, rs1_data+1024)
  TEST_VVM_OP( 18,  vmsltu.vv, 5201314, rs2_data+1088, rs1_data+1088)
  TEST_VVM_OP( 19,  vmsltu.vv, 5201314, rs2_data+1152, rs1_data+1152)
  TEST_VVM_OP( 20,  vmsltu.vv, 5201314, rs2_data+1216, rs1_data+1216)
  TEST_VVM_OP( 21,  vmsltu.vv, 5201314, rs2_data+1280, rs1_data+1280)
  TEST_VVM_OP( 22,  vmsltu.vv, 5201314, rs2_data+1344, rs1_data+1344)
  TEST_VVM_OP( 23,  vmsltu.vv, 5201314, rs2_data+1408, rs1_data+1408)
  TEST_VVM_OP( 24,  vmsltu.vv, 5201314, rs2_data+1472, rs1_data+1472)
  TEST_VVM_OP( 25,  vmsltu.vv, 5201314, rs2_data+1536, rs1_data+1536)
  TEST_VVM_OP( 26,  vmsltu.vv, 5201314, rs2_data+1600, rs1_data+1600)
  TEST_VVM_OP( 27,  vmsltu.vv, 5201314, rs2_data+1664, rs1_data+1664)
  TEST_VVM_OP( 28,  vmsltu.vv, 5201314, rs2_data+1728, rs1_data+1728)
  TEST_VVM_OP( 29,  vmsltu.vv, 5201314, rs2_data+1792, rs1_data+1792)
  TEST_VVM_OP( 30,  vmsltu.vv, 5201314, rs2_data+1856, rs1_data+1856)
  TEST_VVM_OP( 31,  vmsltu.vv, 5201314, rs2_data+1920, rs1_data+1920)
  TEST_VVM_OP( 32,  vmsltu.vv, 5201314, rs2_data+1984, rs1_data+1984)
  TEST_VVM_OP( 33,  vmsltu.vv, 5201314, rs2_data+2048, rs1_data+2048)
  TEST_VVM_OP( 34,  vmsltu.vv, 5201314, rs2_data+2112, rs1_data+2112)
  TEST_VVM_OP( 35,  vmsltu.vv, 5201314, rs2_data+2176, rs1_data+2176)
  TEST_VVM_OP( 36,  vmsltu.vv, 5201314, rs2_data+2240, rs1_data+2240)
  TEST_VVM_OP( 37,  vmsltu.vv, 5201314, rs2_data+2304, rs1_data+2304)
  TEST_VVM_OP( 38,  vmsltu.vv, 5201314, rs2_data+2368, rs1_data+2368)
  TEST_VVM_OP( 39,  vmsltu.vv, 5201314, rs2_data+2432, rs1_data+2432)
  TEST_VVM_OP( 40,  vmsltu.vv, 5201314, rs2_data+2496, rs1_data+2496)
  TEST_VVM_OP( 41,  vmsltu.vv, 5201314, rs2_data+2560, rs1_data+2560)
  TEST_VVM_OP( 42,  vmsltu.vv, 5201314, rs2_data+2624, rs1_data+2624)
  TEST_VVM_OP( 43,  vmsltu.vv, 5201314, rs2_data+2688, rs1_data+2688)
  TEST_VVM_OP( 44,  vmsltu.vv, 5201314, rs2_data+2752, rs1_data+2752)
  TEST_VVM_OP( 45,  vmsltu.vv, 5201314, rs2_data+2816, rs1_data+2816)
  TEST_VVM_OP( 46,  vmsltu.vv, 5201314, rs2_data+2880, rs1_data+2880)
  TEST_VVM_OP( 47,  vmsltu.vv, 5201314, rs2_data+2944, rs1_data+2944)
  TEST_VVM_OP( 48,  vmsltu.vv, 5201314, rs2_data+3008, rs1_data+3008)
  TEST_VVM_OP( 49,  vmsltu.vv, 5201314, rs2_data+3072, rs1_data+3072)
  TEST_VVM_OP( 50,  vmsltu.vv, 5201314, rs2_data+3136, rs1_data+3136)
  TEST_VVM_OP( 51,  vmsltu.vv, 5201314, rs2_data+3200, rs1_data+3200)
  TEST_VVM_OP( 52,  vmsltu.vv, 5201314, rs2_data+3264, rs1_data+3264)
  TEST_VVM_OP( 53,  vmsltu.vv, 5201314, rs2_data+3328, rs1_data+3328)
  TEST_VVM_OP( 54,  vmsltu.vv, 5201314, rs2_data+3392, rs1_data+3392)
  TEST_VVM_OP( 55,  vmsltu.vv, 5201314, rs2_data+3456, rs1_data+3456)
  TEST_VVM_OP( 56,  vmsltu.vv, 5201314, rs2_data+3520, rs1_data+3520)
  TEST_VVM_OP( 57,  vmsltu.vv, 5201314, rs2_data+3584, rs1_data+3584)
  TEST_VVM_OP( 58,  vmsltu.vv, 5201314, rs2_data+3648, rs1_data+3648)
  TEST_VVM_OP( 59,  vmsltu.vv, 5201314, rs2_data+3712, rs1_data+3712)
  TEST_VVM_OP( 60,  vmsltu.vv, 5201314, rs2_data+3776, rs1_data+3776)
  TEST_VVM_OP( 61,  vmsltu.vv, 5201314, rs2_data+3840, rs1_data+3840)
  TEST_VVM_OP( 62,  vmsltu.vv, 5201314, rs2_data+3904, rs1_data+3904)
  TEST_VVM_OP( 63,  vmsltu.vv, 5201314, rs2_data+3968, rs1_data+3968)
  TEST_VVM_OP( 64,  vmsltu.vv, 5201314, rs2_data+4032, rs1_data+4032)
  TEST_VVM_OP( 65,  vmsltu.vv, 5201314, rs2_data+4096, rs1_data+4096)
  TEST_VVM_OP( 66,  vmsltu.vv, 5201314, rs2_data+4160, rs1_data+4160)
  TEST_VVM_OP( 67,  vmsltu.vv, 5201314, rs2_data+4224, rs1_data+4224)
  TEST_VVM_OP( 68,  vmsltu.vv, 5201314, rs2_data+4288, rs1_data+4288)
  TEST_VVM_OP( 69,  vmsltu.vv, 5201314, rs2_data+4352, rs1_data+4352)
  TEST_VVM_OP( 70,  vmsltu.vv, 5201314, rs2_data+4416, rs1_data+4416)
  TEST_VVM_OP( 71,  vmsltu.vv, 5201314, rs2_data+4480, rs1_data+4480)
  TEST_VVM_OP( 72,  vmsltu.vv, 5201314, rs2_data+4544, rs1_data+4544)
  TEST_VVM_OP( 73,  vmsltu.vv, 5201314, rs2_data+4608, rs1_data+4608)
  TEST_VVM_OP( 74,  vmsltu.vv, 5201314, rs2_data+4672, rs1_data+4672)
  TEST_VVM_OP( 75,  vmsltu.vv, 5201314, rs2_data+4736, rs1_data+4736)
  TEST_VVM_OP( 76,  vmsltu.vv, 5201314, rs2_data+4800, rs1_data+4800)
  TEST_VVM_OP_rd2( 77,  vmsltu.vv, 5201314, rs2_data+64, rs1_data+64)
  TEST_VVM_OP_13( 78,  vmsltu.vv, 5201314, rs2_data+64, rs1_data+64)
  TEST_VVM_OP_rd4( 79,  vmsltu.vv, 5201314, rs2_data+192, rs1_data+192)
  TEST_VVM_OP_15( 80,  vmsltu.vv, 5201314, rs2_data+192, rs1_data+192)
  TEST_VVM_OP_rd6( 81,  vmsltu.vv, 5201314, rs2_data+320, rs1_data+320)
  TEST_VVM_OP_17( 82,  vmsltu.vv, 5201314, rs2_data+320, rs1_data+320)
  TEST_VVM_OP_rd10( 83,  vmsltu.vv, 5201314, rs2_data+576, rs1_data+576)
  TEST_VVM_OP_111( 84,  vmsltu.vv, 5201314, rs2_data+576, rs1_data+576)
  TEST_VVM_OP_rd14( 85,  vmsltu.vv, 5201314, rs2_data+832, rs1_data+832)
  TEST_VVM_OP_115( 86,  vmsltu.vv, 5201314, rs2_data+832, rs1_data+832)
  TEST_VVM_OP_rd18( 87,  vmsltu.vv, 5201314, rs2_data+1088, rs1_data+1088)
  TEST_VVM_OP_119( 88,  vmsltu.vv, 5201314, rs2_data+1088, rs1_data+1088)
  TEST_VVM_OP_rd22( 89,  vmsltu.vv, 5201314, rs2_data+1344, rs1_data+1344)
  TEST_VVM_OP_123( 90,  vmsltu.vv, 5201314, rs2_data+1344, rs1_data+1344)
  TEST_VVM_OP_rd26( 91,  vmsltu.vv, 5201314, rs2_data+1600, rs1_data+1600)
  TEST_VVM_OP_127( 92,  vmsltu.vv, 5201314, rs2_data+1600, rs1_data+1600)
  TEST_VVM_OP_rd28( 93,  vmsltu.vv, 5201314, rs2_data+1728, rs1_data+1728)
  TEST_VVM_OP_129( 94,  vmsltu.vv, 5201314, rs2_data+1728, rs1_data+1728)
  TEST_VVM_OP_rd30( 95,  vmsltu.vv, 5201314, rs2_data+1856, rs1_data+1856)
  TEST_VVM_OP_131( 96,  vmsltu.vv, 5201314, rs2_data+1856, rs1_data+1856)
  #-------------------------------------------------------------
  # VX Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x20,signature_x20_1)
  TEST_VXM_OP( 97,  vmsltu.vx, 5201314, rs2_data+0, 0xfffffffffffffffe)
  TEST_VXM_OP( 98,  vmsltu.vx, 5201314, rs2_data+64, 0xfffffffffffffffd)
  TEST_VXM_OP( 99,  vmsltu.vx, 5201314, rs2_data+128, 0xfffffffffffffffb)
  TEST_VXM_OP( 100,  vmsltu.vx, 5201314, rs2_data+192, 0xfffffffffffffff7)
  TEST_VXM_OP( 101,  vmsltu.vx, 5201314, rs2_data+256, 0xffffffffffffffef)
  TEST_VXM_OP( 102,  vmsltu.vx, 5201314, rs2_data+320, 0xffffffffffffffdf)
  TEST_VXM_OP( 103,  vmsltu.vx, 5201314, rs2_data+384, 0xffffffffffffffbf)
  TEST_VXM_OP( 104,  vmsltu.vx, 5201314, rs2_data+448, 0xffffffffffffff7f)
  TEST_VXM_OP( 105,  vmsltu.vx, 5201314, rs2_data+512, 0xfffffffffffffeff)
  TEST_VXM_OP( 106,  vmsltu.vx, 5201314, rs2_data+576, 0xfffffffffffffdff)
  TEST_VXM_OP( 107,  vmsltu.vx, 5201314, rs2_data+640, 0xfffffffffffffbff)
  TEST_VXM_OP( 108,  vmsltu.vx, 5201314, rs2_data+704, 0xfffffffffffff7ff)
  TEST_VXM_OP( 109,  vmsltu.vx, 5201314, rs2_data+768, 0xffffffffffffefff)
  TEST_VXM_OP( 110,  vmsltu.vx, 5201314, rs2_data+832, 0xffffffffffffdfff)
  TEST_VXM_OP( 111,  vmsltu.vx, 5201314, rs2_data+896, 0xffffffffffffbfff)
  TEST_VXM_OP( 112,  vmsltu.vx, 5201314, rs2_data+960, 0xffffffffffff7fff)
  TEST_VXM_OP( 113,  vmsltu.vx, 5201314, rs2_data+1024, 0xfffffffffffeffff)
  TEST_VXM_OP( 114,  vmsltu.vx, 5201314, rs2_data+1088, 0xfffffffffffdffff)
  TEST_VXM_OP( 115,  vmsltu.vx, 5201314, rs2_data+1152, 0xfffffffffffbffff)
  TEST_VXM_OP( 116,  vmsltu.vx, 5201314, rs2_data+1216, 0xfffffffffff7ffff)
  TEST_VXM_OP( 117,  vmsltu.vx, 5201314, rs2_data+1280, 0xffffffffffefffff)
  TEST_VXM_OP( 118,  vmsltu.vx, 5201314, rs2_data+1344, 0xffffffffffdfffff)
  TEST_VXM_OP( 119,  vmsltu.vx, 5201314, rs2_data+1408, 0xffffffffffbfffff)
  TEST_VXM_OP( 120,  vmsltu.vx, 5201314, rs2_data+1472, 0xffffffffff7fffff)
  TEST_VXM_OP( 121,  vmsltu.vx, 5201314, rs2_data+1536, 0xfffffffffeffffff)
  TEST_VXM_OP( 122,  vmsltu.vx, 5201314, rs2_data+1600, 0xfffffffffdffffff)
  TEST_VXM_OP( 123,  vmsltu.vx, 5201314, rs2_data+1664, 0xfffffffffbffffff)
  TEST_VXM_OP( 124,  vmsltu.vx, 5201314, rs2_data+1728, 0xfffffffff7ffffff)
  TEST_VXM_OP( 125,  vmsltu.vx, 5201314, rs2_data+1792, 0xffffffffefffffff)
  TEST_VXM_OP( 126,  vmsltu.vx, 5201314, rs2_data+1856, 0xffffffffdfffffff)
  TEST_VXM_OP( 127,  vmsltu.vx, 5201314, rs2_data+1920, 0xffffffffbfffffff)
  TEST_VXM_OP( 128,  vmsltu.vx, 5201314, rs2_data+1984, 0xffffffff7fffffff)
  TEST_VXM_OP( 129,  vmsltu.vx, 5201314, rs2_data+2048, 0xfffffffeffffffff)
  TEST_VXM_OP( 130,  vmsltu.vx, 5201314, rs2_data+2112, 0xfffffffdffffffff)
  TEST_VXM_OP( 131,  vmsltu.vx, 5201314, rs2_data+2176, 0xfffffffbffffffff)
  TEST_VXM_OP( 132,  vmsltu.vx, 5201314, rs2_data+2240, 0xfffffff7ffffffff)
  TEST_VXM_OP( 133,  vmsltu.vx, 5201314, rs2_data+2304, 0xffffffefffffffff)
  TEST_VXM_OP( 134,  vmsltu.vx, 5201314, rs2_data+2368, 0xffffffdfffffffff)
  TEST_VXM_OP( 135,  vmsltu.vx, 5201314, rs2_data+2432, 0xffffffbfffffffff)
  TEST_VXM_OP( 136,  vmsltu.vx, 5201314, rs2_data+2496, 0xffffff7fffffffff)
  TEST_VXM_OP( 137,  vmsltu.vx, 5201314, rs2_data+2560, 0xfffffeffffffffff)
  TEST_VXM_OP( 138,  vmsltu.vx, 5201314, rs2_data+2624, 0xfffffdffffffffff)
  TEST_VXM_OP( 139,  vmsltu.vx, 5201314, rs2_data+2688, 0xfffffbffffffffff)
  TEST_VXM_OP( 140,  vmsltu.vx, 5201314, rs2_data+2752, 0xfffff7ffffffffff)
  TEST_VXM_OP( 141,  vmsltu.vx, 5201314, rs2_data+2816, 0xffffefffffffffff)
  TEST_VXM_OP( 142,  vmsltu.vx, 5201314, rs2_data+2880, 0xffffdfffffffffff)
  TEST_VXM_OP( 143,  vmsltu.vx, 5201314, rs2_data+2944, 0xffffbfffffffffff)
  TEST_VXM_OP( 144,  vmsltu.vx, 5201314, rs2_data+3008, 0xffff7fffffffffff)
  TEST_VXM_OP( 145,  vmsltu.vx, 5201314, rs2_data+3072, 0xfffeffffffffffff)
  TEST_VXM_OP( 146,  vmsltu.vx, 5201314, rs2_data+3136, 0xfffdffffffffffff)
  TEST_VXM_OP( 147,  vmsltu.vx, 5201314, rs2_data+3200, 0xfffbffffffffffff)
  TEST_VXM_OP( 148,  vmsltu.vx, 5201314, rs2_data+3264, 0xfff7ffffffffffff)
  TEST_VXM_OP( 149,  vmsltu.vx, 5201314, rs2_data+3328, 0xffefffffffffffff)
  TEST_VXM_OP( 150,  vmsltu.vx, 5201314, rs2_data+3392, 0xffdfffffffffffff)
  TEST_VXM_OP( 151,  vmsltu.vx, 5201314, rs2_data+3456, 0xffbfffffffffffff)
  TEST_VXM_OP( 152,  vmsltu.vx, 5201314, rs2_data+3520, 0xff7fffffffffffff)
  TEST_VXM_OP( 153,  vmsltu.vx, 5201314, rs2_data+3584, 0xfeffffffffffffff)
  TEST_VXM_OP( 154,  vmsltu.vx, 5201314, rs2_data+3648, 0xfdffffffffffffff)
  TEST_VXM_OP( 155,  vmsltu.vx, 5201314, rs2_data+3712, 0xfbffffffffffffff)
  TEST_VXM_OP( 156,  vmsltu.vx, 5201314, rs2_data+3776, 0xf7ffffffffffffff)
  TEST_VXM_OP( 157,  vmsltu.vx, 5201314, rs2_data+3840, 0xefffffffffffffff)
  TEST_VXM_OP( 158,  vmsltu.vx, 5201314, rs2_data+3904, 0xdfffffffffffffff)
  TEST_VXM_OP( 159,  vmsltu.vx, 5201314, rs2_data+3968, 0xbfffffffffffffff)
  TEST_VXM_OP( 160,  vmsltu.vx, 5201314, rs2_data+4032, 0x7fffffffffffffff)
  TEST_VXM_OP( 161,  vmsltu.vx, 5201314, rs2_data+4096, 0x00000000000001)
  TEST_VXM_OP( 162,  vmsltu.vx, 5201314, rs2_data+4160, 0x00000000000002)
  TEST_VXM_OP( 163,  vmsltu.vx, 5201314, rs2_data+4224, 0x00000000000004)
  TEST_VXM_OP( 164,  vmsltu.vx, 5201314, rs2_data+4288, 0x00000000000008)
  TEST_VXM_OP( 165,  vmsltu.vx, 5201314, rs2_data+4352, 0x00000000000010)
  TEST_VXM_OP( 166,  vmsltu.vx, 5201314, rs2_data+4416, 0x00000000000020)
  TEST_VXM_OP( 167,  vmsltu.vx, 5201314, rs2_data+4480, 0x00000000000040)
  TEST_VXM_OP( 168,  vmsltu.vx, 5201314, rs2_data+4544, 0x00000000000080)
  TEST_VXM_OP( 169,  vmsltu.vx, 5201314, rs2_data+4608, 0x00000000000100)
  TEST_VXM_OP( 170,  vmsltu.vx, 5201314, rs2_data+4672, 0x00000000000200)
  TEST_VXM_OP( 171,  vmsltu.vx, 5201314, rs2_data+4736, 0x00000000000400)
  TEST_VXM_OP( 172,  vmsltu.vx, 5201314, rs2_data+4800, 0x00000000000800)
  TEST_VXM_OP_rd2( 173,  vmsltu.vx, 5201314, rs2_data+64, 0xfffffffffffffffd)
  TEST_VXM_OP_rd4( 174,  vmsltu.vx, 5201314, rs2_data+192, 0xfffffffffffffff7)
  TEST_VXM_OP_rd6( 175,  vmsltu.vx, 5201314, rs2_data+320, 0xffffffffffffffdf)
  TEST_VXM_OP_rd8( 176,  vmsltu.vx, 5201314, rs2_data+448, 0xffffffffffffff7f)
  TEST_VXM_OP_rd10( 177,  vmsltu.vx, 5201314, rs2_data+576, 0xfffffffffffffdff)
  TEST_VXM_OP_rd14( 178,  vmsltu.vx, 5201314, rs2_data+832, 0xffffffffffffdfff)
  TEST_VXM_OP_rd16( 179,  vmsltu.vx, 5201314, rs2_data+960, 0xffffffffffff7fff)
  TEST_VXM_OP_rd18( 180,  vmsltu.vx, 5201314, rs2_data+1088, 0xfffffffffffdffff)
  TEST_VXM_OP_rd22( 181,  vmsltu.vx, 5201314, rs2_data+1344, 0xffffffffffdfffff)
  TEST_VXM_OP_rd26( 182,  vmsltu.vx, 5201314, rs2_data+1600, 0xfffffffffdffffff)
  TEST_VXM_OP_rd28( 183,  vmsltu.vx, 5201314, rs2_data+1728, 0xfffffffff7ffffff)
  TEST_VXM_OP_rd30( 184,  vmsltu.vx, 5201314, rs2_data+1856, 0xffffffffdfffffff)
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
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314

rd_data_vx:
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314
.dword	0x5201314

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
    
    

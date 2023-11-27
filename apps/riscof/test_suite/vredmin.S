#----------------------------------------------------------------------------- 
    # vredmin.S
    #-----------------------------------------------------------------------------
    #
    # Test vredmin instructions.
    #

    #include "model_test.h"
    #include "arch_test.h"
    #include "test_macros_vector.h"

RVTEST_ISA("RV64RV64IMAFDCVZicsr")
    
    .section .text.init
    .globl rvtest_entry_point
    rvtest_entry_point:
    
    #ifdef TEST_CASE_1
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vredmin)
    
    RVMODEL_BOOT
    RVTEST_CODE_BEGIN
    RVTEST_VSET
    
    RVTEST_SIGBASE( x12,signature_x12_1)
    RVTEST_SIGBASE( x20,signature_x20_0)
    RVTEST_SIGBASE( x24,signature_x24_0)
    
    
#define TEST_VV_OP( testnum, inst, result, val2, val1 ) \
        TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v24, v16, v8, v0.t; \
            VECTOR_RVTEST_SIGUPD(x12, v24) \
        )
#define TEST_VV_OP_12( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v2, x7; \
            inst v24, v16, v2, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_13( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v3, x7; \
            inst v24, v16, v3, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_14( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v4, x7; \
            inst v24, v16, v4, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_15( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v5, x7; \
            inst v24, v16, v5, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_16( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v6, x7; \
            inst v24, v16, v6, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_17( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v7, x7; \
            inst v24, v16, v7, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_19( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v9, x7; \
            inst v24, v16, v9, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_110( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v10, x7; \
            inst v24, v16, v10, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_111( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v11, x7; \
            inst v24, v16, v11, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_112( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v12, x7; \
            inst v24, v16, v12, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_113( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v13, x7; \
            inst v24, v16, v13, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_114( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v14, x7; \
            inst v24, v16, v14, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_115( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v15, x7; \
            inst v24, v16, v15, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_117( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v17, x7; \
            inst v24, v16, v17, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_118( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v18, x7; \
            inst v24, v16, v18, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_119( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v19, x7; \
            inst v24, v16, v19, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_120( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v20, x7; \
            inst v24, v16, v20, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_121( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v21, x7; \
            inst v24, v16, v21, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_122( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v22, x7; \
            inst v24, v16, v22, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_123( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v23, x7; \
            inst v24, v16, v23, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_125( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v25, x7; \
            inst v24, v16, v25, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_126( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v26, x7; \
            inst v24, v16, v26, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_127( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v27, x7; \
            inst v24, v16, v27, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_128( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v28, x7; \
            inst v24, v16, v28, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_129( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v29, x7; \
            inst v24, v16, v29, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_130( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v30, x7; \
            inst v24, v16, v30, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_131( testnum, inst, result, val2, val1 ) \
            TEST_CASE( testnum, v24, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v31, x7; \
            inst v24, v16, v31, v0.t;  \
            VECTOR_RVTEST_SIGUPD(x20, v24) \
        )
#define TEST_VV_OP_rd1( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v1, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v1, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd2( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v2, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v2, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd3( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v3, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v3, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd4( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v4, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v4, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd5( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v5, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v5, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd6( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v6, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v6, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd7( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v7, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v7, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd9( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v9, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v9, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd10( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v10, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v10, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd11( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v11, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v11, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd12( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v12, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v12, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd13( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v13, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v13, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd14( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v14, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v14, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd15( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v15, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v15, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd17( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v17, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v17, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd18( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v18, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v18, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd19( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v19, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v19, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd20( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v20, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v20, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd21( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v21, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v21, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd22( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v22, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v22, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd23( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v23, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v23, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd25( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v25, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v25, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd26( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v26, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v26, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd27( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v27, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v27, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd28( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v28, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v28, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd29( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v29, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v29, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd30( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v30, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v30, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd31( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v31, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v16, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v8, x7; \
            inst v31, v16, v8, v0.t; \
        ) 
#define TEST_VV_OP_rd8( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v8, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v24, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v16, x7; \
            inst v8, v24, v16, v0.t; \
        )
#define TEST_VV_OP_rd16( testnum, inst, result, val1, val2 ) \
        TEST_CASE( testnum, v16, result, \
            la x7, mask_data; \
    vle64.v v0, (x7); \
                li x7, MASK_VSEW(val2); \
            vmv.v.x v8, x7; \
            li x7, MASK_VSEW(val1); \
            vmv.v.x v24, x7; \
            inst v16, v8, v24, v0.t; \
        )
  #-------------------------------------------------------------
  # VV Tests
  #-------------------------------------------------------------
  RVTEST_SIGBASE( x12,signature_x12_1)
  TEST_VV_OP( 2,  vredmin.vs, 5201314, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_VV_OP( 3,  vredmin.vs, 5201314, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_VV_OP( 4,  vredmin.vs, 5201314, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_VV_OP( 5,  vredmin.vs, 5201314, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_VV_OP( 6,  vredmin.vs, 5201314, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_VV_OP( 7,  vredmin.vs, 5201314, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_VV_OP( 8,  vredmin.vs, 5201314, 0xffffffffffffffbf, 0xffffffffffffffbf );
  TEST_VV_OP( 9,  vredmin.vs, 5201314, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_VV_OP( 10,  vredmin.vs, 5201314, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_VV_OP( 11,  vredmin.vs, 5201314, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_VV_OP( 12,  vredmin.vs, 5201314, 0xfffffffffffffbff, 0xfffffffffffffbff );
  TEST_VV_OP( 13,  vredmin.vs, 5201314, 0xfffffffffffff7ff, 0xfffffffffffff7ff );
  TEST_VV_OP( 14,  vredmin.vs, 5201314, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_VV_OP( 15,  vredmin.vs, 5201314, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_VV_OP( 16,  vredmin.vs, 5201314, 0xffffffffffffbfff, 0xffffffffffffbfff );
  TEST_VV_OP( 17,  vredmin.vs, 5201314, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_VV_OP( 18,  vredmin.vs, 5201314, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_VV_OP( 19,  vredmin.vs, 5201314, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_VV_OP( 20,  vredmin.vs, 5201314, 0xfffffffffffbffff, 0xfffffffffffbffff );
  TEST_VV_OP( 21,  vredmin.vs, 5201314, 0xfffffffffff7ffff, 0xfffffffffff7ffff );
  TEST_VV_OP( 22,  vredmin.vs, 5201314, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_VV_OP( 23,  vredmin.vs, 5201314, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_VV_OP( 24,  vredmin.vs, 5201314, 0xffffffffffbfffff, 0xffffffffffbfffff );
  TEST_VV_OP( 25,  vredmin.vs, 5201314, 0xffffffffff7fffff, 0xffffffffff7fffff );
  TEST_VV_OP( 26,  vredmin.vs, 5201314, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_VV_OP( 27,  vredmin.vs, 5201314, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_VV_OP( 28,  vredmin.vs, 5201314, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_VV_OP( 29,  vredmin.vs, 5201314, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_VV_OP( 30,  vredmin.vs, 5201314, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_VV_OP( 31,  vredmin.vs, 5201314, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_VV_OP( 32,  vredmin.vs, 5201314, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_VV_OP( 33,  vredmin.vs, 5201314, 0xffffffff7fffffff, 0xffffffff7fffffff );
  TEST_VV_OP( 34,  vredmin.vs, 5201314, 0xfffffffeffffffff, 0xfffffffeffffffff );
  TEST_VV_OP( 35,  vredmin.vs, 5201314, 0xfffffffdffffffff, 0xfffffffdffffffff );
  TEST_VV_OP( 36,  vredmin.vs, 5201314, 0xfffffffbffffffff, 0xfffffffbffffffff );
  TEST_VV_OP( 37,  vredmin.vs, 5201314, 0xfffffff7ffffffff, 0xfffffff7ffffffff );
  TEST_VV_OP( 38,  vredmin.vs, 5201314, 0xffffffefffffffff, 0xffffffefffffffff );
  TEST_VV_OP( 39,  vredmin.vs, 5201314, 0xffffffdfffffffff, 0xffffffdfffffffff );
  TEST_VV_OP( 40,  vredmin.vs, 5201314, 0xffffffbfffffffff, 0xffffffbfffffffff );
  TEST_VV_OP( 41,  vredmin.vs, 5201314, 0xffffff7fffffffff, 0xffffff7fffffffff );
  TEST_VV_OP( 42,  vredmin.vs, 5201314, 0xfffffeffffffffff, 0xfffffeffffffffff );
  TEST_VV_OP( 43,  vredmin.vs, 5201314, 0xfffffdffffffffff, 0xfffffdffffffffff );
  TEST_VV_OP( 44,  vredmin.vs, 5201314, 0xfffffbffffffffff, 0xfffffbffffffffff );
  TEST_VV_OP( 45,  vredmin.vs, 5201314, 0xfffff7ffffffffff, 0xfffff7ffffffffff );
  TEST_VV_OP( 46,  vredmin.vs, 5201314, 0xffffefffffffffff, 0xffffefffffffffff );
  TEST_VV_OP( 47,  vredmin.vs, 5201314, 0xffffdfffffffffff, 0xffffdfffffffffff );
  TEST_VV_OP( 48,  vredmin.vs, 5201314, 0xffffbfffffffffff, 0xffffbfffffffffff );
  TEST_VV_OP( 49,  vredmin.vs, 5201314, 0xffff7fffffffffff, 0xffff7fffffffffff );
  TEST_VV_OP( 50,  vredmin.vs, 5201314, 0xfffeffffffffffff, 0xfffeffffffffffff );
  TEST_VV_OP( 51,  vredmin.vs, 5201314, 0xfffdffffffffffff, 0xfffdffffffffffff );
  TEST_VV_OP( 52,  vredmin.vs, 5201314, 0xfffbffffffffffff, 0xfffbffffffffffff );
  TEST_VV_OP( 53,  vredmin.vs, 5201314, 0xfff7ffffffffffff, 0xfff7ffffffffffff );
  TEST_VV_OP( 54,  vredmin.vs, 5201314, 0xffefffffffffffff, 0xffefffffffffffff );
  TEST_VV_OP( 55,  vredmin.vs, 5201314, 0xffdfffffffffffff, 0xffdfffffffffffff );
  TEST_VV_OP( 56,  vredmin.vs, 5201314, 0xffbfffffffffffff, 0xffbfffffffffffff );
  TEST_VV_OP( 57,  vredmin.vs, 5201314, 0xff7fffffffffffff, 0xff7fffffffffffff );
  TEST_VV_OP( 58,  vredmin.vs, 5201314, 0xfeffffffffffffff, 0xfeffffffffffffff );
  TEST_VV_OP( 59,  vredmin.vs, 5201314, 0xfdffffffffffffff, 0xfdffffffffffffff );
  TEST_VV_OP( 60,  vredmin.vs, 5201314, 0xfbffffffffffffff, 0xfbffffffffffffff );
  TEST_VV_OP( 61,  vredmin.vs, 5201314, 0xf7ffffffffffffff, 0xf7ffffffffffffff );
  TEST_VV_OP( 62,  vredmin.vs, 5201314, 0xefffffffffffffff, 0xefffffffffffffff );
  TEST_VV_OP( 63,  vredmin.vs, 5201314, 0xdfffffffffffffff, 0xdfffffffffffffff );
  TEST_VV_OP( 64,  vredmin.vs, 5201314, 0xbfffffffffffffff, 0xbfffffffffffffff );
  TEST_VV_OP( 65,  vredmin.vs, 5201314, 0x7fffffffffffffff, 0x7fffffffffffffff );
  TEST_VV_OP( 66,  vredmin.vs, 5201314, 0x00000000000001, 0x00000000000001 );
  TEST_VV_OP( 67,  vredmin.vs, 5201314, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP( 68,  vredmin.vs, 5201314, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP( 69,  vredmin.vs, 5201314, 0x00000000000008, 0x00000000000008 );
  TEST_VV_OP( 70,  vredmin.vs, 5201314, 0x00000000000010, 0x00000000000010 );
  TEST_VV_OP( 71,  vredmin.vs, 5201314, 0x00000000000020, 0x00000000000020 );
  TEST_VV_OP( 72,  vredmin.vs, 5201314, 0x00000000000040, 0x00000000000040 );
  TEST_VV_OP( 73,  vredmin.vs, 5201314, 0x00000000000080, 0x00000000000080 );
  TEST_VV_OP( 74,  vredmin.vs, 5201314, 0x00000000000100, 0x00000000000100 );
  TEST_VV_OP( 75,  vredmin.vs, 5201314, 0x00000000000200, 0x00000000000200 );
  TEST_VV_OP( 76,  vredmin.vs, 5201314, 0x00000000000400, 0x00000000000400 );
  TEST_VV_OP( 77,  vredmin.vs, 5201314, 0x00000000000800, 0x00000000000800 );
  TEST_VV_OP( 78,  vredmin.vs, 5201314, 0x00000000001000, 0x00000000001000 );
  TEST_VV_OP( 79,  vredmin.vs, 5201314, 0x00000000002000, 0x00000000002000 );
  TEST_VV_OP( 80,  vredmin.vs, 5201314, 0x00000000004000, 0x00000000004000 );
  TEST_VV_OP( 81,  vredmin.vs, 5201314, 0x00000000008000, 0x00000000008000 );
  TEST_VV_OP( 82,  vredmin.vs, 5201314, 0x00000000010000, 0x00000000010000 );
  TEST_VV_OP( 83,  vredmin.vs, 5201314, 0x00000000020000, 0x00000000020000 );
  TEST_VV_OP( 84,  vredmin.vs, 5201314, 0x00000000040000, 0x00000000040000 );
  TEST_VV_OP( 85,  vredmin.vs, 5201314, 0x00000000080000, 0x00000000080000 );
  TEST_VV_OP( 86,  vredmin.vs, 5201314, 0x00000000100000, 0x00000000100000 );
  TEST_VV_OP( 87,  vredmin.vs, 5201314, 0x00000000200000, 0x00000000200000 );
  TEST_VV_OP( 88,  vredmin.vs, 5201314, 0x00000000400000, 0x00000000400000 );
  TEST_VV_OP( 89,  vredmin.vs, 5201314, 0x00000000800000, 0x00000000800000 );
  TEST_VV_OP( 90,  vredmin.vs, 5201314, 0x00000001000000, 0x00000001000000 );
  TEST_VV_OP( 91,  vredmin.vs, 5201314, 0x00000002000000, 0x00000002000000 );
  TEST_VV_OP( 92,  vredmin.vs, 5201314, 0x00000004000000, 0x00000004000000 );
  TEST_VV_OP( 93,  vredmin.vs, 5201314, 0x00000008000000, 0x00000008000000 );
  TEST_VV_OP( 94,  vredmin.vs, 5201314, 0x00000010000000, 0x00000010000000 );
  TEST_VV_OP( 95,  vredmin.vs, 5201314, 0x00000020000000, 0x00000020000000 );
  TEST_VV_OP( 96,  vredmin.vs, 5201314, 0x00000040000000, 0x00000040000000 );
  TEST_VV_OP( 97,  vredmin.vs, 5201314, 0x00000080000000, 0x00000080000000 );
  TEST_VV_OP( 98,  vredmin.vs, 5201314, 0x00000100000000, 0x00000100000000 );
  TEST_VV_OP( 99,  vredmin.vs, 5201314, 0x00000200000000, 0x00000200000000 );
  TEST_VV_OP( 100,  vredmin.vs, 5201314, 0x00000400000000, 0x00000400000000 );
  TEST_VV_OP( 101,  vredmin.vs, 5201314, 0x00000800000000, 0x00000800000000 );
  TEST_VV_OP( 102,  vredmin.vs, 5201314, 0x00001000000000, 0x00001000000000 );
  TEST_VV_OP( 103,  vredmin.vs, 5201314, 0x00002000000000, 0x00002000000000 );
  TEST_VV_OP( 104,  vredmin.vs, 5201314, 0x00004000000000, 0x00004000000000 );
  TEST_VV_OP( 105,  vredmin.vs, 5201314, 0x00008000000000, 0x00008000000000 );
  TEST_VV_OP( 106,  vredmin.vs, 5201314, 0x00010000000000, 0x00010000000000 );
  TEST_VV_OP( 107,  vredmin.vs, 5201314, 0x00020000000000, 0x00020000000000 );
  TEST_VV_OP( 108,  vredmin.vs, 5201314, 0x00040000000000, 0x00040000000000 );
  TEST_VV_OP( 109,  vredmin.vs, 5201314, 0x00080000000000, 0x00080000000000 );
  TEST_VV_OP( 110,  vredmin.vs, 5201314, 0x00100000000000, 0x00100000000000 );
  TEST_VV_OP( 111,  vredmin.vs, 5201314, 0x00200000000000, 0x00200000000000 );
  TEST_VV_OP( 112,  vredmin.vs, 5201314, 0x00400000000000, 0x00400000000000 );
  TEST_VV_OP( 113,  vredmin.vs, 5201314, 0x00800000000000, 0x00800000000000 );
  TEST_VV_OP( 114,  vredmin.vs, 5201314, 0x01000000000000, 0x01000000000000 );
  TEST_VV_OP( 115,  vredmin.vs, 5201314, 0x02000000000000, 0x02000000000000 );
  TEST_VV_OP( 116,  vredmin.vs, 5201314, 0x04000000000000, 0x04000000000000 );
  TEST_VV_OP( 117,  vredmin.vs, 5201314, 0x08000000000000, 0x08000000000000 );
  TEST_VV_OP( 118,  vredmin.vs, 5201314, 0x10000000000000, 0x10000000000000 );
  TEST_VV_OP( 119,  vredmin.vs, 5201314, 0x20000000000000, 0x20000000000000 );
  TEST_VV_OP( 120,  vredmin.vs, 5201314, 0x40000000000000, 0x40000000000000 );
  TEST_VV_OP( 121,  vredmin.vs, 5201314, 0x80000000000000, 0x80000000000000 );
  TEST_VV_OP( 122,  vredmin.vs, 5201314, 0x100000000000000, 0x100000000000000 );
  TEST_VV_OP( 123,  vredmin.vs, 5201314, 0x200000000000000, 0x200000000000000 );
  TEST_VV_OP( 124,  vredmin.vs, 5201314, 0x400000000000000, 0x400000000000000 );
  TEST_VV_OP( 125,  vredmin.vs, 5201314, 0x800000000000000, 0x800000000000000 );
  TEST_VV_OP( 126,  vredmin.vs, 5201314, 0x1000000000000000, 0x1000000000000000 );
  TEST_VV_OP( 127,  vredmin.vs, 5201314, 0x2000000000000000, 0x2000000000000000 );
  TEST_VV_OP( 128,  vredmin.vs, 5201314, 0x4000000000000000, 0x4000000000000000 );
  TEST_VV_OP( 129,  vredmin.vs, 5201314, 0x8000000000000000, 0x8000000000000000 );
  TEST_VV_OP( 130,  vredmin.vs, 5201314, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP( 131,  vredmin.vs, 5201314, 0x5555555555555555, 0x00000000000003 );
  TEST_VV_OP( 132,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP( 133,  vredmin.vs, 5201314, 0x00000000000005, 0x00000000000003 );
  TEST_VV_OP( 134,  vredmin.vs, 5201314, 0x3333333333333333, 0x00000000000003 );
  TEST_VV_OP( 135,  vredmin.vs, 5201314, 0x6666666666666666, 0x00000000000003 );
  TEST_VV_OP( 136,  vredmin.vs, 5201314, 0x5555555555555555, 0x00000000000003 );
  TEST_VV_OP( 137,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000003 );
  TEST_VV_OP( 138,  vredmin.vs, 5201314, 0x000000b504f333, 0x00000000000003 );
  TEST_VV_OP( 139,  vredmin.vs, 5201314, 0x00000000000002, 0x00000000000003 );
  TEST_VV_OP( 140,  vredmin.vs, 5201314, 0x5555555555555554, 0x00000000000003 );
  TEST_VV_OP( 141,  vredmin.vs, 5201314, 0x3333333333333332, 0x00000000000003 );
  TEST_VV_OP( 142,  vredmin.vs, 5201314, 0x6666666666666665, 0x5555555555555555 );
  TEST_VV_OP( 143,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP( 144,  vredmin.vs, 5201314, 0x00000000000000, 0x00000000000003 );
  TEST_VV_OP( 145,  vredmin.vs, 5201314, 0x000000b504f332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 146,  vredmin.vs, 5201314, 0x00000000000004, 0x00000000000003 );
  TEST_VV_OP( 147,  vredmin.vs, 5201314, 0x5555555555555556, 0x00000000000003 );
  TEST_VV_OP( 148,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000003 );
  TEST_VV_OP( 149,  vredmin.vs, 5201314, 0x00000000000006, 0x00000000000003 );
  TEST_VV_OP( 150,  vredmin.vs, 5201314, 0x3333333333333334, 0x00000000000003 );
  TEST_VV_OP( 151,  vredmin.vs, 5201314, 0x6666666666666667, 0x00000000000003 );
  TEST_VV_OP( 152,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000000 );
  TEST_VV_OP( 153,  vredmin.vs, 5201314, 0x000000b504f334, 0x00000000000003 );
  TEST_VV_OP( 154,  vredmin.vs, 5201314, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP( 155,  vredmin.vs, 5201314, 0x5555555555555555, 0x5555555555555555 );
  TEST_VV_OP( 156,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555 );
  TEST_VV_OP( 157,  vredmin.vs, 5201314, 0x00000000000005, 0x5555555555555555 );
  TEST_VV_OP( 158,  vredmin.vs, 5201314, 0x3333333333333333, 0x5555555555555555 );
  TEST_VV_OP( 159,  vredmin.vs, 5201314, 0x6666666666666666, 0x5555555555555555 );
  TEST_VV_OP( 160,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x5555555555555555 );
  TEST_VV_OP( 161,  vredmin.vs, 5201314, 0x000000b504f333, 0x5555555555555555 );
  TEST_VV_OP( 162,  vredmin.vs, 5201314, 0x00000000000002, 0x5555555555555555 );
  TEST_VV_OP( 163,  vredmin.vs, 5201314, 0x5555555555555554, 0x5555555555555555 );
  TEST_VV_OP( 164,  vredmin.vs, 5201314, 0x3333333333333332, 0x5555555555555555 );
  TEST_VV_OP( 165,  vredmin.vs, 5201314, 0x6666666666666665, 0x5555555555555555 );
  TEST_VV_OP( 166,  vredmin.vs, 5201314, 0x00000000000000, 0x5555555555555555 );
  TEST_VV_OP( 167,  vredmin.vs, 5201314, 0x000000b504f332, 0x5555555555555555 );
  TEST_VV_OP( 168,  vredmin.vs, 5201314, 0x00000000000004, 0x5555555555555555 );
  TEST_VV_OP( 169,  vredmin.vs, 5201314, 0x5555555555555556, 0x5555555555555555 );
  TEST_VV_OP( 170,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x5555555555555555 );
  TEST_VV_OP( 171,  vredmin.vs, 5201314, 0x00000000000006, 0x5555555555555555 );
  TEST_VV_OP( 172,  vredmin.vs, 5201314, 0x3333333333333334, 0x5555555555555555 );
  TEST_VV_OP( 173,  vredmin.vs, 5201314, 0x6666666666666667, 0x5555555555555555 );
  TEST_VV_OP( 174,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x5555555555555555 );
  TEST_VV_OP( 175,  vredmin.vs, 5201314, 0x000000b504f334, 0x5555555555555555 );
  TEST_VV_OP( 176,  vredmin.vs, 5201314, 0x00000000000003, 0x5555555555555555 );
  TEST_VV_OP( 177,  vredmin.vs, 5201314, 0x5555555555555555, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 178,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 179,  vredmin.vs, 5201314, 0x00000000000005, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 180,  vredmin.vs, 5201314, 0x3333333333333333, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 181,  vredmin.vs, 5201314, 0x6666666666666666, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 182,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 183,  vredmin.vs, 5201314, 0x000000b504f333, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 184,  vredmin.vs, 5201314, 0x00000000000002, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 185,  vredmin.vs, 5201314, 0x5555555555555554, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 186,  vredmin.vs, 5201314, 0x3333333333333332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 187,  vredmin.vs, 5201314, 0x6666666666666665, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 188,  vredmin.vs, 5201314, 0x00000000000000, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 189,  vredmin.vs, 5201314, 0x00000000000000, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 190,  vredmin.vs, 5201314, 0x000000b504f332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 191,  vredmin.vs, 5201314, 0x00000000000004, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 192,  vredmin.vs, 5201314, 0x5555555555555556, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 193,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 194,  vredmin.vs, 5201314, 0x00000000000006, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 195,  vredmin.vs, 5201314, 0x3333333333333334, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 196,  vredmin.vs, 5201314, 0x6666666666666667, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 197,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 198,  vredmin.vs, 5201314, 0x000000b504f334, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 199,  vredmin.vs, 5201314, 0x00000000000003, 0x00000000000005 );
  TEST_VV_OP( 200,  vredmin.vs, 5201314, 0x5555555555555555, 0x00000000000005 );
  TEST_VV_OP( 201,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000005 );
  TEST_VV_OP( 202,  vredmin.vs, 5201314, 0x00000000000005, 0x00000000000005 );
  TEST_VV_OP( 203,  vredmin.vs, 5201314, 0x3333333333333333, 0x00000000000005 );
  TEST_VV_OP( 204,  vredmin.vs, 5201314, 0x6666666666666666, 0x00000000000005 );
  TEST_VV_OP( 205,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000005 );
  TEST_VV_OP( 206,  vredmin.vs, 5201314, 0x000000b504f333, 0x00000000000005 );
  TEST_VV_OP( 207,  vredmin.vs, 5201314, 0x00000000000002, 0x00000000000005 );
  TEST_VV_OP( 208,  vredmin.vs, 5201314, 0x5555555555555554, 0x00000000000005 );
  TEST_VV_OP( 209,  vredmin.vs, 5201314, 0x3333333333333332, 0x00000000000005 );
  TEST_VV_OP( 210,  vredmin.vs, 5201314, 0x6666666666666665, 0x00000000000005 );
  TEST_VV_OP( 211,  vredmin.vs, 5201314, 0x00000000000000, 0x00000000000005 );
  TEST_VV_OP( 212,  vredmin.vs, 5201314, 0x000000b504f332, 0x00000000000005 );
  TEST_VV_OP( 213,  vredmin.vs, 5201314, 0x00000000000004, 0x00000000000005 );
  TEST_VV_OP( 214,  vredmin.vs, 5201314, 0x5555555555555556, 0x00000000000005 );
  TEST_VV_OP( 215,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000005 );
  TEST_VV_OP( 216,  vredmin.vs, 5201314, 0x00000000000006, 0x00000000000005 );
  TEST_VV_OP( 217,  vredmin.vs, 5201314, 0x3333333333333334, 0x00000000000005 );
  TEST_VV_OP( 218,  vredmin.vs, 5201314, 0x6666666666666667, 0x00000000000005 );
  TEST_VV_OP( 219,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000005 );
  TEST_VV_OP( 220,  vredmin.vs, 5201314, 0x000000b504f334, 0x00000000000005 );
  TEST_VV_OP( 221,  vredmin.vs, 5201314, 0x00000000000003, 0x3333333333333333 );
  TEST_VV_OP( 222,  vredmin.vs, 5201314, 0x5555555555555555, 0x3333333333333333 );
  TEST_VV_OP( 223,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x3333333333333333 );
  TEST_VV_OP( 224,  vredmin.vs, 5201314, 0x00000000000005, 0x3333333333333333 );
  TEST_VV_OP( 225,  vredmin.vs, 5201314, 0x3333333333333333, 0x3333333333333333 );
  TEST_VV_OP( 226,  vredmin.vs, 5201314, 0x6666666666666666, 0x3333333333333333 );
  TEST_VV_OP( 227,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x3333333333333333 );
  TEST_VV_OP( 228,  vredmin.vs, 5201314, 0x000000b504f333, 0x3333333333333333 );
  TEST_VV_OP( 229,  vredmin.vs, 5201314, 0x00000000000002, 0x3333333333333333 );
  TEST_VV_OP( 230,  vredmin.vs, 5201314, 0x5555555555555554, 0x3333333333333333 );
  TEST_VV_OP( 231,  vredmin.vs, 5201314, 0x3333333333333332, 0x3333333333333333 );
  TEST_VV_OP( 232,  vredmin.vs, 5201314, 0x6666666666666665, 0x3333333333333333 );
  TEST_VV_OP( 233,  vredmin.vs, 5201314, 0x00000000000000, 0x3333333333333333 );
  TEST_VV_OP( 234,  vredmin.vs, 5201314, 0x000000b504f332, 0x3333333333333333 );
  TEST_VV_OP( 235,  vredmin.vs, 5201314, 0x00000000000004, 0x3333333333333333 );
  TEST_VV_OP( 236,  vredmin.vs, 5201314, 0x5555555555555556, 0x3333333333333333 );
  TEST_VV_OP( 237,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x3333333333333333 );
  TEST_VV_OP( 238,  vredmin.vs, 5201314, 0x00000000000006, 0x3333333333333333 );
  TEST_VV_OP( 239,  vredmin.vs, 5201314, 0x3333333333333334, 0x3333333333333333 );
  TEST_VV_OP( 240,  vredmin.vs, 5201314, 0x6666666666666667, 0x3333333333333333 );
  TEST_VV_OP( 241,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x3333333333333333 );
  TEST_VV_OP( 242,  vredmin.vs, 5201314, 0x000000b504f334, 0x3333333333333333 );
  TEST_VV_OP( 243,  vredmin.vs, 5201314, 0x00000000000003, 0x6666666666666666 );
  TEST_VV_OP( 244,  vredmin.vs, 5201314, 0x5555555555555555, 0x6666666666666666 );
  TEST_VV_OP( 245,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x6666666666666666 );
  TEST_VV_OP( 246,  vredmin.vs, 5201314, 0x00000000000005, 0x6666666666666666 );
  TEST_VV_OP( 247,  vredmin.vs, 5201314, 0x3333333333333333, 0x6666666666666666 );
  TEST_VV_OP( 248,  vredmin.vs, 5201314, 0x6666666666666666, 0x6666666666666666 );
  TEST_VV_OP( 249,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x6666666666666666 );
  TEST_VV_OP( 250,  vredmin.vs, 5201314, 0x000000b504f333, 0x6666666666666666 );
  TEST_VV_OP( 251,  vredmin.vs, 5201314, 0x00000000000002, 0x6666666666666666 );
  TEST_VV_OP( 252,  vredmin.vs, 5201314, 0x5555555555555554, 0x6666666666666666 );
  TEST_VV_OP( 253,  vredmin.vs, 5201314, 0x3333333333333332, 0x6666666666666666 );
  TEST_VV_OP( 254,  vredmin.vs, 5201314, 0x6666666666666665, 0x6666666666666666 );
  TEST_VV_OP( 255,  vredmin.vs, 5201314, 0x00000000000000, 0x6666666666666666 );
  TEST_VV_OP( 256,  vredmin.vs, 5201314, 0x000000b504f332, 0x6666666666666666 );
  TEST_VV_OP( 257,  vredmin.vs, 5201314, 0x00000000000004, 0x6666666666666666 );
  TEST_VV_OP( 258,  vredmin.vs, 5201314, 0x5555555555555556, 0x6666666666666666 );
  TEST_VV_OP( 259,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x6666666666666666 );
  TEST_VV_OP( 260,  vredmin.vs, 5201314, 0x00000000000006, 0x6666666666666666 );
  TEST_VV_OP( 261,  vredmin.vs, 5201314, 0x3333333333333334, 0x6666666666666666 );
  TEST_VV_OP( 262,  vredmin.vs, 5201314, 0x6666666666666667, 0x6666666666666666 );
  TEST_VV_OP( 263,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x6666666666666666 );
  TEST_VV_OP( 264,  vredmin.vs, 5201314, 0x000000b504f334, 0x6666666666666666 );
  TEST_VV_OP( 265,  vredmin.vs, 5201314, 0x00000000000003, 0xffffffff4afb0ccd );
  TEST_VV_OP( 266,  vredmin.vs, 5201314, 0x5555555555555555, 0xffffffff4afb0ccd );
  TEST_VV_OP( 267,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xffffffff4afb0ccd );
  TEST_VV_OP( 268,  vredmin.vs, 5201314, 0x00000000000005, 0xffffffff4afb0ccd );
  TEST_VV_OP( 269,  vredmin.vs, 5201314, 0x3333333333333333, 0xffffffff4afb0ccd );
  TEST_VV_OP( 270,  vredmin.vs, 5201314, 0x6666666666666666, 0xffffffff4afb0ccd );
  TEST_VV_OP( 271,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0xffffffff4afb0ccd );
  TEST_VV_OP( 272,  vredmin.vs, 5201314, 0x000000b504f333, 0xffffffff4afb0ccd );
  TEST_VV_OP( 273,  vredmin.vs, 5201314, 0x00000000000002, 0xffffffff4afb0ccd );
  TEST_VV_OP( 274,  vredmin.vs, 5201314, 0x5555555555555554, 0xffffffff4afb0ccd );
  TEST_VV_OP( 275,  vredmin.vs, 5201314, 0x3333333333333332, 0xffffffff4afb0ccd );
  TEST_VV_OP( 276,  vredmin.vs, 5201314, 0x6666666666666665, 0xffffffff4afb0ccd );
  TEST_VV_OP( 277,  vredmin.vs, 5201314, 0x00000000000000, 0xffffffff4afb0ccd );
  TEST_VV_OP( 278,  vredmin.vs, 5201314, 0x000000b504f332, 0xffffffff4afb0ccd );
  TEST_VV_OP( 279,  vredmin.vs, 5201314, 0x00000000000004, 0xffffffff4afb0ccd );
  TEST_VV_OP( 280,  vredmin.vs, 5201314, 0x5555555555555556, 0xffffffff4afb0ccd );
  TEST_VV_OP( 281,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xffffffff4afb0ccd );
  TEST_VV_OP( 282,  vredmin.vs, 5201314, 0x00000000000006, 0xffffffff4afb0ccd );
  TEST_VV_OP( 283,  vredmin.vs, 5201314, 0x3333333333333334, 0xffffffff4afb0ccd );
  TEST_VV_OP( 284,  vredmin.vs, 5201314, 0x6666666666666667, 0xffffffff4afb0ccd );
  TEST_VV_OP( 285,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0xffffffff4afb0ccd );
  TEST_VV_OP( 286,  vredmin.vs, 5201314, 0x000000b504f334, 0xffffffff4afb0ccd );
  TEST_VV_OP( 287,  vredmin.vs, 5201314, 0x00000000000003, 0x000000b504f333 );
  TEST_VV_OP( 288,  vredmin.vs, 5201314, 0x5555555555555555, 0x000000b504f333 );
  TEST_VV_OP( 289,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x000000b504f333 );
  TEST_VV_OP( 290,  vredmin.vs, 5201314, 0x00000000000005, 0x000000b504f333 );
  TEST_VV_OP( 291,  vredmin.vs, 5201314, 0x3333333333333333, 0x000000b504f333 );
  TEST_VV_OP( 292,  vredmin.vs, 5201314, 0x6666666666666666, 0x000000b504f333 );
  TEST_VV_OP( 293,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x000000b504f333 );
  TEST_VV_OP( 294,  vredmin.vs, 5201314, 0x000000b504f333, 0x000000b504f333 );
  TEST_VV_OP( 295,  vredmin.vs, 5201314, 0x00000000000002, 0x000000b504f333 );
  TEST_VV_OP( 296,  vredmin.vs, 5201314, 0x5555555555555554, 0x000000b504f333 );
  TEST_VV_OP( 297,  vredmin.vs, 5201314, 0x3333333333333332, 0x000000b504f333 );
  TEST_VV_OP( 298,  vredmin.vs, 5201314, 0x6666666666666665, 0x000000b504f333 );
  TEST_VV_OP( 299,  vredmin.vs, 5201314, 0x00000000000000, 0x000000b504f333 );
  TEST_VV_OP( 300,  vredmin.vs, 5201314, 0x000000b504f332, 0x000000b504f333 );
  TEST_VV_OP( 301,  vredmin.vs, 5201314, 0x00000000000004, 0x000000b504f333 );
  TEST_VV_OP( 302,  vredmin.vs, 5201314, 0x5555555555555556, 0x000000b504f333 );
  TEST_VV_OP( 303,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x000000b504f333 );
  TEST_VV_OP( 304,  vredmin.vs, 5201314, 0x00000000000006, 0x000000b504f333 );
  TEST_VV_OP( 305,  vredmin.vs, 5201314, 0x3333333333333334, 0x000000b504f333 );
  TEST_VV_OP( 306,  vredmin.vs, 5201314, 0x6666666666666667, 0x000000b504f333 );
  TEST_VV_OP( 307,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x000000b504f333 );
  TEST_VV_OP( 308,  vredmin.vs, 5201314, 0x000000b504f334, 0x000000b504f333 );
  TEST_VV_OP( 309,  vredmin.vs, 5201314, 0x00000000000003, 0x00000000000002 );
  TEST_VV_OP( 310,  vredmin.vs, 5201314, 0x5555555555555555, 0x00000000000002 );
  TEST_VV_OP( 311,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000002 );
  TEST_VV_OP( 312,  vredmin.vs, 5201314, 0x00000000000005, 0x00000000000002 );
  TEST_VV_OP( 313,  vredmin.vs, 5201314, 0x3333333333333333, 0x00000000000002 );
  TEST_VV_OP( 314,  vredmin.vs, 5201314, 0x6666666666666666, 0x00000000000002 );
  TEST_VV_OP( 315,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000002 );
  TEST_VV_OP( 316,  vredmin.vs, 5201314, 0x000000b504f333, 0x00000000000002 );
  TEST_VV_OP( 317,  vredmin.vs, 5201314, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP( 318,  vredmin.vs, 5201314, 0x5555555555555554, 0x00000000000002 );
  TEST_VV_OP( 319,  vredmin.vs, 5201314, 0x3333333333333332, 0x00000000000002 );
  TEST_VV_OP( 320,  vredmin.vs, 5201314, 0x6666666666666665, 0x00000000000002 );
  TEST_VV_OP( 321,  vredmin.vs, 5201314, 0x00000000000000, 0x00000000000002 );
  TEST_VV_OP( 322,  vredmin.vs, 5201314, 0x000000b504f332, 0x00000000000002 );
  TEST_VV_OP( 323,  vredmin.vs, 5201314, 0x00000000000004, 0x00000000000002 );
  TEST_VV_OP( 324,  vredmin.vs, 5201314, 0x5555555555555556, 0x00000000000002 );
  TEST_VV_OP( 325,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000002 );
  TEST_VV_OP( 326,  vredmin.vs, 5201314, 0x00000000000006, 0x00000000000002 );
  TEST_VV_OP( 327,  vredmin.vs, 5201314, 0x3333333333333334, 0x00000000000002 );
  TEST_VV_OP( 328,  vredmin.vs, 5201314, 0x6666666666666667, 0x00000000000002 );
  TEST_VV_OP( 329,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000002 );
  TEST_VV_OP( 330,  vredmin.vs, 5201314, 0x000000b504f334, 0x00000000000002 );
  TEST_VV_OP( 331,  vredmin.vs, 5201314, 0x00000000000003, 0x5555555555555554 );
  TEST_VV_OP( 332,  vredmin.vs, 5201314, 0x5555555555555555, 0x5555555555555554 );
  TEST_VV_OP( 333,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x5555555555555554 );
  TEST_VV_OP( 334,  vredmin.vs, 5201314, 0x00000000000005, 0x5555555555555554 );
  TEST_VV_OP( 335,  vredmin.vs, 5201314, 0x3333333333333333, 0x5555555555555554 );
  TEST_VV_OP( 336,  vredmin.vs, 5201314, 0x6666666666666666, 0x5555555555555554 );
  TEST_VV_OP( 337,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x5555555555555554 );
  TEST_VV_OP( 338,  vredmin.vs, 5201314, 0x000000b504f333, 0x5555555555555554 );
  TEST_VV_OP( 339,  vredmin.vs, 5201314, 0x00000000000002, 0x5555555555555554 );
  TEST_VV_OP( 340,  vredmin.vs, 5201314, 0x5555555555555554, 0x5555555555555554 );
  TEST_VV_OP( 341,  vredmin.vs, 5201314, 0x3333333333333332, 0x5555555555555554 );
  TEST_VV_OP( 342,  vredmin.vs, 5201314, 0x6666666666666665, 0x5555555555555554 );
  TEST_VV_OP( 343,  vredmin.vs, 5201314, 0x00000000000000, 0x5555555555555554 );
  TEST_VV_OP( 344,  vredmin.vs, 5201314, 0x000000b504f332, 0x5555555555555554 );
  TEST_VV_OP( 345,  vredmin.vs, 5201314, 0x00000000000004, 0x5555555555555554 );
  TEST_VV_OP( 346,  vredmin.vs, 5201314, 0x5555555555555556, 0x5555555555555554 );
  TEST_VV_OP( 347,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x5555555555555554 );
  TEST_VV_OP( 348,  vredmin.vs, 5201314, 0x00000000000006, 0x5555555555555554 );
  TEST_VV_OP( 349,  vredmin.vs, 5201314, 0x3333333333333334, 0x5555555555555554 );
  TEST_VV_OP( 350,  vredmin.vs, 5201314, 0x6666666666666667, 0x5555555555555554 );
  TEST_VV_OP( 351,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x5555555555555554 );
  TEST_VV_OP( 352,  vredmin.vs, 5201314, 0x000000b504f334, 0x5555555555555554 );
  TEST_VV_OP( 353,  vredmin.vs, 5201314, 0x00000000000003, 0x3333333333333332 );
  TEST_VV_OP( 354,  vredmin.vs, 5201314, 0x5555555555555555, 0x3333333333333332 );
  TEST_VV_OP( 355,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x3333333333333332 );
  TEST_VV_OP( 356,  vredmin.vs, 5201314, 0x00000000000005, 0x3333333333333332 );
  TEST_VV_OP( 357,  vredmin.vs, 5201314, 0x3333333333333333, 0x3333333333333332 );
  TEST_VV_OP( 358,  vredmin.vs, 5201314, 0x6666666666666666, 0x3333333333333332 );
  TEST_VV_OP( 359,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x3333333333333332 );
  TEST_VV_OP( 360,  vredmin.vs, 5201314, 0x000000b504f333, 0x3333333333333332 );
  TEST_VV_OP( 361,  vredmin.vs, 5201314, 0x00000000000002, 0x3333333333333332 );
  TEST_VV_OP( 362,  vredmin.vs, 5201314, 0x5555555555555554, 0x3333333333333332 );
  TEST_VV_OP( 363,  vredmin.vs, 5201314, 0x3333333333333332, 0x3333333333333332 );
  TEST_VV_OP( 364,  vredmin.vs, 5201314, 0x6666666666666665, 0x3333333333333332 );
  TEST_VV_OP( 365,  vredmin.vs, 5201314, 0x00000000000000, 0x3333333333333332 );
  TEST_VV_OP( 366,  vredmin.vs, 5201314, 0x000000b504f332, 0x3333333333333332 );
  TEST_VV_OP( 367,  vredmin.vs, 5201314, 0x00000000000004, 0x3333333333333332 );
  TEST_VV_OP( 368,  vredmin.vs, 5201314, 0x5555555555555556, 0x3333333333333332 );
  TEST_VV_OP( 369,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x3333333333333332 );
  TEST_VV_OP( 370,  vredmin.vs, 5201314, 0x00000000000006, 0x3333333333333332 );
  TEST_VV_OP( 371,  vredmin.vs, 5201314, 0x3333333333333334, 0x3333333333333332 );
  TEST_VV_OP( 372,  vredmin.vs, 5201314, 0x6666666666666667, 0x3333333333333332 );
  TEST_VV_OP( 373,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x3333333333333332 );
  TEST_VV_OP( 374,  vredmin.vs, 5201314, 0x000000b504f334, 0x3333333333333332 );
  TEST_VV_OP( 375,  vredmin.vs, 5201314, 0x00000000000003, 0x6666666666666665 );
  TEST_VV_OP( 376,  vredmin.vs, 5201314, 0x5555555555555555, 0x6666666666666665 );
  TEST_VV_OP( 377,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x6666666666666665 );
  TEST_VV_OP( 378,  vredmin.vs, 5201314, 0x00000000000005, 0x6666666666666665 );
  TEST_VV_OP( 379,  vredmin.vs, 5201314, 0x3333333333333333, 0x6666666666666665 );
  TEST_VV_OP( 380,  vredmin.vs, 5201314, 0x6666666666666666, 0x6666666666666665 );
  TEST_VV_OP( 381,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x6666666666666665 );
  TEST_VV_OP( 382,  vredmin.vs, 5201314, 0x000000b504f333, 0x6666666666666665 );
  TEST_VV_OP( 383,  vredmin.vs, 5201314, 0x00000000000002, 0x6666666666666665 );
  TEST_VV_OP( 384,  vredmin.vs, 5201314, 0x5555555555555554, 0x6666666666666665 );
  TEST_VV_OP( 385,  vredmin.vs, 5201314, 0x3333333333333332, 0x6666666666666665 );
  TEST_VV_OP( 386,  vredmin.vs, 5201314, 0x6666666666666665, 0x6666666666666665 );
  TEST_VV_OP( 387,  vredmin.vs, 5201314, 0x00000000000000, 0x6666666666666665 );
  TEST_VV_OP( 388,  vredmin.vs, 5201314, 0x000000b504f332, 0x6666666666666665 );
  TEST_VV_OP( 389,  vredmin.vs, 5201314, 0x00000000000004, 0x6666666666666665 );
  TEST_VV_OP( 390,  vredmin.vs, 5201314, 0x5555555555555556, 0x6666666666666665 );
  TEST_VV_OP( 391,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x6666666666666665 );
  TEST_VV_OP( 392,  vredmin.vs, 5201314, 0x00000000000006, 0x6666666666666665 );
  TEST_VV_OP( 393,  vredmin.vs, 5201314, 0x3333333333333334, 0x6666666666666665 );
  TEST_VV_OP( 394,  vredmin.vs, 5201314, 0x6666666666666667, 0x6666666666666665 );
  TEST_VV_OP( 395,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x6666666666666665 );
  TEST_VV_OP( 396,  vredmin.vs, 5201314, 0x000000b504f334, 0x6666666666666665 );
  TEST_VV_OP( 397,  vredmin.vs, 5201314, 0x00000000000003, 0x00000000000000 );
  TEST_VV_OP( 398,  vredmin.vs, 5201314, 0x5555555555555555, 0x00000000000000 );
  TEST_VV_OP( 399,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000000 );
  TEST_VV_OP( 400,  vredmin.vs, 5201314, 0x00000000000005, 0x00000000000000 );
  TEST_VV_OP( 401,  vredmin.vs, 5201314, 0x3333333333333333, 0x00000000000000 );
  TEST_VV_OP( 402,  vredmin.vs, 5201314, 0x6666666666666666, 0x00000000000000 );
  TEST_VV_OP( 403,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000000 );
  TEST_VV_OP( 404,  vredmin.vs, 5201314, 0x000000b504f333, 0x00000000000000 );
  TEST_VV_OP( 405,  vredmin.vs, 5201314, 0x00000000000002, 0x00000000000000 );
  TEST_VV_OP( 406,  vredmin.vs, 5201314, 0x5555555555555554, 0x00000000000000 );
  TEST_VV_OP( 407,  vredmin.vs, 5201314, 0x3333333333333332, 0x00000000000000 );
  TEST_VV_OP( 408,  vredmin.vs, 5201314, 0x6666666666666665, 0x00000000000000 );
  TEST_VV_OP( 409,  vredmin.vs, 5201314, 0x00000000000000, 0x00000000000000 );
  TEST_VV_OP( 410,  vredmin.vs, 5201314, 0x000000b504f332, 0x00000000000000 );
  TEST_VV_OP( 411,  vredmin.vs, 5201314, 0x00000000000004, 0x00000000000000 );
  TEST_VV_OP( 412,  vredmin.vs, 5201314, 0x5555555555555556, 0x00000000000000 );
  TEST_VV_OP( 413,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000000 );
  TEST_VV_OP( 414,  vredmin.vs, 5201314, 0x00000000000006, 0x00000000000000 );
  TEST_VV_OP( 415,  vredmin.vs, 5201314, 0x3333333333333334, 0x00000000000000 );
  TEST_VV_OP( 416,  vredmin.vs, 5201314, 0x6666666666666667, 0x00000000000000 );
  TEST_VV_OP( 417,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000000 );
  TEST_VV_OP( 418,  vredmin.vs, 5201314, 0x000000b504f334, 0x00000000000000 );
  TEST_VV_OP( 419,  vredmin.vs, 5201314, 0x00000000000003, 0x000000b504f332 );
  TEST_VV_OP( 420,  vredmin.vs, 5201314, 0x5555555555555555, 0x000000b504f332 );
  TEST_VV_OP( 421,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x000000b504f332 );
  TEST_VV_OP( 422,  vredmin.vs, 5201314, 0x00000000000005, 0x000000b504f332 );
  TEST_VV_OP( 423,  vredmin.vs, 5201314, 0x3333333333333333, 0x000000b504f332 );
  TEST_VV_OP( 424,  vredmin.vs, 5201314, 0x6666666666666666, 0x000000b504f332 );
  TEST_VV_OP( 425,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x000000b504f332 );
  TEST_VV_OP( 426,  vredmin.vs, 5201314, 0x000000b504f333, 0x000000b504f332 );
  TEST_VV_OP( 427,  vredmin.vs, 5201314, 0x00000000000002, 0x000000b504f332 );
  TEST_VV_OP( 428,  vredmin.vs, 5201314, 0x5555555555555554, 0x000000b504f332 );
  TEST_VV_OP( 429,  vredmin.vs, 5201314, 0x3333333333333332, 0x000000b504f332 );
  TEST_VV_OP( 430,  vredmin.vs, 5201314, 0x6666666666666665, 0x000000b504f332 );
  TEST_VV_OP( 431,  vredmin.vs, 5201314, 0x00000000000000, 0x000000b504f332 );
  TEST_VV_OP( 432,  vredmin.vs, 5201314, 0x000000b504f332, 0x000000b504f332 );
  TEST_VV_OP( 433,  vredmin.vs, 5201314, 0x00000000000004, 0x000000b504f332 );
  TEST_VV_OP( 434,  vredmin.vs, 5201314, 0x5555555555555556, 0x000000b504f332 );
  TEST_VV_OP( 435,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x000000b504f332 );
  TEST_VV_OP( 436,  vredmin.vs, 5201314, 0x00000000000006, 0x000000b504f332 );
  TEST_VV_OP( 437,  vredmin.vs, 5201314, 0x3333333333333334, 0x000000b504f332 );
  TEST_VV_OP( 438,  vredmin.vs, 5201314, 0x6666666666666667, 0x000000b504f332 );
  TEST_VV_OP( 439,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x000000b504f332 );
  TEST_VV_OP( 440,  vredmin.vs, 5201314, 0x000000b504f334, 0x000000b504f332 );
  TEST_VV_OP( 441,  vredmin.vs, 5201314, 0x00000000000003, 0x00000000000004 );
  TEST_VV_OP( 442,  vredmin.vs, 5201314, 0x5555555555555555, 0x00000000000004 );
  TEST_VV_OP( 443,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000004 );
  TEST_VV_OP( 444,  vredmin.vs, 5201314, 0x00000000000005, 0x00000000000004 );
  TEST_VV_OP( 445,  vredmin.vs, 5201314, 0x3333333333333333, 0x00000000000004 );
  TEST_VV_OP( 446,  vredmin.vs, 5201314, 0x6666666666666666, 0x00000000000004 );
  TEST_VV_OP( 447,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000004 );
  TEST_VV_OP( 448,  vredmin.vs, 5201314, 0x000000b504f333, 0x00000000000004 );
  TEST_VV_OP( 449,  vredmin.vs, 5201314, 0x00000000000002, 0x00000000000004 );
  TEST_VV_OP( 450,  vredmin.vs, 5201314, 0x5555555555555554, 0x00000000000004 );
  TEST_VV_OP( 451,  vredmin.vs, 5201314, 0x3333333333333332, 0x00000000000004 );
  TEST_VV_OP( 452,  vredmin.vs, 5201314, 0x6666666666666665, 0x00000000000004 );
  TEST_VV_OP( 453,  vredmin.vs, 5201314, 0x00000000000000, 0x00000000000004 );
  TEST_VV_OP( 454,  vredmin.vs, 5201314, 0x000000b504f332, 0x00000000000004 );
  TEST_VV_OP( 455,  vredmin.vs, 5201314, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP( 456,  vredmin.vs, 5201314, 0x5555555555555556, 0x00000000000004 );
  TEST_VV_OP( 457,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000004 );
  TEST_VV_OP( 458,  vredmin.vs, 5201314, 0x00000000000006, 0x00000000000004 );
  TEST_VV_OP( 459,  vredmin.vs, 5201314, 0x3333333333333334, 0x00000000000004 );
  TEST_VV_OP( 460,  vredmin.vs, 5201314, 0x6666666666666667, 0x00000000000004 );
  TEST_VV_OP( 461,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000004 );
  TEST_VV_OP( 462,  vredmin.vs, 5201314, 0x000000b504f334, 0x00000000000004 );
  TEST_VV_OP( 463,  vredmin.vs, 5201314, 0x00000000000003, 0x5555555555555556 );
  TEST_VV_OP( 464,  vredmin.vs, 5201314, 0x5555555555555555, 0x5555555555555556 );
  TEST_VV_OP( 465,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x5555555555555556 );
  TEST_VV_OP( 466,  vredmin.vs, 5201314, 0x00000000000005, 0x5555555555555556 );
  TEST_VV_OP( 467,  vredmin.vs, 5201314, 0x3333333333333333, 0x5555555555555556 );
  TEST_VV_OP( 468,  vredmin.vs, 5201314, 0x6666666666666666, 0x5555555555555556 );
  TEST_VV_OP( 469,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x5555555555555556 );
  TEST_VV_OP( 470,  vredmin.vs, 5201314, 0x000000b504f333, 0x5555555555555556 );
  TEST_VV_OP( 471,  vredmin.vs, 5201314, 0x00000000000002, 0x5555555555555556 );
  TEST_VV_OP( 472,  vredmin.vs, 5201314, 0x5555555555555554, 0x5555555555555556 );
  TEST_VV_OP( 473,  vredmin.vs, 5201314, 0x3333333333333332, 0x5555555555555556 );
  TEST_VV_OP( 474,  vredmin.vs, 5201314, 0x6666666666666665, 0x5555555555555556 );
  TEST_VV_OP( 475,  vredmin.vs, 5201314, 0x00000000000000, 0x5555555555555556 );
  TEST_VV_OP( 476,  vredmin.vs, 5201314, 0x000000b504f332, 0x5555555555555556 );
  TEST_VV_OP( 477,  vredmin.vs, 5201314, 0x00000000000004, 0x5555555555555556 );
  TEST_VV_OP( 478,  vredmin.vs, 5201314, 0x5555555555555556, 0x5555555555555556 );
  TEST_VV_OP( 479,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x5555555555555556 );
  TEST_VV_OP( 480,  vredmin.vs, 5201314, 0x00000000000006, 0x5555555555555556 );
  TEST_VV_OP( 481,  vredmin.vs, 5201314, 0x3333333333333334, 0x5555555555555556 );
  TEST_VV_OP( 482,  vredmin.vs, 5201314, 0x6666666666666667, 0x5555555555555556 );
  TEST_VV_OP( 483,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x5555555555555556 );
  TEST_VV_OP( 484,  vredmin.vs, 5201314, 0x000000b504f334, 0x5555555555555556 );
  TEST_VV_OP( 485,  vredmin.vs, 5201314, 0x00000000000003, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 486,  vredmin.vs, 5201314, 0x5555555555555555, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 487,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 488,  vredmin.vs, 5201314, 0x00000000000005, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 489,  vredmin.vs, 5201314, 0x3333333333333333, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 490,  vredmin.vs, 5201314, 0x6666666666666666, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 491,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 492,  vredmin.vs, 5201314, 0x000000b504f333, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 493,  vredmin.vs, 5201314, 0x00000000000002, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 494,  vredmin.vs, 5201314, 0x5555555555555554, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 495,  vredmin.vs, 5201314, 0x3333333333333332, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 496,  vredmin.vs, 5201314, 0x6666666666666665, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 497,  vredmin.vs, 5201314, 0x00000000000000, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 498,  vredmin.vs, 5201314, 0x000000b504f332, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 499,  vredmin.vs, 5201314, 0x00000000000004, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 500,  vredmin.vs, 5201314, 0x5555555555555556, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 501,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 502,  vredmin.vs, 5201314, 0x00000000000006, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 503,  vredmin.vs, 5201314, 0x3333333333333334, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 504,  vredmin.vs, 5201314, 0x6666666666666667, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 505,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 506,  vredmin.vs, 5201314, 0x000000b504f334, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 507,  vredmin.vs, 5201314, 0x00000000000003, 0x00000000000006 );
  TEST_VV_OP( 508,  vredmin.vs, 5201314, 0x5555555555555555, 0x00000000000006 );
  TEST_VV_OP( 509,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000006 );
  TEST_VV_OP( 510,  vredmin.vs, 5201314, 0x00000000000005, 0x00000000000006 );
  TEST_VV_OP( 511,  vredmin.vs, 5201314, 0x3333333333333333, 0x00000000000006 );
  TEST_VV_OP( 512,  vredmin.vs, 5201314, 0x6666666666666666, 0x00000000000006 );
  TEST_VV_OP( 513,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000006 );
  TEST_VV_OP( 514,  vredmin.vs, 5201314, 0x000000b504f333, 0x00000000000006 );
  TEST_VV_OP( 515,  vredmin.vs, 5201314, 0x00000000000002, 0x00000000000006 );
  TEST_VV_OP( 516,  vredmin.vs, 5201314, 0x5555555555555554, 0x00000000000006 );
  TEST_VV_OP( 517,  vredmin.vs, 5201314, 0x3333333333333332, 0x00000000000006 );
  TEST_VV_OP( 518,  vredmin.vs, 5201314, 0x6666666666666665, 0x00000000000006 );
  TEST_VV_OP( 519,  vredmin.vs, 5201314, 0x00000000000000, 0x00000000000006 );
  TEST_VV_OP( 520,  vredmin.vs, 5201314, 0x000000b504f332, 0x00000000000006 );
  TEST_VV_OP( 521,  vredmin.vs, 5201314, 0x00000000000004, 0x00000000000006 );
  TEST_VV_OP( 522,  vredmin.vs, 5201314, 0x5555555555555556, 0x00000000000006 );
  TEST_VV_OP( 523,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000006 );
  TEST_VV_OP( 524,  vredmin.vs, 5201314, 0x00000000000006, 0x00000000000006 );
  TEST_VV_OP( 525,  vredmin.vs, 5201314, 0x3333333333333334, 0x00000000000006 );
  TEST_VV_OP( 526,  vredmin.vs, 5201314, 0x6666666666666667, 0x00000000000006 );
  TEST_VV_OP( 527,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000006 );
  TEST_VV_OP( 528,  vredmin.vs, 5201314, 0x000000b504f334, 0x00000000000006 );
  TEST_VV_OP( 529,  vredmin.vs, 5201314, 0x00000000000003, 0x3333333333333334 );
  TEST_VV_OP( 530,  vredmin.vs, 5201314, 0x5555555555555555, 0x3333333333333334 );
  TEST_VV_OP( 531,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x3333333333333334 );
  TEST_VV_OP( 532,  vredmin.vs, 5201314, 0x00000000000005, 0x3333333333333334 );
  TEST_VV_OP( 533,  vredmin.vs, 5201314, 0x3333333333333333, 0x3333333333333334 );
  TEST_VV_OP( 534,  vredmin.vs, 5201314, 0x6666666666666666, 0x3333333333333334 );
  TEST_VV_OP( 535,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x3333333333333334 );
  TEST_VV_OP( 536,  vredmin.vs, 5201314, 0x000000b504f333, 0x3333333333333334 );
  TEST_VV_OP( 537,  vredmin.vs, 5201314, 0x00000000000002, 0x3333333333333334 );
  TEST_VV_OP( 538,  vredmin.vs, 5201314, 0x5555555555555554, 0x3333333333333334 );
  TEST_VV_OP( 539,  vredmin.vs, 5201314, 0x3333333333333332, 0x3333333333333334 );
  TEST_VV_OP( 540,  vredmin.vs, 5201314, 0x6666666666666665, 0x3333333333333334 );
  TEST_VV_OP( 541,  vredmin.vs, 5201314, 0x00000000000000, 0x3333333333333334 );
  TEST_VV_OP( 542,  vredmin.vs, 5201314, 0x000000b504f332, 0x3333333333333334 );
  TEST_VV_OP( 543,  vredmin.vs, 5201314, 0x00000000000004, 0x3333333333333334 );
  TEST_VV_OP( 544,  vredmin.vs, 5201314, 0x5555555555555556, 0x3333333333333334 );
  TEST_VV_OP( 545,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x3333333333333334 );
  TEST_VV_OP( 546,  vredmin.vs, 5201314, 0x00000000000006, 0x3333333333333334 );
  TEST_VV_OP( 547,  vredmin.vs, 5201314, 0x3333333333333334, 0x3333333333333334 );
  TEST_VV_OP( 548,  vredmin.vs, 5201314, 0x6666666666666667, 0x3333333333333334 );
  TEST_VV_OP( 549,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x3333333333333334 );
  TEST_VV_OP( 550,  vredmin.vs, 5201314, 0x000000b504f334, 0x3333333333333334 );
  TEST_VV_OP( 551,  vredmin.vs, 5201314, 0x00000000000003, 0x6666666666666667 );
  TEST_VV_OP( 552,  vredmin.vs, 5201314, 0x5555555555555555, 0x6666666666666667 );
  TEST_VV_OP( 553,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x6666666666666667 );
  TEST_VV_OP( 554,  vredmin.vs, 5201314, 0x00000000000005, 0x6666666666666667 );
  TEST_VV_OP( 555,  vredmin.vs, 5201314, 0x3333333333333333, 0x6666666666666667 );
  TEST_VV_OP( 556,  vredmin.vs, 5201314, 0x6666666666666666, 0x6666666666666667 );
  TEST_VV_OP( 557,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x6666666666666667 );
  TEST_VV_OP( 558,  vredmin.vs, 5201314, 0x000000b504f333, 0x6666666666666667 );
  TEST_VV_OP( 559,  vredmin.vs, 5201314, 0x00000000000002, 0x6666666666666667 );
  TEST_VV_OP( 560,  vredmin.vs, 5201314, 0x5555555555555554, 0x6666666666666667 );
  TEST_VV_OP( 561,  vredmin.vs, 5201314, 0x3333333333333332, 0x6666666666666667 );
  TEST_VV_OP( 562,  vredmin.vs, 5201314, 0x6666666666666665, 0x6666666666666667 );
  TEST_VV_OP( 563,  vredmin.vs, 5201314, 0x00000000000000, 0x6666666666666667 );
  TEST_VV_OP( 564,  vredmin.vs, 5201314, 0x000000b504f332, 0x6666666666666667 );
  TEST_VV_OP( 565,  vredmin.vs, 5201314, 0x00000000000004, 0x6666666666666667 );
  TEST_VV_OP( 566,  vredmin.vs, 5201314, 0x5555555555555556, 0x6666666666666667 );
  TEST_VV_OP( 567,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x6666666666666667 );
  TEST_VV_OP( 568,  vredmin.vs, 5201314, 0x00000000000006, 0x6666666666666667 );
  TEST_VV_OP( 569,  vredmin.vs, 5201314, 0x3333333333333334, 0x6666666666666667 );
  TEST_VV_OP( 570,  vredmin.vs, 5201314, 0x6666666666666667, 0x6666666666666667 );
  TEST_VV_OP( 571,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x6666666666666667 );
  TEST_VV_OP( 572,  vredmin.vs, 5201314, 0x000000b504f334, 0x6666666666666667 );
  TEST_VV_OP( 573,  vredmin.vs, 5201314, 0x00000000000003, 0xffffffff4afb0cce );
  TEST_VV_OP( 574,  vredmin.vs, 5201314, 0x5555555555555555, 0xffffffff4afb0cce );
  TEST_VV_OP( 575,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xffffffff4afb0cce );
  TEST_VV_OP( 576,  vredmin.vs, 5201314, 0x00000000000005, 0xffffffff4afb0cce );
  TEST_VV_OP( 577,  vredmin.vs, 5201314, 0x3333333333333333, 0xffffffff4afb0cce );
  TEST_VV_OP( 578,  vredmin.vs, 5201314, 0x6666666666666666, 0xffffffff4afb0cce );
  TEST_VV_OP( 579,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0xffffffff4afb0cce );
  TEST_VV_OP( 580,  vredmin.vs, 5201314, 0x000000b504f333, 0xffffffff4afb0cce );
  TEST_VV_OP( 581,  vredmin.vs, 5201314, 0x00000000000002, 0xffffffff4afb0cce );
  TEST_VV_OP( 582,  vredmin.vs, 5201314, 0x5555555555555554, 0xffffffff4afb0cce );
  TEST_VV_OP( 583,  vredmin.vs, 5201314, 0x3333333333333332, 0xffffffff4afb0cce );
  TEST_VV_OP( 584,  vredmin.vs, 5201314, 0x6666666666666665, 0xffffffff4afb0cce );
  TEST_VV_OP( 585,  vredmin.vs, 5201314, 0x00000000000000, 0xffffffff4afb0cce );
  TEST_VV_OP( 586,  vredmin.vs, 5201314, 0x000000b504f332, 0xffffffff4afb0cce );
  TEST_VV_OP( 587,  vredmin.vs, 5201314, 0x00000000000004, 0xffffffff4afb0cce );
  TEST_VV_OP( 588,  vredmin.vs, 5201314, 0x5555555555555556, 0xffffffff4afb0cce );
  TEST_VV_OP( 589,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xffffffff4afb0cce );
  TEST_VV_OP( 590,  vredmin.vs, 5201314, 0x00000000000006, 0xffffffff4afb0cce );
  TEST_VV_OP( 591,  vredmin.vs, 5201314, 0x3333333333333334, 0xffffffff4afb0cce );
  TEST_VV_OP( 592,  vredmin.vs, 5201314, 0x6666666666666667, 0xffffffff4afb0cce );
  TEST_VV_OP( 593,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0xffffffff4afb0cce );
  TEST_VV_OP( 594,  vredmin.vs, 5201314, 0x000000b504f334, 0xffffffff4afb0cce );
  TEST_VV_OP( 595,  vredmin.vs, 5201314, 0x00000000000003, 0x000000b504f334 );
  TEST_VV_OP( 596,  vredmin.vs, 5201314, 0x5555555555555555, 0x000000b504f334 );
  TEST_VV_OP( 597,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x000000b504f334 );
  TEST_VV_OP( 598,  vredmin.vs, 5201314, 0x00000000000005, 0x000000b504f334 );
  TEST_VV_OP( 599,  vredmin.vs, 5201314, 0x3333333333333333, 0x000000b504f334 );
  TEST_VV_OP( 600,  vredmin.vs, 5201314, 0x6666666666666666, 0x000000b504f334 );
  TEST_VV_OP( 601,  vredmin.vs, 5201314, 0xffffffff4afb0ccd, 0x000000b504f334 );
  TEST_VV_OP( 602,  vredmin.vs, 5201314, 0x000000b504f333, 0x000000b504f334 );
  TEST_VV_OP( 603,  vredmin.vs, 5201314, 0x00000000000002, 0x000000b504f334 );
  TEST_VV_OP( 604,  vredmin.vs, 5201314, 0x5555555555555554, 0x000000b504f334 );
  TEST_VV_OP( 605,  vredmin.vs, 5201314, 0x3333333333333332, 0x000000b504f334 );
  TEST_VV_OP( 606,  vredmin.vs, 5201314, 0x6666666666666665, 0x000000b504f334 );
  TEST_VV_OP( 607,  vredmin.vs, 5201314, 0x00000000000000, 0x000000b504f334 );
  TEST_VV_OP( 608,  vredmin.vs, 5201314, 0x000000b504f332, 0x000000b504f334 );
  TEST_VV_OP( 609,  vredmin.vs, 5201314, 0x00000000000004, 0x000000b504f334 );
  TEST_VV_OP( 610,  vredmin.vs, 5201314, 0x5555555555555556, 0x000000b504f334 );
  TEST_VV_OP( 611,  vredmin.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x000000b504f334 );
  TEST_VV_OP( 612,  vredmin.vs, 5201314, 0x00000000000006, 0x000000b504f334 );
  TEST_VV_OP( 613,  vredmin.vs, 5201314, 0x3333333333333334, 0x000000b504f334 );
  TEST_VV_OP( 614,  vredmin.vs, 5201314, 0x6666666666666667, 0x000000b504f334 );
  TEST_VV_OP( 615,  vredmin.vs, 5201314, 0xffffffff4afb0cce, 0x000000b504f334 );
  TEST_VV_OP( 616,  vredmin.vs, 5201314, 0x000000b504f334, 0x000000b504f334 );
  TEST_VV_OP_rd1( 617,  vredmin.vs, 5201314, 0xfffffffffffffffe, 0xfffffffffffffffe);
  TEST_VV_OP_12( 618,  vredmin.vs, 5201314, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_VV_OP_rd2( 619,  vredmin.vs, 5201314, 0xfffffffffffffffd, 0xfffffffffffffffd);
  TEST_VV_OP_13( 620,  vredmin.vs, 5201314, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_VV_OP_rd3( 621,  vredmin.vs, 5201314, 0xfffffffffffffffb, 0xfffffffffffffffb);
  TEST_VV_OP_14( 622,  vredmin.vs, 5201314, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_VV_OP_rd4( 623,  vredmin.vs, 5201314, 0xfffffffffffffff7, 0xfffffffffffffff7);
  TEST_VV_OP_15( 624,  vredmin.vs, 5201314, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_VV_OP_rd5( 625,  vredmin.vs, 5201314, 0xffffffffffffffef, 0xffffffffffffffef);
  TEST_VV_OP_16( 626,  vredmin.vs, 5201314, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_VV_OP_rd6( 627,  vredmin.vs, 5201314, 0xffffffffffffffdf, 0xffffffffffffffdf);
  TEST_VV_OP_17( 628,  vredmin.vs, 5201314, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_VV_OP_rd7( 629,  vredmin.vs, 5201314, 0xffffffffffffffbf, 0xffffffffffffffbf);
  TEST_VV_OP_rd8( 630,  vredmin.vs, 5201314, 0xffffffffffffff7f, 0xffffffffffffff7f);
  TEST_VV_OP_19( 631,  vredmin.vs, 5201314, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_VV_OP_rd9( 632,  vredmin.vs, 5201314, 0xfffffffffffffeff, 0xfffffffffffffeff);
  TEST_VV_OP_110( 633,  vredmin.vs, 5201314, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_VV_OP_rd10( 634,  vredmin.vs, 5201314, 0xfffffffffffffdff, 0xfffffffffffffdff);
  TEST_VV_OP_111( 635,  vredmin.vs, 5201314, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_VV_OP_rd11( 636,  vredmin.vs, 5201314, 0xfffffffffffffbff, 0xfffffffffffffbff);
  TEST_VV_OP_rd13( 637,  vredmin.vs, 5201314, 0xffffffffffffefff, 0xffffffffffffefff);
  TEST_VV_OP_114( 638,  vredmin.vs, 5201314, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_VV_OP_rd14( 639,  vredmin.vs, 5201314, 0xffffffffffffdfff, 0xffffffffffffdfff);
  TEST_VV_OP_115( 640,  vredmin.vs, 5201314, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_VV_OP_rd15( 641,  vredmin.vs, 5201314, 0xffffffffffffbfff, 0xffffffffffffbfff);
  TEST_VV_OP_rd16( 642,  vredmin.vs, 5201314, 0xffffffffffff7fff, 0xffffffffffff7fff);
  TEST_VV_OP_117( 643,  vredmin.vs, 5201314, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_VV_OP_rd17( 644,  vredmin.vs, 5201314, 0xfffffffffffeffff, 0xfffffffffffeffff);
  TEST_VV_OP_118( 645,  vredmin.vs, 5201314, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_VV_OP_rd18( 646,  vredmin.vs, 5201314, 0xfffffffffffdffff, 0xfffffffffffdffff);
  TEST_VV_OP_119( 647,  vredmin.vs, 5201314, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_VV_OP_rd19( 648,  vredmin.vs, 5201314, 0xfffffffffffbffff, 0xfffffffffffbffff);
  TEST_VV_OP_rd21( 649,  vredmin.vs, 5201314, 0xffffffffffefffff, 0xffffffffffefffff);
  TEST_VV_OP_122( 650,  vredmin.vs, 5201314, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_VV_OP_rd22( 651,  vredmin.vs, 5201314, 0xffffffffffdfffff, 0xffffffffffdfffff);
  TEST_VV_OP_123( 652,  vredmin.vs, 5201314, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_VV_OP_rd23( 653,  vredmin.vs, 5201314, 0xffffffffffbfffff, 0xffffffffffbfffff);
  TEST_VV_OP_rd25( 654,  vredmin.vs, 5201314, 0xfffffffffeffffff, 0xfffffffffeffffff);
  TEST_VV_OP_126( 655,  vredmin.vs, 5201314, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_VV_OP_rd26( 656,  vredmin.vs, 5201314, 0xfffffffffdffffff, 0xfffffffffdffffff);
  TEST_VV_OP_127( 657,  vredmin.vs, 5201314, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_VV_OP_rd27( 658,  vredmin.vs, 5201314, 0xfffffffffbffffff, 0xfffffffffbffffff);
  TEST_VV_OP_128( 659,  vredmin.vs, 5201314, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_VV_OP_rd28( 660,  vredmin.vs, 5201314, 0xfffffffff7ffffff, 0xfffffffff7ffffff);
  TEST_VV_OP_129( 661,  vredmin.vs, 5201314, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_VV_OP_rd29( 662,  vredmin.vs, 5201314, 0xffffffffefffffff, 0xffffffffefffffff);
  TEST_VV_OP_130( 663,  vredmin.vs, 5201314, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_VV_OP_rd30( 664,  vredmin.vs, 5201314, 0xffffffffdfffffff, 0xffffffffdfffffff);
  TEST_VV_OP_131( 665,  vredmin.vs, 5201314, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_VV_OP_rd31( 666,  vredmin.vs, 5201314, 0xffffffffbfffffff, 0xffffffffbfffffff);
  TEST_VV_OP_12( 667,  vredmin.vs, 5201314, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_VV_OP_rd1( 668,  vredmin.vs, 5201314, 0xffffffff7fffffff, 0xffffffff7fffffff);
  TEST_VV_OP_13( 669,  vredmin.vs, 5201314, 0xffffffff7fffffff, 0xffffffff7fffffff );
  TEST_VV_OP_rd2( 670,  vredmin.vs, 5201314, 0xfffffffeffffffff, 0xfffffffeffffffff);
  TEST_VV_OP_14( 671,  vredmin.vs, 5201314, 0xfffffffeffffffff, 0xfffffffeffffffff );
  TEST_VV_OP_rd3( 672,  vredmin.vs, 5201314, 0xfffffffdffffffff, 0xfffffffdffffffff);
  TEST_VV_OP_15( 673,  vredmin.vs, 5201314, 0xfffffffdffffffff, 0xfffffffdffffffff );
  TEST_VV_OP_rd4( 674,  vredmin.vs, 5201314, 0xfffffffbffffffff, 0xfffffffbffffffff);
  TEST_VV_OP_16( 675,  vredmin.vs, 5201314, 0xfffffffbffffffff, 0xfffffffbffffffff );
  TEST_VV_OP_rd5( 676,  vredmin.vs, 5201314, 0xfffffff7ffffffff, 0xfffffff7ffffffff);
  TEST_VV_OP_17( 677,  vredmin.vs, 5201314, 0xfffffff7ffffffff, 0xfffffff7ffffffff );
  TEST_VV_OP_rd6( 678,  vredmin.vs, 5201314, 0xffffffefffffffff, 0xffffffefffffffff);
  TEST_VV_OP_rd7( 679,  vredmin.vs, 5201314, 0xffffffdfffffffff, 0xffffffdfffffffff);
  TEST_VV_OP_19( 680,  vredmin.vs, 5201314, 0xffffffdfffffffff, 0xffffffdfffffffff );
  TEST_VV_OP_rd8( 681,  vredmin.vs, 5201314, 0xffffffbfffffffff, 0xffffffbfffffffff);
  TEST_VV_OP_110( 682,  vredmin.vs, 5201314, 0xffffffbfffffffff, 0xffffffbfffffffff );
  TEST_VV_OP_rd9( 683,  vredmin.vs, 5201314, 0xffffff7fffffffff, 0xffffff7fffffffff);
  TEST_VV_OP_111( 684,  vredmin.vs, 5201314, 0xffffff7fffffffff, 0xffffff7fffffffff );
  TEST_VV_OP_rd10( 685,  vredmin.vs, 5201314, 0xfffffeffffffffff, 0xfffffeffffffffff);
  TEST_VV_OP_rd11( 686,  vredmin.vs, 5201314, 0xfffffdffffffffff, 0xfffffdffffffffff);
  TEST_VV_OP_113( 687,  vredmin.vs, 5201314, 0xfffffdffffffffff, 0xfffffdffffffffff );
  TEST_VV_OP_rd13( 688,  vredmin.vs, 5201314, 0xfffff7ffffffffff, 0xfffff7ffffffffff);
  TEST_VV_OP_115( 689,  vredmin.vs, 5201314, 0xfffff7ffffffffff, 0xfffff7ffffffffff );
  TEST_VV_OP_rd14( 690,  vredmin.vs, 5201314, 0xffffefffffffffff, 0xffffefffffffffff);
  TEST_VV_OP_rd15( 691,  vredmin.vs, 5201314, 0xffffdfffffffffff, 0xffffdfffffffffff);
  TEST_VV_OP_117( 692,  vredmin.vs, 5201314, 0xffffdfffffffffff, 0xffffdfffffffffff );
  TEST_VV_OP_rd16( 693,  vredmin.vs, 5201314, 0xffffbfffffffffff, 0xffffbfffffffffff);
  TEST_VV_OP_118( 694,  vredmin.vs, 5201314, 0xffffbfffffffffff, 0xffffbfffffffffff );
  TEST_VV_OP_rd17( 695,  vredmin.vs, 5201314, 0xffff7fffffffffff, 0xffff7fffffffffff);
  TEST_VV_OP_119( 696,  vredmin.vs, 5201314, 0xffff7fffffffffff, 0xffff7fffffffffff );
  TEST_VV_OP_rd18( 697,  vredmin.vs, 5201314, 0xfffeffffffffffff, 0xfffeffffffffffff);
  TEST_VV_OP_rd19( 698,  vredmin.vs, 5201314, 0xfffdffffffffffff, 0xfffdffffffffffff);
  TEST_VV_OP_121( 699,  vredmin.vs, 5201314, 0xfffdffffffffffff, 0xfffdffffffffffff );
  TEST_VV_OP_rd21( 700,  vredmin.vs, 5201314, 0xfff7ffffffffffff, 0xfff7ffffffffffff);
  TEST_VV_OP_123( 701,  vredmin.vs, 5201314, 0xfff7ffffffffffff, 0xfff7ffffffffffff );
  TEST_VV_OP_rd22( 702,  vredmin.vs, 5201314, 0xffefffffffffffff, 0xffefffffffffffff);
  TEST_VV_OP_rd23( 703,  vredmin.vs, 5201314, 0xffdfffffffffffff, 0xffdfffffffffffff);
  TEST_VV_OP_125( 704,  vredmin.vs, 5201314, 0xffdfffffffffffff, 0xffdfffffffffffff );
  TEST_VV_OP_rd25( 705,  vredmin.vs, 5201314, 0xff7fffffffffffff, 0xff7fffffffffffff);
  TEST_VV_OP_127( 706,  vredmin.vs, 5201314, 0xff7fffffffffffff, 0xff7fffffffffffff );
  TEST_VV_OP_rd26( 707,  vredmin.vs, 5201314, 0xfeffffffffffffff, 0xfeffffffffffffff);
  TEST_VV_OP_128( 708,  vredmin.vs, 5201314, 0xfeffffffffffffff, 0xfeffffffffffffff );
  TEST_VV_OP_rd27( 709,  vredmin.vs, 5201314, 0xfdffffffffffffff, 0xfdffffffffffffff);
  TEST_VV_OP_129( 710,  vredmin.vs, 5201314, 0xfdffffffffffffff, 0xfdffffffffffffff );
  TEST_VV_OP_rd28( 711,  vredmin.vs, 5201314, 0xfbffffffffffffff, 0xfbffffffffffffff);
  TEST_VV_OP_130( 712,  vredmin.vs, 5201314, 0xfbffffffffffffff, 0xfbffffffffffffff );
  TEST_VV_OP_rd29( 713,  vredmin.vs, 5201314, 0xf7ffffffffffffff, 0xf7ffffffffffffff);
  TEST_VV_OP_131( 714,  vredmin.vs, 5201314, 0xf7ffffffffffffff, 0xf7ffffffffffffff );
  TEST_VV_OP_rd30( 715,  vredmin.vs, 5201314, 0xefffffffffffffff, 0xefffffffffffffff);
  TEST_VV_OP_12( 716,  vredmin.vs, 5201314, 0xefffffffffffffff, 0xefffffffffffffff );
  TEST_VV_OP_rd31( 717,  vredmin.vs, 5201314, 0xdfffffffffffffff, 0xdfffffffffffffff);
  TEST_VV_OP_13( 718,  vredmin.vs, 5201314, 0xdfffffffffffffff, 0xdfffffffffffffff );
  TEST_VV_OP_rd1( 719,  vredmin.vs, 5201314, 0xbfffffffffffffff, 0xbfffffffffffffff);
  TEST_VV_OP_14( 720,  vredmin.vs, 5201314, 0xbfffffffffffffff, 0xbfffffffffffffff );
  TEST_VV_OP_rd2( 721,  vredmin.vs, 5201314, 0x7fffffffffffffff, 0x7fffffffffffffff);
  TEST_VV_OP_15( 722,  vredmin.vs, 5201314, 0x7fffffffffffffff, 0x7fffffffffffffff );
  TEST_VV_OP_rd3( 723,  vredmin.vs, 5201314, 0x00000000000001, 0x00000000000001);
  TEST_VV_OP_16( 724,  vredmin.vs, 5201314, 0x00000000000001, 0x00000000000001 );
  TEST_VV_OP_rd4( 725,  vredmin.vs, 5201314, 0x00000000000002, 0x00000000000002);
  TEST_VV_OP_17( 726,  vredmin.vs, 5201314, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP_rd5( 727,  vredmin.vs, 5201314, 0x00000000000004, 0x00000000000004);
  TEST_VV_OP_rd6( 728,  vredmin.vs, 5201314, 0x00000000000008, 0x00000000000008);
  TEST_VV_OP_19( 729,  vredmin.vs, 5201314, 0x00000000000008, 0x00000000000008 );
  TEST_VV_OP_rd7( 730,  vredmin.vs, 5201314, 0x00000000000010, 0x00000000000010);
  TEST_VV_OP_110( 731,  vredmin.vs, 5201314, 0x00000000000010, 0x00000000000010 );
  TEST_VV_OP_rd8( 732,  vredmin.vs, 5201314, 0x00000000000020, 0x00000000000020);
  TEST_VV_OP_111( 733,  vredmin.vs, 5201314, 0x00000000000020, 0x00000000000020 );
  TEST_VV_OP_rd9( 734,  vredmin.vs, 5201314, 0x00000000000040, 0x00000000000040);
  TEST_VV_OP_rd10( 735,  vredmin.vs, 5201314, 0x00000000000080, 0x00000000000080);
  TEST_VV_OP_113( 736,  vredmin.vs, 5201314, 0x00000000000080, 0x00000000000080 );
  TEST_VV_OP_rd11( 737,  vredmin.vs, 5201314, 0x00000000000100, 0x00000000000100);
  TEST_VV_OP_114( 738,  vredmin.vs, 5201314, 0x00000000000100, 0x00000000000100 );
  TEST_VV_OP_rd13( 739,  vredmin.vs, 5201314, 0x00000000000400, 0x00000000000400);
  TEST_VV_OP_rd14( 740,  vredmin.vs, 5201314, 0x00000000000800, 0x00000000000800);
  TEST_VV_OP_117( 741,  vredmin.vs, 5201314, 0x00000000000800, 0x00000000000800 );
  TEST_VV_OP_rd15( 742,  vredmin.vs, 5201314, 0x00000000001000, 0x00000000001000);
  TEST_VV_OP_118( 743,  vredmin.vs, 5201314, 0x00000000001000, 0x00000000001000 );
  TEST_VV_OP_rd16( 744,  vredmin.vs, 5201314, 0x00000000002000, 0x00000000002000);
  TEST_VV_OP_119( 745,  vredmin.vs, 5201314, 0x00000000002000, 0x00000000002000 );
  TEST_VV_OP_rd17( 746,  vredmin.vs, 5201314, 0x00000000004000, 0x00000000004000);
  TEST_VV_OP_rd18( 747,  vredmin.vs, 5201314, 0x00000000008000, 0x00000000008000);
  TEST_VV_OP_121( 748,  vredmin.vs, 5201314, 0x00000000008000, 0x00000000008000 );
  TEST_VV_OP_rd19( 749,  vredmin.vs, 5201314, 0x00000000010000, 0x00000000010000);
  TEST_VV_OP_122( 750,  vredmin.vs, 5201314, 0x00000000010000, 0x00000000010000 );
  TEST_VV_OP_rd21( 751,  vredmin.vs, 5201314, 0x00000000040000, 0x00000000040000);
  TEST_VV_OP_rd22( 752,  vredmin.vs, 5201314, 0x00000000080000, 0x00000000080000);
  TEST_VV_OP_125( 753,  vredmin.vs, 5201314, 0x00000000080000, 0x00000000080000 );
  TEST_VV_OP_rd23( 754,  vredmin.vs, 5201314, 0x00000000100000, 0x00000000100000);
  TEST_VV_OP_126( 755,  vredmin.vs, 5201314, 0x00000000100000, 0x00000000100000 );
  TEST_VV_OP_rd25( 756,  vredmin.vs, 5201314, 0x00000000400000, 0x00000000400000);
  TEST_VV_OP_128( 757,  vredmin.vs, 5201314, 0x00000000400000, 0x00000000400000 );
  TEST_VV_OP_rd26( 758,  vredmin.vs, 5201314, 0x00000000800000, 0x00000000800000);
  TEST_VV_OP_129( 759,  vredmin.vs, 5201314, 0x00000000800000, 0x00000000800000 );
  TEST_VV_OP_rd27( 760,  vredmin.vs, 5201314, 0x00000001000000, 0x00000001000000);
  TEST_VV_OP_130( 761,  vredmin.vs, 5201314, 0x00000001000000, 0x00000001000000 );
  TEST_VV_OP_rd28( 762,  vredmin.vs, 5201314, 0x00000002000000, 0x00000002000000);
  TEST_VV_OP_131( 763,  vredmin.vs, 5201314, 0x00000002000000, 0x00000002000000 );
  TEST_VV_OP_rd29( 764,  vredmin.vs, 5201314, 0x00000004000000, 0x00000004000000);
  TEST_VV_OP_12( 765,  vredmin.vs, 5201314, 0x00000004000000, 0x00000004000000 );
  TEST_VV_OP_rd30( 766,  vredmin.vs, 5201314, 0x00000008000000, 0x00000008000000);
  TEST_VV_OP_13( 767,  vredmin.vs, 5201314, 0x00000008000000, 0x00000008000000 );
  TEST_VV_OP_rd31( 768,  vredmin.vs, 5201314, 0x00000010000000, 0x00000010000000);
  TEST_VV_OP_14( 769,  vredmin.vs, 5201314, 0x00000010000000, 0x00000010000000 );
  TEST_VV_OP_rd1( 770,  vredmin.vs, 5201314, 0x00000020000000, 0x00000020000000);
  TEST_VV_OP_15( 771,  vredmin.vs, 5201314, 0x00000020000000, 0x00000020000000 );
  TEST_VV_OP_rd2( 772,  vredmin.vs, 5201314, 0x00000040000000, 0x00000040000000);
  TEST_VV_OP_16( 773,  vredmin.vs, 5201314, 0x00000040000000, 0x00000040000000 );
  TEST_VV_OP_rd3( 774,  vredmin.vs, 5201314, 0x00000080000000, 0x00000080000000);
  TEST_VV_OP_17( 775,  vredmin.vs, 5201314, 0x00000080000000, 0x00000080000000 );
  TEST_VV_OP_rd4( 776,  vredmin.vs, 5201314, 0x00000100000000, 0x00000100000000);
  TEST_VV_OP_rd5( 777,  vredmin.vs, 5201314, 0x00000200000000, 0x00000200000000);
  TEST_VV_OP_19( 778,  vredmin.vs, 5201314, 0x00000200000000, 0x00000200000000 );
  TEST_VV_OP_rd6( 779,  vredmin.vs, 5201314, 0x00000400000000, 0x00000400000000);
  TEST_VV_OP_110( 780,  vredmin.vs, 5201314, 0x00000400000000, 0x00000400000000 );
  TEST_VV_OP_rd7( 781,  vredmin.vs, 5201314, 0x00000800000000, 0x00000800000000);
  TEST_VV_OP_111( 782,  vredmin.vs, 5201314, 0x00000800000000, 0x00000800000000 );
  RVTEST_SIGBASE( x20,signature_x20_2)
        
    #endif
    
    RVTEST_CODE_END
    RVMODEL_HALT
    
    .data
    RVTEST_DATA_BEGIN
    
    TEST_DATA
    


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
    
    

#----------------------------------------------------------------------------- 
    # vredmax.S
    #-----------------------------------------------------------------------------
    #
    # Test vredmax instructions.
    #

    #include "model_test.h"
    #include "arch_test.h"
    #include "test_macros_vector.h"

RVTEST_ISA("RV64RV64IMAFDCVZicsr")
    
    .section .text.init
    .globl rvtest_entry_point
    rvtest_entry_point:
    
    #ifdef TEST_CASE_1
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vredmax)
    
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
  TEST_VV_OP( 2,  vredmax.vs, 5201314, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_VV_OP( 3,  vredmax.vs, 5201314, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_VV_OP( 4,  vredmax.vs, 5201314, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_VV_OP( 5,  vredmax.vs, 5201314, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_VV_OP( 6,  vredmax.vs, 5201314, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_VV_OP( 7,  vredmax.vs, 5201314, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_VV_OP( 8,  vredmax.vs, 5201314, 0xffffffffffffffbf, 0xffffffffffffffbf );
  TEST_VV_OP( 9,  vredmax.vs, 5201314, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_VV_OP( 10,  vredmax.vs, 5201314, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_VV_OP( 11,  vredmax.vs, 5201314, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_VV_OP( 12,  vredmax.vs, 5201314, 0xfffffffffffffbff, 0xfffffffffffffbff );
  TEST_VV_OP( 13,  vredmax.vs, 5201314, 0xfffffffffffff7ff, 0xfffffffffffff7ff );
  TEST_VV_OP( 14,  vredmax.vs, 5201314, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_VV_OP( 15,  vredmax.vs, 5201314, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_VV_OP( 16,  vredmax.vs, 5201314, 0xffffffffffffbfff, 0xffffffffffffbfff );
  TEST_VV_OP( 17,  vredmax.vs, 5201314, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_VV_OP( 18,  vredmax.vs, 5201314, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_VV_OP( 19,  vredmax.vs, 5201314, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_VV_OP( 20,  vredmax.vs, 5201314, 0xfffffffffffbffff, 0xfffffffffffbffff );
  TEST_VV_OP( 21,  vredmax.vs, 5201314, 0xfffffffffff7ffff, 0xfffffffffff7ffff );
  TEST_VV_OP( 22,  vredmax.vs, 5201314, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_VV_OP( 23,  vredmax.vs, 5201314, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_VV_OP( 24,  vredmax.vs, 5201314, 0xffffffffffbfffff, 0xffffffffffbfffff );
  TEST_VV_OP( 25,  vredmax.vs, 5201314, 0xffffffffff7fffff, 0xffffffffff7fffff );
  TEST_VV_OP( 26,  vredmax.vs, 5201314, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_VV_OP( 27,  vredmax.vs, 5201314, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_VV_OP( 28,  vredmax.vs, 5201314, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_VV_OP( 29,  vredmax.vs, 5201314, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_VV_OP( 30,  vredmax.vs, 5201314, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_VV_OP( 31,  vredmax.vs, 5201314, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_VV_OP( 32,  vredmax.vs, 5201314, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_VV_OP( 33,  vredmax.vs, 5201314, 0xffffffff7fffffff, 0xffffffff7fffffff );
  TEST_VV_OP( 34,  vredmax.vs, 5201314, 0xfffffffeffffffff, 0xfffffffeffffffff );
  TEST_VV_OP( 35,  vredmax.vs, 5201314, 0xfffffffdffffffff, 0xfffffffdffffffff );
  TEST_VV_OP( 36,  vredmax.vs, 5201314, 0xfffffffbffffffff, 0xfffffffbffffffff );
  TEST_VV_OP( 37,  vredmax.vs, 5201314, 0xfffffff7ffffffff, 0xfffffff7ffffffff );
  TEST_VV_OP( 38,  vredmax.vs, 5201314, 0xffffffefffffffff, 0xffffffefffffffff );
  TEST_VV_OP( 39,  vredmax.vs, 5201314, 0xffffffdfffffffff, 0xffffffdfffffffff );
  TEST_VV_OP( 40,  vredmax.vs, 5201314, 0xffffffbfffffffff, 0xffffffbfffffffff );
  TEST_VV_OP( 41,  vredmax.vs, 5201314, 0xffffff7fffffffff, 0xffffff7fffffffff );
  TEST_VV_OP( 42,  vredmax.vs, 5201314, 0xfffffeffffffffff, 0xfffffeffffffffff );
  TEST_VV_OP( 43,  vredmax.vs, 5201314, 0xfffffdffffffffff, 0xfffffdffffffffff );
  TEST_VV_OP( 44,  vredmax.vs, 5201314, 0xfffffbffffffffff, 0xfffffbffffffffff );
  TEST_VV_OP( 45,  vredmax.vs, 5201314, 0xfffff7ffffffffff, 0xfffff7ffffffffff );
  TEST_VV_OP( 46,  vredmax.vs, 5201314, 0xffffefffffffffff, 0xffffefffffffffff );
  TEST_VV_OP( 47,  vredmax.vs, 5201314, 0xffffdfffffffffff, 0xffffdfffffffffff );
  TEST_VV_OP( 48,  vredmax.vs, 5201314, 0xffffbfffffffffff, 0xffffbfffffffffff );
  TEST_VV_OP( 49,  vredmax.vs, 5201314, 0xffff7fffffffffff, 0xffff7fffffffffff );
  TEST_VV_OP( 50,  vredmax.vs, 5201314, 0xfffeffffffffffff, 0xfffeffffffffffff );
  TEST_VV_OP( 51,  vredmax.vs, 5201314, 0xfffdffffffffffff, 0xfffdffffffffffff );
  TEST_VV_OP( 52,  vredmax.vs, 5201314, 0xfffbffffffffffff, 0xfffbffffffffffff );
  TEST_VV_OP( 53,  vredmax.vs, 5201314, 0xfff7ffffffffffff, 0xfff7ffffffffffff );
  TEST_VV_OP( 54,  vredmax.vs, 5201314, 0xffefffffffffffff, 0xffefffffffffffff );
  TEST_VV_OP( 55,  vredmax.vs, 5201314, 0xffdfffffffffffff, 0xffdfffffffffffff );
  TEST_VV_OP( 56,  vredmax.vs, 5201314, 0xffbfffffffffffff, 0xffbfffffffffffff );
  TEST_VV_OP( 57,  vredmax.vs, 5201314, 0xff7fffffffffffff, 0xff7fffffffffffff );
  TEST_VV_OP( 58,  vredmax.vs, 5201314, 0xfeffffffffffffff, 0xfeffffffffffffff );
  TEST_VV_OP( 59,  vredmax.vs, 5201314, 0xfdffffffffffffff, 0xfdffffffffffffff );
  TEST_VV_OP( 60,  vredmax.vs, 5201314, 0xfbffffffffffffff, 0xfbffffffffffffff );
  TEST_VV_OP( 61,  vredmax.vs, 5201314, 0xf7ffffffffffffff, 0xf7ffffffffffffff );
  TEST_VV_OP( 62,  vredmax.vs, 5201314, 0xefffffffffffffff, 0xefffffffffffffff );
  TEST_VV_OP( 63,  vredmax.vs, 5201314, 0xdfffffffffffffff, 0xdfffffffffffffff );
  TEST_VV_OP( 64,  vredmax.vs, 5201314, 0xbfffffffffffffff, 0xbfffffffffffffff );
  TEST_VV_OP( 65,  vredmax.vs, 5201314, 0x7fffffffffffffff, 0x7fffffffffffffff );
  TEST_VV_OP( 66,  vredmax.vs, 5201314, 0x00000000000001, 0x00000000000001 );
  TEST_VV_OP( 67,  vredmax.vs, 5201314, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP( 68,  vredmax.vs, 5201314, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP( 69,  vredmax.vs, 5201314, 0x00000000000008, 0x00000000000008 );
  TEST_VV_OP( 70,  vredmax.vs, 5201314, 0x00000000000010, 0x00000000000010 );
  TEST_VV_OP( 71,  vredmax.vs, 5201314, 0x00000000000020, 0x00000000000020 );
  TEST_VV_OP( 72,  vredmax.vs, 5201314, 0x00000000000040, 0x00000000000040 );
  TEST_VV_OP( 73,  vredmax.vs, 5201314, 0x00000000000080, 0x00000000000080 );
  TEST_VV_OP( 74,  vredmax.vs, 5201314, 0x00000000000100, 0x00000000000100 );
  TEST_VV_OP( 75,  vredmax.vs, 5201314, 0x00000000000200, 0x00000000000200 );
  TEST_VV_OP( 76,  vredmax.vs, 5201314, 0x00000000000400, 0x00000000000400 );
  TEST_VV_OP( 77,  vredmax.vs, 5201314, 0x00000000000800, 0x00000000000800 );
  TEST_VV_OP( 78,  vredmax.vs, 5201314, 0x00000000001000, 0x00000000001000 );
  TEST_VV_OP( 79,  vredmax.vs, 5201314, 0x00000000002000, 0x00000000002000 );
  TEST_VV_OP( 80,  vredmax.vs, 5201314, 0x00000000004000, 0x00000000004000 );
  TEST_VV_OP( 81,  vredmax.vs, 5201314, 0x00000000008000, 0x00000000008000 );
  TEST_VV_OP( 82,  vredmax.vs, 5201314, 0x00000000010000, 0x00000000010000 );
  TEST_VV_OP( 83,  vredmax.vs, 5201314, 0x00000000020000, 0x00000000020000 );
  TEST_VV_OP( 84,  vredmax.vs, 5201314, 0x00000000040000, 0x00000000040000 );
  TEST_VV_OP( 85,  vredmax.vs, 5201314, 0x00000000080000, 0x00000000080000 );
  TEST_VV_OP( 86,  vredmax.vs, 5201314, 0x00000000100000, 0x00000000100000 );
  TEST_VV_OP( 87,  vredmax.vs, 5201314, 0x00000000200000, 0x00000000200000 );
  TEST_VV_OP( 88,  vredmax.vs, 5201314, 0x00000000400000, 0x00000000400000 );
  TEST_VV_OP( 89,  vredmax.vs, 5201314, 0x00000000800000, 0x00000000800000 );
  TEST_VV_OP( 90,  vredmax.vs, 5201314, 0x00000001000000, 0x00000001000000 );
  TEST_VV_OP( 91,  vredmax.vs, 5201314, 0x00000002000000, 0x00000002000000 );
  TEST_VV_OP( 92,  vredmax.vs, 5201314, 0x00000004000000, 0x00000004000000 );
  TEST_VV_OP( 93,  vredmax.vs, 5201314, 0x00000008000000, 0x00000008000000 );
  TEST_VV_OP( 94,  vredmax.vs, 5201314, 0x00000010000000, 0x00000010000000 );
  TEST_VV_OP( 95,  vredmax.vs, 5201314, 0x00000020000000, 0x00000020000000 );
  TEST_VV_OP( 96,  vredmax.vs, 5201314, 0x00000040000000, 0x00000040000000 );
  TEST_VV_OP( 97,  vredmax.vs, 5201314, 0x00000080000000, 0x00000080000000 );
  TEST_VV_OP( 98,  vredmax.vs, 5201314, 0x00000100000000, 0x00000100000000 );
  TEST_VV_OP( 99,  vredmax.vs, 5201314, 0x00000200000000, 0x00000200000000 );
  TEST_VV_OP( 100,  vredmax.vs, 5201314, 0x00000400000000, 0x00000400000000 );
  TEST_VV_OP( 101,  vredmax.vs, 5201314, 0x00000800000000, 0x00000800000000 );
  TEST_VV_OP( 102,  vredmax.vs, 5201314, 0x00001000000000, 0x00001000000000 );
  TEST_VV_OP( 103,  vredmax.vs, 5201314, 0x00002000000000, 0x00002000000000 );
  TEST_VV_OP( 104,  vredmax.vs, 5201314, 0x00004000000000, 0x00004000000000 );
  TEST_VV_OP( 105,  vredmax.vs, 5201314, 0x00008000000000, 0x00008000000000 );
  TEST_VV_OP( 106,  vredmax.vs, 5201314, 0x00010000000000, 0x00010000000000 );
  TEST_VV_OP( 107,  vredmax.vs, 5201314, 0x00020000000000, 0x00020000000000 );
  TEST_VV_OP( 108,  vredmax.vs, 5201314, 0x00040000000000, 0x00040000000000 );
  TEST_VV_OP( 109,  vredmax.vs, 5201314, 0x00080000000000, 0x00080000000000 );
  TEST_VV_OP( 110,  vredmax.vs, 5201314, 0x00100000000000, 0x00100000000000 );
  TEST_VV_OP( 111,  vredmax.vs, 5201314, 0x00200000000000, 0x00200000000000 );
  TEST_VV_OP( 112,  vredmax.vs, 5201314, 0x00400000000000, 0x00400000000000 );
  TEST_VV_OP( 113,  vredmax.vs, 5201314, 0x00800000000000, 0x00800000000000 );
  TEST_VV_OP( 114,  vredmax.vs, 5201314, 0x01000000000000, 0x01000000000000 );
  TEST_VV_OP( 115,  vredmax.vs, 5201314, 0x02000000000000, 0x02000000000000 );
  TEST_VV_OP( 116,  vredmax.vs, 5201314, 0x04000000000000, 0x04000000000000 );
  TEST_VV_OP( 117,  vredmax.vs, 5201314, 0x08000000000000, 0x08000000000000 );
  TEST_VV_OP( 118,  vredmax.vs, 5201314, 0x10000000000000, 0x10000000000000 );
  TEST_VV_OP( 119,  vredmax.vs, 5201314, 0x20000000000000, 0x20000000000000 );
  TEST_VV_OP( 120,  vredmax.vs, 5201314, 0x40000000000000, 0x40000000000000 );
  TEST_VV_OP( 121,  vredmax.vs, 5201314, 0x80000000000000, 0x80000000000000 );
  TEST_VV_OP( 122,  vredmax.vs, 5201314, 0x100000000000000, 0x100000000000000 );
  TEST_VV_OP( 123,  vredmax.vs, 5201314, 0x200000000000000, 0x200000000000000 );
  TEST_VV_OP( 124,  vredmax.vs, 5201314, 0x400000000000000, 0x400000000000000 );
  TEST_VV_OP( 125,  vredmax.vs, 5201314, 0x800000000000000, 0x800000000000000 );
  TEST_VV_OP( 126,  vredmax.vs, 5201314, 0x1000000000000000, 0x1000000000000000 );
  TEST_VV_OP( 127,  vredmax.vs, 5201314, 0x2000000000000000, 0x2000000000000000 );
  TEST_VV_OP( 128,  vredmax.vs, 5201314, 0x4000000000000000, 0x4000000000000000 );
  TEST_VV_OP( 129,  vredmax.vs, 5201314, 0x8000000000000000, 0x8000000000000000 );
  TEST_VV_OP( 130,  vredmax.vs, 5201314, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP( 131,  vredmax.vs, 5201314, 0x5555555555555555, 0x00000000000003 );
  TEST_VV_OP( 132,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP( 133,  vredmax.vs, 5201314, 0x00000000000005, 0x00000000000003 );
  TEST_VV_OP( 134,  vredmax.vs, 5201314, 0x3333333333333333, 0x00000000000003 );
  TEST_VV_OP( 135,  vredmax.vs, 5201314, 0x6666666666666666, 0x00000000000003 );
  TEST_VV_OP( 136,  vredmax.vs, 5201314, 0x5555555555555555, 0x00000000000003 );
  TEST_VV_OP( 137,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000003 );
  TEST_VV_OP( 138,  vredmax.vs, 5201314, 0x000000b504f333, 0x00000000000003 );
  TEST_VV_OP( 139,  vredmax.vs, 5201314, 0x00000000000002, 0x00000000000003 );
  TEST_VV_OP( 140,  vredmax.vs, 5201314, 0x5555555555555554, 0x00000000000003 );
  TEST_VV_OP( 141,  vredmax.vs, 5201314, 0x3333333333333332, 0x00000000000003 );
  TEST_VV_OP( 142,  vredmax.vs, 5201314, 0x6666666666666665, 0x5555555555555555 );
  TEST_VV_OP( 143,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP( 144,  vredmax.vs, 5201314, 0x00000000000000, 0x00000000000003 );
  TEST_VV_OP( 145,  vredmax.vs, 5201314, 0x000000b504f332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 146,  vredmax.vs, 5201314, 0x00000000000004, 0x00000000000003 );
  TEST_VV_OP( 147,  vredmax.vs, 5201314, 0x5555555555555556, 0x00000000000003 );
  TEST_VV_OP( 148,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000003 );
  TEST_VV_OP( 149,  vredmax.vs, 5201314, 0x00000000000006, 0x00000000000003 );
  TEST_VV_OP( 150,  vredmax.vs, 5201314, 0x3333333333333334, 0x00000000000003 );
  TEST_VV_OP( 151,  vredmax.vs, 5201314, 0x6666666666666667, 0x00000000000003 );
  TEST_VV_OP( 152,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000000 );
  TEST_VV_OP( 153,  vredmax.vs, 5201314, 0x000000b504f334, 0x00000000000003 );
  TEST_VV_OP( 154,  vredmax.vs, 5201314, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP( 155,  vredmax.vs, 5201314, 0x5555555555555555, 0x5555555555555555 );
  TEST_VV_OP( 156,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555 );
  TEST_VV_OP( 157,  vredmax.vs, 5201314, 0x00000000000005, 0x5555555555555555 );
  TEST_VV_OP( 158,  vredmax.vs, 5201314, 0x3333333333333333, 0x5555555555555555 );
  TEST_VV_OP( 159,  vredmax.vs, 5201314, 0x6666666666666666, 0x5555555555555555 );
  TEST_VV_OP( 160,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x5555555555555555 );
  TEST_VV_OP( 161,  vredmax.vs, 5201314, 0x000000b504f333, 0x5555555555555555 );
  TEST_VV_OP( 162,  vredmax.vs, 5201314, 0x00000000000002, 0x5555555555555555 );
  TEST_VV_OP( 163,  vredmax.vs, 5201314, 0x5555555555555554, 0x5555555555555555 );
  TEST_VV_OP( 164,  vredmax.vs, 5201314, 0x3333333333333332, 0x5555555555555555 );
  TEST_VV_OP( 165,  vredmax.vs, 5201314, 0x6666666666666665, 0x5555555555555555 );
  TEST_VV_OP( 166,  vredmax.vs, 5201314, 0x00000000000000, 0x5555555555555555 );
  TEST_VV_OP( 167,  vredmax.vs, 5201314, 0x000000b504f332, 0x5555555555555555 );
  TEST_VV_OP( 168,  vredmax.vs, 5201314, 0x00000000000004, 0x5555555555555555 );
  TEST_VV_OP( 169,  vredmax.vs, 5201314, 0x5555555555555556, 0x5555555555555555 );
  TEST_VV_OP( 170,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x5555555555555555 );
  TEST_VV_OP( 171,  vredmax.vs, 5201314, 0x00000000000006, 0x5555555555555555 );
  TEST_VV_OP( 172,  vredmax.vs, 5201314, 0x3333333333333334, 0x5555555555555555 );
  TEST_VV_OP( 173,  vredmax.vs, 5201314, 0x6666666666666667, 0x5555555555555555 );
  TEST_VV_OP( 174,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x5555555555555555 );
  TEST_VV_OP( 175,  vredmax.vs, 5201314, 0x000000b504f334, 0x5555555555555555 );
  TEST_VV_OP( 176,  vredmax.vs, 5201314, 0x00000000000003, 0x5555555555555555 );
  TEST_VV_OP( 177,  vredmax.vs, 5201314, 0x5555555555555555, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 178,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 179,  vredmax.vs, 5201314, 0x00000000000005, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 180,  vredmax.vs, 5201314, 0x3333333333333333, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 181,  vredmax.vs, 5201314, 0x6666666666666666, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 182,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 183,  vredmax.vs, 5201314, 0x000000b504f333, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 184,  vredmax.vs, 5201314, 0x00000000000002, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 185,  vredmax.vs, 5201314, 0x5555555555555554, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 186,  vredmax.vs, 5201314, 0x3333333333333332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 187,  vredmax.vs, 5201314, 0x6666666666666665, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 188,  vredmax.vs, 5201314, 0x00000000000000, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 189,  vredmax.vs, 5201314, 0x00000000000000, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 190,  vredmax.vs, 5201314, 0x000000b504f332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 191,  vredmax.vs, 5201314, 0x00000000000004, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 192,  vredmax.vs, 5201314, 0x5555555555555556, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 193,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 194,  vredmax.vs, 5201314, 0x00000000000006, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 195,  vredmax.vs, 5201314, 0x3333333333333334, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 196,  vredmax.vs, 5201314, 0x6666666666666667, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 197,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 198,  vredmax.vs, 5201314, 0x000000b504f334, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 199,  vredmax.vs, 5201314, 0x00000000000003, 0x00000000000005 );
  TEST_VV_OP( 200,  vredmax.vs, 5201314, 0x5555555555555555, 0x00000000000005 );
  TEST_VV_OP( 201,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000005 );
  TEST_VV_OP( 202,  vredmax.vs, 5201314, 0x00000000000005, 0x00000000000005 );
  TEST_VV_OP( 203,  vredmax.vs, 5201314, 0x3333333333333333, 0x00000000000005 );
  TEST_VV_OP( 204,  vredmax.vs, 5201314, 0x6666666666666666, 0x00000000000005 );
  TEST_VV_OP( 205,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000005 );
  TEST_VV_OP( 206,  vredmax.vs, 5201314, 0x000000b504f333, 0x00000000000005 );
  TEST_VV_OP( 207,  vredmax.vs, 5201314, 0x00000000000002, 0x00000000000005 );
  TEST_VV_OP( 208,  vredmax.vs, 5201314, 0x5555555555555554, 0x00000000000005 );
  TEST_VV_OP( 209,  vredmax.vs, 5201314, 0x3333333333333332, 0x00000000000005 );
  TEST_VV_OP( 210,  vredmax.vs, 5201314, 0x6666666666666665, 0x00000000000005 );
  TEST_VV_OP( 211,  vredmax.vs, 5201314, 0x00000000000000, 0x00000000000005 );
  TEST_VV_OP( 212,  vredmax.vs, 5201314, 0x000000b504f332, 0x00000000000005 );
  TEST_VV_OP( 213,  vredmax.vs, 5201314, 0x00000000000004, 0x00000000000005 );
  TEST_VV_OP( 214,  vredmax.vs, 5201314, 0x5555555555555556, 0x00000000000005 );
  TEST_VV_OP( 215,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000005 );
  TEST_VV_OP( 216,  vredmax.vs, 5201314, 0x00000000000006, 0x00000000000005 );
  TEST_VV_OP( 217,  vredmax.vs, 5201314, 0x3333333333333334, 0x00000000000005 );
  TEST_VV_OP( 218,  vredmax.vs, 5201314, 0x6666666666666667, 0x00000000000005 );
  TEST_VV_OP( 219,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000005 );
  TEST_VV_OP( 220,  vredmax.vs, 5201314, 0x000000b504f334, 0x00000000000005 );
  TEST_VV_OP( 221,  vredmax.vs, 5201314, 0x00000000000003, 0x3333333333333333 );
  TEST_VV_OP( 222,  vredmax.vs, 5201314, 0x5555555555555555, 0x3333333333333333 );
  TEST_VV_OP( 223,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x3333333333333333 );
  TEST_VV_OP( 224,  vredmax.vs, 5201314, 0x00000000000005, 0x3333333333333333 );
  TEST_VV_OP( 225,  vredmax.vs, 5201314, 0x3333333333333333, 0x3333333333333333 );
  TEST_VV_OP( 226,  vredmax.vs, 5201314, 0x6666666666666666, 0x3333333333333333 );
  TEST_VV_OP( 227,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x3333333333333333 );
  TEST_VV_OP( 228,  vredmax.vs, 5201314, 0x000000b504f333, 0x3333333333333333 );
  TEST_VV_OP( 229,  vredmax.vs, 5201314, 0x00000000000002, 0x3333333333333333 );
  TEST_VV_OP( 230,  vredmax.vs, 5201314, 0x5555555555555554, 0x3333333333333333 );
  TEST_VV_OP( 231,  vredmax.vs, 5201314, 0x3333333333333332, 0x3333333333333333 );
  TEST_VV_OP( 232,  vredmax.vs, 5201314, 0x6666666666666665, 0x3333333333333333 );
  TEST_VV_OP( 233,  vredmax.vs, 5201314, 0x00000000000000, 0x3333333333333333 );
  TEST_VV_OP( 234,  vredmax.vs, 5201314, 0x000000b504f332, 0x3333333333333333 );
  TEST_VV_OP( 235,  vredmax.vs, 5201314, 0x00000000000004, 0x3333333333333333 );
  TEST_VV_OP( 236,  vredmax.vs, 5201314, 0x5555555555555556, 0x3333333333333333 );
  TEST_VV_OP( 237,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x3333333333333333 );
  TEST_VV_OP( 238,  vredmax.vs, 5201314, 0x00000000000006, 0x3333333333333333 );
  TEST_VV_OP( 239,  vredmax.vs, 5201314, 0x3333333333333334, 0x3333333333333333 );
  TEST_VV_OP( 240,  vredmax.vs, 5201314, 0x6666666666666667, 0x3333333333333333 );
  TEST_VV_OP( 241,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x3333333333333333 );
  TEST_VV_OP( 242,  vredmax.vs, 5201314, 0x000000b504f334, 0x3333333333333333 );
  TEST_VV_OP( 243,  vredmax.vs, 5201314, 0x00000000000003, 0x6666666666666666 );
  TEST_VV_OP( 244,  vredmax.vs, 5201314, 0x5555555555555555, 0x6666666666666666 );
  TEST_VV_OP( 245,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x6666666666666666 );
  TEST_VV_OP( 246,  vredmax.vs, 5201314, 0x00000000000005, 0x6666666666666666 );
  TEST_VV_OP( 247,  vredmax.vs, 5201314, 0x3333333333333333, 0x6666666666666666 );
  TEST_VV_OP( 248,  vredmax.vs, 5201314, 0x6666666666666666, 0x6666666666666666 );
  TEST_VV_OP( 249,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x6666666666666666 );
  TEST_VV_OP( 250,  vredmax.vs, 5201314, 0x000000b504f333, 0x6666666666666666 );
  TEST_VV_OP( 251,  vredmax.vs, 5201314, 0x00000000000002, 0x6666666666666666 );
  TEST_VV_OP( 252,  vredmax.vs, 5201314, 0x5555555555555554, 0x6666666666666666 );
  TEST_VV_OP( 253,  vredmax.vs, 5201314, 0x3333333333333332, 0x6666666666666666 );
  TEST_VV_OP( 254,  vredmax.vs, 5201314, 0x6666666666666665, 0x6666666666666666 );
  TEST_VV_OP( 255,  vredmax.vs, 5201314, 0x00000000000000, 0x6666666666666666 );
  TEST_VV_OP( 256,  vredmax.vs, 5201314, 0x000000b504f332, 0x6666666666666666 );
  TEST_VV_OP( 257,  vredmax.vs, 5201314, 0x00000000000004, 0x6666666666666666 );
  TEST_VV_OP( 258,  vredmax.vs, 5201314, 0x5555555555555556, 0x6666666666666666 );
  TEST_VV_OP( 259,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x6666666666666666 );
  TEST_VV_OP( 260,  vredmax.vs, 5201314, 0x00000000000006, 0x6666666666666666 );
  TEST_VV_OP( 261,  vredmax.vs, 5201314, 0x3333333333333334, 0x6666666666666666 );
  TEST_VV_OP( 262,  vredmax.vs, 5201314, 0x6666666666666667, 0x6666666666666666 );
  TEST_VV_OP( 263,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x6666666666666666 );
  TEST_VV_OP( 264,  vredmax.vs, 5201314, 0x000000b504f334, 0x6666666666666666 );
  TEST_VV_OP( 265,  vredmax.vs, 5201314, 0x00000000000003, 0xffffffff4afb0ccd );
  TEST_VV_OP( 266,  vredmax.vs, 5201314, 0x5555555555555555, 0xffffffff4afb0ccd );
  TEST_VV_OP( 267,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xffffffff4afb0ccd );
  TEST_VV_OP( 268,  vredmax.vs, 5201314, 0x00000000000005, 0xffffffff4afb0ccd );
  TEST_VV_OP( 269,  vredmax.vs, 5201314, 0x3333333333333333, 0xffffffff4afb0ccd );
  TEST_VV_OP( 270,  vredmax.vs, 5201314, 0x6666666666666666, 0xffffffff4afb0ccd );
  TEST_VV_OP( 271,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0xffffffff4afb0ccd );
  TEST_VV_OP( 272,  vredmax.vs, 5201314, 0x000000b504f333, 0xffffffff4afb0ccd );
  TEST_VV_OP( 273,  vredmax.vs, 5201314, 0x00000000000002, 0xffffffff4afb0ccd );
  TEST_VV_OP( 274,  vredmax.vs, 5201314, 0x5555555555555554, 0xffffffff4afb0ccd );
  TEST_VV_OP( 275,  vredmax.vs, 5201314, 0x3333333333333332, 0xffffffff4afb0ccd );
  TEST_VV_OP( 276,  vredmax.vs, 5201314, 0x6666666666666665, 0xffffffff4afb0ccd );
  TEST_VV_OP( 277,  vredmax.vs, 5201314, 0x00000000000000, 0xffffffff4afb0ccd );
  TEST_VV_OP( 278,  vredmax.vs, 5201314, 0x000000b504f332, 0xffffffff4afb0ccd );
  TEST_VV_OP( 279,  vredmax.vs, 5201314, 0x00000000000004, 0xffffffff4afb0ccd );
  TEST_VV_OP( 280,  vredmax.vs, 5201314, 0x5555555555555556, 0xffffffff4afb0ccd );
  TEST_VV_OP( 281,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xffffffff4afb0ccd );
  TEST_VV_OP( 282,  vredmax.vs, 5201314, 0x00000000000006, 0xffffffff4afb0ccd );
  TEST_VV_OP( 283,  vredmax.vs, 5201314, 0x3333333333333334, 0xffffffff4afb0ccd );
  TEST_VV_OP( 284,  vredmax.vs, 5201314, 0x6666666666666667, 0xffffffff4afb0ccd );
  TEST_VV_OP( 285,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0xffffffff4afb0ccd );
  TEST_VV_OP( 286,  vredmax.vs, 5201314, 0x000000b504f334, 0xffffffff4afb0ccd );
  TEST_VV_OP( 287,  vredmax.vs, 5201314, 0x00000000000003, 0x000000b504f333 );
  TEST_VV_OP( 288,  vredmax.vs, 5201314, 0x5555555555555555, 0x000000b504f333 );
  TEST_VV_OP( 289,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x000000b504f333 );
  TEST_VV_OP( 290,  vredmax.vs, 5201314, 0x00000000000005, 0x000000b504f333 );
  TEST_VV_OP( 291,  vredmax.vs, 5201314, 0x3333333333333333, 0x000000b504f333 );
  TEST_VV_OP( 292,  vredmax.vs, 5201314, 0x6666666666666666, 0x000000b504f333 );
  TEST_VV_OP( 293,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x000000b504f333 );
  TEST_VV_OP( 294,  vredmax.vs, 5201314, 0x000000b504f333, 0x000000b504f333 );
  TEST_VV_OP( 295,  vredmax.vs, 5201314, 0x00000000000002, 0x000000b504f333 );
  TEST_VV_OP( 296,  vredmax.vs, 5201314, 0x5555555555555554, 0x000000b504f333 );
  TEST_VV_OP( 297,  vredmax.vs, 5201314, 0x3333333333333332, 0x000000b504f333 );
  TEST_VV_OP( 298,  vredmax.vs, 5201314, 0x6666666666666665, 0x000000b504f333 );
  TEST_VV_OP( 299,  vredmax.vs, 5201314, 0x00000000000000, 0x000000b504f333 );
  TEST_VV_OP( 300,  vredmax.vs, 5201314, 0x000000b504f332, 0x000000b504f333 );
  TEST_VV_OP( 301,  vredmax.vs, 5201314, 0x00000000000004, 0x000000b504f333 );
  TEST_VV_OP( 302,  vredmax.vs, 5201314, 0x5555555555555556, 0x000000b504f333 );
  TEST_VV_OP( 303,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x000000b504f333 );
  TEST_VV_OP( 304,  vredmax.vs, 5201314, 0x00000000000006, 0x000000b504f333 );
  TEST_VV_OP( 305,  vredmax.vs, 5201314, 0x3333333333333334, 0x000000b504f333 );
  TEST_VV_OP( 306,  vredmax.vs, 5201314, 0x6666666666666667, 0x000000b504f333 );
  TEST_VV_OP( 307,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x000000b504f333 );
  TEST_VV_OP( 308,  vredmax.vs, 5201314, 0x000000b504f334, 0x000000b504f333 );
  TEST_VV_OP( 309,  vredmax.vs, 5201314, 0x00000000000003, 0x00000000000002 );
  TEST_VV_OP( 310,  vredmax.vs, 5201314, 0x5555555555555555, 0x00000000000002 );
  TEST_VV_OP( 311,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000002 );
  TEST_VV_OP( 312,  vredmax.vs, 5201314, 0x00000000000005, 0x00000000000002 );
  TEST_VV_OP( 313,  vredmax.vs, 5201314, 0x3333333333333333, 0x00000000000002 );
  TEST_VV_OP( 314,  vredmax.vs, 5201314, 0x6666666666666666, 0x00000000000002 );
  TEST_VV_OP( 315,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000002 );
  TEST_VV_OP( 316,  vredmax.vs, 5201314, 0x000000b504f333, 0x00000000000002 );
  TEST_VV_OP( 317,  vredmax.vs, 5201314, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP( 318,  vredmax.vs, 5201314, 0x5555555555555554, 0x00000000000002 );
  TEST_VV_OP( 319,  vredmax.vs, 5201314, 0x3333333333333332, 0x00000000000002 );
  TEST_VV_OP( 320,  vredmax.vs, 5201314, 0x6666666666666665, 0x00000000000002 );
  TEST_VV_OP( 321,  vredmax.vs, 5201314, 0x00000000000000, 0x00000000000002 );
  TEST_VV_OP( 322,  vredmax.vs, 5201314, 0x000000b504f332, 0x00000000000002 );
  TEST_VV_OP( 323,  vredmax.vs, 5201314, 0x00000000000004, 0x00000000000002 );
  TEST_VV_OP( 324,  vredmax.vs, 5201314, 0x5555555555555556, 0x00000000000002 );
  TEST_VV_OP( 325,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000002 );
  TEST_VV_OP( 326,  vredmax.vs, 5201314, 0x00000000000006, 0x00000000000002 );
  TEST_VV_OP( 327,  vredmax.vs, 5201314, 0x3333333333333334, 0x00000000000002 );
  TEST_VV_OP( 328,  vredmax.vs, 5201314, 0x6666666666666667, 0x00000000000002 );
  TEST_VV_OP( 329,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000002 );
  TEST_VV_OP( 330,  vredmax.vs, 5201314, 0x000000b504f334, 0x00000000000002 );
  TEST_VV_OP( 331,  vredmax.vs, 5201314, 0x00000000000003, 0x5555555555555554 );
  TEST_VV_OP( 332,  vredmax.vs, 5201314, 0x5555555555555555, 0x5555555555555554 );
  TEST_VV_OP( 333,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x5555555555555554 );
  TEST_VV_OP( 334,  vredmax.vs, 5201314, 0x00000000000005, 0x5555555555555554 );
  TEST_VV_OP( 335,  vredmax.vs, 5201314, 0x3333333333333333, 0x5555555555555554 );
  TEST_VV_OP( 336,  vredmax.vs, 5201314, 0x6666666666666666, 0x5555555555555554 );
  TEST_VV_OP( 337,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x5555555555555554 );
  TEST_VV_OP( 338,  vredmax.vs, 5201314, 0x000000b504f333, 0x5555555555555554 );
  TEST_VV_OP( 339,  vredmax.vs, 5201314, 0x00000000000002, 0x5555555555555554 );
  TEST_VV_OP( 340,  vredmax.vs, 5201314, 0x5555555555555554, 0x5555555555555554 );
  TEST_VV_OP( 341,  vredmax.vs, 5201314, 0x3333333333333332, 0x5555555555555554 );
  TEST_VV_OP( 342,  vredmax.vs, 5201314, 0x6666666666666665, 0x5555555555555554 );
  TEST_VV_OP( 343,  vredmax.vs, 5201314, 0x00000000000000, 0x5555555555555554 );
  TEST_VV_OP( 344,  vredmax.vs, 5201314, 0x000000b504f332, 0x5555555555555554 );
  TEST_VV_OP( 345,  vredmax.vs, 5201314, 0x00000000000004, 0x5555555555555554 );
  TEST_VV_OP( 346,  vredmax.vs, 5201314, 0x5555555555555556, 0x5555555555555554 );
  TEST_VV_OP( 347,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x5555555555555554 );
  TEST_VV_OP( 348,  vredmax.vs, 5201314, 0x00000000000006, 0x5555555555555554 );
  TEST_VV_OP( 349,  vredmax.vs, 5201314, 0x3333333333333334, 0x5555555555555554 );
  TEST_VV_OP( 350,  vredmax.vs, 5201314, 0x6666666666666667, 0x5555555555555554 );
  TEST_VV_OP( 351,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x5555555555555554 );
  TEST_VV_OP( 352,  vredmax.vs, 5201314, 0x000000b504f334, 0x5555555555555554 );
  TEST_VV_OP( 353,  vredmax.vs, 5201314, 0x00000000000003, 0x3333333333333332 );
  TEST_VV_OP( 354,  vredmax.vs, 5201314, 0x5555555555555555, 0x3333333333333332 );
  TEST_VV_OP( 355,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x3333333333333332 );
  TEST_VV_OP( 356,  vredmax.vs, 5201314, 0x00000000000005, 0x3333333333333332 );
  TEST_VV_OP( 357,  vredmax.vs, 5201314, 0x3333333333333333, 0x3333333333333332 );
  TEST_VV_OP( 358,  vredmax.vs, 5201314, 0x6666666666666666, 0x3333333333333332 );
  TEST_VV_OP( 359,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x3333333333333332 );
  TEST_VV_OP( 360,  vredmax.vs, 5201314, 0x000000b504f333, 0x3333333333333332 );
  TEST_VV_OP( 361,  vredmax.vs, 5201314, 0x00000000000002, 0x3333333333333332 );
  TEST_VV_OP( 362,  vredmax.vs, 5201314, 0x5555555555555554, 0x3333333333333332 );
  TEST_VV_OP( 363,  vredmax.vs, 5201314, 0x3333333333333332, 0x3333333333333332 );
  TEST_VV_OP( 364,  vredmax.vs, 5201314, 0x6666666666666665, 0x3333333333333332 );
  TEST_VV_OP( 365,  vredmax.vs, 5201314, 0x00000000000000, 0x3333333333333332 );
  TEST_VV_OP( 366,  vredmax.vs, 5201314, 0x000000b504f332, 0x3333333333333332 );
  TEST_VV_OP( 367,  vredmax.vs, 5201314, 0x00000000000004, 0x3333333333333332 );
  TEST_VV_OP( 368,  vredmax.vs, 5201314, 0x5555555555555556, 0x3333333333333332 );
  TEST_VV_OP( 369,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x3333333333333332 );
  TEST_VV_OP( 370,  vredmax.vs, 5201314, 0x00000000000006, 0x3333333333333332 );
  TEST_VV_OP( 371,  vredmax.vs, 5201314, 0x3333333333333334, 0x3333333333333332 );
  TEST_VV_OP( 372,  vredmax.vs, 5201314, 0x6666666666666667, 0x3333333333333332 );
  TEST_VV_OP( 373,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x3333333333333332 );
  TEST_VV_OP( 374,  vredmax.vs, 5201314, 0x000000b504f334, 0x3333333333333332 );
  TEST_VV_OP( 375,  vredmax.vs, 5201314, 0x00000000000003, 0x6666666666666665 );
  TEST_VV_OP( 376,  vredmax.vs, 5201314, 0x5555555555555555, 0x6666666666666665 );
  TEST_VV_OP( 377,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x6666666666666665 );
  TEST_VV_OP( 378,  vredmax.vs, 5201314, 0x00000000000005, 0x6666666666666665 );
  TEST_VV_OP( 379,  vredmax.vs, 5201314, 0x3333333333333333, 0x6666666666666665 );
  TEST_VV_OP( 380,  vredmax.vs, 5201314, 0x6666666666666666, 0x6666666666666665 );
  TEST_VV_OP( 381,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x6666666666666665 );
  TEST_VV_OP( 382,  vredmax.vs, 5201314, 0x000000b504f333, 0x6666666666666665 );
  TEST_VV_OP( 383,  vredmax.vs, 5201314, 0x00000000000002, 0x6666666666666665 );
  TEST_VV_OP( 384,  vredmax.vs, 5201314, 0x5555555555555554, 0x6666666666666665 );
  TEST_VV_OP( 385,  vredmax.vs, 5201314, 0x3333333333333332, 0x6666666666666665 );
  TEST_VV_OP( 386,  vredmax.vs, 5201314, 0x6666666666666665, 0x6666666666666665 );
  TEST_VV_OP( 387,  vredmax.vs, 5201314, 0x00000000000000, 0x6666666666666665 );
  TEST_VV_OP( 388,  vredmax.vs, 5201314, 0x000000b504f332, 0x6666666666666665 );
  TEST_VV_OP( 389,  vredmax.vs, 5201314, 0x00000000000004, 0x6666666666666665 );
  TEST_VV_OP( 390,  vredmax.vs, 5201314, 0x5555555555555556, 0x6666666666666665 );
  TEST_VV_OP( 391,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x6666666666666665 );
  TEST_VV_OP( 392,  vredmax.vs, 5201314, 0x00000000000006, 0x6666666666666665 );
  TEST_VV_OP( 393,  vredmax.vs, 5201314, 0x3333333333333334, 0x6666666666666665 );
  TEST_VV_OP( 394,  vredmax.vs, 5201314, 0x6666666666666667, 0x6666666666666665 );
  TEST_VV_OP( 395,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x6666666666666665 );
  TEST_VV_OP( 396,  vredmax.vs, 5201314, 0x000000b504f334, 0x6666666666666665 );
  TEST_VV_OP( 397,  vredmax.vs, 5201314, 0x00000000000003, 0x00000000000000 );
  TEST_VV_OP( 398,  vredmax.vs, 5201314, 0x5555555555555555, 0x00000000000000 );
  TEST_VV_OP( 399,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000000 );
  TEST_VV_OP( 400,  vredmax.vs, 5201314, 0x00000000000005, 0x00000000000000 );
  TEST_VV_OP( 401,  vredmax.vs, 5201314, 0x3333333333333333, 0x00000000000000 );
  TEST_VV_OP( 402,  vredmax.vs, 5201314, 0x6666666666666666, 0x00000000000000 );
  TEST_VV_OP( 403,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000000 );
  TEST_VV_OP( 404,  vredmax.vs, 5201314, 0x000000b504f333, 0x00000000000000 );
  TEST_VV_OP( 405,  vredmax.vs, 5201314, 0x00000000000002, 0x00000000000000 );
  TEST_VV_OP( 406,  vredmax.vs, 5201314, 0x5555555555555554, 0x00000000000000 );
  TEST_VV_OP( 407,  vredmax.vs, 5201314, 0x3333333333333332, 0x00000000000000 );
  TEST_VV_OP( 408,  vredmax.vs, 5201314, 0x6666666666666665, 0x00000000000000 );
  TEST_VV_OP( 409,  vredmax.vs, 5201314, 0x00000000000000, 0x00000000000000 );
  TEST_VV_OP( 410,  vredmax.vs, 5201314, 0x000000b504f332, 0x00000000000000 );
  TEST_VV_OP( 411,  vredmax.vs, 5201314, 0x00000000000004, 0x00000000000000 );
  TEST_VV_OP( 412,  vredmax.vs, 5201314, 0x5555555555555556, 0x00000000000000 );
  TEST_VV_OP( 413,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000000 );
  TEST_VV_OP( 414,  vredmax.vs, 5201314, 0x00000000000006, 0x00000000000000 );
  TEST_VV_OP( 415,  vredmax.vs, 5201314, 0x3333333333333334, 0x00000000000000 );
  TEST_VV_OP( 416,  vredmax.vs, 5201314, 0x6666666666666667, 0x00000000000000 );
  TEST_VV_OP( 417,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000000 );
  TEST_VV_OP( 418,  vredmax.vs, 5201314, 0x000000b504f334, 0x00000000000000 );
  TEST_VV_OP( 419,  vredmax.vs, 5201314, 0x00000000000003, 0x000000b504f332 );
  TEST_VV_OP( 420,  vredmax.vs, 5201314, 0x5555555555555555, 0x000000b504f332 );
  TEST_VV_OP( 421,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x000000b504f332 );
  TEST_VV_OP( 422,  vredmax.vs, 5201314, 0x00000000000005, 0x000000b504f332 );
  TEST_VV_OP( 423,  vredmax.vs, 5201314, 0x3333333333333333, 0x000000b504f332 );
  TEST_VV_OP( 424,  vredmax.vs, 5201314, 0x6666666666666666, 0x000000b504f332 );
  TEST_VV_OP( 425,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x000000b504f332 );
  TEST_VV_OP( 426,  vredmax.vs, 5201314, 0x000000b504f333, 0x000000b504f332 );
  TEST_VV_OP( 427,  vredmax.vs, 5201314, 0x00000000000002, 0x000000b504f332 );
  TEST_VV_OP( 428,  vredmax.vs, 5201314, 0x5555555555555554, 0x000000b504f332 );
  TEST_VV_OP( 429,  vredmax.vs, 5201314, 0x3333333333333332, 0x000000b504f332 );
  TEST_VV_OP( 430,  vredmax.vs, 5201314, 0x6666666666666665, 0x000000b504f332 );
  TEST_VV_OP( 431,  vredmax.vs, 5201314, 0x00000000000000, 0x000000b504f332 );
  TEST_VV_OP( 432,  vredmax.vs, 5201314, 0x000000b504f332, 0x000000b504f332 );
  TEST_VV_OP( 433,  vredmax.vs, 5201314, 0x00000000000004, 0x000000b504f332 );
  TEST_VV_OP( 434,  vredmax.vs, 5201314, 0x5555555555555556, 0x000000b504f332 );
  TEST_VV_OP( 435,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x000000b504f332 );
  TEST_VV_OP( 436,  vredmax.vs, 5201314, 0x00000000000006, 0x000000b504f332 );
  TEST_VV_OP( 437,  vredmax.vs, 5201314, 0x3333333333333334, 0x000000b504f332 );
  TEST_VV_OP( 438,  vredmax.vs, 5201314, 0x6666666666666667, 0x000000b504f332 );
  TEST_VV_OP( 439,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x000000b504f332 );
  TEST_VV_OP( 440,  vredmax.vs, 5201314, 0x000000b504f334, 0x000000b504f332 );
  TEST_VV_OP( 441,  vredmax.vs, 5201314, 0x00000000000003, 0x00000000000004 );
  TEST_VV_OP( 442,  vredmax.vs, 5201314, 0x5555555555555555, 0x00000000000004 );
  TEST_VV_OP( 443,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000004 );
  TEST_VV_OP( 444,  vredmax.vs, 5201314, 0x00000000000005, 0x00000000000004 );
  TEST_VV_OP( 445,  vredmax.vs, 5201314, 0x3333333333333333, 0x00000000000004 );
  TEST_VV_OP( 446,  vredmax.vs, 5201314, 0x6666666666666666, 0x00000000000004 );
  TEST_VV_OP( 447,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000004 );
  TEST_VV_OP( 448,  vredmax.vs, 5201314, 0x000000b504f333, 0x00000000000004 );
  TEST_VV_OP( 449,  vredmax.vs, 5201314, 0x00000000000002, 0x00000000000004 );
  TEST_VV_OP( 450,  vredmax.vs, 5201314, 0x5555555555555554, 0x00000000000004 );
  TEST_VV_OP( 451,  vredmax.vs, 5201314, 0x3333333333333332, 0x00000000000004 );
  TEST_VV_OP( 452,  vredmax.vs, 5201314, 0x6666666666666665, 0x00000000000004 );
  TEST_VV_OP( 453,  vredmax.vs, 5201314, 0x00000000000000, 0x00000000000004 );
  TEST_VV_OP( 454,  vredmax.vs, 5201314, 0x000000b504f332, 0x00000000000004 );
  TEST_VV_OP( 455,  vredmax.vs, 5201314, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP( 456,  vredmax.vs, 5201314, 0x5555555555555556, 0x00000000000004 );
  TEST_VV_OP( 457,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000004 );
  TEST_VV_OP( 458,  vredmax.vs, 5201314, 0x00000000000006, 0x00000000000004 );
  TEST_VV_OP( 459,  vredmax.vs, 5201314, 0x3333333333333334, 0x00000000000004 );
  TEST_VV_OP( 460,  vredmax.vs, 5201314, 0x6666666666666667, 0x00000000000004 );
  TEST_VV_OP( 461,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000004 );
  TEST_VV_OP( 462,  vredmax.vs, 5201314, 0x000000b504f334, 0x00000000000004 );
  TEST_VV_OP( 463,  vredmax.vs, 5201314, 0x00000000000003, 0x5555555555555556 );
  TEST_VV_OP( 464,  vredmax.vs, 5201314, 0x5555555555555555, 0x5555555555555556 );
  TEST_VV_OP( 465,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x5555555555555556 );
  TEST_VV_OP( 466,  vredmax.vs, 5201314, 0x00000000000005, 0x5555555555555556 );
  TEST_VV_OP( 467,  vredmax.vs, 5201314, 0x3333333333333333, 0x5555555555555556 );
  TEST_VV_OP( 468,  vredmax.vs, 5201314, 0x6666666666666666, 0x5555555555555556 );
  TEST_VV_OP( 469,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x5555555555555556 );
  TEST_VV_OP( 470,  vredmax.vs, 5201314, 0x000000b504f333, 0x5555555555555556 );
  TEST_VV_OP( 471,  vredmax.vs, 5201314, 0x00000000000002, 0x5555555555555556 );
  TEST_VV_OP( 472,  vredmax.vs, 5201314, 0x5555555555555554, 0x5555555555555556 );
  TEST_VV_OP( 473,  vredmax.vs, 5201314, 0x3333333333333332, 0x5555555555555556 );
  TEST_VV_OP( 474,  vredmax.vs, 5201314, 0x6666666666666665, 0x5555555555555556 );
  TEST_VV_OP( 475,  vredmax.vs, 5201314, 0x00000000000000, 0x5555555555555556 );
  TEST_VV_OP( 476,  vredmax.vs, 5201314, 0x000000b504f332, 0x5555555555555556 );
  TEST_VV_OP( 477,  vredmax.vs, 5201314, 0x00000000000004, 0x5555555555555556 );
  TEST_VV_OP( 478,  vredmax.vs, 5201314, 0x5555555555555556, 0x5555555555555556 );
  TEST_VV_OP( 479,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x5555555555555556 );
  TEST_VV_OP( 480,  vredmax.vs, 5201314, 0x00000000000006, 0x5555555555555556 );
  TEST_VV_OP( 481,  vredmax.vs, 5201314, 0x3333333333333334, 0x5555555555555556 );
  TEST_VV_OP( 482,  vredmax.vs, 5201314, 0x6666666666666667, 0x5555555555555556 );
  TEST_VV_OP( 483,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x5555555555555556 );
  TEST_VV_OP( 484,  vredmax.vs, 5201314, 0x000000b504f334, 0x5555555555555556 );
  TEST_VV_OP( 485,  vredmax.vs, 5201314, 0x00000000000003, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 486,  vredmax.vs, 5201314, 0x5555555555555555, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 487,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 488,  vredmax.vs, 5201314, 0x00000000000005, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 489,  vredmax.vs, 5201314, 0x3333333333333333, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 490,  vredmax.vs, 5201314, 0x6666666666666666, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 491,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 492,  vredmax.vs, 5201314, 0x000000b504f333, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 493,  vredmax.vs, 5201314, 0x00000000000002, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 494,  vredmax.vs, 5201314, 0x5555555555555554, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 495,  vredmax.vs, 5201314, 0x3333333333333332, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 496,  vredmax.vs, 5201314, 0x6666666666666665, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 497,  vredmax.vs, 5201314, 0x00000000000000, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 498,  vredmax.vs, 5201314, 0x000000b504f332, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 499,  vredmax.vs, 5201314, 0x00000000000004, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 500,  vredmax.vs, 5201314, 0x5555555555555556, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 501,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 502,  vredmax.vs, 5201314, 0x00000000000006, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 503,  vredmax.vs, 5201314, 0x3333333333333334, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 504,  vredmax.vs, 5201314, 0x6666666666666667, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 505,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 506,  vredmax.vs, 5201314, 0x000000b504f334, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 507,  vredmax.vs, 5201314, 0x00000000000003, 0x00000000000006 );
  TEST_VV_OP( 508,  vredmax.vs, 5201314, 0x5555555555555555, 0x00000000000006 );
  TEST_VV_OP( 509,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000006 );
  TEST_VV_OP( 510,  vredmax.vs, 5201314, 0x00000000000005, 0x00000000000006 );
  TEST_VV_OP( 511,  vredmax.vs, 5201314, 0x3333333333333333, 0x00000000000006 );
  TEST_VV_OP( 512,  vredmax.vs, 5201314, 0x6666666666666666, 0x00000000000006 );
  TEST_VV_OP( 513,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000006 );
  TEST_VV_OP( 514,  vredmax.vs, 5201314, 0x000000b504f333, 0x00000000000006 );
  TEST_VV_OP( 515,  vredmax.vs, 5201314, 0x00000000000002, 0x00000000000006 );
  TEST_VV_OP( 516,  vredmax.vs, 5201314, 0x5555555555555554, 0x00000000000006 );
  TEST_VV_OP( 517,  vredmax.vs, 5201314, 0x3333333333333332, 0x00000000000006 );
  TEST_VV_OP( 518,  vredmax.vs, 5201314, 0x6666666666666665, 0x00000000000006 );
  TEST_VV_OP( 519,  vredmax.vs, 5201314, 0x00000000000000, 0x00000000000006 );
  TEST_VV_OP( 520,  vredmax.vs, 5201314, 0x000000b504f332, 0x00000000000006 );
  TEST_VV_OP( 521,  vredmax.vs, 5201314, 0x00000000000004, 0x00000000000006 );
  TEST_VV_OP( 522,  vredmax.vs, 5201314, 0x5555555555555556, 0x00000000000006 );
  TEST_VV_OP( 523,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000006 );
  TEST_VV_OP( 524,  vredmax.vs, 5201314, 0x00000000000006, 0x00000000000006 );
  TEST_VV_OP( 525,  vredmax.vs, 5201314, 0x3333333333333334, 0x00000000000006 );
  TEST_VV_OP( 526,  vredmax.vs, 5201314, 0x6666666666666667, 0x00000000000006 );
  TEST_VV_OP( 527,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000006 );
  TEST_VV_OP( 528,  vredmax.vs, 5201314, 0x000000b504f334, 0x00000000000006 );
  TEST_VV_OP( 529,  vredmax.vs, 5201314, 0x00000000000003, 0x3333333333333334 );
  TEST_VV_OP( 530,  vredmax.vs, 5201314, 0x5555555555555555, 0x3333333333333334 );
  TEST_VV_OP( 531,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x3333333333333334 );
  TEST_VV_OP( 532,  vredmax.vs, 5201314, 0x00000000000005, 0x3333333333333334 );
  TEST_VV_OP( 533,  vredmax.vs, 5201314, 0x3333333333333333, 0x3333333333333334 );
  TEST_VV_OP( 534,  vredmax.vs, 5201314, 0x6666666666666666, 0x3333333333333334 );
  TEST_VV_OP( 535,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x3333333333333334 );
  TEST_VV_OP( 536,  vredmax.vs, 5201314, 0x000000b504f333, 0x3333333333333334 );
  TEST_VV_OP( 537,  vredmax.vs, 5201314, 0x00000000000002, 0x3333333333333334 );
  TEST_VV_OP( 538,  vredmax.vs, 5201314, 0x5555555555555554, 0x3333333333333334 );
  TEST_VV_OP( 539,  vredmax.vs, 5201314, 0x3333333333333332, 0x3333333333333334 );
  TEST_VV_OP( 540,  vredmax.vs, 5201314, 0x6666666666666665, 0x3333333333333334 );
  TEST_VV_OP( 541,  vredmax.vs, 5201314, 0x00000000000000, 0x3333333333333334 );
  TEST_VV_OP( 542,  vredmax.vs, 5201314, 0x000000b504f332, 0x3333333333333334 );
  TEST_VV_OP( 543,  vredmax.vs, 5201314, 0x00000000000004, 0x3333333333333334 );
  TEST_VV_OP( 544,  vredmax.vs, 5201314, 0x5555555555555556, 0x3333333333333334 );
  TEST_VV_OP( 545,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x3333333333333334 );
  TEST_VV_OP( 546,  vredmax.vs, 5201314, 0x00000000000006, 0x3333333333333334 );
  TEST_VV_OP( 547,  vredmax.vs, 5201314, 0x3333333333333334, 0x3333333333333334 );
  TEST_VV_OP( 548,  vredmax.vs, 5201314, 0x6666666666666667, 0x3333333333333334 );
  TEST_VV_OP( 549,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x3333333333333334 );
  TEST_VV_OP( 550,  vredmax.vs, 5201314, 0x000000b504f334, 0x3333333333333334 );
  TEST_VV_OP( 551,  vredmax.vs, 5201314, 0x00000000000003, 0x6666666666666667 );
  TEST_VV_OP( 552,  vredmax.vs, 5201314, 0x5555555555555555, 0x6666666666666667 );
  TEST_VV_OP( 553,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x6666666666666667 );
  TEST_VV_OP( 554,  vredmax.vs, 5201314, 0x00000000000005, 0x6666666666666667 );
  TEST_VV_OP( 555,  vredmax.vs, 5201314, 0x3333333333333333, 0x6666666666666667 );
  TEST_VV_OP( 556,  vredmax.vs, 5201314, 0x6666666666666666, 0x6666666666666667 );
  TEST_VV_OP( 557,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x6666666666666667 );
  TEST_VV_OP( 558,  vredmax.vs, 5201314, 0x000000b504f333, 0x6666666666666667 );
  TEST_VV_OP( 559,  vredmax.vs, 5201314, 0x00000000000002, 0x6666666666666667 );
  TEST_VV_OP( 560,  vredmax.vs, 5201314, 0x5555555555555554, 0x6666666666666667 );
  TEST_VV_OP( 561,  vredmax.vs, 5201314, 0x3333333333333332, 0x6666666666666667 );
  TEST_VV_OP( 562,  vredmax.vs, 5201314, 0x6666666666666665, 0x6666666666666667 );
  TEST_VV_OP( 563,  vredmax.vs, 5201314, 0x00000000000000, 0x6666666666666667 );
  TEST_VV_OP( 564,  vredmax.vs, 5201314, 0x000000b504f332, 0x6666666666666667 );
  TEST_VV_OP( 565,  vredmax.vs, 5201314, 0x00000000000004, 0x6666666666666667 );
  TEST_VV_OP( 566,  vredmax.vs, 5201314, 0x5555555555555556, 0x6666666666666667 );
  TEST_VV_OP( 567,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x6666666666666667 );
  TEST_VV_OP( 568,  vredmax.vs, 5201314, 0x00000000000006, 0x6666666666666667 );
  TEST_VV_OP( 569,  vredmax.vs, 5201314, 0x3333333333333334, 0x6666666666666667 );
  TEST_VV_OP( 570,  vredmax.vs, 5201314, 0x6666666666666667, 0x6666666666666667 );
  TEST_VV_OP( 571,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x6666666666666667 );
  TEST_VV_OP( 572,  vredmax.vs, 5201314, 0x000000b504f334, 0x6666666666666667 );
  TEST_VV_OP( 573,  vredmax.vs, 5201314, 0x00000000000003, 0xffffffff4afb0cce );
  TEST_VV_OP( 574,  vredmax.vs, 5201314, 0x5555555555555555, 0xffffffff4afb0cce );
  TEST_VV_OP( 575,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xffffffff4afb0cce );
  TEST_VV_OP( 576,  vredmax.vs, 5201314, 0x00000000000005, 0xffffffff4afb0cce );
  TEST_VV_OP( 577,  vredmax.vs, 5201314, 0x3333333333333333, 0xffffffff4afb0cce );
  TEST_VV_OP( 578,  vredmax.vs, 5201314, 0x6666666666666666, 0xffffffff4afb0cce );
  TEST_VV_OP( 579,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0xffffffff4afb0cce );
  TEST_VV_OP( 580,  vredmax.vs, 5201314, 0x000000b504f333, 0xffffffff4afb0cce );
  TEST_VV_OP( 581,  vredmax.vs, 5201314, 0x00000000000002, 0xffffffff4afb0cce );
  TEST_VV_OP( 582,  vredmax.vs, 5201314, 0x5555555555555554, 0xffffffff4afb0cce );
  TEST_VV_OP( 583,  vredmax.vs, 5201314, 0x3333333333333332, 0xffffffff4afb0cce );
  TEST_VV_OP( 584,  vredmax.vs, 5201314, 0x6666666666666665, 0xffffffff4afb0cce );
  TEST_VV_OP( 585,  vredmax.vs, 5201314, 0x00000000000000, 0xffffffff4afb0cce );
  TEST_VV_OP( 586,  vredmax.vs, 5201314, 0x000000b504f332, 0xffffffff4afb0cce );
  TEST_VV_OP( 587,  vredmax.vs, 5201314, 0x00000000000004, 0xffffffff4afb0cce );
  TEST_VV_OP( 588,  vredmax.vs, 5201314, 0x5555555555555556, 0xffffffff4afb0cce );
  TEST_VV_OP( 589,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xffffffff4afb0cce );
  TEST_VV_OP( 590,  vredmax.vs, 5201314, 0x00000000000006, 0xffffffff4afb0cce );
  TEST_VV_OP( 591,  vredmax.vs, 5201314, 0x3333333333333334, 0xffffffff4afb0cce );
  TEST_VV_OP( 592,  vredmax.vs, 5201314, 0x6666666666666667, 0xffffffff4afb0cce );
  TEST_VV_OP( 593,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0xffffffff4afb0cce );
  TEST_VV_OP( 594,  vredmax.vs, 5201314, 0x000000b504f334, 0xffffffff4afb0cce );
  TEST_VV_OP( 595,  vredmax.vs, 5201314, 0x00000000000003, 0x000000b504f334 );
  TEST_VV_OP( 596,  vredmax.vs, 5201314, 0x5555555555555555, 0x000000b504f334 );
  TEST_VV_OP( 597,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x000000b504f334 );
  TEST_VV_OP( 598,  vredmax.vs, 5201314, 0x00000000000005, 0x000000b504f334 );
  TEST_VV_OP( 599,  vredmax.vs, 5201314, 0x3333333333333333, 0x000000b504f334 );
  TEST_VV_OP( 600,  vredmax.vs, 5201314, 0x6666666666666666, 0x000000b504f334 );
  TEST_VV_OP( 601,  vredmax.vs, 5201314, 0xffffffff4afb0ccd, 0x000000b504f334 );
  TEST_VV_OP( 602,  vredmax.vs, 5201314, 0x000000b504f333, 0x000000b504f334 );
  TEST_VV_OP( 603,  vredmax.vs, 5201314, 0x00000000000002, 0x000000b504f334 );
  TEST_VV_OP( 604,  vredmax.vs, 5201314, 0x5555555555555554, 0x000000b504f334 );
  TEST_VV_OP( 605,  vredmax.vs, 5201314, 0x3333333333333332, 0x000000b504f334 );
  TEST_VV_OP( 606,  vredmax.vs, 5201314, 0x6666666666666665, 0x000000b504f334 );
  TEST_VV_OP( 607,  vredmax.vs, 5201314, 0x00000000000000, 0x000000b504f334 );
  TEST_VV_OP( 608,  vredmax.vs, 5201314, 0x000000b504f332, 0x000000b504f334 );
  TEST_VV_OP( 609,  vredmax.vs, 5201314, 0x00000000000004, 0x000000b504f334 );
  TEST_VV_OP( 610,  vredmax.vs, 5201314, 0x5555555555555556, 0x000000b504f334 );
  TEST_VV_OP( 611,  vredmax.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x000000b504f334 );
  TEST_VV_OP( 612,  vredmax.vs, 5201314, 0x00000000000006, 0x000000b504f334 );
  TEST_VV_OP( 613,  vredmax.vs, 5201314, 0x3333333333333334, 0x000000b504f334 );
  TEST_VV_OP( 614,  vredmax.vs, 5201314, 0x6666666666666667, 0x000000b504f334 );
  TEST_VV_OP( 615,  vredmax.vs, 5201314, 0xffffffff4afb0cce, 0x000000b504f334 );
  TEST_VV_OP( 616,  vredmax.vs, 5201314, 0x000000b504f334, 0x000000b504f334 );
  TEST_VV_OP_rd1( 617,  vredmax.vs, 5201314, 0xfffffffffffffffe, 0xfffffffffffffffe);
  TEST_VV_OP_12( 618,  vredmax.vs, 5201314, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_VV_OP_rd2( 619,  vredmax.vs, 5201314, 0xfffffffffffffffd, 0xfffffffffffffffd);
  TEST_VV_OP_13( 620,  vredmax.vs, 5201314, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_VV_OP_rd3( 621,  vredmax.vs, 5201314, 0xfffffffffffffffb, 0xfffffffffffffffb);
  TEST_VV_OP_14( 622,  vredmax.vs, 5201314, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_VV_OP_rd4( 623,  vredmax.vs, 5201314, 0xfffffffffffffff7, 0xfffffffffffffff7);
  TEST_VV_OP_15( 624,  vredmax.vs, 5201314, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_VV_OP_rd5( 625,  vredmax.vs, 5201314, 0xffffffffffffffef, 0xffffffffffffffef);
  TEST_VV_OP_16( 626,  vredmax.vs, 5201314, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_VV_OP_rd6( 627,  vredmax.vs, 5201314, 0xffffffffffffffdf, 0xffffffffffffffdf);
  TEST_VV_OP_17( 628,  vredmax.vs, 5201314, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_VV_OP_rd7( 629,  vredmax.vs, 5201314, 0xffffffffffffffbf, 0xffffffffffffffbf);
  TEST_VV_OP_rd8( 630,  vredmax.vs, 5201314, 0xffffffffffffff7f, 0xffffffffffffff7f);
  TEST_VV_OP_19( 631,  vredmax.vs, 5201314, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_VV_OP_rd9( 632,  vredmax.vs, 5201314, 0xfffffffffffffeff, 0xfffffffffffffeff);
  TEST_VV_OP_110( 633,  vredmax.vs, 5201314, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_VV_OP_rd10( 634,  vredmax.vs, 5201314, 0xfffffffffffffdff, 0xfffffffffffffdff);
  TEST_VV_OP_111( 635,  vredmax.vs, 5201314, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_VV_OP_rd11( 636,  vredmax.vs, 5201314, 0xfffffffffffffbff, 0xfffffffffffffbff);
  TEST_VV_OP_rd13( 637,  vredmax.vs, 5201314, 0xffffffffffffefff, 0xffffffffffffefff);
  TEST_VV_OP_114( 638,  vredmax.vs, 5201314, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_VV_OP_rd14( 639,  vredmax.vs, 5201314, 0xffffffffffffdfff, 0xffffffffffffdfff);
  TEST_VV_OP_115( 640,  vredmax.vs, 5201314, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_VV_OP_rd15( 641,  vredmax.vs, 5201314, 0xffffffffffffbfff, 0xffffffffffffbfff);
  TEST_VV_OP_rd16( 642,  vredmax.vs, 5201314, 0xffffffffffff7fff, 0xffffffffffff7fff);
  TEST_VV_OP_117( 643,  vredmax.vs, 5201314, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_VV_OP_rd17( 644,  vredmax.vs, 5201314, 0xfffffffffffeffff, 0xfffffffffffeffff);
  TEST_VV_OP_118( 645,  vredmax.vs, 5201314, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_VV_OP_rd18( 646,  vredmax.vs, 5201314, 0xfffffffffffdffff, 0xfffffffffffdffff);
  TEST_VV_OP_119( 647,  vredmax.vs, 5201314, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_VV_OP_rd19( 648,  vredmax.vs, 5201314, 0xfffffffffffbffff, 0xfffffffffffbffff);
  TEST_VV_OP_rd21( 649,  vredmax.vs, 5201314, 0xffffffffffefffff, 0xffffffffffefffff);
  TEST_VV_OP_122( 650,  vredmax.vs, 5201314, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_VV_OP_rd22( 651,  vredmax.vs, 5201314, 0xffffffffffdfffff, 0xffffffffffdfffff);
  TEST_VV_OP_123( 652,  vredmax.vs, 5201314, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_VV_OP_rd23( 653,  vredmax.vs, 5201314, 0xffffffffffbfffff, 0xffffffffffbfffff);
  TEST_VV_OP_rd25( 654,  vredmax.vs, 5201314, 0xfffffffffeffffff, 0xfffffffffeffffff);
  TEST_VV_OP_126( 655,  vredmax.vs, 5201314, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_VV_OP_rd26( 656,  vredmax.vs, 5201314, 0xfffffffffdffffff, 0xfffffffffdffffff);
  TEST_VV_OP_127( 657,  vredmax.vs, 5201314, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_VV_OP_rd27( 658,  vredmax.vs, 5201314, 0xfffffffffbffffff, 0xfffffffffbffffff);
  TEST_VV_OP_128( 659,  vredmax.vs, 5201314, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_VV_OP_rd28( 660,  vredmax.vs, 5201314, 0xfffffffff7ffffff, 0xfffffffff7ffffff);
  TEST_VV_OP_129( 661,  vredmax.vs, 5201314, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_VV_OP_rd29( 662,  vredmax.vs, 5201314, 0xffffffffefffffff, 0xffffffffefffffff);
  TEST_VV_OP_130( 663,  vredmax.vs, 5201314, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_VV_OP_rd30( 664,  vredmax.vs, 5201314, 0xffffffffdfffffff, 0xffffffffdfffffff);
  TEST_VV_OP_131( 665,  vredmax.vs, 5201314, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_VV_OP_rd31( 666,  vredmax.vs, 5201314, 0xffffffffbfffffff, 0xffffffffbfffffff);
  TEST_VV_OP_12( 667,  vredmax.vs, 5201314, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_VV_OP_rd1( 668,  vredmax.vs, 5201314, 0xffffffff7fffffff, 0xffffffff7fffffff);
  TEST_VV_OP_13( 669,  vredmax.vs, 5201314, 0xffffffff7fffffff, 0xffffffff7fffffff );
  TEST_VV_OP_rd2( 670,  vredmax.vs, 5201314, 0xfffffffeffffffff, 0xfffffffeffffffff);
  TEST_VV_OP_14( 671,  vredmax.vs, 5201314, 0xfffffffeffffffff, 0xfffffffeffffffff );
  TEST_VV_OP_rd3( 672,  vredmax.vs, 5201314, 0xfffffffdffffffff, 0xfffffffdffffffff);
  TEST_VV_OP_15( 673,  vredmax.vs, 5201314, 0xfffffffdffffffff, 0xfffffffdffffffff );
  TEST_VV_OP_rd4( 674,  vredmax.vs, 5201314, 0xfffffffbffffffff, 0xfffffffbffffffff);
  TEST_VV_OP_16( 675,  vredmax.vs, 5201314, 0xfffffffbffffffff, 0xfffffffbffffffff );
  TEST_VV_OP_rd5( 676,  vredmax.vs, 5201314, 0xfffffff7ffffffff, 0xfffffff7ffffffff);
  TEST_VV_OP_17( 677,  vredmax.vs, 5201314, 0xfffffff7ffffffff, 0xfffffff7ffffffff );
  TEST_VV_OP_rd6( 678,  vredmax.vs, 5201314, 0xffffffefffffffff, 0xffffffefffffffff);
  TEST_VV_OP_rd7( 679,  vredmax.vs, 5201314, 0xffffffdfffffffff, 0xffffffdfffffffff);
  TEST_VV_OP_19( 680,  vredmax.vs, 5201314, 0xffffffdfffffffff, 0xffffffdfffffffff );
  TEST_VV_OP_rd8( 681,  vredmax.vs, 5201314, 0xffffffbfffffffff, 0xffffffbfffffffff);
  TEST_VV_OP_110( 682,  vredmax.vs, 5201314, 0xffffffbfffffffff, 0xffffffbfffffffff );
  TEST_VV_OP_rd9( 683,  vredmax.vs, 5201314, 0xffffff7fffffffff, 0xffffff7fffffffff);
  TEST_VV_OP_111( 684,  vredmax.vs, 5201314, 0xffffff7fffffffff, 0xffffff7fffffffff );
  TEST_VV_OP_rd10( 685,  vredmax.vs, 5201314, 0xfffffeffffffffff, 0xfffffeffffffffff);
  TEST_VV_OP_rd11( 686,  vredmax.vs, 5201314, 0xfffffdffffffffff, 0xfffffdffffffffff);
  TEST_VV_OP_113( 687,  vredmax.vs, 5201314, 0xfffffdffffffffff, 0xfffffdffffffffff );
  TEST_VV_OP_rd13( 688,  vredmax.vs, 5201314, 0xfffff7ffffffffff, 0xfffff7ffffffffff);
  TEST_VV_OP_115( 689,  vredmax.vs, 5201314, 0xfffff7ffffffffff, 0xfffff7ffffffffff );
  TEST_VV_OP_rd14( 690,  vredmax.vs, 5201314, 0xffffefffffffffff, 0xffffefffffffffff);
  TEST_VV_OP_rd15( 691,  vredmax.vs, 5201314, 0xffffdfffffffffff, 0xffffdfffffffffff);
  TEST_VV_OP_117( 692,  vredmax.vs, 5201314, 0xffffdfffffffffff, 0xffffdfffffffffff );
  TEST_VV_OP_rd16( 693,  vredmax.vs, 5201314, 0xffffbfffffffffff, 0xffffbfffffffffff);
  TEST_VV_OP_118( 694,  vredmax.vs, 5201314, 0xffffbfffffffffff, 0xffffbfffffffffff );
  TEST_VV_OP_rd17( 695,  vredmax.vs, 5201314, 0xffff7fffffffffff, 0xffff7fffffffffff);
  TEST_VV_OP_119( 696,  vredmax.vs, 5201314, 0xffff7fffffffffff, 0xffff7fffffffffff );
  TEST_VV_OP_rd18( 697,  vredmax.vs, 5201314, 0xfffeffffffffffff, 0xfffeffffffffffff);
  TEST_VV_OP_rd19( 698,  vredmax.vs, 5201314, 0xfffdffffffffffff, 0xfffdffffffffffff);
  TEST_VV_OP_121( 699,  vredmax.vs, 5201314, 0xfffdffffffffffff, 0xfffdffffffffffff );
  TEST_VV_OP_rd21( 700,  vredmax.vs, 5201314, 0xfff7ffffffffffff, 0xfff7ffffffffffff);
  TEST_VV_OP_123( 701,  vredmax.vs, 5201314, 0xfff7ffffffffffff, 0xfff7ffffffffffff );
  TEST_VV_OP_rd22( 702,  vredmax.vs, 5201314, 0xffefffffffffffff, 0xffefffffffffffff);
  TEST_VV_OP_rd23( 703,  vredmax.vs, 5201314, 0xffdfffffffffffff, 0xffdfffffffffffff);
  TEST_VV_OP_125( 704,  vredmax.vs, 5201314, 0xffdfffffffffffff, 0xffdfffffffffffff );
  TEST_VV_OP_rd25( 705,  vredmax.vs, 5201314, 0xff7fffffffffffff, 0xff7fffffffffffff);
  TEST_VV_OP_127( 706,  vredmax.vs, 5201314, 0xff7fffffffffffff, 0xff7fffffffffffff );
  TEST_VV_OP_rd26( 707,  vredmax.vs, 5201314, 0xfeffffffffffffff, 0xfeffffffffffffff);
  TEST_VV_OP_128( 708,  vredmax.vs, 5201314, 0xfeffffffffffffff, 0xfeffffffffffffff );
  TEST_VV_OP_rd27( 709,  vredmax.vs, 5201314, 0xfdffffffffffffff, 0xfdffffffffffffff);
  TEST_VV_OP_129( 710,  vredmax.vs, 5201314, 0xfdffffffffffffff, 0xfdffffffffffffff );
  TEST_VV_OP_rd28( 711,  vredmax.vs, 5201314, 0xfbffffffffffffff, 0xfbffffffffffffff);
  TEST_VV_OP_130( 712,  vredmax.vs, 5201314, 0xfbffffffffffffff, 0xfbffffffffffffff );
  TEST_VV_OP_rd29( 713,  vredmax.vs, 5201314, 0xf7ffffffffffffff, 0xf7ffffffffffffff);
  TEST_VV_OP_131( 714,  vredmax.vs, 5201314, 0xf7ffffffffffffff, 0xf7ffffffffffffff );
  TEST_VV_OP_rd30( 715,  vredmax.vs, 5201314, 0xefffffffffffffff, 0xefffffffffffffff);
  TEST_VV_OP_12( 716,  vredmax.vs, 5201314, 0xefffffffffffffff, 0xefffffffffffffff );
  TEST_VV_OP_rd31( 717,  vredmax.vs, 5201314, 0xdfffffffffffffff, 0xdfffffffffffffff);
  TEST_VV_OP_13( 718,  vredmax.vs, 5201314, 0xdfffffffffffffff, 0xdfffffffffffffff );
  TEST_VV_OP_rd1( 719,  vredmax.vs, 5201314, 0xbfffffffffffffff, 0xbfffffffffffffff);
  TEST_VV_OP_14( 720,  vredmax.vs, 5201314, 0xbfffffffffffffff, 0xbfffffffffffffff );
  TEST_VV_OP_rd2( 721,  vredmax.vs, 5201314, 0x7fffffffffffffff, 0x7fffffffffffffff);
  TEST_VV_OP_15( 722,  vredmax.vs, 5201314, 0x7fffffffffffffff, 0x7fffffffffffffff );
  TEST_VV_OP_rd3( 723,  vredmax.vs, 5201314, 0x00000000000001, 0x00000000000001);
  TEST_VV_OP_16( 724,  vredmax.vs, 5201314, 0x00000000000001, 0x00000000000001 );
  TEST_VV_OP_rd4( 725,  vredmax.vs, 5201314, 0x00000000000002, 0x00000000000002);
  TEST_VV_OP_17( 726,  vredmax.vs, 5201314, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP_rd5( 727,  vredmax.vs, 5201314, 0x00000000000004, 0x00000000000004);
  TEST_VV_OP_rd6( 728,  vredmax.vs, 5201314, 0x00000000000008, 0x00000000000008);
  TEST_VV_OP_19( 729,  vredmax.vs, 5201314, 0x00000000000008, 0x00000000000008 );
  TEST_VV_OP_rd7( 730,  vredmax.vs, 5201314, 0x00000000000010, 0x00000000000010);
  TEST_VV_OP_110( 731,  vredmax.vs, 5201314, 0x00000000000010, 0x00000000000010 );
  TEST_VV_OP_rd8( 732,  vredmax.vs, 5201314, 0x00000000000020, 0x00000000000020);
  TEST_VV_OP_111( 733,  vredmax.vs, 5201314, 0x00000000000020, 0x00000000000020 );
  TEST_VV_OP_rd9( 734,  vredmax.vs, 5201314, 0x00000000000040, 0x00000000000040);
  TEST_VV_OP_rd10( 735,  vredmax.vs, 5201314, 0x00000000000080, 0x00000000000080);
  TEST_VV_OP_113( 736,  vredmax.vs, 5201314, 0x00000000000080, 0x00000000000080 );
  TEST_VV_OP_rd11( 737,  vredmax.vs, 5201314, 0x00000000000100, 0x00000000000100);
  TEST_VV_OP_114( 738,  vredmax.vs, 5201314, 0x00000000000100, 0x00000000000100 );
  TEST_VV_OP_rd13( 739,  vredmax.vs, 5201314, 0x00000000000400, 0x00000000000400);
  TEST_VV_OP_rd14( 740,  vredmax.vs, 5201314, 0x00000000000800, 0x00000000000800);
  TEST_VV_OP_117( 741,  vredmax.vs, 5201314, 0x00000000000800, 0x00000000000800 );
  TEST_VV_OP_rd15( 742,  vredmax.vs, 5201314, 0x00000000001000, 0x00000000001000);
  TEST_VV_OP_118( 743,  vredmax.vs, 5201314, 0x00000000001000, 0x00000000001000 );
  TEST_VV_OP_rd16( 744,  vredmax.vs, 5201314, 0x00000000002000, 0x00000000002000);
  TEST_VV_OP_119( 745,  vredmax.vs, 5201314, 0x00000000002000, 0x00000000002000 );
  TEST_VV_OP_rd17( 746,  vredmax.vs, 5201314, 0x00000000004000, 0x00000000004000);
  TEST_VV_OP_rd18( 747,  vredmax.vs, 5201314, 0x00000000008000, 0x00000000008000);
  TEST_VV_OP_121( 748,  vredmax.vs, 5201314, 0x00000000008000, 0x00000000008000 );
  TEST_VV_OP_rd19( 749,  vredmax.vs, 5201314, 0x00000000010000, 0x00000000010000);
  TEST_VV_OP_122( 750,  vredmax.vs, 5201314, 0x00000000010000, 0x00000000010000 );
  TEST_VV_OP_rd21( 751,  vredmax.vs, 5201314, 0x00000000040000, 0x00000000040000);
  TEST_VV_OP_rd22( 752,  vredmax.vs, 5201314, 0x00000000080000, 0x00000000080000);
  TEST_VV_OP_125( 753,  vredmax.vs, 5201314, 0x00000000080000, 0x00000000080000 );
  TEST_VV_OP_rd23( 754,  vredmax.vs, 5201314, 0x00000000100000, 0x00000000100000);
  TEST_VV_OP_126( 755,  vredmax.vs, 5201314, 0x00000000100000, 0x00000000100000 );
  TEST_VV_OP_rd25( 756,  vredmax.vs, 5201314, 0x00000000400000, 0x00000000400000);
  TEST_VV_OP_128( 757,  vredmax.vs, 5201314, 0x00000000400000, 0x00000000400000 );
  TEST_VV_OP_rd26( 758,  vredmax.vs, 5201314, 0x00000000800000, 0x00000000800000);
  TEST_VV_OP_129( 759,  vredmax.vs, 5201314, 0x00000000800000, 0x00000000800000 );
  TEST_VV_OP_rd27( 760,  vredmax.vs, 5201314, 0x00000001000000, 0x00000001000000);
  TEST_VV_OP_130( 761,  vredmax.vs, 5201314, 0x00000001000000, 0x00000001000000 );
  TEST_VV_OP_rd28( 762,  vredmax.vs, 5201314, 0x00000002000000, 0x00000002000000);
  TEST_VV_OP_131( 763,  vredmax.vs, 5201314, 0x00000002000000, 0x00000002000000 );
  TEST_VV_OP_rd29( 764,  vredmax.vs, 5201314, 0x00000004000000, 0x00000004000000);
  TEST_VV_OP_12( 765,  vredmax.vs, 5201314, 0x00000004000000, 0x00000004000000 );
  TEST_VV_OP_rd30( 766,  vredmax.vs, 5201314, 0x00000008000000, 0x00000008000000);
  TEST_VV_OP_13( 767,  vredmax.vs, 5201314, 0x00000008000000, 0x00000008000000 );
  TEST_VV_OP_rd31( 768,  vredmax.vs, 5201314, 0x00000010000000, 0x00000010000000);
  TEST_VV_OP_14( 769,  vredmax.vs, 5201314, 0x00000010000000, 0x00000010000000 );
  TEST_VV_OP_rd1( 770,  vredmax.vs, 5201314, 0x00000020000000, 0x00000020000000);
  TEST_VV_OP_15( 771,  vredmax.vs, 5201314, 0x00000020000000, 0x00000020000000 );
  TEST_VV_OP_rd2( 772,  vredmax.vs, 5201314, 0x00000040000000, 0x00000040000000);
  TEST_VV_OP_16( 773,  vredmax.vs, 5201314, 0x00000040000000, 0x00000040000000 );
  TEST_VV_OP_rd3( 774,  vredmax.vs, 5201314, 0x00000080000000, 0x00000080000000);
  TEST_VV_OP_17( 775,  vredmax.vs, 5201314, 0x00000080000000, 0x00000080000000 );
  TEST_VV_OP_rd4( 776,  vredmax.vs, 5201314, 0x00000100000000, 0x00000100000000);
  TEST_VV_OP_rd5( 777,  vredmax.vs, 5201314, 0x00000200000000, 0x00000200000000);
  TEST_VV_OP_19( 778,  vredmax.vs, 5201314, 0x00000200000000, 0x00000200000000 );
  TEST_VV_OP_rd6( 779,  vredmax.vs, 5201314, 0x00000400000000, 0x00000400000000);
  TEST_VV_OP_110( 780,  vredmax.vs, 5201314, 0x00000400000000, 0x00000400000000 );
  TEST_VV_OP_rd7( 781,  vredmax.vs, 5201314, 0x00000800000000, 0x00000800000000);
  TEST_VV_OP_111( 782,  vredmax.vs, 5201314, 0x00000800000000, 0x00000800000000 );
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
    
    

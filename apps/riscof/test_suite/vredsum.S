#----------------------------------------------------------------------------- 
    # vredsum.S
    #-----------------------------------------------------------------------------
    #
    # Test vredsum instructions.
    #

    #include "model_test.h"
    #include "arch_test.h"
    #include "test_macros_vector.h"

RVTEST_ISA("RV64RV64IMAFDCVZicsr")
    
    .section .text.init
    .globl rvtest_entry_point
    rvtest_entry_point:
    
    #ifdef TEST_CASE_1
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vredsum)
    
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
  TEST_VV_OP( 2,  vredsum.vs, 5201314, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_VV_OP( 3,  vredsum.vs, 5201314, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_VV_OP( 4,  vredsum.vs, 5201314, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_VV_OP( 5,  vredsum.vs, 5201314, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_VV_OP( 6,  vredsum.vs, 5201314, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_VV_OP( 7,  vredsum.vs, 5201314, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_VV_OP( 8,  vredsum.vs, 5201314, 0xffffffffffffffbf, 0xffffffffffffffbf );
  TEST_VV_OP( 9,  vredsum.vs, 5201314, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_VV_OP( 10,  vredsum.vs, 5201314, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_VV_OP( 11,  vredsum.vs, 5201314, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_VV_OP( 12,  vredsum.vs, 5201314, 0xfffffffffffffbff, 0xfffffffffffffbff );
  TEST_VV_OP( 13,  vredsum.vs, 5201314, 0xfffffffffffff7ff, 0xfffffffffffff7ff );
  TEST_VV_OP( 14,  vredsum.vs, 5201314, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_VV_OP( 15,  vredsum.vs, 5201314, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_VV_OP( 16,  vredsum.vs, 5201314, 0xffffffffffffbfff, 0xffffffffffffbfff );
  TEST_VV_OP( 17,  vredsum.vs, 5201314, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_VV_OP( 18,  vredsum.vs, 5201314, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_VV_OP( 19,  vredsum.vs, 5201314, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_VV_OP( 20,  vredsum.vs, 5201314, 0xfffffffffffbffff, 0xfffffffffffbffff );
  TEST_VV_OP( 21,  vredsum.vs, 5201314, 0xfffffffffff7ffff, 0xfffffffffff7ffff );
  TEST_VV_OP( 22,  vredsum.vs, 5201314, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_VV_OP( 23,  vredsum.vs, 5201314, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_VV_OP( 24,  vredsum.vs, 5201314, 0xffffffffffbfffff, 0xffffffffffbfffff );
  TEST_VV_OP( 25,  vredsum.vs, 5201314, 0xffffffffff7fffff, 0xffffffffff7fffff );
  TEST_VV_OP( 26,  vredsum.vs, 5201314, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_VV_OP( 27,  vredsum.vs, 5201314, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_VV_OP( 28,  vredsum.vs, 5201314, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_VV_OP( 29,  vredsum.vs, 5201314, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_VV_OP( 30,  vredsum.vs, 5201314, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_VV_OP( 31,  vredsum.vs, 5201314, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_VV_OP( 32,  vredsum.vs, 5201314, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_VV_OP( 33,  vredsum.vs, 5201314, 0xffffffff7fffffff, 0xffffffff7fffffff );
  TEST_VV_OP( 34,  vredsum.vs, 5201314, 0xfffffffeffffffff, 0xfffffffeffffffff );
  TEST_VV_OP( 35,  vredsum.vs, 5201314, 0xfffffffdffffffff, 0xfffffffdffffffff );
  TEST_VV_OP( 36,  vredsum.vs, 5201314, 0xfffffffbffffffff, 0xfffffffbffffffff );
  TEST_VV_OP( 37,  vredsum.vs, 5201314, 0xfffffff7ffffffff, 0xfffffff7ffffffff );
  TEST_VV_OP( 38,  vredsum.vs, 5201314, 0xffffffefffffffff, 0xffffffefffffffff );
  TEST_VV_OP( 39,  vredsum.vs, 5201314, 0xffffffdfffffffff, 0xffffffdfffffffff );
  TEST_VV_OP( 40,  vredsum.vs, 5201314, 0xffffffbfffffffff, 0xffffffbfffffffff );
  TEST_VV_OP( 41,  vredsum.vs, 5201314, 0xffffff7fffffffff, 0xffffff7fffffffff );
  TEST_VV_OP( 42,  vredsum.vs, 5201314, 0xfffffeffffffffff, 0xfffffeffffffffff );
  TEST_VV_OP( 43,  vredsum.vs, 5201314, 0xfffffdffffffffff, 0xfffffdffffffffff );
  TEST_VV_OP( 44,  vredsum.vs, 5201314, 0xfffffbffffffffff, 0xfffffbffffffffff );
  TEST_VV_OP( 45,  vredsum.vs, 5201314, 0xfffff7ffffffffff, 0xfffff7ffffffffff );
  TEST_VV_OP( 46,  vredsum.vs, 5201314, 0xffffefffffffffff, 0xffffefffffffffff );
  TEST_VV_OP( 47,  vredsum.vs, 5201314, 0xffffdfffffffffff, 0xffffdfffffffffff );
  TEST_VV_OP( 48,  vredsum.vs, 5201314, 0xffffbfffffffffff, 0xffffbfffffffffff );
  TEST_VV_OP( 49,  vredsum.vs, 5201314, 0xffff7fffffffffff, 0xffff7fffffffffff );
  TEST_VV_OP( 50,  vredsum.vs, 5201314, 0xfffeffffffffffff, 0xfffeffffffffffff );
  TEST_VV_OP( 51,  vredsum.vs, 5201314, 0xfffdffffffffffff, 0xfffdffffffffffff );
  TEST_VV_OP( 52,  vredsum.vs, 5201314, 0xfffbffffffffffff, 0xfffbffffffffffff );
  TEST_VV_OP( 53,  vredsum.vs, 5201314, 0xfff7ffffffffffff, 0xfff7ffffffffffff );
  TEST_VV_OP( 54,  vredsum.vs, 5201314, 0xffefffffffffffff, 0xffefffffffffffff );
  TEST_VV_OP( 55,  vredsum.vs, 5201314, 0xffdfffffffffffff, 0xffdfffffffffffff );
  TEST_VV_OP( 56,  vredsum.vs, 5201314, 0xffbfffffffffffff, 0xffbfffffffffffff );
  TEST_VV_OP( 57,  vredsum.vs, 5201314, 0xff7fffffffffffff, 0xff7fffffffffffff );
  TEST_VV_OP( 58,  vredsum.vs, 5201314, 0xfeffffffffffffff, 0xfeffffffffffffff );
  TEST_VV_OP( 59,  vredsum.vs, 5201314, 0xfdffffffffffffff, 0xfdffffffffffffff );
  TEST_VV_OP( 60,  vredsum.vs, 5201314, 0xfbffffffffffffff, 0xfbffffffffffffff );
  TEST_VV_OP( 61,  vredsum.vs, 5201314, 0xf7ffffffffffffff, 0xf7ffffffffffffff );
  TEST_VV_OP( 62,  vredsum.vs, 5201314, 0xefffffffffffffff, 0xefffffffffffffff );
  TEST_VV_OP( 63,  vredsum.vs, 5201314, 0xdfffffffffffffff, 0xdfffffffffffffff );
  TEST_VV_OP( 64,  vredsum.vs, 5201314, 0xbfffffffffffffff, 0xbfffffffffffffff );
  TEST_VV_OP( 65,  vredsum.vs, 5201314, 0x7fffffffffffffff, 0x7fffffffffffffff );
  TEST_VV_OP( 66,  vredsum.vs, 5201314, 0x00000000000001, 0x00000000000001 );
  TEST_VV_OP( 67,  vredsum.vs, 5201314, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP( 68,  vredsum.vs, 5201314, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP( 69,  vredsum.vs, 5201314, 0x00000000000008, 0x00000000000008 );
  TEST_VV_OP( 70,  vredsum.vs, 5201314, 0x00000000000010, 0x00000000000010 );
  TEST_VV_OP( 71,  vredsum.vs, 5201314, 0x00000000000020, 0x00000000000020 );
  TEST_VV_OP( 72,  vredsum.vs, 5201314, 0x00000000000040, 0x00000000000040 );
  TEST_VV_OP( 73,  vredsum.vs, 5201314, 0x00000000000080, 0x00000000000080 );
  TEST_VV_OP( 74,  vredsum.vs, 5201314, 0x00000000000100, 0x00000000000100 );
  TEST_VV_OP( 75,  vredsum.vs, 5201314, 0x00000000000200, 0x00000000000200 );
  TEST_VV_OP( 76,  vredsum.vs, 5201314, 0x00000000000400, 0x00000000000400 );
  TEST_VV_OP( 77,  vredsum.vs, 5201314, 0x00000000000800, 0x00000000000800 );
  TEST_VV_OP( 78,  vredsum.vs, 5201314, 0x00000000001000, 0x00000000001000 );
  TEST_VV_OP( 79,  vredsum.vs, 5201314, 0x00000000002000, 0x00000000002000 );
  TEST_VV_OP( 80,  vredsum.vs, 5201314, 0x00000000004000, 0x00000000004000 );
  TEST_VV_OP( 81,  vredsum.vs, 5201314, 0x00000000008000, 0x00000000008000 );
  TEST_VV_OP( 82,  vredsum.vs, 5201314, 0x00000000010000, 0x00000000010000 );
  TEST_VV_OP( 83,  vredsum.vs, 5201314, 0x00000000020000, 0x00000000020000 );
  TEST_VV_OP( 84,  vredsum.vs, 5201314, 0x00000000040000, 0x00000000040000 );
  TEST_VV_OP( 85,  vredsum.vs, 5201314, 0x00000000080000, 0x00000000080000 );
  TEST_VV_OP( 86,  vredsum.vs, 5201314, 0x00000000100000, 0x00000000100000 );
  TEST_VV_OP( 87,  vredsum.vs, 5201314, 0x00000000200000, 0x00000000200000 );
  TEST_VV_OP( 88,  vredsum.vs, 5201314, 0x00000000400000, 0x00000000400000 );
  TEST_VV_OP( 89,  vredsum.vs, 5201314, 0x00000000800000, 0x00000000800000 );
  TEST_VV_OP( 90,  vredsum.vs, 5201314, 0x00000001000000, 0x00000001000000 );
  TEST_VV_OP( 91,  vredsum.vs, 5201314, 0x00000002000000, 0x00000002000000 );
  TEST_VV_OP( 92,  vredsum.vs, 5201314, 0x00000004000000, 0x00000004000000 );
  TEST_VV_OP( 93,  vredsum.vs, 5201314, 0x00000008000000, 0x00000008000000 );
  TEST_VV_OP( 94,  vredsum.vs, 5201314, 0x00000010000000, 0x00000010000000 );
  TEST_VV_OP( 95,  vredsum.vs, 5201314, 0x00000020000000, 0x00000020000000 );
  TEST_VV_OP( 96,  vredsum.vs, 5201314, 0x00000040000000, 0x00000040000000 );
  TEST_VV_OP( 97,  vredsum.vs, 5201314, 0x00000080000000, 0x00000080000000 );
  TEST_VV_OP( 98,  vredsum.vs, 5201314, 0x00000100000000, 0x00000100000000 );
  TEST_VV_OP( 99,  vredsum.vs, 5201314, 0x00000200000000, 0x00000200000000 );
  TEST_VV_OP( 100,  vredsum.vs, 5201314, 0x00000400000000, 0x00000400000000 );
  TEST_VV_OP( 101,  vredsum.vs, 5201314, 0x00000800000000, 0x00000800000000 );
  TEST_VV_OP( 102,  vredsum.vs, 5201314, 0x00001000000000, 0x00001000000000 );
  TEST_VV_OP( 103,  vredsum.vs, 5201314, 0x00002000000000, 0x00002000000000 );
  TEST_VV_OP( 104,  vredsum.vs, 5201314, 0x00004000000000, 0x00004000000000 );
  TEST_VV_OP( 105,  vredsum.vs, 5201314, 0x00008000000000, 0x00008000000000 );
  TEST_VV_OP( 106,  vredsum.vs, 5201314, 0x00010000000000, 0x00010000000000 );
  TEST_VV_OP( 107,  vredsum.vs, 5201314, 0x00020000000000, 0x00020000000000 );
  TEST_VV_OP( 108,  vredsum.vs, 5201314, 0x00040000000000, 0x00040000000000 );
  TEST_VV_OP( 109,  vredsum.vs, 5201314, 0x00080000000000, 0x00080000000000 );
  TEST_VV_OP( 110,  vredsum.vs, 5201314, 0x00100000000000, 0x00100000000000 );
  TEST_VV_OP( 111,  vredsum.vs, 5201314, 0x00200000000000, 0x00200000000000 );
  TEST_VV_OP( 112,  vredsum.vs, 5201314, 0x00400000000000, 0x00400000000000 );
  TEST_VV_OP( 113,  vredsum.vs, 5201314, 0x00800000000000, 0x00800000000000 );
  TEST_VV_OP( 114,  vredsum.vs, 5201314, 0x01000000000000, 0x01000000000000 );
  TEST_VV_OP( 115,  vredsum.vs, 5201314, 0x02000000000000, 0x02000000000000 );
  TEST_VV_OP( 116,  vredsum.vs, 5201314, 0x04000000000000, 0x04000000000000 );
  TEST_VV_OP( 117,  vredsum.vs, 5201314, 0x08000000000000, 0x08000000000000 );
  TEST_VV_OP( 118,  vredsum.vs, 5201314, 0x10000000000000, 0x10000000000000 );
  TEST_VV_OP( 119,  vredsum.vs, 5201314, 0x20000000000000, 0x20000000000000 );
  TEST_VV_OP( 120,  vredsum.vs, 5201314, 0x40000000000000, 0x40000000000000 );
  TEST_VV_OP( 121,  vredsum.vs, 5201314, 0x80000000000000, 0x80000000000000 );
  TEST_VV_OP( 122,  vredsum.vs, 5201314, 0x100000000000000, 0x100000000000000 );
  TEST_VV_OP( 123,  vredsum.vs, 5201314, 0x200000000000000, 0x200000000000000 );
  TEST_VV_OP( 124,  vredsum.vs, 5201314, 0x400000000000000, 0x400000000000000 );
  TEST_VV_OP( 125,  vredsum.vs, 5201314, 0x800000000000000, 0x800000000000000 );
  TEST_VV_OP( 126,  vredsum.vs, 5201314, 0x1000000000000000, 0x1000000000000000 );
  TEST_VV_OP( 127,  vredsum.vs, 5201314, 0x2000000000000000, 0x2000000000000000 );
  TEST_VV_OP( 128,  vredsum.vs, 5201314, 0x4000000000000000, 0x4000000000000000 );
  TEST_VV_OP( 129,  vredsum.vs, 5201314, 0x8000000000000000, 0x8000000000000000 );
  TEST_VV_OP( 130,  vredsum.vs, 5201314, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP( 131,  vredsum.vs, 5201314, 0x5555555555555555, 0x00000000000003 );
  TEST_VV_OP( 132,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP( 133,  vredsum.vs, 5201314, 0x00000000000005, 0x00000000000003 );
  TEST_VV_OP( 134,  vredsum.vs, 5201314, 0x3333333333333333, 0x00000000000003 );
  TEST_VV_OP( 135,  vredsum.vs, 5201314, 0x6666666666666666, 0x00000000000003 );
  TEST_VV_OP( 136,  vredsum.vs, 5201314, 0x5555555555555555, 0x00000000000003 );
  TEST_VV_OP( 137,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000003 );
  TEST_VV_OP( 138,  vredsum.vs, 5201314, 0x000000b504f333, 0x00000000000003 );
  TEST_VV_OP( 139,  vredsum.vs, 5201314, 0x00000000000002, 0x00000000000003 );
  TEST_VV_OP( 140,  vredsum.vs, 5201314, 0x5555555555555554, 0x00000000000003 );
  TEST_VV_OP( 141,  vredsum.vs, 5201314, 0x3333333333333332, 0x00000000000003 );
  TEST_VV_OP( 142,  vredsum.vs, 5201314, 0x6666666666666665, 0x5555555555555555 );
  TEST_VV_OP( 143,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP( 144,  vredsum.vs, 5201314, 0x00000000000000, 0x00000000000003 );
  TEST_VV_OP( 145,  vredsum.vs, 5201314, 0x000000b504f332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 146,  vredsum.vs, 5201314, 0x00000000000004, 0x00000000000003 );
  TEST_VV_OP( 147,  vredsum.vs, 5201314, 0x5555555555555556, 0x00000000000003 );
  TEST_VV_OP( 148,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000003 );
  TEST_VV_OP( 149,  vredsum.vs, 5201314, 0x00000000000006, 0x00000000000003 );
  TEST_VV_OP( 150,  vredsum.vs, 5201314, 0x3333333333333334, 0x00000000000003 );
  TEST_VV_OP( 151,  vredsum.vs, 5201314, 0x6666666666666667, 0x00000000000003 );
  TEST_VV_OP( 152,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000000 );
  TEST_VV_OP( 153,  vredsum.vs, 5201314, 0x000000b504f334, 0x00000000000003 );
  TEST_VV_OP( 154,  vredsum.vs, 5201314, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP( 155,  vredsum.vs, 5201314, 0x5555555555555555, 0x5555555555555555 );
  TEST_VV_OP( 156,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555 );
  TEST_VV_OP( 157,  vredsum.vs, 5201314, 0x00000000000005, 0x5555555555555555 );
  TEST_VV_OP( 158,  vredsum.vs, 5201314, 0x3333333333333333, 0x5555555555555555 );
  TEST_VV_OP( 159,  vredsum.vs, 5201314, 0x6666666666666666, 0x5555555555555555 );
  TEST_VV_OP( 160,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x5555555555555555 );
  TEST_VV_OP( 161,  vredsum.vs, 5201314, 0x000000b504f333, 0x5555555555555555 );
  TEST_VV_OP( 162,  vredsum.vs, 5201314, 0x00000000000002, 0x5555555555555555 );
  TEST_VV_OP( 163,  vredsum.vs, 5201314, 0x5555555555555554, 0x5555555555555555 );
  TEST_VV_OP( 164,  vredsum.vs, 5201314, 0x3333333333333332, 0x5555555555555555 );
  TEST_VV_OP( 165,  vredsum.vs, 5201314, 0x6666666666666665, 0x5555555555555555 );
  TEST_VV_OP( 166,  vredsum.vs, 5201314, 0x00000000000000, 0x5555555555555555 );
  TEST_VV_OP( 167,  vredsum.vs, 5201314, 0x000000b504f332, 0x5555555555555555 );
  TEST_VV_OP( 168,  vredsum.vs, 5201314, 0x00000000000004, 0x5555555555555555 );
  TEST_VV_OP( 169,  vredsum.vs, 5201314, 0x5555555555555556, 0x5555555555555555 );
  TEST_VV_OP( 170,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x5555555555555555 );
  TEST_VV_OP( 171,  vredsum.vs, 5201314, 0x00000000000006, 0x5555555555555555 );
  TEST_VV_OP( 172,  vredsum.vs, 5201314, 0x3333333333333334, 0x5555555555555555 );
  TEST_VV_OP( 173,  vredsum.vs, 5201314, 0x6666666666666667, 0x5555555555555555 );
  TEST_VV_OP( 174,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x5555555555555555 );
  TEST_VV_OP( 175,  vredsum.vs, 5201314, 0x000000b504f334, 0x5555555555555555 );
  TEST_VV_OP( 176,  vredsum.vs, 5201314, 0x00000000000003, 0x5555555555555555 );
  TEST_VV_OP( 177,  vredsum.vs, 5201314, 0x5555555555555555, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 178,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 179,  vredsum.vs, 5201314, 0x00000000000005, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 180,  vredsum.vs, 5201314, 0x3333333333333333, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 181,  vredsum.vs, 5201314, 0x6666666666666666, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 182,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 183,  vredsum.vs, 5201314, 0x000000b504f333, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 184,  vredsum.vs, 5201314, 0x00000000000002, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 185,  vredsum.vs, 5201314, 0x5555555555555554, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 186,  vredsum.vs, 5201314, 0x3333333333333332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 187,  vredsum.vs, 5201314, 0x6666666666666665, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 188,  vredsum.vs, 5201314, 0x00000000000000, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 189,  vredsum.vs, 5201314, 0x00000000000000, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 190,  vredsum.vs, 5201314, 0x000000b504f332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 191,  vredsum.vs, 5201314, 0x00000000000004, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 192,  vredsum.vs, 5201314, 0x5555555555555556, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 193,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 194,  vredsum.vs, 5201314, 0x00000000000006, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 195,  vredsum.vs, 5201314, 0x3333333333333334, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 196,  vredsum.vs, 5201314, 0x6666666666666667, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 197,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 198,  vredsum.vs, 5201314, 0x000000b504f334, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 199,  vredsum.vs, 5201314, 0x00000000000003, 0x00000000000005 );
  TEST_VV_OP( 200,  vredsum.vs, 5201314, 0x5555555555555555, 0x00000000000005 );
  TEST_VV_OP( 201,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000005 );
  TEST_VV_OP( 202,  vredsum.vs, 5201314, 0x00000000000005, 0x00000000000005 );
  TEST_VV_OP( 203,  vredsum.vs, 5201314, 0x3333333333333333, 0x00000000000005 );
  TEST_VV_OP( 204,  vredsum.vs, 5201314, 0x6666666666666666, 0x00000000000005 );
  TEST_VV_OP( 205,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000005 );
  TEST_VV_OP( 206,  vredsum.vs, 5201314, 0x000000b504f333, 0x00000000000005 );
  TEST_VV_OP( 207,  vredsum.vs, 5201314, 0x00000000000002, 0x00000000000005 );
  TEST_VV_OP( 208,  vredsum.vs, 5201314, 0x5555555555555554, 0x00000000000005 );
  TEST_VV_OP( 209,  vredsum.vs, 5201314, 0x3333333333333332, 0x00000000000005 );
  TEST_VV_OP( 210,  vredsum.vs, 5201314, 0x6666666666666665, 0x00000000000005 );
  TEST_VV_OP( 211,  vredsum.vs, 5201314, 0x00000000000000, 0x00000000000005 );
  TEST_VV_OP( 212,  vredsum.vs, 5201314, 0x000000b504f332, 0x00000000000005 );
  TEST_VV_OP( 213,  vredsum.vs, 5201314, 0x00000000000004, 0x00000000000005 );
  TEST_VV_OP( 214,  vredsum.vs, 5201314, 0x5555555555555556, 0x00000000000005 );
  TEST_VV_OP( 215,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000005 );
  TEST_VV_OP( 216,  vredsum.vs, 5201314, 0x00000000000006, 0x00000000000005 );
  TEST_VV_OP( 217,  vredsum.vs, 5201314, 0x3333333333333334, 0x00000000000005 );
  TEST_VV_OP( 218,  vredsum.vs, 5201314, 0x6666666666666667, 0x00000000000005 );
  TEST_VV_OP( 219,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000005 );
  TEST_VV_OP( 220,  vredsum.vs, 5201314, 0x000000b504f334, 0x00000000000005 );
  TEST_VV_OP( 221,  vredsum.vs, 5201314, 0x00000000000003, 0x3333333333333333 );
  TEST_VV_OP( 222,  vredsum.vs, 5201314, 0x5555555555555555, 0x3333333333333333 );
  TEST_VV_OP( 223,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x3333333333333333 );
  TEST_VV_OP( 224,  vredsum.vs, 5201314, 0x00000000000005, 0x3333333333333333 );
  TEST_VV_OP( 225,  vredsum.vs, 5201314, 0x3333333333333333, 0x3333333333333333 );
  TEST_VV_OP( 226,  vredsum.vs, 5201314, 0x6666666666666666, 0x3333333333333333 );
  TEST_VV_OP( 227,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x3333333333333333 );
  TEST_VV_OP( 228,  vredsum.vs, 5201314, 0x000000b504f333, 0x3333333333333333 );
  TEST_VV_OP( 229,  vredsum.vs, 5201314, 0x00000000000002, 0x3333333333333333 );
  TEST_VV_OP( 230,  vredsum.vs, 5201314, 0x5555555555555554, 0x3333333333333333 );
  TEST_VV_OP( 231,  vredsum.vs, 5201314, 0x3333333333333332, 0x3333333333333333 );
  TEST_VV_OP( 232,  vredsum.vs, 5201314, 0x6666666666666665, 0x3333333333333333 );
  TEST_VV_OP( 233,  vredsum.vs, 5201314, 0x00000000000000, 0x3333333333333333 );
  TEST_VV_OP( 234,  vredsum.vs, 5201314, 0x000000b504f332, 0x3333333333333333 );
  TEST_VV_OP( 235,  vredsum.vs, 5201314, 0x00000000000004, 0x3333333333333333 );
  TEST_VV_OP( 236,  vredsum.vs, 5201314, 0x5555555555555556, 0x3333333333333333 );
  TEST_VV_OP( 237,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x3333333333333333 );
  TEST_VV_OP( 238,  vredsum.vs, 5201314, 0x00000000000006, 0x3333333333333333 );
  TEST_VV_OP( 239,  vredsum.vs, 5201314, 0x3333333333333334, 0x3333333333333333 );
  TEST_VV_OP( 240,  vredsum.vs, 5201314, 0x6666666666666667, 0x3333333333333333 );
  TEST_VV_OP( 241,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x3333333333333333 );
  TEST_VV_OP( 242,  vredsum.vs, 5201314, 0x000000b504f334, 0x3333333333333333 );
  TEST_VV_OP( 243,  vredsum.vs, 5201314, 0x00000000000003, 0x6666666666666666 );
  TEST_VV_OP( 244,  vredsum.vs, 5201314, 0x5555555555555555, 0x6666666666666666 );
  TEST_VV_OP( 245,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x6666666666666666 );
  TEST_VV_OP( 246,  vredsum.vs, 5201314, 0x00000000000005, 0x6666666666666666 );
  TEST_VV_OP( 247,  vredsum.vs, 5201314, 0x3333333333333333, 0x6666666666666666 );
  TEST_VV_OP( 248,  vredsum.vs, 5201314, 0x6666666666666666, 0x6666666666666666 );
  TEST_VV_OP( 249,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x6666666666666666 );
  TEST_VV_OP( 250,  vredsum.vs, 5201314, 0x000000b504f333, 0x6666666666666666 );
  TEST_VV_OP( 251,  vredsum.vs, 5201314, 0x00000000000002, 0x6666666666666666 );
  TEST_VV_OP( 252,  vredsum.vs, 5201314, 0x5555555555555554, 0x6666666666666666 );
  TEST_VV_OP( 253,  vredsum.vs, 5201314, 0x3333333333333332, 0x6666666666666666 );
  TEST_VV_OP( 254,  vredsum.vs, 5201314, 0x6666666666666665, 0x6666666666666666 );
  TEST_VV_OP( 255,  vredsum.vs, 5201314, 0x00000000000000, 0x6666666666666666 );
  TEST_VV_OP( 256,  vredsum.vs, 5201314, 0x000000b504f332, 0x6666666666666666 );
  TEST_VV_OP( 257,  vredsum.vs, 5201314, 0x00000000000004, 0x6666666666666666 );
  TEST_VV_OP( 258,  vredsum.vs, 5201314, 0x5555555555555556, 0x6666666666666666 );
  TEST_VV_OP( 259,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x6666666666666666 );
  TEST_VV_OP( 260,  vredsum.vs, 5201314, 0x00000000000006, 0x6666666666666666 );
  TEST_VV_OP( 261,  vredsum.vs, 5201314, 0x3333333333333334, 0x6666666666666666 );
  TEST_VV_OP( 262,  vredsum.vs, 5201314, 0x6666666666666667, 0x6666666666666666 );
  TEST_VV_OP( 263,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x6666666666666666 );
  TEST_VV_OP( 264,  vredsum.vs, 5201314, 0x000000b504f334, 0x6666666666666666 );
  TEST_VV_OP( 265,  vredsum.vs, 5201314, 0x00000000000003, 0xffffffff4afb0ccd );
  TEST_VV_OP( 266,  vredsum.vs, 5201314, 0x5555555555555555, 0xffffffff4afb0ccd );
  TEST_VV_OP( 267,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xffffffff4afb0ccd );
  TEST_VV_OP( 268,  vredsum.vs, 5201314, 0x00000000000005, 0xffffffff4afb0ccd );
  TEST_VV_OP( 269,  vredsum.vs, 5201314, 0x3333333333333333, 0xffffffff4afb0ccd );
  TEST_VV_OP( 270,  vredsum.vs, 5201314, 0x6666666666666666, 0xffffffff4afb0ccd );
  TEST_VV_OP( 271,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0xffffffff4afb0ccd );
  TEST_VV_OP( 272,  vredsum.vs, 5201314, 0x000000b504f333, 0xffffffff4afb0ccd );
  TEST_VV_OP( 273,  vredsum.vs, 5201314, 0x00000000000002, 0xffffffff4afb0ccd );
  TEST_VV_OP( 274,  vredsum.vs, 5201314, 0x5555555555555554, 0xffffffff4afb0ccd );
  TEST_VV_OP( 275,  vredsum.vs, 5201314, 0x3333333333333332, 0xffffffff4afb0ccd );
  TEST_VV_OP( 276,  vredsum.vs, 5201314, 0x6666666666666665, 0xffffffff4afb0ccd );
  TEST_VV_OP( 277,  vredsum.vs, 5201314, 0x00000000000000, 0xffffffff4afb0ccd );
  TEST_VV_OP( 278,  vredsum.vs, 5201314, 0x000000b504f332, 0xffffffff4afb0ccd );
  TEST_VV_OP( 279,  vredsum.vs, 5201314, 0x00000000000004, 0xffffffff4afb0ccd );
  TEST_VV_OP( 280,  vredsum.vs, 5201314, 0x5555555555555556, 0xffffffff4afb0ccd );
  TEST_VV_OP( 281,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xffffffff4afb0ccd );
  TEST_VV_OP( 282,  vredsum.vs, 5201314, 0x00000000000006, 0xffffffff4afb0ccd );
  TEST_VV_OP( 283,  vredsum.vs, 5201314, 0x3333333333333334, 0xffffffff4afb0ccd );
  TEST_VV_OP( 284,  vredsum.vs, 5201314, 0x6666666666666667, 0xffffffff4afb0ccd );
  TEST_VV_OP( 285,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0xffffffff4afb0ccd );
  TEST_VV_OP( 286,  vredsum.vs, 5201314, 0x000000b504f334, 0xffffffff4afb0ccd );
  TEST_VV_OP( 287,  vredsum.vs, 5201314, 0x00000000000003, 0x000000b504f333 );
  TEST_VV_OP( 288,  vredsum.vs, 5201314, 0x5555555555555555, 0x000000b504f333 );
  TEST_VV_OP( 289,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x000000b504f333 );
  TEST_VV_OP( 290,  vredsum.vs, 5201314, 0x00000000000005, 0x000000b504f333 );
  TEST_VV_OP( 291,  vredsum.vs, 5201314, 0x3333333333333333, 0x000000b504f333 );
  TEST_VV_OP( 292,  vredsum.vs, 5201314, 0x6666666666666666, 0x000000b504f333 );
  TEST_VV_OP( 293,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x000000b504f333 );
  TEST_VV_OP( 294,  vredsum.vs, 5201314, 0x000000b504f333, 0x000000b504f333 );
  TEST_VV_OP( 295,  vredsum.vs, 5201314, 0x00000000000002, 0x000000b504f333 );
  TEST_VV_OP( 296,  vredsum.vs, 5201314, 0x5555555555555554, 0x000000b504f333 );
  TEST_VV_OP( 297,  vredsum.vs, 5201314, 0x3333333333333332, 0x000000b504f333 );
  TEST_VV_OP( 298,  vredsum.vs, 5201314, 0x6666666666666665, 0x000000b504f333 );
  TEST_VV_OP( 299,  vredsum.vs, 5201314, 0x00000000000000, 0x000000b504f333 );
  TEST_VV_OP( 300,  vredsum.vs, 5201314, 0x000000b504f332, 0x000000b504f333 );
  TEST_VV_OP( 301,  vredsum.vs, 5201314, 0x00000000000004, 0x000000b504f333 );
  TEST_VV_OP( 302,  vredsum.vs, 5201314, 0x5555555555555556, 0x000000b504f333 );
  TEST_VV_OP( 303,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x000000b504f333 );
  TEST_VV_OP( 304,  vredsum.vs, 5201314, 0x00000000000006, 0x000000b504f333 );
  TEST_VV_OP( 305,  vredsum.vs, 5201314, 0x3333333333333334, 0x000000b504f333 );
  TEST_VV_OP( 306,  vredsum.vs, 5201314, 0x6666666666666667, 0x000000b504f333 );
  TEST_VV_OP( 307,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x000000b504f333 );
  TEST_VV_OP( 308,  vredsum.vs, 5201314, 0x000000b504f334, 0x000000b504f333 );
  TEST_VV_OP( 309,  vredsum.vs, 5201314, 0x00000000000003, 0x00000000000002 );
  TEST_VV_OP( 310,  vredsum.vs, 5201314, 0x5555555555555555, 0x00000000000002 );
  TEST_VV_OP( 311,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000002 );
  TEST_VV_OP( 312,  vredsum.vs, 5201314, 0x00000000000005, 0x00000000000002 );
  TEST_VV_OP( 313,  vredsum.vs, 5201314, 0x3333333333333333, 0x00000000000002 );
  TEST_VV_OP( 314,  vredsum.vs, 5201314, 0x6666666666666666, 0x00000000000002 );
  TEST_VV_OP( 315,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000002 );
  TEST_VV_OP( 316,  vredsum.vs, 5201314, 0x000000b504f333, 0x00000000000002 );
  TEST_VV_OP( 317,  vredsum.vs, 5201314, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP( 318,  vredsum.vs, 5201314, 0x5555555555555554, 0x00000000000002 );
  TEST_VV_OP( 319,  vredsum.vs, 5201314, 0x3333333333333332, 0x00000000000002 );
  TEST_VV_OP( 320,  vredsum.vs, 5201314, 0x6666666666666665, 0x00000000000002 );
  TEST_VV_OP( 321,  vredsum.vs, 5201314, 0x00000000000000, 0x00000000000002 );
  TEST_VV_OP( 322,  vredsum.vs, 5201314, 0x000000b504f332, 0x00000000000002 );
  TEST_VV_OP( 323,  vredsum.vs, 5201314, 0x00000000000004, 0x00000000000002 );
  TEST_VV_OP( 324,  vredsum.vs, 5201314, 0x5555555555555556, 0x00000000000002 );
  TEST_VV_OP( 325,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000002 );
  TEST_VV_OP( 326,  vredsum.vs, 5201314, 0x00000000000006, 0x00000000000002 );
  TEST_VV_OP( 327,  vredsum.vs, 5201314, 0x3333333333333334, 0x00000000000002 );
  TEST_VV_OP( 328,  vredsum.vs, 5201314, 0x6666666666666667, 0x00000000000002 );
  TEST_VV_OP( 329,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000002 );
  TEST_VV_OP( 330,  vredsum.vs, 5201314, 0x000000b504f334, 0x00000000000002 );
  TEST_VV_OP( 331,  vredsum.vs, 5201314, 0x00000000000003, 0x5555555555555554 );
  TEST_VV_OP( 332,  vredsum.vs, 5201314, 0x5555555555555555, 0x5555555555555554 );
  TEST_VV_OP( 333,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x5555555555555554 );
  TEST_VV_OP( 334,  vredsum.vs, 5201314, 0x00000000000005, 0x5555555555555554 );
  TEST_VV_OP( 335,  vredsum.vs, 5201314, 0x3333333333333333, 0x5555555555555554 );
  TEST_VV_OP( 336,  vredsum.vs, 5201314, 0x6666666666666666, 0x5555555555555554 );
  TEST_VV_OP( 337,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x5555555555555554 );
  TEST_VV_OP( 338,  vredsum.vs, 5201314, 0x000000b504f333, 0x5555555555555554 );
  TEST_VV_OP( 339,  vredsum.vs, 5201314, 0x00000000000002, 0x5555555555555554 );
  TEST_VV_OP( 340,  vredsum.vs, 5201314, 0x5555555555555554, 0x5555555555555554 );
  TEST_VV_OP( 341,  vredsum.vs, 5201314, 0x3333333333333332, 0x5555555555555554 );
  TEST_VV_OP( 342,  vredsum.vs, 5201314, 0x6666666666666665, 0x5555555555555554 );
  TEST_VV_OP( 343,  vredsum.vs, 5201314, 0x00000000000000, 0x5555555555555554 );
  TEST_VV_OP( 344,  vredsum.vs, 5201314, 0x000000b504f332, 0x5555555555555554 );
  TEST_VV_OP( 345,  vredsum.vs, 5201314, 0x00000000000004, 0x5555555555555554 );
  TEST_VV_OP( 346,  vredsum.vs, 5201314, 0x5555555555555556, 0x5555555555555554 );
  TEST_VV_OP( 347,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x5555555555555554 );
  TEST_VV_OP( 348,  vredsum.vs, 5201314, 0x00000000000006, 0x5555555555555554 );
  TEST_VV_OP( 349,  vredsum.vs, 5201314, 0x3333333333333334, 0x5555555555555554 );
  TEST_VV_OP( 350,  vredsum.vs, 5201314, 0x6666666666666667, 0x5555555555555554 );
  TEST_VV_OP( 351,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x5555555555555554 );
  TEST_VV_OP( 352,  vredsum.vs, 5201314, 0x000000b504f334, 0x5555555555555554 );
  TEST_VV_OP( 353,  vredsum.vs, 5201314, 0x00000000000003, 0x3333333333333332 );
  TEST_VV_OP( 354,  vredsum.vs, 5201314, 0x5555555555555555, 0x3333333333333332 );
  TEST_VV_OP( 355,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x3333333333333332 );
  TEST_VV_OP( 356,  vredsum.vs, 5201314, 0x00000000000005, 0x3333333333333332 );
  TEST_VV_OP( 357,  vredsum.vs, 5201314, 0x3333333333333333, 0x3333333333333332 );
  TEST_VV_OP( 358,  vredsum.vs, 5201314, 0x6666666666666666, 0x3333333333333332 );
  TEST_VV_OP( 359,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x3333333333333332 );
  TEST_VV_OP( 360,  vredsum.vs, 5201314, 0x000000b504f333, 0x3333333333333332 );
  TEST_VV_OP( 361,  vredsum.vs, 5201314, 0x00000000000002, 0x3333333333333332 );
  TEST_VV_OP( 362,  vredsum.vs, 5201314, 0x5555555555555554, 0x3333333333333332 );
  TEST_VV_OP( 363,  vredsum.vs, 5201314, 0x3333333333333332, 0x3333333333333332 );
  TEST_VV_OP( 364,  vredsum.vs, 5201314, 0x6666666666666665, 0x3333333333333332 );
  TEST_VV_OP( 365,  vredsum.vs, 5201314, 0x00000000000000, 0x3333333333333332 );
  TEST_VV_OP( 366,  vredsum.vs, 5201314, 0x000000b504f332, 0x3333333333333332 );
  TEST_VV_OP( 367,  vredsum.vs, 5201314, 0x00000000000004, 0x3333333333333332 );
  TEST_VV_OP( 368,  vredsum.vs, 5201314, 0x5555555555555556, 0x3333333333333332 );
  TEST_VV_OP( 369,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x3333333333333332 );
  TEST_VV_OP( 370,  vredsum.vs, 5201314, 0x00000000000006, 0x3333333333333332 );
  TEST_VV_OP( 371,  vredsum.vs, 5201314, 0x3333333333333334, 0x3333333333333332 );
  TEST_VV_OP( 372,  vredsum.vs, 5201314, 0x6666666666666667, 0x3333333333333332 );
  TEST_VV_OP( 373,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x3333333333333332 );
  TEST_VV_OP( 374,  vredsum.vs, 5201314, 0x000000b504f334, 0x3333333333333332 );
  TEST_VV_OP( 375,  vredsum.vs, 5201314, 0x00000000000003, 0x6666666666666665 );
  TEST_VV_OP( 376,  vredsum.vs, 5201314, 0x5555555555555555, 0x6666666666666665 );
  TEST_VV_OP( 377,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x6666666666666665 );
  TEST_VV_OP( 378,  vredsum.vs, 5201314, 0x00000000000005, 0x6666666666666665 );
  TEST_VV_OP( 379,  vredsum.vs, 5201314, 0x3333333333333333, 0x6666666666666665 );
  TEST_VV_OP( 380,  vredsum.vs, 5201314, 0x6666666666666666, 0x6666666666666665 );
  TEST_VV_OP( 381,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x6666666666666665 );
  TEST_VV_OP( 382,  vredsum.vs, 5201314, 0x000000b504f333, 0x6666666666666665 );
  TEST_VV_OP( 383,  vredsum.vs, 5201314, 0x00000000000002, 0x6666666666666665 );
  TEST_VV_OP( 384,  vredsum.vs, 5201314, 0x5555555555555554, 0x6666666666666665 );
  TEST_VV_OP( 385,  vredsum.vs, 5201314, 0x3333333333333332, 0x6666666666666665 );
  TEST_VV_OP( 386,  vredsum.vs, 5201314, 0x6666666666666665, 0x6666666666666665 );
  TEST_VV_OP( 387,  vredsum.vs, 5201314, 0x00000000000000, 0x6666666666666665 );
  TEST_VV_OP( 388,  vredsum.vs, 5201314, 0x000000b504f332, 0x6666666666666665 );
  TEST_VV_OP( 389,  vredsum.vs, 5201314, 0x00000000000004, 0x6666666666666665 );
  TEST_VV_OP( 390,  vredsum.vs, 5201314, 0x5555555555555556, 0x6666666666666665 );
  TEST_VV_OP( 391,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x6666666666666665 );
  TEST_VV_OP( 392,  vredsum.vs, 5201314, 0x00000000000006, 0x6666666666666665 );
  TEST_VV_OP( 393,  vredsum.vs, 5201314, 0x3333333333333334, 0x6666666666666665 );
  TEST_VV_OP( 394,  vredsum.vs, 5201314, 0x6666666666666667, 0x6666666666666665 );
  TEST_VV_OP( 395,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x6666666666666665 );
  TEST_VV_OP( 396,  vredsum.vs, 5201314, 0x000000b504f334, 0x6666666666666665 );
  TEST_VV_OP( 397,  vredsum.vs, 5201314, 0x00000000000003, 0x00000000000000 );
  TEST_VV_OP( 398,  vredsum.vs, 5201314, 0x5555555555555555, 0x00000000000000 );
  TEST_VV_OP( 399,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000000 );
  TEST_VV_OP( 400,  vredsum.vs, 5201314, 0x00000000000005, 0x00000000000000 );
  TEST_VV_OP( 401,  vredsum.vs, 5201314, 0x3333333333333333, 0x00000000000000 );
  TEST_VV_OP( 402,  vredsum.vs, 5201314, 0x6666666666666666, 0x00000000000000 );
  TEST_VV_OP( 403,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000000 );
  TEST_VV_OP( 404,  vredsum.vs, 5201314, 0x000000b504f333, 0x00000000000000 );
  TEST_VV_OP( 405,  vredsum.vs, 5201314, 0x00000000000002, 0x00000000000000 );
  TEST_VV_OP( 406,  vredsum.vs, 5201314, 0x5555555555555554, 0x00000000000000 );
  TEST_VV_OP( 407,  vredsum.vs, 5201314, 0x3333333333333332, 0x00000000000000 );
  TEST_VV_OP( 408,  vredsum.vs, 5201314, 0x6666666666666665, 0x00000000000000 );
  TEST_VV_OP( 409,  vredsum.vs, 5201314, 0x00000000000000, 0x00000000000000 );
  TEST_VV_OP( 410,  vredsum.vs, 5201314, 0x000000b504f332, 0x00000000000000 );
  TEST_VV_OP( 411,  vredsum.vs, 5201314, 0x00000000000004, 0x00000000000000 );
  TEST_VV_OP( 412,  vredsum.vs, 5201314, 0x5555555555555556, 0x00000000000000 );
  TEST_VV_OP( 413,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000000 );
  TEST_VV_OP( 414,  vredsum.vs, 5201314, 0x00000000000006, 0x00000000000000 );
  TEST_VV_OP( 415,  vredsum.vs, 5201314, 0x3333333333333334, 0x00000000000000 );
  TEST_VV_OP( 416,  vredsum.vs, 5201314, 0x6666666666666667, 0x00000000000000 );
  TEST_VV_OP( 417,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000000 );
  TEST_VV_OP( 418,  vredsum.vs, 5201314, 0x000000b504f334, 0x00000000000000 );
  TEST_VV_OP( 419,  vredsum.vs, 5201314, 0x00000000000003, 0x000000b504f332 );
  TEST_VV_OP( 420,  vredsum.vs, 5201314, 0x5555555555555555, 0x000000b504f332 );
  TEST_VV_OP( 421,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x000000b504f332 );
  TEST_VV_OP( 422,  vredsum.vs, 5201314, 0x00000000000005, 0x000000b504f332 );
  TEST_VV_OP( 423,  vredsum.vs, 5201314, 0x3333333333333333, 0x000000b504f332 );
  TEST_VV_OP( 424,  vredsum.vs, 5201314, 0x6666666666666666, 0x000000b504f332 );
  TEST_VV_OP( 425,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x000000b504f332 );
  TEST_VV_OP( 426,  vredsum.vs, 5201314, 0x000000b504f333, 0x000000b504f332 );
  TEST_VV_OP( 427,  vredsum.vs, 5201314, 0x00000000000002, 0x000000b504f332 );
  TEST_VV_OP( 428,  vredsum.vs, 5201314, 0x5555555555555554, 0x000000b504f332 );
  TEST_VV_OP( 429,  vredsum.vs, 5201314, 0x3333333333333332, 0x000000b504f332 );
  TEST_VV_OP( 430,  vredsum.vs, 5201314, 0x6666666666666665, 0x000000b504f332 );
  TEST_VV_OP( 431,  vredsum.vs, 5201314, 0x00000000000000, 0x000000b504f332 );
  TEST_VV_OP( 432,  vredsum.vs, 5201314, 0x000000b504f332, 0x000000b504f332 );
  TEST_VV_OP( 433,  vredsum.vs, 5201314, 0x00000000000004, 0x000000b504f332 );
  TEST_VV_OP( 434,  vredsum.vs, 5201314, 0x5555555555555556, 0x000000b504f332 );
  TEST_VV_OP( 435,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x000000b504f332 );
  TEST_VV_OP( 436,  vredsum.vs, 5201314, 0x00000000000006, 0x000000b504f332 );
  TEST_VV_OP( 437,  vredsum.vs, 5201314, 0x3333333333333334, 0x000000b504f332 );
  TEST_VV_OP( 438,  vredsum.vs, 5201314, 0x6666666666666667, 0x000000b504f332 );
  TEST_VV_OP( 439,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x000000b504f332 );
  TEST_VV_OP( 440,  vredsum.vs, 5201314, 0x000000b504f334, 0x000000b504f332 );
  TEST_VV_OP( 441,  vredsum.vs, 5201314, 0x00000000000003, 0x00000000000004 );
  TEST_VV_OP( 442,  vredsum.vs, 5201314, 0x5555555555555555, 0x00000000000004 );
  TEST_VV_OP( 443,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000004 );
  TEST_VV_OP( 444,  vredsum.vs, 5201314, 0x00000000000005, 0x00000000000004 );
  TEST_VV_OP( 445,  vredsum.vs, 5201314, 0x3333333333333333, 0x00000000000004 );
  TEST_VV_OP( 446,  vredsum.vs, 5201314, 0x6666666666666666, 0x00000000000004 );
  TEST_VV_OP( 447,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000004 );
  TEST_VV_OP( 448,  vredsum.vs, 5201314, 0x000000b504f333, 0x00000000000004 );
  TEST_VV_OP( 449,  vredsum.vs, 5201314, 0x00000000000002, 0x00000000000004 );
  TEST_VV_OP( 450,  vredsum.vs, 5201314, 0x5555555555555554, 0x00000000000004 );
  TEST_VV_OP( 451,  vredsum.vs, 5201314, 0x3333333333333332, 0x00000000000004 );
  TEST_VV_OP( 452,  vredsum.vs, 5201314, 0x6666666666666665, 0x00000000000004 );
  TEST_VV_OP( 453,  vredsum.vs, 5201314, 0x00000000000000, 0x00000000000004 );
  TEST_VV_OP( 454,  vredsum.vs, 5201314, 0x000000b504f332, 0x00000000000004 );
  TEST_VV_OP( 455,  vredsum.vs, 5201314, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP( 456,  vredsum.vs, 5201314, 0x5555555555555556, 0x00000000000004 );
  TEST_VV_OP( 457,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000004 );
  TEST_VV_OP( 458,  vredsum.vs, 5201314, 0x00000000000006, 0x00000000000004 );
  TEST_VV_OP( 459,  vredsum.vs, 5201314, 0x3333333333333334, 0x00000000000004 );
  TEST_VV_OP( 460,  vredsum.vs, 5201314, 0x6666666666666667, 0x00000000000004 );
  TEST_VV_OP( 461,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000004 );
  TEST_VV_OP( 462,  vredsum.vs, 5201314, 0x000000b504f334, 0x00000000000004 );
  TEST_VV_OP( 463,  vredsum.vs, 5201314, 0x00000000000003, 0x5555555555555556 );
  TEST_VV_OP( 464,  vredsum.vs, 5201314, 0x5555555555555555, 0x5555555555555556 );
  TEST_VV_OP( 465,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x5555555555555556 );
  TEST_VV_OP( 466,  vredsum.vs, 5201314, 0x00000000000005, 0x5555555555555556 );
  TEST_VV_OP( 467,  vredsum.vs, 5201314, 0x3333333333333333, 0x5555555555555556 );
  TEST_VV_OP( 468,  vredsum.vs, 5201314, 0x6666666666666666, 0x5555555555555556 );
  TEST_VV_OP( 469,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x5555555555555556 );
  TEST_VV_OP( 470,  vredsum.vs, 5201314, 0x000000b504f333, 0x5555555555555556 );
  TEST_VV_OP( 471,  vredsum.vs, 5201314, 0x00000000000002, 0x5555555555555556 );
  TEST_VV_OP( 472,  vredsum.vs, 5201314, 0x5555555555555554, 0x5555555555555556 );
  TEST_VV_OP( 473,  vredsum.vs, 5201314, 0x3333333333333332, 0x5555555555555556 );
  TEST_VV_OP( 474,  vredsum.vs, 5201314, 0x6666666666666665, 0x5555555555555556 );
  TEST_VV_OP( 475,  vredsum.vs, 5201314, 0x00000000000000, 0x5555555555555556 );
  TEST_VV_OP( 476,  vredsum.vs, 5201314, 0x000000b504f332, 0x5555555555555556 );
  TEST_VV_OP( 477,  vredsum.vs, 5201314, 0x00000000000004, 0x5555555555555556 );
  TEST_VV_OP( 478,  vredsum.vs, 5201314, 0x5555555555555556, 0x5555555555555556 );
  TEST_VV_OP( 479,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x5555555555555556 );
  TEST_VV_OP( 480,  vredsum.vs, 5201314, 0x00000000000006, 0x5555555555555556 );
  TEST_VV_OP( 481,  vredsum.vs, 5201314, 0x3333333333333334, 0x5555555555555556 );
  TEST_VV_OP( 482,  vredsum.vs, 5201314, 0x6666666666666667, 0x5555555555555556 );
  TEST_VV_OP( 483,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x5555555555555556 );
  TEST_VV_OP( 484,  vredsum.vs, 5201314, 0x000000b504f334, 0x5555555555555556 );
  TEST_VV_OP( 485,  vredsum.vs, 5201314, 0x00000000000003, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 486,  vredsum.vs, 5201314, 0x5555555555555555, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 487,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 488,  vredsum.vs, 5201314, 0x00000000000005, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 489,  vredsum.vs, 5201314, 0x3333333333333333, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 490,  vredsum.vs, 5201314, 0x6666666666666666, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 491,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 492,  vredsum.vs, 5201314, 0x000000b504f333, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 493,  vredsum.vs, 5201314, 0x00000000000002, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 494,  vredsum.vs, 5201314, 0x5555555555555554, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 495,  vredsum.vs, 5201314, 0x3333333333333332, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 496,  vredsum.vs, 5201314, 0x6666666666666665, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 497,  vredsum.vs, 5201314, 0x00000000000000, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 498,  vredsum.vs, 5201314, 0x000000b504f332, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 499,  vredsum.vs, 5201314, 0x00000000000004, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 500,  vredsum.vs, 5201314, 0x5555555555555556, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 501,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 502,  vredsum.vs, 5201314, 0x00000000000006, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 503,  vredsum.vs, 5201314, 0x3333333333333334, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 504,  vredsum.vs, 5201314, 0x6666666666666667, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 505,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 506,  vredsum.vs, 5201314, 0x000000b504f334, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 507,  vredsum.vs, 5201314, 0x00000000000003, 0x00000000000006 );
  TEST_VV_OP( 508,  vredsum.vs, 5201314, 0x5555555555555555, 0x00000000000006 );
  TEST_VV_OP( 509,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000006 );
  TEST_VV_OP( 510,  vredsum.vs, 5201314, 0x00000000000005, 0x00000000000006 );
  TEST_VV_OP( 511,  vredsum.vs, 5201314, 0x3333333333333333, 0x00000000000006 );
  TEST_VV_OP( 512,  vredsum.vs, 5201314, 0x6666666666666666, 0x00000000000006 );
  TEST_VV_OP( 513,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000006 );
  TEST_VV_OP( 514,  vredsum.vs, 5201314, 0x000000b504f333, 0x00000000000006 );
  TEST_VV_OP( 515,  vredsum.vs, 5201314, 0x00000000000002, 0x00000000000006 );
  TEST_VV_OP( 516,  vredsum.vs, 5201314, 0x5555555555555554, 0x00000000000006 );
  TEST_VV_OP( 517,  vredsum.vs, 5201314, 0x3333333333333332, 0x00000000000006 );
  TEST_VV_OP( 518,  vredsum.vs, 5201314, 0x6666666666666665, 0x00000000000006 );
  TEST_VV_OP( 519,  vredsum.vs, 5201314, 0x00000000000000, 0x00000000000006 );
  TEST_VV_OP( 520,  vredsum.vs, 5201314, 0x000000b504f332, 0x00000000000006 );
  TEST_VV_OP( 521,  vredsum.vs, 5201314, 0x00000000000004, 0x00000000000006 );
  TEST_VV_OP( 522,  vredsum.vs, 5201314, 0x5555555555555556, 0x00000000000006 );
  TEST_VV_OP( 523,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000006 );
  TEST_VV_OP( 524,  vredsum.vs, 5201314, 0x00000000000006, 0x00000000000006 );
  TEST_VV_OP( 525,  vredsum.vs, 5201314, 0x3333333333333334, 0x00000000000006 );
  TEST_VV_OP( 526,  vredsum.vs, 5201314, 0x6666666666666667, 0x00000000000006 );
  TEST_VV_OP( 527,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000006 );
  TEST_VV_OP( 528,  vredsum.vs, 5201314, 0x000000b504f334, 0x00000000000006 );
  TEST_VV_OP( 529,  vredsum.vs, 5201314, 0x00000000000003, 0x3333333333333334 );
  TEST_VV_OP( 530,  vredsum.vs, 5201314, 0x5555555555555555, 0x3333333333333334 );
  TEST_VV_OP( 531,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x3333333333333334 );
  TEST_VV_OP( 532,  vredsum.vs, 5201314, 0x00000000000005, 0x3333333333333334 );
  TEST_VV_OP( 533,  vredsum.vs, 5201314, 0x3333333333333333, 0x3333333333333334 );
  TEST_VV_OP( 534,  vredsum.vs, 5201314, 0x6666666666666666, 0x3333333333333334 );
  TEST_VV_OP( 535,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x3333333333333334 );
  TEST_VV_OP( 536,  vredsum.vs, 5201314, 0x000000b504f333, 0x3333333333333334 );
  TEST_VV_OP( 537,  vredsum.vs, 5201314, 0x00000000000002, 0x3333333333333334 );
  TEST_VV_OP( 538,  vredsum.vs, 5201314, 0x5555555555555554, 0x3333333333333334 );
  TEST_VV_OP( 539,  vredsum.vs, 5201314, 0x3333333333333332, 0x3333333333333334 );
  TEST_VV_OP( 540,  vredsum.vs, 5201314, 0x6666666666666665, 0x3333333333333334 );
  TEST_VV_OP( 541,  vredsum.vs, 5201314, 0x00000000000000, 0x3333333333333334 );
  TEST_VV_OP( 542,  vredsum.vs, 5201314, 0x000000b504f332, 0x3333333333333334 );
  TEST_VV_OP( 543,  vredsum.vs, 5201314, 0x00000000000004, 0x3333333333333334 );
  TEST_VV_OP( 544,  vredsum.vs, 5201314, 0x5555555555555556, 0x3333333333333334 );
  TEST_VV_OP( 545,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x3333333333333334 );
  TEST_VV_OP( 546,  vredsum.vs, 5201314, 0x00000000000006, 0x3333333333333334 );
  TEST_VV_OP( 547,  vredsum.vs, 5201314, 0x3333333333333334, 0x3333333333333334 );
  TEST_VV_OP( 548,  vredsum.vs, 5201314, 0x6666666666666667, 0x3333333333333334 );
  TEST_VV_OP( 549,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x3333333333333334 );
  TEST_VV_OP( 550,  vredsum.vs, 5201314, 0x000000b504f334, 0x3333333333333334 );
  TEST_VV_OP( 551,  vredsum.vs, 5201314, 0x00000000000003, 0x6666666666666667 );
  TEST_VV_OP( 552,  vredsum.vs, 5201314, 0x5555555555555555, 0x6666666666666667 );
  TEST_VV_OP( 553,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x6666666666666667 );
  TEST_VV_OP( 554,  vredsum.vs, 5201314, 0x00000000000005, 0x6666666666666667 );
  TEST_VV_OP( 555,  vredsum.vs, 5201314, 0x3333333333333333, 0x6666666666666667 );
  TEST_VV_OP( 556,  vredsum.vs, 5201314, 0x6666666666666666, 0x6666666666666667 );
  TEST_VV_OP( 557,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x6666666666666667 );
  TEST_VV_OP( 558,  vredsum.vs, 5201314, 0x000000b504f333, 0x6666666666666667 );
  TEST_VV_OP( 559,  vredsum.vs, 5201314, 0x00000000000002, 0x6666666666666667 );
  TEST_VV_OP( 560,  vredsum.vs, 5201314, 0x5555555555555554, 0x6666666666666667 );
  TEST_VV_OP( 561,  vredsum.vs, 5201314, 0x3333333333333332, 0x6666666666666667 );
  TEST_VV_OP( 562,  vredsum.vs, 5201314, 0x6666666666666665, 0x6666666666666667 );
  TEST_VV_OP( 563,  vredsum.vs, 5201314, 0x00000000000000, 0x6666666666666667 );
  TEST_VV_OP( 564,  vredsum.vs, 5201314, 0x000000b504f332, 0x6666666666666667 );
  TEST_VV_OP( 565,  vredsum.vs, 5201314, 0x00000000000004, 0x6666666666666667 );
  TEST_VV_OP( 566,  vredsum.vs, 5201314, 0x5555555555555556, 0x6666666666666667 );
  TEST_VV_OP( 567,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x6666666666666667 );
  TEST_VV_OP( 568,  vredsum.vs, 5201314, 0x00000000000006, 0x6666666666666667 );
  TEST_VV_OP( 569,  vredsum.vs, 5201314, 0x3333333333333334, 0x6666666666666667 );
  TEST_VV_OP( 570,  vredsum.vs, 5201314, 0x6666666666666667, 0x6666666666666667 );
  TEST_VV_OP( 571,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x6666666666666667 );
  TEST_VV_OP( 572,  vredsum.vs, 5201314, 0x000000b504f334, 0x6666666666666667 );
  TEST_VV_OP( 573,  vredsum.vs, 5201314, 0x00000000000003, 0xffffffff4afb0cce );
  TEST_VV_OP( 574,  vredsum.vs, 5201314, 0x5555555555555555, 0xffffffff4afb0cce );
  TEST_VV_OP( 575,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xffffffff4afb0cce );
  TEST_VV_OP( 576,  vredsum.vs, 5201314, 0x00000000000005, 0xffffffff4afb0cce );
  TEST_VV_OP( 577,  vredsum.vs, 5201314, 0x3333333333333333, 0xffffffff4afb0cce );
  TEST_VV_OP( 578,  vredsum.vs, 5201314, 0x6666666666666666, 0xffffffff4afb0cce );
  TEST_VV_OP( 579,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0xffffffff4afb0cce );
  TEST_VV_OP( 580,  vredsum.vs, 5201314, 0x000000b504f333, 0xffffffff4afb0cce );
  TEST_VV_OP( 581,  vredsum.vs, 5201314, 0x00000000000002, 0xffffffff4afb0cce );
  TEST_VV_OP( 582,  vredsum.vs, 5201314, 0x5555555555555554, 0xffffffff4afb0cce );
  TEST_VV_OP( 583,  vredsum.vs, 5201314, 0x3333333333333332, 0xffffffff4afb0cce );
  TEST_VV_OP( 584,  vredsum.vs, 5201314, 0x6666666666666665, 0xffffffff4afb0cce );
  TEST_VV_OP( 585,  vredsum.vs, 5201314, 0x00000000000000, 0xffffffff4afb0cce );
  TEST_VV_OP( 586,  vredsum.vs, 5201314, 0x000000b504f332, 0xffffffff4afb0cce );
  TEST_VV_OP( 587,  vredsum.vs, 5201314, 0x00000000000004, 0xffffffff4afb0cce );
  TEST_VV_OP( 588,  vredsum.vs, 5201314, 0x5555555555555556, 0xffffffff4afb0cce );
  TEST_VV_OP( 589,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xffffffff4afb0cce );
  TEST_VV_OP( 590,  vredsum.vs, 5201314, 0x00000000000006, 0xffffffff4afb0cce );
  TEST_VV_OP( 591,  vredsum.vs, 5201314, 0x3333333333333334, 0xffffffff4afb0cce );
  TEST_VV_OP( 592,  vredsum.vs, 5201314, 0x6666666666666667, 0xffffffff4afb0cce );
  TEST_VV_OP( 593,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0xffffffff4afb0cce );
  TEST_VV_OP( 594,  vredsum.vs, 5201314, 0x000000b504f334, 0xffffffff4afb0cce );
  TEST_VV_OP( 595,  vredsum.vs, 5201314, 0x00000000000003, 0x000000b504f334 );
  TEST_VV_OP( 596,  vredsum.vs, 5201314, 0x5555555555555555, 0x000000b504f334 );
  TEST_VV_OP( 597,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x000000b504f334 );
  TEST_VV_OP( 598,  vredsum.vs, 5201314, 0x00000000000005, 0x000000b504f334 );
  TEST_VV_OP( 599,  vredsum.vs, 5201314, 0x3333333333333333, 0x000000b504f334 );
  TEST_VV_OP( 600,  vredsum.vs, 5201314, 0x6666666666666666, 0x000000b504f334 );
  TEST_VV_OP( 601,  vredsum.vs, 5201314, 0xffffffff4afb0ccd, 0x000000b504f334 );
  TEST_VV_OP( 602,  vredsum.vs, 5201314, 0x000000b504f333, 0x000000b504f334 );
  TEST_VV_OP( 603,  vredsum.vs, 5201314, 0x00000000000002, 0x000000b504f334 );
  TEST_VV_OP( 604,  vredsum.vs, 5201314, 0x5555555555555554, 0x000000b504f334 );
  TEST_VV_OP( 605,  vredsum.vs, 5201314, 0x3333333333333332, 0x000000b504f334 );
  TEST_VV_OP( 606,  vredsum.vs, 5201314, 0x6666666666666665, 0x000000b504f334 );
  TEST_VV_OP( 607,  vredsum.vs, 5201314, 0x00000000000000, 0x000000b504f334 );
  TEST_VV_OP( 608,  vredsum.vs, 5201314, 0x000000b504f332, 0x000000b504f334 );
  TEST_VV_OP( 609,  vredsum.vs, 5201314, 0x00000000000004, 0x000000b504f334 );
  TEST_VV_OP( 610,  vredsum.vs, 5201314, 0x5555555555555556, 0x000000b504f334 );
  TEST_VV_OP( 611,  vredsum.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x000000b504f334 );
  TEST_VV_OP( 612,  vredsum.vs, 5201314, 0x00000000000006, 0x000000b504f334 );
  TEST_VV_OP( 613,  vredsum.vs, 5201314, 0x3333333333333334, 0x000000b504f334 );
  TEST_VV_OP( 614,  vredsum.vs, 5201314, 0x6666666666666667, 0x000000b504f334 );
  TEST_VV_OP( 615,  vredsum.vs, 5201314, 0xffffffff4afb0cce, 0x000000b504f334 );
  TEST_VV_OP( 616,  vredsum.vs, 5201314, 0x000000b504f334, 0x000000b504f334 );
  TEST_VV_OP_rd1( 617,  vredsum.vs, 5201314, 0xfffffffffffffffe, 0xfffffffffffffffe);
  TEST_VV_OP_12( 618,  vredsum.vs, 5201314, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_VV_OP_rd2( 619,  vredsum.vs, 5201314, 0xfffffffffffffffd, 0xfffffffffffffffd);
  TEST_VV_OP_13( 620,  vredsum.vs, 5201314, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_VV_OP_rd3( 621,  vredsum.vs, 5201314, 0xfffffffffffffffb, 0xfffffffffffffffb);
  TEST_VV_OP_14( 622,  vredsum.vs, 5201314, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_VV_OP_rd4( 623,  vredsum.vs, 5201314, 0xfffffffffffffff7, 0xfffffffffffffff7);
  TEST_VV_OP_15( 624,  vredsum.vs, 5201314, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_VV_OP_rd5( 625,  vredsum.vs, 5201314, 0xffffffffffffffef, 0xffffffffffffffef);
  TEST_VV_OP_16( 626,  vredsum.vs, 5201314, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_VV_OP_rd6( 627,  vredsum.vs, 5201314, 0xffffffffffffffdf, 0xffffffffffffffdf);
  TEST_VV_OP_17( 628,  vredsum.vs, 5201314, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_VV_OP_rd7( 629,  vredsum.vs, 5201314, 0xffffffffffffffbf, 0xffffffffffffffbf);
  TEST_VV_OP_rd8( 630,  vredsum.vs, 5201314, 0xffffffffffffff7f, 0xffffffffffffff7f);
  TEST_VV_OP_19( 631,  vredsum.vs, 5201314, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_VV_OP_rd9( 632,  vredsum.vs, 5201314, 0xfffffffffffffeff, 0xfffffffffffffeff);
  TEST_VV_OP_110( 633,  vredsum.vs, 5201314, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_VV_OP_rd10( 634,  vredsum.vs, 5201314, 0xfffffffffffffdff, 0xfffffffffffffdff);
  TEST_VV_OP_111( 635,  vredsum.vs, 5201314, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_VV_OP_rd11( 636,  vredsum.vs, 5201314, 0xfffffffffffffbff, 0xfffffffffffffbff);
  TEST_VV_OP_rd13( 637,  vredsum.vs, 5201314, 0xffffffffffffefff, 0xffffffffffffefff);
  TEST_VV_OP_114( 638,  vredsum.vs, 5201314, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_VV_OP_rd14( 639,  vredsum.vs, 5201314, 0xffffffffffffdfff, 0xffffffffffffdfff);
  TEST_VV_OP_115( 640,  vredsum.vs, 5201314, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_VV_OP_rd15( 641,  vredsum.vs, 5201314, 0xffffffffffffbfff, 0xffffffffffffbfff);
  TEST_VV_OP_rd16( 642,  vredsum.vs, 5201314, 0xffffffffffff7fff, 0xffffffffffff7fff);
  TEST_VV_OP_117( 643,  vredsum.vs, 5201314, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_VV_OP_rd17( 644,  vredsum.vs, 5201314, 0xfffffffffffeffff, 0xfffffffffffeffff);
  TEST_VV_OP_118( 645,  vredsum.vs, 5201314, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_VV_OP_rd18( 646,  vredsum.vs, 5201314, 0xfffffffffffdffff, 0xfffffffffffdffff);
  TEST_VV_OP_119( 647,  vredsum.vs, 5201314, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_VV_OP_rd19( 648,  vredsum.vs, 5201314, 0xfffffffffffbffff, 0xfffffffffffbffff);
  TEST_VV_OP_rd21( 649,  vredsum.vs, 5201314, 0xffffffffffefffff, 0xffffffffffefffff);
  TEST_VV_OP_122( 650,  vredsum.vs, 5201314, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_VV_OP_rd22( 651,  vredsum.vs, 5201314, 0xffffffffffdfffff, 0xffffffffffdfffff);
  TEST_VV_OP_123( 652,  vredsum.vs, 5201314, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_VV_OP_rd23( 653,  vredsum.vs, 5201314, 0xffffffffffbfffff, 0xffffffffffbfffff);
  TEST_VV_OP_rd25( 654,  vredsum.vs, 5201314, 0xfffffffffeffffff, 0xfffffffffeffffff);
  TEST_VV_OP_126( 655,  vredsum.vs, 5201314, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_VV_OP_rd26( 656,  vredsum.vs, 5201314, 0xfffffffffdffffff, 0xfffffffffdffffff);
  TEST_VV_OP_127( 657,  vredsum.vs, 5201314, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_VV_OP_rd27( 658,  vredsum.vs, 5201314, 0xfffffffffbffffff, 0xfffffffffbffffff);
  TEST_VV_OP_128( 659,  vredsum.vs, 5201314, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_VV_OP_rd28( 660,  vredsum.vs, 5201314, 0xfffffffff7ffffff, 0xfffffffff7ffffff);
  TEST_VV_OP_129( 661,  vredsum.vs, 5201314, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_VV_OP_rd29( 662,  vredsum.vs, 5201314, 0xffffffffefffffff, 0xffffffffefffffff);
  TEST_VV_OP_130( 663,  vredsum.vs, 5201314, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_VV_OP_rd30( 664,  vredsum.vs, 5201314, 0xffffffffdfffffff, 0xffffffffdfffffff);
  TEST_VV_OP_131( 665,  vredsum.vs, 5201314, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_VV_OP_rd31( 666,  vredsum.vs, 5201314, 0xffffffffbfffffff, 0xffffffffbfffffff);
  TEST_VV_OP_12( 667,  vredsum.vs, 5201314, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_VV_OP_rd1( 668,  vredsum.vs, 5201314, 0xffffffff7fffffff, 0xffffffff7fffffff);
  TEST_VV_OP_13( 669,  vredsum.vs, 5201314, 0xffffffff7fffffff, 0xffffffff7fffffff );
  TEST_VV_OP_rd2( 670,  vredsum.vs, 5201314, 0xfffffffeffffffff, 0xfffffffeffffffff);
  TEST_VV_OP_14( 671,  vredsum.vs, 5201314, 0xfffffffeffffffff, 0xfffffffeffffffff );
  TEST_VV_OP_rd3( 672,  vredsum.vs, 5201314, 0xfffffffdffffffff, 0xfffffffdffffffff);
  TEST_VV_OP_15( 673,  vredsum.vs, 5201314, 0xfffffffdffffffff, 0xfffffffdffffffff );
  TEST_VV_OP_rd4( 674,  vredsum.vs, 5201314, 0xfffffffbffffffff, 0xfffffffbffffffff);
  TEST_VV_OP_16( 675,  vredsum.vs, 5201314, 0xfffffffbffffffff, 0xfffffffbffffffff );
  TEST_VV_OP_rd5( 676,  vredsum.vs, 5201314, 0xfffffff7ffffffff, 0xfffffff7ffffffff);
  TEST_VV_OP_17( 677,  vredsum.vs, 5201314, 0xfffffff7ffffffff, 0xfffffff7ffffffff );
  TEST_VV_OP_rd6( 678,  vredsum.vs, 5201314, 0xffffffefffffffff, 0xffffffefffffffff);
  TEST_VV_OP_rd7( 679,  vredsum.vs, 5201314, 0xffffffdfffffffff, 0xffffffdfffffffff);
  TEST_VV_OP_19( 680,  vredsum.vs, 5201314, 0xffffffdfffffffff, 0xffffffdfffffffff );
  TEST_VV_OP_rd8( 681,  vredsum.vs, 5201314, 0xffffffbfffffffff, 0xffffffbfffffffff);
  TEST_VV_OP_110( 682,  vredsum.vs, 5201314, 0xffffffbfffffffff, 0xffffffbfffffffff );
  TEST_VV_OP_rd9( 683,  vredsum.vs, 5201314, 0xffffff7fffffffff, 0xffffff7fffffffff);
  TEST_VV_OP_111( 684,  vredsum.vs, 5201314, 0xffffff7fffffffff, 0xffffff7fffffffff );
  TEST_VV_OP_rd10( 685,  vredsum.vs, 5201314, 0xfffffeffffffffff, 0xfffffeffffffffff);
  TEST_VV_OP_rd11( 686,  vredsum.vs, 5201314, 0xfffffdffffffffff, 0xfffffdffffffffff);
  TEST_VV_OP_113( 687,  vredsum.vs, 5201314, 0xfffffdffffffffff, 0xfffffdffffffffff );
  TEST_VV_OP_rd13( 688,  vredsum.vs, 5201314, 0xfffff7ffffffffff, 0xfffff7ffffffffff);
  TEST_VV_OP_115( 689,  vredsum.vs, 5201314, 0xfffff7ffffffffff, 0xfffff7ffffffffff );
  TEST_VV_OP_rd14( 690,  vredsum.vs, 5201314, 0xffffefffffffffff, 0xffffefffffffffff);
  TEST_VV_OP_rd15( 691,  vredsum.vs, 5201314, 0xffffdfffffffffff, 0xffffdfffffffffff);
  TEST_VV_OP_117( 692,  vredsum.vs, 5201314, 0xffffdfffffffffff, 0xffffdfffffffffff );
  TEST_VV_OP_rd16( 693,  vredsum.vs, 5201314, 0xffffbfffffffffff, 0xffffbfffffffffff);
  TEST_VV_OP_118( 694,  vredsum.vs, 5201314, 0xffffbfffffffffff, 0xffffbfffffffffff );
  TEST_VV_OP_rd17( 695,  vredsum.vs, 5201314, 0xffff7fffffffffff, 0xffff7fffffffffff);
  TEST_VV_OP_119( 696,  vredsum.vs, 5201314, 0xffff7fffffffffff, 0xffff7fffffffffff );
  TEST_VV_OP_rd18( 697,  vredsum.vs, 5201314, 0xfffeffffffffffff, 0xfffeffffffffffff);
  TEST_VV_OP_rd19( 698,  vredsum.vs, 5201314, 0xfffdffffffffffff, 0xfffdffffffffffff);
  TEST_VV_OP_121( 699,  vredsum.vs, 5201314, 0xfffdffffffffffff, 0xfffdffffffffffff );
  TEST_VV_OP_rd21( 700,  vredsum.vs, 5201314, 0xfff7ffffffffffff, 0xfff7ffffffffffff);
  TEST_VV_OP_123( 701,  vredsum.vs, 5201314, 0xfff7ffffffffffff, 0xfff7ffffffffffff );
  TEST_VV_OP_rd22( 702,  vredsum.vs, 5201314, 0xffefffffffffffff, 0xffefffffffffffff);
  TEST_VV_OP_rd23( 703,  vredsum.vs, 5201314, 0xffdfffffffffffff, 0xffdfffffffffffff);
  TEST_VV_OP_125( 704,  vredsum.vs, 5201314, 0xffdfffffffffffff, 0xffdfffffffffffff );
  TEST_VV_OP_rd25( 705,  vredsum.vs, 5201314, 0xff7fffffffffffff, 0xff7fffffffffffff);
  TEST_VV_OP_127( 706,  vredsum.vs, 5201314, 0xff7fffffffffffff, 0xff7fffffffffffff );
  TEST_VV_OP_rd26( 707,  vredsum.vs, 5201314, 0xfeffffffffffffff, 0xfeffffffffffffff);
  TEST_VV_OP_128( 708,  vredsum.vs, 5201314, 0xfeffffffffffffff, 0xfeffffffffffffff );
  TEST_VV_OP_rd27( 709,  vredsum.vs, 5201314, 0xfdffffffffffffff, 0xfdffffffffffffff);
  TEST_VV_OP_129( 710,  vredsum.vs, 5201314, 0xfdffffffffffffff, 0xfdffffffffffffff );
  TEST_VV_OP_rd28( 711,  vredsum.vs, 5201314, 0xfbffffffffffffff, 0xfbffffffffffffff);
  TEST_VV_OP_130( 712,  vredsum.vs, 5201314, 0xfbffffffffffffff, 0xfbffffffffffffff );
  TEST_VV_OP_rd29( 713,  vredsum.vs, 5201314, 0xf7ffffffffffffff, 0xf7ffffffffffffff);
  TEST_VV_OP_131( 714,  vredsum.vs, 5201314, 0xf7ffffffffffffff, 0xf7ffffffffffffff );
  TEST_VV_OP_rd30( 715,  vredsum.vs, 5201314, 0xefffffffffffffff, 0xefffffffffffffff);
  TEST_VV_OP_12( 716,  vredsum.vs, 5201314, 0xefffffffffffffff, 0xefffffffffffffff );
  TEST_VV_OP_rd31( 717,  vredsum.vs, 5201314, 0xdfffffffffffffff, 0xdfffffffffffffff);
  TEST_VV_OP_13( 718,  vredsum.vs, 5201314, 0xdfffffffffffffff, 0xdfffffffffffffff );
  TEST_VV_OP_rd1( 719,  vredsum.vs, 5201314, 0xbfffffffffffffff, 0xbfffffffffffffff);
  TEST_VV_OP_14( 720,  vredsum.vs, 5201314, 0xbfffffffffffffff, 0xbfffffffffffffff );
  TEST_VV_OP_rd2( 721,  vredsum.vs, 5201314, 0x7fffffffffffffff, 0x7fffffffffffffff);
  TEST_VV_OP_15( 722,  vredsum.vs, 5201314, 0x7fffffffffffffff, 0x7fffffffffffffff );
  TEST_VV_OP_rd3( 723,  vredsum.vs, 5201314, 0x00000000000001, 0x00000000000001);
  TEST_VV_OP_16( 724,  vredsum.vs, 5201314, 0x00000000000001, 0x00000000000001 );
  TEST_VV_OP_rd4( 725,  vredsum.vs, 5201314, 0x00000000000002, 0x00000000000002);
  TEST_VV_OP_17( 726,  vredsum.vs, 5201314, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP_rd5( 727,  vredsum.vs, 5201314, 0x00000000000004, 0x00000000000004);
  TEST_VV_OP_rd6( 728,  vredsum.vs, 5201314, 0x00000000000008, 0x00000000000008);
  TEST_VV_OP_19( 729,  vredsum.vs, 5201314, 0x00000000000008, 0x00000000000008 );
  TEST_VV_OP_rd7( 730,  vredsum.vs, 5201314, 0x00000000000010, 0x00000000000010);
  TEST_VV_OP_110( 731,  vredsum.vs, 5201314, 0x00000000000010, 0x00000000000010 );
  TEST_VV_OP_rd8( 732,  vredsum.vs, 5201314, 0x00000000000020, 0x00000000000020);
  TEST_VV_OP_111( 733,  vredsum.vs, 5201314, 0x00000000000020, 0x00000000000020 );
  TEST_VV_OP_rd9( 734,  vredsum.vs, 5201314, 0x00000000000040, 0x00000000000040);
  TEST_VV_OP_rd10( 735,  vredsum.vs, 5201314, 0x00000000000080, 0x00000000000080);
  TEST_VV_OP_113( 736,  vredsum.vs, 5201314, 0x00000000000080, 0x00000000000080 );
  TEST_VV_OP_rd11( 737,  vredsum.vs, 5201314, 0x00000000000100, 0x00000000000100);
  TEST_VV_OP_114( 738,  vredsum.vs, 5201314, 0x00000000000100, 0x00000000000100 );
  TEST_VV_OP_rd13( 739,  vredsum.vs, 5201314, 0x00000000000400, 0x00000000000400);
  TEST_VV_OP_rd14( 740,  vredsum.vs, 5201314, 0x00000000000800, 0x00000000000800);
  TEST_VV_OP_117( 741,  vredsum.vs, 5201314, 0x00000000000800, 0x00000000000800 );
  TEST_VV_OP_rd15( 742,  vredsum.vs, 5201314, 0x00000000001000, 0x00000000001000);
  TEST_VV_OP_118( 743,  vredsum.vs, 5201314, 0x00000000001000, 0x00000000001000 );
  TEST_VV_OP_rd16( 744,  vredsum.vs, 5201314, 0x00000000002000, 0x00000000002000);
  TEST_VV_OP_119( 745,  vredsum.vs, 5201314, 0x00000000002000, 0x00000000002000 );
  TEST_VV_OP_rd17( 746,  vredsum.vs, 5201314, 0x00000000004000, 0x00000000004000);
  TEST_VV_OP_rd18( 747,  vredsum.vs, 5201314, 0x00000000008000, 0x00000000008000);
  TEST_VV_OP_121( 748,  vredsum.vs, 5201314, 0x00000000008000, 0x00000000008000 );
  TEST_VV_OP_rd19( 749,  vredsum.vs, 5201314, 0x00000000010000, 0x00000000010000);
  TEST_VV_OP_122( 750,  vredsum.vs, 5201314, 0x00000000010000, 0x00000000010000 );
  TEST_VV_OP_rd21( 751,  vredsum.vs, 5201314, 0x00000000040000, 0x00000000040000);
  TEST_VV_OP_rd22( 752,  vredsum.vs, 5201314, 0x00000000080000, 0x00000000080000);
  TEST_VV_OP_125( 753,  vredsum.vs, 5201314, 0x00000000080000, 0x00000000080000 );
  TEST_VV_OP_rd23( 754,  vredsum.vs, 5201314, 0x00000000100000, 0x00000000100000);
  TEST_VV_OP_126( 755,  vredsum.vs, 5201314, 0x00000000100000, 0x00000000100000 );
  TEST_VV_OP_rd25( 756,  vredsum.vs, 5201314, 0x00000000400000, 0x00000000400000);
  TEST_VV_OP_128( 757,  vredsum.vs, 5201314, 0x00000000400000, 0x00000000400000 );
  TEST_VV_OP_rd26( 758,  vredsum.vs, 5201314, 0x00000000800000, 0x00000000800000);
  TEST_VV_OP_129( 759,  vredsum.vs, 5201314, 0x00000000800000, 0x00000000800000 );
  TEST_VV_OP_rd27( 760,  vredsum.vs, 5201314, 0x00000001000000, 0x00000001000000);
  TEST_VV_OP_130( 761,  vredsum.vs, 5201314, 0x00000001000000, 0x00000001000000 );
  TEST_VV_OP_rd28( 762,  vredsum.vs, 5201314, 0x00000002000000, 0x00000002000000);
  TEST_VV_OP_131( 763,  vredsum.vs, 5201314, 0x00000002000000, 0x00000002000000 );
  TEST_VV_OP_rd29( 764,  vredsum.vs, 5201314, 0x00000004000000, 0x00000004000000);
  TEST_VV_OP_12( 765,  vredsum.vs, 5201314, 0x00000004000000, 0x00000004000000 );
  TEST_VV_OP_rd30( 766,  vredsum.vs, 5201314, 0x00000008000000, 0x00000008000000);
  TEST_VV_OP_13( 767,  vredsum.vs, 5201314, 0x00000008000000, 0x00000008000000 );
  TEST_VV_OP_rd31( 768,  vredsum.vs, 5201314, 0x00000010000000, 0x00000010000000);
  TEST_VV_OP_14( 769,  vredsum.vs, 5201314, 0x00000010000000, 0x00000010000000 );
  TEST_VV_OP_rd1( 770,  vredsum.vs, 5201314, 0x00000020000000, 0x00000020000000);
  TEST_VV_OP_15( 771,  vredsum.vs, 5201314, 0x00000020000000, 0x00000020000000 );
  TEST_VV_OP_rd2( 772,  vredsum.vs, 5201314, 0x00000040000000, 0x00000040000000);
  TEST_VV_OP_16( 773,  vredsum.vs, 5201314, 0x00000040000000, 0x00000040000000 );
  TEST_VV_OP_rd3( 774,  vredsum.vs, 5201314, 0x00000080000000, 0x00000080000000);
  TEST_VV_OP_17( 775,  vredsum.vs, 5201314, 0x00000080000000, 0x00000080000000 );
  TEST_VV_OP_rd4( 776,  vredsum.vs, 5201314, 0x00000100000000, 0x00000100000000);
  TEST_VV_OP_rd5( 777,  vredsum.vs, 5201314, 0x00000200000000, 0x00000200000000);
  TEST_VV_OP_19( 778,  vredsum.vs, 5201314, 0x00000200000000, 0x00000200000000 );
  TEST_VV_OP_rd6( 779,  vredsum.vs, 5201314, 0x00000400000000, 0x00000400000000);
  TEST_VV_OP_110( 780,  vredsum.vs, 5201314, 0x00000400000000, 0x00000400000000 );
  TEST_VV_OP_rd7( 781,  vredsum.vs, 5201314, 0x00000800000000, 0x00000800000000);
  TEST_VV_OP_111( 782,  vredsum.vs, 5201314, 0x00000800000000, 0x00000800000000 );
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
    
    

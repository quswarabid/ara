#----------------------------------------------------------------------------- 
    # vredmaxu.S
    #-----------------------------------------------------------------------------
    #
    # Test vredmaxu instructions.
    #

    #include "model_test.h"
    #include "arch_test.h"
    #include "test_macros_vector.h"

RVTEST_ISA("RV64RV64IMAFDCVZicsr")
    
    .section .text.init
    .globl rvtest_entry_point
    rvtest_entry_point:
    
    #ifdef TEST_CASE_1
    
    RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*V.*);def TEST_CASE_1=True;",vredmaxu)
    
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
  TEST_VV_OP( 2,  vredmaxu.vs, 5201314, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_VV_OP( 3,  vredmaxu.vs, 5201314, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_VV_OP( 4,  vredmaxu.vs, 5201314, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_VV_OP( 5,  vredmaxu.vs, 5201314, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_VV_OP( 6,  vredmaxu.vs, 5201314, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_VV_OP( 7,  vredmaxu.vs, 5201314, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_VV_OP( 8,  vredmaxu.vs, 5201314, 0xffffffffffffffbf, 0xffffffffffffffbf );
  TEST_VV_OP( 9,  vredmaxu.vs, 5201314, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_VV_OP( 10,  vredmaxu.vs, 5201314, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_VV_OP( 11,  vredmaxu.vs, 5201314, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_VV_OP( 12,  vredmaxu.vs, 5201314, 0xfffffffffffffbff, 0xfffffffffffffbff );
  TEST_VV_OP( 13,  vredmaxu.vs, 5201314, 0xfffffffffffff7ff, 0xfffffffffffff7ff );
  TEST_VV_OP( 14,  vredmaxu.vs, 5201314, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_VV_OP( 15,  vredmaxu.vs, 5201314, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_VV_OP( 16,  vredmaxu.vs, 5201314, 0xffffffffffffbfff, 0xffffffffffffbfff );
  TEST_VV_OP( 17,  vredmaxu.vs, 5201314, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_VV_OP( 18,  vredmaxu.vs, 5201314, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_VV_OP( 19,  vredmaxu.vs, 5201314, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_VV_OP( 20,  vredmaxu.vs, 5201314, 0xfffffffffffbffff, 0xfffffffffffbffff );
  TEST_VV_OP( 21,  vredmaxu.vs, 5201314, 0xfffffffffff7ffff, 0xfffffffffff7ffff );
  TEST_VV_OP( 22,  vredmaxu.vs, 5201314, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_VV_OP( 23,  vredmaxu.vs, 5201314, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_VV_OP( 24,  vredmaxu.vs, 5201314, 0xffffffffffbfffff, 0xffffffffffbfffff );
  TEST_VV_OP( 25,  vredmaxu.vs, 5201314, 0xffffffffff7fffff, 0xffffffffff7fffff );
  TEST_VV_OP( 26,  vredmaxu.vs, 5201314, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_VV_OP( 27,  vredmaxu.vs, 5201314, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_VV_OP( 28,  vredmaxu.vs, 5201314, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_VV_OP( 29,  vredmaxu.vs, 5201314, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_VV_OP( 30,  vredmaxu.vs, 5201314, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_VV_OP( 31,  vredmaxu.vs, 5201314, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_VV_OP( 32,  vredmaxu.vs, 5201314, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_VV_OP( 33,  vredmaxu.vs, 5201314, 0xffffffff7fffffff, 0xffffffff7fffffff );
  TEST_VV_OP( 34,  vredmaxu.vs, 5201314, 0xfffffffeffffffff, 0xfffffffeffffffff );
  TEST_VV_OP( 35,  vredmaxu.vs, 5201314, 0xfffffffdffffffff, 0xfffffffdffffffff );
  TEST_VV_OP( 36,  vredmaxu.vs, 5201314, 0xfffffffbffffffff, 0xfffffffbffffffff );
  TEST_VV_OP( 37,  vredmaxu.vs, 5201314, 0xfffffff7ffffffff, 0xfffffff7ffffffff );
  TEST_VV_OP( 38,  vredmaxu.vs, 5201314, 0xffffffefffffffff, 0xffffffefffffffff );
  TEST_VV_OP( 39,  vredmaxu.vs, 5201314, 0xffffffdfffffffff, 0xffffffdfffffffff );
  TEST_VV_OP( 40,  vredmaxu.vs, 5201314, 0xffffffbfffffffff, 0xffffffbfffffffff );
  TEST_VV_OP( 41,  vredmaxu.vs, 5201314, 0xffffff7fffffffff, 0xffffff7fffffffff );
  TEST_VV_OP( 42,  vredmaxu.vs, 5201314, 0xfffffeffffffffff, 0xfffffeffffffffff );
  TEST_VV_OP( 43,  vredmaxu.vs, 5201314, 0xfffffdffffffffff, 0xfffffdffffffffff );
  TEST_VV_OP( 44,  vredmaxu.vs, 5201314, 0xfffffbffffffffff, 0xfffffbffffffffff );
  TEST_VV_OP( 45,  vredmaxu.vs, 5201314, 0xfffff7ffffffffff, 0xfffff7ffffffffff );
  TEST_VV_OP( 46,  vredmaxu.vs, 5201314, 0xffffefffffffffff, 0xffffefffffffffff );
  TEST_VV_OP( 47,  vredmaxu.vs, 5201314, 0xffffdfffffffffff, 0xffffdfffffffffff );
  TEST_VV_OP( 48,  vredmaxu.vs, 5201314, 0xffffbfffffffffff, 0xffffbfffffffffff );
  TEST_VV_OP( 49,  vredmaxu.vs, 5201314, 0xffff7fffffffffff, 0xffff7fffffffffff );
  TEST_VV_OP( 50,  vredmaxu.vs, 5201314, 0xfffeffffffffffff, 0xfffeffffffffffff );
  TEST_VV_OP( 51,  vredmaxu.vs, 5201314, 0xfffdffffffffffff, 0xfffdffffffffffff );
  TEST_VV_OP( 52,  vredmaxu.vs, 5201314, 0xfffbffffffffffff, 0xfffbffffffffffff );
  TEST_VV_OP( 53,  vredmaxu.vs, 5201314, 0xfff7ffffffffffff, 0xfff7ffffffffffff );
  TEST_VV_OP( 54,  vredmaxu.vs, 5201314, 0xffefffffffffffff, 0xffefffffffffffff );
  TEST_VV_OP( 55,  vredmaxu.vs, 5201314, 0xffdfffffffffffff, 0xffdfffffffffffff );
  TEST_VV_OP( 56,  vredmaxu.vs, 5201314, 0xffbfffffffffffff, 0xffbfffffffffffff );
  TEST_VV_OP( 57,  vredmaxu.vs, 5201314, 0xff7fffffffffffff, 0xff7fffffffffffff );
  TEST_VV_OP( 58,  vredmaxu.vs, 5201314, 0xfeffffffffffffff, 0xfeffffffffffffff );
  TEST_VV_OP( 59,  vredmaxu.vs, 5201314, 0xfdffffffffffffff, 0xfdffffffffffffff );
  TEST_VV_OP( 60,  vredmaxu.vs, 5201314, 0xfbffffffffffffff, 0xfbffffffffffffff );
  TEST_VV_OP( 61,  vredmaxu.vs, 5201314, 0xf7ffffffffffffff, 0xf7ffffffffffffff );
  TEST_VV_OP( 62,  vredmaxu.vs, 5201314, 0xefffffffffffffff, 0xefffffffffffffff );
  TEST_VV_OP( 63,  vredmaxu.vs, 5201314, 0xdfffffffffffffff, 0xdfffffffffffffff );
  TEST_VV_OP( 64,  vredmaxu.vs, 5201314, 0xbfffffffffffffff, 0xbfffffffffffffff );
  TEST_VV_OP( 65,  vredmaxu.vs, 5201314, 0x7fffffffffffffff, 0x7fffffffffffffff );
  TEST_VV_OP( 66,  vredmaxu.vs, 5201314, 0x00000000000001, 0x00000000000001 );
  TEST_VV_OP( 67,  vredmaxu.vs, 5201314, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP( 68,  vredmaxu.vs, 5201314, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP( 69,  vredmaxu.vs, 5201314, 0x00000000000008, 0x00000000000008 );
  TEST_VV_OP( 70,  vredmaxu.vs, 5201314, 0x00000000000010, 0x00000000000010 );
  TEST_VV_OP( 71,  vredmaxu.vs, 5201314, 0x00000000000020, 0x00000000000020 );
  TEST_VV_OP( 72,  vredmaxu.vs, 5201314, 0x00000000000040, 0x00000000000040 );
  TEST_VV_OP( 73,  vredmaxu.vs, 5201314, 0x00000000000080, 0x00000000000080 );
  TEST_VV_OP( 74,  vredmaxu.vs, 5201314, 0x00000000000100, 0x00000000000100 );
  TEST_VV_OP( 75,  vredmaxu.vs, 5201314, 0x00000000000200, 0x00000000000200 );
  TEST_VV_OP( 76,  vredmaxu.vs, 5201314, 0x00000000000400, 0x00000000000400 );
  TEST_VV_OP( 77,  vredmaxu.vs, 5201314, 0x00000000000800, 0x00000000000800 );
  TEST_VV_OP( 78,  vredmaxu.vs, 5201314, 0x00000000001000, 0x00000000001000 );
  TEST_VV_OP( 79,  vredmaxu.vs, 5201314, 0x00000000002000, 0x00000000002000 );
  TEST_VV_OP( 80,  vredmaxu.vs, 5201314, 0x00000000004000, 0x00000000004000 );
  TEST_VV_OP( 81,  vredmaxu.vs, 5201314, 0x00000000008000, 0x00000000008000 );
  TEST_VV_OP( 82,  vredmaxu.vs, 5201314, 0x00000000010000, 0x00000000010000 );
  TEST_VV_OP( 83,  vredmaxu.vs, 5201314, 0x00000000020000, 0x00000000020000 );
  TEST_VV_OP( 84,  vredmaxu.vs, 5201314, 0x00000000040000, 0x00000000040000 );
  TEST_VV_OP( 85,  vredmaxu.vs, 5201314, 0x00000000080000, 0x00000000080000 );
  TEST_VV_OP( 86,  vredmaxu.vs, 5201314, 0x00000000100000, 0x00000000100000 );
  TEST_VV_OP( 87,  vredmaxu.vs, 5201314, 0x00000000200000, 0x00000000200000 );
  TEST_VV_OP( 88,  vredmaxu.vs, 5201314, 0x00000000400000, 0x00000000400000 );
  TEST_VV_OP( 89,  vredmaxu.vs, 5201314, 0x00000000800000, 0x00000000800000 );
  TEST_VV_OP( 90,  vredmaxu.vs, 5201314, 0x00000001000000, 0x00000001000000 );
  TEST_VV_OP( 91,  vredmaxu.vs, 5201314, 0x00000002000000, 0x00000002000000 );
  TEST_VV_OP( 92,  vredmaxu.vs, 5201314, 0x00000004000000, 0x00000004000000 );
  TEST_VV_OP( 93,  vredmaxu.vs, 5201314, 0x00000008000000, 0x00000008000000 );
  TEST_VV_OP( 94,  vredmaxu.vs, 5201314, 0x00000010000000, 0x00000010000000 );
  TEST_VV_OP( 95,  vredmaxu.vs, 5201314, 0x00000020000000, 0x00000020000000 );
  TEST_VV_OP( 96,  vredmaxu.vs, 5201314, 0x00000040000000, 0x00000040000000 );
  TEST_VV_OP( 97,  vredmaxu.vs, 5201314, 0x00000080000000, 0x00000080000000 );
  TEST_VV_OP( 98,  vredmaxu.vs, 5201314, 0x00000100000000, 0x00000100000000 );
  TEST_VV_OP( 99,  vredmaxu.vs, 5201314, 0x00000200000000, 0x00000200000000 );
  TEST_VV_OP( 100,  vredmaxu.vs, 5201314, 0x00000400000000, 0x00000400000000 );
  TEST_VV_OP( 101,  vredmaxu.vs, 5201314, 0x00000800000000, 0x00000800000000 );
  TEST_VV_OP( 102,  vredmaxu.vs, 5201314, 0x00001000000000, 0x00001000000000 );
  TEST_VV_OP( 103,  vredmaxu.vs, 5201314, 0x00002000000000, 0x00002000000000 );
  TEST_VV_OP( 104,  vredmaxu.vs, 5201314, 0x00004000000000, 0x00004000000000 );
  TEST_VV_OP( 105,  vredmaxu.vs, 5201314, 0x00008000000000, 0x00008000000000 );
  TEST_VV_OP( 106,  vredmaxu.vs, 5201314, 0x00010000000000, 0x00010000000000 );
  TEST_VV_OP( 107,  vredmaxu.vs, 5201314, 0x00020000000000, 0x00020000000000 );
  TEST_VV_OP( 108,  vredmaxu.vs, 5201314, 0x00040000000000, 0x00040000000000 );
  TEST_VV_OP( 109,  vredmaxu.vs, 5201314, 0x00080000000000, 0x00080000000000 );
  TEST_VV_OP( 110,  vredmaxu.vs, 5201314, 0x00100000000000, 0x00100000000000 );
  TEST_VV_OP( 111,  vredmaxu.vs, 5201314, 0x00200000000000, 0x00200000000000 );
  TEST_VV_OP( 112,  vredmaxu.vs, 5201314, 0x00400000000000, 0x00400000000000 );
  TEST_VV_OP( 113,  vredmaxu.vs, 5201314, 0x00800000000000, 0x00800000000000 );
  TEST_VV_OP( 114,  vredmaxu.vs, 5201314, 0x01000000000000, 0x01000000000000 );
  TEST_VV_OP( 115,  vredmaxu.vs, 5201314, 0x02000000000000, 0x02000000000000 );
  TEST_VV_OP( 116,  vredmaxu.vs, 5201314, 0x04000000000000, 0x04000000000000 );
  TEST_VV_OP( 117,  vredmaxu.vs, 5201314, 0x08000000000000, 0x08000000000000 );
  TEST_VV_OP( 118,  vredmaxu.vs, 5201314, 0x10000000000000, 0x10000000000000 );
  TEST_VV_OP( 119,  vredmaxu.vs, 5201314, 0x20000000000000, 0x20000000000000 );
  TEST_VV_OP( 120,  vredmaxu.vs, 5201314, 0x40000000000000, 0x40000000000000 );
  TEST_VV_OP( 121,  vredmaxu.vs, 5201314, 0x80000000000000, 0x80000000000000 );
  TEST_VV_OP( 122,  vredmaxu.vs, 5201314, 0x100000000000000, 0x100000000000000 );
  TEST_VV_OP( 123,  vredmaxu.vs, 5201314, 0x200000000000000, 0x200000000000000 );
  TEST_VV_OP( 124,  vredmaxu.vs, 5201314, 0x400000000000000, 0x400000000000000 );
  TEST_VV_OP( 125,  vredmaxu.vs, 5201314, 0x800000000000000, 0x800000000000000 );
  TEST_VV_OP( 126,  vredmaxu.vs, 5201314, 0x1000000000000000, 0x1000000000000000 );
  TEST_VV_OP( 127,  vredmaxu.vs, 5201314, 0x2000000000000000, 0x2000000000000000 );
  TEST_VV_OP( 128,  vredmaxu.vs, 5201314, 0x4000000000000000, 0x4000000000000000 );
  TEST_VV_OP( 129,  vredmaxu.vs, 5201314, 0x8000000000000000, 0x8000000000000000 );
  TEST_VV_OP( 130,  vredmaxu.vs, 5201314, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP( 131,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x00000000000003 );
  TEST_VV_OP( 132,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP( 133,  vredmaxu.vs, 5201314, 0x00000000000005, 0x00000000000003 );
  TEST_VV_OP( 134,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x00000000000003 );
  TEST_VV_OP( 135,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x00000000000003 );
  TEST_VV_OP( 136,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x00000000000003 );
  TEST_VV_OP( 137,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000003 );
  TEST_VV_OP( 138,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x00000000000003 );
  TEST_VV_OP( 139,  vredmaxu.vs, 5201314, 0x00000000000002, 0x00000000000003 );
  TEST_VV_OP( 140,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x00000000000003 );
  TEST_VV_OP( 141,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x00000000000003 );
  TEST_VV_OP( 142,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x5555555555555555 );
  TEST_VV_OP( 143,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000003 );
  TEST_VV_OP( 144,  vredmaxu.vs, 5201314, 0x00000000000000, 0x00000000000003 );
  TEST_VV_OP( 145,  vredmaxu.vs, 5201314, 0x000000b504f332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 146,  vredmaxu.vs, 5201314, 0x00000000000004, 0x00000000000003 );
  TEST_VV_OP( 147,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x00000000000003 );
  TEST_VV_OP( 148,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000003 );
  TEST_VV_OP( 149,  vredmaxu.vs, 5201314, 0x00000000000006, 0x00000000000003 );
  TEST_VV_OP( 150,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x00000000000003 );
  TEST_VV_OP( 151,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x00000000000003 );
  TEST_VV_OP( 152,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000000 );
  TEST_VV_OP( 153,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x00000000000003 );
  TEST_VV_OP( 154,  vredmaxu.vs, 5201314, 0x00000000000003, 0x00000000000003 );
  TEST_VV_OP( 155,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x5555555555555555 );
  TEST_VV_OP( 156,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x5555555555555555 );
  TEST_VV_OP( 157,  vredmaxu.vs, 5201314, 0x00000000000005, 0x5555555555555555 );
  TEST_VV_OP( 158,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x5555555555555555 );
  TEST_VV_OP( 159,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x5555555555555555 );
  TEST_VV_OP( 160,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x5555555555555555 );
  TEST_VV_OP( 161,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x5555555555555555 );
  TEST_VV_OP( 162,  vredmaxu.vs, 5201314, 0x00000000000002, 0x5555555555555555 );
  TEST_VV_OP( 163,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x5555555555555555 );
  TEST_VV_OP( 164,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x5555555555555555 );
  TEST_VV_OP( 165,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x5555555555555555 );
  TEST_VV_OP( 166,  vredmaxu.vs, 5201314, 0x00000000000000, 0x5555555555555555 );
  TEST_VV_OP( 167,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x5555555555555555 );
  TEST_VV_OP( 168,  vredmaxu.vs, 5201314, 0x00000000000004, 0x5555555555555555 );
  TEST_VV_OP( 169,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x5555555555555555 );
  TEST_VV_OP( 170,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x5555555555555555 );
  TEST_VV_OP( 171,  vredmaxu.vs, 5201314, 0x00000000000006, 0x5555555555555555 );
  TEST_VV_OP( 172,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x5555555555555555 );
  TEST_VV_OP( 173,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x5555555555555555 );
  TEST_VV_OP( 174,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x5555555555555555 );
  TEST_VV_OP( 175,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x5555555555555555 );
  TEST_VV_OP( 176,  vredmaxu.vs, 5201314, 0x00000000000003, 0x5555555555555555 );
  TEST_VV_OP( 177,  vredmaxu.vs, 5201314, 0x5555555555555555, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 178,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 179,  vredmaxu.vs, 5201314, 0x00000000000005, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 180,  vredmaxu.vs, 5201314, 0x3333333333333333, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 181,  vredmaxu.vs, 5201314, 0x6666666666666666, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 182,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 183,  vredmaxu.vs, 5201314, 0x000000b504f333, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 184,  vredmaxu.vs, 5201314, 0x00000000000002, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 185,  vredmaxu.vs, 5201314, 0x5555555555555554, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 186,  vredmaxu.vs, 5201314, 0x3333333333333332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 187,  vredmaxu.vs, 5201314, 0x6666666666666665, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 188,  vredmaxu.vs, 5201314, 0x00000000000000, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 189,  vredmaxu.vs, 5201314, 0x00000000000000, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 190,  vredmaxu.vs, 5201314, 0x000000b504f332, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 191,  vredmaxu.vs, 5201314, 0x00000000000004, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 192,  vredmaxu.vs, 5201314, 0x5555555555555556, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 193,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 194,  vredmaxu.vs, 5201314, 0x00000000000006, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 195,  vredmaxu.vs, 5201314, 0x3333333333333334, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 196,  vredmaxu.vs, 5201314, 0x6666666666666667, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 197,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 198,  vredmaxu.vs, 5201314, 0x000000b504f334, 0xaaaaaaaaaaaaaaaa );
  TEST_VV_OP( 199,  vredmaxu.vs, 5201314, 0x00000000000003, 0x00000000000005 );
  TEST_VV_OP( 200,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x00000000000005 );
  TEST_VV_OP( 201,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000005 );
  TEST_VV_OP( 202,  vredmaxu.vs, 5201314, 0x00000000000005, 0x00000000000005 );
  TEST_VV_OP( 203,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x00000000000005 );
  TEST_VV_OP( 204,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x00000000000005 );
  TEST_VV_OP( 205,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000005 );
  TEST_VV_OP( 206,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x00000000000005 );
  TEST_VV_OP( 207,  vredmaxu.vs, 5201314, 0x00000000000002, 0x00000000000005 );
  TEST_VV_OP( 208,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x00000000000005 );
  TEST_VV_OP( 209,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x00000000000005 );
  TEST_VV_OP( 210,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x00000000000005 );
  TEST_VV_OP( 211,  vredmaxu.vs, 5201314, 0x00000000000000, 0x00000000000005 );
  TEST_VV_OP( 212,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x00000000000005 );
  TEST_VV_OP( 213,  vredmaxu.vs, 5201314, 0x00000000000004, 0x00000000000005 );
  TEST_VV_OP( 214,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x00000000000005 );
  TEST_VV_OP( 215,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000005 );
  TEST_VV_OP( 216,  vredmaxu.vs, 5201314, 0x00000000000006, 0x00000000000005 );
  TEST_VV_OP( 217,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x00000000000005 );
  TEST_VV_OP( 218,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x00000000000005 );
  TEST_VV_OP( 219,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000005 );
  TEST_VV_OP( 220,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x00000000000005 );
  TEST_VV_OP( 221,  vredmaxu.vs, 5201314, 0x00000000000003, 0x3333333333333333 );
  TEST_VV_OP( 222,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x3333333333333333 );
  TEST_VV_OP( 223,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x3333333333333333 );
  TEST_VV_OP( 224,  vredmaxu.vs, 5201314, 0x00000000000005, 0x3333333333333333 );
  TEST_VV_OP( 225,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x3333333333333333 );
  TEST_VV_OP( 226,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x3333333333333333 );
  TEST_VV_OP( 227,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x3333333333333333 );
  TEST_VV_OP( 228,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x3333333333333333 );
  TEST_VV_OP( 229,  vredmaxu.vs, 5201314, 0x00000000000002, 0x3333333333333333 );
  TEST_VV_OP( 230,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x3333333333333333 );
  TEST_VV_OP( 231,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x3333333333333333 );
  TEST_VV_OP( 232,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x3333333333333333 );
  TEST_VV_OP( 233,  vredmaxu.vs, 5201314, 0x00000000000000, 0x3333333333333333 );
  TEST_VV_OP( 234,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x3333333333333333 );
  TEST_VV_OP( 235,  vredmaxu.vs, 5201314, 0x00000000000004, 0x3333333333333333 );
  TEST_VV_OP( 236,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x3333333333333333 );
  TEST_VV_OP( 237,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x3333333333333333 );
  TEST_VV_OP( 238,  vredmaxu.vs, 5201314, 0x00000000000006, 0x3333333333333333 );
  TEST_VV_OP( 239,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x3333333333333333 );
  TEST_VV_OP( 240,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x3333333333333333 );
  TEST_VV_OP( 241,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x3333333333333333 );
  TEST_VV_OP( 242,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x3333333333333333 );
  TEST_VV_OP( 243,  vredmaxu.vs, 5201314, 0x00000000000003, 0x6666666666666666 );
  TEST_VV_OP( 244,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x6666666666666666 );
  TEST_VV_OP( 245,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x6666666666666666 );
  TEST_VV_OP( 246,  vredmaxu.vs, 5201314, 0x00000000000005, 0x6666666666666666 );
  TEST_VV_OP( 247,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x6666666666666666 );
  TEST_VV_OP( 248,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x6666666666666666 );
  TEST_VV_OP( 249,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x6666666666666666 );
  TEST_VV_OP( 250,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x6666666666666666 );
  TEST_VV_OP( 251,  vredmaxu.vs, 5201314, 0x00000000000002, 0x6666666666666666 );
  TEST_VV_OP( 252,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x6666666666666666 );
  TEST_VV_OP( 253,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x6666666666666666 );
  TEST_VV_OP( 254,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x6666666666666666 );
  TEST_VV_OP( 255,  vredmaxu.vs, 5201314, 0x00000000000000, 0x6666666666666666 );
  TEST_VV_OP( 256,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x6666666666666666 );
  TEST_VV_OP( 257,  vredmaxu.vs, 5201314, 0x00000000000004, 0x6666666666666666 );
  TEST_VV_OP( 258,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x6666666666666666 );
  TEST_VV_OP( 259,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x6666666666666666 );
  TEST_VV_OP( 260,  vredmaxu.vs, 5201314, 0x00000000000006, 0x6666666666666666 );
  TEST_VV_OP( 261,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x6666666666666666 );
  TEST_VV_OP( 262,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x6666666666666666 );
  TEST_VV_OP( 263,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x6666666666666666 );
  TEST_VV_OP( 264,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x6666666666666666 );
  TEST_VV_OP( 265,  vredmaxu.vs, 5201314, 0x00000000000003, 0xffffffff4afb0ccd );
  TEST_VV_OP( 266,  vredmaxu.vs, 5201314, 0x5555555555555555, 0xffffffff4afb0ccd );
  TEST_VV_OP( 267,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xffffffff4afb0ccd );
  TEST_VV_OP( 268,  vredmaxu.vs, 5201314, 0x00000000000005, 0xffffffff4afb0ccd );
  TEST_VV_OP( 269,  vredmaxu.vs, 5201314, 0x3333333333333333, 0xffffffff4afb0ccd );
  TEST_VV_OP( 270,  vredmaxu.vs, 5201314, 0x6666666666666666, 0xffffffff4afb0ccd );
  TEST_VV_OP( 271,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0xffffffff4afb0ccd );
  TEST_VV_OP( 272,  vredmaxu.vs, 5201314, 0x000000b504f333, 0xffffffff4afb0ccd );
  TEST_VV_OP( 273,  vredmaxu.vs, 5201314, 0x00000000000002, 0xffffffff4afb0ccd );
  TEST_VV_OP( 274,  vredmaxu.vs, 5201314, 0x5555555555555554, 0xffffffff4afb0ccd );
  TEST_VV_OP( 275,  vredmaxu.vs, 5201314, 0x3333333333333332, 0xffffffff4afb0ccd );
  TEST_VV_OP( 276,  vredmaxu.vs, 5201314, 0x6666666666666665, 0xffffffff4afb0ccd );
  TEST_VV_OP( 277,  vredmaxu.vs, 5201314, 0x00000000000000, 0xffffffff4afb0ccd );
  TEST_VV_OP( 278,  vredmaxu.vs, 5201314, 0x000000b504f332, 0xffffffff4afb0ccd );
  TEST_VV_OP( 279,  vredmaxu.vs, 5201314, 0x00000000000004, 0xffffffff4afb0ccd );
  TEST_VV_OP( 280,  vredmaxu.vs, 5201314, 0x5555555555555556, 0xffffffff4afb0ccd );
  TEST_VV_OP( 281,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xffffffff4afb0ccd );
  TEST_VV_OP( 282,  vredmaxu.vs, 5201314, 0x00000000000006, 0xffffffff4afb0ccd );
  TEST_VV_OP( 283,  vredmaxu.vs, 5201314, 0x3333333333333334, 0xffffffff4afb0ccd );
  TEST_VV_OP( 284,  vredmaxu.vs, 5201314, 0x6666666666666667, 0xffffffff4afb0ccd );
  TEST_VV_OP( 285,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0xffffffff4afb0ccd );
  TEST_VV_OP( 286,  vredmaxu.vs, 5201314, 0x000000b504f334, 0xffffffff4afb0ccd );
  TEST_VV_OP( 287,  vredmaxu.vs, 5201314, 0x00000000000003, 0x000000b504f333 );
  TEST_VV_OP( 288,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x000000b504f333 );
  TEST_VV_OP( 289,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x000000b504f333 );
  TEST_VV_OP( 290,  vredmaxu.vs, 5201314, 0x00000000000005, 0x000000b504f333 );
  TEST_VV_OP( 291,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x000000b504f333 );
  TEST_VV_OP( 292,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x000000b504f333 );
  TEST_VV_OP( 293,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x000000b504f333 );
  TEST_VV_OP( 294,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x000000b504f333 );
  TEST_VV_OP( 295,  vredmaxu.vs, 5201314, 0x00000000000002, 0x000000b504f333 );
  TEST_VV_OP( 296,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x000000b504f333 );
  TEST_VV_OP( 297,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x000000b504f333 );
  TEST_VV_OP( 298,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x000000b504f333 );
  TEST_VV_OP( 299,  vredmaxu.vs, 5201314, 0x00000000000000, 0x000000b504f333 );
  TEST_VV_OP( 300,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x000000b504f333 );
  TEST_VV_OP( 301,  vredmaxu.vs, 5201314, 0x00000000000004, 0x000000b504f333 );
  TEST_VV_OP( 302,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x000000b504f333 );
  TEST_VV_OP( 303,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x000000b504f333 );
  TEST_VV_OP( 304,  vredmaxu.vs, 5201314, 0x00000000000006, 0x000000b504f333 );
  TEST_VV_OP( 305,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x000000b504f333 );
  TEST_VV_OP( 306,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x000000b504f333 );
  TEST_VV_OP( 307,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x000000b504f333 );
  TEST_VV_OP( 308,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x000000b504f333 );
  TEST_VV_OP( 309,  vredmaxu.vs, 5201314, 0x00000000000003, 0x00000000000002 );
  TEST_VV_OP( 310,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x00000000000002 );
  TEST_VV_OP( 311,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000002 );
  TEST_VV_OP( 312,  vredmaxu.vs, 5201314, 0x00000000000005, 0x00000000000002 );
  TEST_VV_OP( 313,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x00000000000002 );
  TEST_VV_OP( 314,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x00000000000002 );
  TEST_VV_OP( 315,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000002 );
  TEST_VV_OP( 316,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x00000000000002 );
  TEST_VV_OP( 317,  vredmaxu.vs, 5201314, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP( 318,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x00000000000002 );
  TEST_VV_OP( 319,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x00000000000002 );
  TEST_VV_OP( 320,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x00000000000002 );
  TEST_VV_OP( 321,  vredmaxu.vs, 5201314, 0x00000000000000, 0x00000000000002 );
  TEST_VV_OP( 322,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x00000000000002 );
  TEST_VV_OP( 323,  vredmaxu.vs, 5201314, 0x00000000000004, 0x00000000000002 );
  TEST_VV_OP( 324,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x00000000000002 );
  TEST_VV_OP( 325,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000002 );
  TEST_VV_OP( 326,  vredmaxu.vs, 5201314, 0x00000000000006, 0x00000000000002 );
  TEST_VV_OP( 327,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x00000000000002 );
  TEST_VV_OP( 328,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x00000000000002 );
  TEST_VV_OP( 329,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000002 );
  TEST_VV_OP( 330,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x00000000000002 );
  TEST_VV_OP( 331,  vredmaxu.vs, 5201314, 0x00000000000003, 0x5555555555555554 );
  TEST_VV_OP( 332,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x5555555555555554 );
  TEST_VV_OP( 333,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x5555555555555554 );
  TEST_VV_OP( 334,  vredmaxu.vs, 5201314, 0x00000000000005, 0x5555555555555554 );
  TEST_VV_OP( 335,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x5555555555555554 );
  TEST_VV_OP( 336,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x5555555555555554 );
  TEST_VV_OP( 337,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x5555555555555554 );
  TEST_VV_OP( 338,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x5555555555555554 );
  TEST_VV_OP( 339,  vredmaxu.vs, 5201314, 0x00000000000002, 0x5555555555555554 );
  TEST_VV_OP( 340,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x5555555555555554 );
  TEST_VV_OP( 341,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x5555555555555554 );
  TEST_VV_OP( 342,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x5555555555555554 );
  TEST_VV_OP( 343,  vredmaxu.vs, 5201314, 0x00000000000000, 0x5555555555555554 );
  TEST_VV_OP( 344,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x5555555555555554 );
  TEST_VV_OP( 345,  vredmaxu.vs, 5201314, 0x00000000000004, 0x5555555555555554 );
  TEST_VV_OP( 346,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x5555555555555554 );
  TEST_VV_OP( 347,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x5555555555555554 );
  TEST_VV_OP( 348,  vredmaxu.vs, 5201314, 0x00000000000006, 0x5555555555555554 );
  TEST_VV_OP( 349,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x5555555555555554 );
  TEST_VV_OP( 350,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x5555555555555554 );
  TEST_VV_OP( 351,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x5555555555555554 );
  TEST_VV_OP( 352,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x5555555555555554 );
  TEST_VV_OP( 353,  vredmaxu.vs, 5201314, 0x00000000000003, 0x3333333333333332 );
  TEST_VV_OP( 354,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x3333333333333332 );
  TEST_VV_OP( 355,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x3333333333333332 );
  TEST_VV_OP( 356,  vredmaxu.vs, 5201314, 0x00000000000005, 0x3333333333333332 );
  TEST_VV_OP( 357,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x3333333333333332 );
  TEST_VV_OP( 358,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x3333333333333332 );
  TEST_VV_OP( 359,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x3333333333333332 );
  TEST_VV_OP( 360,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x3333333333333332 );
  TEST_VV_OP( 361,  vredmaxu.vs, 5201314, 0x00000000000002, 0x3333333333333332 );
  TEST_VV_OP( 362,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x3333333333333332 );
  TEST_VV_OP( 363,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x3333333333333332 );
  TEST_VV_OP( 364,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x3333333333333332 );
  TEST_VV_OP( 365,  vredmaxu.vs, 5201314, 0x00000000000000, 0x3333333333333332 );
  TEST_VV_OP( 366,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x3333333333333332 );
  TEST_VV_OP( 367,  vredmaxu.vs, 5201314, 0x00000000000004, 0x3333333333333332 );
  TEST_VV_OP( 368,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x3333333333333332 );
  TEST_VV_OP( 369,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x3333333333333332 );
  TEST_VV_OP( 370,  vredmaxu.vs, 5201314, 0x00000000000006, 0x3333333333333332 );
  TEST_VV_OP( 371,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x3333333333333332 );
  TEST_VV_OP( 372,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x3333333333333332 );
  TEST_VV_OP( 373,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x3333333333333332 );
  TEST_VV_OP( 374,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x3333333333333332 );
  TEST_VV_OP( 375,  vredmaxu.vs, 5201314, 0x00000000000003, 0x6666666666666665 );
  TEST_VV_OP( 376,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x6666666666666665 );
  TEST_VV_OP( 377,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x6666666666666665 );
  TEST_VV_OP( 378,  vredmaxu.vs, 5201314, 0x00000000000005, 0x6666666666666665 );
  TEST_VV_OP( 379,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x6666666666666665 );
  TEST_VV_OP( 380,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x6666666666666665 );
  TEST_VV_OP( 381,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x6666666666666665 );
  TEST_VV_OP( 382,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x6666666666666665 );
  TEST_VV_OP( 383,  vredmaxu.vs, 5201314, 0x00000000000002, 0x6666666666666665 );
  TEST_VV_OP( 384,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x6666666666666665 );
  TEST_VV_OP( 385,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x6666666666666665 );
  TEST_VV_OP( 386,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x6666666666666665 );
  TEST_VV_OP( 387,  vredmaxu.vs, 5201314, 0x00000000000000, 0x6666666666666665 );
  TEST_VV_OP( 388,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x6666666666666665 );
  TEST_VV_OP( 389,  vredmaxu.vs, 5201314, 0x00000000000004, 0x6666666666666665 );
  TEST_VV_OP( 390,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x6666666666666665 );
  TEST_VV_OP( 391,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x6666666666666665 );
  TEST_VV_OP( 392,  vredmaxu.vs, 5201314, 0x00000000000006, 0x6666666666666665 );
  TEST_VV_OP( 393,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x6666666666666665 );
  TEST_VV_OP( 394,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x6666666666666665 );
  TEST_VV_OP( 395,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x6666666666666665 );
  TEST_VV_OP( 396,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x6666666666666665 );
  TEST_VV_OP( 397,  vredmaxu.vs, 5201314, 0x00000000000003, 0x00000000000000 );
  TEST_VV_OP( 398,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x00000000000000 );
  TEST_VV_OP( 399,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000000 );
  TEST_VV_OP( 400,  vredmaxu.vs, 5201314, 0x00000000000005, 0x00000000000000 );
  TEST_VV_OP( 401,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x00000000000000 );
  TEST_VV_OP( 402,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x00000000000000 );
  TEST_VV_OP( 403,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000000 );
  TEST_VV_OP( 404,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x00000000000000 );
  TEST_VV_OP( 405,  vredmaxu.vs, 5201314, 0x00000000000002, 0x00000000000000 );
  TEST_VV_OP( 406,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x00000000000000 );
  TEST_VV_OP( 407,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x00000000000000 );
  TEST_VV_OP( 408,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x00000000000000 );
  TEST_VV_OP( 409,  vredmaxu.vs, 5201314, 0x00000000000000, 0x00000000000000 );
  TEST_VV_OP( 410,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x00000000000000 );
  TEST_VV_OP( 411,  vredmaxu.vs, 5201314, 0x00000000000004, 0x00000000000000 );
  TEST_VV_OP( 412,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x00000000000000 );
  TEST_VV_OP( 413,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000000 );
  TEST_VV_OP( 414,  vredmaxu.vs, 5201314, 0x00000000000006, 0x00000000000000 );
  TEST_VV_OP( 415,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x00000000000000 );
  TEST_VV_OP( 416,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x00000000000000 );
  TEST_VV_OP( 417,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000000 );
  TEST_VV_OP( 418,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x00000000000000 );
  TEST_VV_OP( 419,  vredmaxu.vs, 5201314, 0x00000000000003, 0x000000b504f332 );
  TEST_VV_OP( 420,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x000000b504f332 );
  TEST_VV_OP( 421,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x000000b504f332 );
  TEST_VV_OP( 422,  vredmaxu.vs, 5201314, 0x00000000000005, 0x000000b504f332 );
  TEST_VV_OP( 423,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x000000b504f332 );
  TEST_VV_OP( 424,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x000000b504f332 );
  TEST_VV_OP( 425,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x000000b504f332 );
  TEST_VV_OP( 426,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x000000b504f332 );
  TEST_VV_OP( 427,  vredmaxu.vs, 5201314, 0x00000000000002, 0x000000b504f332 );
  TEST_VV_OP( 428,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x000000b504f332 );
  TEST_VV_OP( 429,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x000000b504f332 );
  TEST_VV_OP( 430,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x000000b504f332 );
  TEST_VV_OP( 431,  vredmaxu.vs, 5201314, 0x00000000000000, 0x000000b504f332 );
  TEST_VV_OP( 432,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x000000b504f332 );
  TEST_VV_OP( 433,  vredmaxu.vs, 5201314, 0x00000000000004, 0x000000b504f332 );
  TEST_VV_OP( 434,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x000000b504f332 );
  TEST_VV_OP( 435,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x000000b504f332 );
  TEST_VV_OP( 436,  vredmaxu.vs, 5201314, 0x00000000000006, 0x000000b504f332 );
  TEST_VV_OP( 437,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x000000b504f332 );
  TEST_VV_OP( 438,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x000000b504f332 );
  TEST_VV_OP( 439,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x000000b504f332 );
  TEST_VV_OP( 440,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x000000b504f332 );
  TEST_VV_OP( 441,  vredmaxu.vs, 5201314, 0x00000000000003, 0x00000000000004 );
  TEST_VV_OP( 442,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x00000000000004 );
  TEST_VV_OP( 443,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000004 );
  TEST_VV_OP( 444,  vredmaxu.vs, 5201314, 0x00000000000005, 0x00000000000004 );
  TEST_VV_OP( 445,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x00000000000004 );
  TEST_VV_OP( 446,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x00000000000004 );
  TEST_VV_OP( 447,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000004 );
  TEST_VV_OP( 448,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x00000000000004 );
  TEST_VV_OP( 449,  vredmaxu.vs, 5201314, 0x00000000000002, 0x00000000000004 );
  TEST_VV_OP( 450,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x00000000000004 );
  TEST_VV_OP( 451,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x00000000000004 );
  TEST_VV_OP( 452,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x00000000000004 );
  TEST_VV_OP( 453,  vredmaxu.vs, 5201314, 0x00000000000000, 0x00000000000004 );
  TEST_VV_OP( 454,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x00000000000004 );
  TEST_VV_OP( 455,  vredmaxu.vs, 5201314, 0x00000000000004, 0x00000000000004 );
  TEST_VV_OP( 456,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x00000000000004 );
  TEST_VV_OP( 457,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000004 );
  TEST_VV_OP( 458,  vredmaxu.vs, 5201314, 0x00000000000006, 0x00000000000004 );
  TEST_VV_OP( 459,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x00000000000004 );
  TEST_VV_OP( 460,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x00000000000004 );
  TEST_VV_OP( 461,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000004 );
  TEST_VV_OP( 462,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x00000000000004 );
  TEST_VV_OP( 463,  vredmaxu.vs, 5201314, 0x00000000000003, 0x5555555555555556 );
  TEST_VV_OP( 464,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x5555555555555556 );
  TEST_VV_OP( 465,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x5555555555555556 );
  TEST_VV_OP( 466,  vredmaxu.vs, 5201314, 0x00000000000005, 0x5555555555555556 );
  TEST_VV_OP( 467,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x5555555555555556 );
  TEST_VV_OP( 468,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x5555555555555556 );
  TEST_VV_OP( 469,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x5555555555555556 );
  TEST_VV_OP( 470,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x5555555555555556 );
  TEST_VV_OP( 471,  vredmaxu.vs, 5201314, 0x00000000000002, 0x5555555555555556 );
  TEST_VV_OP( 472,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x5555555555555556 );
  TEST_VV_OP( 473,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x5555555555555556 );
  TEST_VV_OP( 474,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x5555555555555556 );
  TEST_VV_OP( 475,  vredmaxu.vs, 5201314, 0x00000000000000, 0x5555555555555556 );
  TEST_VV_OP( 476,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x5555555555555556 );
  TEST_VV_OP( 477,  vredmaxu.vs, 5201314, 0x00000000000004, 0x5555555555555556 );
  TEST_VV_OP( 478,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x5555555555555556 );
  TEST_VV_OP( 479,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x5555555555555556 );
  TEST_VV_OP( 480,  vredmaxu.vs, 5201314, 0x00000000000006, 0x5555555555555556 );
  TEST_VV_OP( 481,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x5555555555555556 );
  TEST_VV_OP( 482,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x5555555555555556 );
  TEST_VV_OP( 483,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x5555555555555556 );
  TEST_VV_OP( 484,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x5555555555555556 );
  TEST_VV_OP( 485,  vredmaxu.vs, 5201314, 0x00000000000003, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 486,  vredmaxu.vs, 5201314, 0x5555555555555555, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 487,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 488,  vredmaxu.vs, 5201314, 0x00000000000005, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 489,  vredmaxu.vs, 5201314, 0x3333333333333333, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 490,  vredmaxu.vs, 5201314, 0x6666666666666666, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 491,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 492,  vredmaxu.vs, 5201314, 0x000000b504f333, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 493,  vredmaxu.vs, 5201314, 0x00000000000002, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 494,  vredmaxu.vs, 5201314, 0x5555555555555554, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 495,  vredmaxu.vs, 5201314, 0x3333333333333332, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 496,  vredmaxu.vs, 5201314, 0x6666666666666665, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 497,  vredmaxu.vs, 5201314, 0x00000000000000, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 498,  vredmaxu.vs, 5201314, 0x000000b504f332, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 499,  vredmaxu.vs, 5201314, 0x00000000000004, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 500,  vredmaxu.vs, 5201314, 0x5555555555555556, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 501,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 502,  vredmaxu.vs, 5201314, 0x00000000000006, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 503,  vredmaxu.vs, 5201314, 0x3333333333333334, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 504,  vredmaxu.vs, 5201314, 0x6666666666666667, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 505,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 506,  vredmaxu.vs, 5201314, 0x000000b504f334, 0xaaaaaaaaaaaaaaab );
  TEST_VV_OP( 507,  vredmaxu.vs, 5201314, 0x00000000000003, 0x00000000000006 );
  TEST_VV_OP( 508,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x00000000000006 );
  TEST_VV_OP( 509,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x00000000000006 );
  TEST_VV_OP( 510,  vredmaxu.vs, 5201314, 0x00000000000005, 0x00000000000006 );
  TEST_VV_OP( 511,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x00000000000006 );
  TEST_VV_OP( 512,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x00000000000006 );
  TEST_VV_OP( 513,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x00000000000006 );
  TEST_VV_OP( 514,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x00000000000006 );
  TEST_VV_OP( 515,  vredmaxu.vs, 5201314, 0x00000000000002, 0x00000000000006 );
  TEST_VV_OP( 516,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x00000000000006 );
  TEST_VV_OP( 517,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x00000000000006 );
  TEST_VV_OP( 518,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x00000000000006 );
  TEST_VV_OP( 519,  vredmaxu.vs, 5201314, 0x00000000000000, 0x00000000000006 );
  TEST_VV_OP( 520,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x00000000000006 );
  TEST_VV_OP( 521,  vredmaxu.vs, 5201314, 0x00000000000004, 0x00000000000006 );
  TEST_VV_OP( 522,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x00000000000006 );
  TEST_VV_OP( 523,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x00000000000006 );
  TEST_VV_OP( 524,  vredmaxu.vs, 5201314, 0x00000000000006, 0x00000000000006 );
  TEST_VV_OP( 525,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x00000000000006 );
  TEST_VV_OP( 526,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x00000000000006 );
  TEST_VV_OP( 527,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x00000000000006 );
  TEST_VV_OP( 528,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x00000000000006 );
  TEST_VV_OP( 529,  vredmaxu.vs, 5201314, 0x00000000000003, 0x3333333333333334 );
  TEST_VV_OP( 530,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x3333333333333334 );
  TEST_VV_OP( 531,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x3333333333333334 );
  TEST_VV_OP( 532,  vredmaxu.vs, 5201314, 0x00000000000005, 0x3333333333333334 );
  TEST_VV_OP( 533,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x3333333333333334 );
  TEST_VV_OP( 534,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x3333333333333334 );
  TEST_VV_OP( 535,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x3333333333333334 );
  TEST_VV_OP( 536,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x3333333333333334 );
  TEST_VV_OP( 537,  vredmaxu.vs, 5201314, 0x00000000000002, 0x3333333333333334 );
  TEST_VV_OP( 538,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x3333333333333334 );
  TEST_VV_OP( 539,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x3333333333333334 );
  TEST_VV_OP( 540,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x3333333333333334 );
  TEST_VV_OP( 541,  vredmaxu.vs, 5201314, 0x00000000000000, 0x3333333333333334 );
  TEST_VV_OP( 542,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x3333333333333334 );
  TEST_VV_OP( 543,  vredmaxu.vs, 5201314, 0x00000000000004, 0x3333333333333334 );
  TEST_VV_OP( 544,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x3333333333333334 );
  TEST_VV_OP( 545,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x3333333333333334 );
  TEST_VV_OP( 546,  vredmaxu.vs, 5201314, 0x00000000000006, 0x3333333333333334 );
  TEST_VV_OP( 547,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x3333333333333334 );
  TEST_VV_OP( 548,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x3333333333333334 );
  TEST_VV_OP( 549,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x3333333333333334 );
  TEST_VV_OP( 550,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x3333333333333334 );
  TEST_VV_OP( 551,  vredmaxu.vs, 5201314, 0x00000000000003, 0x6666666666666667 );
  TEST_VV_OP( 552,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x6666666666666667 );
  TEST_VV_OP( 553,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x6666666666666667 );
  TEST_VV_OP( 554,  vredmaxu.vs, 5201314, 0x00000000000005, 0x6666666666666667 );
  TEST_VV_OP( 555,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x6666666666666667 );
  TEST_VV_OP( 556,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x6666666666666667 );
  TEST_VV_OP( 557,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x6666666666666667 );
  TEST_VV_OP( 558,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x6666666666666667 );
  TEST_VV_OP( 559,  vredmaxu.vs, 5201314, 0x00000000000002, 0x6666666666666667 );
  TEST_VV_OP( 560,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x6666666666666667 );
  TEST_VV_OP( 561,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x6666666666666667 );
  TEST_VV_OP( 562,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x6666666666666667 );
  TEST_VV_OP( 563,  vredmaxu.vs, 5201314, 0x00000000000000, 0x6666666666666667 );
  TEST_VV_OP( 564,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x6666666666666667 );
  TEST_VV_OP( 565,  vredmaxu.vs, 5201314, 0x00000000000004, 0x6666666666666667 );
  TEST_VV_OP( 566,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x6666666666666667 );
  TEST_VV_OP( 567,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x6666666666666667 );
  TEST_VV_OP( 568,  vredmaxu.vs, 5201314, 0x00000000000006, 0x6666666666666667 );
  TEST_VV_OP( 569,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x6666666666666667 );
  TEST_VV_OP( 570,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x6666666666666667 );
  TEST_VV_OP( 571,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x6666666666666667 );
  TEST_VV_OP( 572,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x6666666666666667 );
  TEST_VV_OP( 573,  vredmaxu.vs, 5201314, 0x00000000000003, 0xffffffff4afb0cce );
  TEST_VV_OP( 574,  vredmaxu.vs, 5201314, 0x5555555555555555, 0xffffffff4afb0cce );
  TEST_VV_OP( 575,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0xffffffff4afb0cce );
  TEST_VV_OP( 576,  vredmaxu.vs, 5201314, 0x00000000000005, 0xffffffff4afb0cce );
  TEST_VV_OP( 577,  vredmaxu.vs, 5201314, 0x3333333333333333, 0xffffffff4afb0cce );
  TEST_VV_OP( 578,  vredmaxu.vs, 5201314, 0x6666666666666666, 0xffffffff4afb0cce );
  TEST_VV_OP( 579,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0xffffffff4afb0cce );
  TEST_VV_OP( 580,  vredmaxu.vs, 5201314, 0x000000b504f333, 0xffffffff4afb0cce );
  TEST_VV_OP( 581,  vredmaxu.vs, 5201314, 0x00000000000002, 0xffffffff4afb0cce );
  TEST_VV_OP( 582,  vredmaxu.vs, 5201314, 0x5555555555555554, 0xffffffff4afb0cce );
  TEST_VV_OP( 583,  vredmaxu.vs, 5201314, 0x3333333333333332, 0xffffffff4afb0cce );
  TEST_VV_OP( 584,  vredmaxu.vs, 5201314, 0x6666666666666665, 0xffffffff4afb0cce );
  TEST_VV_OP( 585,  vredmaxu.vs, 5201314, 0x00000000000000, 0xffffffff4afb0cce );
  TEST_VV_OP( 586,  vredmaxu.vs, 5201314, 0x000000b504f332, 0xffffffff4afb0cce );
  TEST_VV_OP( 587,  vredmaxu.vs, 5201314, 0x00000000000004, 0xffffffff4afb0cce );
  TEST_VV_OP( 588,  vredmaxu.vs, 5201314, 0x5555555555555556, 0xffffffff4afb0cce );
  TEST_VV_OP( 589,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0xffffffff4afb0cce );
  TEST_VV_OP( 590,  vredmaxu.vs, 5201314, 0x00000000000006, 0xffffffff4afb0cce );
  TEST_VV_OP( 591,  vredmaxu.vs, 5201314, 0x3333333333333334, 0xffffffff4afb0cce );
  TEST_VV_OP( 592,  vredmaxu.vs, 5201314, 0x6666666666666667, 0xffffffff4afb0cce );
  TEST_VV_OP( 593,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0xffffffff4afb0cce );
  TEST_VV_OP( 594,  vredmaxu.vs, 5201314, 0x000000b504f334, 0xffffffff4afb0cce );
  TEST_VV_OP( 595,  vredmaxu.vs, 5201314, 0x00000000000003, 0x000000b504f334 );
  TEST_VV_OP( 596,  vredmaxu.vs, 5201314, 0x5555555555555555, 0x000000b504f334 );
  TEST_VV_OP( 597,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaaa, 0x000000b504f334 );
  TEST_VV_OP( 598,  vredmaxu.vs, 5201314, 0x00000000000005, 0x000000b504f334 );
  TEST_VV_OP( 599,  vredmaxu.vs, 5201314, 0x3333333333333333, 0x000000b504f334 );
  TEST_VV_OP( 600,  vredmaxu.vs, 5201314, 0x6666666666666666, 0x000000b504f334 );
  TEST_VV_OP( 601,  vredmaxu.vs, 5201314, 0xffffffff4afb0ccd, 0x000000b504f334 );
  TEST_VV_OP( 602,  vredmaxu.vs, 5201314, 0x000000b504f333, 0x000000b504f334 );
  TEST_VV_OP( 603,  vredmaxu.vs, 5201314, 0x00000000000002, 0x000000b504f334 );
  TEST_VV_OP( 604,  vredmaxu.vs, 5201314, 0x5555555555555554, 0x000000b504f334 );
  TEST_VV_OP( 605,  vredmaxu.vs, 5201314, 0x3333333333333332, 0x000000b504f334 );
  TEST_VV_OP( 606,  vredmaxu.vs, 5201314, 0x6666666666666665, 0x000000b504f334 );
  TEST_VV_OP( 607,  vredmaxu.vs, 5201314, 0x00000000000000, 0x000000b504f334 );
  TEST_VV_OP( 608,  vredmaxu.vs, 5201314, 0x000000b504f332, 0x000000b504f334 );
  TEST_VV_OP( 609,  vredmaxu.vs, 5201314, 0x00000000000004, 0x000000b504f334 );
  TEST_VV_OP( 610,  vredmaxu.vs, 5201314, 0x5555555555555556, 0x000000b504f334 );
  TEST_VV_OP( 611,  vredmaxu.vs, 5201314, 0xaaaaaaaaaaaaaaab, 0x000000b504f334 );
  TEST_VV_OP( 612,  vredmaxu.vs, 5201314, 0x00000000000006, 0x000000b504f334 );
  TEST_VV_OP( 613,  vredmaxu.vs, 5201314, 0x3333333333333334, 0x000000b504f334 );
  TEST_VV_OP( 614,  vredmaxu.vs, 5201314, 0x6666666666666667, 0x000000b504f334 );
  TEST_VV_OP( 615,  vredmaxu.vs, 5201314, 0xffffffff4afb0cce, 0x000000b504f334 );
  TEST_VV_OP( 616,  vredmaxu.vs, 5201314, 0x000000b504f334, 0x000000b504f334 );
  TEST_VV_OP_rd1( 617,  vredmaxu.vs, 5201314, 0xfffffffffffffffe, 0xfffffffffffffffe);
  TEST_VV_OP_12( 618,  vredmaxu.vs, 5201314, 0xfffffffffffffffe, 0xfffffffffffffffe );
  TEST_VV_OP_rd2( 619,  vredmaxu.vs, 5201314, 0xfffffffffffffffd, 0xfffffffffffffffd);
  TEST_VV_OP_13( 620,  vredmaxu.vs, 5201314, 0xfffffffffffffffd, 0xfffffffffffffffd );
  TEST_VV_OP_rd3( 621,  vredmaxu.vs, 5201314, 0xfffffffffffffffb, 0xfffffffffffffffb);
  TEST_VV_OP_14( 622,  vredmaxu.vs, 5201314, 0xfffffffffffffffb, 0xfffffffffffffffb );
  TEST_VV_OP_rd4( 623,  vredmaxu.vs, 5201314, 0xfffffffffffffff7, 0xfffffffffffffff7);
  TEST_VV_OP_15( 624,  vredmaxu.vs, 5201314, 0xfffffffffffffff7, 0xfffffffffffffff7 );
  TEST_VV_OP_rd5( 625,  vredmaxu.vs, 5201314, 0xffffffffffffffef, 0xffffffffffffffef);
  TEST_VV_OP_16( 626,  vredmaxu.vs, 5201314, 0xffffffffffffffef, 0xffffffffffffffef );
  TEST_VV_OP_rd6( 627,  vredmaxu.vs, 5201314, 0xffffffffffffffdf, 0xffffffffffffffdf);
  TEST_VV_OP_17( 628,  vredmaxu.vs, 5201314, 0xffffffffffffffdf, 0xffffffffffffffdf );
  TEST_VV_OP_rd7( 629,  vredmaxu.vs, 5201314, 0xffffffffffffffbf, 0xffffffffffffffbf);
  TEST_VV_OP_rd8( 630,  vredmaxu.vs, 5201314, 0xffffffffffffff7f, 0xffffffffffffff7f);
  TEST_VV_OP_19( 631,  vredmaxu.vs, 5201314, 0xffffffffffffff7f, 0xffffffffffffff7f );
  TEST_VV_OP_rd9( 632,  vredmaxu.vs, 5201314, 0xfffffffffffffeff, 0xfffffffffffffeff);
  TEST_VV_OP_110( 633,  vredmaxu.vs, 5201314, 0xfffffffffffffeff, 0xfffffffffffffeff );
  TEST_VV_OP_rd10( 634,  vredmaxu.vs, 5201314, 0xfffffffffffffdff, 0xfffffffffffffdff);
  TEST_VV_OP_111( 635,  vredmaxu.vs, 5201314, 0xfffffffffffffdff, 0xfffffffffffffdff );
  TEST_VV_OP_rd11( 636,  vredmaxu.vs, 5201314, 0xfffffffffffffbff, 0xfffffffffffffbff);
  TEST_VV_OP_rd13( 637,  vredmaxu.vs, 5201314, 0xffffffffffffefff, 0xffffffffffffefff);
  TEST_VV_OP_114( 638,  vredmaxu.vs, 5201314, 0xffffffffffffefff, 0xffffffffffffefff );
  TEST_VV_OP_rd14( 639,  vredmaxu.vs, 5201314, 0xffffffffffffdfff, 0xffffffffffffdfff);
  TEST_VV_OP_115( 640,  vredmaxu.vs, 5201314, 0xffffffffffffdfff, 0xffffffffffffdfff );
  TEST_VV_OP_rd15( 641,  vredmaxu.vs, 5201314, 0xffffffffffffbfff, 0xffffffffffffbfff);
  TEST_VV_OP_rd16( 642,  vredmaxu.vs, 5201314, 0xffffffffffff7fff, 0xffffffffffff7fff);
  TEST_VV_OP_117( 643,  vredmaxu.vs, 5201314, 0xffffffffffff7fff, 0xffffffffffff7fff );
  TEST_VV_OP_rd17( 644,  vredmaxu.vs, 5201314, 0xfffffffffffeffff, 0xfffffffffffeffff);
  TEST_VV_OP_118( 645,  vredmaxu.vs, 5201314, 0xfffffffffffeffff, 0xfffffffffffeffff );
  TEST_VV_OP_rd18( 646,  vredmaxu.vs, 5201314, 0xfffffffffffdffff, 0xfffffffffffdffff);
  TEST_VV_OP_119( 647,  vredmaxu.vs, 5201314, 0xfffffffffffdffff, 0xfffffffffffdffff );
  TEST_VV_OP_rd19( 648,  vredmaxu.vs, 5201314, 0xfffffffffffbffff, 0xfffffffffffbffff);
  TEST_VV_OP_rd21( 649,  vredmaxu.vs, 5201314, 0xffffffffffefffff, 0xffffffffffefffff);
  TEST_VV_OP_122( 650,  vredmaxu.vs, 5201314, 0xffffffffffefffff, 0xffffffffffefffff );
  TEST_VV_OP_rd22( 651,  vredmaxu.vs, 5201314, 0xffffffffffdfffff, 0xffffffffffdfffff);
  TEST_VV_OP_123( 652,  vredmaxu.vs, 5201314, 0xffffffffffdfffff, 0xffffffffffdfffff );
  TEST_VV_OP_rd23( 653,  vredmaxu.vs, 5201314, 0xffffffffffbfffff, 0xffffffffffbfffff);
  TEST_VV_OP_rd25( 654,  vredmaxu.vs, 5201314, 0xfffffffffeffffff, 0xfffffffffeffffff);
  TEST_VV_OP_126( 655,  vredmaxu.vs, 5201314, 0xfffffffffeffffff, 0xfffffffffeffffff );
  TEST_VV_OP_rd26( 656,  vredmaxu.vs, 5201314, 0xfffffffffdffffff, 0xfffffffffdffffff);
  TEST_VV_OP_127( 657,  vredmaxu.vs, 5201314, 0xfffffffffdffffff, 0xfffffffffdffffff );
  TEST_VV_OP_rd27( 658,  vredmaxu.vs, 5201314, 0xfffffffffbffffff, 0xfffffffffbffffff);
  TEST_VV_OP_128( 659,  vredmaxu.vs, 5201314, 0xfffffffffbffffff, 0xfffffffffbffffff );
  TEST_VV_OP_rd28( 660,  vredmaxu.vs, 5201314, 0xfffffffff7ffffff, 0xfffffffff7ffffff);
  TEST_VV_OP_129( 661,  vredmaxu.vs, 5201314, 0xfffffffff7ffffff, 0xfffffffff7ffffff );
  TEST_VV_OP_rd29( 662,  vredmaxu.vs, 5201314, 0xffffffffefffffff, 0xffffffffefffffff);
  TEST_VV_OP_130( 663,  vredmaxu.vs, 5201314, 0xffffffffefffffff, 0xffffffffefffffff );
  TEST_VV_OP_rd30( 664,  vredmaxu.vs, 5201314, 0xffffffffdfffffff, 0xffffffffdfffffff);
  TEST_VV_OP_131( 665,  vredmaxu.vs, 5201314, 0xffffffffdfffffff, 0xffffffffdfffffff );
  TEST_VV_OP_rd31( 666,  vredmaxu.vs, 5201314, 0xffffffffbfffffff, 0xffffffffbfffffff);
  TEST_VV_OP_12( 667,  vredmaxu.vs, 5201314, 0xffffffffbfffffff, 0xffffffffbfffffff );
  TEST_VV_OP_rd1( 668,  vredmaxu.vs, 5201314, 0xffffffff7fffffff, 0xffffffff7fffffff);
  TEST_VV_OP_13( 669,  vredmaxu.vs, 5201314, 0xffffffff7fffffff, 0xffffffff7fffffff );
  TEST_VV_OP_rd2( 670,  vredmaxu.vs, 5201314, 0xfffffffeffffffff, 0xfffffffeffffffff);
  TEST_VV_OP_14( 671,  vredmaxu.vs, 5201314, 0xfffffffeffffffff, 0xfffffffeffffffff );
  TEST_VV_OP_rd3( 672,  vredmaxu.vs, 5201314, 0xfffffffdffffffff, 0xfffffffdffffffff);
  TEST_VV_OP_15( 673,  vredmaxu.vs, 5201314, 0xfffffffdffffffff, 0xfffffffdffffffff );
  TEST_VV_OP_rd4( 674,  vredmaxu.vs, 5201314, 0xfffffffbffffffff, 0xfffffffbffffffff);
  TEST_VV_OP_16( 675,  vredmaxu.vs, 5201314, 0xfffffffbffffffff, 0xfffffffbffffffff );
  TEST_VV_OP_rd5( 676,  vredmaxu.vs, 5201314, 0xfffffff7ffffffff, 0xfffffff7ffffffff);
  TEST_VV_OP_17( 677,  vredmaxu.vs, 5201314, 0xfffffff7ffffffff, 0xfffffff7ffffffff );
  TEST_VV_OP_rd6( 678,  vredmaxu.vs, 5201314, 0xffffffefffffffff, 0xffffffefffffffff);
  TEST_VV_OP_rd7( 679,  vredmaxu.vs, 5201314, 0xffffffdfffffffff, 0xffffffdfffffffff);
  TEST_VV_OP_19( 680,  vredmaxu.vs, 5201314, 0xffffffdfffffffff, 0xffffffdfffffffff );
  TEST_VV_OP_rd8( 681,  vredmaxu.vs, 5201314, 0xffffffbfffffffff, 0xffffffbfffffffff);
  TEST_VV_OP_110( 682,  vredmaxu.vs, 5201314, 0xffffffbfffffffff, 0xffffffbfffffffff );
  TEST_VV_OP_rd9( 683,  vredmaxu.vs, 5201314, 0xffffff7fffffffff, 0xffffff7fffffffff);
  TEST_VV_OP_111( 684,  vredmaxu.vs, 5201314, 0xffffff7fffffffff, 0xffffff7fffffffff );
  TEST_VV_OP_rd10( 685,  vredmaxu.vs, 5201314, 0xfffffeffffffffff, 0xfffffeffffffffff);
  TEST_VV_OP_rd11( 686,  vredmaxu.vs, 5201314, 0xfffffdffffffffff, 0xfffffdffffffffff);
  TEST_VV_OP_113( 687,  vredmaxu.vs, 5201314, 0xfffffdffffffffff, 0xfffffdffffffffff );
  TEST_VV_OP_rd13( 688,  vredmaxu.vs, 5201314, 0xfffff7ffffffffff, 0xfffff7ffffffffff);
  TEST_VV_OP_115( 689,  vredmaxu.vs, 5201314, 0xfffff7ffffffffff, 0xfffff7ffffffffff );
  TEST_VV_OP_rd14( 690,  vredmaxu.vs, 5201314, 0xffffefffffffffff, 0xffffefffffffffff);
  TEST_VV_OP_rd15( 691,  vredmaxu.vs, 5201314, 0xffffdfffffffffff, 0xffffdfffffffffff);
  TEST_VV_OP_117( 692,  vredmaxu.vs, 5201314, 0xffffdfffffffffff, 0xffffdfffffffffff );
  TEST_VV_OP_rd16( 693,  vredmaxu.vs, 5201314, 0xffffbfffffffffff, 0xffffbfffffffffff);
  TEST_VV_OP_118( 694,  vredmaxu.vs, 5201314, 0xffffbfffffffffff, 0xffffbfffffffffff );
  TEST_VV_OP_rd17( 695,  vredmaxu.vs, 5201314, 0xffff7fffffffffff, 0xffff7fffffffffff);
  TEST_VV_OP_119( 696,  vredmaxu.vs, 5201314, 0xffff7fffffffffff, 0xffff7fffffffffff );
  TEST_VV_OP_rd18( 697,  vredmaxu.vs, 5201314, 0xfffeffffffffffff, 0xfffeffffffffffff);
  TEST_VV_OP_rd19( 698,  vredmaxu.vs, 5201314, 0xfffdffffffffffff, 0xfffdffffffffffff);
  TEST_VV_OP_121( 699,  vredmaxu.vs, 5201314, 0xfffdffffffffffff, 0xfffdffffffffffff );
  TEST_VV_OP_rd21( 700,  vredmaxu.vs, 5201314, 0xfff7ffffffffffff, 0xfff7ffffffffffff);
  TEST_VV_OP_123( 701,  vredmaxu.vs, 5201314, 0xfff7ffffffffffff, 0xfff7ffffffffffff );
  TEST_VV_OP_rd22( 702,  vredmaxu.vs, 5201314, 0xffefffffffffffff, 0xffefffffffffffff);
  TEST_VV_OP_rd23( 703,  vredmaxu.vs, 5201314, 0xffdfffffffffffff, 0xffdfffffffffffff);
  TEST_VV_OP_125( 704,  vredmaxu.vs, 5201314, 0xffdfffffffffffff, 0xffdfffffffffffff );
  TEST_VV_OP_rd25( 705,  vredmaxu.vs, 5201314, 0xff7fffffffffffff, 0xff7fffffffffffff);
  TEST_VV_OP_127( 706,  vredmaxu.vs, 5201314, 0xff7fffffffffffff, 0xff7fffffffffffff );
  TEST_VV_OP_rd26( 707,  vredmaxu.vs, 5201314, 0xfeffffffffffffff, 0xfeffffffffffffff);
  TEST_VV_OP_128( 708,  vredmaxu.vs, 5201314, 0xfeffffffffffffff, 0xfeffffffffffffff );
  TEST_VV_OP_rd27( 709,  vredmaxu.vs, 5201314, 0xfdffffffffffffff, 0xfdffffffffffffff);
  TEST_VV_OP_129( 710,  vredmaxu.vs, 5201314, 0xfdffffffffffffff, 0xfdffffffffffffff );
  TEST_VV_OP_rd28( 711,  vredmaxu.vs, 5201314, 0xfbffffffffffffff, 0xfbffffffffffffff);
  TEST_VV_OP_130( 712,  vredmaxu.vs, 5201314, 0xfbffffffffffffff, 0xfbffffffffffffff );
  TEST_VV_OP_rd29( 713,  vredmaxu.vs, 5201314, 0xf7ffffffffffffff, 0xf7ffffffffffffff);
  TEST_VV_OP_131( 714,  vredmaxu.vs, 5201314, 0xf7ffffffffffffff, 0xf7ffffffffffffff );
  TEST_VV_OP_rd30( 715,  vredmaxu.vs, 5201314, 0xefffffffffffffff, 0xefffffffffffffff);
  TEST_VV_OP_12( 716,  vredmaxu.vs, 5201314, 0xefffffffffffffff, 0xefffffffffffffff );
  TEST_VV_OP_rd31( 717,  vredmaxu.vs, 5201314, 0xdfffffffffffffff, 0xdfffffffffffffff);
  TEST_VV_OP_13( 718,  vredmaxu.vs, 5201314, 0xdfffffffffffffff, 0xdfffffffffffffff );
  TEST_VV_OP_rd1( 719,  vredmaxu.vs, 5201314, 0xbfffffffffffffff, 0xbfffffffffffffff);
  TEST_VV_OP_14( 720,  vredmaxu.vs, 5201314, 0xbfffffffffffffff, 0xbfffffffffffffff );
  TEST_VV_OP_rd2( 721,  vredmaxu.vs, 5201314, 0x7fffffffffffffff, 0x7fffffffffffffff);
  TEST_VV_OP_15( 722,  vredmaxu.vs, 5201314, 0x7fffffffffffffff, 0x7fffffffffffffff );
  TEST_VV_OP_rd3( 723,  vredmaxu.vs, 5201314, 0x00000000000001, 0x00000000000001);
  TEST_VV_OP_16( 724,  vredmaxu.vs, 5201314, 0x00000000000001, 0x00000000000001 );
  TEST_VV_OP_rd4( 725,  vredmaxu.vs, 5201314, 0x00000000000002, 0x00000000000002);
  TEST_VV_OP_17( 726,  vredmaxu.vs, 5201314, 0x00000000000002, 0x00000000000002 );
  TEST_VV_OP_rd5( 727,  vredmaxu.vs, 5201314, 0x00000000000004, 0x00000000000004);
  TEST_VV_OP_rd6( 728,  vredmaxu.vs, 5201314, 0x00000000000008, 0x00000000000008);
  TEST_VV_OP_19( 729,  vredmaxu.vs, 5201314, 0x00000000000008, 0x00000000000008 );
  TEST_VV_OP_rd7( 730,  vredmaxu.vs, 5201314, 0x00000000000010, 0x00000000000010);
  TEST_VV_OP_110( 731,  vredmaxu.vs, 5201314, 0x00000000000010, 0x00000000000010 );
  TEST_VV_OP_rd8( 732,  vredmaxu.vs, 5201314, 0x00000000000020, 0x00000000000020);
  TEST_VV_OP_111( 733,  vredmaxu.vs, 5201314, 0x00000000000020, 0x00000000000020 );
  TEST_VV_OP_rd9( 734,  vredmaxu.vs, 5201314, 0x00000000000040, 0x00000000000040);
  TEST_VV_OP_rd10( 735,  vredmaxu.vs, 5201314, 0x00000000000080, 0x00000000000080);
  TEST_VV_OP_113( 736,  vredmaxu.vs, 5201314, 0x00000000000080, 0x00000000000080 );
  TEST_VV_OP_rd11( 737,  vredmaxu.vs, 5201314, 0x00000000000100, 0x00000000000100);
  TEST_VV_OP_114( 738,  vredmaxu.vs, 5201314, 0x00000000000100, 0x00000000000100 );
  TEST_VV_OP_rd13( 739,  vredmaxu.vs, 5201314, 0x00000000000400, 0x00000000000400);
  TEST_VV_OP_rd14( 740,  vredmaxu.vs, 5201314, 0x00000000000800, 0x00000000000800);
  TEST_VV_OP_117( 741,  vredmaxu.vs, 5201314, 0x00000000000800, 0x00000000000800 );
  TEST_VV_OP_rd15( 742,  vredmaxu.vs, 5201314, 0x00000000001000, 0x00000000001000);
  TEST_VV_OP_118( 743,  vredmaxu.vs, 5201314, 0x00000000001000, 0x00000000001000 );
  TEST_VV_OP_rd16( 744,  vredmaxu.vs, 5201314, 0x00000000002000, 0x00000000002000);
  TEST_VV_OP_119( 745,  vredmaxu.vs, 5201314, 0x00000000002000, 0x00000000002000 );
  TEST_VV_OP_rd17( 746,  vredmaxu.vs, 5201314, 0x00000000004000, 0x00000000004000);
  TEST_VV_OP_rd18( 747,  vredmaxu.vs, 5201314, 0x00000000008000, 0x00000000008000);
  TEST_VV_OP_121( 748,  vredmaxu.vs, 5201314, 0x00000000008000, 0x00000000008000 );
  TEST_VV_OP_rd19( 749,  vredmaxu.vs, 5201314, 0x00000000010000, 0x00000000010000);
  TEST_VV_OP_122( 750,  vredmaxu.vs, 5201314, 0x00000000010000, 0x00000000010000 );
  TEST_VV_OP_rd21( 751,  vredmaxu.vs, 5201314, 0x00000000040000, 0x00000000040000);
  TEST_VV_OP_rd22( 752,  vredmaxu.vs, 5201314, 0x00000000080000, 0x00000000080000);
  TEST_VV_OP_125( 753,  vredmaxu.vs, 5201314, 0x00000000080000, 0x00000000080000 );
  TEST_VV_OP_rd23( 754,  vredmaxu.vs, 5201314, 0x00000000100000, 0x00000000100000);
  TEST_VV_OP_126( 755,  vredmaxu.vs, 5201314, 0x00000000100000, 0x00000000100000 );
  TEST_VV_OP_rd25( 756,  vredmaxu.vs, 5201314, 0x00000000400000, 0x00000000400000);
  TEST_VV_OP_128( 757,  vredmaxu.vs, 5201314, 0x00000000400000, 0x00000000400000 );
  TEST_VV_OP_rd26( 758,  vredmaxu.vs, 5201314, 0x00000000800000, 0x00000000800000);
  TEST_VV_OP_129( 759,  vredmaxu.vs, 5201314, 0x00000000800000, 0x00000000800000 );
  TEST_VV_OP_rd27( 760,  vredmaxu.vs, 5201314, 0x00000001000000, 0x00000001000000);
  TEST_VV_OP_130( 761,  vredmaxu.vs, 5201314, 0x00000001000000, 0x00000001000000 );
  TEST_VV_OP_rd28( 762,  vredmaxu.vs, 5201314, 0x00000002000000, 0x00000002000000);
  TEST_VV_OP_131( 763,  vredmaxu.vs, 5201314, 0x00000002000000, 0x00000002000000 );
  TEST_VV_OP_rd29( 764,  vredmaxu.vs, 5201314, 0x00000004000000, 0x00000004000000);
  TEST_VV_OP_12( 765,  vredmaxu.vs, 5201314, 0x00000004000000, 0x00000004000000 );
  TEST_VV_OP_rd30( 766,  vredmaxu.vs, 5201314, 0x00000008000000, 0x00000008000000);
  TEST_VV_OP_13( 767,  vredmaxu.vs, 5201314, 0x00000008000000, 0x00000008000000 );
  TEST_VV_OP_rd31( 768,  vredmaxu.vs, 5201314, 0x00000010000000, 0x00000010000000);
  TEST_VV_OP_14( 769,  vredmaxu.vs, 5201314, 0x00000010000000, 0x00000010000000 );
  TEST_VV_OP_rd1( 770,  vredmaxu.vs, 5201314, 0x00000020000000, 0x00000020000000);
  TEST_VV_OP_15( 771,  vredmaxu.vs, 5201314, 0x00000020000000, 0x00000020000000 );
  TEST_VV_OP_rd2( 772,  vredmaxu.vs, 5201314, 0x00000040000000, 0x00000040000000);
  TEST_VV_OP_16( 773,  vredmaxu.vs, 5201314, 0x00000040000000, 0x00000040000000 );
  TEST_VV_OP_rd3( 774,  vredmaxu.vs, 5201314, 0x00000080000000, 0x00000080000000);
  TEST_VV_OP_17( 775,  vredmaxu.vs, 5201314, 0x00000080000000, 0x00000080000000 );
  TEST_VV_OP_rd4( 776,  vredmaxu.vs, 5201314, 0x00000100000000, 0x00000100000000);
  TEST_VV_OP_rd5( 777,  vredmaxu.vs, 5201314, 0x00000200000000, 0x00000200000000);
  TEST_VV_OP_19( 778,  vredmaxu.vs, 5201314, 0x00000200000000, 0x00000200000000 );
  TEST_VV_OP_rd6( 779,  vredmaxu.vs, 5201314, 0x00000400000000, 0x00000400000000);
  TEST_VV_OP_110( 780,  vredmaxu.vs, 5201314, 0x00000400000000, 0x00000400000000 );
  TEST_VV_OP_rd7( 781,  vredmaxu.vs, 5201314, 0x00000800000000, 0x00000800000000);
  TEST_VV_OP_111( 782,  vredmaxu.vs, 5201314, 0x00000800000000, 0x00000800000000 );
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
    
    

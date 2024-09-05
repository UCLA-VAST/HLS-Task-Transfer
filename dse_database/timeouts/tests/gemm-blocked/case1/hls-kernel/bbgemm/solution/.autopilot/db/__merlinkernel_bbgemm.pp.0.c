# 1 "./__merlinkernel_bbgemm.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 338 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/tools/xilinx/Vitis_HLS/2021.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 314 "/opt/tools/xilinx/Vitis_HLS/2021.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite() __attribute__ ((nothrow));


    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite() __attribute__ ((nothrow));
    void _ssdm_op_ReadReq() __attribute__ ((nothrow));
    void _ssdm_op_Read() __attribute__ ((nothrow));
    void _ssdm_op_WriteReq() __attribute__ ((nothrow));
    void _ssdm_op_Write() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq() __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq() __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_PrintNone() __attribute__ ((nothrow));
    void _ssdm_op_PrintInt() __attribute__ ((nothrow));
    void _ssdm_op_PrintDouble() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_op_SpecStable() __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent() __attribute__ ((nothrow));

    void _ssdm_op_SpecBindPort() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
# 2 "<built-in>" 2
# 1 "./__merlinkernel_bbgemm.c" 2



# 1 "././memcpy_512_1d.h" 1


# 1 "././memcpy_512.h" 1





# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 402 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 403 "/usr/include/features.h" 2 3 4
# 424 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 427 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 428 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 429 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 425 "/usr/include/features.h" 2 3 4
# 448 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 449 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 69 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
# 7 "././memcpy_512.h" 2
# 1 "/opt/tools/xilinx/Vitis_HLS/2021.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 1 3
# 63 "/opt/tools/xilinx/Vitis_HLS/2021.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 130 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 131 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 68 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 81 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 97 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 111 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 64 "/opt/tools/xilinx/Vitis_HLS/2021.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdint.h" 2 3
# 8 "././memcpy_512.h" 2
typedef struct merlin_uint_512 {
  unsigned char data[512 / 8];
} merlin_uint_512;
static uint64_t merlin_get_range_512(merlin_uint_512 *tmp, int low, int len) {
#pragma HLS INLINE SELF
 uint64_t ret = 0;
  int i;
  int start = low;
  switch (len) {
  case 1:
    VITIS_LOOP_18_1: for (i = 0; i >= 0; --i) {
#pragma HLS unroll
 ret <<= 8;
      ret |= tmp->data[i + start];
    }
    break;
  case 2:
    VITIS_LOOP_25_2: for (i = 1; i >= 0; --i) {
#pragma HLS unroll
 ret <<= 8;
      ret |= tmp->data[i + start];
    }
    break;
  case 4:
    VITIS_LOOP_32_3: for (i = 3; i >= 0; --i) {
#pragma HLS unroll
 ret <<= 8;
      ret |= tmp->data[i + start];
    }
    break;
  case 8:
    VITIS_LOOP_39_4: for (i = 7; i >= 0; --i) {
#pragma HLS unroll
 ret <<= 8;
      ret |= tmp->data[i + start];
    }
    break;
  default:
    ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "././memcpy_512.h", 46, __extension__ __PRETTY_FUNCTION__); }));
  }
  return ret;
}

static void merlin_set_range_512(merlin_uint_512 *tmp, int low, int len,
                                 uint64_t val) {
#pragma HLS INLINE SELF
 int i;
  int start = low;
  switch (len) {
  case 1:
    VITIS_LOOP_58_1: for (i = 0; i < 1; ++i) {
#pragma HLS unroll
 tmp->data[start + i] = val & 0xff;
      val >>= 8;
    }
    break;
  case 2:
    VITIS_LOOP_65_2: for (i = 0; i < 2; ++i) {
#pragma HLS unroll
 tmp->data[start + i] = val & 0xff;
      val >>= 8;
    }
    break;
  case 4:
    VITIS_LOOP_72_3: for (i = 0; i < 4; ++i) {
#pragma HLS unroll
 tmp->data[start + i] = val & 0xff;
      val >>= 8;
    }
    break;
  case 8:
    VITIS_LOOP_79_4: for (i = 0; i < 8; ++i) {
#pragma HLS unroll
 tmp->data[start + i] = val & 0xff;
      val >>= 8;
    }
    break;
  default:
    ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "././memcpy_512.h", 86, __extension__ __PRETTY_FUNCTION__); }));
  }
}
# 4 "././memcpy_512_1d.h" 2
# 14 "././memcpy_512_1d.h"
# 1 "././mars_wide_bus.h" 1
# 1 "/usr/include/assert.h" 1 3 4
# 2 "././mars_wide_bus.h" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 25 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 26 "/usr/include/stdlib.h" 2 3 4





# 1 "/opt/tools/xilinx/Vitis_HLS/2021.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 62 "/opt/tools/xilinx/Vitis_HLS/2021.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 90 "/opt/tools/xilinx/Vitis_HLS/2021.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 3 4
typedef int wchar_t;
# 32 "/usr/include/stdlib.h" 2 3 4







# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 40 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 41 "/usr/include/stdlib.h" 2 3 4
# 55 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 1 3 4
# 120 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 2 3 4
# 207 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
typedef float _Float32;
# 244 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
typedef double _Float64;
# 261 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
typedef double _Float32x;
# 278 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
typedef long double _Float64x;
# 121 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 2 3 4
# 56 "/usr/include/stdlib.h" 2 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;





__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
# 97 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ )) ;



extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 176 "/usr/include/stdlib.h" 3 4
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 385 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ )) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;
# 60 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 98 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;





# 1 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h" 1 3 4






typedef __clock_t clock_t;
# 128 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h" 1 3 4






typedef __clockid_t clockid_t;
# 130 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h" 1 3 4






typedef __time_t time_t;
# 131 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h" 1 3 4






typedef __timer_t timer_t;
# 132 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 145 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/opt/tools/xilinx/Vitis_HLS/2021.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 146 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 178 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 194 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4






# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap-16.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4
# 61 "/usr/include/endian.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 1 3 4
# 32 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 3 4
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}

static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}

static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
# 62 "/usr/include/endian.h" 2 3 4
# 195 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h" 1 3 4




typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
# 5 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 2 3 4


typedef __sigset_t sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h" 1 3 4







struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
# 38 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 1 3 4








struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
# 40 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 59 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 101 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 113 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 198 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4







# 1 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 1 3 4
# 41 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/sysmacros.h" 1 3 4
# 42 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 2 3 4
# 73 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4
extern unsigned int gnu_dev_major (__dev_t __dev) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern unsigned int gnu_dev_minor (__dev_t __dev) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern __dev_t gnu_dev_makedev (unsigned int __major, unsigned int __minor) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
# 206 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4






typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 254 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 1 3 4
# 77 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 2 3 4
# 65 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 3 4
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;

  int __cur_writer;
  int __shared;
  signed char __rwelision;




  unsigned char __pad1[7];


  unsigned long int __pad2;


  unsigned int __flags;
# 99 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 3 4
};
# 78 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4




typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
# 118 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
struct __pthread_mutex_s
{
  int __lock ;
  unsigned int __count;
  int __owner;

  unsigned int __nusers;
# 148 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
  int __kind;





  short __spins; short __elision;
  __pthread_list_t __list;
# 166 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
};




struct __pthread_cond_s
{
  __extension__ union
  {
    __extension__ unsigned long long int __wseq;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __wseq32;
  };
  __extension__ union
  {
    __extension__ unsigned long long int __g1_start;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __g1_start32;
  };
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
# 24 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4



typedef unsigned long int pthread_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;




typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;


typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;





typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 255 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 395 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ ));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ ));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





extern int rand (void) __attribute__ ((__nothrow__ ));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ ));



extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ ));







extern double drand48 (void) __attribute__ ((__nothrow__ ));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ ));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ ));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ ));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;






extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__));
# 563 "/usr/include/stdlib.h" 3 4
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));



# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/opt/tools/xilinx/Vitis_HLS/2021.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ ));
# 567 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 588 "/usr/include/stdlib.h" 3 4
extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 607 "/usr/include/stdlib.h" 3 4
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
# 626 "/usr/include/stdlib.h" 3 4
extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));




extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 644 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ ));
# 672 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 685 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 707 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 728 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 781 "/usr/include/stdlib.h" 3 4
extern int system (const char *__command) ;
# 797 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ )) ;






typedef int (*__compar_fn_t) (const void *, const void *);
# 817 "/usr/include/stdlib.h" 3 4
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 837 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;


__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;






extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;


__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
# 869 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));





extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ ));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ ));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ ));







extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
# 954 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3))) ;
# 1006 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 1016 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 1017 "/usr/include/stdlib.h" 2 3 4
# 3 "././mars_wide_bus.h" 2
# 27 "././mars_wide_bus.h"
static char memcpy_wide_bus_single_read_char_512(merlin_uint_512 *a,
                                                          size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(char);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;
  char ret = merlin_get_range_512(&a[start], (head_align * data_width), data_width);
  return ret;
}

static void memcpy_wide_bus_single_write_char_512(merlin_uint_512 *c, char c_buf,

                                              size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(char);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;
  merlin_set_range_512(&c[start], (head_align * data_width), data_width, c_buf);
  return;
}

static short memcpy_wide_bus_single_read_short_512(merlin_uint_512 *a,

                                               size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(short);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;
  short ret = merlin_get_range_512(&a[start], (head_align * data_width), data_width);
  return ret;
}

static void memcpy_wide_bus_single_write_short_512(merlin_uint_512 *c,

                                              short c_buf, size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(short);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;
  merlin_set_range_512(&c[start], (head_align * data_width), data_width, c_buf);
  return;
}

static int memcpy_wide_bus_single_read_int_512(merlin_uint_512 *a,
                                                        size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(int);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;
  int ret = merlin_get_range_512(&a[start], (head_align * data_width), data_width);
  return ret;
}

static void memcpy_wide_bus_single_write_int_512(merlin_uint_512 *c,
                                                          int c_buf,
                                                          size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(int);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;
  merlin_set_range_512(&c[start], (head_align * data_width), data_width, c_buf);
  return;
}

static long memcpy_wide_bus_single_read_long_512(merlin_uint_512 *a,
                                                          size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;
  long ret = merlin_get_range_512(&a[start], (head_align * data_width), data_width);
  return ret;
}

static void memcpy_wide_bus_single_write_long_512(merlin_uint_512 *c, long c_buf,

                                              size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;
  merlin_set_range_512(&c[start], (head_align * data_width), data_width, c_buf);
  return;
}

static long long memcpy_wide_bus_single_read_long_long_512(merlin_uint_512 *a,

                                                   size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(long long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;
  long long ret = merlin_get_range_512(&a[start], (head_align * data_width), data_width);
  return ret;
}

static void memcpy_wide_bus_single_write_long_long_512(merlin_uint_512 *c,

                                              long long c_buf,
                                              size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(long long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;
  merlin_set_range_512(&c[start], (head_align * data_width), data_width, c_buf);
  return;
}

static float memcpy_wide_bus_single_read_float_512(merlin_uint_512 *a,

                                               size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(float);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;

  int raw_bits = merlin_get_range_512(&a[start], (head_align * data_width), data_width);
  float ret = *(float *)(&raw_bits);
  return ret;
}

static void memcpy_wide_bus_single_write_float_512(merlin_uint_512 *c,

                                              float c_buf, size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(float);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;
  float buf_tmp = c_buf;
  int raw_bits = *(int *)&buf_tmp;
  merlin_set_range_512(&c[start], (head_align * data_width), data_width, raw_bits);
  return;
}

static double memcpy_wide_bus_single_read_double_512(merlin_uint_512 *a,

                                                size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(double);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;

  int64_t raw_bits = merlin_get_range_512(&a[start], (head_align * data_width), data_width);
  double ret = *(double *)(&raw_bits);
  return ret;
}

static void memcpy_wide_bus_single_write_double_512(merlin_uint_512 *c,

                                              double c_buf,
                                              size_t offset_byte) {
#pragma HLS inline
 const size_t data_width = sizeof(double);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t start = offset / num_elements;
  double buf_tmp = c_buf;
  int64_t raw_bits = *(int64_t *)&buf_tmp;
  merlin_set_range_512(&c[start], (head_align * data_width), data_width, raw_bits);
  return;
}

static void memcpy_wide_bus_read_long_512(long *a_buf, merlin_uint_512 *a,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  long len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus.h", 251, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus.h", 252, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_254_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      a_buf[j - head_align] = merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }

L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_273_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 0] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 1) {
      VITIS_LOOP_283_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 1)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 1] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_295_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 2)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 2] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_307_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 3)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 3] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_319_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 4)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 4] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_331_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 5)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 5] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_343_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 6)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 6] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (data_width == 4 && head_align == 7) {
      VITIS_LOOP_355_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 7)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 7] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (data_width == 4 && head_align == 8) {
      VITIS_LOOP_367_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 8)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 8] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (data_width == 4 && head_align == 9) {
      VITIS_LOOP_379_11: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 9)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 9] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (data_width == 4 && head_align == 10) {
      VITIS_LOOP_391_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 10)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 10] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (data_width == 4 && head_align == 11) {
      VITIS_LOOP_403_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 11)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 11] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (data_width == 4 && head_align == 12) {
      VITIS_LOOP_415_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 12)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 12] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (data_width == 4 && head_align == 13) {
      VITIS_LOOP_427_15: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 13)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 13] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (data_width == 4 && head_align == 14) {
      VITIS_LOOP_439_16: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 14)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 14] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else {
      VITIS_LOOP_451_17: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 15)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 15] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_long_512(merlin_uint_512 *c, long *c_buf,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_485_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[j - head_align]);
    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_496_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[j - head_align]);
    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus.h", 509, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_520_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j - 0]);

      }

    }

    else if (head_align == 1) {
      VITIS_LOOP_529_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 15]);

      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_537_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 14]);

      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_545_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 13]);

      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_553_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 12]);

      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_561_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 11]);

      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_569_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 10]);

      }
    }

    else if (data_width == 4 && head_align == 7) {
      VITIS_LOOP_577_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 9]);

      }
    }

    else if (data_width == 4 && head_align == 8) {
      VITIS_LOOP_585_11: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 8]);

      }
    }

    else if (data_width == 4 && head_align == 9) {
      VITIS_LOOP_593_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 7]);

      }
    }

    else if (data_width == 4 && head_align == 10) {
      VITIS_LOOP_601_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 6]);

      }
    }

    else if (data_width == 4 && head_align == 11) {
      VITIS_LOOP_609_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 5]);

      }
    }

    else if (data_width == 4 && head_align == 12) {
      VITIS_LOOP_617_15: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 4]);

      }
    }

    else if (data_width == 4 && head_align == 13) {
      VITIS_LOOP_625_16: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 3]);

      }
    }

    else if (data_width == 4 && head_align == 14) {
      VITIS_LOOP_633_17: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 2]);

      }
    }

    else {
      VITIS_LOOP_641_18: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 1]);

      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_651_19: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[pos + j]);
    }
  }
}

static void memcpy_wide_bus_read_long_long_512(long long *a_buf, merlin_uint_512 *a,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(long long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus.h", 681, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus.h", 682, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_684_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      a_buf[j - head_align] = merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }

L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_703_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 0] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 1) {
      VITIS_LOOP_713_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 1)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 1] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_725_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 2)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 2] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_737_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 3)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 3] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_749_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 4)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 4] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_761_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 5)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 5] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_773_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 6)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 6] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else {
      VITIS_LOOP_785_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 15)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 15] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_long_long_512(merlin_uint_512 *c, long long *c_buf,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(long long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_819_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[j - head_align]);
    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_830_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[j - head_align]);
    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus.h", 843, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_854_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j - 0]);

      }

    }

    else if (head_align == 1) {
      VITIS_LOOP_863_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 15]);

      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_871_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 14]);

      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_879_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 13]);

      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_887_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 12]);

      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_895_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 11]);

      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_903_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 10]);

      }
    }

    else {
      VITIS_LOOP_911_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 1]);

      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_921_11: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[pos + j]);
    }
  }
}

static void memcpy_wide_bus_read_int_512(int *a_buf, merlin_uint_512 *a,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(int);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus.h", 951, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus.h", 952, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_954_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      a_buf[j - head_align] = merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }

L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_973_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 0] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 1) {
      VITIS_LOOP_983_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 1)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 1] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_995_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 2)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 2] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_1007_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 3)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 3] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_1019_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 4)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 4] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_1031_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 5)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 5] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_1043_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 6)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 6] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 7) {
      VITIS_LOOP_1055_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 7)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 7] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 8) {
      VITIS_LOOP_1067_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 8)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 8] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 9) {
      VITIS_LOOP_1079_11: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 9)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 9] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 10) {
      VITIS_LOOP_1091_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 10)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 10] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 11) {
      VITIS_LOOP_1103_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 11)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 11] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 12) {
      VITIS_LOOP_1115_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 12)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 12] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 13) {
      VITIS_LOOP_1127_15: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 13)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 13] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 14) {
      VITIS_LOOP_1139_16: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 14)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 14] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else {
      VITIS_LOOP_1151_17: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 15)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 15] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_int_512(merlin_uint_512 *c, int *c_buf,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(int);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_1185_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[j - head_align]);
    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_1196_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[j - head_align]);
    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus.h", 1209, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_1220_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j - 0]);

      }

    }

    else if (head_align == 1) {
      VITIS_LOOP_1229_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 15]);

      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_1237_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 14]);

      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_1245_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 13]);

      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_1253_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 12]);

      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_1261_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 11]);

      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_1269_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 10]);

      }
    }

    else if (head_align == 7) {
      VITIS_LOOP_1277_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 9]);

      }
    }

    else if (head_align == 8) {
      VITIS_LOOP_1285_11: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 8]);

      }
    }

    else if (head_align == 9) {
      VITIS_LOOP_1293_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 7]);

      }
    }

    else if (head_align == 10) {
      VITIS_LOOP_1301_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 6]);

      }
    }

    else if (head_align == 11) {
      VITIS_LOOP_1309_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 5]);

      }
    }

    else if (head_align == 12) {
      VITIS_LOOP_1317_15: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 4]);

      }
    }

    else if (head_align == 13) {
      VITIS_LOOP_1325_16: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 3]);

      }
    }

    else if (head_align == 14) {
      VITIS_LOOP_1333_17: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 2]);

      }
    }

    else {
      VITIS_LOOP_1341_18: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 1]);

      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_1351_19: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[pos + j]);
    }
  }
}

static void memcpy_wide_bus_read_short_512(short *a_buf, merlin_uint_512 *a,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(short);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus.h", 1381, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus.h", 1382, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_1384_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      a_buf[j - head_align] = merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }

L3:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_1403_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 0] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 1) {
      VITIS_LOOP_1413_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 1)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 1] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_1425_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 2)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 2] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_1437_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 3)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 3] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_1449_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 4)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 4] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_1461_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 5)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 5] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_1473_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 6)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 6] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 7) {
      VITIS_LOOP_1485_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 7)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 7] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 8) {
      VITIS_LOOP_1497_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 8)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 8] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 9) {
      VITIS_LOOP_1509_11: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 9)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 9] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 10) {
      VITIS_LOOP_1521_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 10)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 10] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 11) {
      VITIS_LOOP_1533_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 11)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 11] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 12) {
      VITIS_LOOP_1545_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 12)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 12] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 13) {
      VITIS_LOOP_1557_15: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 13)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 13] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 14) {
      VITIS_LOOP_1569_16: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 14)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 14] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 15) {
      VITIS_LOOP_1579_17: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 15)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 15] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 16) {
      VITIS_LOOP_1589_18: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 16)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 16] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 17) {
      VITIS_LOOP_1599_19: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 17)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 17] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 18) {
      VITIS_LOOP_1609_20: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 18)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 18] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 19) {
      VITIS_LOOP_1619_21: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 19)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 19] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 20) {
      VITIS_LOOP_1629_22: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 20)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 20] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 21) {
      VITIS_LOOP_1639_23: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 21)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 21] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 22) {
      VITIS_LOOP_1649_24: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 22)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 22] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 23) {
      VITIS_LOOP_1659_25: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 23)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 23] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 24) {
      VITIS_LOOP_1669_26: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 24)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 24] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 25) {
      VITIS_LOOP_1679_27: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 25)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 25] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 26) {
      VITIS_LOOP_1689_28: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 26)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 26] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 27) {
      VITIS_LOOP_1699_29: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 27)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 27] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 28) {
      VITIS_LOOP_1709_30: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 28)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 28] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 29) {
      VITIS_LOOP_1719_31: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 29)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 29] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 30) {
      VITIS_LOOP_1729_32: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 30)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 30] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else {
      VITIS_LOOP_1739_33: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 31)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 31] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_short_512(merlin_uint_512 *c, short *c_buf,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(short);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_1773_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[j - head_align]);
    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_1784_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[j - head_align]);
    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus.h", 1797, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_1808_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j - 0]);

      }

    } else if (head_align == 1) {
      VITIS_LOOP_1815_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 31]);

      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_1823_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 30]);

      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_1831_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 29]);

      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_1839_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 28]);

      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_1847_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 27]);

      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_1855_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 26]);

      }
    }

    else if (head_align == 7) {
      VITIS_LOOP_1863_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 25]);

      }
    }

    else if (head_align == 8) {
      VITIS_LOOP_1871_11: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 24]);

      }
    }

    else if (head_align == 9) {
      VITIS_LOOP_1879_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 23]);

      }
    }

    else if (head_align == 10) {
      VITIS_LOOP_1887_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 22]);

      }
    }

    else if (head_align == 11) {
      VITIS_LOOP_1895_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 21]);

      }
    }

    else if (head_align == 12) {
      VITIS_LOOP_1903_15: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 20]);

      }
    }

    else if (head_align == 13) {
      VITIS_LOOP_1911_16: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 19]);

      }
    }

    else if (head_align == 14) {
      VITIS_LOOP_1919_17: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 18]);

      }
    }

    else if (head_align == 15) {
      VITIS_LOOP_1927_18: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 17]);

      }
    }

    else if (head_align == 16) {
      VITIS_LOOP_1935_19: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 16]);

      }
    }

    else if (head_align == 17) {
      VITIS_LOOP_1943_20: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 15]);

      }
    }

    else if (head_align == 18) {
      VITIS_LOOP_1951_21: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 14]);

      }
    }

    else if (head_align == 19) {
      VITIS_LOOP_1959_22: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 13]);

      }
    }

    else if (head_align == 20) {
      VITIS_LOOP_1967_23: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 12]);

      }
    }

    else if (head_align == 21) {
      VITIS_LOOP_1975_24: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 11]);

      }
    }

    else if (head_align == 22) {
      VITIS_LOOP_1983_25: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 10]);

      }
    }

    else if (head_align == 23) {
      VITIS_LOOP_1991_26: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 9]);

      }
    }

    else if (head_align == 24) {
      VITIS_LOOP_1999_27: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 8]);

      }
    }

    else if (head_align == 25) {
      VITIS_LOOP_2007_28: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 7]);

      }
    }

    else if (head_align == 26) {
      VITIS_LOOP_2015_29: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 6]);

      }
    }

    else if (head_align == 27) {
      VITIS_LOOP_2023_30: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 5]);

      }
    }

    else if (head_align == 28) {
      VITIS_LOOP_2031_31: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 4]);

      }
    }

    else if (head_align == 29) {
      VITIS_LOOP_2039_32: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 3]);

      }
    }

    else if (head_align == 30) {
      VITIS_LOOP_2047_33: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 2]);

      }
    }

    else {
      VITIS_LOOP_2055_34: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 1]);

      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_2065_35: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[pos + j]);
    }
  }
}

static void memcpy_wide_bus_read_char_512(char *a_buf, merlin_uint_512 *a,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(char);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus.h", 2095, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus.h", 2096, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_2098_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      a_buf[j - head_align] = merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }

L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_2117_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 0] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 1) {
      VITIS_LOOP_2127_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 1)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 1] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_2139_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 2)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 2] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_2151_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 3)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 3] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_2163_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 4)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 4] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_2175_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 5)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 5] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_2187_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 6)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 6] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 7) {
      VITIS_LOOP_2199_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 7)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 7] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 8) {
      VITIS_LOOP_2211_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 8)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 8] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 9) {
      VITIS_LOOP_2223_11: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 9)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 9] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 10) {
      VITIS_LOOP_2235_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 10)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 10] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 11) {
      VITIS_LOOP_2247_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 11)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 11] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 12) {
      VITIS_LOOP_2259_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 12)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 12] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 13) {
      VITIS_LOOP_2271_15: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 13)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 13] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }

    else if (head_align == 14) {
      VITIS_LOOP_2283_16: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 14)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 14] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 15) {
      VITIS_LOOP_2293_17: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 15)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 15] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 16) {
      VITIS_LOOP_2303_18: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 16)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 16] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 17) {
      VITIS_LOOP_2313_19: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 17)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 17] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 18) {
      VITIS_LOOP_2323_20: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 18)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 18] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 19) {
      VITIS_LOOP_2333_21: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 19)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 19] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 20) {
      VITIS_LOOP_2343_22: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 20)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 20] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 21) {
      VITIS_LOOP_2353_23: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 21)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 21] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 22) {
      VITIS_LOOP_2363_24: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 22)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 22] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 23) {
      VITIS_LOOP_2373_25: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 23)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 23] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 24) {
      VITIS_LOOP_2383_26: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 24)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 24] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 25) {
      VITIS_LOOP_2393_27: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 25)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 25] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 26) {
      VITIS_LOOP_2403_28: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 26)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 26] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 27) {
      VITIS_LOOP_2413_29: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 27)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 27] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 28) {
      VITIS_LOOP_2423_30: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 28)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 28] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 29) {
      VITIS_LOOP_2433_31: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 29)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 29] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 30) {
      VITIS_LOOP_2443_32: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 30)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 30] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 31) {
      VITIS_LOOP_2453_33: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 31)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 31] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 32) {
      VITIS_LOOP_2463_34: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 32)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 32] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 33) {
      VITIS_LOOP_2473_35: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 33)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 33] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 34) {
      VITIS_LOOP_2483_36: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 34)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 34] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 35) {
      VITIS_LOOP_2493_37: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 35)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 35] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 36) {
      VITIS_LOOP_2503_38: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 36)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 36] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 37) {
      VITIS_LOOP_2513_39: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 37)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 37] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 38) {
      VITIS_LOOP_2523_40: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 38)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 38] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 39) {
      VITIS_LOOP_2533_41: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 39)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 39] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 40) {
      VITIS_LOOP_2543_42: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 40)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 40] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 41) {
      VITIS_LOOP_2553_43: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 41)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 41] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 42) {
      VITIS_LOOP_2563_44: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 42)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 42] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 43) {
      VITIS_LOOP_2573_45: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 43)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 43] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 44) {
      VITIS_LOOP_2583_46: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 44)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 44] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 45) {
      VITIS_LOOP_2593_47: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 45)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 45] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 46) {
      VITIS_LOOP_2603_48: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 46)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 46] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 47) {
      VITIS_LOOP_2613_49: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 47)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 47] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 48) {
      VITIS_LOOP_2623_50: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 48)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 48] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 49) {
      VITIS_LOOP_2633_51: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 49)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 49] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 50) {
      VITIS_LOOP_2643_52: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 50)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 50] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 51) {
      VITIS_LOOP_2653_53: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 51)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 51] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 52) {
      VITIS_LOOP_2663_54: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 52)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 52] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 53) {
      VITIS_LOOP_2673_55: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 53)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 53] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 54) {
      VITIS_LOOP_2683_56: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 54)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 54] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 55) {
      VITIS_LOOP_2693_57: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 55)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 55] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 56) {
      VITIS_LOOP_2703_58: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 56)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 56] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 57) {
      VITIS_LOOP_2713_59: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 57)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 57] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 58) {
      VITIS_LOOP_2723_60: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 58)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 58] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 59) {
      VITIS_LOOP_2733_61: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 59)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 59] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 60) {
      VITIS_LOOP_2743_62: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 60)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 60] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 61) {
      VITIS_LOOP_2753_63: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 61)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 61] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else if (head_align == 62) {
      VITIS_LOOP_2763_64: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 62)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 62] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    } else {
      VITIS_LOOP_2773_65: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 63)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        a_buf[i * num_elements + j - 63] =
            merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_char_512(merlin_uint_512 *c, char *c_buf,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(char);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_2807_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[j - head_align]);
    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_2818_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[j - head_align]);
    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus.h", 2831, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_2842_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j - 0]);

      }

    } else if (head_align == 1) {
      VITIS_LOOP_2849_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 63]);

      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_2857_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 62]);

      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_2865_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 61]);

      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_2873_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 60]);

      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_2881_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 59]);

      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_2889_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 58]);

      }
    }

    else if (head_align == 7) {
      VITIS_LOOP_2897_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 57]);

      }
    }

    else if (head_align == 8) {
      VITIS_LOOP_2905_11: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 56]);

      }
    }

    else if (head_align == 9) {
      VITIS_LOOP_2913_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 55]);

      }
    }

    else if (head_align == 10) {
      VITIS_LOOP_2921_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 54]);

      }
    }

    else if (head_align == 11) {
      VITIS_LOOP_2929_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 53]);

      }
    }

    else if (head_align == 12) {
      VITIS_LOOP_2937_15: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 52]);

      }
    }

    else if (head_align == 13) {
      VITIS_LOOP_2945_16: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 51]);

      }
    }

    else if (head_align == 14) {
      VITIS_LOOP_2953_17: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 50]);

      }
    }

    else if (head_align == 15) {
      VITIS_LOOP_2961_18: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 49]);

      }
    }

    else if (head_align == 16) {
      VITIS_LOOP_2969_19: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 48]);

      }
    }

    else if (head_align == 17) {
      VITIS_LOOP_2977_20: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 47]);

      }
    }

    else if (head_align == 18) {
      VITIS_LOOP_2985_21: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 46]);

      }
    }

    else if (head_align == 19) {
      VITIS_LOOP_2993_22: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 45]);

      }
    }

    else if (head_align == 20) {
      VITIS_LOOP_3001_23: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 44]);

      }
    }

    else if (head_align == 21) {
      VITIS_LOOP_3009_24: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 43]);

      }
    }

    else if (head_align == 22) {
      VITIS_LOOP_3017_25: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 42]);

      }
    }

    else if (head_align == 23) {
      VITIS_LOOP_3025_26: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 41]);

      }
    }

    else if (head_align == 24) {
      VITIS_LOOP_3033_27: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 40]);

      }
    }

    else if (head_align == 25) {
      VITIS_LOOP_3041_28: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 39]);

      }
    }

    else if (head_align == 26) {
      VITIS_LOOP_3049_29: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 38]);

      }
    }

    else if (head_align == 27) {
      VITIS_LOOP_3057_30: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 37]);

      }
    }

    else if (head_align == 28) {
      VITIS_LOOP_3065_31: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 36]);

      }
    }

    else if (head_align == 29) {
      VITIS_LOOP_3073_32: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 35]);

      }
    }

    else if (head_align == 30) {
      VITIS_LOOP_3081_33: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 34]);

      }
    }

    else if (head_align == 31) {
      VITIS_LOOP_3089_34: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 33]);

      }
    }

    else if (head_align == 32) {
      VITIS_LOOP_3097_35: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 32]);

      }
    }

    else if (head_align == 33) {
      VITIS_LOOP_3105_36: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 31]);

      }
    }

    else if (head_align == 34) {
      VITIS_LOOP_3113_37: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 30]);

      }
    }

    else if (head_align == 35) {
      VITIS_LOOP_3121_38: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 29]);

      }
    }

    else if (head_align == 36) {
      VITIS_LOOP_3129_39: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 28]);

      }
    }

    else if (head_align == 37) {
      VITIS_LOOP_3137_40: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 27]);

      }
    }

    else if (head_align == 38) {
      VITIS_LOOP_3145_41: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 26]);

      }
    }

    else if (head_align == 39) {
      VITIS_LOOP_3153_42: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 25]);

      }
    }

    else if (head_align == 40) {
      VITIS_LOOP_3161_43: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 24]);

      }
    }

    else if (head_align == 41) {
      VITIS_LOOP_3169_44: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 23]);

      }
    }

    else if (head_align == 42) {
      VITIS_LOOP_3177_45: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 22]);

      }
    }

    else if (head_align == 43) {
      VITIS_LOOP_3185_46: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 21]);

      }
    }

    else if (head_align == 44) {
      VITIS_LOOP_3193_47: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 20]);

      }
    }

    else if (head_align == 45) {
      VITIS_LOOP_3201_48: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 19]);

      }
    }

    else if (head_align == 46) {
      VITIS_LOOP_3209_49: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 18]);

      }
    }

    else if (head_align == 47) {
      VITIS_LOOP_3217_50: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 17]);

      }
    }

    else if (head_align == 48) {
      VITIS_LOOP_3225_51: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 16]);

      }
    }

    else if (head_align == 49) {
      VITIS_LOOP_3233_52: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 15]);

      }
    }

    else if (head_align == 50) {
      VITIS_LOOP_3241_53: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 14]);

      }
    }

    else if (head_align == 51) {
      VITIS_LOOP_3249_54: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 13]);

      }
    }

    else if (head_align == 52) {
      VITIS_LOOP_3257_55: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 12]);

      }
    }

    else if (head_align == 53) {
      VITIS_LOOP_3265_56: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 11]);

      }
    }

    else if (head_align == 54) {
      VITIS_LOOP_3273_57: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 10]);

      }
    }

    else if (head_align == 55) {
      VITIS_LOOP_3281_58: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 9]);

      }
    }

    else if (head_align == 56) {
      VITIS_LOOP_3289_59: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 8]);

      }
    }

    else if (head_align == 57) {
      VITIS_LOOP_3297_60: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 7]);

      }
    }

    else if (head_align == 58) {
      VITIS_LOOP_3305_61: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 6]);

      }
    }

    else if (head_align == 59) {
      VITIS_LOOP_3313_62: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 5]);

      }
    }

    else if (head_align == 60) {
      VITIS_LOOP_3321_63: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 4]);

      }
    }

    else if (head_align == 61) {
      VITIS_LOOP_3329_64: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 3]);

      }
    }

    else if (head_align == 62) {
      VITIS_LOOP_3337_65: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 2]);

      }
    }

    else {
      VITIS_LOOP_3345_66: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[i * num_elements + j + 1]);

      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_3355_67: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[pos + j]);
    }
  }
}

static void memcpy_wide_bus_read_float_512(float *a_buf, merlin_uint_512 *a,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(float);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  int len = end - start;
  if (head_align == 0) {
    len = (buf_size + num_elements - 1) / num_elements;
  }
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus.h", 3386, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus.h", 3387, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_3389_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      int raw_bits = merlin_get_range_512(&a[start], (j * data_width), data_width);
      a_buf[j - head_align] = *(float *)(&raw_bits);
    }
    return;
  }

L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_3409_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 0] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 1) {
      VITIS_LOOP_3419_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 1)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 1] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_3431_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 2)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 2] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_3443_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 3)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 3] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_3455_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 4)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 4] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_3467_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 5)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 5] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_3479_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 6)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 6] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 7) {
      VITIS_LOOP_3491_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 7)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 7] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 8) {
      VITIS_LOOP_3503_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 8)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 8] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 9) {
      VITIS_LOOP_3515_11: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 9)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 9] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 10) {
      VITIS_LOOP_3527_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 10)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 10] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 11) {
      VITIS_LOOP_3539_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 11)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 11] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 12) {
      VITIS_LOOP_3551_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 12)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 12] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 13) {
      VITIS_LOOP_3563_15: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 13)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 13] = *(float *)(&raw_bits);
      }
    }

    else if (head_align == 14) {
      VITIS_LOOP_3575_16: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 14)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 14] = *(float *)(&raw_bits);
      }
    }

    else {
      VITIS_LOOP_3587_17: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 15)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 15] = *(float *)(&raw_bits);
      }
    }
  }
}

static void memcpy_wide_bus_write_float_512(merlin_uint_512 *c, float *c_buf,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(float);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  if (len == 1) {
    VITIS_LOOP_3620_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      float buf_tmp = c_buf[j - head_align];
      int raw_bits = *(int *)&buf_tmp;
      merlin_set_range_512(&c[start], (j * data_width), data_width, raw_bits);
    }
    return;
  }
  unsigned align = 0;
  if (head_align != 0) {
    VITIS_LOOP_3634_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      float buf_tmp = c_buf[j - head_align];
      int raw_bits = *(int *)&buf_tmp;
      merlin_set_range_512(&c[start], (j * data_width), data_width, raw_bits);
    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus.h", 3649, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_3660_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j - 0];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }

    }

    else if (head_align == 1) {
      VITIS_LOOP_3670_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 15];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_3679_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 14];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_3688_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 13];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_3697_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 12];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_3706_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 11];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_3715_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 10];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 7) {
      VITIS_LOOP_3724_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 9];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 8) {
      VITIS_LOOP_3733_11: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 8];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 9) {
      VITIS_LOOP_3742_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 7];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 10) {
      VITIS_LOOP_3751_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 6];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 11) {
      VITIS_LOOP_3760_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 5];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 12) {
      VITIS_LOOP_3769_15: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 4];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 13) {
      VITIS_LOOP_3778_16: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 3];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 14) {
      VITIS_LOOP_3787_17: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 2];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else {
      VITIS_LOOP_3796_18: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float buf_tmp = c_buf[i * num_elements + j + 1];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_3807_19: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      float buf_tmp = c_buf[pos + j];
      int raw_bits = *(int *)&buf_tmp;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, raw_bits);
    }
  }
}

static void memcpy_wide_bus_read_double_512(double *a_buf, merlin_uint_512 *a,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(double);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus.h", 3839, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus.h", 3840, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_3842_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      int64_t raw_bits = merlin_get_range_512(&a[start], (j * data_width), data_width);
      a_buf[j - head_align] = *(double *)(&raw_bits);
    }
    return;
  }

L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_3862_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
          continue;
        int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 0] = *(double *)(&raw_bits);
      }
    }

    else if (head_align == 1) {
      VITIS_LOOP_3872_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 1)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 1] = *(double *)(&raw_bits);
      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_3884_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 2)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 2] = *(double *)(&raw_bits);
      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_3896_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 3)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 3] = *(double *)(&raw_bits);
      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_3908_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 4)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 4] = *(double *)(&raw_bits);
      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_3920_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 5)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 5] = *(double *)(&raw_bits);
      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_3932_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 6)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 6] = *(double *)(&raw_bits);
      }
    }

    else {
      VITIS_LOOP_3944_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < 7)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[i * num_elements + j - 7] = *(double *)(&raw_bits);
      }
    }
  }
}

static void memcpy_wide_bus_write_double_512(merlin_uint_512 *c, double *c_buf,

                                       size_t offset_byte, size_t size_byte,
                                       const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(double);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  if (len == 1) {
    VITIS_LOOP_3977_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      double buf_tmp = c_buf[j - head_align];
      int64_t raw_bits = *(int64_t *)&buf_tmp;
      merlin_set_range_512(&c[start], (j * data_width), data_width, raw_bits);
    }
    return;
  }
  size_t align = 0;
  if (head_align != 0) {
    VITIS_LOOP_3991_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      double buf_tmp = c_buf[j - head_align];
      int64_t raw_bits = *(int64_t *)&buf_tmp;
      merlin_set_range_512(&c[start], (j * data_width), data_width, raw_bits);
    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus.h", 4006, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0) {
      VITIS_LOOP_4017_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 double buf_tmp = c_buf[i * num_elements + j - 0];
        int64_t raw_bits = *(int64_t *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }

    }

    else if (head_align == 1) {
      VITIS_LOOP_4027_4: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 double buf_tmp = c_buf[i * num_elements + j + 7];
        int64_t raw_bits = *(int64_t *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 2) {
      VITIS_LOOP_4036_5: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 double buf_tmp = c_buf[i * num_elements + j + 6];
        int64_t raw_bits = *(int64_t *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 3) {
      VITIS_LOOP_4045_6: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 double buf_tmp = c_buf[i * num_elements + j + 5];
        int64_t raw_bits = *(int64_t *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 4) {
      VITIS_LOOP_4054_7: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 double buf_tmp = c_buf[i * num_elements + j + 4];
        int64_t raw_bits = *(int64_t *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 5) {
      VITIS_LOOP_4063_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 double buf_tmp = c_buf[i * num_elements + j + 3];
        int64_t raw_bits = *(int64_t *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else if (head_align == 6) {
      VITIS_LOOP_4072_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 double buf_tmp = c_buf[i * num_elements + j + 2];
        int64_t raw_bits = *(int64_t *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }

    else {
      VITIS_LOOP_4081_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 double buf_tmp = c_buf[i * num_elements + j + 1];
        int64_t raw_bits = *(int64_t *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_4092_11: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      double buf_tmp = c_buf[pos + j];
      int64_t raw_bits = *(int64_t *)&buf_tmp;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, raw_bits);
    }
  }
}
# 15 "././memcpy_512_1d.h" 2
# 5 "./__merlinkernel_bbgemm.c" 2


# 1 "././memcpy_512_3d.h" 1
# 12 "././memcpy_512_3d.h"
# 1 "././mars_wide_bus_3d.h" 1
# 1 "/usr/include/assert.h" 1 3 4
# 2 "././mars_wide_bus_3d.h" 2
# 321 "././mars_wide_bus_3d.h"
static void memcpy_wide_bus_read_char_3d_8_8_512(
    char a_buf[][8][8], size_t index3_offset, size_t index2_offset,
    size_t index1_offset, merlin_uint_512 *a, size_t offset_byte,
    size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(char);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t SIZE = 8 * 8;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }
  const size_t index_offset =
      index3_offset * SIZE + index2_offset * 8 + index1_offset;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_3d.h", 363, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_3d.h", 364, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_366_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
           [(buffer_index % SIZE) % 8] =
               merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_388_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          size_t buffer_index = i * num_elements + j - 0;
          a_buf[index3][index2][index1 * num_elements + j] =
              merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_399_3: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_401_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            a_buf[index3][index2 * num_elements / 8 + j0][j1] =
                merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_412_5: for (j0 = 0; j0 < num_elements / SIZE; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_414_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_415_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              a_buf[index3 * bound0 + j0][j1][j2] =
                  merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_427_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
             [(buffer_index % SIZE) % 8] =
                 merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_char_3d_8_8_512(
    merlin_uint_512 *c, char c_buf[][8][8], size_t index3_offset,
    size_t index2_offset, size_t index1_offset, size_t offset_byte,
    size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(char);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t SIZE = 8 * 8;
  size_t index_offset =
      SIZE * index3_offset + 8 * index2_offset + index1_offset;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_466_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_480_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_3d.h", 514, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_526_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 int val = c_buf[index3][index2][index1 * num_elements + j];
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_534_4: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_536_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            int val = c_buf[index3][index2 * num_elements / 8 + j0][j1];
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_545_6: for (j0 = 0; j0 < bound0; ++j0) {
          VITIS_LOOP_546_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_547_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              int val = c_buf[index3 * bound0 + j0][j1][j2];
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_557_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_570_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
  }
}

static void memcpy_wide_bus_read_short_3d_8_8_512(
    short a_buf[][8][8], size_t index3_offset, size_t index2_offset,
    size_t index1_offset, merlin_uint_512 *a, size_t offset_byte,
    size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(short);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t SIZE = 8 * 8;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }
  const size_t index_offset =
      index3_offset * SIZE + index2_offset * 8 + index1_offset;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_3d.h", 624, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_3d.h", 625, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_627_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
           [(buffer_index % SIZE) % 8] =
               merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_649_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          size_t buffer_index = i * num_elements + j - 0;
          a_buf[index3][index2][index1 * num_elements + j] =
              merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_660_3: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_662_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            a_buf[index3][index2 * num_elements / 8 + j0][j1] =
                merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_673_5: for (j0 = 0; j0 < num_elements / SIZE; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_675_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_676_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              a_buf[index3 * bound0 + j0][j1][j2] =
                  merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_688_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
             [(buffer_index % SIZE) % 8] =
                 merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_short_3d_8_8_512(
    merlin_uint_512 *c, short c_buf[][8][8], size_t index3_offset,
    size_t index2_offset, size_t index1_offset, size_t offset_byte,
    size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(short);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t SIZE = 8 * 8;
  size_t index_offset =
      SIZE * index3_offset + 8 * index2_offset + index1_offset;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_727_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_741_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_3d.h", 775, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_787_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 int val = c_buf[index3][index2][index1 * num_elements + j];
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_795_4: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_797_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            int val = c_buf[index3][index2 * num_elements / 8 + j0][j1];
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_806_6: for (j0 = 0; j0 < bound0; ++j0) {
          VITIS_LOOP_807_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_808_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              int val = c_buf[index3 * bound0 + j0][j1][j2];
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_818_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_831_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
  }
}

static void memcpy_wide_bus_read_int_3d_8_8_512(
    int a_buf[][8][8], size_t index3_offset, size_t index2_offset,
    size_t index1_offset, merlin_uint_512 *a, size_t offset_byte,
    size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(int);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t SIZE = 8 * 8;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }

  const size_t index_offset =
      index3_offset * SIZE + index2_offset * 8 + index1_offset;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_3d.h", 886, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_3d.h", 887, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_889_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
           [(buffer_index % SIZE) % 8] =
               merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_911_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          size_t buffer_index = i * num_elements + j - 0;
          a_buf[index3][index2][index1 * num_elements + j] =
              merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_922_3: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_924_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            a_buf[index3][index2 * num_elements / 8 + j0][j1] =
                merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_935_5: for (j0 = 0; j0 < bound0; ++j0) {
          VITIS_LOOP_936_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_937_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              a_buf[index3 * bound0 + j0][j1][j2] =
                  merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_949_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
             [(buffer_index % SIZE) % 8] =
                 merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_int_3d_8_8_512(
    merlin_uint_512 *c, int c_buf[][8][8], size_t index3_offset,
    size_t index2_offset, size_t index1_offset, size_t offset_byte,
    size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(int);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t SIZE = 8 * 8;
  const size_t index_offset =
      index3_offset * SIZE + index2_offset * 8 + index1_offset;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_988_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_1002_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_3d.h", 1036, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1048_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 int val = c_buf[index3][index2][index1 * num_elements + j];
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_1056_4: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_1058_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            int val = c_buf[index3][index2 * num_elements / 8 + j0][j1];
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_1067_6: for (j0 = 0; j0 < bound0; ++j0) {
          VITIS_LOOP_1068_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1069_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              int val = c_buf[index3 * bound0 + j0][j1][j2];
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_1079_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_1092_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
  }
}

static void memcpy_wide_bus_read_long_3d_8_8_512(
    long a_buf[][8][8], size_t index3_offset, size_t index2_offset,
    size_t index1_offset, merlin_uint_512 *a, size_t offset_byte,
    size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t SIZE = 8 * 8;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }

  const size_t index_offset =
      index3_offset * SIZE + index2_offset * 8 + index1_offset;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_3d.h", 1147, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_3d.h", 1148, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_1150_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
           [(buffer_index % SIZE) % 8] =
               merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1172_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          size_t buffer_index = i * num_elements + j - 0;
          a_buf[index3][index2][index1 * num_elements + j] =
              merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_1183_3: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_1185_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            a_buf[index3][index2 * num_elements / 8 + j0][j1] =
                merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_1196_5: for (j0 = 0; j0 < bound0; ++j0) {
          VITIS_LOOP_1197_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1198_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              a_buf[index3 * bound0 + j0][j1][j2] =
                  merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_1210_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
             [(buffer_index % SIZE) % 8] =
                 merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_long_3d_8_8_512(
    merlin_uint_512 *c, long c_buf[][8][8], size_t index3_offset,
    size_t index2_offset, size_t index1_offset, size_t offset_byte,
    size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t SIZE = 8 * 8;
  const size_t index_offset =
      index3_offset * SIZE + index2_offset * 8 + index1_offset;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_1249_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_1263_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_3d.h", 1297, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1309_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 long val = c_buf[index3][index2][index1 * num_elements + j];
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_1317_4: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_1319_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            long val = c_buf[index3][index2 * num_elements / 8 + j0][j1];
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_1328_6: for (j0 = 0; j0 < bound0; ++j0) {
          VITIS_LOOP_1329_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1330_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              long val = c_buf[index3 * bound0 + j0][j1][j2];
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_1340_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_1353_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
  }
}

static void memcpy_wide_bus_read_long_long_3d_8_8_512(
    long long a_buf[][8][8], size_t index3_offset,
    size_t index2_offset, size_t index1_offset, merlin_uint_512 *a,
    size_t offset_byte, size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(long long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t SIZE = 8 * 8;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }

  const size_t index_offset =
      index3_offset * SIZE + index2_offset * 8 + index1_offset;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_3d.h", 1408, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_3d.h", 1409, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_1411_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
           [(buffer_index % SIZE) % 8] =
               merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1433_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          size_t buffer_index = i * num_elements + j - 0;
          a_buf[index3][index2][index1 * num_elements + j] =
              merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_1444_3: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_1446_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            a_buf[index3][index2 * num_elements / 8 + j0][j1] =
                merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_1457_5: for (j0 = 0; j0 < bound0; ++j0) {
          VITIS_LOOP_1458_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1459_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              a_buf[index3 * bound0 + j0][j1][j2] =
                  merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_1471_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
             [(buffer_index % SIZE) % 8] =
                 merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_long_long_3d_8_8_512(
    merlin_uint_512 *c, long long c_buf[][8][8],
    size_t index3_offset, size_t index2_offset, size_t index1_offset,
    size_t offset_byte, size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(long long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t SIZE = 8 * 8;
  const size_t index_offset =
      index3_offset * SIZE + index2_offset * 8 + index1_offset;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_1510_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_1524_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_3d.h", 1558, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1570_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 long long val = c_buf[index3][index2][index1 * num_elements + j];
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_1578_4: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_1580_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            long long val =
                c_buf[index3][index2 * num_elements / 8 + j0][j1];
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_1590_6: for (j0 = 0; j0 < bound0; ++j0) {
          VITIS_LOOP_1591_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1592_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              long long val = c_buf[index3 * bound0 + j0][j1][j2];
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_1602_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_1615_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8] [(buffer_index % SIZE) % 8]);


    }
  }
}

static void memcpy_wide_bus_read_float_3d_8_8_512(
    float a_buf[][8][8], size_t index3_offset, size_t index2_offset,
    size_t index1_offset, merlin_uint_512 *a, size_t offset_byte,
    size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(float);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t SIZE = 8 * 8;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }
  const size_t index_offset =
      index3_offset * SIZE + index2_offset * 8 + index1_offset;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_3d.h", 1669, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_3d.h", 1670, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_1672_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      int raw_bits = merlin_get_range_512(&a[start], (j * data_width), data_width);
      a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
           [(buffer_index % SIZE) % 8] = *(float *)(&raw_bits);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1694_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          a_buf[index3][index2][index1 * num_elements + j] =
              *(float *)(&raw_bits);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_1705_3: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_1707_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            a_buf[index3][index2 * num_elements / 8 + j0][j1] =
                *(float *)(&raw_bits);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_1719_5: for (j0 = 0; j0 < bound0; ++j0) {
          VITIS_LOOP_1720_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1721_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
              a_buf[index3 * bound0 + j0][j1][j2] = *(float *)(&raw_bits);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_1733_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
             [(buffer_index % SIZE) % 8] = *(float *)(&raw_bits);
      }
    }
  }
}

static void memcpy_wide_bus_write_float_3d_8_8_512(
    merlin_uint_512 *c, float c_buf[][8][8], size_t index3_offset,
    size_t index2_offset, size_t index1_offset, size_t offset_byte,
    size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(float);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t SIZE = 8 * 8;
  const size_t index_offset =
      index3_offset * SIZE + index2_offset * 8 + index1_offset;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  if (len == 1) {
    VITIS_LOOP_1771_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      float buf_tmp = c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
                           [(buffer_index % SIZE) % 8];
      int raw_bits = *(int *)&buf_tmp;
      merlin_set_range_512(&c[start], (j * data_width), data_width, raw_bits);
    }
    return;
  }
  unsigned align = 0;
  if (head_align != 0) {
    VITIS_LOOP_1787_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      float buf_tmp = c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
                           [(buffer_index % SIZE) % 8];
      int raw_bits = *(int *)&buf_tmp;
      merlin_set_range_512(&c[start], (j * data_width), data_width, raw_bits);
    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_3d.h", 1822, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1834_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll

 float buf_tmp = c_buf[index3][index2][index1 * num_elements + j];
          int raw_bits = *(int *)&buf_tmp;
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_1844_4: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_1846_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            float buf_tmp =
                c_buf[index3][index2 * num_elements / 8 + j0][j1];
            int raw_bits = *(int *)&buf_tmp;
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_1857_6: for (j0 = 0; j0 < bound0; ++j0) {
          VITIS_LOOP_1858_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1859_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              float buf_tmp = c_buf[index3 * bound0 + j0][j1][j2];
              int raw_bits = *(int *)&buf_tmp;
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_1870_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        float buf_tmp =
            c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
                 [(buffer_index % SIZE) % 8];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_1885_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      float buf_tmp = c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
                           [(buffer_index % SIZE) % 8];
      int raw_bits = *(int *)&buf_tmp;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, raw_bits);
    }
  }
}

static void memcpy_wide_bus_read_double_3d_8_8_512(
    double a_buf[][8][8], size_t index3_offset, size_t index2_offset,
    size_t index1_offset, merlin_uint_512 *a, size_t offset_byte,
    size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(double);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  const size_t SIZE = 8 * 8;
  const size_t index_offset =
      index3_offset * SIZE + index2_offset * 8 + index1_offset;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_3d.h", 1940, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_3d.h", 1941, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_1943_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;

      size_t buffer_index = j - head_align + index_offset;
      int64_t raw_bits = merlin_get_range_512(&a[start], (j * data_width), data_width);
      a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
           [(buffer_index % SIZE) % 8] = *(double *)(&raw_bits);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1966_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          a_buf[index3][index2][index1 * num_elements + j] =
              *(double *)(&raw_bits);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_1977_3: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_1979_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            a_buf[index3][index2 * num_elements / 8 + j0][j1] =
                *(double *)(&raw_bits);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_1991_5: for (j0 = 0; j0 < bound0; ++j0) {
          VITIS_LOOP_1992_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1993_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              int64_t raw_bits =
                  merlin_get_range_512(&a[i + start], (j * data_width), data_width);
              a_buf[index3 * bound0 + j0][j1][j2] = *(double *)(&raw_bits);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_2006_8: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
             [(buffer_index % SIZE) % 8] = *(double *)(&raw_bits);
      }
    }
  }
}

static void memcpy_wide_bus_write_double_3d_8_8_512(
    merlin_uint_512 *c, double c_buf[][8][8], size_t index3_offset,
    size_t index2_offset, size_t index1_offset, size_t offset_byte,
    size_t size_byte, const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(double);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t bound1 = 8 / num_elements;
  const size_t SIZE = 8 * 8;
  const size_t bound2 = SIZE / num_elements;
  const size_t bound0 = num_elements / SIZE;
  int aligned = 0;
  size_t index3 = index3_offset, index2 = index2_offset, index1 = index1_offset;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((SIZE % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((num_elements % SIZE) == 0 &&
             (index3_offset * SIZE % num_elements) == 0 && !index2_offset &&
             !index1_offset) {
    index3 = index3_offset * SIZE / num_elements;
    aligned = -1;
  }
  const size_t index_offset =
      index3_offset * SIZE + index2_offset * 8 + index1_offset;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  if (len == 1) {
    VITIS_LOOP_2062_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      double buf_tmp =
          c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
               [(buffer_index % SIZE) % 8];
      int64_t raw_bits = *(int64_t *)&buf_tmp;
      merlin_set_range_512(&c[start], (j * data_width), data_width, raw_bits);
    }
    return;
  }
  size_t align = 0;
  if (head_align != 0) {
    VITIS_LOOP_2079_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      double buf_tmp =
          c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
               [(buffer_index % SIZE) % 8];
      int64_t raw_bits = *(int64_t *)&buf_tmp;
      merlin_set_range_512(&c[start], (j * data_width), data_width, raw_bits);
    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_3d.h", 2097, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_2109_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll

 double buf_tmp = c_buf[index3][index2][index1 * num_elements + j];
          int64_t raw_bits = *(int64_t *)&buf_tmp;
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        VITIS_LOOP_2119_4: for (j0 = 0; j0 < num_elements / 8; ++j0) {
#pragma HLS unroll
 VITIS_LOOP_2121_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            double buf_tmp =
                c_buf[index3][index2 * num_elements / 8 + j0][j1];
            int64_t raw_bits = *(int64_t *)&buf_tmp;
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; index3++; } else index2++;
      } else if (aligned == -1) {
        int j0, j1, j2;
        VITIS_LOOP_2132_6: for (j0 = 0; j0 < bound0; ++j0) {
          VITIS_LOOP_2133_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_2134_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * SIZE + j1 * 8 + j2;
              double buf_tmp = c_buf[index3 * bound0 + j0][j1][j2];
              int64_t raw_bits = *(int64_t *)&buf_tmp;
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
            }
          }
        }
        ++index3;
      }
    } else {
      VITIS_LOOP_2145_9: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        double buf_tmp =
            c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
                 [(buffer_index % SIZE) % 8];
        int64_t raw_bits = *(int64_t *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_2160_10: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      double buf_tmp =
          c_buf[buffer_index / SIZE][(buffer_index % SIZE) / 8]
               [(buffer_index % SIZE) % 8];
      int64_t raw_bits = *(int64_t *)&buf_tmp;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, raw_bits);
    }
  }
}
# 13 "././memcpy_512_3d.h" 2
# 8 "./__merlinkernel_bbgemm.c" 2





# 1 "././memcpy_512_4d.h" 1
# 12 "././memcpy_512_4d.h"
# 1 "././mars_wide_bus_4d.h" 1
# 1 "/usr/include/assert.h" 1 3 4
# 2 "././mars_wide_bus_4d.h" 2
# 397 "././mars_wide_bus_4d.h"
static void memcpy_wide_bus_read_char_4d_8_8_8_512(
    char a_buf[][8][8][8], size_t index4_offset,
    size_t index3_offset, size_t index2_offset, size_t index1_offset,
    merlin_uint_512 *a, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(char);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = index1_offset;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_4d.h", 448, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_4d.h", 449, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_451_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
           [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
           [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
               merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_474_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          a_buf[index4][index3][index2][index1 * num_elements + j] =
              merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        int bound = num_elements / 8;
        VITIS_LOOP_485_3: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_486_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            a_buf[index4][index3][index2 * bound + j0][j1] =
                merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int j0, j1, j2;
        int bound = num_elements / T_SIZE_3;
        VITIS_LOOP_498_5: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_499_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_500_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              a_buf[index4][index3 * bound + j0][j1][j2] =
                  merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int j0, j1, j2, j3;
        int bound = num_elements / T_SIZE;
        VITIS_LOOP_513_8: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_514_9: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_515_10: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_516_11: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                if (i == end - start - 1 && j > tail_align)
                  continue;
                a_buf[index4 * bound + j0][j1][j2][j3] =
                    merlin_get_range_512(&a[i + start], (j * data_width), data_width);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_529_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
             [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
             [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
                 merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_char_4d_8_8_8_512(
    merlin_uint_512 *c, char c_buf[][8][8][8],
    size_t index4_offset, size_t index3_offset, size_t index2_offset,
    size_t index1_offset, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(char);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = index1_offset;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;

  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_597_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_612_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_4d.h", 629, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_641_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 int val = c_buf[index4][index3][index2][index1 * num_elements + j];
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        int bound = num_elements / 8;
        VITIS_LOOP_650_4: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_651_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            int val = c_buf[index4][index3][index2 * bound + j0][j1];
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int j0, j1, j2;
        int bound = num_elements / T_SIZE_3;
        VITIS_LOOP_661_6: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_662_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_663_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              int val = c_buf[index4][index3 * bound + j0][j1][j2];
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int j0, j1, j2, j3;
        int bound = num_elements / T_SIZE;
        VITIS_LOOP_674_9: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_675_10: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_676_11: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_677_12: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                int val = c_buf[index4 * bound + j0][j1][j2][j3];
                merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_688_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_702_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
  }
}

static void memcpy_wide_bus_read_short_4d_8_8_8_512(
    short a_buf[][8][8][8], size_t index4_offset,
    size_t index3_offset, size_t index2_offset, size_t index1_offset,
    merlin_uint_512 *a, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(short);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = index1_offset;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_4d.h", 766, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_4d.h", 767, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_769_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
           [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
           [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
               merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_792_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          a_buf[index4][index3][index2][index1 * num_elements + j] =
              merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        int bound = num_elements / 8;
        VITIS_LOOP_803_3: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_804_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            a_buf[index4][index3][index2 * bound + j0][j1] =
                merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int j0, j1, j2;
        int bound = num_elements / T_SIZE_3;
        VITIS_LOOP_816_5: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_817_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_818_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              a_buf[index4][index3 * bound + j0][j1][j2] =
                  merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int j0, j1, j2, j3;
        int bound = num_elements / T_SIZE;
        VITIS_LOOP_831_8: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_832_9: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_833_10: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_834_11: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                if (i == end - start - 1 && j > tail_align)
                  continue;
                a_buf[index4 * bound + j0][j1][j2][j3] =
                    merlin_get_range_512(&a[i + start], (j * data_width), data_width);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_847_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
             [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
             [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
                 merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_short_4d_8_8_8_512(
    merlin_uint_512 *c, short c_buf[][8][8][8],
    size_t index4_offset, size_t index3_offset, size_t index2_offset,
    size_t index1_offset, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(short);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = index1_offset;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;

  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_915_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_930_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_4d.h", 947, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_959_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 int val = c_buf[index4][index3][index2][index1 * num_elements + j];
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        int bound = num_elements / 8;
        VITIS_LOOP_968_4: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_969_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            int val = c_buf[index4][index3][index2 * bound + j0][j1];
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int j0, j1, j2;
        int bound = num_elements / T_SIZE_3;
        VITIS_LOOP_979_6: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_980_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_981_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              int val = c_buf[index4][index3 * bound + j0][j1][j2];
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int j0, j1, j2, j3;
        int bound = num_elements / T_SIZE;
        VITIS_LOOP_992_9: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_993_10: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_994_11: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_995_12: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                int val = c_buf[index4 * bound + j0][j1][j2][j3];
                merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_1006_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_1020_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
  }
}

static void memcpy_wide_bus_read_int_4d_8_8_8_512(
    int a_buf[][8][8][8], size_t index4_offset,
    size_t index3_offset, size_t index2_offset, size_t index1_offset,
    merlin_uint_512 *a, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(int);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = index1_offset;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;

  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_4d.h", 1085, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_4d.h", 1086, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_1088_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
           [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
           [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
               merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1111_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          a_buf[index4][index3][index2][index1 * num_elements + j] =
              merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        int bound = num_elements / 8;
        VITIS_LOOP_1122_3: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1123_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            a_buf[index4][index3][index2 * bound + j0][j1] =
                merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int j0, j1, j2;
        int bound = num_elements / T_SIZE_3;
        VITIS_LOOP_1135_5: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1136_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1137_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              a_buf[index4][index3 * bound + j0][j1][j2] =
                  merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int j0, j1, j2, j3;
        int bound = num_elements / T_SIZE;
        VITIS_LOOP_1150_8: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1151_9: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1152_10: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_1153_11: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                if (i == end - start - 1 && j > tail_align)
                  continue;
                a_buf[index4 * bound + j0][j1][j2][j3] =
                    merlin_get_range_512(&a[i + start], (j * data_width), data_width);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_1166_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
             [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
             [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
                 merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_int_4d_8_8_8_512(
    merlin_uint_512 *c, int c_buf[][8][8][8],
    size_t index4_offset, size_t index3_offset, size_t index2_offset,
    size_t index1_offset, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(int);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  int aligned = 0;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_1233_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_1248_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_4d.h", 1265, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1277_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 int val = c_buf[index4][index3][index2][index1 * num_elements + j];
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        int bound = num_elements / 8;
        VITIS_LOOP_1286_4: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1287_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            int val = c_buf[index4][index3][index2 * bound + j0][j1];
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int j0, j1, j2;
        int bound = num_elements / T_SIZE_3;
        VITIS_LOOP_1297_6: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1298_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1299_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              int val = c_buf[index4][index3 * bound + j0][j1][j2];
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int j0, j1, j2, j3;
        int bound = num_elements / T_SIZE;
        VITIS_LOOP_1310_9: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1311_10: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1312_11: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_1313_12: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                int val = c_buf[index4 * bound + j0][j1][j2][j3];
                merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_1324_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_1338_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
  }
}

static void memcpy_wide_bus_read_long_4d_8_8_8_512(
    long a_buf[][8][8][8], size_t index4_offset,
    size_t index3_offset, size_t index2_offset, size_t index1_offset,
    merlin_uint_512 *a, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = index1_offset;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;

  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_4d.h", 1403, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_4d.h", 1404, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_1406_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
           [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
           [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
               merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1429_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          a_buf[index4][index3][index2][index1 * num_elements + j] =
              merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        int bound = num_elements / 8;
        VITIS_LOOP_1440_3: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1441_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            a_buf[index4][index3][index2 * bound + j0][j1] =
                merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int j0, j1, j2;
        int bound = num_elements / T_SIZE_3;
        VITIS_LOOP_1453_5: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1454_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1455_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              a_buf[index4][index3 * bound + j0][j1][j2] =
                  merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int j0, j1, j2, j3;
        int bound = num_elements / T_SIZE;
        VITIS_LOOP_1468_8: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1469_9: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1470_10: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_1471_11: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                if (i == end - start - 1 && j > tail_align)
                  continue;
                a_buf[index4 * bound + j0][j1][j2][j3] =
                    merlin_get_range_512(&a[i + start], (j * data_width), data_width);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_1484_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
             [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
             [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
                 merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_long_4d_8_8_8_512(
    merlin_uint_512 *c, long c_buf[][8][8][8],
    size_t index4_offset, size_t index3_offset, size_t index2_offset,
    size_t index1_offset, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  int aligned = 0;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_1551_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_1566_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_4d.h", 1583, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1595_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 long val = c_buf[index4][index3][index2][index1 * num_elements + j];
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        int bound = num_elements / 8;
        VITIS_LOOP_1604_4: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1605_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            long val = c_buf[index4][index3][index2 * bound + j0][j1];
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int j0, j1, j2;
        int bound = num_elements / T_SIZE_3;
        VITIS_LOOP_1615_6: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1616_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1617_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              long val = c_buf[index4][index3 * bound + j0][j1][j2];
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int j0, j1, j2, j3;
        int bound = num_elements / T_SIZE;
        VITIS_LOOP_1628_9: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1629_10: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1630_11: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_1631_12: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                long val = c_buf[index4 * bound + j0][j1][j2][j3];
                merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_1642_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_1656_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
  }
}

static void memcpy_wide_bus_read_long_long_4d_8_8_8_512(
    long long a_buf[][8][8][8], size_t index4_offset,
    size_t index3_offset, size_t index2_offset, size_t index1_offset,
    merlin_uint_512 *a, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(long long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = index1_offset;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;

  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_4d.h", 1721, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_4d.h", 1722, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_1724_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
           [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
           [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
               merlin_get_range_512(&a[start], (j * data_width), data_width);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1747_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          a_buf[index4][index3][index2][index1 * num_elements + j] =
              merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        int bound = num_elements / 8;
        VITIS_LOOP_1758_3: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1759_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            a_buf[index4][index3][index2 * bound + j0][j1] =
                merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int j0, j1, j2;
        int bound = num_elements / T_SIZE_3;
        VITIS_LOOP_1771_5: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1772_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1773_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              a_buf[index4][index3 * bound + j0][j1][j2] =
                  merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int j0, j1, j2, j3;
        int bound = num_elements / T_SIZE;
        VITIS_LOOP_1786_8: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1787_9: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1788_10: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_1789_11: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                if (i == end - start - 1 && j > tail_align)
                  continue;
                a_buf[index4 * bound + j0][j1][j2][j3] =
                    merlin_get_range_512(&a[i + start], (j * data_width), data_width);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_1802_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
             [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
             [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
                 merlin_get_range_512(&a[i + start], (j * data_width), data_width);
      }
    }
  }
}

static void memcpy_wide_bus_write_long_long_4d_8_8_8_512(

    merlin_uint_512 *c, long long c_buf[][8][8][8],
    size_t index4_offset, size_t index3_offset, size_t index2_offset,
    size_t index1_offset, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(long long);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  int aligned = 0;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  size_t align = 0;
  if (len == 1) {
    VITIS_LOOP_1870_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
    return;
  }
  if (head_align != 0) {
    VITIS_LOOP_1885_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      merlin_set_range_512(&c[start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_4d.h", 1902, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_1914_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 long long val =
              c_buf[index4][index3][index2][index1 * num_elements + j];
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        int bound = num_elements / 8;
        VITIS_LOOP_1924_4: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1925_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            long long val = c_buf[index4][index3][index2 * bound + j0][j1];
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int j0, j1, j2;
        int bound = num_elements / T_SIZE_3;
        VITIS_LOOP_1935_6: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1936_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1937_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              long long val = c_buf[index4][index3 * bound + j0][j1][j2];
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int j0, j1, j2, j3;
        int bound = num_elements / T_SIZE;
        VITIS_LOOP_1948_9: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_1949_10: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_1950_11: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_1951_12: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                long long val = c_buf[index4 * bound + j0][j1][j2][j3];
                merlin_set_range_512(&c[i + start], (j * data_width), data_width, val);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_1962_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_1976_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3] [((buffer_index % T_SIZE) % T_SIZE_3) / 8] [((buffer_index % T_SIZE) % T_SIZE_3) % 8]);



    }
  }
}

static void memcpy_wide_bus_read_float_4d_8_8_8_512(
    float a_buf[][8][8][8], size_t index4_offset,
    size_t index3_offset, size_t index2_offset, size_t index1_offset,
    merlin_uint_512 *a, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(float);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = index1_offset;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_4d.h", 2040, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_4d.h", 2041, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_2043_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      int raw_bits = merlin_get_range_512(&a[start], (j * data_width), data_width);
      a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
           [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
           [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
               *(float *)(&raw_bits);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_2067_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          a_buf[index4][index3][index2][index1 * num_elements + j] =
              *(float *)(&raw_bits);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        int bound = num_elements / 8;
        VITIS_LOOP_2079_3: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_2080_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            a_buf[index4][index3][index2 * bound + j0][j1] =
                *(float *)(&raw_bits);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int j0, j1, j2;
        int bound = num_elements / T_SIZE_3;
        VITIS_LOOP_2093_5: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_2094_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_2095_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
              a_buf[index4][index3 * bound + j0][j1][j2] =
                  *(float *)(&raw_bits);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int j0, j1, j2, j3;
        int bound = num_elements / T_SIZE;
        VITIS_LOOP_2109_8: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_2110_9: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_2111_10: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_2112_11: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                if (i == end - start - 1 && j > tail_align)
                  continue;
                int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
                a_buf[index4 * bound + j0][j1][j2][j3] = *(float *)(&raw_bits);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_2125_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        int raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
             [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
             [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
                 *(float *)(&raw_bits);
      }
    }
  }
}

static void memcpy_wide_bus_write_float_4d_8_8_8_512(
    merlin_uint_512 *c, float c_buf[][8][8][8],
    size_t index4_offset, size_t index3_offset, size_t index2_offset,
    size_t index1_offset, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(float);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  int aligned = 0;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = index1_offset;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  if (len == 1) {
    VITIS_LOOP_2192_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      float buf_tmp =
          c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
               [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
               [((buffer_index % T_SIZE) % T_SIZE_3) % 8];
      int raw_bits = *(int *)&buf_tmp;
      merlin_set_range_512(&c[start], (j * data_width), data_width, raw_bits);
    }
    return;
  }
  unsigned align = 0;
  if (head_align != 0) {
    VITIS_LOOP_2210_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      float buf_tmp =
          c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
               [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
               [((buffer_index % T_SIZE) % T_SIZE_3) % 8];
      int raw_bits = *(int *)&buf_tmp;
      merlin_set_range_512(&c[start], (j * data_width), data_width, raw_bits);
    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_4d.h", 2229, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_2241_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 float val = c_buf[index4][index3][index2][index1 * num_elements + j];
          int raw_bits = *(int *)(&val);
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int j0, j1;
        int bound = num_elements / 8;
        VITIS_LOOP_2251_4: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_2252_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            float val = c_buf[index4][index3][index2 * bound + j0][j1];
            int raw_bits = *(int *)(&val);
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int j0, j1, j2;
        int bound = num_elements / T_SIZE_3;
        VITIS_LOOP_2263_6: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_2264_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_2265_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              float val = c_buf[index4][index3 * bound + j0][j1][j2];
              int raw_bits = *(int *)(&val);
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int j0, j1, j2, j3;
        int bound = num_elements / T_SIZE;
        VITIS_LOOP_2277_9: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_2278_10: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_2279_11: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_2280_12: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                float val = c_buf[index4 * bound + j0][j1][j2][j3];
                int raw_bits = *(int *)(&val);
                merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_2292_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index = i * num_elements + j + num_elements - head_align;
        float buf_tmp =
            c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
                 [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
                 [((buffer_index % T_SIZE) % T_SIZE_3) % 8];
        int raw_bits = *(int *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements;
    pos += (num_elements - head_align) % num_elements + index_offset;
    VITIS_LOOP_2307_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      float buf_tmp =
          c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
               [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
               [((buffer_index % T_SIZE) % T_SIZE_3) % 8];
      int raw_bits = *(int *)&buf_tmp;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, raw_bits);
    }
  }
}

static void memcpy_wide_bus_read_double_4d_8_8_8_512(
    double a_buf[][8][8][8], size_t index4_offset,
    size_t index3_offset, size_t index2_offset, size_t index1_offset,
    merlin_uint_512 *a, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(double);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;

  size_t i, j;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = index1_offset;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  int aligned = 0;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;
  int len = end - start;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  const size_t max_trip = const_buf_size / num_elements + 2;
  ((void) sizeof ((len <= const_buf_size / num_elements + 2) ? 1 : 0), __extension__ ({ if (len <= const_buf_size / num_elements + 2) ; else __assert_fail ("len <= const_buf_size / num_elements + 2", "././mars_wide_bus_4d.h", 2373, __extension__ __PRETTY_FUNCTION__); }));
  ((void) sizeof ((len >= buf_size / num_elements) ? 1 : 0), __extension__ ({ if (len >= buf_size / num_elements) ; else __assert_fail ("len >= buf_size / num_elements", "././mars_wide_bus_4d.h", 2374, __extension__ __PRETTY_FUNCTION__); }));
  if (1 == len) {
    VITIS_LOOP_2376_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align || j > tail_align)
        continue;

      size_t buffer_index = j - head_align + index_offset;
      int64_t raw_bits = merlin_get_range_512(&a[start], (j * data_width), data_width);
      a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
           [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
           [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
               *(double *)(&raw_bits);
    }
    return;
  }
L2:
  for (i = 0; i < len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_2401_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == end - start - 1 && j > tail_align)
            continue;
          int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
          a_buf[index4][index3][index2][index1 * num_elements + j] =
              *(double *)(&raw_bits);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int64_t j0, j1;
        int64_t bound = num_elements / 8;
        VITIS_LOOP_2413_3: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_2414_4: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            if (i == end - start - 1 && j > tail_align)
              continue;
            int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
            a_buf[index4][index3][index2 * bound + j0][j1] =
                *(double *)(&raw_bits);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int64_t j0, j1, j2;
        int64_t bound = num_elements / T_SIZE_3;
        VITIS_LOOP_2427_5: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_2428_6: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_2429_7: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              if (i == end - start - 1 && j > tail_align)
                continue;
              int64_t raw_bits =
                  merlin_get_range_512(&a[i + start], (j * data_width), data_width);
              a_buf[index4][index3 * bound + j0][j1][j2] =
                  *(double *)(&raw_bits);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int64_t j0, j1, j2, j3;
        int64_t bound = num_elements / T_SIZE;
        VITIS_LOOP_2444_8: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_2445_9: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_2446_10: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_2447_11: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                if (i == end - start - 1 && j > tail_align)
                  continue;
                int64_t raw_bits =
                    merlin_get_range_512(&a[i + start], (j * data_width), data_width);
                a_buf[index4 * bound + j0][j1][j2][j3] = *(double *)(&raw_bits);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_2461_12: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (i == 0 && j < head_align)
          continue;
        if (i == end - start - 1 && j > tail_align)
          continue;
        size_t buffer_index = i * num_elements + j - head_align + index_offset;
        int64_t raw_bits = merlin_get_range_512(&a[i + start], (j * data_width), data_width);
        a_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
             [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
             [((buffer_index % T_SIZE) % T_SIZE_3) % 8] =
                 *(double *)(&raw_bits);
      }
    }
  }
}

static void memcpy_wide_bus_write_double_4d_8_8_8_512(
    merlin_uint_512 *c, double c_buf[][8][8][8],
    size_t index4_offset, size_t index3_offset, size_t index2_offset,
    size_t index1_offset, size_t offset_byte, size_t size_byte,
    const size_t const_buf_size) {
#pragma HLS inline
 const size_t data_width = sizeof(double);
  const size_t bus_width = 512 / 8;
  const size_t num_elements = bus_width / data_width;
  size_t buf_size = size_byte / data_width;
  size_t offset = offset_byte / data_width;
  size_t head_align = offset & (num_elements - 1);
  size_t new_offset = offset + buf_size;
  size_t tail_align = (new_offset - 1) & (num_elements - 1);
  size_t start = offset / num_elements;
  size_t end = (offset + buf_size + num_elements - 1) / num_elements;
  size_t len = end - start;
  size_t i, j;
  const size_t T_SIZE = 8 * 8 * 8;
  const size_t T_SIZE_3 = 8 * 8;
  const size_t bound1 = 8 / num_elements;
  const size_t bound2 = T_SIZE_3 / num_elements;
  const size_t bound3 = T_SIZE / num_elements;
  int aligned = 0;
  size_t index4 = index4_offset, index3 = index3_offset, index2 = index2_offset,
         index1 = index1_offset;
  if ((8 % num_elements) == 0 && (index1_offset % num_elements) == 0) {
    aligned = 1;
    index1 = index1_offset / num_elements;
  } else if ((T_SIZE_3 % num_elements) == 0 && (num_elements % 8) == 0 &&
             ((index2_offset * 8) % num_elements) == 0 && !index1_offset) {
    aligned = 2;
    index2 = index2_offset * 8 / num_elements;
  } else if ((T_SIZE % num_elements) == 0 && (num_elements % T_SIZE_3) == 0 &&
             ((index3_offset * T_SIZE_3) % num_elements) == 0 &&
             !index1_offset && !index2_offset) {
    aligned = 3;
    index3 = index3_offset * T_SIZE_3 / num_elements;
  } else if ((num_elements % T_SIZE) == 0 &&
             (index4_offset * T_SIZE % num_elements) == 0 && !index3_offset &&
             !index2_offset && !index1_offset) {
    aligned = -1;
    index4 = index4_offset * T_SIZE / num_elements;
  }
  const size_t index_offset = T_SIZE * index4_offset +
                              T_SIZE_3 * index3_offset +
                              8 * index2_offset + index1_offset;
  if (head_align == 0)
    len = (buf_size + num_elements - 1) / num_elements;
  if (len == 1) {
    VITIS_LOOP_2528_1: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      if (j > tail_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      double buf_tmp =
          c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
               [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
               [((buffer_index % T_SIZE) % T_SIZE_3) % 8];
      int64_t raw_bits = *(int64_t *)&buf_tmp;
      merlin_set_range_512(&c[start], (j * data_width), data_width, raw_bits);
    }
    return;
  }
  size_t align = 0;
  if (head_align != 0) {
    VITIS_LOOP_2546_2: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j < head_align)
        continue;
      size_t buffer_index = j - head_align + index_offset;
      double buf_tmp =
          c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
               [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
               [((buffer_index % T_SIZE) % T_SIZE_3) % 8];
      int64_t raw_bits = *(int64_t *)&buf_tmp;
      merlin_set_range_512(&c[start], (j * data_width), data_width, raw_bits);
    }
    start++;
    align++;
  }
  if (tail_align != (num_elements - 1))
    align++;
  int burst_len = len - align;
  const size_t max_trip = const_buf_size / num_elements;
  ((void) sizeof ((burst_len <= const_buf_size / num_elements) ? 1 : 0), __extension__ ({ if (burst_len <= const_buf_size / num_elements) ; else __assert_fail ("burst_len <= const_buf_size / num_elements", "././mars_wide_bus_4d.h", 2565, __extension__ __PRETTY_FUNCTION__); }));
L3:
  for (i = 0; i < burst_len; ++i) {
#pragma HLS loop_tripcount max = max_trip



#pragma HLS pipeline


 if (head_align == 0 && aligned) {
      if (aligned == 1) {
        VITIS_LOOP_2577_3: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 double val = c_buf[index4][index3][index2][index1 * num_elements + j];
          int64_t raw_bits = *(int64_t *)(&val);
          merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
        }
        if (index1 == bound1 - 1) { index1 = 0; if (index2 == 8 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else ++index3; } else ++index2; } else index1++;
      } else if (aligned == 2) {
        int64_t j0, j1;
        int64_t bound = num_elements / 8;
        VITIS_LOOP_2587_4: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_2588_5: for (j1 = 0; j1 < 8; ++j1) {
            j = j0 * 8 + j1;
            double val = c_buf[index4][index3][index2 * bound + j0][j1];
            int64_t raw_bits = *(int64_t *)(&val);
            merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
          }
        }
        if (index2 == bound2 - 1) { index2 = 0; if (index3 == 8 - 1) { index3 = 0; ++index4; } else index3++; } else ++index2;
      } else if (aligned == 3) {
        int64_t j0, j1, j2;
        int64_t bound = num_elements / T_SIZE_3;
        VITIS_LOOP_2599_6: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_2600_7: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_2601_8: for (j2 = 0; j2 < 8; ++j2) {
              j = j0 * T_SIZE_3 + j1 * 8 + j2;
              double val = c_buf[index4][index3 * bound + j0][j1][j2];
              int64_t raw_bits = *(int64_t *)(&val);
              merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
            }
          }
        }
        if (index3 == bound3 - 1) { index3 = 0; ++index4; } else ++index3;
      } else if (aligned == -1) {
        int64_t j0, j1, j2, j3;
        int64_t bound = num_elements / T_SIZE;
        VITIS_LOOP_2613_9: for (j0 = 0; j0 < bound; ++j0) {
          VITIS_LOOP_2614_10: for (j1 = 0; j1 < 8; ++j1) {
            VITIS_LOOP_2615_11: for (j2 = 0; j2 < 8; ++j2) {
              VITIS_LOOP_2616_12: for (j3 = 0; j3 < 8; ++j3) {
                j = j0 * T_SIZE + j1 * T_SIZE_3 + j2 * 8 + j3;
                double val = c_buf[index4 * bound + j0][j1][j2][j3];
                int64_t raw_bits = *(int64_t *)(&val);
                merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
              }
            }
          }
        }
        ++index4;
      }
    } else {
      VITIS_LOOP_2628_13: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 size_t buffer_index =
            i * num_elements + j + num_elements - head_align + index_offset;
        double buf_tmp =
            c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
                 [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
                 [((buffer_index % T_SIZE) % T_SIZE_3) % 8];
        int64_t raw_bits = *(int64_t *)&buf_tmp;
        merlin_set_range_512(&c[i + start], (j * data_width), data_width, raw_bits);
      }
    }
  }
  if (tail_align != num_elements - 1) {
    size_t pos = (len - align) * num_elements + index_offset;
    pos += (num_elements - head_align) % num_elements;
    VITIS_LOOP_2644_14: for (j = 0; j < num_elements; ++j) {
#pragma HLS unroll
 if (j > tail_align)
        continue;
      size_t buffer_index = pos + j;
      double buf_tmp =
          c_buf[buffer_index / T_SIZE][(buffer_index % T_SIZE) / T_SIZE_3]
               [((buffer_index % T_SIZE) % T_SIZE_3) / 8]
               [((buffer_index % T_SIZE) % T_SIZE_3) % 8];
      int64_t raw_bits = *(int64_t *)&buf_tmp;
      merlin_set_range_512(&c[end - 1], (j * data_width), data_width, raw_bits);
    }
  }
}
# 13 "././memcpy_512_4d.h" 2
# 14 "./__merlinkernel_bbgemm.c" 2



# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/string.h" 2 3 4






# 1 "/opt/tools/xilinx/Vitis_HLS/2021.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 34 "/usr/include/string.h" 2 3 4








extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 90 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 121 "/usr/include/string.h" 3 4
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));




# 1 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 3 4
struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;
# 23 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 2 3 4

typedef __locale_t locale_t;
# 153 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));


extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));





extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 225 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 252 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 272 "/usr/include/string.h" 3 4
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 302 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 329 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));



extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
# 384 "/usr/include/string.h" 3 4
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
# 409 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
# 427 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, locale_t __l) __attribute__ ((__nothrow__ ));




# 1 "/usr/include/strings.h" 1 3 4
# 23 "/usr/include/strings.h" 3 4
# 1 "/opt/tools/xilinx/Vitis_HLS/2021.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h" 1 3 4
# 24 "/usr/include/strings.h" 2 3 4
# 34 "/usr/include/strings.h" 3 4
extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bcopy (const void *__src, void *__dest, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
# 68 "/usr/include/strings.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 96 "/usr/include/strings.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern int ffs (int __i) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));





extern int ffsl (long int __l) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));



extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));






extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));



extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));
# 432 "/usr/include/string.h" 2 3 4



extern void explicit_bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ ));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
# 18 "./__merlinkernel_bbgemm.c" 2

# 1 "././merlin_type_define.h" 1
# 20 "./__merlinkernel_bbgemm.c" 2








         __attribute__((sdx_kernel("bbgemm", 0))) void bbgemm(merlin_uint_512 m1[512],merlin_uint_512 m2[512],merlin_uint_512 prod[512])
{_ssdm_SpecArrayDimSize(m1, 512);_ssdm_SpecArrayDimSize(m2, 512);_ssdm_SpecArrayDimSize(prod, 512);
#pragma HLSDIRECTIVE TOP name=bbgemm
# 29 "./__merlinkernel_bbgemm.c"


#pragma HLS INTERFACE m_axi port=m1 offset=slave depth=512 bundle=merlin_gmem_bbgemm_512_0

#pragma HLS INTERFACE m_axi port=m2 offset=slave depth=512 bundle=merlin_gmem_bbgemm_512_1

#pragma HLS INTERFACE m_axi port=prod offset=slave depth=512 bundle=merlin_gmem_bbgemm_512_prod

#pragma HLS INTERFACE s_axilite port=m1 bundle=control

#pragma HLS INTERFACE s_axilite port=m2 bundle=control

#pragma HLS INTERFACE s_axilite port=prod bundle=control

#pragma HLS INTERFACE s_axilite port=return bundle=control

#pragma HLS DATA_PACK VARIABLE=prod

#pragma HLS DATA_PACK VARIABLE=m2

#pragma HLS DATA_PACK VARIABLE=m1

#pragma ACCEL interface variable=prod depth=4096 max_depth=4096

#pragma ACCEL interface variable=m2 depth=4096 max_depth=4096

#pragma ACCEL interface variable=m1 depth=4096 max_depth=4096
 double prod_buf[64][8][8];

#pragma HLS array_partition variable=prod_buf complete dim=3

#pragma HLS array_partition variable=prod_buf complete dim=1
 double m2_buf[8][8][8][8];

#pragma HLS array_partition variable=m2_buf complete dim=4

#pragma HLS array_partition variable=m2_buf complete dim=2
 double m1_buf[64][8][8];

#pragma HLS array_partition variable=m1_buf complete dim=3

#pragma HLS array_partition variable=m1_buf complete dim=1
 int i;
  int k;
  int j;
  int jj;
  int kk;
  int i_row;
  int k_row;
  double temp_x;
  double mul;

  memcpy_wide_bus_read_double_3d_8_8_512(m1_buf,0,0,0,(merlin_uint_512 *)m1,(0 * 8),sizeof(double ) * ((unsigned long )4096),4096L);

  memcpy_wide_bus_read_double_4d_8_8_8_512(m2_buf,0,0,0,0,(merlin_uint_512 *)m2,(0 * 8),sizeof(double ) * ((unsigned long )4096),4096L);

  memcpy_wide_bus_read_double_3d_8_8_512(prod_buf,0,0,0,(merlin_uint_512 *)prod,(0 * 8),sizeof(double ) * ((unsigned long )4096),4096L);
  int _in_jj_0;
  loopjj:
{

    merlinL4:

    for (jj = 0; jj <= 7; jj++)






{
      _in_jj_0 = ((int )(((long )0) + 8L * ((long )jj)));


      merlinL3:


      for (kk = 0; kk <= 7; kk++)






{

#pragma HLS pipeline
 int _in_kk = (int )(((long )0) + 8L * ((long )kk));

        merlinL2:

        for (i = 0; i < 64; ++i)





{

#pragma HLS unroll

 merlinL1:

          for (k = 0; k < 8; ++k)




{

#pragma HLS unroll
 i_row = i * 64;
            k_row = (k + _in_kk) * 64;
            temp_x = m1_buf[i][kk][k];

            merlinL0:

            for (j = 0; j < 8; ++j)


{

#pragma HLS unroll
 mul = temp_x * m2_buf[kk][k][jj][j];
              prod_buf[i][jj][j] += mul;
            }
          }
        }
      }
      kk = ((int )(((long )56) + 8L));
    }

    memcpy_wide_bus_write_double_3d_8_8_512((merlin_uint_512 *)prod,prod_buf,0,0,0,(8 * 0),sizeof(double ) * ((unsigned long )4096),4096L);
  }
  jj = ((int )(((long )56) + 8L));
}

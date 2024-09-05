#include "memcpy_512.h"
#define LARGE_BUS 512
#ifdef __cplusplus
#define MARS_WIDE_BUS_TYPE ap_uint<LARGE_BUS> 
#define c_get_range(tmp, x, y) tmp((y + x) * 8 - 1, y * 8)
#define c_set_range(tmp, x, y, val) tmp((y + x) * 8 - 1, y * 8) = val
#else
#define MARS_WIDE_BUS_TYPE merlin_uint_512
#define c_get_range(tmp, x, y) merlin_get_range_512(&tmp, y, x)
#define c_set_range(tmp, x, y, val) merlin_set_range_512(&tmp, y, x, val)
#endif
#include "mars_wide_bus_3d.h"
#undef LARGE_BUS
#undef MARS_WIDE_BUS_TYPE
#undef c_get_range
#undef c_set_range

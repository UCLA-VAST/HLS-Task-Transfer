; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/remap_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [8 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_Mat_4_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.1] }
%class.ap_uint.1 = type { [4 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.2 = type { [9 x i8] }
%class.ap_uint.3 = type { [3 x i8] }
%class.ap_uint.4 = type { [2 x i8] }
%class.ap_uint.5 = type { [6 x i8] }
%class.ap_ufixed = type { [1 x i8] }
%class.ap_ufixed.6 = type { [2 x i8] }
%class.ap_fixed = type { [2 x i8] }
%class.ap_fixed.7 = type { [2 x i8] }
%class.ap_fixed.8 = type { [6 x i8] }
%class.ap_fixed.9 = type { [5 x i8] }
%class.ap_fixed.10 = type { [3 x i8] }
%class.ap_fixed.12 = type { [8 x i8] }
%class.ap_fixed.14 = type { [5 x i8] }
%class.ap_fixed.13 = type { [3 x i8] }
%class.ap_fixed.11 = type { [10 x i8] }

@.str = private unnamed_addr constant [13 x i8] c"rows <= ROWS\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"xf_remap.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL172p_ZN2xf9xFRemapLIILi0ELi0ELi1ELi4ELi8ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_S0_R19xf_Mat_4_256_256_1_S2_tt = private unnamed_addr constant [330 x i8] c"void p_ZN2xf9xFRemapLIILi0ELi0ELi1ELi4ELi8ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEtt_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, struct xf_Mat_4_256_256_1_ &, struct xf_Mat_4_256_256_1_ &, unsigned short, unsigned short)\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"cols <= COLS\00", align 1
@.str3 = private unnamed_addr constant [27 x i8] c"k00 + k01 + k10 + k11 == 1\00", align 1
@.str4 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1P19xf_Mat_4_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1(struct xf_Mat_4_256_256_1_ *, int, int, bool)\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z11remap_accelP7ap_uintILi64EES1_iiS1_S1_(%class.ap_uint* %img_inp, %class.ap_uint* %img_out, i32 %rows, i32 %cols, %class.ap_uint* %img_mapx, %class.ap_uint* %img_mapy) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %class.ap_uint*, align 8
  %6 = alloca %class.ap_uint*, align 8
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPPC1 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %mapx_mat = alloca %struct.xf_Mat_4_256_256_1_, align 4
  %mapy_mat = alloca %struct.xf_Mat_4_256_256_1_, align 4
  store %class.ap_uint* %img_inp, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_out, %class.ap_uint** %2, align 8
  store i32 %rows, i32* %3, align 4
  store i32 %cols, i32* %4, align 4
  store %class.ap_uint* %img_mapx, %class.ap_uint** %5, align 8
  store %class.ap_uint* %img_mapy, %class.ap_uint** %6, align 8
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat)
  %7 = load i32* %3, align 4
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32* %4, align 4
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %out_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %out_mat)
  %11 = load i32* %3, align 4
  %12 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32* %4, align 4
  %14 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  call void @_ZN19xf_Mat_4_256_256_1_C1Ev(%struct.xf_Mat_4_256_256_1_* %mapx_mat)
  call void @_ZL33p_ZN2xf16Mat_4_256_256_1_C2IEEv_1P19xf_Mat_4_256_256_1_(%struct.xf_Mat_4_256_256_1_* %mapx_mat)
  %15 = load i32* %3, align 4
  %16 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %mapx_mat, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32* %4, align 4
  %18 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %mapx_mat, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  call void @_ZN19xf_Mat_4_256_256_1_C1Ev(%struct.xf_Mat_4_256_256_1_* %mapy_mat)
  call void @_ZL33p_ZN2xf16Mat_4_256_256_1_C2IEEv_1P19xf_Mat_4_256_256_1_(%struct.xf_Mat_4_256_256_1_* %mapy_mat)
  %19 = load i32* %3, align 4
  %20 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %mapy_mat, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32* %4, align 4
  %22 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %mapy_mat, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %class.ap_uint** %1, align 8
  call void @_ZL93p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_0_256_256_1_(%class.ap_uint* %23, %struct.xf_Mat_0_256_256_1_* %in_mat)
  %24 = load %class.ap_uint** %5, align 8
  call void @_ZL93p_ZN2xf11Array2xfMatILi64ELi4ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi4ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_4_256_256_1_(%class.ap_uint* %24, %struct.xf_Mat_4_256_256_1_* %mapx_mat)
  %25 = load %class.ap_uint** %6, align 8
  call void @_ZL93p_ZN2xf11Array2xfMatILi64ELi4ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi4ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_4_256_256_1_(%class.ap_uint* %25, %struct.xf_Mat_4_256_256_1_* %mapy_mat)
  call void @_ZL166p_ZN2xf5remapILi8ELi1ELi0ELi4ELi0ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_R19xf_Mat_4_256_256_1_S2_(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_0_256_256_1_* %out_mat, %struct.xf_Mat_4_256_256_1_* %mapx_mat, %struct.xf_Mat_4_256_256_1_* %mapy_mat)
  %26 = load %class.ap_uint** %2, align 8
  call void @_ZL93p_ZN2xf11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi64EE(%struct.xf_Mat_0_256_256_1_* %out_mat, %class.ap_uint* %26)
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  store %struct.xf_Mat_0_256_256_1_* %this, %struct.xf_Mat_0_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_0_256_256_1_** %1
  call void @_ZN19xf_Mat_0_256_256_1_C2Ev(%struct.xf_Mat_0_256_256_1_* %2)
  ret void
}

define internal void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %this_) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  call void @_ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib(%struct.xf_Mat_0_256_256_1_* %2, i32 256, i32 256, i1 zeroext true)
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_4_256_256_1_C1Ev(%struct.xf_Mat_4_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  store %struct.xf_Mat_4_256_256_1_* %this, %struct.xf_Mat_4_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_4_256_256_1_** %1
  call void @_ZN19xf_Mat_4_256_256_1_C2Ev(%struct.xf_Mat_4_256_256_1_* %2)
  ret void
}

define internal void @_ZL33p_ZN2xf16Mat_4_256_256_1_C2IEEv_1P19xf_Mat_4_256_256_1_(%struct.xf_Mat_4_256_256_1_* %this_) uwtable {
  %1 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  store %struct.xf_Mat_4_256_256_1_* %this_, %struct.xf_Mat_4_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_4_256_256_1_** %1, align 8
  call void @_ZL38p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1P19xf_Mat_4_256_256_1_iib(%struct.xf_Mat_4_256_256_1_* %2, i32 256, i32 256, i1 zeroext true)
  ret void
}

define internal void @_ZL93p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_0_256_256_1_(%class.ap_uint* %srcPtr, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %class.ap_uint* %srcPtr, %class.ap_uint** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %dstMat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  %3 = load %class.ap_uint** %1, align 8
  %4 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  call void @_ZL106p_ZN2xf11accel_utils11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi64EER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %au, %class.ap_uint* %3, %struct.xf_Mat_0_256_256_1_* %4)
  ret void
}

define internal void @_ZL93p_ZN2xf11Array2xfMatILi64ELi4ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi4ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_4_256_256_1_(%class.ap_uint* %srcPtr, %struct.xf_Mat_4_256_256_1_* %dstMat) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %class.ap_uint* %srcPtr, %class.ap_uint** %1, align 8
  store %struct.xf_Mat_4_256_256_1_* %dstMat, %struct.xf_Mat_4_256_256_1_** %2, align 8
  %3 = load %class.ap_uint** %1, align 8
  %4 = load %struct.xf_Mat_4_256_256_1_** %2, align 8
  call void @_ZL106p_ZN2xf11accel_utils11Array2xfMatILi64ELi4ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi4ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi64EER19xf_Mat_4_256_256_1_(%struct.xf_accel_utils* %au, %class.ap_uint* %3, %struct.xf_Mat_4_256_256_1_* %4)
  ret void
}

define internal void @_ZL166p_ZN2xf5remapILi8ELi1ELi0ELi4ELi0ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_R19xf_Mat_4_256_256_1_S2_(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_remapped_mat, %struct.xf_Mat_4_256_256_1_* %_mapx_mat, %struct.xf_Mat_4_256_256_1_* %_mapy_mat) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %4 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %depth_est = alloca i32, align 4
  %rows = alloca i16, align 2
  %cols = alloca i16, align 2
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_remapped_mat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Mat_4_256_256_1_* %_mapx_mat, %struct.xf_Mat_4_256_256_1_** %3, align 8
  store %struct.xf_Mat_4_256_256_1_* %_mapy_mat, %struct.xf_Mat_4_256_256_1_** %4, align 8
  %5 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %6 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %5, i32 0, i32 2
  %7 = load i32* %6, align 4
  %8 = mul nsw i32 8, %7
  store i32 %8, i32* %depth_est, align 4
  %9 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %rows, align 2
  %13 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %14 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %13, i32 0, i32 2
  %15 = load i32* %14, align 4
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %cols, align 2
  %17 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %18 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %19 = load %struct.xf_Mat_4_256_256_1_** %3, align 8
  %20 = load %struct.xf_Mat_4_256_256_1_** %4, align 8
  %21 = load i16* %rows, align 2
  %22 = load i16* %cols, align 2
  call void @_ZL172p_ZN2xf9xFRemapLIILi0ELi0ELi1ELi4ELi8ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_S0_R19xf_Mat_4_256_256_1_S2_tt(%struct.xf_Mat_0_256_256_1_* %17, %struct.xf_Mat_0_256_256_1_* %18, %struct.xf_Mat_4_256_256_1_* %19, %struct.xf_Mat_4_256_256_1_* %20, i16 zeroext %21, i16 zeroext %22)
  ret void
}

define internal void @_ZL93p_ZN2xf11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi64EE(%struct.xf_Mat_0_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %struct.xf_Mat_0_256_256_1_* %srcMat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %2, align 8
  %3 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %4 = load %class.ap_uint** %2, align 8
  call void @_ZL106p_ZN2xf11accel_utils11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_P7ap_uintILi64EE(%struct.xf_accel_utils* %au, %struct.xf_Mat_0_256_256_1_* %3, %class.ap_uint* %4)
  ret void
}

define internal void @_ZL106p_ZN2xf11accel_utils11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_P7ap_uintILi64EE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_0_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %srcMat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %3, align 8
  store i32 8, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi64EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  call void @_ZL125p_ZN2xf11accel_utils13xfMat2hlsStrmILi64ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi64EEE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_RN3hls6streamI7ap_uintILi64EEEE(%struct.xf_accel_utils* %10, %struct.xf_Mat_0_256_256_1_* %11, %"class.hls::stream"* %strm)
  %12 = load %struct.xf_accel_utils** %1, align 8
  %13 = load %class.ap_uint** %3, align 8
  %14 = load i32* %rows, align 4
  %15 = load i32* %cols, align 4
  call void @_ZL119p_ZN2xf11accel_utils13hlsStrm2ArrayILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEER6streamI7ap_uintILi64EEEP7ap_uintILi64EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi64EEEEPS4_ii(%struct.xf_accel_utils* %12, %"class.hls::stream"* %strm, %class.ap_uint* %13, i32 %14, i32 %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi64EEEC1Ev(%"class.hls::stream"*)

define internal void @_ZL125p_ZN2xf11accel_utils13xfMat2hlsStrmILi64ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi64EEE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_RN3hls6streamI7ap_uintILi64EEEE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_0_256_256_1_* %srcMat, %"class.hls::stream"* %dstStrm) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %"class.hls::stream"*, align 8
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %bits_to_add = alloca i32, align 4
  %N_size = alloca i32, align 4
  %r = alloca %class.ap_uint, align 1
  %in = alloca %class.ap_uint.0, align 1
  %i = alloca i32, align 4
  %4 = alloca %class.ap_uint.0, align 1
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %srcMat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %"class.hls::stream"* %dstStrm, %"class.hls::stream"** %3, align 8
  %5 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %6 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  store i32 %7, i32* %rows, align 4
  %8 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %8, i32 0, i32 2
  %10 = load i32* %9, align 4
  store i32 %10, i32* %cols, align 4
  %11 = load i32* %rows, align 4
  %12 = load i32* %cols, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sdiv i32 %13, 1
  store i32 %14, i32* %loop_count, align 4
  store i32 64, i32* %bits_to_add, align 4
  store i32 8, i32* %N_size, align 4
  call void @_ZN7ap_uintILi64EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %in)
  br label %15

; <label>:15                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %16

; <label>:16                                      ; preds = %64, %15
  %17 = load i32* %i, align 4
  %18 = load i32* %loop_count, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %67

; <label>:20                                      ; preds = %16
  %21 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %22 = load i32* %i, align 4
  %23 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %21, i32 %22)
  %24 = getelementptr %class.ap_uint.0* %4, i32 0, i32 0
  %25 = bitcast [1 x i8]* %24 to i8*
  store i8 %23, i8* %25, align 1
  %26 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %in, %class.ap_uint.0* %4)
  %27 = load i32* %bits_to_add, align 4
  %28 = icmp sle i32 %27, 8
  br i1 %28, label %29, label %52

; <label>:29                                      ; preds = %20
  %30 = load i32* %bits_to_add, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %in, i32 %31, i32 0)
  %33 = load i64* %32
  %34 = load i32* %bits_to_add, align 4
  %35 = sub nsw i32 64, %34
  %36 = call i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint* %r, i32 63, i32 %35)
  store i64 %33, i64* %36
  %37 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi64EEE5writeERKS2_(%"class.hls::stream"* %37, %class.ap_uint* %r)
  %38 = load i32* %bits_to_add, align 4
  %39 = icmp ne i32 %38, 8
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %29
  %41 = load i32* %bits_to_add, align 4
  %42 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %in, i32 7, i32 %41)
  %43 = load i64* %42
  %44 = load i32* %bits_to_add, align 4
  %45 = sub nsw i32 8, %44
  %46 = sub nsw i32 %45, 1
  %47 = call i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint* %r, i32 %46, i32 0)
  store i64 %43, i64* %47
  br label %48

; <label>:48                                      ; preds = %40, %29
  %49 = load i32* %bits_to_add, align 4
  %50 = sub nsw i32 8, %49
  %51 = sub nsw i32 64, %50
  store i32 %51, i32* %bits_to_add, align 4
  br label %63

; <label>:52                                      ; preds = %20
  %53 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %in)
  %54 = load i32* %bits_to_add, align 4
  %55 = sub nsw i32 64, %54
  %56 = add nsw i32 %55, 8
  %57 = sub nsw i32 %56, 1
  %58 = load i32* %bits_to_add, align 4
  %59 = sub nsw i32 64, %58
  %60 = call i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint* %r, i32 %57, i32 %59)
  store i64 %53, i64* %60
  %61 = load i32* %bits_to_add, align 4
  %62 = sub nsw i32 %61, 8
  store i32 %62, i32* %bits_to_add, align 4
  br label %63

; <label>:63                                      ; preds = %52, %48
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load i32* %i, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %i, align 4
  br label %16

; <label>:67                                      ; preds = %16
  %68 = load i32* %bits_to_add, align 4
  %69 = icmp ne i32 %68, 64
  br i1 %69, label %70, label %72

; <label>:70                                      ; preds = %67
  %71 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi64EEE5writeERKS2_(%"class.hls::stream"* %71, %class.ap_uint* %r)
  br label %72

; <label>:72                                      ; preds = %70, %67
  ret void
}

define internal void @_ZL119p_ZN2xf11accel_utils13hlsStrm2ArrayILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEER6streamI7ap_uintILi64EEEP7ap_uintILi64EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi64EEEEPS4_ii(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %class.ap_uint* %dstPtr, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %"class.hls::stream"*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pixel_width = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %i = alloca i32, align 4
  %6 = alloca %class.ap_uint, align 1
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %"class.hls::stream"* %srcStrm, %"class.hls::stream"** %2, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %3, align 8
  store i32 %rows, i32* %4, align 4
  store i32 %cols, i32* %5, align 4
  store i32 8, i32* %pixel_width, align 4
  %7 = load i32* %4, align 4
  %8 = load i32* %5, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32* %pixel_width, align 4
  %11 = mul nsw i32 %9, %10
  %12 = add nsw i32 %11, 64
  %13 = sub nsw i32 %12, 1
  %14 = sdiv i32 %13, 64
  store i32 %14, i32* %loop_count, align 4
  store i32 0, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %29, %0
  %16 = load i32* %i, align 4
  %17 = load i32* %loop_count, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

; <label>:19                                      ; preds = %15
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = load %class.ap_uint** %3, align 8
  %23 = getelementptr inbounds %class.ap_uint* %22, i64 %21
  %24 = load %"class.hls::stream"** %2, align 8
  %25 = call i64 @_ZN3hls6streamI7ap_uintILi64EEE4readEv(%"class.hls::stream"* %24)
  %26 = getelementptr %class.ap_uint* %6, i32 0, i32 0
  %27 = bitcast [8 x i8]* %26 to i64*
  store i64 %25, i64* %27, align 1
  %28 = call %class.ap_uint* @_ZN7ap_uintILi64EEaSERKS0_(%class.ap_uint* %23, %class.ap_uint* %6)
  br label %29

; <label>:29                                      ; preds = %19
  %30 = load i32* %i, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %i, align 4
  br label %15

; <label>:32                                      ; preds = %15
  ret void
}

declare %class.ap_uint* @_ZN7ap_uintILi64EEaSERKS0_(%class.ap_uint*, %class.ap_uint*)

declare i64 @_ZN3hls6streamI7ap_uintILi64EEE4readEv(%"class.hls::stream"*)

declare void @_ZN7ap_uintILi64EEC1Ev(%class.ap_uint*)

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0*, %class.ap_uint.0*)

define internal i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.0, align 1
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %6, i32 0, i32 4
  %8 = getelementptr inbounds [65536 x %class.ap_uint.0]* %7, i32 0, i64 %5
  %9 = bitcast %class.ap_uint.0* %1 to i8*
  %10 = bitcast %class.ap_uint.0* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 1, i32 1, i1 false)
  %11 = getelementptr %class.ap_uint.0* %1, i32 0, i32 0
  %12 = bitcast [1 x i8]* %11 to i8*
  %13 = load i8* %12, align 1
  ret i8 %13
}

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0*, i32, i32)

declare i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi64EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

declare i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define internal void @_ZL172p_ZN2xf9xFRemapLIILi0ELi0ELi1ELi4ELi8ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_S0_R19xf_Mat_4_256_256_1_S2_tt(%struct.xf_Mat_0_256_256_1_* %src, %struct.xf_Mat_0_256_256_1_* %dst, %struct.xf_Mat_4_256_256_1_* %mapx, %struct.xf_Mat_4_256_256_1_* %mapy, i16 zeroext %rows, i16 zeroext %cols) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %4 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %buf = alloca [5 x [2 x [129 x [2 x %class.ap_uint.0]]]], align 16
  %s = alloca %class.ap_uint.0, align 1
  %bufUram = alloca [1 x [4 x [128 x %class.ap_uint.2]]], align 16
  %lineBuf = alloca [1 x [128 x %class.ap_uint.3]], align 16
  %mx = alloca %class.ap_uint.1, align 1
  %my = alloca %class.ap_uint.1, align 1
  %read_pointer_src = alloca i32, align 4
  %read_pointer_map = alloca i32, align 4
  %write_pointer = alloca i32, align 4
  %ishift = alloca i32, align 4
  %r1 = alloca [8 x i32], align 16
  %r2 = alloca [8 x i32], align 16
  %row_tripcount = alloca i32, align 4
  %store_col = alloca i8, align 1
  %store_row = alloca i8, align 1
  %temppix = alloca [1 x %class.ap_uint.4], align 1
  %pixval = alloca [1 x %class.ap_uint.3], align 1
  %pixval_2 = alloca [1 x %class.ap_uint.5], align 1
  %prev_pixval = alloca [1 x %class.ap_uint.3], align 1
  %tempbuf = alloca [1 x %class.ap_uint.2], align 1
  %pl = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %7 = alloca %class.ap_uint.0, align 1
  %_l_pl = alloca i32, align 4
  %_l_bit = alloca i32, align 4
  %x_fl = alloca float, align 4
  %y_fl = alloca float, align 4
  %x_fix = alloca i32, align 4
  %y_fix = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x_frac = alloca i32, align 4
  %y_frac = alloca i32, align 4
  %ynext = alloca i32, align 4
  %iu = alloca %class.ap_ufixed, align 1
  %iv = alloca %class.ap_ufixed, align 1
  %in_range = alloca i8, align 1
  %xa0 = alloca i32, align 4
  %xa1 = alloca i32, align 4
  %ya0 = alloca i32, align 4
  %ya1 = alloca i32, align 4
  %d = alloca %class.ap_uint.0, align 1
  %ch = alloca i32, align 4
  %d00 = alloca %class.ap_uint.0, align 1
  %d01 = alloca %class.ap_uint.0, align 1
  %d10 = alloca %class.ap_uint.0, align 1
  %d11 = alloca %class.ap_uint.0, align 1
  %d3x3 = alloca [9 x %class.ap_uint.0], align 1
  %k = alloca i32, align 4
  %k01 = alloca %class.ap_ufixed.6, align 1
  %8 = alloca %class.ap_fixed, align 1
  %9 = alloca %class.ap_ufixed, align 1
  %10 = alloca %class.ap_ufixed, align 1
  %k10 = alloca %class.ap_ufixed.6, align 1
  %11 = alloca %class.ap_fixed, align 1
  %12 = alloca %class.ap_ufixed, align 1
  %13 = alloca %class.ap_ufixed, align 1
  %k11 = alloca %class.ap_ufixed.6, align 1
  %14 = alloca %class.ap_fixed, align 1
  %15 = alloca %class.ap_ufixed, align 1
  %16 = alloca %class.ap_ufixed, align 1
  %k00 = alloca %class.ap_ufixed.6, align 1
  %17 = alloca %class.ap_fixed.7, align 1
  %18 = alloca %class.ap_ufixed, align 1
  %19 = alloca %class.ap_ufixed.6, align 1
  %20 = alloca %class.ap_fixed.8, align 1
  %21 = alloca %class.ap_fixed.9, align 1
  %22 = alloca %class.ap_fixed.10, align 1
  %23 = alloca %class.ap_ufixed.6, align 1
  %24 = alloca %class.ap_ufixed.6, align 1
  %25 = alloca i24
  %26 = alloca %class.ap_ufixed.6, align 1
  %27 = alloca i24
  %28 = alloca i40
  %29 = alloca %class.ap_ufixed.6, align 1
  %30 = alloca i40
  %31 = alloca i48
  %32 = alloca i48
  %33 = alloca %class.ap_fixed.12, align 1
  %34 = alloca %class.ap_fixed.14, align 1
  %35 = alloca %class.ap_fixed.13, align 1
  %36 = alloca %class.ap_uint.0, align 1
  %37 = alloca %class.ap_ufixed.6, align 1
  %38 = alloca i24
  %39 = alloca %class.ap_fixed.13, align 1
  %40 = alloca %class.ap_uint.0, align 1
  %41 = alloca %class.ap_ufixed.6, align 1
  %42 = alloca i24
  %43 = alloca i24
  %44 = alloca i24
  %45 = alloca i40
  %46 = alloca %class.ap_fixed.13, align 1
  %47 = alloca %class.ap_uint.0, align 1
  %48 = alloca %class.ap_ufixed.6, align 1
  %49 = alloca i24
  %50 = alloca i40
  %51 = alloca i24
  %52 = alloca %class.ap_fixed.13, align 1
  %53 = alloca %class.ap_uint.0, align 1
  %54 = alloca %class.ap_ufixed.6, align 1
  %55 = alloca i24
  %56 = alloca i24
  %57 = alloca %class.ap_fixed.11, align 1
  %58 = alloca { i64, i16 }
  %59 = alloca %class.ap_uint.0, align 1
  store %struct.xf_Mat_0_256_256_1_* %src, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %dst, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Mat_4_256_256_1_* %mapx, %struct.xf_Mat_4_256_256_1_** %3, align 8
  store %struct.xf_Mat_4_256_256_1_* %mapy, %struct.xf_Mat_4_256_256_1_** %4, align 8
  store i16 %rows, i16* %5, align 2
  store i16 %cols, i16* %6, align 2
  %60 = getelementptr inbounds [5 x [2 x [129 x [2 x %class.ap_uint.0]]]]* %buf, i32 0, i32 0, i32 0, i32 0, i32 0
  %61 = getelementptr inbounds %class.ap_uint.0* %60, i64 2580
  br label %62

; <label>:62                                      ; preds = %62, %0
  %63 = phi %class.ap_uint.0* [ %60, %0 ], [ %64, %62 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %63)
  %64 = getelementptr inbounds %class.ap_uint.0* %63, i64 1
  %65 = icmp eq %class.ap_uint.0* %64, %61
  br i1 %65, label %66, label %62

; <label>:66                                      ; preds = %62
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %s)
  %67 = getelementptr inbounds [1 x [4 x [128 x %class.ap_uint.2]]]* %bufUram, i32 0, i32 0, i32 0, i32 0
  %68 = getelementptr inbounds %class.ap_uint.2* %67, i64 512
  br label %69

; <label>:69                                      ; preds = %69, %66
  %70 = phi %class.ap_uint.2* [ %67, %66 ], [ %71, %69 ]
  call void @_ZN7ap_uintILi72EEC1Ev(%class.ap_uint.2* %70)
  %71 = getelementptr inbounds %class.ap_uint.2* %70, i64 1
  %72 = icmp eq %class.ap_uint.2* %71, %68
  br i1 %72, label %73, label %69

; <label>:73                                      ; preds = %69
  %74 = getelementptr inbounds [1 x [128 x %class.ap_uint.3]]* %lineBuf, i32 0, i32 0, i32 0
  %75 = getelementptr inbounds %class.ap_uint.3* %74, i64 128
  br label %76

; <label>:76                                      ; preds = %76, %73
  %77 = phi %class.ap_uint.3* [ %74, %73 ], [ %78, %76 ]
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.3* %77)
  %78 = getelementptr inbounds %class.ap_uint.3* %77, i64 1
  %79 = icmp eq %class.ap_uint.3* %78, %75
  br i1 %79, label %80, label %76

; <label>:80                                      ; preds = %76
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1* %mx)
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1* %my)
  store i32 0, i32* %read_pointer_src, align 4
  store i32 0, i32* %read_pointer_map, align 4
  store i32 0, i32* %write_pointer, align 4
  %81 = load i16* %5, align 2
  %82 = zext i16 %81 to i32
  %83 = icmp sle i32 %82, 256
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %80
  br label %87

; <label>:85                                      ; preds = %80
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 208, i8* getelementptr inbounds ([330 x i8]* @__PRETTY_FUNCTION__._ZL172p_ZN2xf9xFRemapLIILi0ELi0ELi1ELi4ELi8ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_S0_R19xf_Mat_4_256_256_1_S2_tt, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %87

; <label>:87                                      ; preds = %86, %84
  %88 = load i16* %6, align 2
  %89 = zext i16 %88 to i32
  %90 = icmp sle i32 %89, 256
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %87
  br label %94

; <label>:92                                      ; preds = %87
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 209, i8* getelementptr inbounds ([330 x i8]* @__PRETTY_FUNCTION__._ZL172p_ZN2xf9xFRemapLIILi0ELi0ELi1ELi4ELi8ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_S0_R19xf_Mat_4_256_256_1_S2_tt, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %94

; <label>:94                                      ; preds = %93, %91
  store i32 4, i32* %ishift, align 4
  %95 = bitcast [8 x i32]* %r1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %95, i8 0, i64 32, i32 16, i1 false)
  %96 = bitcast [8 x i32]* %r2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %96, i8 0, i64 32, i32 16, i1 false)
  store i32 264, i32* %row_tripcount, align 4
  store i8 1, i8* %store_col, align 1
  store i8 1, i8* %store_row, align 1
  %97 = getelementptr inbounds [1 x %class.ap_uint.4]* %temppix, i32 0, i32 0
  %98 = getelementptr inbounds %class.ap_uint.4* %97, i64 1
  br label %99

; <label>:99                                      ; preds = %99, %94
  %100 = phi %class.ap_uint.4* [ %97, %94 ], [ %101, %99 ]
  call void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.4* %100)
  %101 = getelementptr inbounds %class.ap_uint.4* %100, i64 1
  %102 = icmp eq %class.ap_uint.4* %101, %98
  br i1 %102, label %103, label %99

; <label>:103                                     ; preds = %99
  %104 = getelementptr inbounds [1 x %class.ap_uint.3]* %pixval, i32 0, i32 0
  %105 = getelementptr inbounds %class.ap_uint.3* %104, i64 1
  br label %106

; <label>:106                                     ; preds = %106, %103
  %107 = phi %class.ap_uint.3* [ %104, %103 ], [ %108, %106 ]
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.3* %107)
  %108 = getelementptr inbounds %class.ap_uint.3* %107, i64 1
  %109 = icmp eq %class.ap_uint.3* %108, %105
  br i1 %109, label %110, label %106

; <label>:110                                     ; preds = %106
  %111 = getelementptr inbounds [1 x %class.ap_uint.5]* %pixval_2, i32 0, i32 0
  %112 = getelementptr inbounds %class.ap_uint.5* %111, i64 1
  br label %113

; <label>:113                                     ; preds = %113, %110
  %114 = phi %class.ap_uint.5* [ %111, %110 ], [ %115, %113 ]
  call void @_ZN7ap_uintILi48EEC1Ev(%class.ap_uint.5* %114)
  %115 = getelementptr inbounds %class.ap_uint.5* %114, i64 1
  %116 = icmp eq %class.ap_uint.5* %115, %112
  br i1 %116, label %117, label %113

; <label>:117                                     ; preds = %113
  %118 = getelementptr inbounds [1 x %class.ap_uint.3]* %prev_pixval, i32 0, i32 0
  %119 = getelementptr inbounds %class.ap_uint.3* %118, i64 1
  br label %120

; <label>:120                                     ; preds = %120, %117
  %121 = phi %class.ap_uint.3* [ %118, %117 ], [ %122, %120 ]
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.3* %121)
  %122 = getelementptr inbounds %class.ap_uint.3* %121, i64 1
  %123 = icmp eq %class.ap_uint.3* %122, %119
  br i1 %123, label %124, label %120

; <label>:124                                     ; preds = %120
  %125 = getelementptr inbounds [1 x %class.ap_uint.2]* %tempbuf, i32 0, i32 0
  %126 = getelementptr inbounds %class.ap_uint.2* %125, i64 1
  br label %127

; <label>:127                                     ; preds = %127, %124
  %128 = phi %class.ap_uint.2* [ %125, %124 ], [ %129, %127 ]
  call void @_ZN7ap_uintILi72EEC1Ev(%class.ap_uint.2* %128)
  %129 = getelementptr inbounds %class.ap_uint.2* %128, i64 1
  %130 = icmp eq %class.ap_uint.2* %129, %126
  br i1 %130, label %131, label %127

; <label>:131                                     ; preds = %127
  store i32 0, i32* %pl, align 4
  br label %132

; <label>:132                                     ; preds = %156, %131
  %133 = load i32* %pl, align 4
  %134 = icmp slt i32 %133, 1
  br i1 %134, label %135, label %159

; <label>:135                                     ; preds = %132
  %136 = load i32* %pl, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [1 x %class.ap_uint.4]* %temppix, i32 0, i64 %137
  %139 = call %class.ap_uint.4* @_ZN7ap_uintILi16EEaSEi(%class.ap_uint.4* %138, i32 0)
  %140 = load i32* %pl, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [1 x %class.ap_uint.3]* %pixval, i32 0, i64 %141
  %143 = call %class.ap_uint.3* @_ZN7ap_uintILi24EEaSEi(%class.ap_uint.3* %142, i32 0)
  %144 = load i32* %pl, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [1 x %class.ap_uint.5]* %pixval_2, i32 0, i64 %145
  %147 = call %class.ap_uint.5* @_ZN7ap_uintILi48EEaSEi(%class.ap_uint.5* %146, i32 0)
  %148 = load i32* %pl, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [1 x %class.ap_uint.3]* %prev_pixval, i32 0, i64 %149
  %151 = call %class.ap_uint.3* @_ZN7ap_uintILi24EEaSEi(%class.ap_uint.3* %150, i32 0)
  %152 = load i32* %pl, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [1 x %class.ap_uint.2]* %tempbuf, i32 0, i64 %153
  %155 = call %class.ap_uint.2* @_ZN7ap_uintILi72EEaSEi(%class.ap_uint.2* %154, i32 0)
  br label %156

; <label>:156                                     ; preds = %135
  %157 = load i32* %pl, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %pl, align 4
  br label %132

; <label>:159                                     ; preds = %132
  br label %160

; <label>:160                                     ; preds = %159
  store i32 0, i32* %i, align 4
  br label %161

; <label>:161                                     ; preds = %779, %160
  %162 = load i32* %i, align 4
  %163 = load i16* %5, align 2
  %164 = zext i16 %163 to i32
  %165 = load i32* %ishift, align 4
  %166 = add nsw i32 %164, %165
  %167 = icmp slt i32 %162, %166
  br i1 %167, label %168, label %782

; <label>:168                                     ; preds = %161
  store i8 1, i8* %store_col, align 1
  br label %169

; <label>:169                                     ; preds = %168
  store i32 0, i32* %j, align 4
  br label %170

; <label>:170                                     ; preds = %771, %169
  %171 = load i32* %j, align 4
  %172 = load i16* %6, align 2
  %173 = zext i16 %172 to i32
  %174 = add nsw i32 %173, 1
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %774

; <label>:176                                     ; preds = %170
  %177 = load i32* %i, align 4
  %178 = load i16* %5, align 2
  %179 = zext i16 %178 to i32
  %180 = icmp slt i32 %177, %179
  br i1 %180, label %181, label %194

; <label>:181                                     ; preds = %176
  %182 = load i32* %j, align 4
  %183 = load i16* %6, align 2
  %184 = zext i16 %183 to i32
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %186, label %194

; <label>:186                                     ; preds = %181
  %187 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %188 = load i32* %read_pointer_src, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %read_pointer_src, align 4
  %190 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %187, i32 %188)
  %191 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %192 = bitcast [1 x i8]* %191 to i8*
  store i8 %190, i8* %192, align 1
  %193 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %s, %class.ap_uint.0* %7)
  br label %196

; <label>:194                                     ; preds = %181, %176
  %195 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %s, i32 0)
  br label %196

; <label>:196                                     ; preds = %194, %186
  %197 = load i32* %i, align 4
  %198 = load i16* %5, align 2
  %199 = zext i16 %198 to i32
  %200 = icmp slt i32 %197, %199
  br i1 %200, label %201, label %355

; <label>:201                                     ; preds = %196
  store i32 0, i32* %_l_pl, align 4
  store i32 0, i32* %_l_bit, align 4
  store i32 0, i32* %_l_pl, align 4
  br label %202

; <label>:202                                     ; preds = %347, %201
  %203 = load i32* %_l_pl, align 4
  %204 = icmp sle i32 %203, 0
  br i1 %204, label %205, label %350

; <label>:205                                     ; preds = %202
  %206 = load i8* %store_col, align 1
  %207 = trunc i8 %206 to i1
  br i1 %207, label %208, label %321

; <label>:208                                     ; preds = %205
  %209 = load i32* %j, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %321

; <label>:211                                     ; preds = %208
  %212 = load i32* %_l_pl, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [1 x %class.ap_uint.4]* %temppix, i32 0, i64 %213
  %215 = call i64 @_ZNK7ap_uintILi16EEcvmEv(%class.ap_uint.4* %214)
  %216 = load i32* %_l_pl, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [1 x %class.ap_uint.3]* %pixval, i32 0, i64 %217
  %219 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.3* %218, i32 15, i32 0)
  store i64 %215, i64* %219
  %220 = load i32* %_l_bit, align 4
  %221 = add nsw i32 %220, 7
  %222 = load i32* %_l_bit, align 4
  %223 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %s, i32 %221, i32 %222)
  %224 = load i64* %223
  %225 = load i32* %_l_pl, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [1 x %class.ap_uint.3]* %pixval, i32 0, i64 %226
  %228 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.3* %227, i32 23, i32 16)
  store i64 %224, i64* %228
  %229 = load i8* %store_row, align 1
  %230 = trunc i8 %229 to i1
  br i1 %230, label %231, label %244

; <label>:231                                     ; preds = %211
  %232 = load i32* %j, align 4
  %233 = sdiv i32 %232, 2
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = load i32* %_l_pl, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [1 x [128 x %class.ap_uint.3]]* %lineBuf, i32 0, i64 %237
  %239 = getelementptr inbounds [128 x %class.ap_uint.3]* %238, i32 0, i64 %235
  %240 = load i32* %_l_pl, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [1 x %class.ap_uint.3]* %pixval, i32 0, i64 %241
  %243 = call %class.ap_uint.3* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.3* %239, %class.ap_uint.3* %242)
  br label %257

; <label>:244                                     ; preds = %211
  %245 = load i32* %_l_pl, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [1 x %class.ap_uint.3]* %prev_pixval, i32 0, i64 %246
  %248 = load i32* %j, align 4
  %249 = sdiv i32 %248, 2
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = load i32* %_l_pl, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [1 x [128 x %class.ap_uint.3]]* %lineBuf, i32 0, i64 %253
  %255 = getelementptr inbounds [128 x %class.ap_uint.3]* %254, i32 0, i64 %251
  %256 = call %class.ap_uint.3* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.3* %247, %class.ap_uint.3* %255)
  br label %257

; <label>:257                                     ; preds = %244, %231
  %258 = load i32* %i, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %320

; <label>:260                                     ; preds = %257
  %261 = load i8* %store_row, align 1
  %262 = trunc i8 %261 to i1
  br i1 %262, label %263, label %283

; <label>:263                                     ; preds = %260
  %264 = load i32* %_l_pl, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [1 x %class.ap_uint.3]* %pixval, i32 0, i64 %265
  %267 = call i64 @_ZNK7ap_uintILi24EEcvmEv(%class.ap_uint.3* %266)
  %268 = load i32* %j, align 4
  %269 = sdiv i32 %268, 2
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = load i32* %i, align 4
  %273 = sub nsw i32 %272, 1
  %274 = sdiv i32 %273, 2
  %275 = srem i32 %274, 4
  %276 = sext i32 %275 to i64
  %277 = load i32* %_l_pl, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [1 x [4 x [128 x %class.ap_uint.2]]]* %bufUram, i32 0, i64 %278
  %280 = getelementptr inbounds [4 x [128 x %class.ap_uint.2]]* %279, i32 0, i64 %276
  %281 = getelementptr inbounds [128 x %class.ap_uint.2]* %280, i32 0, i64 %271
  %282 = call i64* @_ZN7ap_uintILi72EE5rangeEii(%class.ap_uint.2* %281, i32 71, i32 48)
  store i64 %267, i64* %282
  br label %319

; <label>:283                                     ; preds = %260
  %284 = load i32* %_l_pl, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [1 x %class.ap_uint.3]* %prev_pixval, i32 0, i64 %285
  %287 = call i64 @_ZNK7ap_uintILi24EEcvmEv(%class.ap_uint.3* %286)
  %288 = load i32* %_l_pl, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [1 x %class.ap_uint.5]* %pixval_2, i32 0, i64 %289
  %291 = call i64* @_ZN7ap_uintILi48EE5rangeEii(%class.ap_uint.5* %290, i32 23, i32 0)
  store i64 %287, i64* %291
  %292 = load i32* %_l_pl, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [1 x %class.ap_uint.3]* %pixval, i32 0, i64 %293
  %295 = call i64 @_ZNK7ap_uintILi24EEcvmEv(%class.ap_uint.3* %294)
  %296 = load i32* %_l_pl, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [1 x %class.ap_uint.5]* %pixval_2, i32 0, i64 %297
  %299 = call i64* @_ZN7ap_uintILi48EE5rangeEii(%class.ap_uint.5* %298, i32 47, i32 24)
  store i64 %295, i64* %299
  %300 = load i32* %_l_pl, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [1 x %class.ap_uint.5]* %pixval_2, i32 0, i64 %301
  %303 = call i64 @_ZNK7ap_uintILi48EEcvmEv(%class.ap_uint.5* %302)
  %304 = load i32* %j, align 4
  %305 = sdiv i32 %304, 2
  %306 = sub nsw i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = load i32* %i, align 4
  %309 = sub nsw i32 %308, 1
  %310 = sdiv i32 %309, 2
  %311 = srem i32 %310, 4
  %312 = sext i32 %311 to i64
  %313 = load i32* %_l_pl, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [1 x [4 x [128 x %class.ap_uint.2]]]* %bufUram, i32 0, i64 %314
  %316 = getelementptr inbounds [4 x [128 x %class.ap_uint.2]]* %315, i32 0, i64 %312
  %317 = getelementptr inbounds [128 x %class.ap_uint.2]* %316, i32 0, i64 %307
  %318 = call i64* @_ZN7ap_uintILi72EE5rangeEii(%class.ap_uint.2* %317, i32 47, i32 0)
  store i64 %303, i64* %318
  br label %319

; <label>:319                                     ; preds = %283, %263
  br label %320

; <label>:320                                     ; preds = %319, %257
  br label %321

; <label>:321                                     ; preds = %320, %208, %205
  %322 = load i8* %store_col, align 1
  %323 = trunc i8 %322 to i1
  br i1 %323, label %324, label %334

; <label>:324                                     ; preds = %321
  %325 = load i32* %_l_bit, align 4
  %326 = add nsw i32 %325, 7
  %327 = load i32* %_l_bit, align 4
  %328 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %s, i32 %326, i32 %327)
  %329 = load i64* %328
  %330 = load i32* %_l_pl, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [1 x %class.ap_uint.4]* %temppix, i32 0, i64 %331
  %333 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.4* %332, i32 7, i32 0)
  store i64 %329, i64* %333
  br label %344

; <label>:334                                     ; preds = %321
  %335 = load i32* %_l_bit, align 4
  %336 = add nsw i32 %335, 7
  %337 = load i32* %_l_bit, align 4
  %338 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %s, i32 %336, i32 %337)
  %339 = load i64* %338
  %340 = load i32* %_l_pl, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [1 x %class.ap_uint.4]* %temppix, i32 0, i64 %341
  %343 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.4* %342, i32 15, i32 8)
  store i64 %339, i64* %343
  br label %344

; <label>:344                                     ; preds = %334, %324
  %345 = load i32* %_l_bit, align 4
  %346 = add nsw i32 %345, 8
  store i32 %346, i32* %_l_bit, align 4
  br label %347

; <label>:347                                     ; preds = %344
  %348 = load i32* %_l_pl, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %_l_pl, align 4
  br label %202

; <label>:350                                     ; preds = %202
  %351 = load i8* %store_col, align 1
  %352 = trunc i8 %351 to i1
  %353 = xor i1 %352, true
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %store_col, align 1
  br label %355

; <label>:355                                     ; preds = %350, %196
  %356 = load i32* %i, align 4
  %357 = load i32* %i, align 4
  %358 = srem i32 %357, 8
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [8 x i32]* %r1, i32 0, i64 %359
  store i32 %356, i32* %360, align 4
  %361 = load i32* %i, align 4
  %362 = load i32* %i, align 4
  %363 = srem i32 %362, 8
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [8 x i32]* %r2, i32 0, i64 %364
  store i32 %361, i32* %365, align 4
  %366 = load i32* %i, align 4
  %367 = load i32* %ishift, align 4
  %368 = icmp sge i32 %366, %367
  br i1 %368, label %369, label %770

; <label>:369                                     ; preds = %355
  %370 = load i32* %j, align 4
  %371 = load i16* %6, align 2
  %372 = zext i16 %371 to i32
  %373 = icmp slt i32 %370, %372
  br i1 %373, label %374, label %770

; <label>:374                                     ; preds = %369
  %375 = load %struct.xf_Mat_4_256_256_1_** %3, align 8
  %376 = load i32* %read_pointer_map, align 4
  %377 = call float @_ZL43p_ZN2xf16Mat_4_256_256_1_10read_floatIEEi_1P19xf_Mat_4_256_256_1_i(%struct.xf_Mat_4_256_256_1_* %375, i32 %376)
  store float %377, float* %x_fl, align 4
  %378 = load %struct.xf_Mat_4_256_256_1_** %4, align 8
  %379 = load i32* %read_pointer_map, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %read_pointer_map, align 4
  %381 = call float @_ZL43p_ZN2xf16Mat_4_256_256_1_10read_floatIEEi_1P19xf_Mat_4_256_256_1_i(%struct.xf_Mat_4_256_256_1_* %378, i32 %379)
  store float %381, float* %y_fl, align 4
  %382 = load float* %x_fl, align 4
  %383 = fmul float %382, 3.200000e+01
  %384 = fptosi float %383 to i32
  store i32 %384, i32* %x_fix, align 4
  %385 = load float* %y_fl, align 4
  %386 = fmul float %385, 3.200000e+01
  %387 = fptosi float %386 to i32
  store i32 %387, i32* %y_fix, align 4
  %388 = load i32* %x_fix, align 4
  %389 = ashr i32 %388, 5
  store i32 %389, i32* %x, align 4
  %390 = load i32* %y_fix, align 4
  %391 = ashr i32 %390, 5
  store i32 %391, i32* %y, align 4
  %392 = load i32* %x_fix, align 4
  %393 = and i32 %392, 31
  store i32 %393, i32* %x_frac, align 4
  %394 = load i32* %y_fix, align 4
  %395 = and i32 %394, 31
  store i32 %395, i32* %y_frac, align 4
  %396 = load i32* %y, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %ynext, align 4
  call void @_ZN9ap_ufixedILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1Ev(%class.ap_ufixed* %iu)
  call void @_ZN9ap_ufixedILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1Ev(%class.ap_ufixed* %iv)
  %398 = load i32* %x_frac, align 4
  %399 = sext i32 %398 to i64
  %400 = call i64* @_ZN9ap_ufixedILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii(%class.ap_ufixed* %iu, i32 4, i32 0)
  store i64 %399, i64* %400
  %401 = load i32* %y_frac, align 4
  %402 = sext i32 %401 to i64
  %403 = call i64* @_ZN9ap_ufixedILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii(%class.ap_ufixed* %iv, i32 4, i32 0)
  store i64 %402, i64* %403
  %404 = load i32* %y, align 4
  %405 = icmp sge i32 %404, 0
  br i1 %405, label %406, label %439

; <label>:406                                     ; preds = %374
  %407 = load float* %y_fl, align 4
  %408 = load i16* %5, align 2
  %409 = zext i16 %408 to i32
  %410 = sub nsw i32 %409, 1
  %411 = sitofp i32 %410 to float
  %412 = fcmp ole float %407, %411
  br i1 %412, label %413, label %439

; <label>:413                                     ; preds = %406
  %414 = load i32* %y, align 4
  %415 = srem i32 %414, 8
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [8 x i32]* %r1, i32 0, i64 %416
  %418 = load i32* %417, align 4
  %419 = load i32* %y, align 4
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %421, label %439

; <label>:421                                     ; preds = %413
  %422 = load i32* %ynext, align 4
  %423 = srem i32 %422, 8
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [8 x i32]* %r2, i32 0, i64 %424
  %426 = load i32* %425, align 4
  %427 = load i32* %ynext, align 4
  %428 = icmp eq i32 %426, %427
  br i1 %428, label %429, label %439

; <label>:429                                     ; preds = %421
  %430 = load i32* %x, align 4
  %431 = icmp sge i32 %430, 0
  br i1 %431, label %432, label %439

; <label>:432                                     ; preds = %429
  %433 = load float* %x_fl, align 4
  %434 = load i16* %6, align 2
  %435 = zext i16 %434 to i32
  %436 = sub nsw i32 %435, 1
  %437 = sitofp i32 %436 to float
  %438 = fcmp ole float %433, %437
  br label %439

; <label>:439                                     ; preds = %432, %429, %421, %413, %406, %374
  %440 = phi i1 [ false, %429 ], [ false, %421 ], [ false, %413 ], [ false, %406 ], [ false, %374 ], [ %438, %432 ]
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %in_range, align 1
  %442 = load i32* %x, align 4
  %443 = sdiv i32 %442, 2
  %444 = load i32* %x, align 4
  %445 = srem i32 %444, 2
  %446 = add nsw i32 %443, %445
  store i32 %446, i32* %xa0, align 4
  %447 = load i32* %x, align 4
  %448 = sdiv i32 %447, 2
  store i32 %448, i32* %xa1, align 4
  %449 = load i32* %y, align 4
  %450 = sdiv i32 %449, 2
  %451 = load i32* %y, align 4
  %452 = srem i32 %451, 2
  %453 = add nsw i32 %450, %452
  %454 = srem i32 %453, 4
  store i32 %454, i32* %ya0, align 4
  %455 = load i32* %y, align 4
  %456 = sdiv i32 %455, 2
  %457 = srem i32 %456, 4
  store i32 %457, i32* %ya1, align 4
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %d)
  store i32 0, i32* %ch, align 4
  br label %458

; <label>:458                                     ; preds = %758, %439
  %459 = load i32* %ch, align 4
  %460 = icmp slt i32 %459, 1
  br i1 %460, label %461, label %761

; <label>:461                                     ; preds = %458
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %d00)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %d01)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %d10)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %d11)
  %462 = getelementptr inbounds [9 x %class.ap_uint.0]* %d3x3, i32 0, i32 0
  %463 = getelementptr inbounds %class.ap_uint.0* %462, i64 9
  br label %464

; <label>:464                                     ; preds = %464, %461
  %465 = phi %class.ap_uint.0* [ %462, %461 ], [ %466, %464 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %465)
  %466 = getelementptr inbounds %class.ap_uint.0* %465, i64 1
  %467 = icmp eq %class.ap_uint.0* %466, %463
  br i1 %467, label %468, label %464

; <label>:468                                     ; preds = %464
  %469 = load i32* %ch, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [1 x %class.ap_uint.2]* %tempbuf, i32 0, i64 %470
  %472 = load i32* %xa1, align 4
  %473 = sext i32 %472 to i64
  %474 = load i32* %ya1, align 4
  %475 = sext i32 %474 to i64
  %476 = load i32* %ch, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [1 x [4 x [128 x %class.ap_uint.2]]]* %bufUram, i32 0, i64 %477
  %479 = getelementptr inbounds [4 x [128 x %class.ap_uint.2]]* %478, i32 0, i64 %475
  %480 = getelementptr inbounds [128 x %class.ap_uint.2]* %479, i32 0, i64 %473
  %481 = call %class.ap_uint.2* @_ZN7ap_uintILi72EEaSERKS0_(%class.ap_uint.2* %471, %class.ap_uint.2* %480)
  store i32 0, i32* %k, align 4
  br label %482

; <label>:482                                     ; preds = %500, %468
  %483 = load i32* %k, align 4
  %484 = icmp slt i32 %483, 9
  br i1 %484, label %485, label %503

; <label>:485                                     ; preds = %482
  %486 = load i32* %k, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [9 x %class.ap_uint.0]* %d3x3, i32 0, i64 %487
  %489 = load i32* %ch, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [1 x %class.ap_uint.2]* %tempbuf, i32 0, i64 %490
  %492 = load i32* %k, align 4
  %493 = mul nsw i32 %492, 8
  %494 = add nsw i32 %493, 7
  %495 = load i32* %k, align 4
  %496 = mul nsw i32 %495, 8
  %497 = call i64* @_ZN7ap_uintILi72EE5rangeEii(%class.ap_uint.2* %491, i32 %494, i32 %496)
  %498 = load i64* %497
  %499 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %488, i64 %498)
  br label %500

; <label>:500                                     ; preds = %485
  %501 = load i32* %k, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %k, align 4
  br label %482

; <label>:503                                     ; preds = %482
  %504 = load i32* %y, align 4
  %505 = srem i32 %504, 2
  %506 = mul nsw i32 %505, 3
  %507 = load i32* %x, align 4
  %508 = srem i32 %507, 2
  %509 = add nsw i32 %506, %508
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [9 x %class.ap_uint.0]* %d3x3, i32 0, i64 %510
  %512 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %d00, %class.ap_uint.0* %511)
  %513 = load i32* %y, align 4
  %514 = srem i32 %513, 2
  %515 = mul nsw i32 %514, 3
  %516 = load i32* %x, align 4
  %517 = srem i32 %516, 2
  %518 = add nsw i32 %515, %517
  %519 = add nsw i32 %518, 1
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [9 x %class.ap_uint.0]* %d3x3, i32 0, i64 %520
  %522 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %d01, %class.ap_uint.0* %521)
  %523 = load i32* %y, align 4
  %524 = srem i32 %523, 2
  %525 = add nsw i32 %524, 1
  %526 = mul nsw i32 %525, 3
  %527 = load i32* %x, align 4
  %528 = srem i32 %527, 2
  %529 = add nsw i32 %526, %528
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds [9 x %class.ap_uint.0]* %d3x3, i32 0, i64 %530
  %532 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %d10, %class.ap_uint.0* %531)
  %533 = load i32* %y, align 4
  %534 = srem i32 %533, 2
  %535 = add nsw i32 %534, 1
  %536 = mul nsw i32 %535, 3
  %537 = load i32* %x, align 4
  %538 = srem i32 %537, 2
  %539 = add nsw i32 %536, %538
  %540 = add nsw i32 %539, 1
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [9 x %class.ap_uint.0]* %d3x3, i32 0, i64 %541
  %543 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %d11, %class.ap_uint.0* %542)
  %544 = call i8 @_ZmiILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EE9ap_ufixedIXT_EXT0_EXT1_EXT2_EXT3_EEiRKS3_(i32 1, %class.ap_ufixed* %iv)
  %545 = getelementptr %class.ap_ufixed* %9, i32 0, i32 0
  %546 = bitcast [1 x i8]* %545 to i8*
  store i8 %544, i8* %546, align 1
  %547 = bitcast %class.ap_ufixed* %10 to i8*
  %548 = bitcast %class.ap_ufixed* %iu to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %547, i8* %548, i64 1, i32 1, i1 false)
  %549 = getelementptr %class.ap_ufixed* %9, i32 0, i32 0
  %550 = bitcast [1 x i8]* %549 to i8*
  %551 = load i8* %550, align 1
  %552 = getelementptr %class.ap_ufixed* %10, i32 0, i32 0
  %553 = bitcast [1 x i8]* %552 to i8*
  %554 = load i8* %553, align 1
  %555 = call i16 @_ZmlILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0ELi5ELi0ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EE9ap_ufixedIXT_EXT0_EXT1_EXT2_EXT3_EES4_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i8 %551, i8 %554)
  %556 = getelementptr %class.ap_fixed* %8, i32 0, i32 0
  %557 = bitcast [2 x i8]* %556 to i16*
  store i16 %555, i16* %557, align 1
  call void @_ZN9ap_ufixedILi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi10ELi0ELS0_5ELS1_3ELi0EEERK8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_ufixed.6* %k01, %class.ap_fixed* %8)
  %558 = bitcast %class.ap_ufixed* %12 to i8*
  %559 = bitcast %class.ap_ufixed* %iv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %558, i8* %559, i64 1, i32 1, i1 false)
  %560 = call i8 @_ZmiILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EE9ap_ufixedIXT_EXT0_EXT1_EXT2_EXT3_EEiRKS3_(i32 1, %class.ap_ufixed* %iu)
  %561 = getelementptr %class.ap_ufixed* %13, i32 0, i32 0
  %562 = bitcast [1 x i8]* %561 to i8*
  store i8 %560, i8* %562, align 1
  %563 = getelementptr %class.ap_ufixed* %12, i32 0, i32 0
  %564 = bitcast [1 x i8]* %563 to i8*
  %565 = load i8* %564, align 1
  %566 = getelementptr %class.ap_ufixed* %13, i32 0, i32 0
  %567 = bitcast [1 x i8]* %566 to i8*
  %568 = load i8* %567, align 1
  %569 = call i16 @_ZmlILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0ELi5ELi0ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EE9ap_ufixedIXT_EXT0_EXT1_EXT2_EXT3_EES4_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i8 %565, i8 %568)
  %570 = getelementptr %class.ap_fixed* %11, i32 0, i32 0
  %571 = bitcast [2 x i8]* %570 to i16*
  store i16 %569, i16* %571, align 1
  call void @_ZN9ap_ufixedILi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi10ELi0ELS0_5ELS1_3ELi0EEERK8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_ufixed.6* %k10, %class.ap_fixed* %11)
  %572 = bitcast %class.ap_ufixed* %15 to i8*
  %573 = bitcast %class.ap_ufixed* %iv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %572, i8* %573, i64 1, i32 1, i1 false)
  %574 = bitcast %class.ap_ufixed* %16 to i8*
  %575 = bitcast %class.ap_ufixed* %iu to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %574, i8* %575, i64 1, i32 1, i1 false)
  %576 = getelementptr %class.ap_ufixed* %15, i32 0, i32 0
  %577 = bitcast [1 x i8]* %576 to i8*
  %578 = load i8* %577, align 1
  %579 = getelementptr %class.ap_ufixed* %16, i32 0, i32 0
  %580 = bitcast [1 x i8]* %579 to i8*
  %581 = load i8* %580, align 1
  %582 = call i16 @_ZmlILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0ELi5ELi0ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EE9ap_ufixedIXT_EXT0_EXT1_EXT2_EXT3_EES4_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i8 %578, i8 %581)
  %583 = getelementptr %class.ap_fixed* %14, i32 0, i32 0
  %584 = bitcast [2 x i8]* %583 to i16*
  store i16 %582, i16* %584, align 1
  call void @_ZN9ap_ufixedILi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi10ELi0ELS0_5ELS1_3ELi0EEERK8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_ufixed.6* %k11, %class.ap_fixed* %14)
  %585 = call i8 @_ZmiILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EE9ap_ufixedIXT_EXT0_EXT1_EXT2_EXT3_EEiRKS3_(i32 1, %class.ap_ufixed* %iv)
  %586 = getelementptr %class.ap_ufixed* %18, i32 0, i32 0
  %587 = bitcast [1 x i8]* %586 to i8*
  store i8 %585, i8* %587, align 1
  %588 = bitcast %class.ap_ufixed.6* %19 to i8*
  %589 = bitcast %class.ap_ufixed.6* %k01 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %588, i8* %589, i64 2, i32 1, i1 false)
  %590 = getelementptr %class.ap_ufixed* %18, i32 0, i32 0
  %591 = bitcast [1 x i8]* %590 to i8*
  %592 = load i8* %591, align 1
  %593 = getelementptr %class.ap_ufixed.6* %19, i32 0, i32 0
  %594 = bitcast [2 x i8]* %593 to i16*
  %595 = load i16* %594, align 1
  %596 = call i16 @_ZmiILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0ELi11ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EE9ap_ufixedIXT_EXT0_EXT1_EXT2_EXT3_EES4_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i8 %592, i16 %595)
  %597 = getelementptr %class.ap_fixed.7* %17, i32 0, i32 0
  %598 = bitcast [2 x i8]* %597 to i16*
  store i16 %596, i16* %598, align 1
  call void @_ZN9ap_ufixedILi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi16ELi1ELS0_5ELS1_3ELi0EEERK8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_ufixed.6* %k00, %class.ap_fixed.7* %17)
  %599 = bitcast %class.ap_ufixed.6* %23 to i8*
  %600 = bitcast %class.ap_ufixed.6* %k00 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %599, i8* %600, i64 2, i32 1, i1 false)
  %601 = bitcast %class.ap_ufixed.6* %24 to i8*
  %602 = bitcast %class.ap_ufixed.6* %k01 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %601, i8* %602, i64 2, i32 1, i1 false)
  %603 = getelementptr %class.ap_ufixed.6* %23, i32 0, i32 0
  %604 = bitcast [2 x i8]* %603 to i16*
  %605 = load i16* %604, align 1
  %606 = getelementptr %class.ap_ufixed.6* %24, i32 0, i32 0
  %607 = bitcast [2 x i8]* %606 to i16*
  %608 = load i16* %607, align 1
  %609 = call i24 @_ZplILi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0ELi11ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EE9ap_ufixedIXT_EXT0_EXT1_EXT2_EXT3_EES4_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i16 %605, i16 %608)
  %610 = getelementptr %class.ap_fixed.10* %22, i32 0, i32 0
  store i24 %609, i24* %25
  %611 = bitcast i24* %25 to [3 x i8]*
  %612 = load [3 x i8]* %611, align 1
  store [3 x i8] %612, [3 x i8]* %610
  %613 = bitcast %class.ap_ufixed.6* %26 to i8*
  %614 = bitcast %class.ap_ufixed.6* %k10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %613, i8* %614, i64 2, i32 1, i1 false)
  %615 = getelementptr %class.ap_fixed.10* %22, i32 0, i32 0
  %616 = bitcast i24* %27 to [3 x i8]*
  %617 = load [3 x i8]* %615
  store [3 x i8] %617, [3 x i8]* %616, align 1
  %618 = load i24* %27
  %619 = getelementptr %class.ap_ufixed.6* %26, i32 0, i32 0
  %620 = bitcast [2 x i8]* %619 to i16*
  %621 = load i16* %620, align 1
  %622 = call i40 @_ZplILi22ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0ELi11ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EE9ap_ufixedIXT4_EXT5_EXT6_EXT7_EXT8_EE(i24 %618, i16 %621)
  %623 = getelementptr %class.ap_fixed.9* %21, i32 0, i32 0
  store i40 %622, i40* %28
  %624 = bitcast i40* %28 to [5 x i8]*
  %625 = load [5 x i8]* %624, align 1
  store [5 x i8] %625, [5 x i8]* %623
  %626 = bitcast %class.ap_ufixed.6* %29 to i8*
  %627 = bitcast %class.ap_ufixed.6* %k11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %626, i8* %627, i64 2, i32 1, i1 false)
  %628 = getelementptr %class.ap_fixed.9* %21, i32 0, i32 0
  %629 = bitcast i40* %30 to [5 x i8]*
  %630 = load [5 x i8]* %628
  store [5 x i8] %630, [5 x i8]* %629, align 1
  %631 = load i40* %30
  %632 = getelementptr %class.ap_ufixed.6* %29, i32 0, i32 0
  %633 = bitcast [2 x i8]* %632 to i16*
  %634 = load i16* %633, align 1
  %635 = call i48 @_ZplILi33ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0ELi11ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EE9ap_ufixedIXT4_EXT5_EXT6_EXT7_EXT8_EE(i40 %631, i16 %634)
  %636 = getelementptr %class.ap_fixed.8* %20, i32 0, i32 0
  store i48 %635, i48* %31
  %637 = bitcast i48* %31 to [6 x i8]*
  %638 = load [6 x i8]* %637, align 1
  store [6 x i8] %638, [6 x i8]* %636
  %639 = getelementptr %class.ap_fixed.8* %20, i32 0, i32 0
  %640 = bitcast i48* %32 to [6 x i8]*
  %641 = load [6 x i8]* %639
  store [6 x i8] %641, [6 x i8]* %640, align 1
  %642 = load i48* %32
  %643 = call zeroext i1 @_ZeqILi44ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEb8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EEi(i48 %642, i32 1)
  br i1 %643, label %644, label %645

; <label>:644                                     ; preds = %503
  br label %647

; <label>:645                                     ; preds = %503
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 431, i8* getelementptr inbounds ([330 x i8]* @__PRETTY_FUNCTION__._ZL172p_ZN2xf9xFRemapLIILi0ELi0ELi1ELi4ELi8ELi256ELi256ELi1ELb1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_S0_R19xf_Mat_4_256_256_1_S2_tt, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %647

; <label>:647                                     ; preds = %646, %644
  %648 = load i8* %in_range, align 1
  %649 = trunc i8 %648 to i1
  br i1 %649, label %650, label %749

; <label>:650                                     ; preds = %647
  %651 = bitcast %class.ap_uint.0* %36 to i8*
  %652 = bitcast %class.ap_uint.0* %d00 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %651, i8* %652, i64 1, i32 1, i1 false)
  %653 = bitcast %class.ap_ufixed.6* %37 to i8*
  %654 = bitcast %class.ap_ufixed.6* %k00 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %653, i8* %654, i64 2, i32 1, i1 false)
  %655 = getelementptr %class.ap_uint.0* %36, i32 0, i32 0
  %656 = bitcast [1 x i8]* %655 to i8*
  %657 = load i8* %656, align 1
  %658 = getelementptr %class.ap_ufixed.6* %37, i32 0, i32 0
  %659 = bitcast [2 x i8]* %658 to i16*
  %660 = load i16* %659, align 1
  %661 = call i24 @_ZmlILi8ELi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8ap_fixedIXplT_T0_EXT1_EXT2_EXT3_EXT4_EE7ap_uintIXT_EE9ap_ufixedIXT0_EXT1_EXT2_EXT3_EXT4_EE(i8 %657, i16 %660)
  %662 = getelementptr %class.ap_fixed.13* %35, i32 0, i32 0
  store i24 %661, i24* %38
  %663 = bitcast i24* %38 to [3 x i8]*
  %664 = load [3 x i8]* %663, align 1
  store [3 x i8] %664, [3 x i8]* %662
  %665 = bitcast %class.ap_uint.0* %40 to i8*
  %666 = bitcast %class.ap_uint.0* %d01 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %665, i8* %666, i64 1, i32 1, i1 false)
  %667 = bitcast %class.ap_ufixed.6* %41 to i8*
  %668 = bitcast %class.ap_ufixed.6* %k01 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %667, i8* %668, i64 2, i32 1, i1 false)
  %669 = getelementptr %class.ap_uint.0* %40, i32 0, i32 0
  %670 = bitcast [1 x i8]* %669 to i8*
  %671 = load i8* %670, align 1
  %672 = getelementptr %class.ap_ufixed.6* %41, i32 0, i32 0
  %673 = bitcast [2 x i8]* %672 to i16*
  %674 = load i16* %673, align 1
  %675 = call i24 @_ZmlILi8ELi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8ap_fixedIXplT_T0_EXT1_EXT2_EXT3_EXT4_EE7ap_uintIXT_EE9ap_ufixedIXT0_EXT1_EXT2_EXT3_EXT4_EE(i8 %671, i16 %674)
  %676 = getelementptr %class.ap_fixed.13* %39, i32 0, i32 0
  store i24 %675, i24* %42
  %677 = bitcast i24* %42 to [3 x i8]*
  %678 = load [3 x i8]* %677, align 1
  store [3 x i8] %678, [3 x i8]* %676
  %679 = getelementptr %class.ap_fixed.13* %35, i32 0, i32 0
  %680 = bitcast i24* %43 to [3 x i8]*
  %681 = load [3 x i8]* %679
  store [3 x i8] %681, [3 x i8]* %680, align 1
  %682 = load i24* %43
  %683 = getelementptr %class.ap_fixed.13* %39, i32 0, i32 0
  %684 = bitcast i24* %44 to [3 x i8]*
  %685 = load [3 x i8]* %683
  store [3 x i8] %685, [3 x i8]* %684, align 1
  %686 = load i24* %44
  %687 = call i40 @_ZplILi19ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0ELi19ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i24 %682, i24 %686)
  %688 = getelementptr %class.ap_fixed.14* %34, i32 0, i32 0
  store i40 %687, i40* %45
  %689 = bitcast i40* %45 to [5 x i8]*
  %690 = load [5 x i8]* %689, align 1
  store [5 x i8] %690, [5 x i8]* %688
  %691 = bitcast %class.ap_uint.0* %47 to i8*
  %692 = bitcast %class.ap_uint.0* %d10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %691, i8* %692, i64 1, i32 1, i1 false)
  %693 = bitcast %class.ap_ufixed.6* %48 to i8*
  %694 = bitcast %class.ap_ufixed.6* %k10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %693, i8* %694, i64 2, i32 1, i1 false)
  %695 = getelementptr %class.ap_uint.0* %47, i32 0, i32 0
  %696 = bitcast [1 x i8]* %695 to i8*
  %697 = load i8* %696, align 1
  %698 = getelementptr %class.ap_ufixed.6* %48, i32 0, i32 0
  %699 = bitcast [2 x i8]* %698 to i16*
  %700 = load i16* %699, align 1
  %701 = call i24 @_ZmlILi8ELi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8ap_fixedIXplT_T0_EXT1_EXT2_EXT3_EXT4_EE7ap_uintIXT_EE9ap_ufixedIXT0_EXT1_EXT2_EXT3_EXT4_EE(i8 %697, i16 %700)
  %702 = getelementptr %class.ap_fixed.13* %46, i32 0, i32 0
  store i24 %701, i24* %49
  %703 = bitcast i24* %49 to [3 x i8]*
  %704 = load [3 x i8]* %703, align 1
  store [3 x i8] %704, [3 x i8]* %702
  %705 = getelementptr %class.ap_fixed.14* %34, i32 0, i32 0
  %706 = bitcast i40* %50 to [5 x i8]*
  %707 = load [5 x i8]* %705
  store [5 x i8] %707, [5 x i8]* %706, align 1
  %708 = load i40* %50
  %709 = getelementptr %class.ap_fixed.13* %46, i32 0, i32 0
  %710 = bitcast i24* %51 to [3 x i8]*
  %711 = load [3 x i8]* %709
  store [3 x i8] %711, [3 x i8]* %710, align 1
  %712 = load i24* %51
  %713 = call i64 @_ZplILi38ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0ELi19ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i40 %708, i24 %712)
  %714 = getelementptr %class.ap_fixed.12* %33, i32 0, i32 0
  %715 = bitcast [8 x i8]* %714 to i64*
  store i64 %713, i64* %715, align 1
  %716 = bitcast %class.ap_uint.0* %53 to i8*
  %717 = bitcast %class.ap_uint.0* %d11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %716, i8* %717, i64 1, i32 1, i1 false)
  %718 = bitcast %class.ap_ufixed.6* %54 to i8*
  %719 = bitcast %class.ap_ufixed.6* %k11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %718, i8* %719, i64 2, i32 1, i1 false)
  %720 = getelementptr %class.ap_uint.0* %53, i32 0, i32 0
  %721 = bitcast [1 x i8]* %720 to i8*
  %722 = load i8* %721, align 1
  %723 = getelementptr %class.ap_ufixed.6* %54, i32 0, i32 0
  %724 = bitcast [2 x i8]* %723 to i16*
  %725 = load i16* %724, align 1
  %726 = call i24 @_ZmlILi8ELi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8ap_fixedIXplT_T0_EXT1_EXT2_EXT3_EXT4_EE7ap_uintIXT_EE9ap_ufixedIXT0_EXT1_EXT2_EXT3_EXT4_EE(i8 %722, i16 %725)
  %727 = getelementptr %class.ap_fixed.13* %52, i32 0, i32 0
  store i24 %726, i24* %55
  %728 = bitcast i24* %55 to [3 x i8]*
  %729 = load [3 x i8]* %728, align 1
  store [3 x i8] %729, [3 x i8]* %727
  %730 = getelementptr %class.ap_fixed.12* %33, i32 0, i32 0
  %731 = bitcast [8 x i8]* %730 to i64*
  %732 = load i64* %731, align 1
  %733 = getelementptr %class.ap_fixed.13* %52, i32 0, i32 0
  %734 = bitcast i24* %56 to [3 x i8]*
  %735 = load [3 x i8]* %733
  store [3 x i8] %735, [3 x i8]* %734, align 1
  %736 = load i24* %56
  %737 = call { i64, i16 } @_ZplILi57ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0ELi19ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i64 %732, i24 %736)
  %738 = getelementptr %class.ap_fixed.11* %57, i32 0, i32 0
  store { i64, i16 } %737, { i64, i16 }* %58
  %739 = bitcast { i64, i16 }* %58 to [10 x i8]*
  %740 = load [10 x i8]* %739, align 1
  store [10 x i8] %740, [10 x i8]* %738
  %741 = call i64 @_ZNK8ap_fixedILi76ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv(%class.ap_fixed.11* %57)
  %742 = load i32* %ch, align 4
  %743 = add nsw i32 %742, 1
  %744 = mul nsw i32 %743, 8
  %745 = sub nsw i32 %744, 1
  %746 = load i32* %ch, align 4
  %747 = mul nsw i32 %746, 8
  %748 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %d, i32 %745, i32 %747)
  store i64 %741, i64* %748
  br label %757

; <label>:749                                     ; preds = %647
  %750 = load i32* %ch, align 4
  %751 = add nsw i32 %750, 1
  %752 = mul nsw i32 %751, 8
  %753 = sub nsw i32 %752, 1
  %754 = load i32* %ch, align 4
  %755 = mul nsw i32 %754, 8
  %756 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %d, i32 %753, i32 %755)
  store i64 0, i64* %756
  br label %757

; <label>:757                                     ; preds = %749, %650
  br label %758

; <label>:758                                     ; preds = %757
  %759 = load i32* %ch, align 4
  %760 = add nsw i32 %759, 1
  store i32 %760, i32* %ch, align 4
  br label %458

; <label>:761                                     ; preds = %458
  %762 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %763 = load i32* %write_pointer, align 4
  %764 = add nsw i32 %763, 1
  store i32 %764, i32* %write_pointer, align 4
  %765 = bitcast %class.ap_uint.0* %59 to i8*
  %766 = bitcast %class.ap_uint.0* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %765, i8* %766, i64 1, i32 1, i1 false)
  %767 = getelementptr %class.ap_uint.0* %59, i32 0, i32 0
  %768 = bitcast [1 x i8]* %767 to i8*
  %769 = load i8* %768, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %762, i32 %763, i8 %769)
  br label %770

; <label>:770                                     ; preds = %761, %369, %355
  br label %771

; <label>:771                                     ; preds = %770
  %772 = load i32* %j, align 4
  %773 = add nsw i32 %772, 1
  store i32 %773, i32* %j, align 4
  br label %170

; <label>:774                                     ; preds = %170
  %775 = load i8* %store_row, align 1
  %776 = trunc i8 %775 to i1
  %777 = xor i1 %776, true
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %store_row, align 1
  br label %779

; <label>:779                                     ; preds = %774
  %780 = load i32* %i, align 4
  %781 = add nsw i32 %780, 1
  store i32 %781, i32* %i, align 4
  br label %161

; <label>:782                                     ; preds = %161
  ret void
}

declare void @_ZN7ap_uintILi72EEC1Ev(%class.ap_uint.2*)

declare void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.3*)

declare void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1*)

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.4*)

declare void @_ZN7ap_uintILi48EEC1Ev(%class.ap_uint.5*)

declare %class.ap_uint.4* @_ZN7ap_uintILi16EEaSEi(%class.ap_uint.4*, i32)

declare %class.ap_uint.3* @_ZN7ap_uintILi24EEaSEi(%class.ap_uint.3*, i32)

declare %class.ap_uint.5* @_ZN7ap_uintILi48EEaSEi(%class.ap_uint.5*, i32)

declare %class.ap_uint.2* @_ZN7ap_uintILi72EEaSEi(%class.ap_uint.2*, i32)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0*, i32)

declare i64 @_ZNK7ap_uintILi16EEcvmEv(%class.ap_uint.4*)

declare i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.3*, i32, i32)

declare %class.ap_uint.3* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.3*, %class.ap_uint.3*)

declare i64 @_ZNK7ap_uintILi24EEcvmEv(%class.ap_uint.3*)

declare i64* @_ZN7ap_uintILi72EE5rangeEii(%class.ap_uint.2*, i32, i32)

declare i64* @_ZN7ap_uintILi48EE5rangeEii(%class.ap_uint.5*, i32, i32)

declare i64 @_ZNK7ap_uintILi48EEcvmEv(%class.ap_uint.5*)

declare i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.4*, i32, i32)

define internal float @_ZL43p_ZN2xf16Mat_4_256_256_1_10read_floatIEEi_1P19xf_Mat_4_256_256_1_i(%struct.xf_Mat_4_256_256_1_* %this_, i32 %index) uwtable {
  %1 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.1, align 1
  %val_out = alloca float*, align 8
  store %struct.xf_Mat_4_256_256_1_* %this_, %struct.xf_Mat_4_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = load %struct.xf_Mat_4_256_256_1_** %1, align 8
  %4 = load i32* %2, align 4
  %5 = call i32 @_ZL36p_ZN2xf16Mat_4_256_256_1_4readIEEi_1P19xf_Mat_4_256_256_1_i(%struct.xf_Mat_4_256_256_1_* %3, i32 %4)
  %6 = getelementptr %class.ap_uint.1* %val, i32 0, i32 0
  %7 = bitcast [4 x i8]* %6 to i32*
  store i32 %5, i32* %7, align 1
  %8 = bitcast %class.ap_uint.1* %val to float*
  store float* %8, float** %val_out, align 8
  %9 = load float** %val_out, align 8
  %10 = load float* %9, align 4
  ret float %10
}

declare void @_ZN9ap_ufixedILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1Ev(%class.ap_ufixed*)

declare i64* @_ZN9ap_ufixedILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii(%class.ap_ufixed*, i32, i32)

declare %class.ap_uint.2* @_ZN7ap_uintILi72EEaSERKS0_(%class.ap_uint.2*, %class.ap_uint.2*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0*, i64)

declare void @_ZN9ap_ufixedILi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi10ELi0ELS0_5ELS1_3ELi0EEERK8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_ufixed.6*, %class.ap_fixed*)

declare i16 @_ZmlILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0ELi5ELi0ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EE9ap_ufixedIXT_EXT0_EXT1_EXT2_EXT3_EES4_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i8, i8)

declare i8 @_ZmiILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0EE9ap_ufixedIXT_EXT0_EXT1_EXT2_EXT3_EEiRKS3_(i32, %class.ap_ufixed*)

declare void @_ZN9ap_ufixedILi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi16ELi1ELS0_5ELS1_3ELi0EEERK8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_ufixed.6*, %class.ap_fixed.7*)

declare i16 @_ZmiILi5ELi0EL9ap_q_mode5EL9ap_o_mode3ELi0ELi11ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EE9ap_ufixedIXT_EXT0_EXT1_EXT2_EXT3_EES4_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i8, i16)

declare zeroext i1 @_ZeqILi44ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEb8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EEi(i48, i32)

declare i48 @_ZplILi33ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0ELi11ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EE9ap_ufixedIXT4_EXT5_EXT6_EXT7_EXT8_EE(i40, i16)

declare i40 @_ZplILi22ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0ELi11ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EE9ap_ufixedIXT4_EXT5_EXT6_EXT7_EXT8_EE(i24, i16)

declare i24 @_ZplILi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0ELi11ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EE9ap_ufixedIXT_EXT0_EXT1_EXT2_EXT3_EES4_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i16, i16)

declare { i64, i16 } @_ZplILi57ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0ELi19ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i64, i24)

declare i64 @_ZplILi38ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0ELi19ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i40, i24)

declare i40 @_ZplILi19ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0ELi19ELi1ELS0_5ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i24, i24)

declare i24 @_ZmlILi8ELi11ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8ap_fixedIXplT_T0_EXT1_EXT2_EXT3_EXT4_EE7ap_uintIXT_EE9ap_ufixedIXT0_EXT1_EXT2_EXT3_EXT4_EE(i8, i16)

declare i64 @_ZNK8ap_fixedILi76ELi1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv(%class.ap_fixed.11*)

define internal void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %this_, i32 %index, i8 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.0, align 1
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint.0* %val, i32 0, i32 0
  %4 = bitcast [1 x i8]* %3 to i8*
  store i8 %val.coerce, i8* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.0]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %9, %class.ap_uint.0* %val)
  ret void
}

define internal i32 @_ZL36p_ZN2xf16Mat_4_256_256_1_4readIEEi_1P19xf_Mat_4_256_256_1_i(%struct.xf_Mat_4_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.1, align 1
  %2 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_4_256_256_1_* %this_, %struct.xf_Mat_4_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_4_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %6, i32 0, i32 4
  %8 = getelementptr inbounds [65536 x %class.ap_uint.1]* %7, i32 0, i64 %5
  %9 = bitcast %class.ap_uint.1* %1 to i8*
  %10 = bitcast %class.ap_uint.1* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 4, i32 1, i1 false)
  %11 = getelementptr %class.ap_uint.1* %1, i32 0, i32 0
  %12 = bitcast [4 x i8]* %11 to i32*
  %13 = load i32* %12, align 1
  ret i32 %13
}

define internal void @_ZL106p_ZN2xf11accel_utils11Array2xfMatILi64ELi4ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi4ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi64EER19xf_Mat_4_256_256_1_(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %struct.xf_Mat_4_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %class.ap_uint* %srcPtr, %class.ap_uint** %2, align 8
  store %struct.xf_Mat_4_256_256_1_* %dstMat, %struct.xf_Mat_4_256_256_1_** %3, align 8
  store i32 32, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi64EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_4_256_256_1_** %3, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_4_256_256_1_** %3, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %class.ap_uint** %2, align 8
  %12 = load i32* %rows, align 4
  %13 = load i32* %cols, align 4
  call void @_ZL121p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi32ELi32768EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1P14xf_accel_utilsP7ap_uintILi64EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %10, %class.ap_uint* %11, %"class.hls::stream"* %strm, i32 %12, i32 %13)
  %14 = load %struct.xf_accel_utils** %1, align 8
  %15 = load %struct.xf_Mat_4_256_256_1_** %3, align 8
  call void @_ZL125p_ZN2xf11accel_utils13hlsStrm2xfMatILi64ELi4ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi64EEER3MatILi4ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi64EEEER19xf_Mat_4_256_256_1_(%struct.xf_accel_utils* %14, %"class.hls::stream"* %strm, %struct.xf_Mat_4_256_256_1_* %15)
  ret void
}

define internal void @_ZL121p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi32ELi32768EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1P14xf_accel_utilsP7ap_uintILi64EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %"class.hls::stream"* %dstStrm, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %"class.hls::stream"*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pixel_width = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %class.ap_uint* %srcPtr, %class.ap_uint** %2, align 8
  store %"class.hls::stream"* %dstStrm, %"class.hls::stream"** %3, align 8
  store i32 %rows, i32* %4, align 4
  store i32 %cols, i32* %5, align 4
  store i32 32, i32* %pixel_width, align 4
  %6 = load i32* %4, align 4
  %7 = load i32* %5, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load i32* %pixel_width, align 4
  %10 = mul nsw i32 %8, %9
  %11 = add nsw i32 %10, 64
  %12 = sub nsw i32 %11, 1
  %13 = sdiv i32 %12, 64
  store i32 %13, i32* %loop_count, align 4
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %24, %0
  %15 = load i32* %i, align 4
  %16 = load i32* %loop_count, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %27

; <label>:18                                      ; preds = %14
  %19 = load %"class.hls::stream"** %3, align 8
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = load %class.ap_uint** %2, align 8
  %23 = getelementptr inbounds %class.ap_uint* %22, i64 %21
  call void @_ZN3hls6streamI7ap_uintILi64EEE5writeERKS2_(%"class.hls::stream"* %19, %class.ap_uint* %23)
  br label %24

; <label>:24                                      ; preds = %18
  %25 = load i32* %i, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %14

; <label>:27                                      ; preds = %14
  ret void
}

define internal void @_ZL125p_ZN2xf11accel_utils13hlsStrm2xfMatILi64ELi4ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi64EEER3MatILi4ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi64EEEER19xf_Mat_4_256_256_1_(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %struct.xf_Mat_4_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %"class.hls::stream"*, align 8
  %3 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %valid_bits = alloca i32, align 4
  %N_size = alloca i32, align 4
  %r = alloca %class.ap_uint, align 1
  %out = alloca %class.ap_uint.1, align 1
  %i = alloca i32, align 4
  %4 = alloca %class.ap_uint, align 1
  %5 = alloca %class.ap_uint.1, align 1
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %"class.hls::stream"* %srcStrm, %"class.hls::stream"** %2, align 8
  store %struct.xf_Mat_4_256_256_1_* %dstMat, %struct.xf_Mat_4_256_256_1_** %3, align 8
  %6 = load %struct.xf_Mat_4_256_256_1_** %3, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %6, i32 0, i32 1
  %8 = load i32* %7, align 4
  store i32 %8, i32* %rows, align 4
  %9 = load %struct.xf_Mat_4_256_256_1_** %3, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %9, i32 0, i32 2
  %11 = load i32* %10, align 4
  store i32 %11, i32* %cols, align 4
  %12 = load i32* %rows, align 4
  %13 = load i32* %cols, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 1
  store i32 %15, i32* %loop_count, align 4
  store i32 0, i32* %valid_bits, align 4
  store i32 32, i32* %N_size, align 4
  call void @_ZN7ap_uintILi64EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1* %out)
  br label %16

; <label>:16                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %71, %16
  %18 = load i32* %i, align 4
  %19 = load i32* %loop_count, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %74

; <label>:21                                      ; preds = %17
  %22 = load i32* %valid_bits, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %51

; <label>:24                                      ; preds = %21
  %25 = load i32* %valid_bits, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

; <label>:27                                      ; preds = %24
  %28 = load i32* %valid_bits, align 4
  %29 = sub nsw i32 64, %28
  %30 = call i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint* %r, i32 63, i32 %29)
  %31 = load i64* %30
  %32 = load i32* %valid_bits, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.1* %out, i32 %33, i32 0)
  store i64 %31, i64* %34
  br label %35

; <label>:35                                      ; preds = %27, %24
  %36 = load %"class.hls::stream"** %2, align 8
  %37 = call i64 @_ZN3hls6streamI7ap_uintILi64EEE4readEv(%"class.hls::stream"* %36)
  %38 = getelementptr %class.ap_uint* %4, i32 0, i32 0
  %39 = bitcast [8 x i8]* %38 to i64*
  store i64 %37, i64* %39, align 1
  %40 = call %class.ap_uint* @_ZN7ap_uintILi64EEaSERKS0_(%class.ap_uint* %r, %class.ap_uint* %4)
  %41 = load i32* %valid_bits, align 4
  %42 = sub nsw i32 32, %41
  %43 = sub nsw i32 %42, 1
  %44 = call i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint* %r, i32 %43, i32 0)
  %45 = load i64* %44
  %46 = load i32* %valid_bits, align 4
  %47 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.1* %out, i32 31, i32 %46)
  store i64 %45, i64* %47
  %48 = load i32* %valid_bits, align 4
  %49 = sub nsw i32 32, %48
  %50 = sub nsw i32 64, %49
  store i32 %50, i32* %valid_bits, align 4
  br label %63

; <label>:51                                      ; preds = %21
  %52 = load i32* %valid_bits, align 4
  %53 = sub nsw i32 64, %52
  %54 = add nsw i32 %53, 32
  %55 = sub nsw i32 %54, 1
  %56 = load i32* %valid_bits, align 4
  %57 = sub nsw i32 64, %56
  %58 = call i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint* %r, i32 %55, i32 %57)
  %59 = load i64* %58
  %60 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSEm(%class.ap_uint.1* %out, i64 %59)
  %61 = load i32* %valid_bits, align 4
  %62 = sub nsw i32 %61, 32
  store i32 %62, i32* %valid_bits, align 4
  br label %63

; <label>:63                                      ; preds = %51, %35
  %64 = load %struct.xf_Mat_4_256_256_1_** %3, align 8
  %65 = load i32* %i, align 4
  %66 = bitcast %class.ap_uint.1* %5 to i8*
  %67 = bitcast %class.ap_uint.1* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 4, i32 1, i1 false)
  %68 = getelementptr %class.ap_uint.1* %5, i32 0, i32 0
  %69 = bitcast [4 x i8]* %68 to i32*
  %70 = load i32* %69, align 1
  call void @_ZL52p_ZN2xf16Mat_4_256_256_1_5writeIEEi7ap_uintILi32EE_1P19xf_Mat_4_256_256_1_i7ap_uintILi32EE(%struct.xf_Mat_4_256_256_1_* %64, i32 %65, i32 %70)
  br label %71

; <label>:71                                      ; preds = %63
  %72 = load i32* %i, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i, align 4
  br label %17

; <label>:74                                      ; preds = %17
  ret void
}

declare i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.1*, i32, i32)

declare %class.ap_uint.1* @_ZN7ap_uintILi32EEaSEm(%class.ap_uint.1*, i64)

define internal void @_ZL52p_ZN2xf16Mat_4_256_256_1_5writeIEEi7ap_uintILi32EE_1P19xf_Mat_4_256_256_1_i7ap_uintILi32EE(%struct.xf_Mat_4_256_256_1_* %this_, i32 %index, i32 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.1, align 4
  store %struct.xf_Mat_4_256_256_1_* %this_, %struct.xf_Mat_4_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint.1* %val, i32 0, i32 0
  %4 = bitcast [4 x i8]* %3 to i32*
  store i32 %val.coerce, i32* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_4_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.1]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.1* %9, %class.ap_uint.1* %val)
  ret void
}

declare %class.ap_uint.1* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.1*, %class.ap_uint.1*)

define internal void @_ZL106p_ZN2xf11accel_utils11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi64EER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %class.ap_uint* %srcPtr, %class.ap_uint** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %dstMat, %struct.xf_Mat_0_256_256_1_** %3, align 8
  store i32 8, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi64EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %class.ap_uint** %2, align 8
  %12 = load i32* %rows, align 4
  %13 = load i32* %cols, align 4
  call void @_ZL119p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1P14xf_accel_utilsP7ap_uintILi64EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %10, %class.ap_uint* %11, %"class.hls::stream"* %strm, i32 %12, i32 %13)
  %14 = load %struct.xf_accel_utils** %1, align 8
  %15 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  call void @_ZL125p_ZN2xf11accel_utils13hlsStrm2xfMatILi64ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi64EEER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi64EEEER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %14, %"class.hls::stream"* %strm, %struct.xf_Mat_0_256_256_1_* %15)
  ret void
}

define internal void @_ZL119p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1P14xf_accel_utilsP7ap_uintILi64EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %"class.hls::stream"* %dstStrm, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %"class.hls::stream"*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pixel_width = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %class.ap_uint* %srcPtr, %class.ap_uint** %2, align 8
  store %"class.hls::stream"* %dstStrm, %"class.hls::stream"** %3, align 8
  store i32 %rows, i32* %4, align 4
  store i32 %cols, i32* %5, align 4
  store i32 8, i32* %pixel_width, align 4
  %6 = load i32* %4, align 4
  %7 = load i32* %5, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load i32* %pixel_width, align 4
  %10 = mul nsw i32 %8, %9
  %11 = add nsw i32 %10, 64
  %12 = sub nsw i32 %11, 1
  %13 = sdiv i32 %12, 64
  store i32 %13, i32* %loop_count, align 4
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %24, %0
  %15 = load i32* %i, align 4
  %16 = load i32* %loop_count, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %27

; <label>:18                                      ; preds = %14
  %19 = load %"class.hls::stream"** %3, align 8
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = load %class.ap_uint** %2, align 8
  %23 = getelementptr inbounds %class.ap_uint* %22, i64 %21
  call void @_ZN3hls6streamI7ap_uintILi64EEE5writeERKS2_(%"class.hls::stream"* %19, %class.ap_uint* %23)
  br label %24

; <label>:24                                      ; preds = %18
  %25 = load i32* %i, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %14

; <label>:27                                      ; preds = %14
  ret void
}

define internal void @_ZL125p_ZN2xf11accel_utils13hlsStrm2xfMatILi64ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi64EEER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi64EEEER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %"class.hls::stream"*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %valid_bits = alloca i32, align 4
  %N_size = alloca i32, align 4
  %r = alloca %class.ap_uint, align 1
  %out = alloca %class.ap_uint.0, align 1
  %i = alloca i32, align 4
  %4 = alloca %class.ap_uint, align 1
  %5 = alloca %class.ap_uint.0, align 1
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %"class.hls::stream"* %srcStrm, %"class.hls::stream"** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %dstMat, %struct.xf_Mat_0_256_256_1_** %3, align 8
  %6 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %6, i32 0, i32 1
  %8 = load i32* %7, align 4
  store i32 %8, i32* %rows, align 4
  %9 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %9, i32 0, i32 2
  %11 = load i32* %10, align 4
  store i32 %11, i32* %cols, align 4
  %12 = load i32* %rows, align 4
  %13 = load i32* %cols, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 1
  store i32 %15, i32* %loop_count, align 4
  store i32 0, i32* %valid_bits, align 4
  store i32 8, i32* %N_size, align 4
  call void @_ZN7ap_uintILi64EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %out)
  br label %16

; <label>:16                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %71, %16
  %18 = load i32* %i, align 4
  %19 = load i32* %loop_count, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %74

; <label>:21                                      ; preds = %17
  %22 = load i32* %valid_bits, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %51

; <label>:24                                      ; preds = %21
  %25 = load i32* %valid_bits, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

; <label>:27                                      ; preds = %24
  %28 = load i32* %valid_bits, align 4
  %29 = sub nsw i32 64, %28
  %30 = call i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint* %r, i32 63, i32 %29)
  %31 = load i64* %30
  %32 = load i32* %valid_bits, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %out, i32 %33, i32 0)
  store i64 %31, i64* %34
  br label %35

; <label>:35                                      ; preds = %27, %24
  %36 = load %"class.hls::stream"** %2, align 8
  %37 = call i64 @_ZN3hls6streamI7ap_uintILi64EEE4readEv(%"class.hls::stream"* %36)
  %38 = getelementptr %class.ap_uint* %4, i32 0, i32 0
  %39 = bitcast [8 x i8]* %38 to i64*
  store i64 %37, i64* %39, align 1
  %40 = call %class.ap_uint* @_ZN7ap_uintILi64EEaSERKS0_(%class.ap_uint* %r, %class.ap_uint* %4)
  %41 = load i32* %valid_bits, align 4
  %42 = sub nsw i32 8, %41
  %43 = sub nsw i32 %42, 1
  %44 = call i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint* %r, i32 %43, i32 0)
  %45 = load i64* %44
  %46 = load i32* %valid_bits, align 4
  %47 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %out, i32 7, i32 %46)
  store i64 %45, i64* %47
  %48 = load i32* %valid_bits, align 4
  %49 = sub nsw i32 8, %48
  %50 = sub nsw i32 64, %49
  store i32 %50, i32* %valid_bits, align 4
  br label %63

; <label>:51                                      ; preds = %21
  %52 = load i32* %valid_bits, align 4
  %53 = sub nsw i32 64, %52
  %54 = add nsw i32 %53, 8
  %55 = sub nsw i32 %54, 1
  %56 = load i32* %valid_bits, align 4
  %57 = sub nsw i32 64, %56
  %58 = call i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint* %r, i32 %55, i32 %57)
  %59 = load i64* %58
  %60 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %out, i64 %59)
  %61 = load i32* %valid_bits, align 4
  %62 = sub nsw i32 %61, 8
  store i32 %62, i32* %valid_bits, align 4
  br label %63

; <label>:63                                      ; preds = %51, %35
  %64 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %65 = load i32* %i, align 4
  %66 = bitcast %class.ap_uint.0* %5 to i8*
  %67 = bitcast %class.ap_uint.0* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 1, i32 1, i1 false)
  %68 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %69 = bitcast [1 x i8]* %68 to i8*
  %70 = load i8* %69, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %64, i32 %65, i8 %70)
  br label %71

; <label>:71                                      ; preds = %63
  %72 = load i32* %i, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i, align 4
  br label %17

; <label>:74                                      ; preds = %17
  ret void
}

define internal void @_ZL38p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1P19xf_Mat_4_256_256_1_iib(%struct.xf_Mat_4_256_256_1_* %this_, i32 %_rows, i32 %_cols, i1 zeroext %allocate) nounwind uwtable {
  %1 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.xf_Mat_4_256_256_1_* %this_, %struct.xf_Mat_4_256_256_1_** %1, align 8
  store i32 %_rows, i32* %2, align 4
  store i32 %_cols, i32* %3, align 4
  %5 = zext i1 %allocate to i8
  store i8 %5, i8* %4, align 1
  %6 = load i32* %2, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %0
  %9 = load i32* %2, align 4
  %10 = icmp sle i32 %9, 256
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %8
  %12 = load i32* %3, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %11
  %15 = load i32* %3, align 4
  %16 = icmp sle i32 %15, 256
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %14
  br label %20

; <label>:18                                      ; preds = %14, %11, %8, %0
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1P19xf_Mat_4_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load i32* %2, align 4
  %22 = load %struct.xf_Mat_4_256_256_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32* %3, align 4
  %25 = load %struct.xf_Mat_4_256_256_1_** %1, align 8
  %26 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32* %2, align 4
  %28 = load i32* %3, align 4
  %29 = ashr i32 %28, 0
  %30 = mul nsw i32 %27, %29
  %31 = load %struct.xf_Mat_4_256_256_1_** %1, align 8
  %32 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i8* %4, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %20
  br label %36

; <label>:36                                      ; preds = %35, %20
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_4_256_256_1_C2Ev(%struct.xf_Mat_4_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  store %struct.xf_Mat_4_256_256_1_* %this, %struct.xf_Mat_4_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_4_256_256_1_** %1
  %3 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %2, i32 0, i32 4
  %4 = getelementptr inbounds [65536 x %class.ap_uint.1]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.1* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint.1* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1* %7)
  %8 = getelementptr inbounds %class.ap_uint.1* %7, i64 1
  %9 = icmp eq %class.ap_uint.1* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  ret void
}

define internal void @_ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib(%struct.xf_Mat_0_256_256_1_* %this_, i32 %_rows, i32 %_cols, i1 zeroext %allocate) nounwind uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i32 %_rows, i32* %2, align 4
  store i32 %_cols, i32* %3, align 4
  %5 = zext i1 %allocate to i8
  store i8 %5, i8* %4, align 1
  %6 = load i32* %2, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %0
  %9 = load i32* %2, align 4
  %10 = icmp sle i32 %9, 256
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %8
  %12 = load i32* %3, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %11
  %15 = load i32* %3, align 4
  %16 = icmp sle i32 %15, 256
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %14
  br label %20

; <label>:18                                      ; preds = %14, %11, %8, %0
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load i32* %2, align 4
  %22 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32* %3, align 4
  %25 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %26 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32* %2, align 4
  %28 = load i32* %3, align 4
  %29 = ashr i32 %28, 0
  %30 = mul nsw i32 %27, %29
  %31 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %32 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i8* %4, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %20
  br label %36

; <label>:36                                      ; preds = %35, %20
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_0_256_256_1_C2Ev(%struct.xf_Mat_0_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  store %struct.xf_Mat_0_256_256_1_* %this, %struct.xf_Mat_0_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_0_256_256_1_** %1
  %3 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %2, i32 0, i32 4
  %4 = getelementptr inbounds [65536 x %class.ap_uint.0]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.0* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint.0* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %7)
  %8 = getelementptr inbounds %class.ap_uint.0* %7, i64 1
  %9 = icmp eq %class.ap_uint.0* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  ret void
}

; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/lknpyroflow_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [8 x i8] }
%class.ap_uint.0 = type { [4 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.1] }
%class.ap_uint.1 = type { [1 x i8] }
%struct.xf_Mat_4_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint.0 }
%"class.hls::stream.2" = type { i8 }
%"class.hls::stream.3" = type { i32 }
%"class.hls::stream.4" = type { float }
%struct.mywide_t_1_ = type { [1 x i8] }
%"class.hls::stream.5" = type { %class.ap_uint }

@.str = private unnamed_addr constant [9 x i8] c"f0Stream\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"f1Stream\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"f0Delayed\00", align 1
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win = internal global [52 x i8] zeroinitializer, align 16
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img2Win = internal global [26 x i8] zeroinitializer, align 16
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4ixix = internal global i32 0, align 4
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4ixiy = internal global i32 0, align 4
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4iyiy = internal global i32 0, align 4
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE3dix = internal global i32 0, align 4
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE3diy = internal global i32 0, align 4
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6csIxix = internal global [256 x i32] zeroinitializer, align 16
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6csIxiy = internal global [256 x i32] zeroinitializer, align 16
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6csIyiy = internal global [256 x i32] zeroinitializer, align 16
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5csDix = internal global [256 x i32] zeroinitializer, align 16
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5csDiy = internal global [256 x i32] zeroinitializer, align 16
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6cbIxix = internal global [256 x i32] zeroinitializer, align 16
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6cbIxiy = internal global [256 x i32] zeroinitializer, align 16
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6cbIyiy = internal global [256 x i32] zeroinitializer, align 16
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5cbDix = internal global [256 x i32] zeroinitializer, align 16
@_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5cbDiy = internal global [256 x i32] zeroinitializer, align 16
@_ZZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iiiE3lb1 = internal global [26 x [256 x i8]] zeroinitializer, align 16
@_ZZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iiiE3lb2 = internal global [26 x [256 x i8]] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1P19xf_Mat_4_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1(struct xf_Mat_4_256_256_1_ *, int, int, bool)\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z22dense_non_pyr_of_accelP7ap_uintILi64EES1_PS_ILi32EES3_ii(%class.ap_uint* %img_curr, %class.ap_uint* %img_prev, %class.ap_uint.0* %img_outx, %class.ap_uint.0* %img_outy, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %class.ap_uint.0*, align 8
  %4 = alloca %class.ap_uint.0*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %in_curr_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %in_prev_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %outx_mat = alloca %struct.xf_Mat_4_256_256_1_, align 4
  %outy_mat = alloca %struct.xf_Mat_4_256_256_1_, align 4
  store %class.ap_uint* %img_curr, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_prev, %class.ap_uint** %2, align 8
  store %class.ap_uint.0* %img_outx, %class.ap_uint.0** %3, align 8
  store %class.ap_uint.0* %img_outy, %class.ap_uint.0** %4, align 8
  store i32 %rows, i32* %5, align 4
  store i32 %cols, i32* %6, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_curr_mat)
  %7 = load i32* %5, align 4
  %8 = load i32* %6, align 4
  call void @_ZL34p_ZN2xf16Mat_0_256_256_1_C2IEEii_1P19xf_Mat_0_256_256_1_ii(%struct.xf_Mat_0_256_256_1_* %in_curr_mat, i32 %7, i32 %8)
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_prev_mat)
  %9 = load i32* %5, align 4
  %10 = load i32* %6, align 4
  call void @_ZL34p_ZN2xf16Mat_0_256_256_1_C2IEEii_1P19xf_Mat_0_256_256_1_ii(%struct.xf_Mat_0_256_256_1_* %in_prev_mat, i32 %9, i32 %10)
  call void @_ZN19xf_Mat_4_256_256_1_C1Ev(%struct.xf_Mat_4_256_256_1_* %outx_mat)
  %11 = load i32* %5, align 4
  %12 = load i32* %6, align 4
  call void @_ZL34p_ZN2xf16Mat_4_256_256_1_C2IEEii_1P19xf_Mat_4_256_256_1_ii(%struct.xf_Mat_4_256_256_1_* %outx_mat, i32 %11, i32 %12)
  call void @_ZN19xf_Mat_4_256_256_1_C1Ev(%struct.xf_Mat_4_256_256_1_* %outy_mat)
  %13 = load i32* %5, align 4
  %14 = load i32* %6, align 4
  call void @_ZL34p_ZN2xf16Mat_4_256_256_1_C2IEEii_1P19xf_Mat_4_256_256_1_ii(%struct.xf_Mat_4_256_256_1_* %outy_mat, i32 %13, i32 %14)
  %15 = load %class.ap_uint** %1, align 8
  call void @_ZL93p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_0_256_256_1_(%class.ap_uint* %15, %struct.xf_Mat_0_256_256_1_* %in_curr_mat)
  %16 = load %class.ap_uint** %2, align 8
  call void @_ZL93p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_0_256_256_1_(%class.ap_uint* %16, %struct.xf_Mat_0_256_256_1_* %in_prev_mat)
  call void @_ZL175p_ZN2xf24DenseNonPyrLKOpticalFlowILi25ELi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_R19xf_Mat_4_256_256_1_S2_(%struct.xf_Mat_0_256_256_1_* %in_curr_mat, %struct.xf_Mat_0_256_256_1_* %in_prev_mat, %struct.xf_Mat_4_256_256_1_* %outx_mat, %struct.xf_Mat_4_256_256_1_* %outy_mat)
  %17 = load %class.ap_uint.0** %3, align 8
  call void @_ZL93p_ZN2xf11xfMat2ArrayILi32ELi4ELi256ELi256ELi1EEER3MatILi4ELi256ELi256ELi1EEP7ap_uintILi32EE_1R19xf_Mat_4_256_256_1_P7ap_uintILi32EE(%struct.xf_Mat_4_256_256_1_* %outx_mat, %class.ap_uint.0* %17)
  %18 = load %class.ap_uint.0** %4, align 8
  call void @_ZL93p_ZN2xf11xfMat2ArrayILi32ELi4ELi256ELi256ELi1EEER3MatILi4ELi256ELi256ELi1EEP7ap_uintILi32EE_1R19xf_Mat_4_256_256_1_P7ap_uintILi32EE(%struct.xf_Mat_4_256_256_1_* %outy_mat, %class.ap_uint.0* %18)
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  store %struct.xf_Mat_0_256_256_1_* %this, %struct.xf_Mat_0_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_0_256_256_1_** %1
  call void @_ZN19xf_Mat_0_256_256_1_C2Ev(%struct.xf_Mat_0_256_256_1_* %2)
  ret void
}

define internal void @_ZL34p_ZN2xf16Mat_0_256_256_1_C2IEEii_1P19xf_Mat_0_256_256_1_ii(%struct.xf_Mat_0_256_256_1_* %this_, i32 %_rows, i32 %_cols) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i32 %_rows, i32* %2, align 4
  store i32 %_cols, i32* %3, align 4
  %4 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %5 = load i32* %2, align 4
  %6 = load i32* %3, align 4
  call void @_ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib(%struct.xf_Mat_0_256_256_1_* %4, i32 %5, i32 %6, i1 zeroext true)
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_4_256_256_1_C1Ev(%struct.xf_Mat_4_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  store %struct.xf_Mat_4_256_256_1_* %this, %struct.xf_Mat_4_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_4_256_256_1_** %1
  call void @_ZN19xf_Mat_4_256_256_1_C2Ev(%struct.xf_Mat_4_256_256_1_* %2)
  ret void
}

define internal void @_ZL34p_ZN2xf16Mat_4_256_256_1_C2IEEii_1P19xf_Mat_4_256_256_1_ii(%struct.xf_Mat_4_256_256_1_* %this_, i32 %_rows, i32 %_cols) uwtable {
  %1 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.xf_Mat_4_256_256_1_* %this_, %struct.xf_Mat_4_256_256_1_** %1, align 8
  store i32 %_rows, i32* %2, align 4
  store i32 %_cols, i32* %3, align 4
  %4 = load %struct.xf_Mat_4_256_256_1_** %1, align 8
  %5 = load i32* %2, align 4
  %6 = load i32* %3, align 4
  call void @_ZL38p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1P19xf_Mat_4_256_256_1_iib(%struct.xf_Mat_4_256_256_1_* %4, i32 %5, i32 %6, i1 zeroext true)
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

define internal void @_ZL175p_ZN2xf24DenseNonPyrLKOpticalFlowILi25ELi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_R19xf_Mat_4_256_256_1_S2_(%struct.xf_Mat_0_256_256_1_* %frame0, %struct.xf_Mat_0_256_256_1_* %frame1, %struct.xf_Mat_4_256_256_1_* %flowx, %struct.xf_Mat_4_256_256_1_* %flowy) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %4 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  store %struct.xf_Mat_0_256_256_1_* %frame0, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %frame1, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Mat_4_256_256_1_* %flowx, %struct.xf_Mat_4_256_256_1_** %3, align 8
  store %struct.xf_Mat_4_256_256_1_* %flowy, %struct.xf_Mat_4_256_256_1_** %4, align 8
  %5 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %6 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %5, i32 0, i32 4
  %7 = getelementptr inbounds [65536 x %class.ap_uint.1]* %6, i32 0, i32 0
  %8 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %8, i32 0, i32 4
  %10 = getelementptr inbounds [65536 x %class.ap_uint.1]* %9, i32 0, i32 0
  %11 = load %struct.xf_Mat_4_256_256_1_** %3, align 8
  %12 = load %struct.xf_Mat_4_256_256_1_** %4, align 8
  %13 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %14 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %13, i32 0, i32 1
  %15 = load i32* %14, align 4
  %16 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %17 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %16, i32 0, i32 2
  %18 = load i32* %17, align 4
  %19 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %20 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %19, i32 0, i32 3
  %21 = load i32* %20, align 4
  call void @_ZL137p_ZN2xf13fpga_optflow8ILi256ELi256ELi1ELi25ELb0EEEP7ap_uintILi8EEP7ap_uintILi8EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEiiiP7ap_uintILi8EES1_R19xf_Mat_4_256_256_1_S3_iii(%class.ap_uint.1* %7, %class.ap_uint.1* %10, %struct.xf_Mat_4_256_256_1_* %11, %struct.xf_Mat_4_256_256_1_* %12, i32 %15, i32 %18, i32 %21)
  ret void
}

define internal void @_ZL93p_ZN2xf11xfMat2ArrayILi32ELi4ELi256ELi256ELi1EEER3MatILi4ELi256ELi256ELi1EEP7ap_uintILi32EE_1R19xf_Mat_4_256_256_1_P7ap_uintILi32EE(%struct.xf_Mat_4_256_256_1_* %srcMat, %class.ap_uint.0* %dstPtr) uwtable {
  %1 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %2 = alloca %class.ap_uint.0*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %struct.xf_Mat_4_256_256_1_* %srcMat, %struct.xf_Mat_4_256_256_1_** %1, align 8
  store %class.ap_uint.0* %dstPtr, %class.ap_uint.0** %2, align 8
  %3 = load %struct.xf_Mat_4_256_256_1_** %1, align 8
  %4 = load %class.ap_uint.0** %2, align 8
  call void @_ZL106p_ZN2xf11accel_utils11xfMat2ArrayILi32ELi4ELi256ELi256ELi1EEER3MatILi4ELi256ELi256ELi1EEP7ap_uintILi32EE_1P14xf_accel_utilsR19xf_Mat_4_256_256_1_P7ap_uintILi32EE(%struct.xf_accel_utils* %au, %struct.xf_Mat_4_256_256_1_* %3, %class.ap_uint.0* %4)
  ret void
}

define internal void @_ZL106p_ZN2xf11accel_utils11xfMat2ArrayILi32ELi4ELi256ELi256ELi1EEER3MatILi4ELi256ELi256ELi1EEP7ap_uintILi32EE_1P14xf_accel_utilsR19xf_Mat_4_256_256_1_P7ap_uintILi32EE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_4_256_256_1_* %srcMat, %class.ap_uint.0* %dstPtr) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %3 = alloca %class.ap_uint.0*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %struct.xf_Mat_4_256_256_1_* %srcMat, %struct.xf_Mat_4_256_256_1_** %2, align 8
  store %class.ap_uint.0* %dstPtr, %class.ap_uint.0** %3, align 8
  store i32 32, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi32EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_4_256_256_1_** %2, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_4_256_256_1_** %2, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %struct.xf_Mat_4_256_256_1_** %2, align 8
  call void @_ZL125p_ZN2xf11accel_utils13xfMat2hlsStrmILi32ELi4ELi256ELi256ELi1ELi65536EEER3MatILi4ELi256ELi256ELi1EER6streamI7ap_uintILi32EEE_1P14xf_accel_utilsR19xf_Mat_4_256_256_1_RN3hls6streamI7ap_uintILi32EEEE(%struct.xf_accel_utils* %10, %struct.xf_Mat_4_256_256_1_* %11, %"class.hls::stream"* %strm)
  %12 = load %struct.xf_accel_utils** %1, align 8
  %13 = load %class.ap_uint.0** %3, align 8
  %14 = load i32* %rows, align 4
  %15 = load i32* %cols, align 4
  call void @_ZL121p_ZN2xf11accel_utils13hlsStrm2ArrayILi32ELi256ELi256ELi1ELi1ELi32ELi65536EEER6streamI7ap_uintILi32EEEP7ap_uintILi32EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi32EEEEPS4_ii(%struct.xf_accel_utils* %12, %"class.hls::stream"* %strm, %class.ap_uint.0* %13, i32 %14, i32 %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi32EEEC1Ev(%"class.hls::stream"*)

define internal void @_ZL125p_ZN2xf11accel_utils13xfMat2hlsStrmILi32ELi4ELi256ELi256ELi1ELi65536EEER3MatILi4ELi256ELi256ELi1EER6streamI7ap_uintILi32EEE_1P14xf_accel_utilsR19xf_Mat_4_256_256_1_RN3hls6streamI7ap_uintILi32EEEE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_4_256_256_1_* %srcMat, %"class.hls::stream"* %dstStrm) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %3 = alloca %"class.hls::stream"*, align 8
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %bits_to_add = alloca i32, align 4
  %N_size = alloca i32, align 4
  %r = alloca %class.ap_uint.0, align 1
  %in = alloca %class.ap_uint.0, align 1
  %i = alloca i32, align 4
  %4 = alloca %class.ap_uint.0, align 1
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %struct.xf_Mat_4_256_256_1_* %srcMat, %struct.xf_Mat_4_256_256_1_** %2, align 8
  store %"class.hls::stream"* %dstStrm, %"class.hls::stream"** %3, align 8
  %5 = load %struct.xf_Mat_4_256_256_1_** %2, align 8
  %6 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  store i32 %7, i32* %rows, align 4
  %8 = load %struct.xf_Mat_4_256_256_1_** %2, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %8, i32 0, i32 2
  %10 = load i32* %9, align 4
  store i32 %10, i32* %cols, align 4
  %11 = load i32* %rows, align 4
  %12 = load i32* %cols, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sdiv i32 %13, 1
  store i32 %14, i32* %loop_count, align 4
  store i32 32, i32* %bits_to_add, align 4
  store i32 32, i32* %N_size, align 4
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.0* %r)
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.0* %in)
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
  %21 = load %struct.xf_Mat_4_256_256_1_** %2, align 8
  %22 = load i32* %i, align 4
  %23 = call i32 @_ZL36p_ZN2xf16Mat_4_256_256_1_4readIEEi_1P19xf_Mat_4_256_256_1_i(%struct.xf_Mat_4_256_256_1_* %21, i32 %22)
  %24 = getelementptr %class.ap_uint.0* %4, i32 0, i32 0
  %25 = bitcast [4 x i8]* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = call %class.ap_uint.0* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.0* %in, %class.ap_uint.0* %4)
  %27 = load i32* %bits_to_add, align 4
  %28 = icmp sle i32 %27, 32
  br i1 %28, label %29, label %52

; <label>:29                                      ; preds = %20
  %30 = load i32* %bits_to_add, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.0* %in, i32 %31, i32 0)
  %33 = load i64* %32
  %34 = load i32* %bits_to_add, align 4
  %35 = sub nsw i32 32, %34
  %36 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.0* %r, i32 31, i32 %35)
  store i64 %33, i64* %36
  %37 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi32EEE5writeERKS2_(%"class.hls::stream"* %37, %class.ap_uint.0* %r)
  %38 = load i32* %bits_to_add, align 4
  %39 = icmp ne i32 %38, 32
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %29
  %41 = load i32* %bits_to_add, align 4
  %42 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.0* %in, i32 31, i32 %41)
  %43 = load i64* %42
  %44 = load i32* %bits_to_add, align 4
  %45 = sub nsw i32 32, %44
  %46 = sub nsw i32 %45, 1
  %47 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.0* %r, i32 %46, i32 0)
  store i64 %43, i64* %47
  br label %48

; <label>:48                                      ; preds = %40, %29
  %49 = load i32* %bits_to_add, align 4
  %50 = sub nsw i32 32, %49
  %51 = sub nsw i32 32, %50
  store i32 %51, i32* %bits_to_add, align 4
  br label %63

; <label>:52                                      ; preds = %20
  %53 = call i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.0* %in)
  %54 = load i32* %bits_to_add, align 4
  %55 = sub nsw i32 32, %54
  %56 = add nsw i32 %55, 32
  %57 = sub nsw i32 %56, 1
  %58 = load i32* %bits_to_add, align 4
  %59 = sub nsw i32 32, %58
  %60 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.0* %r, i32 %57, i32 %59)
  store i64 %53, i64* %60
  %61 = load i32* %bits_to_add, align 4
  %62 = sub nsw i32 %61, 32
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
  %69 = icmp ne i32 %68, 32
  br i1 %69, label %70, label %72

; <label>:70                                      ; preds = %67
  %71 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi32EEE5writeERKS2_(%"class.hls::stream"* %71, %class.ap_uint.0* %r)
  br label %72

; <label>:72                                      ; preds = %70, %67
  ret void
}

define internal void @_ZL121p_ZN2xf11accel_utils13hlsStrm2ArrayILi32ELi256ELi256ELi1ELi1ELi32ELi65536EEER6streamI7ap_uintILi32EEEP7ap_uintILi32EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi32EEEEPS4_ii(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %class.ap_uint.0* %dstPtr, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %"class.hls::stream"*, align 8
  %3 = alloca %class.ap_uint.0*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pixel_width = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %i = alloca i32, align 4
  %6 = alloca %class.ap_uint.0, align 1
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %"class.hls::stream"* %srcStrm, %"class.hls::stream"** %2, align 8
  store %class.ap_uint.0* %dstPtr, %class.ap_uint.0** %3, align 8
  store i32 %rows, i32* %4, align 4
  store i32 %cols, i32* %5, align 4
  store i32 32, i32* %pixel_width, align 4
  %7 = load i32* %4, align 4
  %8 = load i32* %5, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32* %pixel_width, align 4
  %11 = mul nsw i32 %9, %10
  %12 = add nsw i32 %11, 32
  %13 = sub nsw i32 %12, 1
  %14 = sdiv i32 %13, 32
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
  %22 = load %class.ap_uint.0** %3, align 8
  %23 = getelementptr inbounds %class.ap_uint.0* %22, i64 %21
  %24 = load %"class.hls::stream"** %2, align 8
  %25 = call i32 @_ZN3hls6streamI7ap_uintILi32EEE4readEv(%"class.hls::stream"* %24)
  %26 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %27 = bitcast [4 x i8]* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = call %class.ap_uint.0* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.0* %23, %class.ap_uint.0* %6)
  br label %29

; <label>:29                                      ; preds = %19
  %30 = load i32* %i, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %i, align 4
  br label %15

; <label>:32                                      ; preds = %15
  ret void
}

declare %class.ap_uint.0* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.0*, %class.ap_uint.0*)

declare i32 @_ZN3hls6streamI7ap_uintILi32EEE4readEv(%"class.hls::stream"*)

declare void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.0*)

define internal i32 @_ZL36p_ZN2xf16Mat_4_256_256_1_4readIEEi_1P19xf_Mat_4_256_256_1_i(%struct.xf_Mat_4_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.0, align 1
  %2 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_4_256_256_1_* %this_, %struct.xf_Mat_4_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_4_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %6, i32 0, i32 4
  %8 = getelementptr inbounds [65536 x %class.ap_uint.0]* %7, i32 0, i64 %5
  %9 = bitcast %class.ap_uint.0* %1 to i8*
  %10 = bitcast %class.ap_uint.0* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 4, i32 1, i1 false)
  %11 = getelementptr %class.ap_uint.0* %1, i32 0, i32 0
  %12 = bitcast [4 x i8]* %11 to i32*
  %13 = load i32* %12, align 1
  ret i32 %13
}

declare i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.0*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi32EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint.0*)

declare i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.0*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define internal void @_ZL137p_ZN2xf13fpga_optflow8ILi256ELi256ELi1ELi25ELb0EEEP7ap_uintILi8EEP7ap_uintILi8EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEiiiP7ap_uintILi8EES1_R19xf_Mat_4_256_256_1_S3_iii(%class.ap_uint.1* %frame0, %class.ap_uint.1* %frame1, %struct.xf_Mat_4_256_256_1_* %flowx, %struct.xf_Mat_4_256_256_1_* %flowy, i32 %rows, i32 %cols, i32 %size) uwtable {
  %1 = alloca %class.ap_uint.1*, align 8
  %2 = alloca %class.ap_uint.1*, align 8
  %3 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %4 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %class.ap_uint.1* %frame0, %class.ap_uint.1** %1, align 8
  store %class.ap_uint.1* %frame1, %class.ap_uint.1** %2, align 8
  store %struct.xf_Mat_4_256_256_1_* %flowx, %struct.xf_Mat_4_256_256_1_** %3, align 8
  store %struct.xf_Mat_4_256_256_1_* %flowy, %struct.xf_Mat_4_256_256_1_** %4, align 8
  store i32 %rows, i32* %5, align 4
  store i32 %cols, i32* %6, align 4
  store i32 %size, i32* %7, align 4
  %8 = load %class.ap_uint.1** %1, align 8
  %9 = load %class.ap_uint.1** %2, align 8
  %10 = load %struct.xf_Mat_4_256_256_1_** %3, align 8
  %11 = load %struct.xf_Mat_4_256_256_1_** %4, align 8
  %12 = load i32* %5, align 4
  %13 = load i32* %6, align 4
  %14 = load i32* %7, align 4
  call void @_ZL131p_ZN2xf8flowWrapILi256ELi256ELi1ELi25ELb0EEEP7ap_uintILi8EEP7ap_uintILi8EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEiiiP7ap_uintILi8EES1_R19xf_Mat_4_256_256_1_S3_iii(%class.ap_uint.1* %8, %class.ap_uint.1* %9, %struct.xf_Mat_4_256_256_1_* %10, %struct.xf_Mat_4_256_256_1_* %11, i32 %12, i32 %13, i32 %14)
  ret void
}

define internal void @_ZL131p_ZN2xf8flowWrapILi256ELi256ELi1ELi25ELb0EEEP7ap_uintILi8EEP7ap_uintILi8EER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEiiiP7ap_uintILi8EES1_R19xf_Mat_4_256_256_1_S3_iii(%class.ap_uint.1* %frame0, %class.ap_uint.1* %frame1, %struct.xf_Mat_4_256_256_1_* %flowx, %struct.xf_Mat_4_256_256_1_* %flowy, i32 %rows, i32 %cols, i32 %size) uwtable {
  %1 = alloca %class.ap_uint.1*, align 8
  %2 = alloca %class.ap_uint.1*, align 8
  %3 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %4 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %f0Stream = alloca %"class.hls::stream.2", align 1
  %f1Stream = alloca %"class.hls::stream.2", align 1
  %f0Delayed = alloca %"class.hls::stream.2", align 1
  %img1Col = alloca [26 x %"class.hls::stream.2"], align 16
  %img2Col = alloca [26 x %"class.hls::stream.2"], align 16
  %ixix = alloca %"class.hls::stream.3", align 4
  %ixiy = alloca %"class.hls::stream.3", align 4
  %iyiy = alloca %"class.hls::stream.3", align 4
  %dix = alloca %"class.hls::stream.3", align 4
  %diy = alloca %"class.hls::stream.3", align 4
  %fx = alloca %"class.hls::stream.4", align 4
  %fy = alloca %"class.hls::stream.4", align 4
  store %class.ap_uint.1* %frame0, %class.ap_uint.1** %1, align 8
  store %class.ap_uint.1* %frame1, %class.ap_uint.1** %2, align 8
  store %struct.xf_Mat_4_256_256_1_* %flowx, %struct.xf_Mat_4_256_256_1_** %3, align 8
  store %struct.xf_Mat_4_256_256_1_* %flowy, %struct.xf_Mat_4_256_256_1_** %4, align 8
  store i32 %rows, i32* %5, align 4
  store i32 %cols, i32* %6, align 4
  store i32 %size, i32* %7, align 4
  call void @_ZN3hls6streamIhEC1EPKc(%"class.hls::stream.2"* %f0Stream, i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0))
  call void @_ZN3hls6streamIhEC1EPKc(%"class.hls::stream.2"* %f1Stream, i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0))
  call void @_ZN3hls6streamIhEC1EPKc(%"class.hls::stream.2"* %f0Delayed, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0))
  %8 = getelementptr inbounds [26 x %"class.hls::stream.2"]* %img1Col, i32 0, i32 0
  %9 = getelementptr inbounds %"class.hls::stream.2"* %8, i64 26
  br label %10

; <label>:10                                      ; preds = %10, %0
  %11 = phi %"class.hls::stream.2"* [ %8, %0 ], [ %12, %10 ]
  call void @_ZN3hls6streamIhEC1Ev(%"class.hls::stream.2"* %11)
  %12 = getelementptr inbounds %"class.hls::stream.2"* %11, i64 1
  %13 = icmp eq %"class.hls::stream.2"* %12, %9
  br i1 %13, label %14, label %10

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds [26 x %"class.hls::stream.2"]* %img2Col, i32 0, i32 0
  %16 = getelementptr inbounds %"class.hls::stream.2"* %15, i64 26
  br label %17

; <label>:17                                      ; preds = %17, %14
  %18 = phi %"class.hls::stream.2"* [ %15, %14 ], [ %19, %17 ]
  call void @_ZN3hls6streamIhEC1Ev(%"class.hls::stream.2"* %18)
  %19 = getelementptr inbounds %"class.hls::stream.2"* %18, i64 1
  %20 = icmp eq %"class.hls::stream.2"* %19, %16
  br i1 %20, label %21, label %17

; <label>:21                                      ; preds = %17
  call void @_ZN3hls6streamIiEC1Ev(%"class.hls::stream.3"* %ixix)
  call void @_ZN3hls6streamIiEC1Ev(%"class.hls::stream.3"* %ixiy)
  call void @_ZN3hls6streamIiEC1Ev(%"class.hls::stream.3"* %iyiy)
  call void @_ZN3hls6streamIiEC1Ev(%"class.hls::stream.3"* %dix)
  call void @_ZN3hls6streamIiEC1Ev(%"class.hls::stream.3"* %diy)
  call void @_ZN3hls6streamIfEC1Ev(%"class.hls::stream.4"* %fx)
  call void @_ZN3hls6streamIfEC1Ev(%"class.hls::stream.4"* %fy)
  %22 = load %class.ap_uint.1** %1, align 8
  %23 = load i32* %5, align 4
  %24 = load i32* %6, align 4
  %25 = load i32* %7, align 4
  call void @_ZL73p_ZN2xf11readMatRowsILi256ELi256ELi1ELi25EEEP7ap_uintILi8EER6streamIhEiiiP7ap_uintILi8EERN3hls6streamIhEEiii(%class.ap_uint.1* %22, %"class.hls::stream.2"* %f0Stream, i32 %23, i32 %24, i32 %25)
  %26 = load %class.ap_uint.1** %2, align 8
  %27 = load i32* %5, align 4
  %28 = load i32* %6, align 4
  %29 = load i32* %7, align 4
  call void @_ZL73p_ZN2xf11readMatRowsILi256ELi256ELi1ELi25EEEP7ap_uintILi8EER6streamIhEiiiP7ap_uintILi8EERN3hls6streamIhEEiii(%class.ap_uint.1* %26, %"class.hls::stream.2"* %f1Stream, i32 %27, i32 %28, i32 %29)
  %30 = getelementptr inbounds [26 x %"class.hls::stream.2"]* %img1Col, i32 0, i32 0
  %31 = getelementptr inbounds [26 x %"class.hls::stream.2"]* %img2Col, i32 0, i32 0
  %32 = load i32* %5, align 4
  %33 = load i32* %6, align 4
  %34 = load i32* %7, align 4
  call void @_ZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iii(%"class.hls::stream.2"* %f0Stream, %"class.hls::stream.2"* %f1Stream, %"class.hls::stream.2"* %30, %"class.hls::stream.2"* %31, i32 %32, i32 %33, i32 %34)
  %35 = getelementptr inbounds [26 x %"class.hls::stream.2"]* %img1Col, i32 0, i32 0
  %36 = getelementptr inbounds [26 x %"class.hls::stream.2"]* %img2Col, i32 0, i32 0
  %37 = load i32* %5, align 4
  %38 = load i32* %6, align 4
  %39 = load i32* %7, align 4
  call void @_ZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iii(%"class.hls::stream.2"* %35, %"class.hls::stream.2"* %36, %"class.hls::stream.3"* %ixix, %"class.hls::stream.3"* %ixiy, %"class.hls::stream.3"* %iyiy, %"class.hls::stream.3"* %dix, %"class.hls::stream.3"* %diy, i32 %37, i32 %38, i32 %39)
  %40 = load i32* %5, align 4
  %41 = load i32* %6, align 4
  %42 = load i32* %7, align 4
  call void @_ZL124p_ZN2xf11computeFlowILi256ELi256ELi1ELi25EEER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiER6streamIfER6streamIfEiiiRN3hls6streamIiEES2_S2_S2_S2_RNS0_IfEES4_iii(%"class.hls::stream.3"* %ixix, %"class.hls::stream.3"* %ixiy, %"class.hls::stream.3"* %iyiy, %"class.hls::stream.3"* %dix, %"class.hls::stream.3"* %diy, %"class.hls::stream.4"* %fx, %"class.hls::stream.4"* %fy, i32 %40, i32 %41, i32 %42)
  %43 = load %struct.xf_Mat_4_256_256_1_** %3, align 8
  %44 = load %struct.xf_Mat_4_256_256_1_** %4, align 8
  %45 = load i32* %7, align 4
  call void @_ZL122p_ZN2xf12writeOutput8ILi256ELi256ELi1ELi25EEER6streamIfER6streamIfER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEiRN3hls6streamIfEES2_R19xf_Mat_4_256_256_1_S4_i(%"class.hls::stream.4"* %fx, %"class.hls::stream.4"* %fy, %struct.xf_Mat_4_256_256_1_* %43, %struct.xf_Mat_4_256_256_1_* %44, i32 %45)
  ret void
}

declare void @_ZN3hls6streamIhEC1EPKc(%"class.hls::stream.2"*, i8*)

declare void @_ZN3hls6streamIhEC1Ev(%"class.hls::stream.2"*)

declare void @_ZN3hls6streamIiEC1Ev(%"class.hls::stream.3"*)

declare void @_ZN3hls6streamIfEC1Ev(%"class.hls::stream.4"*)

define internal void @_ZL73p_ZN2xf11readMatRowsILi256ELi256ELi1ELi25EEEP7ap_uintILi8EER6streamIhEiiiP7ap_uintILi8EERN3hls6streamIhEEiii(%class.ap_uint.1* %matB, %"class.hls::stream.2"* %pixStream, i32 %rows, i32 %cols, i32 %size) uwtable {
  %1 = alloca %class.ap_uint.1*, align 8
  %2 = alloca %"class.hls::stream.2"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %WORD_SIZE = alloca i32, align 4
  %i = alloca i32, align 4
  %tmpData = alloca %struct.mywide_t_1_, align 1
  %k = alloca i32, align 4
  store %class.ap_uint.1* %matB, %class.ap_uint.1** %1, align 8
  store %"class.hls::stream.2"* %pixStream, %"class.hls::stream.2"** %2, align 8
  store i32 %rows, i32* %3, align 4
  store i32 %cols, i32* %4, align 4
  store i32 %size, i32* %5, align 4
  store i32 1, i32* %WORD_SIZE, align 4
  store i32 0, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %32, %0
  %7 = load i32* %i, align 4
  %8 = load i32* %5, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %35

; <label>:10                                      ; preds = %6
  %11 = load %class.ap_uint.1** %1, align 8
  %12 = load i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %class.ap_uint.1* %11, i64 %13
  %15 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.1* %14)
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds %struct.mywide_t_1_* %tmpData, i32 0, i32 0
  %18 = getelementptr inbounds [1 x i8]* %17, i32 0, i64 0
  store i8 %16, i8* %18, align 1
  store i32 0, i32* %k, align 4
  br label %19

; <label>:19                                      ; preds = %28, %10
  %20 = load i32* %k, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %31

; <label>:22                                      ; preds = %19
  %23 = load %"class.hls::stream.2"** %2, align 8
  %24 = load i32* %k, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mywide_t_1_* %tmpData, i32 0, i32 0
  %27 = getelementptr inbounds [1 x i8]* %26, i32 0, i64 %25
  call void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream.2"* %23, i8* %27)
  br label %28

; <label>:28                                      ; preds = %22
  %29 = load i32* %k, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %k, align 4
  br label %19

; <label>:31                                      ; preds = %19
  br label %32

; <label>:32                                      ; preds = %31
  %33 = load i32* %i, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %i, align 4
  br label %6

; <label>:35                                      ; preds = %6
  ret void
}

define internal void @_ZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iii(%"class.hls::stream.2"* %f0Stream, %"class.hls::stream.2"* %f1Stream, %"class.hls::stream.2"* %img1Col, %"class.hls::stream.2"* %img2Col, i32 %rows, i32 %cols, i32 %size) uwtable {
  %1 = alloca %"class.hls::stream.2"*, align 8
  %2 = alloca %"class.hls::stream.2"*, align 8
  %3 = alloca %"class.hls::stream.2"*, align 8
  %4 = alloca %"class.hls::stream.2"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %pix0 = alloca i8, align 1
  %pix1 = alloca i8, align 1
  %c1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  store %"class.hls::stream.2"* %f0Stream, %"class.hls::stream.2"** %1, align 8
  store %"class.hls::stream.2"* %f1Stream, %"class.hls::stream.2"** %2, align 8
  store %"class.hls::stream.2"* %img1Col, %"class.hls::stream.2"** %3, align 8
  store %"class.hls::stream.2"* %img2Col, %"class.hls::stream.2"** %4, align 8
  store i32 %rows, i32* %5, align 4
  store i32 %cols, i32* %6, align 4
  store i32 %size, i32* %7, align 4
  br label %8

; <label>:8                                       ; preds = %0
  store i32 0, i32* %r, align 4
  br label %9

; <label>:9                                       ; preds = %97, %8
  %10 = load i32* %r, align 4
  %11 = load i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %100

; <label>:13                                      ; preds = %9
  br label %14

; <label>:14                                      ; preds = %13
  store i32 0, i32* %c, align 4
  br label %15

; <label>:15                                      ; preds = %93, %14
  %16 = load i32* %c, align 4
  %17 = load i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %96

; <label>:19                                      ; preds = %15
  br label %20

; <label>:20                                      ; preds = %19
  store i32 0, i32* %i, align 4
  br label %21

; <label>:21                                      ; preds = %73, %20
  %22 = load i32* %i, align 4
  %23 = icmp slt i32 %22, 25
  br i1 %23, label %24, label %76

; <label>:24                                      ; preds = %21
  %25 = load i32* %c, align 4
  %26 = sext i32 %25 to i64
  %27 = load i32* %i, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [26 x [256 x i8]]* @_ZZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iiiE3lb1, i32 0, i64 %29
  %31 = getelementptr inbounds [256 x i8]* %30, i32 0, i64 %26
  %32 = load i8* %31, align 1
  %33 = load i32* %c, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32* %i, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [26 x [256 x i8]]* @_ZZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iiiE3lb1, i32 0, i64 %36
  %38 = getelementptr inbounds [256 x i8]* %37, i32 0, i64 %34
  store i8 %32, i8* %38, align 1
  %39 = load i32* %i, align 4
  %40 = sext i32 %39 to i64
  %41 = load %"class.hls::stream.2"** %3, align 8
  %42 = getelementptr inbounds %"class.hls::stream.2"* %41, i64 %40
  %43 = load i32* %c, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32* %i, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [26 x [256 x i8]]* @_ZZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iiiE3lb1, i32 0, i64 %46
  %48 = getelementptr inbounds [256 x i8]* %47, i32 0, i64 %44
  call void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream.2"* %42, i8* %48)
  %49 = load i32* %c, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32* %i, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [26 x [256 x i8]]* @_ZZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iiiE3lb2, i32 0, i64 %53
  %55 = getelementptr inbounds [256 x i8]* %54, i32 0, i64 %50
  %56 = load i8* %55, align 1
  %57 = load i32* %c, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32* %i, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [26 x [256 x i8]]* @_ZZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iiiE3lb2, i32 0, i64 %60
  %62 = getelementptr inbounds [256 x i8]* %61, i32 0, i64 %58
  store i8 %56, i8* %62, align 1
  %63 = load i32* %i, align 4
  %64 = sext i32 %63 to i64
  %65 = load %"class.hls::stream.2"** %4, align 8
  %66 = getelementptr inbounds %"class.hls::stream.2"* %65, i64 %64
  %67 = load i32* %c, align 4
  %68 = sext i32 %67 to i64
  %69 = load i32* %i, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [26 x [256 x i8]]* @_ZZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iiiE3lb2, i32 0, i64 %70
  %72 = getelementptr inbounds [256 x i8]* %71, i32 0, i64 %68
  call void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream.2"* %66, i8* %72)
  br label %73

; <label>:73                                      ; preds = %24
  %74 = load i32* %i, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %i, align 4
  br label %21

; <label>:76                                      ; preds = %21
  %77 = load %"class.hls::stream.2"** %1, align 8
  %78 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream.2"* %77)
  store i8 %78, i8* %pix0, align 1
  %79 = load i8* %pix0, align 1
  %80 = load i32* %c, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [256 x i8]* getelementptr inbounds ([26 x [256 x i8]]* @_ZZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iiiE3lb1, i32 0, i64 25), i32 0, i64 %81
  store i8 %79, i8* %82, align 1
  %83 = load %"class.hls::stream.2"** %3, align 8
  %84 = getelementptr inbounds %"class.hls::stream.2"* %83, i64 25
  call void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream.2"* %84, i8* %pix0)
  %85 = load %"class.hls::stream.2"** %2, align 8
  %86 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream.2"* %85)
  store i8 %86, i8* %pix1, align 1
  %87 = load i8* %pix1, align 1
  %88 = load i32* %c, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [256 x i8]* getelementptr inbounds ([26 x [256 x i8]]* @_ZZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iiiE3lb2, i32 0, i64 25), i32 0, i64 %89
  store i8 %87, i8* %90, align 1
  %91 = load %"class.hls::stream.2"** %4, align 8
  %92 = getelementptr inbounds %"class.hls::stream.2"* %91, i64 25
  call void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream.2"* %92, i8* %pix1)
  br label %93

; <label>:93                                      ; preds = %76
  %94 = load i32* %c, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %c, align 4
  br label %15

; <label>:96                                      ; preds = %15
  br label %97

; <label>:97                                      ; preds = %96
  %98 = load i32* %r, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %r, align 4
  br label %9

; <label>:100                                     ; preds = %9
  store i32 0, i32* %c1, align 4
  br label %101

; <label>:101                                     ; preds = %126, %100
  %102 = load i32* %c1, align 4
  %103 = load i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %129

; <label>:105                                     ; preds = %101
  store i32 0, i32* %r2, align 4
  br label %106

; <label>:106                                     ; preds = %122, %105
  %107 = load i32* %r2, align 4
  %108 = icmp slt i32 %107, 26
  br i1 %108, label %109, label %125

; <label>:109                                     ; preds = %106
  %110 = load i32* %c1, align 4
  %111 = sext i32 %110 to i64
  %112 = load i32* %r2, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [26 x [256 x i8]]* @_ZZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iiiE3lb1, i32 0, i64 %113
  %115 = getelementptr inbounds [256 x i8]* %114, i32 0, i64 %111
  store i8 0, i8* %115, align 1
  %116 = load i32* %c1, align 4
  %117 = sext i32 %116 to i64
  %118 = load i32* %r2, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [26 x [256 x i8]]* @_ZZL92p_ZN2xf9lbWrapperILi256ELi256ELi1ELi25ELb0EEER6streamIhER6streamIhEP6streamIhEP6streamIhEiiiRN3hls6streamIhEES2_PS1_S3_iiiE3lb2, i32 0, i64 %119
  %121 = getelementptr inbounds [256 x i8]* %120, i32 0, i64 %117
  store i8 0, i8* %121, align 1
  br label %122

; <label>:122                                     ; preds = %109
  %123 = load i32* %r2, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %r2, align 4
  br label %106

; <label>:125                                     ; preds = %106
  br label %126

; <label>:126                                     ; preds = %125
  %127 = load i32* %c1, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %c1, align 4
  br label %101

; <label>:129                                     ; preds = %101
  ret void
}

define internal void @_ZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iii(%"class.hls::stream.2"* %img1Col, %"class.hls::stream.2"* %img2Col, %"class.hls::stream.3"* %ixix_out, %"class.hls::stream.3"* %ixiy_out, %"class.hls::stream.3"* %iyiy_out, %"class.hls::stream.3"* %dix_out, %"class.hls::stream.3"* %diy_out, i32 %rows, i32 %cols, i32 %size) uwtable {
  %1 = alloca %"class.hls::stream.2"*, align 8
  %2 = alloca %"class.hls::stream.2"*, align 8
  %3 = alloca %"class.hls::stream.3"*, align 8
  %4 = alloca %"class.hls::stream.3"*, align 8
  %5 = alloca %"class.hls::stream.3"*, align 8
  %6 = alloca %"class.hls::stream.3"*, align 8
  %7 = alloca %"class.hls::stream.3"*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %img1Col_ = alloca [26 x i8], align 16
  %img2Col_ = alloca [26 x i8], align 16
  %zIdx = alloca i32, align 4
  %nIdx = alloca i32, align 4
  %csIxixR = alloca i32, align 4
  %csIxiyR = alloca i32, align 4
  %csIyiyR = alloca i32, align 4
  %csDixR = alloca i32, align 4
  %csDiyR = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %csIxixL = alloca i32, align 4
  %csIxiyL = alloca i32, align 4
  %csIyiyL = alloca i32, align 4
  %csDixL = alloca i32, align 4
  %csDiyL = alloca i32, align 4
  %wr = alloca i32, align 4
  %wrt = alloca i32, align 4
  %cIxTopR = alloca i32, align 4
  %cIyTopR = alloca i32, align 4
  %delTopR = alloca i32, align 4
  %wrb = alloca i32, align 4
  %cIxBotR = alloca i32, align 4
  %cIyBotR = alloca i32, align 4
  %delBotR = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %r3 = alloca i32, align 4
  store %"class.hls::stream.2"* %img1Col, %"class.hls::stream.2"** %1, align 8
  store %"class.hls::stream.2"* %img2Col, %"class.hls::stream.2"** %2, align 8
  store %"class.hls::stream.3"* %ixix_out, %"class.hls::stream.3"** %3, align 8
  store %"class.hls::stream.3"* %ixiy_out, %"class.hls::stream.3"** %4, align 8
  store %"class.hls::stream.3"* %iyiy_out, %"class.hls::stream.3"** %5, align 8
  store %"class.hls::stream.3"* %dix_out, %"class.hls::stream.3"** %6, align 8
  store %"class.hls::stream.3"* %diy_out, %"class.hls::stream.3"** %7, align 8
  store i32 %rows, i32* %8, align 4
  store i32 %cols, i32* %9, align 4
  store i32 %size, i32* %10, align 4
  store i32 -23, i32* %zIdx, align 4
  %11 = load i32* %zIdx, align 4
  %12 = add nsw i32 %11, 25
  %13 = sub nsw i32 %12, 2
  store i32 %13, i32* %nIdx, align 4
  store i32 0, i32* %r, align 4
  br label %14

; <label>:14                                      ; preds = %366, %0
  %15 = load i32* %r, align 4
  %16 = load i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %369

; <label>:18                                      ; preds = %14
  store i32 0, i32* %c, align 4
  br label %19

; <label>:19                                      ; preds = %362, %18
  %20 = load i32* %c, align 4
  %21 = load i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %365

; <label>:23                                      ; preds = %19
  store i32 0, i32* %csIxixL, align 4
  store i32 0, i32* %csIxiyL, align 4
  store i32 0, i32* %csIyiyL, align 4
  store i32 0, i32* %csDixL, align 4
  store i32 0, i32* %csDiyL, align 4
  %24 = load i32* %zIdx, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %47

; <label>:26                                      ; preds = %23
  %27 = load i32* %zIdx, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6csIxix, i32 0, i64 %28
  %30 = load i32* %29, align 4
  store i32 %30, i32* %csIxixL, align 4
  %31 = load i32* %zIdx, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6csIxiy, i32 0, i64 %32
  %34 = load i32* %33, align 4
  store i32 %34, i32* %csIxiyL, align 4
  %35 = load i32* %zIdx, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6csIyiy, i32 0, i64 %36
  %38 = load i32* %37, align 4
  store i32 %38, i32* %csIyiyL, align 4
  %39 = load i32* %zIdx, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5csDix, i32 0, i64 %40
  %42 = load i32* %41, align 4
  store i32 %42, i32* %csDixL, align 4
  %43 = load i32* %zIdx, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5csDiy, i32 0, i64 %44
  %46 = load i32* %45, align 4
  store i32 %46, i32* %csDiyL, align 4
  br label %47

; <label>:47                                      ; preds = %26, %23
  store i32 0, i32* %wr, align 4
  br label %48

; <label>:48                                      ; preds = %68, %47
  %49 = load i32* %wr, align 4
  %50 = icmp slt i32 %49, 26
  br i1 %50, label %51, label %71

; <label>:51                                      ; preds = %48
  %52 = load i32* %wr, align 4
  %53 = sext i32 %52 to i64
  %54 = load %"class.hls::stream.2"** %1, align 8
  %55 = getelementptr inbounds %"class.hls::stream.2"* %54, i64 %53
  %56 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream.2"* %55)
  %57 = load i32* %wr, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [26 x i8]* %img1Col_, i32 0, i64 %58
  store i8 %56, i8* %59, align 1
  %60 = load i32* %wr, align 4
  %61 = sext i32 %60 to i64
  %62 = load %"class.hls::stream.2"** %2, align 8
  %63 = getelementptr inbounds %"class.hls::stream.2"* %62, i64 %61
  %64 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream.2"* %63)
  %65 = load i32* %wr, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [26 x i8]* %img2Col_, i32 0, i64 %66
  store i8 %64, i8* %67, align 1
  br label %68

; <label>:68                                      ; preds = %51
  %69 = load i32* %wr, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %wr, align 4
  br label %48

; <label>:71                                      ; preds = %48
  store i32 1, i32* %wrt, align 4
  %72 = load i32* %wrt, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [26 x i8]* %img1Col_, i32 0, i64 %73
  %75 = load i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32* %wrt, align 4
  %78 = mul nsw i32 %77, 2
  %79 = add nsw i32 %78, 2
  %80 = sub nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %81
  %83 = load i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 %76, %84
  %86 = sdiv i32 %85, 2
  store i32 %86, i32* %cIxTopR, align 4
  %87 = load i32* %wrt, align 4
  %88 = add nsw i32 %87, 1
  %89 = mul nsw i32 %88, 2
  %90 = add nsw i32 %89, 2
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %92
  %94 = load i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load i32* %wrt, align 4
  %97 = sub nsw i32 %96, 1
  %98 = mul nsw i32 %97, 2
  %99 = add nsw i32 %98, 2
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %101
  %103 = load i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = sub nsw i32 %95, %104
  %106 = sdiv i32 %105, 2
  store i32 %106, i32* %cIyTopR, align 4
  %107 = load i32* %wrt, align 4
  %108 = mul nsw i32 %107, 2
  %109 = add nsw i32 %108, 2
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %111
  %113 = load i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i32* %wrt, align 4
  %116 = mul nsw i32 %115, 1
  %117 = add nsw i32 %116, 1
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [26 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img2Win, i32 0, i64 %119
  %121 = load i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = sub nsw i32 %114, %122
  store i32 %123, i32* %delTopR, align 4
  store i32 24, i32* %wrb, align 4
  %124 = load i32* %wrb, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [26 x i8]* %img1Col_, i32 0, i64 %125
  %127 = load i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = load i32* %wrb, align 4
  %130 = mul nsw i32 %129, 2
  %131 = add nsw i32 %130, 2
  %132 = sub nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %133
  %135 = load i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = sub nsw i32 %128, %136
  %138 = sdiv i32 %137, 2
  store i32 %138, i32* %cIxBotR, align 4
  %139 = load i32* %wrb, align 4
  %140 = add nsw i32 %139, 1
  %141 = mul nsw i32 %140, 2
  %142 = add nsw i32 %141, 2
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %144
  %146 = load i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = load i32* %wrb, align 4
  %149 = sub nsw i32 %148, 1
  %150 = mul nsw i32 %149, 2
  %151 = add nsw i32 %150, 2
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %153
  %155 = load i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = sub nsw i32 %147, %156
  %158 = sdiv i32 %157, 2
  store i32 %158, i32* %cIyBotR, align 4
  %159 = load i32* %wrb, align 4
  %160 = mul nsw i32 %159, 2
  %161 = add nsw i32 %160, 2
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %163
  %165 = load i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i32* %wrb, align 4
  %168 = mul nsw i32 %167, 1
  %169 = add nsw i32 %168, 1
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [26 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img2Win, i32 0, i64 %171
  %173 = load i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = sub nsw i32 %166, %174
  store i32 %175, i32* %delBotR, align 4
  %176 = load i32* %nIdx, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6cbIxix, i32 0, i64 %177
  %179 = load i32* %178, align 4
  %180 = load i32* %cIxBotR, align 4
  %181 = load i32* %cIxBotR, align 4
  %182 = mul nsw i32 %180, %181
  %183 = add nsw i32 %179, %182
  %184 = load i32* %cIxTopR, align 4
  %185 = load i32* %cIxTopR, align 4
  %186 = mul nsw i32 %184, %185
  %187 = sub nsw i32 %183, %186
  store i32 %187, i32* %csIxixR, align 4
  %188 = load i32* %nIdx, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6cbIxiy, i32 0, i64 %189
  %191 = load i32* %190, align 4
  %192 = load i32* %cIxBotR, align 4
  %193 = load i32* %cIyBotR, align 4
  %194 = mul nsw i32 %192, %193
  %195 = add nsw i32 %191, %194
  %196 = load i32* %cIxTopR, align 4
  %197 = load i32* %cIyTopR, align 4
  %198 = mul nsw i32 %196, %197
  %199 = sub nsw i32 %195, %198
  store i32 %199, i32* %csIxiyR, align 4
  %200 = load i32* %nIdx, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6cbIyiy, i32 0, i64 %201
  %203 = load i32* %202, align 4
  %204 = load i32* %cIyBotR, align 4
  %205 = load i32* %cIyBotR, align 4
  %206 = mul nsw i32 %204, %205
  %207 = add nsw i32 %203, %206
  %208 = load i32* %cIyTopR, align 4
  %209 = load i32* %cIyTopR, align 4
  %210 = mul nsw i32 %208, %209
  %211 = sub nsw i32 %207, %210
  store i32 %211, i32* %csIyiyR, align 4
  %212 = load i32* %nIdx, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5cbDix, i32 0, i64 %213
  %215 = load i32* %214, align 4
  %216 = load i32* %delBotR, align 4
  %217 = load i32* %cIxBotR, align 4
  %218 = mul nsw i32 %216, %217
  %219 = add nsw i32 %215, %218
  %220 = load i32* %delTopR, align 4
  %221 = load i32* %cIxTopR, align 4
  %222 = mul nsw i32 %220, %221
  %223 = sub nsw i32 %219, %222
  store i32 %223, i32* %csDixR, align 4
  %224 = load i32* %nIdx, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5cbDiy, i32 0, i64 %225
  %227 = load i32* %226, align 4
  %228 = load i32* %delBotR, align 4
  %229 = load i32* %cIyBotR, align 4
  %230 = mul nsw i32 %228, %229
  %231 = add nsw i32 %227, %230
  %232 = load i32* %delTopR, align 4
  %233 = load i32* %cIyTopR, align 4
  %234 = mul nsw i32 %232, %233
  %235 = sub nsw i32 %231, %234
  store i32 %235, i32* %csDiyR, align 4
  %236 = load i32* %csIxixR, align 4
  %237 = load i32* %csIxixL, align 4
  %238 = sub nsw i32 %236, %237
  %239 = load i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4ixix, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4ixix, align 4
  %241 = load i32* %csIxiyR, align 4
  %242 = load i32* %csIxiyL, align 4
  %243 = sub nsw i32 %241, %242
  %244 = load i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4ixiy, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4ixiy, align 4
  %246 = load i32* %csIyiyR, align 4
  %247 = load i32* %csIyiyL, align 4
  %248 = sub nsw i32 %246, %247
  %249 = load i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4iyiy, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4iyiy, align 4
  %251 = load i32* %csDixR, align 4
  %252 = load i32* %csDixL, align 4
  %253 = sub nsw i32 %251, %252
  %254 = load i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE3dix, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE3dix, align 4
  %256 = load i32* %csDiyR, align 4
  %257 = load i32* %csDiyL, align 4
  %258 = sub nsw i32 %256, %257
  %259 = load i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE3diy, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE3diy, align 4
  %261 = load %"class.hls::stream.3"** %3, align 8
  call void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream.3"* %261, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4ixix)
  %262 = load %"class.hls::stream.3"** %4, align 8
  call void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream.3"* %262, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4ixiy)
  %263 = load %"class.hls::stream.3"** %5, align 8
  call void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream.3"* %263, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4iyiy)
  %264 = load %"class.hls::stream.3"** %6, align 8
  call void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream.3"* %264, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE3dix)
  %265 = load %"class.hls::stream.3"** %7, align 8
  call void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream.3"* %265, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE3diy)
  store i32 0, i32* %i, align 4
  br label %266

; <label>:266                                     ; preds = %280, %71
  %267 = load i32* %i, align 4
  %268 = icmp slt i32 %267, 26
  br i1 %268, label %269, label %283

; <label>:269                                     ; preds = %266
  %270 = load i32* %i, align 4
  %271 = mul nsw i32 %270, 2
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %273
  %275 = load i8* %274, align 1
  %276 = load i32* %i, align 4
  %277 = mul nsw i32 %276, 2
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %278
  store i8 %275, i8* %279, align 1
  br label %280

; <label>:280                                     ; preds = %269
  %281 = load i32* %i, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %i, align 4
  br label %266

; <label>:283                                     ; preds = %266
  store i32 0, i32* %i1, align 4
  br label %284

; <label>:284                                     ; preds = %304, %283
  %285 = load i32* %i1, align 4
  %286 = icmp slt i32 %285, 26
  br i1 %286, label %287, label %307

; <label>:287                                     ; preds = %284
  %288 = load i32* %i1, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [26 x i8]* %img1Col_, i32 0, i64 %289
  %291 = load i8* %290, align 1
  %292 = load i32* %i1, align 4
  %293 = mul nsw i32 %292, 2
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %295
  store i8 %291, i8* %296, align 1
  %297 = load i32* %i1, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [26 x i8]* %img2Col_, i32 0, i64 %298
  %300 = load i8* %299, align 1
  %301 = load i32* %i1, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [26 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img2Win, i32 0, i64 %302
  store i8 %300, i8* %303, align 1
  br label %304

; <label>:304                                     ; preds = %287
  %305 = load i32* %i1, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %i1, align 4
  br label %284

; <label>:307                                     ; preds = %284
  %308 = load i32* %csIxixR, align 4
  %309 = load i32* %nIdx, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6cbIxix, i32 0, i64 %310
  store i32 %308, i32* %311, align 4
  %312 = load i32* %csIxiyR, align 4
  %313 = load i32* %nIdx, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6cbIxiy, i32 0, i64 %314
  store i32 %312, i32* %315, align 4
  %316 = load i32* %csIyiyR, align 4
  %317 = load i32* %nIdx, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6cbIyiy, i32 0, i64 %318
  store i32 %316, i32* %319, align 4
  %320 = load i32* %csDixR, align 4
  %321 = load i32* %nIdx, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5cbDix, i32 0, i64 %322
  store i32 %320, i32* %323, align 4
  %324 = load i32* %csDiyR, align 4
  %325 = load i32* %nIdx, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5cbDiy, i32 0, i64 %326
  store i32 %324, i32* %327, align 4
  %328 = load i32* %csIxixR, align 4
  %329 = load i32* %nIdx, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6csIxix, i32 0, i64 %330
  store i32 %328, i32* %331, align 4
  %332 = load i32* %csIxiyR, align 4
  %333 = load i32* %nIdx, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6csIxiy, i32 0, i64 %334
  store i32 %332, i32* %335, align 4
  %336 = load i32* %csIyiyR, align 4
  %337 = load i32* %nIdx, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6csIyiy, i32 0, i64 %338
  store i32 %336, i32* %339, align 4
  %340 = load i32* %csDixR, align 4
  %341 = load i32* %nIdx, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5csDix, i32 0, i64 %342
  store i32 %340, i32* %343, align 4
  %344 = load i32* %csDiyR, align 4
  %345 = load i32* %nIdx, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5csDiy, i32 0, i64 %346
  store i32 %344, i32* %347, align 4
  %348 = load i32* %zIdx, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %zIdx, align 4
  %350 = load i32* %zIdx, align 4
  %351 = load i32* %9, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %354

; <label>:353                                     ; preds = %307
  store i32 0, i32* %zIdx, align 4
  br label %354

; <label>:354                                     ; preds = %353, %307
  %355 = load i32* %nIdx, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %nIdx, align 4
  %357 = load i32* %nIdx, align 4
  %358 = load i32* %9, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %361

; <label>:360                                     ; preds = %354
  store i32 0, i32* %nIdx, align 4
  br label %361

; <label>:361                                     ; preds = %360, %354
  br label %362

; <label>:362                                     ; preds = %361
  %363 = load i32* %c, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %c, align 4
  br label %19

; <label>:365                                     ; preds = %19
  br label %366

; <label>:366                                     ; preds = %365
  %367 = load i32* %r, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %r, align 4
  br label %14

; <label>:369                                     ; preds = %14
  store i32 0, i32* %r2, align 4
  br label %370

; <label>:370                                     ; preds = %390, %369
  %371 = load i32* %r2, align 4
  %372 = icmp slt i32 %371, 26
  br i1 %372, label %373, label %393

; <label>:373                                     ; preds = %370
  %374 = load i32* %r2, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %375
  store i8 0, i8* %376, align 1
  %377 = load i32* %r2, align 4
  %378 = add nsw i32 %377, 26
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [52 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img1Win, i32 0, i64 %379
  store i8 0, i8* %380, align 1
  %381 = load i32* %r2, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [26 x i8]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE7img2Win, i32 0, i64 %382
  store i8 0, i8* %383, align 1
  %384 = load i32* %r2, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [26 x i8]* %img1Col_, i32 0, i64 %385
  store i8 0, i8* %386, align 1
  %387 = load i32* %r2, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [26 x i8]* %img2Col_, i32 0, i64 %388
  store i8 0, i8* %389, align 1
  br label %390

; <label>:390                                     ; preds = %373
  %391 = load i32* %r2, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %r2, align 4
  br label %370

; <label>:393                                     ; preds = %370
  store i32 0, i32* %r3, align 4
  br label %394

; <label>:394                                     ; preds = %429, %393
  %395 = load i32* %r3, align 4
  %396 = load i32* %9, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %432

; <label>:398                                     ; preds = %394
  %399 = load i32* %r3, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6csIxix, i32 0, i64 %400
  store i32 0, i32* %401, align 4
  %402 = load i32* %r3, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6csIxiy, i32 0, i64 %403
  store i32 0, i32* %404, align 4
  %405 = load i32* %r3, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6csIyiy, i32 0, i64 %406
  store i32 0, i32* %407, align 4
  %408 = load i32* %r3, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5csDix, i32 0, i64 %409
  store i32 0, i32* %410, align 4
  %411 = load i32* %r3, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5csDiy, i32 0, i64 %412
  store i32 0, i32* %413, align 4
  %414 = load i32* %r3, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6cbIxix, i32 0, i64 %415
  store i32 0, i32* %416, align 4
  %417 = load i32* %r3, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6cbIxiy, i32 0, i64 %418
  store i32 0, i32* %419, align 4
  %420 = load i32* %r3, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE6cbIyiy, i32 0, i64 %421
  store i32 0, i32* %422, align 4
  %423 = load i32* %r3, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5cbDix, i32 0, i64 %424
  store i32 0, i32* %425, align 4
  %426 = load i32* %r3, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [256 x i32]* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE5cbDiy, i32 0, i64 %427
  store i32 0, i32* %428, align 4
  br label %429

; <label>:429                                     ; preds = %398
  %430 = load i32* %r3, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %r3, align 4
  br label %394

; <label>:432                                     ; preds = %394
  store i32 0, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4ixix, align 4
  store i32 0, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4ixiy, align 4
  store i32 0, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE4iyiy, align 4
  store i32 0, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE3dix, align 4
  store i32 0, i32* @_ZZL128p_ZN2xf11computeSumsILi256ELi256ELi1ELi25ELb0EEEP6streamIhEP6streamIhER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiEiiiPN3hls6streamIhEES2_RNS0_IiEES4_S4_S4_S4_iiiE3diy, align 4
  ret void
}

define internal void @_ZL124p_ZN2xf11computeFlowILi256ELi256ELi1ELi25EEER6streamIiER6streamIiER6streamIiER6streamIiER6streamIiER6streamIfER6streamIfEiiiRN3hls6streamIiEES2_S2_S2_S2_RNS0_IfEES4_iii(%"class.hls::stream.3"* %ixix, %"class.hls::stream.3"* %ixiy, %"class.hls::stream.3"* %iyiy, %"class.hls::stream.3"* %dix, %"class.hls::stream.3"* %diy, %"class.hls::stream.4"* %fx_out, %"class.hls::stream.4"* %fy_out, i32 %rows, i32 %cols, i32 %size) uwtable {
  %1 = alloca %"class.hls::stream.3"*, align 8
  %2 = alloca %"class.hls::stream.3"*, align 8
  %3 = alloca %"class.hls::stream.3"*, align 8
  %4 = alloca %"class.hls::stream.3"*, align 8
  %5 = alloca %"class.hls::stream.3"*, align 8
  %6 = alloca %"class.hls::stream.4"*, align 8
  %7 = alloca %"class.hls::stream.4"*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %ixix_ = alloca i32, align 4
  %ixiy_ = alloca i32, align 4
  %iyiy_ = alloca i32, align 4
  %dix_ = alloca i32, align 4
  %diy_ = alloca i32, align 4
  %fx_ = alloca float, align 4
  %fy_ = alloca float, align 4
  %det = alloca float, align 4
  %i00 = alloca float, align 4
  %i01 = alloca float, align 4
  %i10 = alloca float, align 4
  %i11 = alloca float, align 4
  store %"class.hls::stream.3"* %ixix, %"class.hls::stream.3"** %1, align 8
  store %"class.hls::stream.3"* %ixiy, %"class.hls::stream.3"** %2, align 8
  store %"class.hls::stream.3"* %iyiy, %"class.hls::stream.3"** %3, align 8
  store %"class.hls::stream.3"* %dix, %"class.hls::stream.3"** %4, align 8
  store %"class.hls::stream.3"* %diy, %"class.hls::stream.3"** %5, align 8
  store %"class.hls::stream.4"* %fx_out, %"class.hls::stream.4"** %6, align 8
  store %"class.hls::stream.4"* %fy_out, %"class.hls::stream.4"** %7, align 8
  store i32 %rows, i32* %8, align 4
  store i32 %cols, i32* %9, align 4
  store i32 %size, i32* %10, align 4
  store i32 0, i32* %r, align 4
  br label %11

; <label>:11                                      ; preds = %95, %0
  %12 = load i32* %r, align 4
  %13 = load i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %98

; <label>:15                                      ; preds = %11
  store i32 0, i32* %c, align 4
  br label %16

; <label>:16                                      ; preds = %91, %15
  %17 = load i32* %c, align 4
  %18 = load i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %94

; <label>:20                                      ; preds = %16
  %21 = load %"class.hls::stream.3"** %1, align 8
  %22 = call i32 @_ZN3hls6streamIiE4readEv(%"class.hls::stream.3"* %21)
  store i32 %22, i32* %ixix_, align 4
  %23 = load %"class.hls::stream.3"** %2, align 8
  %24 = call i32 @_ZN3hls6streamIiE4readEv(%"class.hls::stream.3"* %23)
  store i32 %24, i32* %ixiy_, align 4
  %25 = load %"class.hls::stream.3"** %3, align 8
  %26 = call i32 @_ZN3hls6streamIiE4readEv(%"class.hls::stream.3"* %25)
  store i32 %26, i32* %iyiy_, align 4
  %27 = load %"class.hls::stream.3"** %4, align 8
  %28 = call i32 @_ZN3hls6streamIiE4readEv(%"class.hls::stream.3"* %27)
  store i32 %28, i32* %dix_, align 4
  %29 = load %"class.hls::stream.3"** %5, align 8
  %30 = call i32 @_ZN3hls6streamIiE4readEv(%"class.hls::stream.3"* %29)
  store i32 %30, i32* %diy_, align 4
  store float 0.000000e+00, float* %fx_, align 4
  store float 0.000000e+00, float* %fy_, align 4
  %31 = load i32* %ixix_, align 4
  %32 = sitofp i32 %31 to float
  %33 = load i32* %iyiy_, align 4
  %34 = sitofp i32 %33 to float
  %35 = fmul float %32, %34
  %36 = load i32* %ixiy_, align 4
  %37 = sitofp i32 %36 to float
  %38 = load i32* %ixiy_, align 4
  %39 = sitofp i32 %38 to float
  %40 = fmul float %37, %39
  %41 = fsub float %35, %40
  store float %41, float* %det, align 4
  %42 = load float* %det, align 4
  %43 = fcmp ole float %42, 1.000000e+00
  br i1 %43, label %50, label %44

; <label>:44                                      ; preds = %20
  %45 = load i32* %r, align 4
  %46 = icmp slt i32 %45, 25
  br i1 %46, label %50, label %47

; <label>:47                                      ; preds = %44
  %48 = load i32* %c, align 4
  %49 = icmp slt i32 %48, 26
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %47, %44, %20
  store float 0.000000e+00, float* %fx_, align 4
  store float 0.000000e+00, float* %fy_, align 4
  br label %88

; <label>:51                                      ; preds = %47
  %52 = load i32* %iyiy_, align 4
  %53 = sitofp i32 %52 to float
  %54 = load float* %det, align 4
  %55 = fdiv float %53, %54
  store float %55, float* %i00, align 4
  %56 = load i32* %ixiy_, align 4
  %57 = sub nsw i32 0, %56
  %58 = sitofp i32 %57 to float
  %59 = load float* %det, align 4
  %60 = fdiv float %58, %59
  store float %60, float* %i01, align 4
  %61 = load i32* %ixiy_, align 4
  %62 = sub nsw i32 0, %61
  %63 = sitofp i32 %62 to float
  %64 = load float* %det, align 4
  %65 = fdiv float %63, %64
  store float %65, float* %i10, align 4
  %66 = load i32* %ixix_, align 4
  %67 = sitofp i32 %66 to float
  %68 = load float* %det, align 4
  %69 = fdiv float %67, %68
  store float %69, float* %i11, align 4
  %70 = load float* %i00, align 4
  %71 = load i32* %dix_, align 4
  %72 = sitofp i32 %71 to float
  %73 = fmul float %70, %72
  %74 = load float* %i01, align 4
  %75 = load i32* %diy_, align 4
  %76 = sitofp i32 %75 to float
  %77 = fmul float %74, %76
  %78 = fadd float %73, %77
  store float %78, float* %fx_, align 4
  %79 = load float* %i10, align 4
  %80 = load i32* %dix_, align 4
  %81 = sitofp i32 %80 to float
  %82 = fmul float %79, %81
  %83 = load float* %i11, align 4
  %84 = load i32* %diy_, align 4
  %85 = sitofp i32 %84 to float
  %86 = fmul float %83, %85
  %87 = fadd float %82, %86
  store float %87, float* %fy_, align 4
  br label %88

; <label>:88                                      ; preds = %51, %50
  %89 = load %"class.hls::stream.4"** %6, align 8
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream.4"* %89, float* %fx_)
  %90 = load %"class.hls::stream.4"** %7, align 8
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream.4"* %90, float* %fy_)
  br label %91

; <label>:91                                      ; preds = %88
  %92 = load i32* %c, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %c, align 4
  br label %16

; <label>:94                                      ; preds = %16
  br label %95

; <label>:95                                      ; preds = %94
  %96 = load i32* %r, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %r, align 4
  br label %11

; <label>:98                                      ; preds = %11
  ret void
}

define internal void @_ZL122p_ZN2xf12writeOutput8ILi256ELi256ELi1ELi25EEER6streamIfER6streamIfER3MatILi4ELi256ELi256ELi1EER3MatILi4ELi256ELi256ELi1EEiRN3hls6streamIfEES2_R19xf_Mat_4_256_256_1_S4_i(%"class.hls::stream.4"* %fx_in, %"class.hls::stream.4"* %fy_in, %struct.xf_Mat_4_256_256_1_* %flowx, %struct.xf_Mat_4_256_256_1_* %flowy, i32 %size) uwtable {
  %1 = alloca %"class.hls::stream.4"*, align 8
  %2 = alloca %"class.hls::stream.4"*, align 8
  %3 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %4 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %5 = alloca i32, align 4
  %r = alloca i32, align 4
  %fx_out = alloca float, align 4
  %fy_out = alloca float, align 4
  %fx_out_int = alloca %class.ap_uint.0*, align 8
  %fy_out_int = alloca %class.ap_uint.0*, align 8
  %6 = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_uint.0, align 1
  store %"class.hls::stream.4"* %fx_in, %"class.hls::stream.4"** %1, align 8
  store %"class.hls::stream.4"* %fy_in, %"class.hls::stream.4"** %2, align 8
  store %struct.xf_Mat_4_256_256_1_* %flowx, %struct.xf_Mat_4_256_256_1_** %3, align 8
  store %struct.xf_Mat_4_256_256_1_* %flowy, %struct.xf_Mat_4_256_256_1_** %4, align 8
  store i32 %size, i32* %5, align 4
  store i32 0, i32* %r, align 4
  br label %8

; <label>:8                                       ; preds = %35, %0
  %9 = load i32* %r, align 4
  %10 = load i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

; <label>:12                                      ; preds = %8
  %13 = load %"class.hls::stream.4"** %1, align 8
  %14 = call float @_ZN3hls6streamIfE4readEv(%"class.hls::stream.4"* %13)
  store float %14, float* %fx_out, align 4
  %15 = load %"class.hls::stream.4"** %2, align 8
  %16 = call float @_ZN3hls6streamIfE4readEv(%"class.hls::stream.4"* %15)
  store float %16, float* %fy_out, align 4
  %17 = bitcast float* %fx_out to %class.ap_uint.0*
  store %class.ap_uint.0* %17, %class.ap_uint.0** %fx_out_int, align 8
  %18 = bitcast float* %fy_out to %class.ap_uint.0*
  store %class.ap_uint.0* %18, %class.ap_uint.0** %fy_out_int, align 8
  %19 = load %struct.xf_Mat_4_256_256_1_** %3, align 8
  %20 = load i32* %r, align 4
  %21 = load %class.ap_uint.0** %fx_out_int, align 8
  %22 = bitcast %class.ap_uint.0* %6 to i8*
  %23 = bitcast %class.ap_uint.0* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 4, i32 1, i1 false)
  %24 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %25 = bitcast [4 x i8]* %24 to i32*
  %26 = load i32* %25, align 1
  call void @_ZL52p_ZN2xf16Mat_4_256_256_1_5writeIEEi7ap_uintILi32EE_1P19xf_Mat_4_256_256_1_i7ap_uintILi32EE(%struct.xf_Mat_4_256_256_1_* %19, i32 %20, i32 %26)
  %27 = load %struct.xf_Mat_4_256_256_1_** %4, align 8
  %28 = load i32* %r, align 4
  %29 = load %class.ap_uint.0** %fy_out_int, align 8
  %30 = bitcast %class.ap_uint.0* %7 to i8*
  %31 = bitcast %class.ap_uint.0* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 4, i32 1, i1 false)
  %32 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %33 = bitcast [4 x i8]* %32 to i32*
  %34 = load i32* %33, align 1
  call void @_ZL52p_ZN2xf16Mat_4_256_256_1_5writeIEEi7ap_uintILi32EE_1P19xf_Mat_4_256_256_1_i7ap_uintILi32EE(%struct.xf_Mat_4_256_256_1_* %27, i32 %28, i32 %34)
  br label %35

; <label>:35                                      ; preds = %12
  %36 = load i32* %r, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %r, align 4
  br label %8

; <label>:38                                      ; preds = %8
  ret void
}

declare float @_ZN3hls6streamIfE4readEv(%"class.hls::stream.4"*)

define internal void @_ZL52p_ZN2xf16Mat_4_256_256_1_5writeIEEi7ap_uintILi32EE_1P19xf_Mat_4_256_256_1_i7ap_uintILi32EE(%struct.xf_Mat_4_256_256_1_* %this_, i32 %index, i32 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.0, align 4
  store %struct.xf_Mat_4_256_256_1_* %this_, %struct.xf_Mat_4_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint.0* %val, i32 0, i32 0
  %4 = bitcast [4 x i8]* %3 to i32*
  store i32 %val.coerce, i32* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_4_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.0]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint.0* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.0* %9, %class.ap_uint.0* %val)
  ret void
}

declare i32 @_ZN3hls6streamIiE4readEv(%"class.hls::stream.3"*)

declare void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream.4"*, float*)

declare zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream.2"*)

declare void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream.3"*, i32*)

declare void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream.2"*, i8*)

declare i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.1*)

define internal void @_ZL106p_ZN2xf11accel_utils11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi64EER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream.5", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %class.ap_uint* %srcPtr, %class.ap_uint** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %dstMat, %struct.xf_Mat_0_256_256_1_** %3, align 8
  store i32 8, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi64EEEC1Ev(%"class.hls::stream.5"* %strm)
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
  call void @_ZL119p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1P14xf_accel_utilsP7ap_uintILi64EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %10, %class.ap_uint* %11, %"class.hls::stream.5"* %strm, i32 %12, i32 %13)
  %14 = load %struct.xf_accel_utils** %1, align 8
  %15 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  call void @_ZL125p_ZN2xf11accel_utils13hlsStrm2xfMatILi64ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi64EEER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi64EEEER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %14, %"class.hls::stream.5"* %strm, %struct.xf_Mat_0_256_256_1_* %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi64EEEC1Ev(%"class.hls::stream.5"*)

define internal void @_ZL119p_ZN2xf11accel_utils13Array2hlsStrmILi64ELi256ELi256ELi1ELi1ELi8ELi8192EEEP7ap_uintILi64EER6streamI7ap_uintILi64EEEii_1P14xf_accel_utilsP7ap_uintILi64EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %"class.hls::stream.5"* %dstStrm, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %"class.hls::stream.5"*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pixel_width = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %class.ap_uint* %srcPtr, %class.ap_uint** %2, align 8
  store %"class.hls::stream.5"* %dstStrm, %"class.hls::stream.5"** %3, align 8
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
  %19 = load %"class.hls::stream.5"** %3, align 8
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = load %class.ap_uint** %2, align 8
  %23 = getelementptr inbounds %class.ap_uint* %22, i64 %21
  call void @_ZN3hls6streamI7ap_uintILi64EEE5writeERKS2_(%"class.hls::stream.5"* %19, %class.ap_uint* %23)
  br label %24

; <label>:24                                      ; preds = %18
  %25 = load i32* %i, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %14

; <label>:27                                      ; preds = %14
  ret void
}

define internal void @_ZL125p_ZN2xf11accel_utils13hlsStrm2xfMatILi64ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi64EEER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi64EEEER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %this_, %"class.hls::stream.5"* %srcStrm, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %"class.hls::stream.5"*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
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
  store %"class.hls::stream.5"* %srcStrm, %"class.hls::stream.5"** %2, align 8
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
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1* %out)
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
  %34 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.1* %out, i32 %33, i32 0)
  store i64 %31, i64* %34
  br label %35

; <label>:35                                      ; preds = %27, %24
  %36 = load %"class.hls::stream.5"** %2, align 8
  %37 = call i64 @_ZN3hls6streamI7ap_uintILi64EEE4readEv(%"class.hls::stream.5"* %36)
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
  %47 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.1* %out, i32 7, i32 %46)
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
  %60 = call %class.ap_uint.1* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.1* %out, i64 %59)
  %61 = load i32* %valid_bits, align 4
  %62 = sub nsw i32 %61, 8
  store i32 %62, i32* %valid_bits, align 4
  br label %63

; <label>:63                                      ; preds = %51, %35
  %64 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %65 = load i32* %i, align 4
  %66 = bitcast %class.ap_uint.1* %5 to i8*
  %67 = bitcast %class.ap_uint.1* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 1, i32 1, i1 false)
  %68 = getelementptr %class.ap_uint.1* %5, i32 0, i32 0
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

declare void @_ZN7ap_uintILi64EEC1Ev(%class.ap_uint*)

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1*)

declare i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint*, i32, i32)

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.1*, i32, i32)

declare %class.ap_uint* @_ZN7ap_uintILi64EEaSERKS0_(%class.ap_uint*, %class.ap_uint*)

declare i64 @_ZN3hls6streamI7ap_uintILi64EEE4readEv(%"class.hls::stream.5"*)

declare %class.ap_uint.1* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.1*, i64)

define internal void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %this_, i32 %index, i8 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint.1* %val, i32 0, i32 0
  %4 = bitcast [1 x i8]* %3 to i8*
  store i8 %val.coerce, i8* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.1]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint.1* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.1* %9, %class.ap_uint.1* %val)
  ret void
}

declare %class.ap_uint.1* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.1*, %class.ap_uint.1*)

declare void @_ZN3hls6streamI7ap_uintILi64EEE5writeERKS2_(%"class.hls::stream.5"*, %class.ap_uint*)

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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_4_256_256_1_4initIEEiib_1P19xf_Mat_4_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
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

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define linkonce_odr void @_ZN19xf_Mat_4_256_256_1_C2Ev(%struct.xf_Mat_4_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_4_256_256_1_*, align 8
  store %struct.xf_Mat_4_256_256_1_* %this, %struct.xf_Mat_4_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_4_256_256_1_** %1
  %3 = getelementptr inbounds %struct.xf_Mat_4_256_256_1_* %2, i32 0, i32 4
  %4 = getelementptr inbounds [65536 x %class.ap_uint.0]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.0* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint.0* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.0* %7)
  %8 = getelementptr inbounds %class.ap_uint.0* %7, i64 1
  %9 = icmp eq %class.ap_uint.0* %8, %5
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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
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
  %4 = getelementptr inbounds [65536 x %class.ap_uint.1]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.1* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint.1* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1* %7)
  %8 = getelementptr inbounds %class.ap_uint.1* %7, i64 1
  %9 = icmp eq %class.ap_uint.1* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  ret void
}

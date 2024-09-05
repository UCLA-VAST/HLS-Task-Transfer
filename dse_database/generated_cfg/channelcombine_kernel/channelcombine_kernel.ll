; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/channelcombine_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_Mat_9_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.1] }
%class.ap_uint.1 = type { [3 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream.2" = type { %class.ap_uint.0 }
%"class.hls::stream.3" = type { %class.ap_uint.1 }
%"class.hls::stream" = type { %class.ap_uint }

@.str = private unnamed_addr constant [102 x i8] c"((_src1.rows <= ROWS ) && (_src1.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"xf_channel_combine.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL150p_ZN2xf5mergeILi0ELi9ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_R19xf_Mat_9_256_256_1_ = private unnamed_addr constant [276 x i8] c"void p_ZN2xf5mergeILi0ELi9ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, struct xf_Mat_9_256_256_1_ &)\00", align 1
@.str2 = private unnamed_addr constant [102 x i8] c"((_src2.rows <= ROWS ) && (_src2.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str3 = private unnamed_addr constant [102 x i8] c"((_src3.rows <= ROWS ) && (_src3.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str4 = private unnamed_addr constant [100 x i8] c"((_dst.rows <= ROWS ) && (_dst.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str5 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1P19xf_Mat_9_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1(struct xf_Mat_9_256_256_1_ *, int, int, bool)\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z21channel_combine_accelP7ap_uintILi256EES1_S1_S1_ii(%class.ap_uint* %imgInput1, %class.ap_uint* %imgInput2, %class.ap_uint* %imgInput3, %class.ap_uint* %imgOutput, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %4 = alloca %class.ap_uint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %in_mat1 = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %in_mat2 = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %in_mat3 = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_9_256_256_1_, align 4
  store %class.ap_uint* %imgInput1, %class.ap_uint** %1, align 8
  store %class.ap_uint* %imgInput2, %class.ap_uint** %2, align 8
  store %class.ap_uint* %imgInput3, %class.ap_uint** %3, align 8
  store %class.ap_uint* %imgOutput, %class.ap_uint** %4, align 8
  store i32 %rows, i32* %5, align 4
  store i32 %cols, i32* %6, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat1)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat1)
  %7 = load i32* %5, align 4
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat1, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32* %6, align 4
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat1, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat2)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat2)
  %11 = load i32* %5, align 4
  %12 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat2, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32* %6, align 4
  %14 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat2, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat3)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat3)
  %15 = load i32* %5, align 4
  %16 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat3, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32* %6, align 4
  %18 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat3, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  call void @_ZN19xf_Mat_9_256_256_1_C1Ev(%struct.xf_Mat_9_256_256_1_* %out_mat)
  call void @_ZL33p_ZN2xf16Mat_9_256_256_1_C2IEEv_1P19xf_Mat_9_256_256_1_(%struct.xf_Mat_9_256_256_1_* %out_mat)
  %19 = load i32* %5, align 4
  %20 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %out_mat, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32* %6, align 4
  %22 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %out_mat, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %23, %struct.xf_Mat_0_256_256_1_* %in_mat1)
  %24 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %24, %struct.xf_Mat_0_256_256_1_* %in_mat2)
  %25 = load %class.ap_uint** %3, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %25, %struct.xf_Mat_0_256_256_1_* %in_mat3)
  call void @_ZL150p_ZN2xf5mergeILi0ELi9ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_R19xf_Mat_9_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat1, %struct.xf_Mat_0_256_256_1_* %in_mat2, %struct.xf_Mat_0_256_256_1_* %in_mat3, %struct.xf_Mat_9_256_256_1_* %out_mat)
  %26 = load %class.ap_uint** %4, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_9_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_9_256_256_1_* %out_mat, %class.ap_uint* %26)
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

define linkonce_odr void @_ZN19xf_Mat_9_256_256_1_C1Ev(%struct.xf_Mat_9_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  store %struct.xf_Mat_9_256_256_1_* %this, %struct.xf_Mat_9_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_9_256_256_1_** %1
  call void @_ZN19xf_Mat_9_256_256_1_C2Ev(%struct.xf_Mat_9_256_256_1_* %2)
  ret void
}

define internal void @_ZL33p_ZN2xf16Mat_9_256_256_1_C2IEEv_1P19xf_Mat_9_256_256_1_(%struct.xf_Mat_9_256_256_1_* %this_) uwtable {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  store %struct.xf_Mat_9_256_256_1_* %this_, %struct.xf_Mat_9_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  call void @_ZL38p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1P19xf_Mat_9_256_256_1_iib(%struct.xf_Mat_9_256_256_1_* %2, i32 256, i32 256, i1 zeroext true)
  ret void
}

define internal void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %srcPtr, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %class.ap_uint* %srcPtr, %class.ap_uint** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %dstMat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  %3 = load %class.ap_uint** %1, align 8
  %4 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  call void @_ZL108p_ZN2xf11accel_utils11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi256EER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %au, %class.ap_uint* %3, %struct.xf_Mat_0_256_256_1_* %4)
  ret void
}

define internal void @_ZL150p_ZN2xf5mergeILi0ELi9ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_R19xf_Mat_9_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_src1, %struct.xf_Mat_0_256_256_1_* %_src2, %struct.xf_Mat_0_256_256_1_* %_src3, %struct.xf_Mat_9_256_256_1_* %_dst) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %4 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %_in1 = alloca %"class.hls::stream.2", align 1
  %_in2 = alloca %"class.hls::stream.2", align 1
  %_in3 = alloca %"class.hls::stream.2", align 1
  %_out = alloca %"class.hls::stream.3", align 1
  %src_cols = alloca i32, align 4
  %src_rows = alloca i32, align 4
  %dst_cols = alloca i32, align 4
  %dst_rows = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %5 = alloca %class.ap_uint.0, align 1
  %6 = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_uint.0, align 1
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %outpix = alloca %class.ap_uint.1, align 1
  %8 = alloca i24
  %9 = alloca %class.ap_uint.1, align 1
  %10 = alloca i24
  store %struct.xf_Mat_0_256_256_1_* %_src1, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_src2, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %_src3, %struct.xf_Mat_0_256_256_1_** %3, align 8
  store %struct.xf_Mat_9_256_256_1_* %_dst, %struct.xf_Mat_9_256_256_1_** %4, align 8
  %11 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %12 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %11, i32 0, i32 1
  %13 = load i32* %12, align 4
  %14 = icmp sle i32 %13, 256
  br i1 %14, label %15, label %21

; <label>:15                                      ; preds = %0
  %16 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %17 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %16, i32 0, i32 2
  %18 = load i32* %17, align 4
  %19 = icmp sle i32 %18, 256
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %15
  br label %23

; <label>:21                                      ; preds = %15, %0
  call void @__assert_fail(i8* getelementptr inbounds ([102 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 321, i8* getelementptr inbounds ([276 x i8]* @__PRETTY_FUNCTION__._ZL150p_ZN2xf5mergeILi0ELi9ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_R19xf_Mat_9_256_256_1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %25 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %24, i32 0, i32 1
  %26 = load i32* %25, align 4
  %27 = icmp sle i32 %26, 256
  br i1 %27, label %28, label %34

; <label>:28                                      ; preds = %23
  %29 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %30 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %29, i32 0, i32 2
  %31 = load i32* %30, align 4
  %32 = icmp sle i32 %31, 256
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %28
  br label %36

; <label>:34                                      ; preds = %28, %23
  call void @__assert_fail(i8* getelementptr inbounds ([102 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 322, i8* getelementptr inbounds ([276 x i8]* @__PRETTY_FUNCTION__._ZL150p_ZN2xf5mergeILi0ELi9ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_R19xf_Mat_9_256_256_1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %38 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %37, i32 0, i32 1
  %39 = load i32* %38, align 4
  %40 = icmp sle i32 %39, 256
  br i1 %40, label %41, label %47

; <label>:41                                      ; preds = %36
  %42 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %43 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %42, i32 0, i32 2
  %44 = load i32* %43, align 4
  %45 = icmp sle i32 %44, 256
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %41
  br label %49

; <label>:47                                      ; preds = %41, %36
  call void @__assert_fail(i8* getelementptr inbounds ([102 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 323, i8* getelementptr inbounds ([276 x i8]* @__PRETTY_FUNCTION__._ZL150p_ZN2xf5mergeILi0ELi9ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_R19xf_Mat_9_256_256_1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %49

; <label>:49                                      ; preds = %48, %46
  %50 = load %struct.xf_Mat_9_256_256_1_** %4, align 8
  %51 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %50, i32 0, i32 1
  %52 = load i32* %51, align 4
  %53 = icmp sle i32 %52, 256
  br i1 %53, label %54, label %60

; <label>:54                                      ; preds = %49
  %55 = load %struct.xf_Mat_9_256_256_1_** %4, align 8
  %56 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %55, i32 0, i32 2
  %57 = load i32* %56, align 4
  %58 = icmp sle i32 %57, 256
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %54
  br label %62

; <label>:60                                      ; preds = %54, %49
  call void @__assert_fail(i8* getelementptr inbounds ([100 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 324, i8* getelementptr inbounds ([276 x i8]* @__PRETTY_FUNCTION__._ZL150p_ZN2xf5mergeILi0ELi9ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_R19xf_Mat_9_256_256_1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %62

; <label>:62                                      ; preds = %61, %59
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.2"* %_in1)
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.2"* %_in2)
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.2"* %_in3)
  call void @_ZN3hls6streamI7ap_uintILi24EEEC1Ev(%"class.hls::stream.3"* %_out)
  %63 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %64 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %63, i32 0, i32 2
  %65 = load i32* %64, align 4
  store i32 %65, i32* %src_cols, align 4
  %66 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %67 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %66, i32 0, i32 1
  %68 = load i32* %67, align 4
  store i32 %68, i32* %src_rows, align 4
  %69 = load %struct.xf_Mat_9_256_256_1_** %4, align 8
  %70 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %69, i32 0, i32 2
  %71 = load i32* %70, align 4
  store i32 %71, i32* %dst_cols, align 4
  %72 = load %struct.xf_Mat_9_256_256_1_** %4, align 8
  %73 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %72, i32 0, i32 1
  %74 = load i32* %73, align 4
  store i32 %74, i32* %dst_rows, align 4
  br label %75

; <label>:75                                      ; preds = %62
  store i32 0, i32* %i, align 4
  br label %76

; <label>:76                                      ; preds = %121, %75
  %77 = load i32* %i, align 4
  %78 = load i32* %src_rows, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %124

; <label>:80                                      ; preds = %76
  store i32 0, i32* %j, align 4
  br label %81

; <label>:81                                      ; preds = %117, %80
  %82 = load i32* %j, align 4
  %83 = load i32* %src_cols, align 4
  %84 = ashr i32 %83, 0
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %120

; <label>:86                                      ; preds = %81
  %87 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %88 = load i32* %i, align 4
  %89 = load i32* %src_cols, align 4
  %90 = ashr i32 %89, 0
  %91 = mul nsw i32 %88, %90
  %92 = load i32* %j, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %87, i32 %93)
  %95 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %96 = bitcast [1 x i8]* %95 to i8*
  store i8 %94, i8* %96, align 1
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.2"* %_in1, %class.ap_uint.0* %5)
  %97 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %98 = load i32* %i, align 4
  %99 = load i32* %src_cols, align 4
  %100 = ashr i32 %99, 0
  %101 = mul nsw i32 %98, %100
  %102 = load i32* %j, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %97, i32 %103)
  %105 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %106 = bitcast [1 x i8]* %105 to i8*
  store i8 %104, i8* %106, align 1
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.2"* %_in2, %class.ap_uint.0* %6)
  %107 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %108 = load i32* %i, align 4
  %109 = load i32* %src_cols, align 4
  %110 = ashr i32 %109, 0
  %111 = mul nsw i32 %108, %110
  %112 = load i32* %j, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %107, i32 %113)
  %115 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %116 = bitcast [1 x i8]* %115 to i8*
  store i8 %114, i8* %116, align 1
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.2"* %_in3, %class.ap_uint.0* %7)
  br label %117

; <label>:117                                     ; preds = %86
  %118 = load i32* %j, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %j, align 4
  br label %81

; <label>:120                                     ; preds = %81
  br label %121

; <label>:121                                     ; preds = %120
  %122 = load i32* %i, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %i, align 4
  br label %76

; <label>:124                                     ; preds = %76
  %125 = load i32* %src_rows, align 4
  %126 = trunc i32 %125 to i16
  %127 = load i32* %src_cols, align 4
  %128 = trunc i32 %127 to i16
  call void @_ZL153p_ZN2xf16xfChannelCombineILi256ELi256ELi0ELi9ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi24EEEtt_1RN3hls6streamI7ap_uintILi8EEEES4_S4_RNS0_IS1_ILi24EEEEtt(%"class.hls::stream.2"* %_in1, %"class.hls::stream.2"* %_in2, %"class.hls::stream.2"* %_in3, %"class.hls::stream.3"* %_out, i16 zeroext %126, i16 zeroext %128)
  br label %129

; <label>:129                                     ; preds = %124
  store i32 0, i32* %i1, align 4
  br label %130

; <label>:130                                     ; preds = %162, %129
  %131 = load i32* %i1, align 4
  %132 = load i32* %dst_rows, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %165

; <label>:134                                     ; preds = %130
  store i32 0, i32* %j2, align 4
  br label %135

; <label>:135                                     ; preds = %158, %134
  %136 = load i32* %j2, align 4
  %137 = load i32* %dst_cols, align 4
  %138 = ashr i32 %137, 0
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %161

; <label>:140                                     ; preds = %135
  %141 = call i24 @_ZN3hls6streamI7ap_uintILi24EEE4readEv(%"class.hls::stream.3"* %_out)
  %142 = getelementptr %class.ap_uint.1* %outpix, i32 0, i32 0
  store i24 %141, i24* %8
  %143 = bitcast i24* %8 to [3 x i8]*
  %144 = load [3 x i8]* %143, align 1
  store [3 x i8] %144, [3 x i8]* %142
  %145 = load %struct.xf_Mat_9_256_256_1_** %4, align 8
  %146 = load i32* %i1, align 4
  %147 = load i32* %dst_cols, align 4
  %148 = ashr i32 %147, 0
  %149 = mul nsw i32 %146, %148
  %150 = load i32* %j2, align 4
  %151 = add nsw i32 %149, %150
  %152 = bitcast %class.ap_uint.1* %9 to i8*
  %153 = bitcast %class.ap_uint.1* %outpix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %153, i64 3, i32 1, i1 false)
  %154 = getelementptr %class.ap_uint.1* %9, i32 0, i32 0
  %155 = bitcast i24* %10 to [3 x i8]*
  %156 = load [3 x i8]* %154
  store [3 x i8] %156, [3 x i8]* %155, align 1
  %157 = load i24* %10
  call void @_ZL52p_ZN2xf16Mat_9_256_256_1_5writeIEEi7ap_uintILi24EE_1P19xf_Mat_9_256_256_1_i7ap_uintILi24EE(%struct.xf_Mat_9_256_256_1_* %145, i32 %151, i24 %157)
  br label %158

; <label>:158                                     ; preds = %140
  %159 = load i32* %j2, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %j2, align 4
  br label %135

; <label>:161                                     ; preds = %135
  br label %162

; <label>:162                                     ; preds = %161
  %163 = load i32* %i1, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %i1, align 4
  br label %130

; <label>:165                                     ; preds = %130
  ret void
}

define internal void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_9_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_9_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %struct.xf_Mat_9_256_256_1_* %srcMat, %struct.xf_Mat_9_256_256_1_** %1, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %2, align 8
  %3 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %4 = load %class.ap_uint** %2, align 8
  call void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1P14xf_accel_utilsR19xf_Mat_9_256_256_1_P7ap_uintILi256EE(%struct.xf_accel_utils* %au, %struct.xf_Mat_9_256_256_1_* %3, %class.ap_uint* %4)
  ret void
}

define internal void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1P14xf_accel_utilsR19xf_Mat_9_256_256_1_P7ap_uintILi256EE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_9_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %struct.xf_Mat_9_256_256_1_* %srcMat, %struct.xf_Mat_9_256_256_1_** %2, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %3, align 8
  store i32 8, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  call void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi9ELi256ELi256ELi1ELi65536EEER3MatILi9ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1P14xf_accel_utilsR19xf_Mat_9_256_256_1_RN3hls6streamI7ap_uintILi256EEEE(%struct.xf_accel_utils* %10, %struct.xf_Mat_9_256_256_1_* %11, %"class.hls::stream"* %strm)
  %12 = load %struct.xf_accel_utils** %1, align 8
  %13 = load %class.ap_uint** %3, align 8
  %14 = load i32* %rows, align 4
  %15 = load i32* %cols, align 4
  call void @_ZL122p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi3ELi8ELi6144EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEEPS4_ii(%struct.xf_accel_utils* %12, %"class.hls::stream"* %strm, %class.ap_uint* %13, i32 %14, i32 %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"*)

define internal void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi9ELi256ELi256ELi1ELi65536EEER3MatILi9ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1P14xf_accel_utilsR19xf_Mat_9_256_256_1_RN3hls6streamI7ap_uintILi256EEEE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_9_256_256_1_* %srcMat, %"class.hls::stream"* %dstStrm) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %3 = alloca %"class.hls::stream"*, align 8
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %bits_to_add = alloca i32, align 4
  %N_size = alloca i32, align 4
  %r = alloca %class.ap_uint, align 1
  %in = alloca %class.ap_uint.1, align 1
  %i = alloca i32, align 4
  %4 = alloca %class.ap_uint.1, align 1
  %5 = alloca i24
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %struct.xf_Mat_9_256_256_1_* %srcMat, %struct.xf_Mat_9_256_256_1_** %2, align 8
  store %"class.hls::stream"* %dstStrm, %"class.hls::stream"** %3, align 8
  %6 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %6, i32 0, i32 1
  %8 = load i32* %7, align 4
  store i32 %8, i32* %rows, align 4
  %9 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %9, i32 0, i32 2
  %11 = load i32* %10, align 4
  store i32 %11, i32* %cols, align 4
  %12 = load i32* %rows, align 4
  %13 = load i32* %cols, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 1
  store i32 %15, i32* %loop_count, align 4
  store i32 256, i32* %bits_to_add, align 4
  store i32 24, i32* %N_size, align 4
  call void @_ZN7ap_uintILi256EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.1* %in)
  br label %16

; <label>:16                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %66, %16
  %18 = load i32* %i, align 4
  %19 = load i32* %loop_count, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %69

; <label>:21                                      ; preds = %17
  %22 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %23 = load i32* %i, align 4
  %24 = call i24 @_ZL36p_ZN2xf16Mat_9_256_256_1_4readIEEi_1P19xf_Mat_9_256_256_1_i(%struct.xf_Mat_9_256_256_1_* %22, i32 %23)
  %25 = getelementptr %class.ap_uint.1* %4, i32 0, i32 0
  store i24 %24, i24* %5
  %26 = bitcast i24* %5 to [3 x i8]*
  %27 = load [3 x i8]* %26, align 1
  store [3 x i8] %27, [3 x i8]* %25
  %28 = call %class.ap_uint.1* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.1* %in, %class.ap_uint.1* %4)
  %29 = load i32* %bits_to_add, align 4
  %30 = icmp sle i32 %29, 24
  br i1 %30, label %31, label %54

; <label>:31                                      ; preds = %21
  %32 = load i32* %bits_to_add, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.1* %in, i32 %33, i32 0)
  %35 = load i64* %34
  %36 = load i32* %bits_to_add, align 4
  %37 = sub nsw i32 256, %36
  %38 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 255, i32 %37)
  store i64 %35, i64* %38
  %39 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"* %39, %class.ap_uint* %r)
  %40 = load i32* %bits_to_add, align 4
  %41 = icmp ne i32 %40, 24
  br i1 %41, label %42, label %50

; <label>:42                                      ; preds = %31
  %43 = load i32* %bits_to_add, align 4
  %44 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.1* %in, i32 23, i32 %43)
  %45 = load i64* %44
  %46 = load i32* %bits_to_add, align 4
  %47 = sub nsw i32 24, %46
  %48 = sub nsw i32 %47, 1
  %49 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %48, i32 0)
  store i64 %45, i64* %49
  br label %50

; <label>:50                                      ; preds = %42, %31
  %51 = load i32* %bits_to_add, align 4
  %52 = sub nsw i32 24, %51
  %53 = sub nsw i32 256, %52
  store i32 %53, i32* %bits_to_add, align 4
  br label %65

; <label>:54                                      ; preds = %21
  %55 = call i64 @_ZNK7ap_uintILi24EEcvmEv(%class.ap_uint.1* %in)
  %56 = load i32* %bits_to_add, align 4
  %57 = sub nsw i32 256, %56
  %58 = add nsw i32 %57, 24
  %59 = sub nsw i32 %58, 1
  %60 = load i32* %bits_to_add, align 4
  %61 = sub nsw i32 256, %60
  %62 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %59, i32 %61)
  store i64 %55, i64* %62
  %63 = load i32* %bits_to_add, align 4
  %64 = sub nsw i32 %63, 24
  store i32 %64, i32* %bits_to_add, align 4
  br label %65

; <label>:65                                      ; preds = %54, %50
  br label %66

; <label>:66                                      ; preds = %65
  %67 = load i32* %i, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %i, align 4
  br label %17

; <label>:69                                      ; preds = %17
  %70 = load i32* %bits_to_add, align 4
  %71 = icmp ne i32 %70, 256
  br i1 %71, label %72, label %74

; <label>:72                                      ; preds = %69
  %73 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"* %73, %class.ap_uint* %r)
  br label %74

; <label>:74                                      ; preds = %72, %69
  ret void
}

define internal void @_ZL122p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi3ELi8ELi6144EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEEPS4_ii(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %class.ap_uint* %dstPtr, i32 %rows, i32 %cols) uwtable {
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
  store i32 24, i32* %pixel_width, align 4
  %7 = load i32* %4, align 4
  %8 = load i32* %5, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32* %pixel_width, align 4
  %11 = mul nsw i32 %9, %10
  %12 = add nsw i32 %11, 256
  %13 = sub nsw i32 %12, 1
  %14 = sdiv i32 %13, 256
  store i32 %14, i32* %loop_count, align 4
  store i32 0, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %26, %0
  %16 = load i32* %i, align 4
  %17 = load i32* %loop_count, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %29

; <label>:19                                      ; preds = %15
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = load %class.ap_uint** %3, align 8
  %23 = getelementptr inbounds %class.ap_uint* %22, i64 %21
  %24 = load %"class.hls::stream"** %2, align 8
  call void @_ZN3hls6streamI7ap_uintILi256EEE4readEv(%class.ap_uint* sret %6, %"class.hls::stream"* %24)
  %25 = call %class.ap_uint* @_ZN7ap_uintILi256EEaSERKS0_(%class.ap_uint* %23, %class.ap_uint* %6)
  br label %26

; <label>:26                                      ; preds = %19
  %27 = load i32* %i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4
  br label %15

; <label>:29                                      ; preds = %15
  ret void
}

declare %class.ap_uint* @_ZN7ap_uintILi256EEaSERKS0_(%class.ap_uint*, %class.ap_uint*)

declare void @_ZN3hls6streamI7ap_uintILi256EEE4readEv(%class.ap_uint* sret, %"class.hls::stream"*)

declare void @_ZN7ap_uintILi256EEC1Ev(%class.ap_uint*)

declare void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.1*)

declare %class.ap_uint.1* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.1*, %class.ap_uint.1*)

define internal i24 @_ZL36p_ZN2xf16Mat_9_256_256_1_4readIEEi_1P19xf_Mat_9_256_256_1_i(%struct.xf_Mat_9_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.1, align 1
  %2 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i24
  store %struct.xf_Mat_9_256_256_1_* %this_, %struct.xf_Mat_9_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %5 = load i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.1]* %8, i32 0, i64 %6
  %10 = bitcast %class.ap_uint.1* %1 to i8*
  %11 = bitcast %class.ap_uint.1* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 3, i32 1, i1 false)
  %12 = getelementptr %class.ap_uint.1* %1, i32 0, i32 0
  %13 = bitcast i24* %4 to [3 x i8]*
  %14 = load [3 x i8]* %12
  store [3 x i8] %14, [3 x i8]* %13, align 1
  %15 = load i24* %4
  ret i24 %15
}

declare i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.1*, i32, i32)

declare i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

declare i64 @_ZNK7ap_uintILi24EEcvmEv(%class.ap_uint.1*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.2"*)

declare void @_ZN3hls6streamI7ap_uintILi24EEEC1Ev(%"class.hls::stream.3"*)

declare void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.2"*, %class.ap_uint.0*)

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

define internal void @_ZL153p_ZN2xf16xfChannelCombineILi256ELi256ELi0ELi9ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi24EEEtt_1RN3hls6streamI7ap_uintILi8EEEES4_S4_RNS0_IS1_ILi24EEEEtt(%"class.hls::stream.2"* %_in1, %"class.hls::stream.2"* %_in2, %"class.hls::stream.2"* %_in3, %"class.hls::stream.3"* %_out, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %"class.hls::stream.2"*, align 8
  %2 = alloca %"class.hls::stream.2"*, align 8
  %3 = alloca %"class.hls::stream.2"*, align 8
  %4 = alloca %"class.hls::stream.3"*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %"class.hls::stream.2"* %_in1, %"class.hls::stream.2"** %1, align 8
  store %"class.hls::stream.2"* %_in2, %"class.hls::stream.2"** %2, align 8
  store %"class.hls::stream.2"* %_in3, %"class.hls::stream.2"** %3, align 8
  store %"class.hls::stream.3"* %_out, %"class.hls::stream.3"** %4, align 8
  store i16 %height, i16* %5, align 2
  store i16 %width, i16* %6, align 2
  %7 = load i16* %6, align 2
  %8 = zext i16 %7 to i32
  %9 = ashr i32 %8, 0
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %6, align 2
  %11 = load %"class.hls::stream.2"** %1, align 8
  %12 = load %"class.hls::stream.2"** %2, align 8
  %13 = load %"class.hls::stream.2"** %3, align 8
  %14 = load %"class.hls::stream.3"** %4, align 8
  %15 = load i16* %5, align 2
  %16 = load i16* %6, align 2
  call void @_ZL165p_ZN2xf22xfChannelCombineKernelILi256ELi256ELi0ELi9ELi1ELi256EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi24EEEtt_1RN3hls6streamI7ap_uintILi8EEEES4_S4_RNS0_IS1_ILi24EEEEtt(%"class.hls::stream.2"* %11, %"class.hls::stream.2"* %12, %"class.hls::stream.2"* %13, %"class.hls::stream.3"* %14, i16 zeroext %15, i16 zeroext %16)
  ret void
}

declare i24 @_ZN3hls6streamI7ap_uintILi24EEE4readEv(%"class.hls::stream.3"*)

define internal void @_ZL52p_ZN2xf16Mat_9_256_256_1_5writeIEEi7ap_uintILi24EE_1P19xf_Mat_9_256_256_1_i7ap_uintILi24EE(%struct.xf_Mat_9_256_256_1_* %this_, i32 %index, i24 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.1, align 4
  %3 = alloca i24
  store %struct.xf_Mat_9_256_256_1_* %this_, %struct.xf_Mat_9_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %4 = getelementptr %class.ap_uint.1* %val, i32 0, i32 0
  store i24 %val.coerce, i24* %3
  %5 = bitcast i24* %3 to [3 x i8]*
  %6 = load [3 x i8]* %5, align 1
  store [3 x i8] %6, [3 x i8]* %4
  %7 = load i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %9, i32 0, i32 4
  %11 = getelementptr inbounds [65536 x %class.ap_uint.1]* %10, i32 0, i64 %8
  %12 = call %class.ap_uint.1* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.1* %11, %class.ap_uint.1* %val)
  ret void
}

define internal void @_ZL165p_ZN2xf22xfChannelCombineKernelILi256ELi256ELi0ELi9ELi1ELi256EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi24EEEtt_1RN3hls6streamI7ap_uintILi8EEEES4_S4_RNS0_IS1_ILi24EEEEtt(%"class.hls::stream.2"* %_in1, %"class.hls::stream.2"* %_in2, %"class.hls::stream.2"* %_in3, %"class.hls::stream.3"* %_out, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %"class.hls::stream.2"*, align 8
  %2 = alloca %"class.hls::stream.2"*, align 8
  %3 = alloca %"class.hls::stream.2"*, align 8
  %4 = alloca %"class.hls::stream.3"*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %val1 = alloca %class.ap_uint.0, align 1
  %val2 = alloca %class.ap_uint.0, align 1
  %val3 = alloca %class.ap_uint.0, align 1
  %channel1 = alloca i8, align 1
  %channel2 = alloca i8, align 1
  %channel3 = alloca i8, align 1
  %noofbits = alloca i32, align 4
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %res = alloca %class.ap_uint.1, align 1
  %7 = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint.0, align 1
  %9 = alloca %class.ap_uint.0, align 1
  %k = alloca i32, align 4
  %_in_k = alloca i32, align 4
  %y = alloca i32, align 4
  %result = alloca i32, align 4
  store %"class.hls::stream.2"* %_in1, %"class.hls::stream.2"** %1, align 8
  store %"class.hls::stream.2"* %_in2, %"class.hls::stream.2"** %2, align 8
  store %"class.hls::stream.2"* %_in3, %"class.hls::stream.2"** %3, align 8
  store %"class.hls::stream.3"* %_out, %"class.hls::stream.3"** %4, align 8
  store i16 %height, i16* %5, align 2
  store i16 %width, i16* %6, align 2
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val1)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val2)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val3)
  store i32 8, i32* %noofbits, align 4
  %10 = load i16* %5, align 2
  %11 = zext i16 %10 to i32
  store i32 %11, i32* %rows, align 4
  %12 = load i16* %6, align 2
  %13 = zext i16 %12 to i32
  store i32 %13, i32* %cols, align 4
  br label %14

; <label>:14                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %97, %14
  %16 = load i32* %i, align 4
  %17 = load i32* %rows, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %100

; <label>:19                                      ; preds = %15
  br label %20

; <label>:20                                      ; preds = %19
  store i32 0, i32* %j, align 4
  br label %21

; <label>:21                                      ; preds = %93, %20
  %22 = load i32* %j, align 4
  %23 = load i32* %cols, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %96

; <label>:25                                      ; preds = %21
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.1* %res)
  %26 = load %"class.hls::stream.2"** %1, align 8
  %27 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.2"* %26)
  %28 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %29 = bitcast [1 x i8]* %28 to i8*
  store i8 %27, i8* %29, align 1
  %30 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val1, %class.ap_uint.0* %7)
  %31 = load %"class.hls::stream.2"** %2, align 8
  %32 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.2"* %31)
  %33 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %34 = bitcast [1 x i8]* %33 to i8*
  store i8 %32, i8* %34, align 1
  %35 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val2, %class.ap_uint.0* %8)
  %36 = load %"class.hls::stream.2"** %3, align 8
  %37 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.2"* %36)
  %38 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %39 = bitcast [1 x i8]* %38 to i8*
  store i8 %37, i8* %39, align 1
  %40 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val3, %class.ap_uint.0* %9)
  br label %41

; <label>:41                                      ; preds = %25
  store i32 0, i32* %k, align 4
  br label %42

; <label>:42                                      ; preds = %88, %41
  %43 = load i32* %k, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %91

; <label>:45                                      ; preds = %42
  %46 = load i32* %k, align 4
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 8, %47
  %49 = add nsw i64 0, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %_in_k, align 4
  %51 = load i32* %_in_k, align 4
  %52 = mul nsw i32 %51, 3
  store i32 %52, i32* %y, align 4
  %53 = load i32* %_in_k, align 4
  %54 = add nsw i32 %53, 7
  %55 = load i32* %_in_k, align 4
  %56 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %val1, i32 %54, i32 %55)
  %57 = load i64* %56
  %58 = trunc i64 %57 to i8
  store i8 %58, i8* %channel1, align 1
  %59 = load i32* %_in_k, align 4
  %60 = add nsw i32 %59, 7
  %61 = load i32* %_in_k, align 4
  %62 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %val2, i32 %60, i32 %61)
  %63 = load i64* %62
  %64 = trunc i64 %63 to i8
  store i8 %64, i8* %channel2, align 1
  %65 = load i32* %_in_k, align 4
  %66 = add nsw i32 %65, 7
  %67 = load i32* %_in_k, align 4
  %68 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %val3, i32 %66, i32 %67)
  %69 = load i64* %68
  %70 = trunc i64 %69 to i8
  store i8 %70, i8* %channel3, align 1
  %71 = load i8* %channel3, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 0
  %74 = load i8* %channel2, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 8
  %77 = or i32 %73, %76
  %78 = load i8* %channel1, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 16
  %81 = or i32 %77, %80
  store i32 %81, i32* %result, align 4
  %82 = load i32* %result, align 4
  %83 = zext i32 %82 to i64
  %84 = load i32* %y, align 4
  %85 = add nsw i32 %84, 23
  %86 = load i32* %y, align 4
  %87 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.1* %res, i32 %85, i32 %86)
  store i64 %83, i64* %87
  br label %88

; <label>:88                                      ; preds = %45
  %89 = load i32* %k, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %k, align 4
  br label %42

; <label>:91                                      ; preds = %42
  %92 = load %"class.hls::stream.3"** %4, align 8
  call void @_ZN3hls6streamI7ap_uintILi24EEE5writeERKS2_(%"class.hls::stream.3"* %92, %class.ap_uint.1* %res)
  br label %93

; <label>:93                                      ; preds = %91
  %94 = load i32* %j, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %j, align 4
  br label %21

; <label>:96                                      ; preds = %21
  br label %97

; <label>:97                                      ; preds = %96
  %98 = load i32* %i, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %i, align 4
  br label %15

; <label>:100                                     ; preds = %15
  ret void
}

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0*, %class.ap_uint.0*)

declare i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.2"*)

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi24EEE5writeERKS2_(%"class.hls::stream.3"*, %class.ap_uint.1*)

define internal void @_ZL108p_ZN2xf11accel_utils11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi256EER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
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
  call void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"* %strm)
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
  call void @_ZL122p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi1ELi8ELi2048EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1P14xf_accel_utilsP7ap_uintILi256EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %10, %class.ap_uint* %11, %"class.hls::stream"* %strm, i32 %12, i32 %13)
  %14 = load %struct.xf_accel_utils** %1, align 8
  %15 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  call void @_ZL127p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi256EEER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %14, %"class.hls::stream"* %strm, %struct.xf_Mat_0_256_256_1_* %15)
  ret void
}

define internal void @_ZL122p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi1ELi8ELi2048EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1P14xf_accel_utilsP7ap_uintILi256EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %"class.hls::stream"* %dstStrm, i32 %rows, i32 %cols) uwtable {
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
  %11 = add nsw i32 %10, 256
  %12 = sub nsw i32 %11, 1
  %13 = sdiv i32 %12, 256
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
  call void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"* %19, %class.ap_uint* %23)
  br label %24

; <label>:24                                      ; preds = %18
  %25 = load i32* %i, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %14

; <label>:27                                      ; preds = %14
  ret void
}

define internal void @_ZL127p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi256EEER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
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
  call void @_ZN7ap_uintILi256EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %out)
  br label %16

; <label>:16                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %68, %16
  %18 = load i32* %i, align 4
  %19 = load i32* %loop_count, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %71

; <label>:21                                      ; preds = %17
  %22 = load i32* %valid_bits, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %48

; <label>:24                                      ; preds = %21
  %25 = load i32* %valid_bits, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

; <label>:27                                      ; preds = %24
  %28 = load i32* %valid_bits, align 4
  %29 = sub nsw i32 256, %28
  %30 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 255, i32 %29)
  %31 = load i64* %30
  %32 = load i32* %valid_bits, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %out, i32 %33, i32 0)
  store i64 %31, i64* %34
  br label %35

; <label>:35                                      ; preds = %27, %24
  %36 = load %"class.hls::stream"** %2, align 8
  call void @_ZN3hls6streamI7ap_uintILi256EEE4readEv(%class.ap_uint* sret %4, %"class.hls::stream"* %36)
  %37 = call %class.ap_uint* @_ZN7ap_uintILi256EEaSERKS0_(%class.ap_uint* %r, %class.ap_uint* %4)
  %38 = load i32* %valid_bits, align 4
  %39 = sub nsw i32 8, %38
  %40 = sub nsw i32 %39, 1
  %41 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %40, i32 0)
  %42 = load i64* %41
  %43 = load i32* %valid_bits, align 4
  %44 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %out, i32 7, i32 %43)
  store i64 %42, i64* %44
  %45 = load i32* %valid_bits, align 4
  %46 = sub nsw i32 8, %45
  %47 = sub nsw i32 256, %46
  store i32 %47, i32* %valid_bits, align 4
  br label %60

; <label>:48                                      ; preds = %21
  %49 = load i32* %valid_bits, align 4
  %50 = sub nsw i32 256, %49
  %51 = add nsw i32 %50, 8
  %52 = sub nsw i32 %51, 1
  %53 = load i32* %valid_bits, align 4
  %54 = sub nsw i32 256, %53
  %55 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %52, i32 %54)
  %56 = load i64* %55
  %57 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %out, i64 %56)
  %58 = load i32* %valid_bits, align 4
  %59 = sub nsw i32 %58, 8
  store i32 %59, i32* %valid_bits, align 4
  br label %60

; <label>:60                                      ; preds = %48, %35
  %61 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %62 = load i32* %i, align 4
  %63 = bitcast %class.ap_uint.0* %5 to i8*
  %64 = bitcast %class.ap_uint.0* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 1, i32 1, i1 false)
  %65 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %66 = bitcast [1 x i8]* %65 to i8*
  %67 = load i8* %66, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %61, i32 %62, i8 %67)
  br label %68

; <label>:68                                      ; preds = %60
  %69 = load i32* %i, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %i, align 4
  br label %17

; <label>:71                                      ; preds = %17
  ret void
}

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0*, i64)

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

define internal void @_ZL38p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1P19xf_Mat_9_256_256_1_iib(%struct.xf_Mat_9_256_256_1_* %this_, i32 %_rows, i32 %_cols, i1 zeroext %allocate) nounwind uwtable {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.xf_Mat_9_256_256_1_* %this_, %struct.xf_Mat_9_256_256_1_** %1, align 8
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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1P19xf_Mat_9_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load i32* %2, align 4
  %22 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32* %3, align 4
  %25 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %26 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32* %2, align 4
  %28 = load i32* %3, align 4
  %29 = ashr i32 %28, 0
  %30 = mul nsw i32 %27, %29
  %31 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %32 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i8* %4, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %20
  br label %36

; <label>:36                                      ; preds = %35, %20
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_9_256_256_1_C2Ev(%struct.xf_Mat_9_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  store %struct.xf_Mat_9_256_256_1_* %this, %struct.xf_Mat_9_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_9_256_256_1_** %1
  %3 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %2, i32 0, i32 4
  %4 = getelementptr inbounds [65536 x %class.ap_uint.1]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.1* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint.1* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.1* %7)
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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
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

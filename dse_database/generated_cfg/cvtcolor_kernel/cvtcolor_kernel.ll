; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/cvtcolor_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [64 x i8] }
%struct.xf_Mat_9_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [3 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.1] }
%class.ap_uint.1 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.2 = type { [2 x i8] }
%class.ap_int = type { [4 x i8] }

@.str = private unnamed_addr constant [107 x i8] c"((_src.rows <= ROWS ) && (_src.cols <= COLS)) && \22 BGR image rows and cols should be less than ROWS, COLS\22\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"xf_cvt_color.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL99p_ZN2xf8bgr2grayILi9ELi0ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_9_256_256_1_R19xf_Mat_0_256_256_1_ = private unnamed_addr constant [165 x i8] c"void p_ZN2xf8bgr2grayILi9ELi0ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1(struct xf_Mat_9_256_256_1_ &, struct xf_Mat_0_256_256_1_ &)\00", align 1
@.str2 = private unnamed_addr constant [100 x i8] c"(( _dst.cols == _src.cols) && (_dst.rows == _src.rows)) && \22BGR and GRAY plane dimensions mismatch\22\00", align 1
@.str3 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1P19xf_Mat_9_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1(struct xf_Mat_9_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z17cvtcolor_bgr2grayP7ap_uintILi512EES1_ii(%class.ap_uint* %img_bgr, %class.ap_uint* %img_gray, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %imgInput0 = alloca %struct.xf_Mat_9_256_256_1_, align 4
  %imgOutput0 = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_bgr, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_gray, %class.ap_uint** %2, align 8
  store i32 %rows, i32* %3, align 4
  store i32 %cols, i32* %4, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_9_256_256_1_C1Ev(%struct.xf_Mat_9_256_256_1_* %imgInput0)
  call void @_ZL33p_ZN2xf16Mat_9_256_256_1_C2IEEv_1P19xf_Mat_9_256_256_1_(%struct.xf_Mat_9_256_256_1_* %imgInput0)
  %5 = load i32* %3, align 4
  %6 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %imgInput0, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load i32* %4, align 4
  %8 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %imgInput0, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %imgOutput0)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %imgOutput0)
  %9 = load i32* %3, align 4
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %imgOutput0, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32* %4, align 4
  %12 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %imgOutput0, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi512ELi9ELi256ELi256ELi1EEEP7ap_uintILi512EER3MatILi9ELi256ELi256ELi1EE_1P7ap_uintILi512EER19xf_Mat_9_256_256_1_(%class.ap_uint* %13, %struct.xf_Mat_9_256_256_1_* %imgInput0)
  call void @_ZL99p_ZN2xf8bgr2grayILi9ELi0ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_9_256_256_1_R19xf_Mat_0_256_256_1_(%struct.xf_Mat_9_256_256_1_* %imgInput0, %struct.xf_Mat_0_256_256_1_* %imgOutput0)
  %14 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi512ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi512EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi512EE(%struct.xf_Mat_0_256_256_1_* %imgOutput0, %class.ap_uint* %14)
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

define internal void @_ZL95p_ZN2xf11Array2xfMatILi512ELi9ELi256ELi256ELi1EEEP7ap_uintILi512EER3MatILi9ELi256ELi256ELi1EE_1P7ap_uintILi512EER19xf_Mat_9_256_256_1_(%class.ap_uint* %srcPtr, %struct.xf_Mat_9_256_256_1_* %dstMat) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %class.ap_uint* %srcPtr, %class.ap_uint** %1, align 8
  store %struct.xf_Mat_9_256_256_1_* %dstMat, %struct.xf_Mat_9_256_256_1_** %2, align 8
  %3 = load %class.ap_uint** %1, align 8
  %4 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  call void @_ZL108p_ZN2xf11accel_utils11Array2xfMatILi512ELi9ELi256ELi256ELi1EEEP7ap_uintILi512EER3MatILi9ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi512EER19xf_Mat_9_256_256_1_(%struct.xf_accel_utils* %au, %class.ap_uint* %3, %struct.xf_Mat_9_256_256_1_* %4)
  ret void
}

define internal void @_ZL99p_ZN2xf8bgr2grayILi9ELi0ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_9_256_256_1_R19xf_Mat_0_256_256_1_(%struct.xf_Mat_9_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_* %_dst) uwtable {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  store %struct.xf_Mat_9_256_256_1_* %_src, %struct.xf_Mat_9_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst, %struct.xf_Mat_0_256_256_1_** %2, align 8
  %3 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %4 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %3, i32 0, i32 1
  %5 = load i32* %4, align 4
  %6 = icmp sle i32 %5, 256
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %8, i32 0, i32 2
  %10 = load i32* %9, align 4
  %11 = icmp sle i32 %10, 256
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %7
  br label %15

; <label>:13                                      ; preds = %7, %0
  call void @__assert_fail(i8* getelementptr inbounds ([107 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0), i32 4586, i8* getelementptr inbounds ([165 x i8]* @__PRETTY_FUNCTION__._ZL99p_ZN2xf8bgr2grayILi9ELi0ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_9_256_256_1_R19xf_Mat_0_256_256_1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %17 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %16, i32 0, i32 2
  %18 = load i32* %17, align 4
  %19 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %20 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %19, i32 0, i32 2
  %21 = load i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %32

; <label>:23                                      ; preds = %15
  %24 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %25 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %24, i32 0, i32 1
  %26 = load i32* %25, align 4
  %27 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %28 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %27, i32 0, i32 1
  %29 = load i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %23
  br label %34

; <label>:32                                      ; preds = %23, %15
  call void @__assert_fail(i8* getelementptr inbounds ([100 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0), i32 4587, i8* getelementptr inbounds ([165 x i8]* @__PRETTY_FUNCTION__._ZL99p_ZN2xf8bgr2grayILi9ELi0ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_9_256_256_1_R19xf_Mat_0_256_256_1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %34

; <label>:34                                      ; preds = %33, %31
  %35 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %36 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %37 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %38 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %37, i32 0, i32 1
  %39 = load i32* %38, align 4
  %40 = trunc i32 %39 to i16
  %41 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %42 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %41, i32 0, i32 2
  %43 = load i32* %42, align 4
  %44 = trunc i32 %43 to i16
  call void @_ZL120p_ZN2xf10xfbgr2grayILi9ELi0ELi256ELi256ELi1ELi9ELi1ELi32768EEER3MatILi9ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEtt_1R19xf_Mat_9_256_256_1_R19xf_Mat_0_256_256_1_tt(%struct.xf_Mat_9_256_256_1_* %35, %struct.xf_Mat_0_256_256_1_* %36, i16 zeroext %40, i16 zeroext %44)
  ret void
}

define internal void @_ZL95p_ZN2xf11xfMat2ArrayILi512ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi512EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi512EE(%struct.xf_Mat_0_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %struct.xf_Mat_0_256_256_1_* %srcMat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %2, align 8
  %3 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %4 = load %class.ap_uint** %2, align 8
  call void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi512ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi512EE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_P7ap_uintILi512EE(%struct.xf_accel_utils* %au, %struct.xf_Mat_0_256_256_1_* %3, %class.ap_uint* %4)
  ret void
}

define internal void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi512ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi512EE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_P7ap_uintILi512EE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_0_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
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
  call void @_ZN3hls6streamI7ap_uintILi512EEEC1Ev(%"class.hls::stream"* %strm)
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
  call void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi512ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi512EEE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_RN3hls6streamI7ap_uintILi512EEEE(%struct.xf_accel_utils* %10, %struct.xf_Mat_0_256_256_1_* %11, %"class.hls::stream"* %strm)
  %12 = load %struct.xf_accel_utils** %1, align 8
  %13 = load %class.ap_uint** %3, align 8
  %14 = load i32* %rows, align 4
  %15 = load i32* %cols, align 4
  call void @_ZL122p_ZN2xf11accel_utils13hlsStrm2ArrayILi512ELi256ELi256ELi1ELi1ELi8ELi1024EEER6streamI7ap_uintILi512EEEP7ap_uintILi512EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi512EEEEPS4_ii(%struct.xf_accel_utils* %12, %"class.hls::stream"* %strm, %class.ap_uint* %13, i32 %14, i32 %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi512EEEC1Ev(%"class.hls::stream"*)

define internal void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi512ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi512EEE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_RN3hls6streamI7ap_uintILi512EEEE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_0_256_256_1_* %srcMat, %"class.hls::stream"* %dstStrm) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
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
  store i32 512, i32* %bits_to_add, align 4
  store i32 8, i32* %N_size, align 4
  call void @_ZN7ap_uintILi512EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1* %in)
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
  %24 = getelementptr %class.ap_uint.1* %4, i32 0, i32 0
  %25 = bitcast [1 x i8]* %24 to i8*
  store i8 %23, i8* %25, align 1
  %26 = call %class.ap_uint.1* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.1* %in, %class.ap_uint.1* %4)
  %27 = load i32* %bits_to_add, align 4
  %28 = icmp sle i32 %27, 8
  br i1 %28, label %29, label %52

; <label>:29                                      ; preds = %20
  %30 = load i32* %bits_to_add, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.1* %in, i32 %31, i32 0)
  %33 = load i64* %32
  %34 = load i32* %bits_to_add, align 4
  %35 = sub nsw i32 512, %34
  %36 = call i64* @_ZN7ap_uintILi512EE5rangeEii(%class.ap_uint* %r, i32 511, i32 %35)
  store i64 %33, i64* %36
  %37 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi512EEE5writeERKS2_(%"class.hls::stream"* %37, %class.ap_uint* %r)
  %38 = load i32* %bits_to_add, align 4
  %39 = icmp ne i32 %38, 8
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %29
  %41 = load i32* %bits_to_add, align 4
  %42 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.1* %in, i32 7, i32 %41)
  %43 = load i64* %42
  %44 = load i32* %bits_to_add, align 4
  %45 = sub nsw i32 8, %44
  %46 = sub nsw i32 %45, 1
  %47 = call i64* @_ZN7ap_uintILi512EE5rangeEii(%class.ap_uint* %r, i32 %46, i32 0)
  store i64 %43, i64* %47
  br label %48

; <label>:48                                      ; preds = %40, %29
  %49 = load i32* %bits_to_add, align 4
  %50 = sub nsw i32 8, %49
  %51 = sub nsw i32 512, %50
  store i32 %51, i32* %bits_to_add, align 4
  br label %63

; <label>:52                                      ; preds = %20
  %53 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.1* %in)
  %54 = load i32* %bits_to_add, align 4
  %55 = sub nsw i32 512, %54
  %56 = add nsw i32 %55, 8
  %57 = sub nsw i32 %56, 1
  %58 = load i32* %bits_to_add, align 4
  %59 = sub nsw i32 512, %58
  %60 = call i64* @_ZN7ap_uintILi512EE5rangeEii(%class.ap_uint* %r, i32 %57, i32 %59)
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
  %69 = icmp ne i32 %68, 512
  br i1 %69, label %70, label %72

; <label>:70                                      ; preds = %67
  %71 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi512EEE5writeERKS2_(%"class.hls::stream"* %71, %class.ap_uint* %r)
  br label %72

; <label>:72                                      ; preds = %70, %67
  ret void
}

define internal void @_ZL122p_ZN2xf11accel_utils13hlsStrm2ArrayILi512ELi256ELi256ELi1ELi1ELi8ELi1024EEER6streamI7ap_uintILi512EEEP7ap_uintILi512EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi512EEEEPS4_ii(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %class.ap_uint* %dstPtr, i32 %rows, i32 %cols) uwtable {
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
  %12 = add nsw i32 %11, 512
  %13 = sub nsw i32 %12, 1
  %14 = sdiv i32 %13, 512
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
  call void @_ZN3hls6streamI7ap_uintILi512EEE4readEv(%class.ap_uint* sret %6, %"class.hls::stream"* %24)
  %25 = call %class.ap_uint* @_ZN7ap_uintILi512EEaSERKS0_(%class.ap_uint* %23, %class.ap_uint* %6)
  br label %26

; <label>:26                                      ; preds = %19
  %27 = load i32* %i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4
  br label %15

; <label>:29                                      ; preds = %15
  ret void
}

declare %class.ap_uint* @_ZN7ap_uintILi512EEaSERKS0_(%class.ap_uint*, %class.ap_uint*)

declare void @_ZN3hls6streamI7ap_uintILi512EEE4readEv(%class.ap_uint* sret, %"class.hls::stream"*)

declare void @_ZN7ap_uintILi512EEC1Ev(%class.ap_uint*)

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1*)

declare %class.ap_uint.1* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.1*, %class.ap_uint.1*)

define internal i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.1, align 1
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %6, i32 0, i32 4
  %8 = getelementptr inbounds [65536 x %class.ap_uint.1]* %7, i32 0, i64 %5
  %9 = bitcast %class.ap_uint.1* %1 to i8*
  %10 = bitcast %class.ap_uint.1* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 1, i32 1, i1 false)
  %11 = getelementptr %class.ap_uint.1* %1, i32 0, i32 0
  %12 = bitcast [1 x i8]* %11 to i8*
  %13 = load i8* %12, align 1
  ret i8 %13
}

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.1*, i32, i32)

declare i64* @_ZN7ap_uintILi512EE5rangeEii(%class.ap_uint*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi512EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

declare i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.1*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL120p_ZN2xf10xfbgr2grayILi9ELi0ELi256ELi256ELi1ELi9ELi1ELi32768EEER3MatILi9ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEtt_1R19xf_Mat_9_256_256_1_R19xf_Mat_0_256_256_1_tt(%struct.xf_Mat_9_256_256_1_* %src, %struct.xf_Mat_0_256_256_1_* %dst, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %RGB = alloca [3 x %class.ap_uint.1], align 1
  %RGB_packed = alloca %class.ap_uint.0, align 1
  %GRAY = alloca [1 x %class.ap_uint.1], align 1
  %Gray_packed = alloca %class.ap_uint.1, align 1
  %i = alloca %class.ap_uint.2, align 1
  %5 = alloca %class.ap_uint.2, align 1
  %j = alloca %class.ap_uint.2, align 1
  %6 = alloca %class.ap_uint.2, align 1
  %7 = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint.2, align 1
  %9 = alloca %class.ap_uint.2, align 1
  %10 = alloca %class.ap_int, align 1
  %11 = alloca i24
  %12 = alloca %class.ap_uint.0, align 1
  %13 = alloca i24
  %_l_k = alloca %class.ap_uint.2, align 1
  %_l_offset = alloca %class.ap_uint.2, align 1
  %14 = alloca %class.ap_uint.2, align 1
  %15 = alloca %class.ap_uint.2, align 1
  %16 = alloca %class.ap_uint.2, align 1
  %17 = alloca %class.ap_uint.2, align 1
  %18 = alloca %class.ap_uint.2, align 1
  %19 = alloca %class.ap_uint.2, align 1
  %20 = alloca %class.ap_uint.2, align 1
  %21 = alloca %class.ap_uint.2, align 1
  %22 = alloca %class.ap_uint.2, align 1
  %23 = alloca %class.ap_int, align 1
  %24 = alloca %class.ap_uint.1, align 1
  %25 = alloca %class.ap_uint.2, align 1
  %26 = alloca %class.ap_uint.2, align 1
  store %struct.xf_Mat_9_256_256_1_* %src, %struct.xf_Mat_9_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %dst, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i16 %height, i16* %3, align 2
  store i16 %width, i16* %4, align 2
  %27 = getelementptr inbounds [3 x %class.ap_uint.1]* %RGB, i32 0, i32 0
  %28 = getelementptr inbounds %class.ap_uint.1* %27, i64 3
  br label %29

; <label>:29                                      ; preds = %29, %0
  %30 = phi %class.ap_uint.1* [ %27, %0 ], [ %31, %29 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1* %30)
  %31 = getelementptr inbounds %class.ap_uint.1* %30, i64 1
  %32 = icmp eq %class.ap_uint.1* %31, %28
  br i1 %32, label %33, label %29

; <label>:33                                      ; preds = %29
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.0* %RGB_packed)
  %34 = getelementptr inbounds [1 x %class.ap_uint.1]* %GRAY, i32 0, i32 0
  %35 = getelementptr inbounds %class.ap_uint.1* %34, i64 1
  br label %36

; <label>:36                                      ; preds = %36, %33
  %37 = phi %class.ap_uint.1* [ %34, %33 ], [ %38, %36 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1* %37)
  %38 = getelementptr inbounds %class.ap_uint.1* %37, i64 1
  %39 = icmp eq %class.ap_uint.1* %38, %35
  br i1 %39, label %40, label %36

; <label>:40                                      ; preds = %36
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1* %Gray_packed)
  br label %41

; <label>:41                                      ; preds = %40
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.2* %i, i32 0)
  br label %42

; <label>:42                                      ; preds = %175, %41
  %43 = bitcast %class.ap_uint.2* %5 to i8*
  %44 = bitcast %class.ap_uint.2* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 2, i32 1, i1 false)
  %45 = load i16* %3, align 2
  %46 = getelementptr %class.ap_uint.2* %5, i32 0, i32 0
  %47 = bitcast [2 x i8]* %46 to i16*
  %48 = load i16* %47, align 1
  %49 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %48, i16 zeroext %45)
  br i1 %49, label %50, label %179

; <label>:50                                      ; preds = %42
  br label %51

; <label>:51                                      ; preds = %50
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.2* %j, i32 0)
  br label %52

; <label>:52                                      ; preds = %170, %51
  %53 = bitcast %class.ap_uint.2* %6 to i8*
  %54 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 2, i32 1, i1 false)
  %55 = load i16* %4, align 2
  %56 = zext i16 %55 to i32
  %57 = ashr i32 %56, 0
  %58 = getelementptr %class.ap_uint.2* %6, i32 0, i32 0
  %59 = bitcast [2 x i8]* %58 to i16*
  %60 = load i16* %59, align 1
  %61 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %60, i32 %57)
  br i1 %61, label %62, label %174

; <label>:62                                      ; preds = %52
  %63 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %64 = load i16* %4, align 2
  %65 = zext i16 %64 to i32
  %66 = ashr i32 %65, 0
  %67 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %i, i32 %66)
  %68 = getelementptr %class.ap_uint.2* %8, i32 0, i32 0
  %69 = bitcast [2 x i8]* %68 to i16*
  store i16 %67, i16* %69, align 1
  %70 = bitcast %class.ap_uint.2* %9 to i8*
  %71 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 2, i32 1, i1 false)
  %72 = getelementptr %class.ap_uint.2* %8, i32 0, i32 0
  %73 = bitcast [2 x i8]* %72 to i16*
  %74 = load i16* %73, align 1
  %75 = getelementptr %class.ap_uint.2* %9, i32 0, i32 0
  %76 = bitcast [2 x i8]* %75 to i16*
  %77 = load i16* %76, align 1
  %78 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %74, i16 %77)
  %79 = getelementptr %class.ap_int* %10, i32 0, i32 0
  %80 = bitcast [4 x i8]* %79 to i32*
  store i32 %78, i32* %80, align 1
  %81 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %10)
  %82 = trunc i64 %81 to i32
  %83 = call i24 @_ZL36p_ZN2xf16Mat_9_256_256_1_4readIEEi_1P19xf_Mat_9_256_256_1_i(%struct.xf_Mat_9_256_256_1_* %63, i32 %82)
  %84 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  store i24 %83, i24* %11
  %85 = bitcast i24* %11 to [3 x i8]*
  %86 = load [3 x i8]* %85, align 1
  store [3 x i8] %86, [3 x i8]* %84
  %87 = call %class.ap_uint.0* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.0* %RGB_packed, %class.ap_uint.0* %7)
  %88 = bitcast %class.ap_uint.0* %12 to i8*
  %89 = bitcast %class.ap_uint.0* %RGB_packed to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 3, i32 1, i1 false)
  %90 = getelementptr inbounds [3 x %class.ap_uint.1]* %RGB, i32 0, i32 0
  %91 = getelementptr %class.ap_uint.0* %12, i32 0, i32 0
  %92 = bitcast i24* %13 to [3 x i8]*
  %93 = load [3 x i8]* %91
  store [3 x i8] %93, [3 x i8]* %92, align 1
  %94 = load i24* %13
  call void @_ZL60p_Z17ExtractUYVYPixelsILi9EE7ap_uintILi24EEP7ap_uintILi8EE_17ap_uintILi24EEPS_ILi8EE(i24 %94, %class.ap_uint.1* %90)
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.2* %_l_k, i32 0)
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.2* %_l_offset, i32 0)
  %95 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %_l_k, i32 0)
  br label %96

; <label>:96                                      ; preds = %140, %62
  %97 = bitcast %class.ap_uint.2* %14 to i8*
  %98 = bitcast %class.ap_uint.2* %_l_k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 2, i32 1, i1 false)
  %99 = getelementptr %class.ap_uint.2* %14, i32 0, i32 0
  %100 = bitcast [2 x i8]* %99 to i16*
  %101 = load i16* %100, align 1
  %102 = call zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEi(i16 %101, i32 0)
  br i1 %102, label %103, label %144

; <label>:103                                     ; preds = %96
  %104 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %_l_k)
  %105 = getelementptr inbounds [1 x %class.ap_uint.1]* %GRAY, i32 0, i64 %104
  %106 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %_l_offset, i32 2)
  %107 = getelementptr %class.ap_uint.2* %15, i32 0, i32 0
  %108 = bitcast [2 x i8]* %107 to i16*
  store i16 %106, i16* %108, align 1
  %109 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %15)
  %110 = getelementptr inbounds [3 x %class.ap_uint.1]* %RGB, i32 0, i64 %109
  %111 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.1* %110)
  %112 = trunc i64 %111 to i8
  %113 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %_l_offset, i32 1)
  %114 = getelementptr %class.ap_uint.2* %16, i32 0, i32 0
  %115 = bitcast [2 x i8]* %114 to i16*
  store i16 %113, i16* %115, align 1
  %116 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %16)
  %117 = getelementptr inbounds [3 x %class.ap_uint.1]* %RGB, i32 0, i64 %116
  %118 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.1* %117)
  %119 = trunc i64 %118 to i8
  %120 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %_l_offset)
  %121 = getelementptr inbounds [3 x %class.ap_uint.1]* %RGB, i32 0, i64 %120
  %122 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.1* %121)
  %123 = trunc i64 %122 to i8
  %124 = call zeroext i8 @_ZL13CalculateGRAYhhh(i8 zeroext %112, i8 zeroext %119, i8 zeroext %123)
  %125 = call %class.ap_uint.1* @_ZN7ap_uintILi8EEaSEh(%class.ap_uint.1* %105, i8 zeroext %124)
  %126 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %_l_k)
  %127 = getelementptr inbounds [1 x %class.ap_uint.1]* %GRAY, i32 0, i64 %126
  %128 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.1* %127)
  %129 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %_l_k, i32 8)
  %130 = getelementptr %class.ap_uint.2* %18, i32 0, i32 0
  %131 = bitcast [2 x i8]* %130 to i16*
  store i16 %129, i16* %131, align 1
  %132 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %18, i32 7)
  %133 = getelementptr %class.ap_uint.2* %17, i32 0, i32 0
  %134 = bitcast [2 x i8]* %133 to i16*
  store i16 %132, i16* %134, align 1
  %135 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %_l_k, i32 8)
  %136 = getelementptr %class.ap_uint.2* %19, i32 0, i32 0
  %137 = bitcast [2 x i8]* %136 to i16*
  store i16 %135, i16* %137, align 1
  %138 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.1* %Gray_packed, %class.ap_uint.2* %17, %class.ap_uint.2* %19)
  store i64 %128, i64* %138
  %139 = call %class.ap_uint.2* @_ZpLILi13EER7ap_uintIXT_EES2_i(%class.ap_uint.2* %_l_offset, i32 3)
  br label %140

; <label>:140                                     ; preds = %103
  %141 = call i16 @_ZN7ap_uintILi13EEppEv(%class.ap_uint.2* %_l_k)
  %142 = getelementptr %class.ap_uint.2* %20, i32 0, i32 0
  %143 = bitcast [2 x i8]* %142 to i16*
  store i16 %141, i16* %143, align 1
  br label %96

; <label>:144                                     ; preds = %96
  %145 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %146 = load i16* %4, align 2
  %147 = zext i16 %146 to i32
  %148 = ashr i32 %147, 0
  %149 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %i, i32 %148)
  %150 = getelementptr %class.ap_uint.2* %21, i32 0, i32 0
  %151 = bitcast [2 x i8]* %150 to i16*
  store i16 %149, i16* %151, align 1
  %152 = bitcast %class.ap_uint.2* %22 to i8*
  %153 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %153, i64 2, i32 1, i1 false)
  %154 = getelementptr %class.ap_uint.2* %21, i32 0, i32 0
  %155 = bitcast [2 x i8]* %154 to i16*
  %156 = load i16* %155, align 1
  %157 = getelementptr %class.ap_uint.2* %22, i32 0, i32 0
  %158 = bitcast [2 x i8]* %157 to i16*
  %159 = load i16* %158, align 1
  %160 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %156, i16 %159)
  %161 = getelementptr %class.ap_int* %23, i32 0, i32 0
  %162 = bitcast [4 x i8]* %161 to i32*
  store i32 %160, i32* %162, align 1
  %163 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %23)
  %164 = trunc i64 %163 to i32
  %165 = bitcast %class.ap_uint.1* %24 to i8*
  %166 = bitcast %class.ap_uint.1* %Gray_packed to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* %166, i64 1, i32 1, i1 false)
  %167 = getelementptr %class.ap_uint.1* %24, i32 0, i32 0
  %168 = bitcast [1 x i8]* %167 to i8*
  %169 = load i8* %168, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %145, i32 %164, i8 %169)
  br label %170

; <label>:170                                     ; preds = %144
  %171 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %j, i32 0)
  %172 = getelementptr %class.ap_uint.2* %25, i32 0, i32 0
  %173 = bitcast [2 x i8]* %172 to i16*
  store i16 %171, i16* %173, align 1
  br label %52

; <label>:174                                     ; preds = %52
  br label %175

; <label>:175                                     ; preds = %174
  %176 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %i, i32 0)
  %177 = getelementptr %class.ap_uint.2* %26, i32 0, i32 0
  %178 = bitcast [2 x i8]* %177 to i16*
  store i16 %176, i16* %178, align 1
  br label %42

; <label>:179                                     ; preds = %42
  ret void
}

declare void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.0*)

declare void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.2*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16, i32)

declare %class.ap_uint.0* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.0*, %class.ap_uint.0*)

define internal i24 @_ZL36p_ZN2xf16Mat_9_256_256_1_4readIEEi_1P19xf_Mat_9_256_256_1_i(%struct.xf_Mat_9_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.0, align 1
  %2 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i24
  store %struct.xf_Mat_9_256_256_1_* %this_, %struct.xf_Mat_9_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %5 = load i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.0]* %8, i32 0, i64 %6
  %10 = bitcast %class.ap_uint.0* %1 to i8*
  %11 = bitcast %class.ap_uint.0* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 3, i32 1, i1 false)
  %12 = getelementptr %class.ap_uint.0* %1, i32 0, i32 0
  %13 = bitcast i24* %4 to [3 x i8]*
  %14 = load [3 x i8]* %12
  store [3 x i8] %14, [3 x i8]* %13, align 1
  %15 = load i24* %4
  ret i24 %15
}

declare i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2*, i32)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int*)

define internal void @_ZL60p_Z17ExtractUYVYPixelsILi9EE7ap_uintILi24EEP7ap_uintILi8EE_17ap_uintILi24EEPS_ILi8EE(i24 %pix.coerce, %class.ap_uint.1* %buf) uwtable {
  %pix = alloca %class.ap_uint.0, align 4
  %1 = alloca i24
  %2 = alloca %class.ap_uint.1*, align 8
  %k = alloca i32, align 4
  %val = alloca %class.ap_uint.0, align 1
  %pos = alloca i32, align 4
  %_in_k = alloca i32, align 4
  %p = alloca i8, align 1
  %3 = getelementptr %class.ap_uint.0* %pix, i32 0, i32 0
  store i24 %pix.coerce, i24* %1
  %4 = bitcast i24* %1 to [3 x i8]*
  %5 = load [3 x i8]* %4, align 1
  store [3 x i8] %5, [3 x i8]* %3
  store %class.ap_uint.1* %buf, %class.ap_uint.1** %2, align 8
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.0* %val)
  store i32 0, i32* %pos, align 4
  %6 = call %class.ap_uint.0* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.0* %val, %class.ap_uint.0* %pix)
  store i32 0, i32* %k, align 4
  br label %7

; <label>:7                                       ; preds = %29, %0
  %8 = load i32* %k, align 4
  %9 = icmp sle i32 %8, 2
  br i1 %9, label %10, label %32

; <label>:10                                      ; preds = %7
  %11 = load i32* %k, align 4
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 8, %12
  %14 = add nsw i64 0, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %_in_k, align 4
  %16 = load i32* %_in_k, align 4
  %17 = add nsw i32 %16, 7
  %18 = load i32* %_in_k, align 4
  %19 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.0* %val, i32 %17, i32 %18)
  %20 = load i64* %19
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %p, align 1
  %22 = load i32* %pos, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %pos, align 4
  %24 = sext i32 %22 to i64
  %25 = load %class.ap_uint.1** %2, align 8
  %26 = getelementptr inbounds %class.ap_uint.1* %25, i64 %24
  %27 = load i8* %p, align 1
  %28 = call %class.ap_uint.1* @_ZN7ap_uintILi8EEaSEh(%class.ap_uint.1* %26, i8 zeroext %27)
  br label %29

; <label>:29                                      ; preds = %10
  %30 = load i32* %k, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %k, align 4
  br label %7

; <label>:32                                      ; preds = %7
  store i32 24, i32* %k, align 4
  ret void
}

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2*, i32)

declare zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEi(i16, i32)

declare i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2*)

declare %class.ap_uint.1* @_ZN7ap_uintILi8EEaSEh(%class.ap_uint.1*, i8 zeroext)

define internal zeroext i8 @_ZL13CalculateGRAYhhh(i8 zeroext %R, i8 zeroext %G, i8 zeroext %B) uwtable {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %GRAY = alloca i32, align 4
  %sat_GRAY = alloca i8, align 1
  store i8 %R, i8* %1, align 1
  store i8 %G, i8* %2, align 1
  store i8 %B, i8* %3, align 1
  %4 = load i8* %1, align 1
  %5 = zext i8 %4 to i32
  %6 = mul nsw i32 %5, 9798
  %7 = load i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = mul nsw i32 %8, 19235
  %10 = add nsw i32 %6, %9
  %11 = load i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = mul nsw i32 %12, 3736
  %14 = add nsw i32 %10, %13
  store i32 %14, i32* %GRAY, align 4
  %15 = load i32* %GRAY, align 4
  %16 = call zeroext i8 @_ZL13saturate_castii(i32 %15, i32 0)
  store i8 %16, i8* %sat_GRAY, align 1
  %17 = load i8* %sat_GRAY, align 1
  ret i8 %17
}

declare i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2*, i32)

declare i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.1*, %class.ap_uint.2*, %class.ap_uint.2*)

declare %class.ap_uint.2* @_ZpLILi13EER7ap_uintIXT_EES2_i(%class.ap_uint.2*, i32)

declare i16 @_ZN7ap_uintILi13EEppEv(%class.ap_uint.2*)

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

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2*, i32)

define internal zeroext i8 @_ZL13saturate_castii(i32 %Value, i32 %offset) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %Value_int = alloca i32, align 4
  %Value_uchar = alloca i8, align 1
  store i32 %Value, i32* %1, align 4
  store i32 %offset, i32* %2, align 4
  %3 = load i32* %1, align 4
  %4 = ashr i32 %3, 15
  %5 = load i32* %2, align 4
  %6 = add nsw i32 %4, %5
  store i32 %6, i32* %Value_int, align 4
  store i8 0, i8* %Value_uchar, align 1
  %7 = load i32* %Value_int, align 4
  %8 = icmp sgt i32 %7, 255
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  store i8 -1, i8* %Value_uchar, align 1
  br label %18

; <label>:10                                      ; preds = %0
  %11 = load i32* %Value_int, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  store i8 0, i8* %Value_uchar, align 1
  br label %17

; <label>:14                                      ; preds = %10
  %15 = load i32* %Value_int, align 4
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %Value_uchar, align 1
  br label %17

; <label>:17                                      ; preds = %14, %13
  br label %18

; <label>:18                                      ; preds = %17, %9
  %19 = load i8* %Value_uchar, align 1
  ret i8 %19
}

declare i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.0*, i32, i32)

define internal void @_ZL108p_ZN2xf11accel_utils11Array2xfMatILi512ELi9ELi256ELi256ELi1EEEP7ap_uintILi512EER3MatILi9ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi512EER19xf_Mat_9_256_256_1_(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %struct.xf_Mat_9_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %class.ap_uint* %srcPtr, %class.ap_uint** %2, align 8
  store %struct.xf_Mat_9_256_256_1_* %dstMat, %struct.xf_Mat_9_256_256_1_** %3, align 8
  store i32 8, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi512EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_9_256_256_1_** %3, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_9_256_256_1_** %3, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %class.ap_uint** %2, align 8
  %12 = load i32* %rows, align 4
  %13 = load i32* %cols, align 4
  call void @_ZL122p_ZN2xf11accel_utils13Array2hlsStrmILi512ELi256ELi256ELi1ELi3ELi8ELi3072EEEP7ap_uintILi512EER6streamI7ap_uintILi512EEEii_1P14xf_accel_utilsP7ap_uintILi512EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %10, %class.ap_uint* %11, %"class.hls::stream"* %strm, i32 %12, i32 %13)
  %14 = load %struct.xf_accel_utils** %1, align 8
  %15 = load %struct.xf_Mat_9_256_256_1_** %3, align 8
  call void @_ZL127p_ZN2xf11accel_utils13hlsStrm2xfMatILi512ELi9ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi512EEER3MatILi9ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi512EEEER19xf_Mat_9_256_256_1_(%struct.xf_accel_utils* %14, %"class.hls::stream"* %strm, %struct.xf_Mat_9_256_256_1_* %15)
  ret void
}

define internal void @_ZL122p_ZN2xf11accel_utils13Array2hlsStrmILi512ELi256ELi256ELi1ELi3ELi8ELi3072EEEP7ap_uintILi512EER6streamI7ap_uintILi512EEEii_1P14xf_accel_utilsP7ap_uintILi512EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %"class.hls::stream"* %dstStrm, i32 %rows, i32 %cols) uwtable {
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
  store i32 24, i32* %pixel_width, align 4
  %6 = load i32* %4, align 4
  %7 = load i32* %5, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load i32* %pixel_width, align 4
  %10 = mul nsw i32 %8, %9
  %11 = add nsw i32 %10, 512
  %12 = sub nsw i32 %11, 1
  %13 = sdiv i32 %12, 512
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
  call void @_ZN3hls6streamI7ap_uintILi512EEE5writeERKS2_(%"class.hls::stream"* %19, %class.ap_uint* %23)
  br label %24

; <label>:24                                      ; preds = %18
  %25 = load i32* %i, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %14

; <label>:27                                      ; preds = %14
  ret void
}

define internal void @_ZL127p_ZN2xf11accel_utils13hlsStrm2xfMatILi512ELi9ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi512EEER3MatILi9ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi512EEEER19xf_Mat_9_256_256_1_(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %struct.xf_Mat_9_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %"class.hls::stream"*, align 8
  %3 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
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
  %6 = alloca i24
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %"class.hls::stream"* %srcStrm, %"class.hls::stream"** %2, align 8
  store %struct.xf_Mat_9_256_256_1_* %dstMat, %struct.xf_Mat_9_256_256_1_** %3, align 8
  %7 = load %struct.xf_Mat_9_256_256_1_** %3, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %7, i32 0, i32 1
  %9 = load i32* %8, align 4
  store i32 %9, i32* %rows, align 4
  %10 = load %struct.xf_Mat_9_256_256_1_** %3, align 8
  %11 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %10, i32 0, i32 2
  %12 = load i32* %11, align 4
  store i32 %12, i32* %cols, align 4
  %13 = load i32* %rows, align 4
  %14 = load i32* %cols, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sdiv i32 %15, 1
  store i32 %16, i32* %loop_count, align 4
  store i32 0, i32* %valid_bits, align 4
  store i32 24, i32* %N_size, align 4
  call void @_ZN7ap_uintILi512EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.0* %out)
  br label %17

; <label>:17                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %18

; <label>:18                                      ; preds = %70, %17
  %19 = load i32* %i, align 4
  %20 = load i32* %loop_count, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %73

; <label>:22                                      ; preds = %18
  %23 = load i32* %valid_bits, align 4
  %24 = icmp slt i32 %23, 24
  br i1 %24, label %25, label %49

; <label>:25                                      ; preds = %22
  %26 = load i32* %valid_bits, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

; <label>:28                                      ; preds = %25
  %29 = load i32* %valid_bits, align 4
  %30 = sub nsw i32 512, %29
  %31 = call i64* @_ZN7ap_uintILi512EE5rangeEii(%class.ap_uint* %r, i32 511, i32 %30)
  %32 = load i64* %31
  %33 = load i32* %valid_bits, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.0* %out, i32 %34, i32 0)
  store i64 %32, i64* %35
  br label %36

; <label>:36                                      ; preds = %28, %25
  %37 = load %"class.hls::stream"** %2, align 8
  call void @_ZN3hls6streamI7ap_uintILi512EEE4readEv(%class.ap_uint* sret %4, %"class.hls::stream"* %37)
  %38 = call %class.ap_uint* @_ZN7ap_uintILi512EEaSERKS0_(%class.ap_uint* %r, %class.ap_uint* %4)
  %39 = load i32* %valid_bits, align 4
  %40 = sub nsw i32 24, %39
  %41 = sub nsw i32 %40, 1
  %42 = call i64* @_ZN7ap_uintILi512EE5rangeEii(%class.ap_uint* %r, i32 %41, i32 0)
  %43 = load i64* %42
  %44 = load i32* %valid_bits, align 4
  %45 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.0* %out, i32 23, i32 %44)
  store i64 %43, i64* %45
  %46 = load i32* %valid_bits, align 4
  %47 = sub nsw i32 24, %46
  %48 = sub nsw i32 512, %47
  store i32 %48, i32* %valid_bits, align 4
  br label %61

; <label>:49                                      ; preds = %22
  %50 = load i32* %valid_bits, align 4
  %51 = sub nsw i32 512, %50
  %52 = add nsw i32 %51, 24
  %53 = sub nsw i32 %52, 1
  %54 = load i32* %valid_bits, align 4
  %55 = sub nsw i32 512, %54
  %56 = call i64* @_ZN7ap_uintILi512EE5rangeEii(%class.ap_uint* %r, i32 %53, i32 %55)
  %57 = load i64* %56
  %58 = call %class.ap_uint.0* @_ZN7ap_uintILi24EEaSEm(%class.ap_uint.0* %out, i64 %57)
  %59 = load i32* %valid_bits, align 4
  %60 = sub nsw i32 %59, 24
  store i32 %60, i32* %valid_bits, align 4
  br label %61

; <label>:61                                      ; preds = %49, %36
  %62 = load %struct.xf_Mat_9_256_256_1_** %3, align 8
  %63 = load i32* %i, align 4
  %64 = bitcast %class.ap_uint.0* %5 to i8*
  %65 = bitcast %class.ap_uint.0* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 3, i32 1, i1 false)
  %66 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %67 = bitcast i24* %6 to [3 x i8]*
  %68 = load [3 x i8]* %66
  store [3 x i8] %68, [3 x i8]* %67, align 1
  %69 = load i24* %6
  call void @_ZL52p_ZN2xf16Mat_9_256_256_1_5writeIEEi7ap_uintILi24EE_1P19xf_Mat_9_256_256_1_i7ap_uintILi24EE(%struct.xf_Mat_9_256_256_1_* %62, i32 %63, i24 %69)
  br label %70

; <label>:70                                      ; preds = %61
  %71 = load i32* %i, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %i, align 4
  br label %18

; <label>:73                                      ; preds = %18
  ret void
}

declare %class.ap_uint.0* @_ZN7ap_uintILi24EEaSEm(%class.ap_uint.0*, i64)

define internal void @_ZL52p_ZN2xf16Mat_9_256_256_1_5writeIEEi7ap_uintILi24EE_1P19xf_Mat_9_256_256_1_i7ap_uintILi24EE(%struct.xf_Mat_9_256_256_1_* %this_, i32 %index, i24 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.0, align 4
  %3 = alloca i24
  store %struct.xf_Mat_9_256_256_1_* %this_, %struct.xf_Mat_9_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %4 = getelementptr %class.ap_uint.0* %val, i32 0, i32 0
  store i24 %val.coerce, i24* %3
  %5 = bitcast i24* %3 to [3 x i8]*
  %6 = load [3 x i8]* %5, align 1
  store [3 x i8] %6, [3 x i8]* %4
  %7 = load i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %9, i32 0, i32 4
  %11 = getelementptr inbounds [65536 x %class.ap_uint.0]* %10, i32 0, i64 %8
  %12 = call %class.ap_uint.0* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.0* %11, %class.ap_uint.0* %val)
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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1P19xf_Mat_9_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
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
  %4 = getelementptr inbounds [65536 x %class.ap_uint.0]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.0* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint.0* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.0* %7)
  %8 = getelementptr inbounds %class.ap_uint.0* %7, i64 1
  %9 = icmp eq %class.ap_uint.0* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  ret void
}

; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/threshold_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.1 = type { [2 x i8] }
%class.ap_int = type { [4 x i8] }

@.str = private unnamed_addr constant [94 x i8] c"((thresh >= 0) && (thresh <= 255)) && \22_binary_thresh_val must be with the range of 0 to 255\22\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"xf_threshold.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL102p_ZN2xf9ThresholdILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEss_1R19xf_Mat_0_256_256_1_S0_ss = private unnamed_addr constant [182 x i8] c"void p_ZN2xf9ThresholdILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEss_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, short, short)\00", align 1
@.str2 = private unnamed_addr constant [93 x i8] c"((height <= ROWS ) && (width <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str3 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z15threshold_accelP7ap_uintILi256EES1_hhii(%class.ap_uint* %img_inp, %class.ap_uint* %img_out, i8 zeroext %thresh, i8 zeroext %maxval, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_inp, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_out, %class.ap_uint** %2, align 8
  store i8 %thresh, i8* %3, align 1
  store i8 %maxval, i8* %4, align 1
  store i32 %rows, i32* %5, align 4
  store i32 %cols, i32* %6, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat)
  %7 = load i32* %5, align 4
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32* %6, align 4
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %out_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %out_mat)
  %11 = load i32* %5, align 4
  %12 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32* %6, align 4
  %14 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %15, %struct.xf_Mat_0_256_256_1_* %in_mat)
  %16 = load i8* %3, align 1
  %17 = zext i8 %16 to i16
  %18 = load i8* %4, align 1
  %19 = zext i8 %18 to i16
  call void @_ZL102p_ZN2xf9ThresholdILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEss_1R19xf_Mat_0_256_256_1_S0_ss(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_0_256_256_1_* %out_mat, i16 signext %17, i16 signext %19)
  %20 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_0_256_256_1_* %out_mat, %class.ap_uint* %20)
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

define internal void @_ZL102p_ZN2xf9ThresholdILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEss_1R19xf_Mat_0_256_256_1_S0_ss(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_dst_mat, i16 signext %thresh, i16 signext %maxval) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %width = alloca i16, align 2
  %height = alloca i16, align 2
  %5 = alloca %class.ap_uint.0, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i16 %thresh, i16* %3, align 2
  store i16 %maxval, i16* %4, align 2
  %6 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %6, i32 0, i32 2
  %8 = load i32* %7, align 4
  %9 = ashr i32 %8, 0
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %width, align 2
  %11 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %12 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %11, i32 0, i32 1
  %13 = load i32* %12, align 4
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %height, align 2
  %15 = load i16* %3, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %23

; <label>:18                                      ; preds = %0
  %19 = load i16* %3, align 2
  %20 = sext i16 %19 to i32
  %21 = icmp sle i32 %20, 255
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %18
  br label %25

; <label>:23                                      ; preds = %18, %0
  call void @__assert_fail(i8* getelementptr inbounds ([94 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0), i32 140, i8* getelementptr inbounds ([182 x i8]* @__PRETTY_FUNCTION__._ZL102p_ZN2xf9ThresholdILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEss_1R19xf_Mat_0_256_256_1_S0_ss, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = load i16* %height, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp sle i32 %27, 256
  br i1 %28, label %29, label %34

; <label>:29                                      ; preds = %25
  %30 = load i16* %width, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp sle i32 %31, 256
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %29
  br label %36

; <label>:34                                      ; preds = %29, %25
  call void @__assert_fail(i8* getelementptr inbounds ([93 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0), i32 143, i8* getelementptr inbounds ([182 x i8]* @__PRETTY_FUNCTION__._ZL102p_ZN2xf9ThresholdILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEss_1R19xf_Mat_0_256_256_1_S0_ss, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %38 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %5, i32 0)
  %39 = load i16* %3, align 2
  %40 = load i16* %4, align 2
  %41 = load i16* %height, align 2
  %42 = load i16* %width, align 2
  %43 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %44 = bitcast [1 x i8]* %43 to i8*
  %45 = load i8* %44, align 1
  call void @_ZL141p_ZN2xf17xFThresholdKernelILi0ELi256ELi256ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE7ap_uintILi8EEsstt_1R19xf_Mat_0_256_256_1_S0_7ap_uintILi8EEsstt(%struct.xf_Mat_0_256_256_1_* %37, %struct.xf_Mat_0_256_256_1_* %38, i8 %45, i16 signext %39, i16 signext %40, i16 zeroext %41, i16 zeroext %42)
  ret void
}

define internal void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_0_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %struct.xf_Mat_0_256_256_1_* %srcMat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %2, align 8
  %3 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %4 = load %class.ap_uint** %2, align 8
  call void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_P7ap_uintILi256EE(%struct.xf_accel_utils* %au, %struct.xf_Mat_0_256_256_1_* %3, %class.ap_uint* %4)
  ret void
}

define internal void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_P7ap_uintILi256EE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_0_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
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
  call void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"* %strm)
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
  call void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_RN3hls6streamI7ap_uintILi256EEEE(%struct.xf_accel_utils* %10, %struct.xf_Mat_0_256_256_1_* %11, %"class.hls::stream"* %strm)
  %12 = load %struct.xf_accel_utils** %1, align 8
  %13 = load %class.ap_uint** %3, align 8
  %14 = load i32* %rows, align 4
  %15 = load i32* %cols, align 4
  call void @_ZL122p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi8ELi2048EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEEPS4_ii(%struct.xf_accel_utils* %12, %"class.hls::stream"* %strm, %class.ap_uint* %13, i32 %14, i32 %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"*)

define internal void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_RN3hls6streamI7ap_uintILi256EEEE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_0_256_256_1_* %srcMat, %"class.hls::stream"* %dstStrm) uwtable {
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
  store i32 256, i32* %bits_to_add, align 4
  store i32 8, i32* %N_size, align 4
  call void @_ZN7ap_uintILi256EEC1Ev(%class.ap_uint* %r)
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
  %35 = sub nsw i32 256, %34
  %36 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 255, i32 %35)
  store i64 %33, i64* %36
  %37 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"* %37, %class.ap_uint* %r)
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
  %47 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %46, i32 0)
  store i64 %43, i64* %47
  br label %48

; <label>:48                                      ; preds = %40, %29
  %49 = load i32* %bits_to_add, align 4
  %50 = sub nsw i32 8, %49
  %51 = sub nsw i32 256, %50
  store i32 %51, i32* %bits_to_add, align 4
  br label %63

; <label>:52                                      ; preds = %20
  %53 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %in)
  %54 = load i32* %bits_to_add, align 4
  %55 = sub nsw i32 256, %54
  %56 = add nsw i32 %55, 8
  %57 = sub nsw i32 %56, 1
  %58 = load i32* %bits_to_add, align 4
  %59 = sub nsw i32 256, %58
  %60 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %57, i32 %59)
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
  %69 = icmp ne i32 %68, 256
  br i1 %69, label %70, label %72

; <label>:70                                      ; preds = %67
  %71 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"* %71, %class.ap_uint* %r)
  br label %72

; <label>:72                                      ; preds = %70, %67
  ret void
}

define internal void @_ZL122p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi8ELi2048EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEEPS4_ii(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %class.ap_uint* %dstPtr, i32 %rows, i32 %cols) uwtable {
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

declare i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

declare i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL141p_ZN2xf17xFThresholdKernelILi0ELi256ELi256ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE7ap_uintILi8EEsstt_1R19xf_Mat_0_256_256_1_S0_7ap_uintILi8EEsstt(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_dst_mat, i8 %_thresh_type.coerce, i16 signext %_thresh, i16 signext %maxval, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %_thresh_type = alloca %class.ap_uint.0, align 1
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %val_src = alloca %class.ap_uint.0, align 1
  %val_dst = alloca %class.ap_uint.0, align 1
  %p = alloca %class.ap_uint.0, align 1
  %thresh = alloca %class.ap_uint.0, align 1
  %i = alloca %class.ap_uint.1, align 1
  %j = alloca %class.ap_uint.1, align 1
  %k = alloca %class.ap_uint.1, align 1
  %7 = alloca %class.ap_uint.1, align 1
  %8 = alloca %class.ap_uint.1, align 1
  %9 = alloca %class.ap_uint.0, align 1
  %10 = alloca %class.ap_uint.1, align 1
  %11 = alloca %class.ap_uint.1, align 1
  %12 = alloca %class.ap_int, align 1
  %13 = alloca %class.ap_uint.1, align 1
  %_in_k = alloca %class.ap_uint.1, align 1
  %14 = alloca %class.ap_uint.1, align 1
  %15 = alloca %class.ap_uint.1, align 1
  %16 = alloca %class.ap_uint.0, align 1
  %17 = alloca %class.ap_uint.0, align 1
  %18 = alloca %class.ap_uint.0, align 1
  %19 = alloca %class.ap_uint.1, align 1
  %20 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.0, align 1
  %22 = alloca %class.ap_uint.0, align 1
  %23 = alloca %class.ap_uint.1, align 1
  %24 = alloca %class.ap_uint.0, align 1
  %25 = alloca %class.ap_uint.0, align 1
  %26 = alloca %class.ap_uint.1, align 1
  %27 = alloca %class.ap_uint.0, align 1
  %28 = alloca %class.ap_uint.0, align 1
  %29 = alloca %class.ap_uint.0, align 1
  %30 = alloca %class.ap_uint.1, align 1
  %31 = alloca %class.ap_uint.0, align 1
  %32 = alloca %class.ap_uint.0, align 1
  %33 = alloca %class.ap_uint.0, align 1
  %34 = alloca %class.ap_uint.1, align 1
  %35 = alloca %class.ap_uint.1, align 1
  %36 = alloca %class.ap_uint.1, align 1
  %37 = alloca %class.ap_uint.1, align 1
  %38 = alloca %class.ap_uint.1, align 1
  %39 = alloca %class.ap_int, align 1
  %40 = alloca %class.ap_uint.0, align 1
  %41 = alloca %class.ap_uint.1, align 1
  %42 = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  %43 = getelementptr %class.ap_uint.0* %_thresh_type, i32 0, i32 0
  %44 = bitcast [1 x i8]* %43 to i8*
  store i8 %_thresh_type.coerce, i8* %44, align 1
  store i16 %_thresh, i16* %3, align 2
  store i16 %maxval, i16* %4, align 2
  store i16 %height, i16* %5, align 2
  store i16 %width, i16* %6, align 2
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_src)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_dst)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %p)
  %45 = load i16* %3, align 2
  call void @_ZN7ap_uintILi8EEC1Es(%class.ap_uint.0* %thresh, i16 signext %45)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %i)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %j)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %k)
  br label %46

; <label>:46                                      ; preds = %0
  %47 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %i, i32 0)
  br label %48

; <label>:48                                      ; preds = %260, %46
  %49 = bitcast %class.ap_uint.1* %7 to i8*
  %50 = bitcast %class.ap_uint.1* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 2, i32 1, i1 false)
  %51 = load i16* %5, align 2
  %52 = getelementptr %class.ap_uint.1* %7, i32 0, i32 0
  %53 = bitcast [2 x i8]* %52 to i16*
  %54 = load i16* %53, align 1
  %55 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %54, i16 zeroext %51)
  br i1 %55, label %56, label %264

; <label>:56                                      ; preds = %48
  br label %57

; <label>:57                                      ; preds = %56
  %58 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %j, i32 0)
  br label %59

; <label>:59                                      ; preds = %255, %57
  %60 = bitcast %class.ap_uint.1* %8 to i8*
  %61 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 2, i32 1, i1 false)
  %62 = load i16* %6, align 2
  %63 = getelementptr %class.ap_uint.1* %8, i32 0, i32 0
  %64 = bitcast [2 x i8]* %63 to i16*
  %65 = load i16* %64, align 1
  %66 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %65, i16 zeroext %62)
  br i1 %66, label %67, label %259

; <label>:67                                      ; preds = %59
  %68 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %69 = load i16* %6, align 2
  %70 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %i, i16 zeroext %69)
  %71 = getelementptr %class.ap_uint.1* %10, i32 0, i32 0
  %72 = bitcast [2 x i8]* %71 to i16*
  store i16 %70, i16* %72, align 1
  %73 = bitcast %class.ap_uint.1* %11 to i8*
  %74 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 2, i32 1, i1 false)
  %75 = getelementptr %class.ap_uint.1* %10, i32 0, i32 0
  %76 = bitcast [2 x i8]* %75 to i16*
  %77 = load i16* %76, align 1
  %78 = getelementptr %class.ap_uint.1* %11, i32 0, i32 0
  %79 = bitcast [2 x i8]* %78 to i16*
  %80 = load i16* %79, align 1
  %81 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %77, i16 %80)
  %82 = getelementptr %class.ap_int* %12, i32 0, i32 0
  %83 = bitcast [4 x i8]* %82 to i32*
  store i32 %81, i32* %83, align 1
  %84 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %12)
  %85 = trunc i64 %84 to i32
  %86 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %68, i32 %85)
  %87 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %88 = bitcast [1 x i8]* %87 to i8*
  store i8 %86, i8* %88, align 1
  %89 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val_src, %class.ap_uint.0* %9)
  %90 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %k, i32 0)
  br label %91

; <label>:91                                      ; preds = %226, %67
  %92 = bitcast %class.ap_uint.1* %13 to i8*
  %93 = bitcast %class.ap_uint.1* %k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 2, i32 1, i1 false)
  %94 = getelementptr %class.ap_uint.1* %13, i32 0, i32 0
  %95 = bitcast [2 x i8]* %94 to i16*
  %96 = load i16* %95, align 1
  %97 = call zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16 %96, i64 0)
  br i1 %97, label %98, label %230

; <label>:98                                      ; preds = %91
  %99 = call i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64 8, %class.ap_uint.1* %k)
  %100 = getelementptr %class.ap_uint.1* %14, i32 0, i32 0
  %101 = bitcast [2 x i8]* %100 to i16*
  store i16 %99, i16* %101, align 1
  %102 = call i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.1* %14)
  %103 = getelementptr %class.ap_uint.1* %_in_k, i32 0, i32 0
  %104 = bitcast [2 x i8]* %103 to i16*
  store i16 %102, i16* %104, align 1
  %105 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 7)
  %106 = getelementptr %class.ap_uint.1* %15, i32 0, i32 0
  %107 = bitcast [2 x i8]* %106 to i16*
  store i16 %105, i16* %107, align 1
  %108 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_src, %class.ap_uint.1* %15, %class.ap_uint.1* %_in_k)
  %109 = load i64* %108
  %110 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %p, i64 %109)
  %111 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %_thresh_type)
  switch i64 %111, label %219 [
    i64 0, label %112
    i64 1, label %133
    i64 2, label %154
    i64 3, label %175
    i64 4, label %197
  ]

; <label>:112                                     ; preds = %98
  %113 = bitcast %class.ap_uint.0* %17 to i8*
  %114 = bitcast %class.ap_uint.0* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %114, i64 1, i32 1, i1 false)
  %115 = bitcast %class.ap_uint.0* %18 to i8*
  %116 = bitcast %class.ap_uint.0* %thresh to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %116, i64 1, i32 1, i1 false)
  %117 = getelementptr %class.ap_uint.0* %17, i32 0, i32 0
  %118 = bitcast [1 x i8]* %117 to i8*
  %119 = load i8* %118, align 1
  %120 = getelementptr %class.ap_uint.0* %18, i32 0, i32 0
  %121 = bitcast [1 x i8]* %120 to i8*
  %122 = load i8* %121, align 1
  %123 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %119, i8 %122)
  br i1 %123, label %124, label %126

; <label>:124                                     ; preds = %112
  %125 = load i16* %4, align 2
  call void @_ZN7ap_uintILi8EEC1Es(%class.ap_uint.0* %16, i16 signext %125)
  br label %127

; <label>:126                                     ; preds = %112
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %16, i32 0)
  br label %127

; <label>:127                                     ; preds = %126, %124
  %128 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %16)
  %129 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 7)
  %130 = getelementptr %class.ap_uint.1* %19, i32 0, i32 0
  %131 = bitcast [2 x i8]* %130 to i16*
  store i16 %129, i16* %131, align 1
  %132 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_dst, %class.ap_uint.1* %19, %class.ap_uint.1* %_in_k)
  store i64 %128, i64* %132
  br label %225

; <label>:133                                     ; preds = %98
  %134 = bitcast %class.ap_uint.0* %21 to i8*
  %135 = bitcast %class.ap_uint.0* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 1, i32 1, i1 false)
  %136 = bitcast %class.ap_uint.0* %22 to i8*
  %137 = bitcast %class.ap_uint.0* %thresh to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %137, i64 1, i32 1, i1 false)
  %138 = getelementptr %class.ap_uint.0* %21, i32 0, i32 0
  %139 = bitcast [1 x i8]* %138 to i8*
  %140 = load i8* %139, align 1
  %141 = getelementptr %class.ap_uint.0* %22, i32 0, i32 0
  %142 = bitcast [1 x i8]* %141 to i8*
  %143 = load i8* %142, align 1
  %144 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %140, i8 %143)
  br i1 %144, label %145, label %146

; <label>:145                                     ; preds = %133
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %20, i32 0)
  br label %148

; <label>:146                                     ; preds = %133
  %147 = load i16* %4, align 2
  call void @_ZN7ap_uintILi8EEC1Es(%class.ap_uint.0* %20, i16 signext %147)
  br label %148

; <label>:148                                     ; preds = %146, %145
  %149 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %20)
  %150 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 7)
  %151 = getelementptr %class.ap_uint.1* %23, i32 0, i32 0
  %152 = bitcast [2 x i8]* %151 to i16*
  store i16 %150, i16* %152, align 1
  %153 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_dst, %class.ap_uint.1* %23, %class.ap_uint.1* %_in_k)
  store i64 %149, i64* %153
  br label %225

; <label>:154                                     ; preds = %98
  %155 = bitcast %class.ap_uint.0* %24 to i8*
  %156 = bitcast %class.ap_uint.0* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %155, i8* %156, i64 1, i32 1, i1 false)
  %157 = bitcast %class.ap_uint.0* %25 to i8*
  %158 = bitcast %class.ap_uint.0* %thresh to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* %158, i64 1, i32 1, i1 false)
  %159 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %160 = bitcast [1 x i8]* %159 to i8*
  %161 = load i8* %160, align 1
  %162 = getelementptr %class.ap_uint.0* %25, i32 0, i32 0
  %163 = bitcast [1 x i8]* %162 to i8*
  %164 = load i8* %163, align 1
  %165 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %161, i8 %164)
  br i1 %165, label %166, label %167

; <label>:166                                     ; preds = %154
  br label %168

; <label>:167                                     ; preds = %154
  br label %168

; <label>:168                                     ; preds = %167, %166
  %169 = phi %class.ap_uint.0* [ %thresh, %166 ], [ %p, %167 ]
  %170 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %169)
  %171 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 7)
  %172 = getelementptr %class.ap_uint.1* %26, i32 0, i32 0
  %173 = bitcast [2 x i8]* %172 to i16*
  store i16 %171, i16* %173, align 1
  %174 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_dst, %class.ap_uint.1* %26, %class.ap_uint.1* %_in_k)
  store i64 %170, i64* %174
  br label %225

; <label>:175                                     ; preds = %98
  %176 = bitcast %class.ap_uint.0* %28 to i8*
  %177 = bitcast %class.ap_uint.0* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %176, i8* %177, i64 1, i32 1, i1 false)
  %178 = bitcast %class.ap_uint.0* %29 to i8*
  %179 = bitcast %class.ap_uint.0* %thresh to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %178, i8* %179, i64 1, i32 1, i1 false)
  %180 = getelementptr %class.ap_uint.0* %28, i32 0, i32 0
  %181 = bitcast [1 x i8]* %180 to i8*
  %182 = load i8* %181, align 1
  %183 = getelementptr %class.ap_uint.0* %29, i32 0, i32 0
  %184 = bitcast [1 x i8]* %183 to i8*
  %185 = load i8* %184, align 1
  %186 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %182, i8 %185)
  br i1 %186, label %187, label %190

; <label>:187                                     ; preds = %175
  %188 = bitcast %class.ap_uint.0* %27 to i8*
  %189 = bitcast %class.ap_uint.0* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %188, i8* %189, i64 1, i32 1, i1 false)
  br label %191

; <label>:190                                     ; preds = %175
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %27, i32 0)
  br label %191

; <label>:191                                     ; preds = %190, %187
  %192 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %27)
  %193 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 7)
  %194 = getelementptr %class.ap_uint.1* %30, i32 0, i32 0
  %195 = bitcast [2 x i8]* %194 to i16*
  store i16 %193, i16* %195, align 1
  %196 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_dst, %class.ap_uint.1* %30, %class.ap_uint.1* %_in_k)
  store i64 %192, i64* %196
  br label %225

; <label>:197                                     ; preds = %98
  %198 = bitcast %class.ap_uint.0* %32 to i8*
  %199 = bitcast %class.ap_uint.0* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %198, i8* %199, i64 1, i32 1, i1 false)
  %200 = bitcast %class.ap_uint.0* %33 to i8*
  %201 = bitcast %class.ap_uint.0* %thresh to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %200, i8* %201, i64 1, i32 1, i1 false)
  %202 = getelementptr %class.ap_uint.0* %32, i32 0, i32 0
  %203 = bitcast [1 x i8]* %202 to i8*
  %204 = load i8* %203, align 1
  %205 = getelementptr %class.ap_uint.0* %33, i32 0, i32 0
  %206 = bitcast [1 x i8]* %205 to i8*
  %207 = load i8* %206, align 1
  %208 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %204, i8 %207)
  br i1 %208, label %209, label %210

; <label>:209                                     ; preds = %197
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %31, i32 0)
  br label %213

; <label>:210                                     ; preds = %197
  %211 = bitcast %class.ap_uint.0* %31 to i8*
  %212 = bitcast %class.ap_uint.0* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %211, i8* %212, i64 1, i32 1, i1 false)
  br label %213

; <label>:213                                     ; preds = %210, %209
  %214 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %31)
  %215 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 7)
  %216 = getelementptr %class.ap_uint.1* %34, i32 0, i32 0
  %217 = bitcast [2 x i8]* %216 to i16*
  store i16 %215, i16* %217, align 1
  %218 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_dst, %class.ap_uint.1* %34, %class.ap_uint.1* %_in_k)
  store i64 %214, i64* %218
  br label %225

; <label>:219                                     ; preds = %98
  %220 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %p)
  %221 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 7)
  %222 = getelementptr %class.ap_uint.1* %35, i32 0, i32 0
  %223 = bitcast [2 x i8]* %222 to i16*
  store i16 %221, i16* %223, align 1
  %224 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_dst, %class.ap_uint.1* %35, %class.ap_uint.1* %_in_k)
  store i64 %220, i64* %224
  br label %225

; <label>:225                                     ; preds = %219, %213, %191, %168, %148, %127
  br label %226

; <label>:226                                     ; preds = %225
  %227 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %k, i32 0)
  %228 = getelementptr %class.ap_uint.1* %36, i32 0, i32 0
  %229 = bitcast [2 x i8]* %228 to i16*
  store i16 %227, i16* %229, align 1
  br label %91

; <label>:230                                     ; preds = %91
  %231 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.1* %k, i64 8)
  %232 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %233 = load i16* %6, align 2
  %234 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %i, i16 zeroext %233)
  %235 = getelementptr %class.ap_uint.1* %37, i32 0, i32 0
  %236 = bitcast [2 x i8]* %235 to i16*
  store i16 %234, i16* %236, align 1
  %237 = bitcast %class.ap_uint.1* %38 to i8*
  %238 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %237, i8* %238, i64 2, i32 1, i1 false)
  %239 = getelementptr %class.ap_uint.1* %37, i32 0, i32 0
  %240 = bitcast [2 x i8]* %239 to i16*
  %241 = load i16* %240, align 1
  %242 = getelementptr %class.ap_uint.1* %38, i32 0, i32 0
  %243 = bitcast [2 x i8]* %242 to i16*
  %244 = load i16* %243, align 1
  %245 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %241, i16 %244)
  %246 = getelementptr %class.ap_int* %39, i32 0, i32 0
  %247 = bitcast [4 x i8]* %246 to i32*
  store i32 %245, i32* %247, align 1
  %248 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %39)
  %249 = trunc i64 %248 to i32
  %250 = bitcast %class.ap_uint.0* %40 to i8*
  %251 = bitcast %class.ap_uint.0* %val_dst to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %250, i8* %251, i64 1, i32 1, i1 false)
  %252 = getelementptr %class.ap_uint.0* %40, i32 0, i32 0
  %253 = bitcast [1 x i8]* %252 to i8*
  %254 = load i8* %253, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %232, i32 %249, i8 %254)
  br label %255

; <label>:255                                     ; preds = %230
  %256 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %j, i32 0)
  %257 = getelementptr %class.ap_uint.1* %41, i32 0, i32 0
  %258 = bitcast [2 x i8]* %257 to i16*
  store i16 %256, i16* %258, align 1
  br label %59

; <label>:259                                     ; preds = %59
  br label %260

; <label>:260                                     ; preds = %259
  %261 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %i, i32 0)
  %262 = getelementptr %class.ap_uint.1* %42, i32 0, i32 0
  %263 = bitcast [2 x i8]* %262 to i16*
  store i16 %261, i16* %263, align 1
  br label %48

; <label>:264                                     ; preds = %48
  ret void
}

declare void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0*, i32)

declare void @_ZN7ap_uintILi8EEC1Es(%class.ap_uint.0*, i16 signext)

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1*)

declare %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1*, i16 zeroext)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int*)

declare zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16, i64)

declare i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.1*)

declare i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.1*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0*, i64)

declare i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0*, %class.ap_uint.1*, %class.ap_uint.1*)

declare i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8, i8)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1*, i32)

declare %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.1*, i64)

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

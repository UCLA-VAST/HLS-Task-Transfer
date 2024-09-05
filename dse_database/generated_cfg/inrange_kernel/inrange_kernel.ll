; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/inrange_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [8 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.1 = type { [2 x i8] }
%class.ap_int = type { [4 x i8] }

@.str = private unnamed_addr constant [106 x i8] c"((lower_thresh[0] >= 0) && (lower_thresh[0] <= 255)) && \22lower_thresh must be with the range of 0 to 255\22\00", align 1
@.str1 = private unnamed_addr constant [15 x i8] c"xf_inrange.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL102p_ZN2xf7inRangeILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPhPhR3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_PhS1_S0_ = private unnamed_addr constant [202 x i8] c"void p_ZN2xf7inRangeILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPhPhR3MatILi0ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &, unsigned char *, unsigned char *, struct xf_Mat_0_256_256_1_ &)\00", align 1
@.str2 = private unnamed_addr constant [106 x i8] c"((upper_thresh[0] >= 0) && (upper_thresh[0] <= 255)) && \22lower_thresh must be with the range of 0 to 255\22\00", align 1
@.str3 = private unnamed_addr constant [93 x i8] c"((height <= ROWS ) && (width <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str4 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z13inrange_accelP7ap_uintILi64EEPhS2_S1_ii(%class.ap_uint* %src_data, i8* %lower_thresh, i8* %upper_thresh, %class.ap_uint* %dst_data, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %class.ap_uint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %_src = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %_dst = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %src_data, %class.ap_uint** %1, align 8
  store i8* %lower_thresh, i8** %2, align 8
  store i8* %upper_thresh, i8** %3, align 8
  store %class.ap_uint* %dst_data, %class.ap_uint** %4, align 8
  store i32 %rows, i32* %5, align 4
  store i32 %cols, i32* %6, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %_src)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_src)
  %7 = load i32* %5, align 4
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_src, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32* %6, align 4
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_src, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %_dst)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_dst)
  %11 = load i32* %5, align 4
  %12 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_dst, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32* %6, align 4
  %14 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_dst, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load %class.ap_uint** %1, align 8
  call void @_ZL93p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_0_256_256_1_(%class.ap_uint* %15, %struct.xf_Mat_0_256_256_1_* %_src)
  %16 = load i8** %2, align 8
  %17 = load i8** %3, align 8
  call void @_ZL102p_ZN2xf7inRangeILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPhPhR3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_PhS1_S0_(%struct.xf_Mat_0_256_256_1_* %_src, i8* %16, i8* %17, %struct.xf_Mat_0_256_256_1_* %_dst)
  %18 = load %class.ap_uint** %4, align 8
  call void @_ZL93p_ZN2xf11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi64EE(%struct.xf_Mat_0_256_256_1_* %_dst, %class.ap_uint* %18)
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

define internal void @_ZL102p_ZN2xf7inRangeILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPhPhR3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_PhS1_S0_(%struct.xf_Mat_0_256_256_1_* %src, i8* %lower_thresh, i8* %upper_thresh, %struct.xf_Mat_0_256_256_1_* %dst) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %width = alloca i16, align 2
  %height = alloca i16, align 2
  store %struct.xf_Mat_0_256_256_1_* %src, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i8* %lower_thresh, i8** %2, align 8
  store i8* %upper_thresh, i8** %3, align 8
  store %struct.xf_Mat_0_256_256_1_* %dst, %struct.xf_Mat_0_256_256_1_** %4, align 8
  %5 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %6 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %5, i32 0, i32 2
  %7 = load i32* %6, align 4
  %8 = ashr i32 %7, 0
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %width, align 2
  %10 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %11 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %10, i32 0, i32 1
  %12 = load i32* %11, align 4
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %height, align 2
  %14 = load i8** %2, align 8
  %15 = getelementptr inbounds i8* %14, i64 0
  %16 = load i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %0
  %20 = load i8** %2, align 8
  %21 = getelementptr inbounds i8* %20, i64 0
  %22 = load i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sle i32 %23, 255
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %19
  br label %28

; <label>:26                                      ; preds = %19, %0
  call void @__assert_fail(i8* getelementptr inbounds ([106 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0), i32 139, i8* getelementptr inbounds ([202 x i8]* @__PRETTY_FUNCTION__._ZL102p_ZN2xf7inRangeILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPhPhR3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_PhS1_S0_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %28

; <label>:28                                      ; preds = %27, %25
  %29 = load i8** %3, align 8
  %30 = getelementptr inbounds i8* %29, i64 0
  %31 = load i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %41

; <label>:34                                      ; preds = %28
  %35 = load i8** %3, align 8
  %36 = getelementptr inbounds i8* %35, i64 0
  %37 = load i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sle i32 %38, 255
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %34
  br label %43

; <label>:41                                      ; preds = %34, %28
  call void @__assert_fail(i8* getelementptr inbounds ([106 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0), i32 142, i8* getelementptr inbounds ([202 x i8]* @__PRETTY_FUNCTION__._ZL102p_ZN2xf7inRangeILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPhPhR3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_PhS1_S0_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %43

; <label>:43                                      ; preds = %42, %40
  %44 = load i16* %height, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp sle i32 %45, 256
  br i1 %46, label %47, label %52

; <label>:47                                      ; preds = %43
  %48 = load i16* %width, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp sle i32 %49, 256
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %47
  br label %54

; <label>:52                                      ; preds = %47, %43
  call void @__assert_fail(i8* getelementptr inbounds ([93 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0), i32 144, i8* getelementptr inbounds ([202 x i8]* @__PRETTY_FUNCTION__._ZL102p_ZN2xf7inRangeILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPhPhR3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_PhS1_S0_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %54

; <label>:54                                      ; preds = %53, %51
  %55 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %56 = load %struct.xf_Mat_0_256_256_1_** %4, align 8
  %57 = load i8** %2, align 8
  %58 = load i8** %3, align 8
  %59 = load i16* %height, align 2
  %60 = load i16* %width, align 2
  call void @_ZL135p_ZN2xf15xFinRangeKernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPhPhtt_1R19xf_Mat_0_256_256_1_S0_PhS1_tt(%struct.xf_Mat_0_256_256_1_* %55, %struct.xf_Mat_0_256_256_1_* %56, i8* %57, i8* %58, i16 zeroext %59, i16 zeroext %60)
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

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL135p_ZN2xf15xFinRangeKernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPhPhtt_1R19xf_Mat_0_256_256_1_S0_PhS1_tt(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_dst_mat, i8* %lower_thresh, i8* %upper_thresh, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %val_src = alloca %class.ap_uint.0, align 1
  %val_dst = alloca %class.ap_uint.0, align 1
  %tmp_val = alloca %class.ap_uint.0, align 1
  %_lower_thresh = alloca [1 x %class.ap_uint.0], align 1
  %_upper_thresh = alloca [1 x %class.ap_uint.0], align 1
  %channel_out = alloca [1 x %class.ap_uint.0], align 1
  %i = alloca i32, align 4
  %7 = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint.0, align 1
  %i1 = alloca %class.ap_uint.1, align 1
  %j = alloca %class.ap_uint.1, align 1
  %k = alloca %class.ap_uint.1, align 1
  %c = alloca %class.ap_uint.1, align 1
  %9 = alloca %class.ap_uint.1, align 1
  %10 = alloca %class.ap_uint.1, align 1
  %11 = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.1, align 1
  %13 = alloca %class.ap_uint.1, align 1
  %14 = alloca %class.ap_int, align 1
  %15 = alloca %class.ap_uint.1, align 1
  %16 = alloca %class.ap_uint.1, align 1
  %17 = alloca %class.ap_int, align 1
  %18 = alloca %class.ap_uint.0, align 1
  %19 = alloca %class.ap_uint.1, align 1
  %20 = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i8* %lower_thresh, i8** %3, align 8
  store i8* %upper_thresh, i8** %4, align 8
  store i16 %height, i16* %5, align 2
  store i16 %width, i16* %6, align 2
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_src)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_dst)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %tmp_val)
  %21 = getelementptr inbounds [1 x %class.ap_uint.0]* %_lower_thresh, i32 0, i32 0
  %22 = getelementptr inbounds %class.ap_uint.0* %21, i64 1
  br label %23

; <label>:23                                      ; preds = %23, %0
  %24 = phi %class.ap_uint.0* [ %21, %0 ], [ %25, %23 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %24)
  %25 = getelementptr inbounds %class.ap_uint.0* %24, i64 1
  %26 = icmp eq %class.ap_uint.0* %25, %22
  br i1 %26, label %27, label %23

; <label>:27                                      ; preds = %23
  %28 = getelementptr inbounds [1 x %class.ap_uint.0]* %_upper_thresh, i32 0, i32 0
  %29 = getelementptr inbounds %class.ap_uint.0* %28, i64 1
  br label %30

; <label>:30                                      ; preds = %30, %27
  %31 = phi %class.ap_uint.0* [ %28, %27 ], [ %32, %30 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %31)
  %32 = getelementptr inbounds %class.ap_uint.0* %31, i64 1
  %33 = icmp eq %class.ap_uint.0* %32, %29
  br i1 %33, label %34, label %30

; <label>:34                                      ; preds = %30
  %35 = getelementptr inbounds [1 x %class.ap_uint.0]* %channel_out, i32 0, i32 0
  %36 = getelementptr inbounds %class.ap_uint.0* %35, i64 1
  br label %37

; <label>:37                                      ; preds = %37, %34
  %38 = phi %class.ap_uint.0* [ %35, %34 ], [ %39, %37 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %38)
  %39 = getelementptr inbounds %class.ap_uint.0* %38, i64 1
  %40 = icmp eq %class.ap_uint.0* %39, %36
  br i1 %40, label %41, label %37

; <label>:41                                      ; preds = %37
  store i32 0, i32* %i, align 4
  br label %42

; <label>:42                                      ; preds = %64, %41
  %43 = load i32* %i, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %67

; <label>:45                                      ; preds = %42
  %46 = load i32* %i, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [1 x %class.ap_uint.0]* %_lower_thresh, i32 0, i64 %47
  %49 = load i32* %i, align 4
  %50 = sext i32 %49 to i64
  %51 = load i8** %3, align 8
  %52 = getelementptr inbounds i8* %51, i64 %50
  %53 = load i8* %52, align 1
  call void @_ZN7ap_uintILi8EEC1Eh(%class.ap_uint.0* %7, i8 zeroext %53)
  %54 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %48, %class.ap_uint.0* %7)
  %55 = load i32* %i, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1 x %class.ap_uint.0]* %_upper_thresh, i32 0, i64 %56
  %58 = load i32* %i, align 4
  %59 = sext i32 %58 to i64
  %60 = load i8** %4, align 8
  %61 = getelementptr inbounds i8* %60, i64 %59
  %62 = load i8* %61, align 1
  call void @_ZN7ap_uintILi8EEC1Eh(%class.ap_uint.0* %8, i8 zeroext %62)
  %63 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %57, %class.ap_uint.0* %8)
  br label %64

; <label>:64                                      ; preds = %45
  %65 = load i32* %i, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %i, align 4
  br label %42

; <label>:67                                      ; preds = %42
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %i1)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %j)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %k)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %c)
  br label %68

; <label>:68                                      ; preds = %67
  %69 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %i1, i32 0)
  br label %70

; <label>:70                                      ; preds = %143, %68
  %71 = bitcast %class.ap_uint.1* %9 to i8*
  %72 = bitcast %class.ap_uint.1* %i1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 2, i32 1, i1 false)
  %73 = load i16* %5, align 2
  %74 = getelementptr %class.ap_uint.1* %9, i32 0, i32 0
  %75 = bitcast [2 x i8]* %74 to i16*
  %76 = load i16* %75, align 1
  %77 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %76, i16 zeroext %73)
  br i1 %77, label %78, label %147

; <label>:78                                      ; preds = %70
  br label %79

; <label>:79                                      ; preds = %78
  %80 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %j, i32 0)
  br label %81

; <label>:81                                      ; preds = %138, %79
  %82 = bitcast %class.ap_uint.1* %10 to i8*
  %83 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 2, i32 1, i1 false)
  %84 = load i16* %6, align 2
  %85 = getelementptr %class.ap_uint.1* %10, i32 0, i32 0
  %86 = bitcast [2 x i8]* %85 to i16*
  %87 = load i16* %86, align 1
  %88 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %87, i16 zeroext %84)
  br i1 %88, label %89, label %142

; <label>:89                                      ; preds = %81
  %90 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %91 = load i16* %6, align 2
  %92 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %i1, i16 zeroext %91)
  %93 = getelementptr %class.ap_uint.1* %12, i32 0, i32 0
  %94 = bitcast [2 x i8]* %93 to i16*
  store i16 %92, i16* %94, align 1
  %95 = bitcast %class.ap_uint.1* %13 to i8*
  %96 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 2, i32 1, i1 false)
  %97 = getelementptr %class.ap_uint.1* %12, i32 0, i32 0
  %98 = bitcast [2 x i8]* %97 to i16*
  %99 = load i16* %98, align 1
  %100 = getelementptr %class.ap_uint.1* %13, i32 0, i32 0
  %101 = bitcast [2 x i8]* %100 to i16*
  %102 = load i16* %101, align 1
  %103 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %99, i16 %102)
  %104 = getelementptr %class.ap_int* %14, i32 0, i32 0
  %105 = bitcast [4 x i8]* %104 to i32*
  store i32 %103, i32* %105, align 1
  %106 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %14)
  %107 = trunc i64 %106 to i32
  %108 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %90, i32 %107)
  %109 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %110 = bitcast [1 x i8]* %109 to i8*
  store i8 %108, i8* %110, align 1
  %111 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val_src, %class.ap_uint.0* %11)
  %112 = getelementptr inbounds [1 x %class.ap_uint.0]* %channel_out, i32 0, i32 0
  %113 = getelementptr inbounds [1 x %class.ap_uint.0]* %_lower_thresh, i32 0, i32 0
  %114 = getelementptr inbounds [1 x %class.ap_uint.0]* %_upper_thresh, i32 0, i32 0
  call void @_ZL124p_ZN2xf11inrangeprocILi1ELi1ELi0ELi0ELi0ELi1EEER7ap_uintILi8EER7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EE_1R7ap_uintILi8EES1_PS0_S2_S2_(%class.ap_uint.0* %val_src, %class.ap_uint.0* %tmp_val, %class.ap_uint.0* %112, %class.ap_uint.0* %113, %class.ap_uint.0* %114)
  %115 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %116 = load i16* %6, align 2
  %117 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %i1, i16 zeroext %116)
  %118 = getelementptr %class.ap_uint.1* %15, i32 0, i32 0
  %119 = bitcast [2 x i8]* %118 to i16*
  store i16 %117, i16* %119, align 1
  %120 = bitcast %class.ap_uint.1* %16 to i8*
  %121 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 2, i32 1, i1 false)
  %122 = getelementptr %class.ap_uint.1* %15, i32 0, i32 0
  %123 = bitcast [2 x i8]* %122 to i16*
  %124 = load i16* %123, align 1
  %125 = getelementptr %class.ap_uint.1* %16, i32 0, i32 0
  %126 = bitcast [2 x i8]* %125 to i16*
  %127 = load i16* %126, align 1
  %128 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %124, i16 %127)
  %129 = getelementptr %class.ap_int* %17, i32 0, i32 0
  %130 = bitcast [4 x i8]* %129 to i32*
  store i32 %128, i32* %130, align 1
  %131 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %17)
  %132 = trunc i64 %131 to i32
  %133 = bitcast %class.ap_uint.0* %18 to i8*
  %134 = bitcast %class.ap_uint.0* %tmp_val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %133, i8* %134, i64 1, i32 1, i1 false)
  %135 = getelementptr %class.ap_uint.0* %18, i32 0, i32 0
  %136 = bitcast [1 x i8]* %135 to i8*
  %137 = load i8* %136, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %115, i32 %132, i8 %137)
  br label %138

; <label>:138                                     ; preds = %89
  %139 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %j, i32 0)
  %140 = getelementptr %class.ap_uint.1* %19, i32 0, i32 0
  %141 = bitcast [2 x i8]* %140 to i16*
  store i16 %139, i16* %141, align 1
  br label %81

; <label>:142                                     ; preds = %81
  br label %143

; <label>:143                                     ; preds = %142
  %144 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %i1, i32 0)
  %145 = getelementptr %class.ap_uint.1* %20, i32 0, i32 0
  %146 = bitcast [2 x i8]* %145 to i16*
  store i16 %144, i16* %146, align 1
  br label %70

; <label>:147                                     ; preds = %70
  ret void
}

declare void @_ZN7ap_uintILi8EEC1Eh(%class.ap_uint.0*, i8 zeroext)

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1*)

declare %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1*, i16 zeroext)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int*)

define internal void @_ZL124p_ZN2xf11inrangeprocILi1ELi1ELi0ELi0ELi0ELi1EEER7ap_uintILi8EER7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EE_1R7ap_uintILi8EES1_PS0_S2_S2_(%class.ap_uint.0* %val_src, %class.ap_uint.0* %tmp_val, %class.ap_uint.0* %channel_out, %class.ap_uint.0* %_lower_thresh, %class.ap_uint.0* %_upper_thresh) uwtable {
  %1 = alloca %class.ap_uint.0*, align 8
  %2 = alloca %class.ap_uint.0*, align 8
  %3 = alloca %class.ap_uint.0*, align 8
  %4 = alloca %class.ap_uint.0*, align 8
  %5 = alloca %class.ap_uint.0*, align 8
  %p = alloca %class.ap_uint.0, align 1
  %_l_k = alloca %class.ap_uint.1, align 1
  %_l_c = alloca %class.ap_uint.1, align 1
  %6 = alloca %class.ap_uint.1, align 1
  %_in_l_k = alloca %class.ap_uint.1, align 1
  %7 = alloca %class.ap_uint.1, align 1
  %8 = alloca %class.ap_uint.1, align 1
  %9 = alloca %class.ap_uint.0, align 1
  %10 = alloca %class.ap_uint.0, align 1
  %11 = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.0, align 1
  %13 = alloca %class.ap_uint.0, align 1
  %14 = alloca %class.ap_uint.1, align 1
  %15 = alloca %class.ap_uint.1, align 1
  store %class.ap_uint.0* %val_src, %class.ap_uint.0** %1, align 8
  store %class.ap_uint.0* %tmp_val, %class.ap_uint.0** %2, align 8
  store %class.ap_uint.0* %channel_out, %class.ap_uint.0** %3, align 8
  store %class.ap_uint.0* %_lower_thresh, %class.ap_uint.0** %4, align 8
  store %class.ap_uint.0* %_upper_thresh, %class.ap_uint.0** %5, align 8
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %p)
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.1* %_l_k, i32 0)
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.1* %_l_c, i32 0)
  %16 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %_l_k, i32 0)
  br label %17

; <label>:17                                      ; preds = %77, %0
  %18 = bitcast %class.ap_uint.1* %6 to i8*
  %19 = bitcast %class.ap_uint.1* %_l_k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 2, i32 1, i1 false)
  %20 = getelementptr %class.ap_uint.1* %6, i32 0, i32 0
  %21 = bitcast [2 x i8]* %20 to i16*
  %22 = load i16* %21, align 1
  %23 = call zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16 %22, i64 0)
  br i1 %23, label %24, label %81

; <label>:24                                      ; preds = %17
  %25 = call i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64 8, %class.ap_uint.1* %_l_k)
  %26 = getelementptr %class.ap_uint.1* %7, i32 0, i32 0
  %27 = bitcast [2 x i8]* %26 to i16*
  store i16 %25, i16* %27, align 1
  %28 = call i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.1* %7)
  %29 = getelementptr %class.ap_uint.1* %_in_l_k, i32 0, i32 0
  %30 = bitcast [2 x i8]* %29 to i16*
  store i16 %28, i16* %30, align 1
  %31 = load %class.ap_uint.0** %1, align 8
  %32 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_l_k, i32 7)
  %33 = getelementptr %class.ap_uint.1* %8, i32 0, i32 0
  %34 = bitcast [2 x i8]* %33 to i16*
  store i16 %32, i16* %34, align 1
  %35 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %31, %class.ap_uint.1* %8, %class.ap_uint.1* %_in_l_k)
  %36 = load i64* %35
  %37 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %p, i64 %36)
  %38 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %_l_c)
  %39 = load %class.ap_uint.0** %3, align 8
  %40 = getelementptr inbounds %class.ap_uint.0* %39, i64 %38
  %41 = bitcast %class.ap_uint.0* %10 to i8*
  %42 = bitcast %class.ap_uint.0* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 1, i32 1, i1 false)
  %43 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %_l_c)
  %44 = load %class.ap_uint.0** %4, align 8
  %45 = getelementptr inbounds %class.ap_uint.0* %44, i64 %43
  %46 = bitcast %class.ap_uint.0* %11 to i8*
  %47 = bitcast %class.ap_uint.0* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 1, i32 1, i1 false)
  %48 = getelementptr %class.ap_uint.0* %10, i32 0, i32 0
  %49 = bitcast [1 x i8]* %48 to i8*
  %50 = load i8* %49, align 1
  %51 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %52 = bitcast [1 x i8]* %51 to i8*
  %53 = load i8* %52, align 1
  %54 = call zeroext i1 @_ZgeILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %50, i8 %53)
  br i1 %54, label %55, label %71

; <label>:55                                      ; preds = %24
  %56 = bitcast %class.ap_uint.0* %12 to i8*
  %57 = bitcast %class.ap_uint.0* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 1, i32 1, i1 false)
  %58 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %_l_c)
  %59 = load %class.ap_uint.0** %5, align 8
  %60 = getelementptr inbounds %class.ap_uint.0* %59, i64 %58
  %61 = bitcast %class.ap_uint.0* %13 to i8*
  %62 = bitcast %class.ap_uint.0* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 1, i32 1, i1 false)
  %63 = getelementptr %class.ap_uint.0* %12, i32 0, i32 0
  %64 = bitcast [1 x i8]* %63 to i8*
  %65 = load i8* %64, align 1
  %66 = getelementptr %class.ap_uint.0* %13, i32 0, i32 0
  %67 = bitcast [1 x i8]* %66 to i8*
  %68 = load i8* %67, align 1
  %69 = call zeroext i1 @_ZleILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %65, i8 %68)
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %55
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %9, i32 255)
  br label %72

; <label>:71                                      ; preds = %55, %24
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %9, i32 0)
  br label %72

; <label>:72                                      ; preds = %71, %70
  %73 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %40, %class.ap_uint.0* %9)
  %74 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %_l_c, i32 0)
  %75 = getelementptr %class.ap_uint.1* %14, i32 0, i32 0
  %76 = bitcast [2 x i8]* %75 to i16*
  store i16 %74, i16* %76, align 1
  br label %77

; <label>:77                                      ; preds = %72
  %78 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %_l_k, i32 0)
  %79 = getelementptr %class.ap_uint.1* %15, i32 0, i32 0
  %80 = bitcast [2 x i8]* %79 to i16*
  store i16 %78, i16* %80, align 1
  br label %17

; <label>:81                                      ; preds = %17
  %82 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.1* %_l_k, i64 8)
  %83 = load %class.ap_uint.0** %2, align 8
  %84 = load %class.ap_uint.0** %3, align 8
  %85 = getelementptr inbounds %class.ap_uint.0* %84, i64 0
  %86 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %83, %class.ap_uint.0* %85)
  ret void
}

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

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1*, i32)

declare void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16, i64)

declare i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.1*)

declare i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.1*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0*, i64)

declare i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0*, %class.ap_uint.1*, %class.ap_uint.1*)

declare i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1*, i32)

declare i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1*)

declare zeroext i1 @_ZgeILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8, i8)

declare zeroext i1 @_ZleILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8, i8)

declare void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0*, i32)

declare %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.1*, i64)

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

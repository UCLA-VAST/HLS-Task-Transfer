; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/sobel_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.1 = type { [2 x i8] }
%class.ap_uint.2 = type { [1 x i8] }
%class.ap_uint.3 = type { [1 x i8] }
%class.ap_uint.5 = type { [1 x i8] }
%class.ap_int.4 = type { [2 x i8] }
%class.ap_int = type { [2 x i8] }

@.str = private unnamed_addr constant [22 x i8] c"Array2xfMat .... !!!\0A\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"Sobel .... !!!\0A\00", align 1
@.str2 = private unnamed_addr constant [22 x i8] c"xfMat2Array .... !!!\0A\00", align 1
@.str3 = private unnamed_addr constant [108 x i8] c"((_src_mat.rows <= ROWS ) && (_src_mat.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"xf_sobel.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL135p_ZN2xf5SobelILi0ELi3ELi0ELi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_ = private unnamed_addr constant [231 x i8] c"void p_ZN2xf5SobelILi0ELi3ELi0ELi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &)\00", align 1
@.str5 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z11sobel_accelP7ap_uintILi256EES1_S1_ii(%class.ap_uint* %img_inp, %class.ap_uint* %img_out1, %class.ap_uint* %img_out2, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %_dstgx = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %_dstgy = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_inp, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_out1, %class.ap_uint** %2, align 8
  store %class.ap_uint* %img_out2, %class.ap_uint** %3, align 8
  store i32 %rows, i32* %4, align 4
  store i32 %cols, i32* %5, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat)
  %6 = load i32* %4, align 4
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32* %5, align 4
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %_dstgx)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_dstgx)
  %10 = load i32* %4, align 4
  %11 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_dstgx, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32* %5, align 4
  %13 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_dstgx, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %_dstgy)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_dstgy)
  %14 = load i32* %4, align 4
  %15 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_dstgy, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32* %5, align 4
  %17 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_dstgy, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0))
  %19 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %19, %struct.xf_Mat_0_256_256_1_* %in_mat)
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0))
  call void @_ZL135p_ZN2xf5SobelILi0ELi3ELi0ELi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_0_256_256_1_* %_dstgx, %struct.xf_Mat_0_256_256_1_* %_dstgy)
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str2, i32 0, i32 0))
  %22 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_0_256_256_1_* %_dstgx, %class.ap_uint* %22)
  %23 = load %class.ap_uint** %3, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_0_256_256_1_* %_dstgy, %class.ap_uint* %23)
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

declare i32 @printf(i8*, ...)

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

define internal void @_ZL135p_ZN2xf5SobelILi0ELi3ELi0ELi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_dst_matx, %struct.xf_Mat_0_256_256_1_* %_dst_maty) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %width = alloca i16, align 2
  %height = alloca i16, align 2
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_matx, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_maty, %struct.xf_Mat_0_256_256_1_** %3, align 8
  %4 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %4, i32 0, i32 2
  %6 = load i32* %5, align 4
  %7 = ashr i32 %6, 0
  %8 = trunc i32 %7 to i16
  store i16 %8, i16* %width, align 2
  %9 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %height, align 2
  %13 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %14 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %13, i32 0, i32 1
  %15 = load i32* %14, align 4
  %16 = icmp sle i32 %15, 256
  br i1 %16, label %17, label %23

; <label>:17                                      ; preds = %0
  %18 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %19 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %18, i32 0, i32 2
  %20 = load i32* %19, align 4
  %21 = icmp sle i32 %20, 256
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %17
  br label %25

; <label>:23                                      ; preds = %17, %0
  call void @__assert_fail(i8* getelementptr inbounds ([108 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), i32 1547, i8* getelementptr inbounds ([231 x i8]* @__PRETTY_FUNCTION__._ZL135p_ZN2xf5SobelILi0ELi3ELi0ELi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %27 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %28 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %29 = load i16* %height, align 2
  %30 = load i16* %width, align 2
  call void @_ZL167p_ZN2xf16xFSobelFilter3x3ILi0ELi0ELi256ELi256ELi1ELi0ELi0ELi1ELi1ELi1ELi256ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_S0_S0_tt(%struct.xf_Mat_0_256_256_1_* %26, %struct.xf_Mat_0_256_256_1_* %27, %struct.xf_Mat_0_256_256_1_* %28, i16 zeroext %29, i16 zeroext %30)
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

define internal void @_ZL167p_ZN2xf16xFSobelFilter3x3ILi0ELi0ELi256ELi256ELi1ELi0ELi0ELi1ELi1ELi1ELi256ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_S0_S0_tt(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_dst_matx, %struct.xf_Mat_0_256_256_1_* %_dst_maty, i16 zeroext %img_height, i16 zeroext %img_width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %row_ind = alloca %class.ap_uint.1, align 1
  %tp = alloca %class.ap_uint.2, align 1
  %mid = alloca %class.ap_uint.2, align 1
  %bottom = alloca %class.ap_uint.2, align 1
  %buf_size = alloca %class.ap_uint.0, align 1
  %shift_x = alloca i16, align 2
  %shift_y = alloca i16, align 2
  %row = alloca %class.ap_uint.1, align 1
  %col = alloca %class.ap_uint.1, align 1
  %read_index = alloca i32, align 4
  %write_index = alloca i32, align 4
  %GradientValuesX = alloca [1 x %class.ap_uint.0], align 1
  %GradientValuesY = alloca [1 x %class.ap_uint.0], align 1
  %src_buf1 = alloca [3 x %class.ap_uint.0], align 1
  %src_buf2 = alloca [3 x %class.ap_uint.0], align 1
  %src_buf3 = alloca [3 x %class.ap_uint.0], align 1
  %P0 = alloca %class.ap_uint.0, align 1
  %P1 = alloca %class.ap_uint.0, align 1
  %buf = alloca [3 x [256 x %class.ap_uint.0]], align 16
  %6 = alloca %class.ap_uint.1, align 1
  %7 = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint.1, align 1
  %9 = alloca %class.ap_uint.1, align 1
  %10 = alloca %class.ap_uint.1, align 1
  %11 = alloca %class.ap_uint.1, align 1
  %12 = alloca %class.ap_uint.1, align 1
  %13 = alloca %class.ap_uint.1, align 1
  %14 = alloca %class.ap_uint.1, align 1
  %15 = alloca %class.ap_uint.2, align 1
  %16 = alloca %class.ap_uint.2, align 1
  %17 = alloca %class.ap_uint.2, align 1
  %18 = alloca %class.ap_uint.1, align 1
  %STEP = alloca i32, align 4
  %q = alloca i32, align 4
  %_l_i = alloca %class.ap_uint.3, align 1
  %_l_k = alloca %class.ap_uint.3, align 1
  %19 = alloca %class.ap_uint.3, align 1
  %20 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.0, align 1
  %22 = alloca %class.ap_uint.3, align 1
  %23 = alloca %class.ap_uint.0, align 1
  %24 = alloca %class.ap_uint.0, align 1
  %25 = alloca %class.ap_uint.3, align 1
  %26 = alloca %class.ap_uint.0, align 1
  %27 = alloca %class.ap_uint.0, align 1
  %28 = alloca %class.ap_uint.0, align 1
  %29 = alloca %class.ap_uint.3, align 1
  %30 = alloca %class.ap_uint.0, align 1
  %31 = alloca %class.ap_uint.0, align 1
  %32 = alloca %class.ap_uint.3, align 1
  %33 = alloca %class.ap_uint.0, align 1
  %34 = alloca %class.ap_uint.0, align 1
  %35 = alloca %class.ap_uint.0, align 1
  %36 = alloca %class.ap_uint.3, align 1
  %37 = alloca %class.ap_uint.0, align 1
  %38 = alloca %class.ap_uint.0, align 1
  %39 = alloca %class.ap_uint.3, align 1
  %40 = alloca %class.ap_uint.0, align 1
  %41 = alloca %class.ap_uint.0, align 1
  %42 = alloca %class.ap_uint.0, align 1
  %43 = alloca %class.ap_uint.0, align 1
  %44 = alloca %class.ap_uint.3, align 1
  %45 = alloca %class.ap_uint.0, align 1
  %46 = alloca %class.ap_uint.0, align 1
  %47 = alloca %class.ap_uint.3, align 1
  %48 = alloca %class.ap_uint.0, align 1
  %49 = alloca %class.ap_uint.0, align 1
  %50 = alloca %class.ap_uint.0, align 1
  %51 = alloca %class.ap_uint.3, align 1
  %52 = alloca %class.ap_uint.0, align 1
  %53 = alloca %class.ap_uint.0, align 1
  %54 = alloca %class.ap_uint.3, align 1
  %55 = alloca %class.ap_uint.0, align 1
  %56 = alloca %class.ap_uint.0, align 1
  %57 = alloca %class.ap_uint.0, align 1
  %58 = alloca %class.ap_uint.3, align 1
  %59 = alloca %class.ap_uint.0, align 1
  %60 = alloca %class.ap_uint.0, align 1
  %61 = alloca %class.ap_uint.3, align 1
  %62 = alloca %class.ap_uint.0, align 1
  %63 = alloca %class.ap_uint.0, align 1
  %64 = alloca %class.ap_uint.3, align 1
  %65 = alloca %class.ap_uint.0, align 1
  %66 = alloca %class.ap_uint.0, align 1
  %67 = alloca %class.ap_uint.1, align 1
  %68 = alloca %class.ap_uint.1, align 1
  %69 = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_matx, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_maty, %struct.xf_Mat_0_256_256_1_** %3, align 8
  store i16 %img_height, i16* %4, align 2
  store i16 %img_width, i16* %5, align 2
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %row_ind)
  call void @_ZN7ap_uintILi2EEC1Ev(%class.ap_uint.2* %tp)
  call void @_ZN7ap_uintILi2EEC1Ev(%class.ap_uint.2* %mid)
  call void @_ZN7ap_uintILi2EEC1Ev(%class.ap_uint.2* %bottom)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %buf_size, i32 3)
  store i16 0, i16* %shift_x, align 2
  store i16 0, i16* %shift_y, align 2
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %row)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %col)
  store i32 0, i32* %read_index, align 4
  store i32 0, i32* %write_index, align 4
  %70 = getelementptr inbounds [1 x %class.ap_uint.0]* %GradientValuesX, i32 0, i32 0
  %71 = getelementptr inbounds %class.ap_uint.0* %70, i64 1
  br label %72

; <label>:72                                      ; preds = %72, %0
  %73 = phi %class.ap_uint.0* [ %70, %0 ], [ %74, %72 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %73)
  %74 = getelementptr inbounds %class.ap_uint.0* %73, i64 1
  %75 = icmp eq %class.ap_uint.0* %74, %71
  br i1 %75, label %76, label %72

; <label>:76                                      ; preds = %72
  %77 = getelementptr inbounds [1 x %class.ap_uint.0]* %GradientValuesY, i32 0, i32 0
  %78 = getelementptr inbounds %class.ap_uint.0* %77, i64 1
  br label %79

; <label>:79                                      ; preds = %79, %76
  %80 = phi %class.ap_uint.0* [ %77, %76 ], [ %81, %79 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %80)
  %81 = getelementptr inbounds %class.ap_uint.0* %80, i64 1
  %82 = icmp eq %class.ap_uint.0* %81, %78
  br i1 %82, label %83, label %79

; <label>:83                                      ; preds = %79
  %84 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf1, i32 0, i32 0
  %85 = getelementptr inbounds %class.ap_uint.0* %84, i64 3
  br label %86

; <label>:86                                      ; preds = %86, %83
  %87 = phi %class.ap_uint.0* [ %84, %83 ], [ %88, %86 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %87)
  %88 = getelementptr inbounds %class.ap_uint.0* %87, i64 1
  %89 = icmp eq %class.ap_uint.0* %88, %85
  br i1 %89, label %90, label %86

; <label>:90                                      ; preds = %86
  %91 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf2, i32 0, i32 0
  %92 = getelementptr inbounds %class.ap_uint.0* %91, i64 3
  br label %93

; <label>:93                                      ; preds = %93, %90
  %94 = phi %class.ap_uint.0* [ %91, %90 ], [ %95, %93 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %94)
  %95 = getelementptr inbounds %class.ap_uint.0* %94, i64 1
  %96 = icmp eq %class.ap_uint.0* %95, %92
  br i1 %96, label %97, label %93

; <label>:97                                      ; preds = %93
  %98 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf3, i32 0, i32 0
  %99 = getelementptr inbounds %class.ap_uint.0* %98, i64 3
  br label %100

; <label>:100                                     ; preds = %100, %97
  %101 = phi %class.ap_uint.0* [ %98, %97 ], [ %102, %100 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %101)
  %102 = getelementptr inbounds %class.ap_uint.0* %101, i64 1
  %103 = icmp eq %class.ap_uint.0* %102, %99
  br i1 %103, label %104, label %100

; <label>:104                                     ; preds = %100
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %P0)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %P1)
  %105 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %buf, i32 0, i32 0, i32 0
  %106 = getelementptr inbounds %class.ap_uint.0* %105, i64 768
  br label %107

; <label>:107                                     ; preds = %107, %104
  %108 = phi %class.ap_uint.0* [ %105, %104 ], [ %109, %107 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %108)
  %109 = getelementptr inbounds %class.ap_uint.0* %108, i64 1
  %110 = icmp eq %class.ap_uint.0* %109, %106
  br i1 %110, label %111, label %107

; <label>:111                                     ; preds = %107
  %112 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %row_ind, i32 1)
  br label %113

; <label>:113                                     ; preds = %111
  %114 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %col, i32 0)
  br label %115

; <label>:115                                     ; preds = %139, %113
  %116 = bitcast %class.ap_uint.1* %6 to i8*
  %117 = bitcast %class.ap_uint.1* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 2, i32 1, i1 false)
  %118 = load i16* %5, align 2
  %119 = getelementptr %class.ap_uint.1* %6, i32 0, i32 0
  %120 = bitcast [2 x i8]* %119 to i16*
  %121 = load i16* %120, align 1
  %122 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %121, i16 zeroext %118)
  br i1 %122, label %123, label %143

; <label>:123                                     ; preds = %115
  %124 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %col)
  %125 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %buf, i32 0, i64 0
  %126 = getelementptr inbounds [256 x %class.ap_uint.0]* %125, i32 0, i64 %124
  %127 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %126, i32 0)
  %128 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %col)
  %129 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %row_ind)
  %130 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %buf, i32 0, i64 %129
  %131 = getelementptr inbounds [256 x %class.ap_uint.0]* %130, i32 0, i64 %128
  %132 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %133 = load i32* %read_index, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %read_index, align 4
  %135 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %132, i32 %133)
  %136 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %137 = bitcast [1 x i8]* %136 to i8*
  store i8 %135, i8* %137, align 1
  %138 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %131, %class.ap_uint.0* %7)
  br label %139

; <label>:139                                     ; preds = %123
  %140 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %col, i32 0)
  %141 = getelementptr %class.ap_uint.1* %8, i32 0, i32 0
  %142 = bitcast [2 x i8]* %141 to i16*
  store i16 %140, i16* %142, align 1
  br label %115

; <label>:143                                     ; preds = %115
  %144 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %row_ind, i32 0)
  %145 = getelementptr %class.ap_uint.1* %9, i32 0, i32 0
  %146 = bitcast [2 x i8]* %145 to i16*
  store i16 %144, i16* %146, align 1
  br label %147

; <label>:147                                     ; preds = %143
  %148 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %row, i32 1)
  br label %149

; <label>:149                                     ; preds = %490, %147
  %150 = bitcast %class.ap_uint.1* %10 to i8*
  %151 = bitcast %class.ap_uint.1* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %150, i8* %151, i64 2, i32 1, i1 false)
  %152 = load i16* %4, align 2
  %153 = zext i16 %152 to i32
  %154 = add nsw i32 %153, 1
  %155 = getelementptr %class.ap_uint.1* %10, i32 0, i32 0
  %156 = bitcast [2 x i8]* %155 to i16*
  %157 = load i16* %156, align 1
  %158 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %157, i32 %154)
  br i1 %158, label %159, label %494

; <label>:159                                     ; preds = %149
  %160 = bitcast %class.ap_uint.1* %11 to i8*
  %161 = bitcast %class.ap_uint.1* %row_ind to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %160, i8* %161, i64 2, i32 1, i1 false)
  %162 = getelementptr %class.ap_uint.1* %11, i32 0, i32 0
  %163 = bitcast [2 x i8]* %162 to i16*
  %164 = load i16* %163, align 1
  %165 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %164, i32 2)
  br i1 %165, label %166, label %170

; <label>:166                                     ; preds = %159
  %167 = call %class.ap_uint.2* @_ZN7ap_uintILi2EEaSEi(%class.ap_uint.2* %tp, i32 0)
  %168 = call %class.ap_uint.2* @_ZN7ap_uintILi2EEaSEi(%class.ap_uint.2* %mid, i32 1)
  %169 = call %class.ap_uint.2* @_ZN7ap_uintILi2EEaSEi(%class.ap_uint.2* %bottom, i32 2)
  br label %194

; <label>:170                                     ; preds = %159
  %171 = bitcast %class.ap_uint.1* %12 to i8*
  %172 = bitcast %class.ap_uint.1* %row_ind to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %171, i8* %172, i64 2, i32 1, i1 false)
  %173 = getelementptr %class.ap_uint.1* %12, i32 0, i32 0
  %174 = bitcast [2 x i8]* %173 to i16*
  %175 = load i16* %174, align 1
  %176 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %175, i32 0)
  br i1 %176, label %177, label %181

; <label>:177                                     ; preds = %170
  %178 = call %class.ap_uint.2* @_ZN7ap_uintILi2EEaSEi(%class.ap_uint.2* %tp, i32 1)
  %179 = call %class.ap_uint.2* @_ZN7ap_uintILi2EEaSEi(%class.ap_uint.2* %mid, i32 2)
  %180 = call %class.ap_uint.2* @_ZN7ap_uintILi2EEaSEi(%class.ap_uint.2* %bottom, i32 0)
  br label %193

; <label>:181                                     ; preds = %170
  %182 = bitcast %class.ap_uint.1* %13 to i8*
  %183 = bitcast %class.ap_uint.1* %row_ind to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %182, i8* %183, i64 2, i32 1, i1 false)
  %184 = getelementptr %class.ap_uint.1* %13, i32 0, i32 0
  %185 = bitcast [2 x i8]* %184 to i16*
  %186 = load i16* %185, align 1
  %187 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %186, i32 1)
  br i1 %187, label %188, label %192

; <label>:188                                     ; preds = %181
  %189 = call %class.ap_uint.2* @_ZN7ap_uintILi2EEaSEi(%class.ap_uint.2* %tp, i32 2)
  %190 = call %class.ap_uint.2* @_ZN7ap_uintILi2EEaSEi(%class.ap_uint.2* %mid, i32 0)
  %191 = call %class.ap_uint.2* @_ZN7ap_uintILi2EEaSEi(%class.ap_uint.2* %bottom, i32 1)
  br label %192

; <label>:192                                     ; preds = %188, %181
  br label %193

; <label>:193                                     ; preds = %192, %177
  br label %194

; <label>:194                                     ; preds = %193, %166
  %195 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf1, i32 0, i64 0
  %196 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf1, i32 0, i64 1
  %197 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %196, i32 0)
  %198 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %195, %class.ap_uint.0* %197)
  %199 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf2, i32 0, i64 0
  %200 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf2, i32 0, i64 1
  %201 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %200, i32 0)
  %202 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %199, %class.ap_uint.0* %201)
  %203 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf3, i32 0, i64 0
  %204 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf3, i32 0, i64 1
  %205 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %204, i32 0)
  %206 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %203, %class.ap_uint.0* %205)
  %207 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %P1, i32 0)
  %208 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %P0, %class.ap_uint.0* %207)
  %209 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %210 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %211 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %212 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %buf, i32 0, i32 0
  %213 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf1, i32 0, i32 0
  %214 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf2, i32 0, i32 0
  %215 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf3, i32 0, i32 0
  %216 = getelementptr inbounds [1 x %class.ap_uint.0]* %GradientValuesX, i32 0, i32 0
  %217 = getelementptr inbounds [1 x %class.ap_uint.0]* %GradientValuesY, i32 0, i32 0
  %218 = load i16* %5, align 2
  %219 = load i16* %4, align 2
  %220 = bitcast %class.ap_uint.1* %14 to i8*
  %221 = bitcast %class.ap_uint.1* %row_ind to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %221, i64 2, i32 1, i1 false)
  %222 = bitcast %class.ap_uint.2* %15 to i8*
  %223 = bitcast %class.ap_uint.2* %tp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %222, i8* %223, i64 1, i32 1, i1 false)
  %224 = bitcast %class.ap_uint.2* %16 to i8*
  %225 = bitcast %class.ap_uint.2* %mid to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %224, i8* %225, i64 1, i32 1, i1 false)
  %226 = bitcast %class.ap_uint.2* %17 to i8*
  %227 = bitcast %class.ap_uint.2* %bottom to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %226, i8* %227, i64 1, i32 1, i1 false)
  %228 = bitcast %class.ap_uint.1* %18 to i8*
  %229 = bitcast %class.ap_uint.1* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %228, i8* %229, i64 2, i32 1, i1 false)
  %230 = getelementptr %class.ap_uint.1* %14, i32 0, i32 0
  %231 = bitcast [2 x i8]* %230 to i16*
  %232 = load i16* %231, align 1
  %233 = getelementptr %class.ap_uint.2* %15, i32 0, i32 0
  %234 = bitcast [1 x i8]* %233 to i8*
  %235 = load i8* %234, align 1
  %236 = getelementptr %class.ap_uint.2* %16, i32 0, i32 0
  %237 = bitcast [1 x i8]* %236 to i8*
  %238 = load i8* %237, align 1
  %239 = getelementptr %class.ap_uint.2* %17, i32 0, i32 0
  %240 = bitcast [1 x i8]* %239 to i8*
  %241 = load i8* %240, align 1
  %242 = getelementptr %class.ap_uint.1* %18, i32 0, i32 0
  %243 = bitcast [2 x i8]* %242 to i16*
  %244 = load i16* %243, align 1
  call void @_ZL367p_ZN2xf15ProcessSobel3x3ILi0ELi0ELi256ELi256ELi1ELi0ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA256_7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EER7ap_uintILi8EEtt7ap_uintILi13EERtRt7ap_uintILi2EE7ap_uintILi2EE7ap_uintILi2EE7ap_uintILi13EERiRi_1R19xf_Mat_0_256_256_1_S0_S0_PA256_7ap_uintILi8EEPS2_S5_S5_S5_S5_RS2_S6_ttS1_ILi13EERtS8_S1_ILi2EES9_S9_S7_RiSA_(%struct.xf_Mat_0_256_256_1_* %209, %struct.xf_Mat_0_256_256_1_* %210, %struct.xf_Mat_0_256_256_1_* %211, [256 x %class.ap_uint.0]* %212, %class.ap_uint.0* %213, %class.ap_uint.0* %214, %class.ap_uint.0* %215, %class.ap_uint.0* %216, %class.ap_uint.0* %217, %class.ap_uint.0* %P0, %class.ap_uint.0* %P1, i16 zeroext %218, i16 zeroext %219, i16 %232, i16* %shift_x, i16* %shift_y, i8 %235, i8 %238, i8 %241, i16 %244, i32* %read_index, i32* %write_index)
  store i32 0, i32* %q, align 4
  store i32 8, i32* %STEP, align 4
  call void @_ZN7ap_uintILi7EEC1Ei(%class.ap_uint.3* %_l_i, i32 0)
  call void @_ZN7ap_uintILi7EEC1Ei(%class.ap_uint.3* %_l_k, i32 0)
  %245 = call %class.ap_uint.3* @_ZN7ap_uintILi7EEaSEi(%class.ap_uint.3* %_l_i, i32 0)
  br label %246

; <label>:246                                     ; preds = %454, %194
  %247 = bitcast %class.ap_uint.3* %19 to i8*
  %248 = bitcast %class.ap_uint.3* %_l_i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %247, i8* %248, i64 1, i32 1, i1 false)
  %249 = getelementptr %class.ap_uint.3* %19, i32 0, i32 0
  %250 = bitcast [1 x i8]* %249 to i8*
  %251 = load i8* %250, align 1
  %252 = call zeroext i1 @_ZleILi7EEb7ap_uintIXT_EEi(i8 %251, i32 0)
  br i1 %252, label %253, label %458

; <label>:253                                     ; preds = %246
  %254 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %buf_size, i32 3)
  %255 = getelementptr %class.ap_uint.0* %21, i32 0, i32 0
  %256 = bitcast [1 x i8]* %255 to i8*
  store i8 %254, i8* %256, align 1
  %257 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %21)
  %258 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf1, i32 0, i64 %257
  %259 = call i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_l_k, i32 7)
  %260 = getelementptr %class.ap_uint.3* %22, i32 0, i32 0
  %261 = bitcast [1 x i8]* %260 to i8*
  store i8 %259, i8* %261, align 1
  %262 = call i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %258, %class.ap_uint.3* %22, %class.ap_uint.3* %_l_k)
  %263 = load i64* %262
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %20, i64 %263)
  %264 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %buf_size, i32 2)
  %265 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %266 = bitcast [1 x i8]* %265 to i8*
  store i8 %264, i8* %266, align 1
  %267 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %24)
  %268 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf1, i32 0, i64 %267
  %269 = call i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_l_k, i32 7)
  %270 = getelementptr %class.ap_uint.3* %25, i32 0, i32 0
  %271 = bitcast [1 x i8]* %270 to i8*
  store i8 %269, i8* %271, align 1
  %272 = call i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %268, %class.ap_uint.3* %25, %class.ap_uint.3* %_l_k)
  %273 = load i64* %272
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %23, i64 %273)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %26, i32 0)
  %274 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %buf_size, i32 3)
  %275 = getelementptr %class.ap_uint.0* %28, i32 0, i32 0
  %276 = bitcast [1 x i8]* %275 to i8*
  store i8 %274, i8* %276, align 1
  %277 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %28)
  %278 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf2, i32 0, i64 %277
  %279 = call i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_l_k, i32 7)
  %280 = getelementptr %class.ap_uint.3* %29, i32 0, i32 0
  %281 = bitcast [1 x i8]* %280 to i8*
  store i8 %279, i8* %281, align 1
  %282 = call i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %278, %class.ap_uint.3* %29, %class.ap_uint.3* %_l_k)
  %283 = load i64* %282
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %27, i64 %283)
  %284 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %buf_size, i32 2)
  %285 = getelementptr %class.ap_uint.0* %31, i32 0, i32 0
  %286 = bitcast [1 x i8]* %285 to i8*
  store i8 %284, i8* %286, align 1
  %287 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %31)
  %288 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf2, i32 0, i64 %287
  %289 = call i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_l_k, i32 7)
  %290 = getelementptr %class.ap_uint.3* %32, i32 0, i32 0
  %291 = bitcast [1 x i8]* %290 to i8*
  store i8 %289, i8* %291, align 1
  %292 = call i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %288, %class.ap_uint.3* %32, %class.ap_uint.3* %_l_k)
  %293 = load i64* %292
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %30, i64 %293)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %33, i32 0)
  %294 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %buf_size, i32 3)
  %295 = getelementptr %class.ap_uint.0* %35, i32 0, i32 0
  %296 = bitcast [1 x i8]* %295 to i8*
  store i8 %294, i8* %296, align 1
  %297 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %35)
  %298 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf3, i32 0, i64 %297
  %299 = call i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_l_k, i32 7)
  %300 = getelementptr %class.ap_uint.3* %36, i32 0, i32 0
  %301 = bitcast [1 x i8]* %300 to i8*
  store i8 %299, i8* %301, align 1
  %302 = call i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %298, %class.ap_uint.3* %36, %class.ap_uint.3* %_l_k)
  %303 = load i64* %302
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %34, i64 %303)
  %304 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %buf_size, i32 2)
  %305 = getelementptr %class.ap_uint.0* %38, i32 0, i32 0
  %306 = bitcast [1 x i8]* %305 to i8*
  store i8 %304, i8* %306, align 1
  %307 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %38)
  %308 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf3, i32 0, i64 %307
  %309 = call i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_l_k, i32 7)
  %310 = getelementptr %class.ap_uint.3* %39, i32 0, i32 0
  %311 = bitcast [1 x i8]* %310 to i8*
  store i8 %309, i8* %311, align 1
  %312 = call i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %308, %class.ap_uint.3* %39, %class.ap_uint.3* %_l_k)
  %313 = load i64* %312
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %37, i64 %313)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %40, i32 0)
  %314 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %315 = bitcast [1 x i8]* %314 to i8*
  %316 = load i8* %315, align 1
  %317 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %318 = bitcast [1 x i8]* %317 to i8*
  %319 = load i8* %318, align 1
  %320 = getelementptr %class.ap_uint.0* %26, i32 0, i32 0
  %321 = bitcast [1 x i8]* %320 to i8*
  %322 = load i8* %321, align 1
  %323 = getelementptr %class.ap_uint.0* %27, i32 0, i32 0
  %324 = bitcast [1 x i8]* %323 to i8*
  %325 = load i8* %324, align 1
  %326 = getelementptr %class.ap_uint.0* %30, i32 0, i32 0
  %327 = bitcast [1 x i8]* %326 to i8*
  %328 = load i8* %327, align 1
  %329 = getelementptr %class.ap_uint.0* %33, i32 0, i32 0
  %330 = bitcast [1 x i8]* %329 to i8*
  %331 = load i8* %330, align 1
  %332 = getelementptr %class.ap_uint.0* %34, i32 0, i32 0
  %333 = bitcast [1 x i8]* %332 to i8*
  %334 = load i8* %333, align 1
  %335 = getelementptr %class.ap_uint.0* %37, i32 0, i32 0
  %336 = bitcast [1 x i8]* %335 to i8*
  %337 = load i8* %336, align 1
  %338 = getelementptr %class.ap_uint.0* %40, i32 0, i32 0
  %339 = bitcast [1 x i8]* %338 to i8*
  %340 = load i8* %339, align 1
  %341 = call i8 @_ZL162p_ZN2xf14xFGradientX3x3ILi0ELi0EEE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE_17ap_uintILi8EES0_S0_S0_S0_S0_S0_S0_S0_(i8 %316, i8 %319, i8 %322, i8 %325, i8 %328, i8 %331, i8 %334, i8 %337, i8 %340)
  %342 = getelementptr %class.ap_uint.0* %41, i32 0, i32 0
  %343 = bitcast [1 x i8]* %342 to i8*
  store i8 %341, i8* %343, align 1
  %344 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %41)
  %345 = getelementptr inbounds [1 x %class.ap_uint.0]* %GradientValuesX, i32 0, i64 0
  %346 = load i32* %q, align 4
  %347 = load i32* %STEP, align 4
  %348 = sub nsw i32 %347, 1
  %349 = add nsw i32 %346, %348
  %350 = load i32* %q, align 4
  %351 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %345, i32 %349, i32 %350)
  store i64 %344, i64* %351
  %352 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %buf_size, i32 3)
  %353 = getelementptr %class.ap_uint.0* %43, i32 0, i32 0
  %354 = bitcast [1 x i8]* %353 to i8*
  store i8 %352, i8* %354, align 1
  %355 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %43)
  %356 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf1, i32 0, i64 %355
  %357 = call i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_l_k, i32 7)
  %358 = getelementptr %class.ap_uint.3* %44, i32 0, i32 0
  %359 = bitcast [1 x i8]* %358 to i8*
  store i8 %357, i8* %359, align 1
  %360 = call i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %356, %class.ap_uint.3* %44, %class.ap_uint.3* %_l_k)
  %361 = load i64* %360
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %42, i64 %361)
  %362 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %buf_size, i32 2)
  %363 = getelementptr %class.ap_uint.0* %46, i32 0, i32 0
  %364 = bitcast [1 x i8]* %363 to i8*
  store i8 %362, i8* %364, align 1
  %365 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %46)
  %366 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf1, i32 0, i64 %365
  %367 = call i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_l_k, i32 7)
  %368 = getelementptr %class.ap_uint.3* %47, i32 0, i32 0
  %369 = bitcast [1 x i8]* %368 to i8*
  store i8 %367, i8* %369, align 1
  %370 = call i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %366, %class.ap_uint.3* %47, %class.ap_uint.3* %_l_k)
  %371 = load i64* %370
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %45, i64 %371)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %48, i32 0)
  %372 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %buf_size, i32 3)
  %373 = getelementptr %class.ap_uint.0* %50, i32 0, i32 0
  %374 = bitcast [1 x i8]* %373 to i8*
  store i8 %372, i8* %374, align 1
  %375 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %50)
  %376 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf2, i32 0, i64 %375
  %377 = call i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_l_k, i32 7)
  %378 = getelementptr %class.ap_uint.3* %51, i32 0, i32 0
  %379 = bitcast [1 x i8]* %378 to i8*
  store i8 %377, i8* %379, align 1
  %380 = call i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %376, %class.ap_uint.3* %51, %class.ap_uint.3* %_l_k)
  %381 = load i64* %380
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %49, i64 %381)
  %382 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %buf_size, i32 2)
  %383 = getelementptr %class.ap_uint.0* %53, i32 0, i32 0
  %384 = bitcast [1 x i8]* %383 to i8*
  store i8 %382, i8* %384, align 1
  %385 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %53)
  %386 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf2, i32 0, i64 %385
  %387 = call i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_l_k, i32 7)
  %388 = getelementptr %class.ap_uint.3* %54, i32 0, i32 0
  %389 = bitcast [1 x i8]* %388 to i8*
  store i8 %387, i8* %389, align 1
  %390 = call i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %386, %class.ap_uint.3* %54, %class.ap_uint.3* %_l_k)
  %391 = load i64* %390
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %52, i64 %391)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %55, i32 0)
  %392 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %buf_size, i32 3)
  %393 = getelementptr %class.ap_uint.0* %57, i32 0, i32 0
  %394 = bitcast [1 x i8]* %393 to i8*
  store i8 %392, i8* %394, align 1
  %395 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %57)
  %396 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf3, i32 0, i64 %395
  %397 = call i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_l_k, i32 7)
  %398 = getelementptr %class.ap_uint.3* %58, i32 0, i32 0
  %399 = bitcast [1 x i8]* %398 to i8*
  store i8 %397, i8* %399, align 1
  %400 = call i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %396, %class.ap_uint.3* %58, %class.ap_uint.3* %_l_k)
  %401 = load i64* %400
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %56, i64 %401)
  %402 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %buf_size, i32 2)
  %403 = getelementptr %class.ap_uint.0* %60, i32 0, i32 0
  %404 = bitcast [1 x i8]* %403 to i8*
  store i8 %402, i8* %404, align 1
  %405 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %60)
  %406 = getelementptr inbounds [3 x %class.ap_uint.0]* %src_buf3, i32 0, i64 %405
  %407 = call i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_l_k, i32 7)
  %408 = getelementptr %class.ap_uint.3* %61, i32 0, i32 0
  %409 = bitcast [1 x i8]* %408 to i8*
  store i8 %407, i8* %409, align 1
  %410 = call i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %406, %class.ap_uint.3* %61, %class.ap_uint.3* %_l_k)
  %411 = load i64* %410
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %59, i64 %411)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %62, i32 0)
  %412 = getelementptr %class.ap_uint.0* %42, i32 0, i32 0
  %413 = bitcast [1 x i8]* %412 to i8*
  %414 = load i8* %413, align 1
  %415 = getelementptr %class.ap_uint.0* %45, i32 0, i32 0
  %416 = bitcast [1 x i8]* %415 to i8*
  %417 = load i8* %416, align 1
  %418 = getelementptr %class.ap_uint.0* %48, i32 0, i32 0
  %419 = bitcast [1 x i8]* %418 to i8*
  %420 = load i8* %419, align 1
  %421 = getelementptr %class.ap_uint.0* %49, i32 0, i32 0
  %422 = bitcast [1 x i8]* %421 to i8*
  %423 = load i8* %422, align 1
  %424 = getelementptr %class.ap_uint.0* %52, i32 0, i32 0
  %425 = bitcast [1 x i8]* %424 to i8*
  %426 = load i8* %425, align 1
  %427 = getelementptr %class.ap_uint.0* %55, i32 0, i32 0
  %428 = bitcast [1 x i8]* %427 to i8*
  %429 = load i8* %428, align 1
  %430 = getelementptr %class.ap_uint.0* %56, i32 0, i32 0
  %431 = bitcast [1 x i8]* %430 to i8*
  %432 = load i8* %431, align 1
  %433 = getelementptr %class.ap_uint.0* %59, i32 0, i32 0
  %434 = bitcast [1 x i8]* %433 to i8*
  %435 = load i8* %434, align 1
  %436 = getelementptr %class.ap_uint.0* %62, i32 0, i32 0
  %437 = bitcast [1 x i8]* %436 to i8*
  %438 = load i8* %437, align 1
  %439 = call i8 @_ZL162p_ZN2xf14xFGradientY3x3ILi0ELi0EEE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE_17ap_uintILi8EES0_S0_S0_S0_S0_S0_S0_S0_(i8 %414, i8 %417, i8 %420, i8 %423, i8 %426, i8 %429, i8 %432, i8 %435, i8 %438)
  %440 = getelementptr %class.ap_uint.0* %63, i32 0, i32 0
  %441 = bitcast [1 x i8]* %440 to i8*
  store i8 %439, i8* %441, align 1
  %442 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %63)
  %443 = getelementptr inbounds [1 x %class.ap_uint.0]* %GradientValuesY, i32 0, i64 0
  %444 = load i32* %q, align 4
  %445 = load i32* %STEP, align 4
  %446 = sub nsw i32 %445, 1
  %447 = add nsw i32 %444, %446
  %448 = load i32* %q, align 4
  %449 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %443, i32 %447, i32 %448)
  store i64 %442, i64* %449
  %450 = load i32* %STEP, align 4
  %451 = load i32* %q, align 4
  %452 = add nsw i32 %451, %450
  store i32 %452, i32* %q, align 4
  %453 = call %class.ap_uint.3* @_ZpLILi7EER7ap_uintIXT_EES2_i(%class.ap_uint.3* %_l_k, i32 8)
  br label %454

; <label>:454                                     ; preds = %253
  %455 = call i8 @_ZN7ap_uintILi7EEppEv(%class.ap_uint.3* %_l_i)
  %456 = getelementptr %class.ap_uint.3* %64, i32 0, i32 0
  %457 = bitcast [1 x i8]* %456 to i8*
  store i8 %455, i8* %457, align 1
  br label %246

; <label>:458                                     ; preds = %246
  %459 = getelementptr inbounds [1 x %class.ap_uint.0]* %GradientValuesX, i32 0, i64 0
  call void @_ZL67p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1P7ap_uintILi8EERS0_tsRt(%class.ap_uint.0* %459, %class.ap_uint.0* %P0, i16 zeroext 0, i16 signext 1, i16* %shift_x)
  %460 = getelementptr inbounds [1 x %class.ap_uint.0]* %GradientValuesY, i32 0, i64 0
  call void @_ZL67p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1P7ap_uintILi8EERS0_tsRt(%class.ap_uint.0* %460, %class.ap_uint.0* %P1, i16 zeroext 0, i16 signext 1, i16* %shift_y)
  %461 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %462 = load i32* %write_index, align 4
  %463 = bitcast %class.ap_uint.0* %65 to i8*
  %464 = bitcast %class.ap_uint.0* %P0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %463, i8* %464, i64 1, i32 1, i1 false)
  %465 = getelementptr %class.ap_uint.0* %65, i32 0, i32 0
  %466 = bitcast [1 x i8]* %465 to i8*
  %467 = load i8* %466, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %461, i32 %462, i8 %467)
  %468 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %469 = load i32* %write_index, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %write_index, align 4
  %471 = bitcast %class.ap_uint.0* %66 to i8*
  %472 = bitcast %class.ap_uint.0* %P1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %471, i8* %472, i64 1, i32 1, i1 false)
  %473 = getelementptr %class.ap_uint.0* %66, i32 0, i32 0
  %474 = bitcast [1 x i8]* %473 to i8*
  %475 = load i8* %474, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %468, i32 %469, i8 %475)
  store i16 0, i16* %shift_x, align 2
  store i16 0, i16* %shift_y, align 2
  %476 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %P0, i32 0)
  %477 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %P1, i32 0)
  %478 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %row_ind, i32 0)
  %479 = getelementptr %class.ap_uint.1* %67, i32 0, i32 0
  %480 = bitcast [2 x i8]* %479 to i16*
  store i16 %478, i16* %480, align 1
  %481 = bitcast %class.ap_uint.1* %68 to i8*
  %482 = bitcast %class.ap_uint.1* %row_ind to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %481, i8* %482, i64 2, i32 1, i1 false)
  %483 = getelementptr %class.ap_uint.1* %68, i32 0, i32 0
  %484 = bitcast [2 x i8]* %483 to i16*
  %485 = load i16* %484, align 1
  %486 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %485, i32 3)
  br i1 %486, label %487, label %489

; <label>:487                                     ; preds = %458
  %488 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %row_ind, i32 0)
  br label %489

; <label>:489                                     ; preds = %487, %458
  br label %490

; <label>:490                                     ; preds = %489
  %491 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %row, i32 0)
  %492 = getelementptr %class.ap_uint.1* %69, i32 0, i32 0
  %493 = bitcast [2 x i8]* %492 to i16*
  store i16 %491, i16* %493, align 1
  br label %149

; <label>:494                                     ; preds = %149
  ret void
}

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1*)

declare void @_ZN7ap_uintILi2EEC1Ev(%class.ap_uint.2*)

declare void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0*, i32)

declare %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0*, i32)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16, i32)

declare zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16, i32)

declare %class.ap_uint.2* @_ZN7ap_uintILi2EEaSEi(%class.ap_uint.2*, i32)

define internal void @_ZL367p_ZN2xf15ProcessSobel3x3ILi0ELi0ELi256ELi256ELi1ELi0ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA256_7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EER7ap_uintILi8EEtt7ap_uintILi13EERtRt7ap_uintILi2EE7ap_uintILi2EE7ap_uintILi2EE7ap_uintILi13EERiRi_1R19xf_Mat_0_256_256_1_S0_S0_PA256_7ap_uintILi8EEPS2_S5_S5_S5_S5_RS2_S6_ttS1_ILi13EERtS8_S1_ILi2EES9_S9_S7_RiSA_(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_gradx_mat, %struct.xf_Mat_0_256_256_1_* %_grady_mat, [256 x %class.ap_uint.0]* %buf, %class.ap_uint.0* %src_buf1, %class.ap_uint.0* %src_buf2, %class.ap_uint.0* %src_buf3, %class.ap_uint.0* %GradientValuesX, %class.ap_uint.0* %GradientValuesY, %class.ap_uint.0* %P0, %class.ap_uint.0* %P1, i16 zeroext %img_width, i16 zeroext %img_height, i16 %row_ind.coerce, i16* %shift_x, i16* %shift_y, i8 %tp.coerce, i8 %mid.coerce, i8 %bottom.coerce, i16 %row.coerce, i32* %read_index, i32* %write_index) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %4 = alloca [256 x %class.ap_uint.0]*, align 8
  %5 = alloca %class.ap_uint.0*, align 8
  %6 = alloca %class.ap_uint.0*, align 8
  %7 = alloca %class.ap_uint.0*, align 8
  %8 = alloca %class.ap_uint.0*, align 8
  %9 = alloca %class.ap_uint.0*, align 8
  %10 = alloca %class.ap_uint.0*, align 8
  %11 = alloca %class.ap_uint.0*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %row_ind = alloca %class.ap_uint.1, align 2
  %14 = alloca i16*, align 8
  %15 = alloca i16*, align 8
  %tp = alloca %class.ap_uint.2, align 1
  %mid = alloca %class.ap_uint.2, align 1
  %bottom = alloca %class.ap_uint.2, align 1
  %row = alloca %class.ap_uint.1, align 2
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %buf0 = alloca %class.ap_uint.0, align 1
  %buf1 = alloca %class.ap_uint.0, align 1
  %buf2 = alloca %class.ap_uint.0, align 1
  %npc = alloca i16, align 2
  %buf_size = alloca %class.ap_uint.5, align 1
  %col = alloca %class.ap_uint.1, align 1
  %18 = alloca %class.ap_uint.1, align 1
  %19 = alloca %class.ap_uint.1, align 1
  %20 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.1, align 1
  %22 = alloca %class.ap_uint.0, align 1
  %23 = alloca %class.ap_uint.0, align 1
  %24 = alloca %class.ap_uint.5, align 1
  %25 = alloca %class.ap_uint.5, align 1
  %26 = alloca %class.ap_uint.5, align 1
  %27 = alloca %class.ap_uint.5, align 1
  %28 = alloca %class.ap_uint.5, align 1
  %29 = alloca %class.ap_uint.5, align 1
  %30 = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_gradx_mat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %_grady_mat, %struct.xf_Mat_0_256_256_1_** %3, align 8
  store [256 x %class.ap_uint.0]* %buf, [256 x %class.ap_uint.0]** %4, align 8
  store %class.ap_uint.0* %src_buf1, %class.ap_uint.0** %5, align 8
  store %class.ap_uint.0* %src_buf2, %class.ap_uint.0** %6, align 8
  store %class.ap_uint.0* %src_buf3, %class.ap_uint.0** %7, align 8
  store %class.ap_uint.0* %GradientValuesX, %class.ap_uint.0** %8, align 8
  store %class.ap_uint.0* %GradientValuesY, %class.ap_uint.0** %9, align 8
  store %class.ap_uint.0* %P0, %class.ap_uint.0** %10, align 8
  store %class.ap_uint.0* %P1, %class.ap_uint.0** %11, align 8
  store i16 %img_width, i16* %12, align 2
  store i16 %img_height, i16* %13, align 2
  %31 = getelementptr %class.ap_uint.1* %row_ind, i32 0, i32 0
  %32 = bitcast [2 x i8]* %31 to i16*
  store i16 %row_ind.coerce, i16* %32, align 1
  store i16* %shift_x, i16** %14, align 8
  store i16* %shift_y, i16** %15, align 8
  %33 = getelementptr %class.ap_uint.2* %tp, i32 0, i32 0
  %34 = bitcast [1 x i8]* %33 to i8*
  store i8 %tp.coerce, i8* %34, align 1
  %35 = getelementptr %class.ap_uint.2* %mid, i32 0, i32 0
  %36 = bitcast [1 x i8]* %35 to i8*
  store i8 %mid.coerce, i8* %36, align 1
  %37 = getelementptr %class.ap_uint.2* %bottom, i32 0, i32 0
  %38 = bitcast [1 x i8]* %37 to i8*
  store i8 %bottom.coerce, i8* %38, align 1
  %39 = getelementptr %class.ap_uint.1* %row, i32 0, i32 0
  %40 = bitcast [2 x i8]* %39 to i16*
  store i16 %row.coerce, i16* %40, align 1
  store i32* %read_index, i32** %16, align 8
  store i32* %write_index, i32** %17, align 8
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %buf0)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %buf1)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %buf2)
  store i16 1, i16* %npc, align 2
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.5* %buf_size, i32 3)
  br label %41

; <label>:41                                      ; preds = %0
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.1* %col, i32 0)
  br label %42

; <label>:42                                      ; preds = %246, %41
  %43 = bitcast %class.ap_uint.1* %18 to i8*
  %44 = bitcast %class.ap_uint.1* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 2, i32 1, i1 false)
  %45 = load i16* %12, align 2
  %46 = getelementptr %class.ap_uint.1* %18, i32 0, i32 0
  %47 = bitcast [2 x i8]* %46 to i16*
  %48 = load i16* %47, align 1
  %49 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %48, i16 zeroext %45)
  br i1 %49, label %50, label %250

; <label>:50                                      ; preds = %42
  %51 = bitcast %class.ap_uint.1* %19 to i8*
  %52 = bitcast %class.ap_uint.1* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 2, i32 1, i1 false)
  %53 = load i16* %13, align 2
  %54 = getelementptr %class.ap_uint.1* %19, i32 0, i32 0
  %55 = bitcast [2 x i8]* %54 to i16*
  %56 = load i16* %55, align 1
  %57 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %56, i16 zeroext %53)
  br i1 %57, label %58, label %72

; <label>:58                                      ; preds = %50
  %59 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %col)
  %60 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %row_ind)
  %61 = load [256 x %class.ap_uint.0]** %4, align 8
  %62 = getelementptr inbounds [256 x %class.ap_uint.0]* %61, i64 %60
  %63 = getelementptr inbounds [256 x %class.ap_uint.0]* %62, i32 0, i64 %59
  %64 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %65 = load i32** %16, align 8
  %66 = load i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %64, i32 %66)
  %69 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %70 = bitcast [1 x i8]* %69 to i8*
  store i8 %68, i8* %70, align 1
  %71 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %63, %class.ap_uint.0* %20)
  br label %79

; <label>:72                                      ; preds = %50
  %73 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %col)
  %74 = call i64 @_ZNK7ap_uintILi2EEcvmEv(%class.ap_uint.2* %bottom)
  %75 = load [256 x %class.ap_uint.0]** %4, align 8
  %76 = getelementptr inbounds [256 x %class.ap_uint.0]* %75, i64 %74
  %77 = getelementptr inbounds [256 x %class.ap_uint.0]* %76, i32 0, i64 %73
  %78 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %77, i32 0)
  br label %79

; <label>:79                                      ; preds = %72, %58
  %80 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %col)
  %81 = call i64 @_ZNK7ap_uintILi2EEcvmEv(%class.ap_uint.2* %tp)
  %82 = load [256 x %class.ap_uint.0]** %4, align 8
  %83 = getelementptr inbounds [256 x %class.ap_uint.0]* %82, i64 %81
  %84 = getelementptr inbounds [256 x %class.ap_uint.0]* %83, i32 0, i64 %80
  %85 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %buf0, %class.ap_uint.0* %84)
  %86 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %col)
  %87 = call i64 @_ZNK7ap_uintILi2EEcvmEv(%class.ap_uint.2* %mid)
  %88 = load [256 x %class.ap_uint.0]** %4, align 8
  %89 = getelementptr inbounds [256 x %class.ap_uint.0]* %88, i64 %87
  %90 = getelementptr inbounds [256 x %class.ap_uint.0]* %89, i32 0, i64 %86
  %91 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %buf1, %class.ap_uint.0* %90)
  %92 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %col)
  %93 = call i64 @_ZNK7ap_uintILi2EEcvmEv(%class.ap_uint.2* %bottom)
  %94 = load [256 x %class.ap_uint.0]** %4, align 8
  %95 = getelementptr inbounds [256 x %class.ap_uint.0]* %94, i64 %93
  %96 = getelementptr inbounds [256 x %class.ap_uint.0]* %95, i32 0, i64 %92
  %97 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %buf2, %class.ap_uint.0* %96)
  %98 = load %class.ap_uint.0** %5, align 8
  %99 = getelementptr inbounds %class.ap_uint.0* %98, i64 2
  %100 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %99, %class.ap_uint.0* %buf0)
  %101 = load %class.ap_uint.0** %6, align 8
  %102 = getelementptr inbounds %class.ap_uint.0* %101, i64 2
  %103 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %102, %class.ap_uint.0* %buf1)
  %104 = load %class.ap_uint.0** %7, align 8
  %105 = getelementptr inbounds %class.ap_uint.0* %104, i64 2
  %106 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %105, %class.ap_uint.0* %buf2)
  %107 = load %class.ap_uint.0** %8, align 8
  %108 = load %class.ap_uint.0** %9, align 8
  %109 = load %class.ap_uint.0** %5, align 8
  %110 = load %class.ap_uint.0** %6, align 8
  %111 = load %class.ap_uint.0** %7, align 8
  call void @_ZL115p_ZN2xf10xFSobel3x3ILi1ELi1ELi0ELi0EEEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EE_1P7ap_uintILi8EES1_S1_S1_S1_(%class.ap_uint.0* %107, %class.ap_uint.0* %108, %class.ap_uint.0* %109, %class.ap_uint.0* %110, %class.ap_uint.0* %111)
  %112 = bitcast %class.ap_uint.1* %21 to i8*
  %113 = bitcast %class.ap_uint.1* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 2, i32 1, i1 false)
  %114 = getelementptr %class.ap_uint.1* %21, i32 0, i32 0
  %115 = bitcast [2 x i8]* %114 to i16*
  %116 = load i16* %115, align 1
  %117 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %116, i32 0)
  br i1 %117, label %118, label %141

; <label>:118                                     ; preds = %79
  %119 = load i16** %14, align 8
  store i16 0, i16* %119, align 2
  %120 = load i16** %15, align 8
  store i16 0, i16* %120, align 2
  %121 = load %class.ap_uint.0** %10, align 8
  %122 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %121, i32 0)
  %123 = load %class.ap_uint.0** %11, align 8
  %124 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %123, i32 0)
  %125 = load %class.ap_uint.0** %8, align 8
  %126 = getelementptr inbounds %class.ap_uint.0* %125, i64 0
  %127 = load %class.ap_uint.0** %10, align 8
  %128 = load i16* %npc, align 2
  %129 = zext i16 %128 to i32
  %130 = sub nsw i32 %129, 1
  %131 = trunc i32 %130 to i16
  %132 = load i16** %14, align 8
  call void @_ZL67p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1P7ap_uintILi8EERS0_tsRt(%class.ap_uint.0* %126, %class.ap_uint.0* %127, i16 zeroext 1, i16 signext %131, i16* %132)
  %133 = load %class.ap_uint.0** %9, align 8
  %134 = getelementptr inbounds %class.ap_uint.0* %133, i64 0
  %135 = load %class.ap_uint.0** %11, align 8
  %136 = load i16* %npc, align 2
  %137 = zext i16 %136 to i32
  %138 = sub nsw i32 %137, 1
  %139 = trunc i32 %138 to i16
  %140 = load i16** %15, align 8
  call void @_ZL67p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1P7ap_uintILi8EERS0_tsRt(%class.ap_uint.0* %134, %class.ap_uint.0* %135, i16 zeroext 1, i16 signext %139, i16* %140)
  br label %191

; <label>:141                                     ; preds = %79
  %142 = load %class.ap_uint.0** %8, align 8
  %143 = getelementptr inbounds %class.ap_uint.0* %142, i64 0
  %144 = load %class.ap_uint.0** %10, align 8
  %145 = load i16** %14, align 8
  call void @_ZL67p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1P7ap_uintILi8EERS0_tsRt(%class.ap_uint.0* %143, %class.ap_uint.0* %144, i16 zeroext 0, i16 signext 1, i16* %145)
  %146 = load %class.ap_uint.0** %9, align 8
  %147 = getelementptr inbounds %class.ap_uint.0* %146, i64 0
  %148 = load %class.ap_uint.0** %11, align 8
  %149 = load i16** %15, align 8
  call void @_ZL67p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1P7ap_uintILi8EERS0_tsRt(%class.ap_uint.0* %147, %class.ap_uint.0* %148, i16 zeroext 0, i16 signext 1, i16* %149)
  %150 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %151 = load i32** %17, align 8
  %152 = load i32* %151, align 4
  %153 = load %class.ap_uint.0** %10, align 8
  %154 = bitcast %class.ap_uint.0* %22 to i8*
  %155 = bitcast %class.ap_uint.0* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %154, i8* %155, i64 1, i32 1, i1 false)
  %156 = getelementptr %class.ap_uint.0* %22, i32 0, i32 0
  %157 = bitcast [1 x i8]* %156 to i8*
  %158 = load i8* %157, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %150, i32 %152, i8 %158)
  %159 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %160 = load i32** %17, align 8
  %161 = load i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load %class.ap_uint.0** %11, align 8
  %164 = bitcast %class.ap_uint.0* %23 to i8*
  %165 = bitcast %class.ap_uint.0* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* %165, i64 1, i32 1, i1 false)
  %166 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %167 = bitcast [1 x i8]* %166 to i8*
  %168 = load i8* %167, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %159, i32 %161, i8 %168)
  %169 = load i16** %14, align 8
  store i16 0, i16* %169, align 2
  %170 = load i16** %15, align 8
  store i16 0, i16* %170, align 2
  %171 = load %class.ap_uint.0** %10, align 8
  %172 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %171, i32 0)
  %173 = load %class.ap_uint.0** %11, align 8
  %174 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %173, i32 0)
  %175 = load %class.ap_uint.0** %8, align 8
  %176 = getelementptr inbounds %class.ap_uint.0* %175, i64 0
  %177 = load %class.ap_uint.0** %10, align 8
  %178 = load i16* %npc, align 2
  %179 = zext i16 %178 to i32
  %180 = sub nsw i32 %179, 1
  %181 = trunc i32 %180 to i16
  %182 = load i16** %14, align 8
  call void @_ZL67p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1P7ap_uintILi8EERS0_tsRt(%class.ap_uint.0* %176, %class.ap_uint.0* %177, i16 zeroext 1, i16 signext %181, i16* %182)
  %183 = load %class.ap_uint.0** %9, align 8
  %184 = getelementptr inbounds %class.ap_uint.0* %183, i64 0
  %185 = load %class.ap_uint.0** %11, align 8
  %186 = load i16* %npc, align 2
  %187 = zext i16 %186 to i32
  %188 = sub nsw i32 %187, 1
  %189 = trunc i32 %188 to i16
  %190 = load i16** %15, align 8
  call void @_ZL67p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1P7ap_uintILi8EERS0_tsRt(%class.ap_uint.0* %184, %class.ap_uint.0* %185, i16 zeroext 1, i16 signext %189, i16* %190)
  br label %191

; <label>:191                                     ; preds = %141, %118
  %192 = load %class.ap_uint.0** %5, align 8
  %193 = getelementptr inbounds %class.ap_uint.0* %192, i64 0
  %194 = call i8 @_ZmiILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %buf_size, i32 2)
  %195 = getelementptr %class.ap_uint.5* %24, i32 0, i32 0
  %196 = bitcast [1 x i8]* %195 to i8*
  store i8 %194, i8* %196, align 1
  %197 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %24)
  %198 = load %class.ap_uint.0** %5, align 8
  %199 = getelementptr inbounds %class.ap_uint.0* %198, i64 %197
  %200 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %193, %class.ap_uint.0* %199)
  %201 = load %class.ap_uint.0** %5, align 8
  %202 = getelementptr inbounds %class.ap_uint.0* %201, i64 1
  %203 = call i8 @_ZmiILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %buf_size, i32 1)
  %204 = getelementptr %class.ap_uint.5* %25, i32 0, i32 0
  %205 = bitcast [1 x i8]* %204 to i8*
  store i8 %203, i8* %205, align 1
  %206 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %25)
  %207 = load %class.ap_uint.0** %5, align 8
  %208 = getelementptr inbounds %class.ap_uint.0* %207, i64 %206
  %209 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %202, %class.ap_uint.0* %208)
  %210 = load %class.ap_uint.0** %6, align 8
  %211 = getelementptr inbounds %class.ap_uint.0* %210, i64 0
  %212 = call i8 @_ZmiILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %buf_size, i32 2)
  %213 = getelementptr %class.ap_uint.5* %26, i32 0, i32 0
  %214 = bitcast [1 x i8]* %213 to i8*
  store i8 %212, i8* %214, align 1
  %215 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %26)
  %216 = load %class.ap_uint.0** %6, align 8
  %217 = getelementptr inbounds %class.ap_uint.0* %216, i64 %215
  %218 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %211, %class.ap_uint.0* %217)
  %219 = load %class.ap_uint.0** %6, align 8
  %220 = getelementptr inbounds %class.ap_uint.0* %219, i64 1
  %221 = call i8 @_ZmiILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %buf_size, i32 1)
  %222 = getelementptr %class.ap_uint.5* %27, i32 0, i32 0
  %223 = bitcast [1 x i8]* %222 to i8*
  store i8 %221, i8* %223, align 1
  %224 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %27)
  %225 = load %class.ap_uint.0** %6, align 8
  %226 = getelementptr inbounds %class.ap_uint.0* %225, i64 %224
  %227 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %220, %class.ap_uint.0* %226)
  %228 = load %class.ap_uint.0** %7, align 8
  %229 = getelementptr inbounds %class.ap_uint.0* %228, i64 0
  %230 = call i8 @_ZmiILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %buf_size, i32 2)
  %231 = getelementptr %class.ap_uint.5* %28, i32 0, i32 0
  %232 = bitcast [1 x i8]* %231 to i8*
  store i8 %230, i8* %232, align 1
  %233 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %28)
  %234 = load %class.ap_uint.0** %7, align 8
  %235 = getelementptr inbounds %class.ap_uint.0* %234, i64 %233
  %236 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %229, %class.ap_uint.0* %235)
  %237 = load %class.ap_uint.0** %7, align 8
  %238 = getelementptr inbounds %class.ap_uint.0* %237, i64 1
  %239 = call i8 @_ZmiILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %buf_size, i32 1)
  %240 = getelementptr %class.ap_uint.5* %29, i32 0, i32 0
  %241 = bitcast [1 x i8]* %240 to i8*
  store i8 %239, i8* %241, align 1
  %242 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %29)
  %243 = load %class.ap_uint.0** %7, align 8
  %244 = getelementptr inbounds %class.ap_uint.0* %243, i64 %242
  %245 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %238, %class.ap_uint.0* %244)
  br label %246

; <label>:246                                     ; preds = %191
  %247 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %col, i32 0)
  %248 = getelementptr %class.ap_uint.1* %30, i32 0, i32 0
  %249 = bitcast [2 x i8]* %248 to i16*
  store i16 %247, i16* %249, align 1
  br label %42

; <label>:250                                     ; preds = %42
  ret void
}

declare void @_ZN7ap_uintILi7EEC1Ei(%class.ap_uint.3*, i32)

declare %class.ap_uint.3* @_ZN7ap_uintILi7EEaSEi(%class.ap_uint.3*, i32)

declare zeroext i1 @_ZleILi7EEb7ap_uintIXT_EEi(i8, i32)

define internal i8 @_ZL162p_ZN2xf14xFGradientX3x3ILi0ELi0EEE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE_17ap_uintILi8EES0_S0_S0_S0_S0_S0_S0_S0_(i8 %t0.coerce, i8 %t1.coerce, i8 %t2.coerce, i8 %m0.coerce, i8 %m1.coerce, i8 %m2.coerce, i8 %b0.coerce, i8 %b1.coerce, i8 %b2.coerce) uwtable {
  %1 = alloca %class.ap_uint.0, align 1
  %t0 = alloca %class.ap_uint.0, align 1
  %t1 = alloca %class.ap_uint.0, align 1
  %t2 = alloca %class.ap_uint.0, align 1
  %m0 = alloca %class.ap_uint.0, align 1
  %m1 = alloca %class.ap_uint.0, align 1
  %m2 = alloca %class.ap_uint.0, align 1
  %b0 = alloca %class.ap_uint.0, align 1
  %b1 = alloca %class.ap_uint.0, align 1
  %b2 = alloca %class.ap_uint.0, align 1
  %M00 = alloca i16, align 2
  %M01 = alloca i16, align 2
  %A00 = alloca i16, align 2
  %2 = alloca %class.ap_uint.0, align 1
  %3 = alloca %class.ap_uint.0, align 1
  %4 = alloca %class.ap_int.4, align 1
  %S00 = alloca i16, align 2
  %5 = alloca %class.ap_uint.0, align 1
  %6 = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_int.4, align 1
  %out_pix = alloca i16, align 2
  %8 = alloca %class.ap_uint.0, align 1
  %9 = getelementptr %class.ap_uint.0* %t0, i32 0, i32 0
  %10 = bitcast [1 x i8]* %9 to i8*
  store i8 %t0.coerce, i8* %10, align 1
  %11 = getelementptr %class.ap_uint.0* %t1, i32 0, i32 0
  %12 = bitcast [1 x i8]* %11 to i8*
  store i8 %t1.coerce, i8* %12, align 1
  %13 = getelementptr %class.ap_uint.0* %t2, i32 0, i32 0
  %14 = bitcast [1 x i8]* %13 to i8*
  store i8 %t2.coerce, i8* %14, align 1
  %15 = getelementptr %class.ap_uint.0* %m0, i32 0, i32 0
  %16 = bitcast [1 x i8]* %15 to i8*
  store i8 %m0.coerce, i8* %16, align 1
  %17 = getelementptr %class.ap_uint.0* %m1, i32 0, i32 0
  %18 = bitcast [1 x i8]* %17 to i8*
  store i8 %m1.coerce, i8* %18, align 1
  %19 = getelementptr %class.ap_uint.0* %m2, i32 0, i32 0
  %20 = bitcast [1 x i8]* %19 to i8*
  store i8 %m2.coerce, i8* %20, align 1
  %21 = getelementptr %class.ap_uint.0* %b0, i32 0, i32 0
  %22 = bitcast [1 x i8]* %21 to i8*
  store i8 %b0.coerce, i8* %22, align 1
  %23 = getelementptr %class.ap_uint.0* %b1, i32 0, i32 0
  %24 = bitcast [1 x i8]* %23 to i8*
  store i8 %b1.coerce, i8* %24, align 1
  %25 = getelementptr %class.ap_uint.0* %b2, i32 0, i32 0
  %26 = bitcast [1 x i8]* %25 to i8*
  store i8 %b2.coerce, i8* %26, align 1
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %1, i32 0)
  %27 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %m0)
  %28 = trunc i64 %27 to i16
  %29 = sext i16 %28 to i32
  %30 = shl i32 %29, 1
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %M00, align 2
  %32 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %m2)
  %33 = trunc i64 %32 to i16
  %34 = sext i16 %33 to i32
  %35 = shl i32 %34, 1
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %M01, align 2
  %37 = bitcast %class.ap_uint.0* %2 to i8*
  %38 = bitcast %class.ap_uint.0* %t2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 1, i32 1, i1 false)
  %39 = bitcast %class.ap_uint.0* %3 to i8*
  %40 = bitcast %class.ap_uint.0* %b2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 1, i32 1, i1 false)
  %41 = getelementptr %class.ap_uint.0* %2, i32 0, i32 0
  %42 = bitcast [1 x i8]* %41 to i8*
  %43 = load i8* %42, align 1
  %44 = getelementptr %class.ap_uint.0* %3, i32 0, i32 0
  %45 = bitcast [1 x i8]* %44 to i8*
  %46 = load i8* %45, align 1
  %47 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %43, i8 %46)
  %48 = getelementptr %class.ap_int.4* %4, i32 0, i32 0
  %49 = bitcast [2 x i8]* %48 to i16*
  store i16 %47, i16* %49, align 1
  %50 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %4)
  %51 = trunc i64 %50 to i16
  store i16 %51, i16* %A00, align 2
  %52 = bitcast %class.ap_uint.0* %5 to i8*
  %53 = bitcast %class.ap_uint.0* %t0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 1, i32 1, i1 false)
  %54 = bitcast %class.ap_uint.0* %6 to i8*
  %55 = bitcast %class.ap_uint.0* %b0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 1, i32 1, i1 false)
  %56 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %57 = bitcast [1 x i8]* %56 to i8*
  %58 = load i8* %57, align 1
  %59 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %60 = bitcast [1 x i8]* %59 to i8*
  %61 = load i8* %60, align 1
  %62 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %58, i8 %61)
  %63 = getelementptr %class.ap_int.4* %7, i32 0, i32 0
  %64 = bitcast [2 x i8]* %63 to i16*
  store i16 %62, i16* %64, align 1
  %65 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %7)
  %66 = trunc i64 %65 to i16
  store i16 %66, i16* %S00, align 2
  %67 = load i16* %M01, align 2
  %68 = sext i16 %67 to i32
  %69 = load i16* %M00, align 2
  %70 = sext i16 %69 to i32
  %71 = sub nsw i32 %68, %70
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %out_pix, align 2
  %73 = load i16* %out_pix, align 2
  %74 = sext i16 %73 to i32
  %75 = load i16* %A00, align 2
  %76 = sext i16 %75 to i32
  %77 = add nsw i32 %74, %76
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %out_pix, align 2
  %79 = load i16* %out_pix, align 2
  %80 = sext i16 %79 to i32
  %81 = load i16* %S00, align 2
  %82 = sext i16 %81 to i32
  %83 = sub nsw i32 %80, %82
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %out_pix, align 2
  %85 = load i16* %out_pix, align 2
  call void @_ZN7ap_uintILi8EEC1Es(%class.ap_uint.0* %8, i16 signext %85)
  %86 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %1, %class.ap_uint.0* %8)
  %87 = load i16* %out_pix, align 2
  %88 = sext i16 %87 to i32
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

; <label>:90                                      ; preds = %0
  %91 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %1, i32 0)
  br label %99

; <label>:92                                      ; preds = %0
  %93 = load i16* %out_pix, align 2
  %94 = sext i16 %93 to i32
  %95 = icmp sgt i32 %94, 255
  br i1 %95, label %96, label %98

; <label>:96                                      ; preds = %92
  %97 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %1, i32 255)
  br label %98

; <label>:98                                      ; preds = %96, %92
  br label %99

; <label>:99                                      ; preds = %98, %90
  %100 = getelementptr %class.ap_uint.0* %1, i32 0, i32 0
  %101 = bitcast [1 x i8]* %100 to i8*
  %102 = load i8* %101, align 1
  ret i8 %102
}

declare void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0*, i64)

declare i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0*, i32)

declare i64* @_ZN7ap_uintILi8EE5rangeILi7ELi7EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0*, %class.ap_uint.3*, %class.ap_uint.3*)

declare i8 @_ZplILi7EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3*, i32)

define internal i8 @_ZL162p_ZN2xf14xFGradientY3x3ILi0ELi0EEE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE_17ap_uintILi8EES0_S0_S0_S0_S0_S0_S0_S0_(i8 %t0.coerce, i8 %t1.coerce, i8 %t2.coerce, i8 %m0.coerce, i8 %m1.coerce, i8 %m2.coerce, i8 %b0.coerce, i8 %b1.coerce, i8 %b2.coerce) uwtable {
  %1 = alloca %class.ap_uint.0, align 1
  %t0 = alloca %class.ap_uint.0, align 1
  %t1 = alloca %class.ap_uint.0, align 1
  %t2 = alloca %class.ap_uint.0, align 1
  %m0 = alloca %class.ap_uint.0, align 1
  %m1 = alloca %class.ap_uint.0, align 1
  %m2 = alloca %class.ap_uint.0, align 1
  %b0 = alloca %class.ap_uint.0, align 1
  %b1 = alloca %class.ap_uint.0, align 1
  %b2 = alloca %class.ap_uint.0, align 1
  %M00 = alloca i16, align 2
  %M01 = alloca i16, align 2
  %A00 = alloca i16, align 2
  %2 = alloca %class.ap_uint.0, align 1
  %3 = alloca %class.ap_uint.0, align 1
  %4 = alloca %class.ap_int.4, align 1
  %S00 = alloca i16, align 2
  %5 = alloca %class.ap_uint.0, align 1
  %6 = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_int.4, align 1
  %out_pix = alloca i16, align 2
  %8 = alloca %class.ap_uint.0, align 1
  %9 = getelementptr %class.ap_uint.0* %t0, i32 0, i32 0
  %10 = bitcast [1 x i8]* %9 to i8*
  store i8 %t0.coerce, i8* %10, align 1
  %11 = getelementptr %class.ap_uint.0* %t1, i32 0, i32 0
  %12 = bitcast [1 x i8]* %11 to i8*
  store i8 %t1.coerce, i8* %12, align 1
  %13 = getelementptr %class.ap_uint.0* %t2, i32 0, i32 0
  %14 = bitcast [1 x i8]* %13 to i8*
  store i8 %t2.coerce, i8* %14, align 1
  %15 = getelementptr %class.ap_uint.0* %m0, i32 0, i32 0
  %16 = bitcast [1 x i8]* %15 to i8*
  store i8 %m0.coerce, i8* %16, align 1
  %17 = getelementptr %class.ap_uint.0* %m1, i32 0, i32 0
  %18 = bitcast [1 x i8]* %17 to i8*
  store i8 %m1.coerce, i8* %18, align 1
  %19 = getelementptr %class.ap_uint.0* %m2, i32 0, i32 0
  %20 = bitcast [1 x i8]* %19 to i8*
  store i8 %m2.coerce, i8* %20, align 1
  %21 = getelementptr %class.ap_uint.0* %b0, i32 0, i32 0
  %22 = bitcast [1 x i8]* %21 to i8*
  store i8 %b0.coerce, i8* %22, align 1
  %23 = getelementptr %class.ap_uint.0* %b1, i32 0, i32 0
  %24 = bitcast [1 x i8]* %23 to i8*
  store i8 %b1.coerce, i8* %24, align 1
  %25 = getelementptr %class.ap_uint.0* %b2, i32 0, i32 0
  %26 = bitcast [1 x i8]* %25 to i8*
  store i8 %b2.coerce, i8* %26, align 1
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %1, i32 0)
  %27 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %t1)
  %28 = trunc i64 %27 to i16
  %29 = sext i16 %28 to i32
  %30 = shl i32 %29, 1
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %M00, align 2
  %32 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %b1)
  %33 = trunc i64 %32 to i16
  %34 = sext i16 %33 to i32
  %35 = shl i32 %34, 1
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %M01, align 2
  %37 = bitcast %class.ap_uint.0* %2 to i8*
  %38 = bitcast %class.ap_uint.0* %b0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 1, i32 1, i1 false)
  %39 = bitcast %class.ap_uint.0* %3 to i8*
  %40 = bitcast %class.ap_uint.0* %b2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 1, i32 1, i1 false)
  %41 = getelementptr %class.ap_uint.0* %2, i32 0, i32 0
  %42 = bitcast [1 x i8]* %41 to i8*
  %43 = load i8* %42, align 1
  %44 = getelementptr %class.ap_uint.0* %3, i32 0, i32 0
  %45 = bitcast [1 x i8]* %44 to i8*
  %46 = load i8* %45, align 1
  %47 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %43, i8 %46)
  %48 = getelementptr %class.ap_int.4* %4, i32 0, i32 0
  %49 = bitcast [2 x i8]* %48 to i16*
  store i16 %47, i16* %49, align 1
  %50 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %4)
  %51 = trunc i64 %50 to i16
  store i16 %51, i16* %A00, align 2
  %52 = bitcast %class.ap_uint.0* %5 to i8*
  %53 = bitcast %class.ap_uint.0* %t0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 1, i32 1, i1 false)
  %54 = bitcast %class.ap_uint.0* %6 to i8*
  %55 = bitcast %class.ap_uint.0* %t2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 1, i32 1, i1 false)
  %56 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %57 = bitcast [1 x i8]* %56 to i8*
  %58 = load i8* %57, align 1
  %59 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %60 = bitcast [1 x i8]* %59 to i8*
  %61 = load i8* %60, align 1
  %62 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %58, i8 %61)
  %63 = getelementptr %class.ap_int.4* %7, i32 0, i32 0
  %64 = bitcast [2 x i8]* %63 to i16*
  store i16 %62, i16* %64, align 1
  %65 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %7)
  %66 = trunc i64 %65 to i16
  store i16 %66, i16* %S00, align 2
  %67 = load i16* %M01, align 2
  %68 = sext i16 %67 to i32
  %69 = load i16* %M00, align 2
  %70 = sext i16 %69 to i32
  %71 = sub nsw i32 %68, %70
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %out_pix, align 2
  %73 = load i16* %out_pix, align 2
  %74 = sext i16 %73 to i32
  %75 = load i16* %A00, align 2
  %76 = sext i16 %75 to i32
  %77 = add nsw i32 %74, %76
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %out_pix, align 2
  %79 = load i16* %out_pix, align 2
  %80 = sext i16 %79 to i32
  %81 = load i16* %S00, align 2
  %82 = sext i16 %81 to i32
  %83 = sub nsw i32 %80, %82
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %out_pix, align 2
  %85 = load i16* %out_pix, align 2
  call void @_ZN7ap_uintILi8EEC1Es(%class.ap_uint.0* %8, i16 signext %85)
  %86 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %1, %class.ap_uint.0* %8)
  %87 = load i16* %out_pix, align 2
  %88 = sext i16 %87 to i32
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

; <label>:90                                      ; preds = %0
  %91 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %1, i32 0)
  br label %99

; <label>:92                                      ; preds = %0
  %93 = load i16* %out_pix, align 2
  %94 = sext i16 %93 to i32
  %95 = icmp sgt i32 %94, 255
  br i1 %95, label %96, label %98

; <label>:96                                      ; preds = %92
  %97 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %1, i32 255)
  br label %98

; <label>:98                                      ; preds = %96, %92
  br label %99

; <label>:99                                      ; preds = %98, %90
  %100 = getelementptr %class.ap_uint.0* %1, i32 0, i32 0
  %101 = bitcast [1 x i8]* %100 to i8*
  %102 = load i8* %101, align 1
  ret i8 %102
}

declare %class.ap_uint.3* @_ZpLILi7EER7ap_uintIXT_EES2_i(%class.ap_uint.3*, i32)

declare i8 @_ZN7ap_uintILi7EEppEv(%class.ap_uint.3*)

define internal void @_ZL67p_Z12xfPackPixelsILi1ELi1ELi0EEP7ap_uintILi8EER7ap_uintILi8EEtsRt_1P7ap_uintILi8EERS0_tsRt(%class.ap_uint.0* %tmp_buf, %class.ap_uint.0* %val, i16 zeroext %pos, i16 signext %loopIter, i16* %shift) uwtable {
  %1 = alloca %class.ap_uint.0*, align 8
  %2 = alloca %class.ap_uint.0*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16*, align 8
  %STEP = alloca %class.ap_uint.0, align 1
  %i = alloca %class.ap_int, align 1
  %6 = alloca %class.ap_int, align 1
  %tmp = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_int.4, align 1
  %8 = alloca %class.ap_uint.0, align 1
  %9 = alloca %class.ap_uint.0, align 1
  %10 = alloca %class.ap_uint.0, align 1
  %11 = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_int, align 1
  store %class.ap_uint.0* %tmp_buf, %class.ap_uint.0** %1, align 8
  store %class.ap_uint.0* %val, %class.ap_uint.0** %2, align 8
  store i16 %pos, i16* %3, align 2
  store i16 %loopIter, i16* %4, align 2
  store i16* %shift, i16** %5, align 8
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %STEP, i32 8)
  call void @_ZN6ap_intILi9EEC1Ei(%class.ap_int* %i, i32 0)
  br label %13

; <label>:13                                      ; preds = %61, %0
  %14 = bitcast %class.ap_int* %6 to i8*
  %15 = bitcast %class.ap_int* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 2, i32 1, i1 false)
  %16 = load i16* %4, align 2
  %17 = getelementptr %class.ap_int* %6, i32 0, i32 0
  %18 = bitcast [2 x i8]* %17 to i16*
  %19 = load i16* %18, align 1
  %20 = call zeroext i1 @_ZltILi9EEb6ap_intIXT_EEs(i16 %19, i16 signext %16)
  br i1 %20, label %21, label %65

; <label>:21                                      ; preds = %13
  %22 = load i16* %3, align 2
  %23 = zext i16 %22 to i64
  %24 = load %class.ap_uint.0** %1, align 8
  %25 = getelementptr inbounds %class.ap_uint.0* %24, i64 %23
  %26 = bitcast %class.ap_uint.0* %tmp to i8*
  %27 = bitcast %class.ap_uint.0* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 1, i32 1, i1 false)
  %28 = load %class.ap_uint.0** %2, align 8
  %29 = load %class.ap_uint.0** %2, align 8
  %30 = bitcast %class.ap_uint.0* %8 to i8*
  %31 = bitcast %class.ap_uint.0* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 1, i32 1, i1 false)
  %32 = bitcast %class.ap_uint.0* %10 to i8*
  %33 = bitcast %class.ap_uint.0* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 1, i32 1, i1 false)
  %34 = load i16** %5, align 8
  %35 = load i16* %34, align 2
  %36 = call i8 @_ZmlILi8EE7ap_uintIXT_EEtRKS1_(i16 zeroext %35, %class.ap_uint.0* %STEP)
  %37 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %38 = bitcast [1 x i8]* %37 to i8*
  store i8 %36, i8* %38, align 1
  %39 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %11)
  %40 = getelementptr %class.ap_uint.0* %10, i32 0, i32 0
  %41 = bitcast [1 x i8]* %40 to i8*
  %42 = load i8* %41, align 1
  %43 = call i8 @_ZlsILi8EE7ap_uintIXT_EES1_m(i8 %42, i64 %39)
  %44 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %45 = bitcast [1 x i8]* %44 to i8*
  store i8 %43, i8* %45, align 1
  %46 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %47 = bitcast [1 x i8]* %46 to i8*
  %48 = load i8* %47, align 1
  %49 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %50 = bitcast [1 x i8]* %49 to i8*
  %51 = load i8* %50, align 1
  %52 = call i16 @_ZorILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %48, i8 %51)
  %53 = getelementptr %class.ap_int.4* %7, i32 0, i32 0
  %54 = bitcast [2 x i8]* %53 to i16*
  store i16 %52, i16* %54, align 1
  %55 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSILi16EEERS0_RK6ap_intIXT_EE(%class.ap_uint.0* %28, %class.ap_int.4* %7)
  %56 = load i16* %3, align 2
  %57 = add i16 %56, 1
  store i16 %57, i16* %3, align 2
  %58 = load i16** %5, align 8
  %59 = load i16* %58, align 2
  %60 = add i16 %59, 1
  store i16 %60, i16* %58, align 2
  br label %61

; <label>:61                                      ; preds = %21
  %62 = call i16 @_ZN6ap_intILi9EEppEi(%class.ap_int* %i, i32 0)
  %63 = getelementptr %class.ap_int* %12, i32 0, i32 0
  %64 = bitcast [2 x i8]* %63 to i16*
  store i16 %62, i16* %64, align 1
  br label %13

; <label>:65                                      ; preds = %13
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

declare void @_ZN6ap_intILi9EEC1Ei(%class.ap_int*, i32)

declare zeroext i1 @_ZltILi9EEb6ap_intIXT_EEs(i16, i16 signext)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSILi16EEERS0_RK6ap_intIXT_EE(%class.ap_uint.0*, %class.ap_int.4*)

declare i16 @_ZorILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8, i8)

declare i8 @_ZlsILi8EE7ap_uintIXT_EES1_m(i8, i64)

declare i8 @_ZmlILi8EE7ap_uintIXT_EEtRKS1_(i16 zeroext, %class.ap_uint.0*)

declare i16 @_ZN6ap_intILi9EEppEi(%class.ap_int*, i32)

declare i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8, i8)

declare i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4*)

declare void @_ZN7ap_uintILi8EEC1Es(%class.ap_uint.0*, i16 signext)

declare void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.5*, i32)

declare void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.1*, i32)

declare i64 @_ZNK7ap_uintILi2EEcvmEv(%class.ap_uint.2*)

define internal void @_ZL115p_ZN2xf10xFSobel3x3ILi1ELi1ELi0ELi0EEEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EEP7ap_uintILi8EE_1P7ap_uintILi8EES1_S1_S1_S1_(%class.ap_uint.0* %GradientvaluesX, %class.ap_uint.0* %GradientvaluesY, %class.ap_uint.0* %src_buf1, %class.ap_uint.0* %src_buf2, %class.ap_uint.0* %src_buf3) uwtable {
  %1 = alloca %class.ap_uint.0*, align 8
  %2 = alloca %class.ap_uint.0*, align 8
  %3 = alloca %class.ap_uint.0*, align 8
  %4 = alloca %class.ap_uint.0*, align 8
  %5 = alloca %class.ap_uint.0*, align 8
  %STEP = alloca i32, align 4
  %_s_j = alloca i32, align 4
  %_l_j = alloca i8, align 1
  %p = alloca i32, align 4
  %_s_c = alloca i32, align 4
  %_s_k = alloca i32, align 4
  %_l_c = alloca i8, align 1
  %_l_k = alloca i8, align 1
  %6 = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint.0, align 1
  %9 = alloca %class.ap_uint.0, align 1
  %10 = alloca %class.ap_uint.0, align 1
  %11 = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.0, align 1
  %13 = alloca %class.ap_uint.0, align 1
  %14 = alloca %class.ap_uint.0, align 1
  %15 = alloca %class.ap_uint.0, align 1
  %16 = alloca %class.ap_uint.0, align 1
  %17 = alloca %class.ap_uint.0, align 1
  %18 = alloca %class.ap_uint.0, align 1
  %19 = alloca %class.ap_uint.0, align 1
  %20 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.0, align 1
  %22 = alloca %class.ap_uint.0, align 1
  %23 = alloca %class.ap_uint.0, align 1
  %24 = alloca %class.ap_uint.0, align 1
  %25 = alloca %class.ap_uint.0, align 1
  store %class.ap_uint.0* %GradientvaluesX, %class.ap_uint.0** %1, align 8
  store %class.ap_uint.0* %GradientvaluesY, %class.ap_uint.0** %2, align 8
  store %class.ap_uint.0* %src_buf1, %class.ap_uint.0** %3, align 8
  store %class.ap_uint.0* %src_buf2, %class.ap_uint.0** %4, align 8
  store %class.ap_uint.0* %src_buf3, %class.ap_uint.0** %5, align 8
  store i32 8, i32* %STEP, align 4
  store i32 0, i32* %_s_j, align 4
  store i8 0, i8* %_l_j, align 1
  br label %26

; <label>:26                                      ; preds = %0
  store i32 0, i32* %_s_j, align 4
  br label %27

; <label>:27                                      ; preds = %300, %26
  %28 = load i32* %_s_j, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %303

; <label>:30                                      ; preds = %27
  store i32 0, i32* %p, align 4
  store i32 0, i32* %_s_c, align 4
  store i32 0, i32* %_s_k, align 4
  store i8 0, i8* %_l_c, align 1
  store i8 0, i8* %_l_k, align 1
  store i32 0, i32* %_s_c, align 4
  br label %31

; <label>:31                                      ; preds = %296, %30
  %32 = load i32* %_s_c, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %299

; <label>:34                                      ; preds = %31
  %35 = load i32* %_s_j, align 4
  %36 = sext i32 %35 to i64
  %37 = load %class.ap_uint.0** %3, align 8
  %38 = getelementptr inbounds %class.ap_uint.0* %37, i64 %36
  %39 = load i32* %_s_k, align 4
  %40 = add nsw i32 %39, 7
  %41 = load i32* %_s_k, align 4
  %42 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %38, i32 %40, i32 %41)
  %43 = load i64* %42
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %6, i64 %43)
  %44 = load i32* %_s_j, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = load %class.ap_uint.0** %3, align 8
  %48 = getelementptr inbounds %class.ap_uint.0* %47, i64 %46
  %49 = load i32* %_s_k, align 4
  %50 = add nsw i32 %49, 7
  %51 = load i32* %_s_k, align 4
  %52 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %48, i32 %50, i32 %51)
  %53 = load i64* %52
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %7, i64 %53)
  %54 = load i32* %_s_j, align 4
  %55 = add nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = load %class.ap_uint.0** %3, align 8
  %58 = getelementptr inbounds %class.ap_uint.0* %57, i64 %56
  %59 = load i32* %_s_k, align 4
  %60 = add nsw i32 %59, 7
  %61 = load i32* %_s_k, align 4
  %62 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %58, i32 %60, i32 %61)
  %63 = load i64* %62
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %8, i64 %63)
  %64 = load i32* %_s_j, align 4
  %65 = sext i32 %64 to i64
  %66 = load %class.ap_uint.0** %4, align 8
  %67 = getelementptr inbounds %class.ap_uint.0* %66, i64 %65
  %68 = load i32* %_s_k, align 4
  %69 = add nsw i32 %68, 7
  %70 = load i32* %_s_k, align 4
  %71 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %67, i32 %69, i32 %70)
  %72 = load i64* %71
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %9, i64 %72)
  %73 = load i32* %_s_j, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = load %class.ap_uint.0** %4, align 8
  %77 = getelementptr inbounds %class.ap_uint.0* %76, i64 %75
  %78 = load i32* %_s_k, align 4
  %79 = add nsw i32 %78, 7
  %80 = load i32* %_s_k, align 4
  %81 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %77, i32 %79, i32 %80)
  %82 = load i64* %81
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %10, i64 %82)
  %83 = load i32* %_s_j, align 4
  %84 = add nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = load %class.ap_uint.0** %4, align 8
  %87 = getelementptr inbounds %class.ap_uint.0* %86, i64 %85
  %88 = load i32* %_s_k, align 4
  %89 = add nsw i32 %88, 7
  %90 = load i32* %_s_k, align 4
  %91 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %87, i32 %89, i32 %90)
  %92 = load i64* %91
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %11, i64 %92)
  %93 = load i32* %_s_j, align 4
  %94 = sext i32 %93 to i64
  %95 = load %class.ap_uint.0** %5, align 8
  %96 = getelementptr inbounds %class.ap_uint.0* %95, i64 %94
  %97 = load i32* %_s_k, align 4
  %98 = add nsw i32 %97, 7
  %99 = load i32* %_s_k, align 4
  %100 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %96, i32 %98, i32 %99)
  %101 = load i64* %100
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %12, i64 %101)
  %102 = load i32* %_s_j, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = load %class.ap_uint.0** %5, align 8
  %106 = getelementptr inbounds %class.ap_uint.0* %105, i64 %104
  %107 = load i32* %_s_k, align 4
  %108 = add nsw i32 %107, 7
  %109 = load i32* %_s_k, align 4
  %110 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %106, i32 %108, i32 %109)
  %111 = load i64* %110
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %13, i64 %111)
  %112 = load i32* %_s_j, align 4
  %113 = add nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = load %class.ap_uint.0** %5, align 8
  %116 = getelementptr inbounds %class.ap_uint.0* %115, i64 %114
  %117 = load i32* %_s_k, align 4
  %118 = add nsw i32 %117, 7
  %119 = load i32* %_s_k, align 4
  %120 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %116, i32 %118, i32 %119)
  %121 = load i64* %120
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %14, i64 %121)
  %122 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %123 = bitcast [1 x i8]* %122 to i8*
  %124 = load i8* %123, align 1
  %125 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %126 = bitcast [1 x i8]* %125 to i8*
  %127 = load i8* %126, align 1
  %128 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %129 = bitcast [1 x i8]* %128 to i8*
  %130 = load i8* %129, align 1
  %131 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %132 = bitcast [1 x i8]* %131 to i8*
  %133 = load i8* %132, align 1
  %134 = getelementptr %class.ap_uint.0* %10, i32 0, i32 0
  %135 = bitcast [1 x i8]* %134 to i8*
  %136 = load i8* %135, align 1
  %137 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %138 = bitcast [1 x i8]* %137 to i8*
  %139 = load i8* %138, align 1
  %140 = getelementptr %class.ap_uint.0* %12, i32 0, i32 0
  %141 = bitcast [1 x i8]* %140 to i8*
  %142 = load i8* %141, align 1
  %143 = getelementptr %class.ap_uint.0* %13, i32 0, i32 0
  %144 = bitcast [1 x i8]* %143 to i8*
  %145 = load i8* %144, align 1
  %146 = getelementptr %class.ap_uint.0* %14, i32 0, i32 0
  %147 = bitcast [1 x i8]* %146 to i8*
  %148 = load i8* %147, align 1
  %149 = call i8 @_ZL162p_ZN2xf14xFGradientX3x3ILi0ELi0EEE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE_17ap_uintILi8EES0_S0_S0_S0_S0_S0_S0_S0_(i8 %124, i8 %127, i8 %130, i8 %133, i8 %136, i8 %139, i8 %142, i8 %145, i8 %148)
  %150 = getelementptr %class.ap_uint.0* %15, i32 0, i32 0
  %151 = bitcast [1 x i8]* %150 to i8*
  store i8 %149, i8* %151, align 1
  %152 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %15)
  %153 = load i32* %_s_j, align 4
  %154 = sext i32 %153 to i64
  %155 = load %class.ap_uint.0** %1, align 8
  %156 = getelementptr inbounds %class.ap_uint.0* %155, i64 %154
  %157 = load i32* %p, align 4
  %158 = load i32* %STEP, align 4
  %159 = sub nsw i32 %158, 1
  %160 = add nsw i32 %157, %159
  %161 = load i32* %p, align 4
  %162 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %156, i32 %160, i32 %161)
  store i64 %152, i64* %162
  %163 = load i32* %_s_j, align 4
  %164 = sext i32 %163 to i64
  %165 = load %class.ap_uint.0** %3, align 8
  %166 = getelementptr inbounds %class.ap_uint.0* %165, i64 %164
  %167 = load i32* %_s_k, align 4
  %168 = add nsw i32 %167, 7
  %169 = load i32* %_s_k, align 4
  %170 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %166, i32 %168, i32 %169)
  %171 = load i64* %170
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %16, i64 %171)
  %172 = load i32* %_s_j, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = load %class.ap_uint.0** %3, align 8
  %176 = getelementptr inbounds %class.ap_uint.0* %175, i64 %174
  %177 = load i32* %_s_k, align 4
  %178 = add nsw i32 %177, 7
  %179 = load i32* %_s_k, align 4
  %180 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %176, i32 %178, i32 %179)
  %181 = load i64* %180
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %17, i64 %181)
  %182 = load i32* %_s_j, align 4
  %183 = add nsw i32 %182, 2
  %184 = sext i32 %183 to i64
  %185 = load %class.ap_uint.0** %3, align 8
  %186 = getelementptr inbounds %class.ap_uint.0* %185, i64 %184
  %187 = load i32* %_s_k, align 4
  %188 = add nsw i32 %187, 7
  %189 = load i32* %_s_k, align 4
  %190 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %186, i32 %188, i32 %189)
  %191 = load i64* %190
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %18, i64 %191)
  %192 = load i32* %_s_j, align 4
  %193 = sext i32 %192 to i64
  %194 = load %class.ap_uint.0** %4, align 8
  %195 = getelementptr inbounds %class.ap_uint.0* %194, i64 %193
  %196 = load i32* %_s_k, align 4
  %197 = add nsw i32 %196, 7
  %198 = load i32* %_s_k, align 4
  %199 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %195, i32 %197, i32 %198)
  %200 = load i64* %199
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %19, i64 %200)
  %201 = load i32* %_s_j, align 4
  %202 = add nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = load %class.ap_uint.0** %4, align 8
  %205 = getelementptr inbounds %class.ap_uint.0* %204, i64 %203
  %206 = load i32* %_s_k, align 4
  %207 = add nsw i32 %206, 7
  %208 = load i32* %_s_k, align 4
  %209 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %205, i32 %207, i32 %208)
  %210 = load i64* %209
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %20, i64 %210)
  %211 = load i32* %_s_j, align 4
  %212 = add nsw i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = load %class.ap_uint.0** %4, align 8
  %215 = getelementptr inbounds %class.ap_uint.0* %214, i64 %213
  %216 = load i32* %_s_k, align 4
  %217 = add nsw i32 %216, 7
  %218 = load i32* %_s_k, align 4
  %219 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %215, i32 %217, i32 %218)
  %220 = load i64* %219
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %21, i64 %220)
  %221 = load i32* %_s_j, align 4
  %222 = sext i32 %221 to i64
  %223 = load %class.ap_uint.0** %5, align 8
  %224 = getelementptr inbounds %class.ap_uint.0* %223, i64 %222
  %225 = load i32* %_s_k, align 4
  %226 = add nsw i32 %225, 7
  %227 = load i32* %_s_k, align 4
  %228 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %224, i32 %226, i32 %227)
  %229 = load i64* %228
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %22, i64 %229)
  %230 = load i32* %_s_j, align 4
  %231 = add nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = load %class.ap_uint.0** %5, align 8
  %234 = getelementptr inbounds %class.ap_uint.0* %233, i64 %232
  %235 = load i32* %_s_k, align 4
  %236 = add nsw i32 %235, 7
  %237 = load i32* %_s_k, align 4
  %238 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %234, i32 %236, i32 %237)
  %239 = load i64* %238
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %23, i64 %239)
  %240 = load i32* %_s_j, align 4
  %241 = add nsw i32 %240, 2
  %242 = sext i32 %241 to i64
  %243 = load %class.ap_uint.0** %5, align 8
  %244 = getelementptr inbounds %class.ap_uint.0* %243, i64 %242
  %245 = load i32* %_s_k, align 4
  %246 = add nsw i32 %245, 7
  %247 = load i32* %_s_k, align 4
  %248 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %244, i32 %246, i32 %247)
  %249 = load i64* %248
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %24, i64 %249)
  %250 = getelementptr %class.ap_uint.0* %16, i32 0, i32 0
  %251 = bitcast [1 x i8]* %250 to i8*
  %252 = load i8* %251, align 1
  %253 = getelementptr %class.ap_uint.0* %17, i32 0, i32 0
  %254 = bitcast [1 x i8]* %253 to i8*
  %255 = load i8* %254, align 1
  %256 = getelementptr %class.ap_uint.0* %18, i32 0, i32 0
  %257 = bitcast [1 x i8]* %256 to i8*
  %258 = load i8* %257, align 1
  %259 = getelementptr %class.ap_uint.0* %19, i32 0, i32 0
  %260 = bitcast [1 x i8]* %259 to i8*
  %261 = load i8* %260, align 1
  %262 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %263 = bitcast [1 x i8]* %262 to i8*
  %264 = load i8* %263, align 1
  %265 = getelementptr %class.ap_uint.0* %21, i32 0, i32 0
  %266 = bitcast [1 x i8]* %265 to i8*
  %267 = load i8* %266, align 1
  %268 = getelementptr %class.ap_uint.0* %22, i32 0, i32 0
  %269 = bitcast [1 x i8]* %268 to i8*
  %270 = load i8* %269, align 1
  %271 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %272 = bitcast [1 x i8]* %271 to i8*
  %273 = load i8* %272, align 1
  %274 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %275 = bitcast [1 x i8]* %274 to i8*
  %276 = load i8* %275, align 1
  %277 = call i8 @_ZL162p_ZN2xf14xFGradientY3x3ILi0ELi0EEE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE7ap_uintILi8EE_17ap_uintILi8EES0_S0_S0_S0_S0_S0_S0_S0_(i8 %252, i8 %255, i8 %258, i8 %261, i8 %264, i8 %267, i8 %270, i8 %273, i8 %276)
  %278 = getelementptr %class.ap_uint.0* %25, i32 0, i32 0
  %279 = bitcast [1 x i8]* %278 to i8*
  store i8 %277, i8* %279, align 1
  %280 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %25)
  %281 = load i32* %_s_j, align 4
  %282 = sext i32 %281 to i64
  %283 = load %class.ap_uint.0** %2, align 8
  %284 = getelementptr inbounds %class.ap_uint.0* %283, i64 %282
  %285 = load i32* %p, align 4
  %286 = load i32* %STEP, align 4
  %287 = sub nsw i32 %286, 1
  %288 = add nsw i32 %285, %287
  %289 = load i32* %p, align 4
  %290 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %284, i32 %288, i32 %289)
  store i64 %280, i64* %290
  %291 = load i32* %STEP, align 4
  %292 = load i32* %p, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %p, align 4
  %294 = load i32* %_s_k, align 4
  %295 = add nsw i32 %294, 8
  store i32 %295, i32* %_s_k, align 4
  br label %296

; <label>:296                                     ; preds = %34
  %297 = load i32* %_s_c, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %_s_c, align 4
  br label %31

; <label>:299                                     ; preds = %31
  br label %300

; <label>:300                                     ; preds = %299
  %301 = load i32* %_s_j, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %_s_j, align 4
  br label %27

; <label>:303                                     ; preds = %27
  ret void
}

declare i8 @_ZmiILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5*, i32)

declare i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5*)

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

; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/paintmask_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%struct.xf_Scalar_1_unsigned_char_ = type { [1 x i8] }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.1 = type { [2 x i8] }
%class.ap_int = type { [4 x i8] }

@.str = private unnamed_addr constant [93 x i8] c"((height <= ROWS ) && (width <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"xf_paintmask.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL129p_ZN2xf9paintmaskILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPh_1R19xf_Mat_0_256_256_1_S0_S0_Ph = private unnamed_addr constant [242 x i8] c"void p_ZN2xf9paintmaskILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPh_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, unsigned char *)\00", align 1
@.str2 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z15paintmask_accelP7ap_uintILi256EES1_S1_Phii(%class.ap_uint* %img_inp, %class.ap_uint* %msk_inp, %class.ap_uint* %img_out, i8* %color, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %mask_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_inp, %class.ap_uint** %1, align 8
  store %class.ap_uint* %msk_inp, %class.ap_uint** %2, align 8
  store %class.ap_uint* %img_out, %class.ap_uint** %3, align 8
  store i8* %color, i8** %4, align 8
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
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %mask_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %mask_mat)
  %11 = load i32* %5, align 4
  %12 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %mask_mat, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32* %6, align 4
  %14 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %mask_mat, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %out_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %out_mat)
  %15 = load i32* %5, align 4
  %16 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32* %6, align 4
  %18 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %19, %struct.xf_Mat_0_256_256_1_* %in_mat)
  %20 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %20, %struct.xf_Mat_0_256_256_1_* %mask_mat)
  %21 = load i8** %4, align 8
  call void @_ZL129p_ZN2xf9paintmaskILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPh_1R19xf_Mat_0_256_256_1_S0_S0_Ph(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_0_256_256_1_* %mask_mat, %struct.xf_Mat_0_256_256_1_* %out_mat, i8* %21)
  %22 = load %class.ap_uint** %3, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_0_256_256_1_* %out_mat, %class.ap_uint* %22)
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

define internal void @_ZL129p_ZN2xf9paintmaskILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPh_1R19xf_Mat_0_256_256_1_S0_S0_Ph(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %in_mask, %struct.xf_Mat_0_256_256_1_* %_dst_mat, i8* %_color) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %4 = alloca i8*, align 8
  %width = alloca i16, align 2
  %height = alloca i16, align 2
  %color = alloca %struct.xf_Scalar_1_unsigned_char_, align 1
  %i = alloca i32, align 4
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %in_mask, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %3, align 8
  store i8* %_color, i8** %4, align 8
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
  call void @_ZL40p_ZN2xf23Scalar_1_unsigned_char_C2IEEv_1P26xf_Scalar_1_unsigned_char_(%struct.xf_Scalar_1_unsigned_char_* %color)
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %27, %0
  %15 = load i32* %i, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %30

; <label>:17                                      ; preds = %14
  %18 = load i32* %i, align 4
  %19 = sext i32 %18 to i64
  %20 = load i8** %4, align 8
  %21 = getelementptr inbounds i8* %20, i64 %19
  %22 = load i8* %21, align 1
  %23 = load i32* %i, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.xf_Scalar_1_unsigned_char_* %color, i32 0, i32 0
  %26 = getelementptr inbounds [1 x i8]* %25, i32 0, i64 %24
  store i8 %22, i8* %26, align 1
  br label %27

; <label>:27                                      ; preds = %17
  %28 = load i32* %i, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4
  br label %14

; <label>:30                                      ; preds = %14
  %31 = load i16* %height, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp sle i32 %32, 256
  br i1 %33, label %34, label %39

; <label>:34                                      ; preds = %30
  %35 = load i16* %width, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp sle i32 %36, 256
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %34
  br label %41

; <label>:39                                      ; preds = %34, %30
  call void @__assert_fail(i8* getelementptr inbounds ([93 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0), i32 132, i8* getelementptr inbounds ([242 x i8]* @__PRETTY_FUNCTION__._ZL129p_ZN2xf9paintmaskILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPh_1R19xf_Mat_0_256_256_1_S0_S0_Ph, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %41

; <label>:41                                      ; preds = %40, %38
  %42 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %43 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %44 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %45 = load i16* %height, align 2
  %46 = load i16* %width, align 2
  call void @_ZL175p_ZN2xf17xFpaintmaskKernelILi0ELi0ELi256ELi256ELi0ELi1ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER6ScalarILi1EhEtt_1R19xf_Mat_0_256_256_1_S0_S0_R26xf_Scalar_1_unsigned_char_tt(%struct.xf_Mat_0_256_256_1_* %42, %struct.xf_Mat_0_256_256_1_* %43, %struct.xf_Mat_0_256_256_1_* %44, %struct.xf_Scalar_1_unsigned_char_* %color, i16 zeroext %45, i16 zeroext %46)
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

define internal void @_ZL40p_ZN2xf23Scalar_1_unsigned_char_C2IEEv_1P26xf_Scalar_1_unsigned_char_(%struct.xf_Scalar_1_unsigned_char_* %this_) nounwind uwtable {
  %1 = alloca %struct.xf_Scalar_1_unsigned_char_*, align 8
  store %struct.xf_Scalar_1_unsigned_char_* %this_, %struct.xf_Scalar_1_unsigned_char_** %1, align 8
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL175p_ZN2xf17xFpaintmaskKernelILi0ELi0ELi256ELi256ELi0ELi1ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER6ScalarILi1EhEtt_1R19xf_Mat_0_256_256_1_S0_S0_R26xf_Scalar_1_unsigned_char_tt(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_in_mask, %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Scalar_1_unsigned_char_* %color, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %4 = alloca %struct.xf_Scalar_1_unsigned_char_*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %val_src = alloca %class.ap_uint.0, align 1
  %in_mask = alloca %class.ap_uint.0, align 1
  %val_dst = alloca %class.ap_uint.0, align 1
  %p = alloca %class.ap_uint.0, align 1
  %mask = alloca %class.ap_uint.0, align 1
  %depth = alloca i16, align 2
  %arr_color = alloca [1 x %class.ap_uint.0], align 1
  %i = alloca i32, align 4
  %i1 = alloca %class.ap_uint.1, align 1
  %j = alloca %class.ap_uint.1, align 1
  %k = alloca %class.ap_uint.1, align 1
  %planes = alloca %class.ap_uint.1, align 1
  %7 = alloca %class.ap_uint.1, align 1
  %channels = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint.1, align 1
  %9 = alloca %class.ap_uint.0, align 1
  %10 = alloca %class.ap_uint.1, align 1
  %11 = alloca %class.ap_uint.1, align 1
  %12 = alloca %class.ap_int, align 1
  %13 = alloca %class.ap_uint.0, align 1
  %14 = alloca %class.ap_uint.1, align 1
  %15 = alloca %class.ap_uint.1, align 1
  %16 = alloca %class.ap_int, align 1
  %17 = alloca %class.ap_uint.1, align 1
  %_in_k = alloca %class.ap_uint.1, align 1
  %18 = alloca %class.ap_uint.1, align 1
  %19 = alloca %class.ap_uint.1, align 1
  %20 = alloca %class.ap_uint.1, align 1
  %21 = alloca %class.ap_uint.0, align 1
  %22 = alloca %class.ap_uint.1, align 1
  %23 = alloca %class.ap_uint.1, align 1
  %24 = alloca %class.ap_uint.1, align 1
  %25 = alloca %class.ap_uint.1, align 1
  %26 = alloca %class.ap_uint.1, align 1
  %27 = alloca %class.ap_uint.1, align 1
  %28 = alloca %class.ap_int, align 1
  %29 = alloca %class.ap_uint.0, align 1
  %30 = alloca %class.ap_uint.1, align 1
  %31 = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_in_mask, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %3, align 8
  store %struct.xf_Scalar_1_unsigned_char_* %color, %struct.xf_Scalar_1_unsigned_char_** %4, align 8
  store i16 %height, i16* %5, align 2
  store i16 %width, i16* %6, align 2
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_src)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %in_mask)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_dst)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %p)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %mask)
  store i16 8, i16* %depth, align 2
  %32 = getelementptr inbounds [1 x %class.ap_uint.0]* %arr_color, i32 0, i32 0
  %33 = getelementptr inbounds %class.ap_uint.0* %32, i64 1
  br label %34

; <label>:34                                      ; preds = %34, %0
  %35 = phi %class.ap_uint.0* [ %32, %0 ], [ %36, %34 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %35)
  %36 = getelementptr inbounds %class.ap_uint.0* %35, i64 1
  %37 = icmp eq %class.ap_uint.0* %36, %33
  br i1 %37, label %38, label %34

; <label>:38                                      ; preds = %34
  store i32 0, i32* %i, align 4
  br label %39

; <label>:39                                      ; preds = %53, %38
  %40 = load i32* %i, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %56

; <label>:42                                      ; preds = %39
  %43 = load i32* %i, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1 x %class.ap_uint.0]* %arr_color, i32 0, i64 %44
  %46 = load i32* %i, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.xf_Scalar_1_unsigned_char_** %4, align 8
  %49 = getelementptr inbounds %struct.xf_Scalar_1_unsigned_char_* %48, i32 0, i32 0
  %50 = getelementptr inbounds [1 x i8]* %49, i32 0, i64 %47
  %51 = load i8* %50, align 1
  %52 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEh(%class.ap_uint.0* %45, i8 zeroext %51)
  br label %53

; <label>:53                                      ; preds = %42
  %54 = load i32* %i, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %i, align 4
  br label %39

; <label>:56                                      ; preds = %39
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %i1)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %j)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %k)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %planes)
  br label %57

; <label>:57                                      ; preds = %56
  %58 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %i1, i32 0)
  br label %59

; <label>:59                                      ; preds = %221, %57
  %60 = bitcast %class.ap_uint.1* %7 to i8*
  %61 = bitcast %class.ap_uint.1* %i1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 2, i32 1, i1 false)
  %62 = load i16* %5, align 2
  %63 = getelementptr %class.ap_uint.1* %7, i32 0, i32 0
  %64 = bitcast [2 x i8]* %63 to i16*
  %65 = load i16* %64, align 1
  %66 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %65, i16 zeroext %62)
  br i1 %66, label %67, label %225

; <label>:67                                      ; preds = %59
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %channels, i32 1)
  br label %68

; <label>:68                                      ; preds = %67
  %69 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %j, i32 0)
  br label %70

; <label>:70                                      ; preds = %216, %68
  %71 = bitcast %class.ap_uint.1* %8 to i8*
  %72 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 2, i32 1, i1 false)
  %73 = load i16* %6, align 2
  %74 = getelementptr %class.ap_uint.1* %8, i32 0, i32 0
  %75 = bitcast [2 x i8]* %74 to i16*
  %76 = load i16* %75, align 1
  %77 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %76, i16 zeroext %73)
  br i1 %77, label %78, label %220

; <label>:78                                      ; preds = %70
  %79 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %80 = load i16* %6, align 2
  %81 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %i1, i16 zeroext %80)
  %82 = getelementptr %class.ap_uint.1* %10, i32 0, i32 0
  %83 = bitcast [2 x i8]* %82 to i16*
  store i16 %81, i16* %83, align 1
  %84 = bitcast %class.ap_uint.1* %11 to i8*
  %85 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 2, i32 1, i1 false)
  %86 = getelementptr %class.ap_uint.1* %10, i32 0, i32 0
  %87 = bitcast [2 x i8]* %86 to i16*
  %88 = load i16* %87, align 1
  %89 = getelementptr %class.ap_uint.1* %11, i32 0, i32 0
  %90 = bitcast [2 x i8]* %89 to i16*
  %91 = load i16* %90, align 1
  %92 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %88, i16 %91)
  %93 = getelementptr %class.ap_int* %12, i32 0, i32 0
  %94 = bitcast [4 x i8]* %93 to i32*
  store i32 %92, i32* %94, align 1
  %95 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %12)
  %96 = trunc i64 %95 to i32
  %97 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %79, i32 %96)
  %98 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %99 = bitcast [1 x i8]* %98 to i8*
  store i8 %97, i8* %99, align 1
  %100 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val_src, %class.ap_uint.0* %9)
  %101 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %102 = load i16* %6, align 2
  %103 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %i1, i16 zeroext %102)
  %104 = getelementptr %class.ap_uint.1* %14, i32 0, i32 0
  %105 = bitcast [2 x i8]* %104 to i16*
  store i16 %103, i16* %105, align 1
  %106 = bitcast %class.ap_uint.1* %15 to i8*
  %107 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 2, i32 1, i1 false)
  %108 = getelementptr %class.ap_uint.1* %14, i32 0, i32 0
  %109 = bitcast [2 x i8]* %108 to i16*
  %110 = load i16* %109, align 1
  %111 = getelementptr %class.ap_uint.1* %15, i32 0, i32 0
  %112 = bitcast [2 x i8]* %111 to i16*
  %113 = load i16* %112, align 1
  %114 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %110, i16 %113)
  %115 = getelementptr %class.ap_int* %16, i32 0, i32 0
  %116 = bitcast [4 x i8]* %115 to i32*
  store i32 %114, i32* %116, align 1
  %117 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %16)
  %118 = trunc i64 %117 to i32
  %119 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %101, i32 %118)
  %120 = getelementptr %class.ap_uint.0* %13, i32 0, i32 0
  %121 = bitcast [1 x i8]* %120 to i8*
  store i8 %119, i8* %121, align 1
  %122 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %in_mask, %class.ap_uint.0* %13)
  %123 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %planes, i32 0)
  %124 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %k, i32 0)
  br label %125

; <label>:125                                     ; preds = %187, %78
  %126 = bitcast %class.ap_uint.1* %17 to i8*
  %127 = bitcast %class.ap_uint.1* %k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 2, i32 1, i1 false)
  %128 = getelementptr %class.ap_uint.1* %17, i32 0, i32 0
  %129 = bitcast [2 x i8]* %128 to i16*
  %130 = load i16* %129, align 1
  %131 = call zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16 %130, i64 0)
  br i1 %131, label %132, label %191

; <label>:132                                     ; preds = %125
  %133 = call i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64 8, %class.ap_uint.1* %k)
  %134 = getelementptr %class.ap_uint.1* %18, i32 0, i32 0
  %135 = bitcast [2 x i8]* %134 to i16*
  store i16 %133, i16* %135, align 1
  %136 = call i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.1* %18)
  %137 = getelementptr %class.ap_uint.1* %_in_k, i32 0, i32 0
  %138 = bitcast [2 x i8]* %137 to i16*
  store i16 %136, i16* %138, align 1
  %139 = load i16* %depth, align 2
  %140 = sext i16 %139 to i32
  %141 = sub nsw i32 %140, 1
  %142 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 %141)
  %143 = getelementptr %class.ap_uint.1* %19, i32 0, i32 0
  %144 = bitcast [2 x i8]* %143 to i16*
  store i16 %142, i16* %144, align 1
  %145 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_src, %class.ap_uint.1* %19, %class.ap_uint.1* %_in_k)
  %146 = load i64* %145
  %147 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %p, i64 %146)
  %148 = load i16* %depth, align 2
  %149 = sext i16 %148 to i32
  %150 = sub nsw i32 %149, 1
  %151 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 %150)
  %152 = getelementptr %class.ap_uint.1* %20, i32 0, i32 0
  %153 = bitcast [2 x i8]* %152 to i16*
  store i16 %151, i16* %153, align 1
  %154 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %in_mask, %class.ap_uint.1* %20, %class.ap_uint.1* %_in_k)
  %155 = load i64* %154
  %156 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %mask, i64 %155)
  %157 = bitcast %class.ap_uint.0* %21 to i8*
  %158 = bitcast %class.ap_uint.0* %mask to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* %158, i64 1, i32 1, i1 false)
  %159 = getelementptr %class.ap_uint.0* %21, i32 0, i32 0
  %160 = bitcast [1 x i8]* %159 to i8*
  %161 = load i8* %160, align 1
  %162 = call zeroext i1 @_ZneILi8EEb7ap_uintIXT_EEi(i8 %161, i32 0)
  br i1 %162, label %163, label %174

; <label>:163                                     ; preds = %132
  %164 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %planes)
  %165 = getelementptr inbounds [1 x %class.ap_uint.0]* %arr_color, i32 0, i64 %164
  %166 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %165)
  %167 = load i16* %depth, align 2
  %168 = sext i16 %167 to i32
  %169 = sub nsw i32 %168, 1
  %170 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 %169)
  %171 = getelementptr %class.ap_uint.1* %22, i32 0, i32 0
  %172 = bitcast [2 x i8]* %171 to i16*
  store i16 %170, i16* %172, align 1
  %173 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_dst, %class.ap_uint.1* %22, %class.ap_uint.1* %_in_k)
  store i64 %166, i64* %173
  br label %183

; <label>:174                                     ; preds = %132
  %175 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %p)
  %176 = load i16* %depth, align 2
  %177 = sext i16 %176 to i32
  %178 = sub nsw i32 %177, 1
  %179 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 %178)
  %180 = getelementptr %class.ap_uint.1* %23, i32 0, i32 0
  %181 = bitcast [2 x i8]* %180 to i16*
  store i16 %179, i16* %181, align 1
  %182 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_dst, %class.ap_uint.1* %23, %class.ap_uint.1* %_in_k)
  store i64 %175, i64* %182
  br label %183

; <label>:183                                     ; preds = %174, %163
  %184 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %planes, i32 0)
  %185 = getelementptr %class.ap_uint.1* %24, i32 0, i32 0
  %186 = bitcast [2 x i8]* %185 to i16*
  store i16 %184, i16* %186, align 1
  br label %187

; <label>:187                                     ; preds = %183
  %188 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %k, i32 0)
  %189 = getelementptr %class.ap_uint.1* %25, i32 0, i32 0
  %190 = bitcast [2 x i8]* %189 to i16*
  store i16 %188, i16* %190, align 1
  br label %125

; <label>:191                                     ; preds = %125
  %192 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.1* %k, i64 8)
  %193 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %194 = load i16* %6, align 2
  %195 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %i1, i16 zeroext %194)
  %196 = getelementptr %class.ap_uint.1* %26, i32 0, i32 0
  %197 = bitcast [2 x i8]* %196 to i16*
  store i16 %195, i16* %197, align 1
  %198 = bitcast %class.ap_uint.1* %27 to i8*
  %199 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %198, i8* %199, i64 2, i32 1, i1 false)
  %200 = getelementptr %class.ap_uint.1* %26, i32 0, i32 0
  %201 = bitcast [2 x i8]* %200 to i16*
  %202 = load i16* %201, align 1
  %203 = getelementptr %class.ap_uint.1* %27, i32 0, i32 0
  %204 = bitcast [2 x i8]* %203 to i16*
  %205 = load i16* %204, align 1
  %206 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %202, i16 %205)
  %207 = getelementptr %class.ap_int* %28, i32 0, i32 0
  %208 = bitcast [4 x i8]* %207 to i32*
  store i32 %206, i32* %208, align 1
  %209 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %28)
  %210 = trunc i64 %209 to i32
  %211 = bitcast %class.ap_uint.0* %29 to i8*
  %212 = bitcast %class.ap_uint.0* %val_dst to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %211, i8* %212, i64 1, i32 1, i1 false)
  %213 = getelementptr %class.ap_uint.0* %29, i32 0, i32 0
  %214 = bitcast [1 x i8]* %213 to i8*
  %215 = load i8* %214, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %193, i32 %210, i8 %215)
  br label %216

; <label>:216                                     ; preds = %191
  %217 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %j, i32 0)
  %218 = getelementptr %class.ap_uint.1* %30, i32 0, i32 0
  %219 = bitcast [2 x i8]* %218 to i16*
  store i16 %217, i16* %219, align 1
  br label %70

; <label>:220                                     ; preds = %70
  br label %221

; <label>:221                                     ; preds = %220
  %222 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %i1, i32 0)
  %223 = getelementptr %class.ap_uint.1* %31, i32 0, i32 0
  %224 = bitcast [2 x i8]* %223 to i16*
  store i16 %222, i16* %224, align 1
  br label %59

; <label>:225                                     ; preds = %59
  ret void
}

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEh(%class.ap_uint.0*, i8 zeroext)

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1*)

declare %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0*, i32)

declare i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1*, i16 zeroext)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int*)

declare zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16, i64)

declare i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.1*)

declare i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.1*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0*, i64)

declare i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0*, %class.ap_uint.1*, %class.ap_uint.1*)

declare i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZneILi8EEb7ap_uintIXT_EEi(i8, i32)

declare i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1*)

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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
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

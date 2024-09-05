; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/pyrdown_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%"class.hls::stream.1" = type { %class.ap_uint.0 }
%class.ap_uint.2 = type { [2 x i8] }
%class.ap_int = type { [3 x i8] }
%class.ap_uint.3 = type { [4 x i8] }

@.str = private unnamed_addr constant [99 x i8] c"((imgheight <= ROWS ) && (imgwidth <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [30 x i8] c"xf_pyr_down_gaussian_blur.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL136p_Z21xFPyrDownGaussianBlurILi256ELi256ELi0ELi1ELi1ELi0ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEitt_1RN3hls6streamI7ap_uintILi8EEEES4_S2_itt = private unnamed_addr constant [267 x i8] c"void p_Z21xFPyrDownGaussianBlurILi256ELi256ELi0ELi1ELi1ELi0ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEitt_1(hls::stream<_DataType_0_1_name> &, hls::stream<_DataType_0_1_name> &, class ap_uint<8>, int, unsigned short, unsigned short)\00", align 1
@.str2 = private unnamed_addr constant [67 x i8] c"(win_size <= WIN_SZ) && \22win_size must not be greater than WIN_SZ\22\00", align 1
@_ZZL97p_Z20xFPyrDownApplykernelILi1ELi0ELi5ELi25ELi1EEP7ap_uintILi8EEPA5_7ap_uintILi8EE7ap_uintILi8EE_1P7ap_uintILi8EEPA5_S0_S0_E1k = private unnamed_addr constant [25 x i32] [i32 1, i32 4, i32 6, i32 4, i32 1, i32 4, i32 16, i32 24, i32 16, i32 4, i32 6, i32 24, i32 36, i32 24, i32 6, i32 4, i32 16, i32 24, i32 16, i32 4, i32 1, i32 4, i32 6, i32 4, i32 1], align 16
@.str3 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z14pyr_down_accelP7ap_uintILi256EES1_iiii(%class.ap_uint* %img_inp, %class.ap_uint* %img_out, i32 %in_rows, i32 %in_cols, i32 %out_rows, i32 %out_cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_inp, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_out, %class.ap_uint** %2, align 8
  store i32 %in_rows, i32* %3, align 4
  store i32 %in_cols, i32* %4, align 4
  store i32 %out_rows, i32* %5, align 4
  store i32 %out_cols, i32* %6, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat)
  %7 = load i32* %3, align 4
  %8 = load i32* %4, align 4
  call void @_ZL34p_ZN2xf16Mat_0_256_256_1_C2IEEii_1P19xf_Mat_0_256_256_1_ii(%struct.xf_Mat_0_256_256_1_* %in_mat, i32 %7, i32 %8)
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %out_mat)
  %9 = load i32* %5, align 4
  %10 = load i32* %6, align 4
  call void @_ZL34p_ZN2xf16Mat_0_256_256_1_C2IEEii_1P19xf_Mat_0_256_256_1_ii(%struct.xf_Mat_0_256_256_1_* %out_mat, i32 %9, i32 %10)
  %11 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %11, %struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL98p_ZN2xf7pyrDownILi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_0_256_256_1_* %out_mat)
  %12 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_0_256_256_1_* %out_mat, %class.ap_uint* %12)
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

define internal void @_ZL98p_ZN2xf7pyrDownILi0ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_(%struct.xf_Mat_0_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_* %_dst) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %input_height = alloca i16, align 2
  %input_width = alloca i16, align 2
  store %struct.xf_Mat_0_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst, %struct.xf_Mat_0_256_256_1_** %2, align 8
  %3 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %4 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %3, i32 0, i32 1
  %5 = load i32* %4, align 4
  %6 = trunc i32 %5 to i16
  store i16 %6, i16* %input_height, align 2
  %7 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %input_width, align 2
  %11 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %12 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %13 = load i16* %input_height, align 2
  %14 = load i16* %input_width, align 2
  call void @_ZL113p_ZN2xf15xFpyrDownKernelILj256ELj256ELj0ELj1ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_S0_tt(%struct.xf_Mat_0_256_256_1_* %11, %struct.xf_Mat_0_256_256_1_* %12, i16 zeroext %13, i16 zeroext %14)
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

define internal void @_ZL113p_ZN2xf15xFpyrDownKernelILj256ELj256ELj0ELj1ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_S0_tt(%struct.xf_Mat_0_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_* %_dst, i16 zeroext %in_rows, i16 zeroext %in_cols) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %_filter_in = alloca %"class.hls::stream.1", align 1
  %_filter_out = alloca %"class.hls::stream.1", align 1
  %read_pointer = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %5 = alloca %class.ap_uint.0, align 1
  %6 = alloca %class.ap_uint.0, align 1
  %write_ptr = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %read_fil_out = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_uint.0, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i16 %in_rows, i16* %3, align 2
  store i16 %in_cols, i16* %4, align 2
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.1"* %_filter_in)
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.1"* %_filter_out)
  store i32 0, i32* %read_pointer, align 4
  store i32 0, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %31, %0
  %9 = load i32* %i, align 4
  %10 = load i16* %3, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %34

; <label>:13                                      ; preds = %8
  store i32 0, i32* %j, align 4
  br label %14

; <label>:14                                      ; preds = %27, %13
  %15 = load i32* %j, align 4
  %16 = load i16* %4, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %30

; <label>:19                                      ; preds = %14
  %20 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %21 = load i32* %read_pointer, align 4
  %22 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %20, i32 %21)
  %23 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %24 = bitcast [1 x i8]* %23 to i8*
  store i8 %22, i8* %24, align 1
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.1"* %_filter_in, %class.ap_uint.0* %5)
  %25 = load i32* %read_pointer, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %read_pointer, align 4
  br label %27

; <label>:27                                      ; preds = %19
  %28 = load i32* %j, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %j, align 4
  br label %14

; <label>:30                                      ; preds = %14
  br label %31

; <label>:31                                      ; preds = %30
  %32 = load i32* %i, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %i, align 4
  br label %8

; <label>:34                                      ; preds = %8
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %6, i32 5)
  %35 = load i16* %3, align 2
  %36 = load i16* %4, align 2
  %37 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %38 = bitcast [1 x i8]* %37 to i8*
  %39 = load i8* %38, align 1
  call void @_ZL136p_Z21xFPyrDownGaussianBlurILi256ELi256ELi0ELi1ELi1ELi0ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEitt_1RN3hls6streamI7ap_uintILi8EEEES4_S2_itt(%"class.hls::stream.1"* %_filter_in, %"class.hls::stream.1"* %_filter_out, i8 %39, i32 0, i16 zeroext %35, i16 zeroext %36)
  store i32 0, i32* %write_ptr, align 4
  store i32 0, i32* %i1, align 4
  br label %40

; <label>:40                                      ; preds = %77, %34
  %41 = load i32* %i1, align 4
  %42 = load i16* %3, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %80

; <label>:45                                      ; preds = %40
  store i32 0, i32* %j2, align 4
  br label %46

; <label>:46                                      ; preds = %73, %45
  %47 = load i32* %j2, align 4
  %48 = load i16* %4, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %76

; <label>:51                                      ; preds = %46
  %52 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.1"* %_filter_out)
  %53 = getelementptr %class.ap_uint.0* %read_fil_out, i32 0, i32 0
  %54 = bitcast [1 x i8]* %53 to i8*
  store i8 %52, i8* %54, align 1
  %55 = load i32* %i1, align 4
  %56 = srem i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %72

; <label>:58                                      ; preds = %51
  %59 = load i32* %j2, align 4
  %60 = srem i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

; <label>:62                                      ; preds = %58
  %63 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %64 = load i32* %write_ptr, align 4
  %65 = bitcast %class.ap_uint.0* %7 to i8*
  %66 = bitcast %class.ap_uint.0* %read_fil_out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 1, i32 1, i1 false)
  %67 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %68 = bitcast [1 x i8]* %67 to i8*
  %69 = load i8* %68, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %63, i32 %64, i8 %69)
  %70 = load i32* %write_ptr, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %write_ptr, align 4
  br label %72

; <label>:72                                      ; preds = %62, %58, %51
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i32* %j2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %j2, align 4
  br label %46

; <label>:76                                      ; preds = %46
  br label %77

; <label>:77                                      ; preds = %76
  %78 = load i32* %i1, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %i1, align 4
  br label %40

; <label>:80                                      ; preds = %40
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.1"*)

declare void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.1"*, %class.ap_uint.0*)

define internal void @_ZL136p_Z21xFPyrDownGaussianBlurILi256ELi256ELi0ELi1ELi1ELi0ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEitt_1RN3hls6streamI7ap_uintILi8EEEES4_S2_itt(%"class.hls::stream.1"* %_src, %"class.hls::stream.1"* %_dst, i8 %win_size.coerce, i32 %_border_type, i16 zeroext %imgheight, i16 zeroext %imgwidth) uwtable {
  %1 = alloca %"class.hls::stream.1"*, align 8
  %2 = alloca %"class.hls::stream.1"*, align 8
  %win_size = alloca %class.ap_uint.0, align 1
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_uint.0, align 1
  store %"class.hls::stream.1"* %_src, %"class.hls::stream.1"** %1, align 8
  store %"class.hls::stream.1"* %_dst, %"class.hls::stream.1"** %2, align 8
  %8 = getelementptr %class.ap_uint.0* %win_size, i32 0, i32 0
  %9 = bitcast [1 x i8]* %8 to i8*
  store i8 %win_size.coerce, i8* %9, align 1
  store i32 %_border_type, i32* %3, align 4
  store i16 %imgheight, i16* %4, align 2
  store i16 %imgwidth, i16* %5, align 2
  %10 = load i16* %4, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp sle i32 %11, 256
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %0
  %14 = load i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp sle i32 %15, 256
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %13
  br label %20

; <label>:18                                      ; preds = %13, %0
  call void @__assert_fail(i8* getelementptr inbounds ([99 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8]* @.str1, i32 0, i32 0), i32 301, i8* getelementptr inbounds ([267 x i8]* @__PRETTY_FUNCTION__._ZL136p_Z21xFPyrDownGaussianBlurILi256ELi256ELi0ELi1ELi1ELi0ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEitt_1RN3hls6streamI7ap_uintILi8EEEES4_S2_itt, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = bitcast %class.ap_uint.0* %6 to i8*
  %22 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 1, i32 1, i1 false)
  %23 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %24 = bitcast [1 x i8]* %23 to i8*
  %25 = load i8* %24, align 1
  %26 = call zeroext i1 @_ZleILi8EEb7ap_uintIXT_EEi(i8 %25, i32 5)
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %20
  br label %30

; <label>:28                                      ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([67 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8]* @.str1, i32 0, i32 0), i32 303, i8* getelementptr inbounds ([267 x i8]* @__PRETTY_FUNCTION__._ZL136p_Z21xFPyrDownGaussianBlurILi256ELi256ELi0ELi1ELi1ELi0ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEitt_1RN3hls6streamI7ap_uintILi8EEEES4_S2_itt, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %30

; <label>:30                                      ; preds = %29, %27
  %31 = load i16* %5, align 2
  %32 = zext i16 %31 to i32
  %33 = ashr i32 %32, 0
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %5, align 2
  %35 = load %"class.hls::stream.1"** %1, align 8
  %36 = load %"class.hls::stream.1"** %2, align 8
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %7, i32 5)
  %37 = load i16* %4, align 2
  %38 = load i16* %5, align 2
  %39 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %40 = bitcast [1 x i8]* %39 to i8*
  %41 = load i8* %40, align 1
  call void @_ZL139p_Z23xf_pyrdown_gaussian_nxnILi256ELi256ELi0ELi1ELi1ELi258ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEtt_1RN3hls6streamI7ap_uintILi8EEEES4_S2_tt(%"class.hls::stream.1"* %35, %"class.hls::stream.1"* %36, i8 %41, i16 zeroext %37, i16 zeroext %38)
  ret void
}

declare void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0*, i32)

declare i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.1"*)

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

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare zeroext i1 @_ZleILi8EEb7ap_uintIXT_EEi(i8, i32)

define internal void @_ZL139p_Z23xf_pyrdown_gaussian_nxnILi256ELi256ELi0ELi1ELi1ELi258ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEtt_1RN3hls6streamI7ap_uintILi8EEEES4_S2_tt(%"class.hls::stream.1"* %_src_mat, %"class.hls::stream.1"* %_out_mat, i8 %win_size.coerce, i16 zeroext %img_height, i16 zeroext %img_width) uwtable {
  %1 = alloca %"class.hls::stream.1"*, align 8
  %2 = alloca %"class.hls::stream.1"*, align 8
  %win_size = alloca %class.ap_uint.0, align 1
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %row_ind = alloca [5 x %class.ap_uint.2], align 1
  %buf_size = alloca %class.ap_uint.0, align 1
  %shift_x = alloca i16, align 2
  %row = alloca %class.ap_uint.2, align 1
  %col = alloca %class.ap_uint.2, align 1
  %OutputValues = alloca [1 x %class.ap_uint.0], align 1
  %src_buf = alloca [5 x [5 x %class.ap_uint.0]], align 16
  %P0 = alloca %class.ap_uint.0, align 1
  %buf = alloca [5 x [256 x %class.ap_uint.0]], align 16
  %init_row_ind = alloca i32, align 4
  %5 = alloca %class.ap_uint.0, align 1
  %init_buf = alloca i32, align 4
  %6 = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint.2, align 1
  %9 = alloca %class.ap_uint.0, align 1
  %10 = alloca %class.ap_uint.2, align 1
  %11 = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.2, align 1
  %13 = alloca %class.ap_uint.2, align 1
  %init_buf1 = alloca i32, align 4
  %14 = alloca %class.ap_uint.0, align 1
  %15 = alloca %class.ap_uint.0, align 1
  %16 = alloca %class.ap_uint.2, align 1
  %17 = alloca %class.ap_uint.0, align 1
  %18 = alloca %class.ap_uint.0, align 1
  %19 = alloca %class.ap_uint.2, align 1
  %20 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.0, align 1
  %22 = alloca %class.ap_uint.0, align 1
  %23 = alloca %class.ap_uint.2, align 1
  %24 = alloca %class.ap_uint.0, align 1
  %zero_ind = alloca %class.ap_uint.2, align 1
  %init_row_ind2 = alloca i32, align 4
  %25 = alloca %class.ap_uint.0, align 1
  %26 = alloca %class.ap_uint.2, align 1
  store %"class.hls::stream.1"* %_src_mat, %"class.hls::stream.1"** %1, align 8
  store %"class.hls::stream.1"* %_out_mat, %"class.hls::stream.1"** %2, align 8
  %27 = getelementptr %class.ap_uint.0* %win_size, i32 0, i32 0
  %28 = bitcast [1 x i8]* %27 to i8*
  store i8 %win_size.coerce, i8* %28, align 1
  store i16 %img_height, i16* %3, align 2
  store i16 %img_width, i16* %4, align 2
  %29 = getelementptr inbounds [5 x %class.ap_uint.2]* %row_ind, i32 0, i32 0
  %30 = getelementptr inbounds %class.ap_uint.2* %29, i64 5
  br label %31

; <label>:31                                      ; preds = %31, %0
  %32 = phi %class.ap_uint.2* [ %29, %0 ], [ %33, %31 ]
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %32)
  %33 = getelementptr inbounds %class.ap_uint.2* %32, i64 1
  %34 = icmp eq %class.ap_uint.2* %33, %30
  br i1 %34, label %35, label %31

; <label>:35                                      ; preds = %31
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %buf_size, i32 5)
  store i16 0, i16* %shift_x, align 2
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %row)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %col)
  %36 = getelementptr inbounds [1 x %class.ap_uint.0]* %OutputValues, i32 0, i32 0
  %37 = getelementptr inbounds %class.ap_uint.0* %36, i64 1
  br label %38

; <label>:38                                      ; preds = %38, %35
  %39 = phi %class.ap_uint.0* [ %36, %35 ], [ %40, %38 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %39)
  %40 = getelementptr inbounds %class.ap_uint.0* %39, i64 1
  %41 = icmp eq %class.ap_uint.0* %40, %37
  br i1 %41, label %42, label %38

; <label>:42                                      ; preds = %38
  %43 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %src_buf, i32 0, i32 0, i32 0
  %44 = getelementptr inbounds %class.ap_uint.0* %43, i64 25
  br label %45

; <label>:45                                      ; preds = %45, %42
  %46 = phi %class.ap_uint.0* [ %43, %42 ], [ %47, %45 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %46)
  %47 = getelementptr inbounds %class.ap_uint.0* %46, i64 1
  %48 = icmp eq %class.ap_uint.0* %47, %44
  br i1 %48, label %49, label %45

; <label>:49                                      ; preds = %45
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %P0)
  %50 = getelementptr inbounds [5 x [256 x %class.ap_uint.0]]* %buf, i32 0, i32 0, i32 0
  %51 = getelementptr inbounds %class.ap_uint.0* %50, i64 1280
  br label %52

; <label>:52                                      ; preds = %52, %49
  %53 = phi %class.ap_uint.0* [ %50, %49 ], [ %54, %52 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %53)
  %54 = getelementptr inbounds %class.ap_uint.0* %53, i64 1
  %55 = icmp eq %class.ap_uint.0* %54, %51
  br i1 %55, label %56, label %52

; <label>:56                                      ; preds = %52
  store i32 0, i32* %init_row_ind, align 4
  br label %57

; <label>:57                                      ; preds = %71, %56
  %58 = load i32* %init_row_ind, align 4
  %59 = bitcast %class.ap_uint.0* %5 to i8*
  %60 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 1, i32 1, i1 false)
  %61 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %62 = bitcast [1 x i8]* %61 to i8*
  %63 = load i8* %62, align 1
  %64 = call zeroext i1 @_ZltILi8EEbi7ap_uintIXT_EE(i32 %58, i8 %63)
  br i1 %64, label %65, label %74

; <label>:65                                      ; preds = %57
  %66 = load i32* %init_row_ind, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [5 x %class.ap_uint.2]* %row_ind, i32 0, i64 %67
  %69 = load i32* %init_row_ind, align 4
  %70 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %68, i32 %69)
  br label %71

; <label>:71                                      ; preds = %65
  %72 = load i32* %init_row_ind, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %init_row_ind, align 4
  br label %57

; <label>:74                                      ; preds = %57
  br label %75

; <label>:75                                      ; preds = %74
  %76 = bitcast %class.ap_uint.0* %6 to i8*
  %77 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 1, i32 1, i1 false)
  %78 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %79 = bitcast [1 x i8]* %78 to i8*
  %80 = load i8* %79, align 1
  %81 = call i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8 %80, i32 1)
  %82 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %83 = bitcast [1 x i8]* %82 to i8*
  store i8 %81, i8* %83, align 1
  %84 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %7)
  %85 = getelementptr inbounds [5 x %class.ap_uint.2]* %row_ind, i32 0, i64 %84
  %86 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %init_buf, align 4
  br label %88

; <label>:88                                      ; preds = %127, %75
  %89 = load i32* %init_buf, align 4
  %90 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %91 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %92 = bitcast [1 x i8]* %91 to i8*
  store i8 %90, i8* %92, align 1
  %93 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %9)
  %94 = getelementptr inbounds [5 x %class.ap_uint.2]* %row_ind, i32 0, i64 %93
  %95 = bitcast %class.ap_uint.2* %8 to i8*
  %96 = bitcast %class.ap_uint.2* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 2, i32 1, i1 false)
  %97 = getelementptr %class.ap_uint.2* %8, i32 0, i32 0
  %98 = bitcast [2 x i8]* %97 to i16*
  %99 = load i16* %98, align 1
  %100 = call zeroext i1 @_ZltILi13EEbi7ap_uintIXT_EE(i32 %89, i16 %99)
  br i1 %100, label %101, label %130

; <label>:101                                     ; preds = %88
  %102 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %col, i32 0)
  br label %103

; <label>:103                                     ; preds = %122, %101
  %104 = bitcast %class.ap_uint.2* %10 to i8*
  %105 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 2, i32 1, i1 false)
  %106 = load i16* %4, align 2
  %107 = getelementptr %class.ap_uint.2* %10, i32 0, i32 0
  %108 = bitcast [2 x i8]* %107 to i16*
  %109 = load i16* %108, align 1
  %110 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %109, i16 zeroext %106)
  br i1 %110, label %111, label %126

; <label>:111                                     ; preds = %103
  %112 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %113 = load i32* %init_buf, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [5 x [256 x %class.ap_uint.0]]* %buf, i32 0, i64 %114
  %116 = getelementptr inbounds [256 x %class.ap_uint.0]* %115, i32 0, i64 %112
  %117 = load %"class.hls::stream.1"** %1, align 8
  %118 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.1"* %117)
  %119 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %120 = bitcast [1 x i8]* %119 to i8*
  store i8 %118, i8* %120, align 1
  %121 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %116, %class.ap_uint.0* %11)
  br label %122

; <label>:122                                     ; preds = %111
  %123 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %col, i32 0)
  %124 = getelementptr %class.ap_uint.2* %12, i32 0, i32 0
  %125 = bitcast [2 x i8]* %124 to i16*
  store i16 %123, i16* %125, align 1
  br label %103

; <label>:126                                     ; preds = %103
  br label %127

; <label>:127                                     ; preds = %126
  %128 = load i32* %init_buf, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %init_buf, align 4
  br label %88

; <label>:130                                     ; preds = %88
  %131 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %col, i32 0)
  br label %132

; <label>:132                                     ; preds = %169, %130
  %133 = bitcast %class.ap_uint.2* %13 to i8*
  %134 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %133, i8* %134, i64 2, i32 1, i1 false)
  %135 = load i16* %4, align 2
  %136 = getelementptr %class.ap_uint.2* %13, i32 0, i32 0
  %137 = bitcast [2 x i8]* %136 to i16*
  %138 = load i16* %137, align 1
  %139 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %138, i16 zeroext %135)
  br i1 %139, label %140, label %173

; <label>:140                                     ; preds = %132
  store i32 0, i32* %init_buf1, align 4
  br label %141

; <label>:141                                     ; preds = %165, %140
  %142 = load i32* %init_buf1, align 4
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %144, label %168

; <label>:144                                     ; preds = %141
  %145 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %146 = load i32* %init_buf1, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [5 x [256 x %class.ap_uint.0]]* %buf, i32 0, i64 %147
  %149 = getelementptr inbounds [256 x %class.ap_uint.0]* %148, i32 0, i64 %145
  %150 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %151 = bitcast %class.ap_uint.0* %14 to i8*
  %152 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 1, i32 1, i1 false)
  %153 = getelementptr %class.ap_uint.0* %14, i32 0, i32 0
  %154 = bitcast [1 x i8]* %153 to i8*
  %155 = load i8* %154, align 1
  %156 = call i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8 %155, i32 1)
  %157 = getelementptr %class.ap_uint.0* %15, i32 0, i32 0
  %158 = bitcast [1 x i8]* %157 to i8*
  store i8 %156, i8* %158, align 1
  %159 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %15)
  %160 = getelementptr inbounds [5 x %class.ap_uint.2]* %row_ind, i32 0, i64 %159
  %161 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %160)
  %162 = getelementptr inbounds [5 x [256 x %class.ap_uint.0]]* %buf, i32 0, i64 %161
  %163 = getelementptr inbounds [256 x %class.ap_uint.0]* %162, i32 0, i64 %150
  %164 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %149, %class.ap_uint.0* %163)
  br label %165

; <label>:165                                     ; preds = %144
  %166 = load i32* %init_buf1, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %init_buf1, align 4
  br label %141

; <label>:168                                     ; preds = %141
  br label %169

; <label>:169                                     ; preds = %168
  %170 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %col, i32 0)
  %171 = getelementptr %class.ap_uint.2* %16, i32 0, i32 0
  %172 = bitcast [2 x i8]* %171 to i16*
  store i16 %170, i16* %172, align 1
  br label %132

; <label>:173                                     ; preds = %132
  br label %174

; <label>:174                                     ; preds = %173
  %175 = bitcast %class.ap_uint.0* %18 to i8*
  %176 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* %176, i64 1, i32 1, i1 false)
  %177 = getelementptr %class.ap_uint.0* %18, i32 0, i32 0
  %178 = bitcast [1 x i8]* %177 to i8*
  %179 = load i8* %178, align 1
  %180 = call i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8 %179, i32 1)
  %181 = getelementptr %class.ap_uint.0* %17, i32 0, i32 0
  %182 = bitcast [1 x i8]* %181 to i8*
  store i8 %180, i8* %182, align 1
  %183 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSILi8EEERS0_RKS_IXT_EE(%class.ap_uint.2* %row, %class.ap_uint.0* %17)
  br label %184

; <label>:184                                     ; preds = %251, %174
  %185 = bitcast %class.ap_uint.2* %19 to i8*
  %186 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %185, i8* %186, i64 2, i32 1, i1 false)
  %187 = load i16* %3, align 2
  %188 = bitcast %class.ap_uint.0* %22 to i8*
  %189 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %188, i8* %189, i64 1, i32 1, i1 false)
  %190 = getelementptr %class.ap_uint.0* %22, i32 0, i32 0
  %191 = bitcast [1 x i8]* %190 to i8*
  %192 = load i8* %191, align 1
  %193 = call i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8 %192, i32 1)
  %194 = getelementptr %class.ap_uint.0* %21, i32 0, i32 0
  %195 = bitcast [1 x i8]* %194 to i8*
  store i8 %193, i8* %195, align 1
  %196 = call i8 @_ZplILi8EE7ap_uintIXT_EEtRKS1_(i16 zeroext %187, %class.ap_uint.0* %21)
  %197 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %198 = bitcast [1 x i8]* %197 to i8*
  store i8 %196, i8* %198, align 1
  %199 = getelementptr %class.ap_uint.2* %19, i32 0, i32 0
  %200 = bitcast [2 x i8]* %199 to i16*
  %201 = load i16* %200, align 1
  %202 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %203 = bitcast [1 x i8]* %202 to i8*
  %204 = load i8* %203, align 1
  %205 = call zeroext i1 @_ZltILi13ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i16 %201, i8 %204)
  br i1 %205, label %206, label %255

; <label>:206                                     ; preds = %184
  %207 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %P0, i32 0)
  %208 = load %"class.hls::stream.1"** %1, align 8
  %209 = load %"class.hls::stream.1"** %2, align 8
  %210 = getelementptr inbounds [5 x [256 x %class.ap_uint.0]]* %buf, i32 0, i32 0
  %211 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %src_buf, i32 0, i32 0
  %212 = getelementptr inbounds [1 x %class.ap_uint.0]* %OutputValues, i32 0, i32 0
  %213 = load i16* %4, align 2
  %214 = load i16* %3, align 2
  %215 = getelementptr inbounds [5 x %class.ap_uint.2]* %row_ind, i32 0, i32 0
  %216 = bitcast %class.ap_uint.2* %23 to i8*
  %217 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %216, i8* %217, i64 2, i32 1, i1 false)
  %218 = bitcast %class.ap_uint.0* %24 to i8*
  %219 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %218, i8* %219, i64 1, i32 1, i1 false)
  %220 = getelementptr %class.ap_uint.2* %23, i32 0, i32 0
  %221 = bitcast [2 x i8]* %220 to i16*
  %222 = load i16* %221, align 1
  %223 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %224 = bitcast [1 x i8]* %223 to i8*
  %225 = load i8* %224, align 1
  call void @_ZL241p_Z24xFPyrDownprocessgaussianILi256ELi256ELi0ELi1ELi1ELi258ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEPA256_7ap_uintILi8EEPA5_7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EEttRtP7ap_uintILi13EE7ap_uintILi13EE7ap_uintILi8EE_1RN3hls6streamI7ap_uintILi8EEEES4_PA256_S2_PA5_S2_PS2_RS2_ttRtPS1_ILi13EESC_S2_(%"class.hls::stream.1"* %208, %"class.hls::stream.1"* %209, [256 x %class.ap_uint.0]* %210, [5 x %class.ap_uint.0]* %211, %class.ap_uint.0* %212, %class.ap_uint.0* %P0, i16 zeroext %213, i16 zeroext %214, i16* %shift_x, %class.ap_uint.2* %215, i16 %222, i8 %225)
  %226 = getelementptr inbounds [5 x %class.ap_uint.2]* %row_ind, i32 0, i64 0
  %227 = bitcast %class.ap_uint.2* %zero_ind to i8*
  %228 = bitcast %class.ap_uint.2* %226 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %227, i8* %228, i64 2, i32 1, i1 false)
  store i32 0, i32* %init_row_ind2, align 4
  br label %229

; <label>:229                                     ; preds = %241, %206
  %230 = load i32* %init_row_ind2, align 4
  %231 = icmp slt i32 %230, 4
  br i1 %231, label %232, label %244

; <label>:232                                     ; preds = %229
  %233 = load i32* %init_row_ind2, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [5 x %class.ap_uint.2]* %row_ind, i32 0, i64 %234
  %236 = load i32* %init_row_ind2, align 4
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [5 x %class.ap_uint.2]* %row_ind, i32 0, i64 %238
  %240 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.2* %235, %class.ap_uint.2* %239)
  br label %241

; <label>:241                                     ; preds = %232
  %242 = load i32* %init_row_ind2, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %init_row_ind2, align 4
  br label %229

; <label>:244                                     ; preds = %229
  %245 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %246 = getelementptr %class.ap_uint.0* %25, i32 0, i32 0
  %247 = bitcast [1 x i8]* %246 to i8*
  store i8 %245, i8* %247, align 1
  %248 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %25)
  %249 = getelementptr inbounds [5 x %class.ap_uint.2]* %row_ind, i32 0, i64 %248
  %250 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.2* %249, %class.ap_uint.2* %zero_ind)
  br label %251

; <label>:251                                     ; preds = %244
  %252 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %row, i32 0)
  %253 = getelementptr %class.ap_uint.2* %26, i32 0, i32 0
  %254 = bitcast [2 x i8]* %253 to i16*
  store i16 %252, i16* %254, align 1
  br label %184

; <label>:255                                     ; preds = %184
  ret void
}

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2*)

declare zeroext i1 @_ZltILi8EEbi7ap_uintIXT_EE(i32, i8)

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2*, i32)

declare i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8, i32)

declare i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2*)

declare zeroext i1 @_ZltILi13EEbi7ap_uintIXT_EE(i32, i16)

declare i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2*, i32)

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSILi8EEERS0_RKS_IXT_EE(%class.ap_uint.2*, %class.ap_uint.0*)

declare zeroext i1 @_ZltILi13ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i16, i8)

declare i8 @_ZplILi8EE7ap_uintIXT_EEtRKS1_(i16 zeroext, %class.ap_uint.0*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0*, i32)

define internal void @_ZL241p_Z24xFPyrDownprocessgaussianILi256ELi256ELi0ELi1ELi1ELi258ELi5ELi25ELi1EER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEPA256_7ap_uintILi8EEPA5_7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EEttRtP7ap_uintILi13EE7ap_uintILi13EE7ap_uintILi8EE_1RN3hls6streamI7ap_uintILi8EEEES4_PA256_S2_PA5_S2_PS2_RS2_ttRtPS1_ILi13EESC_S2_(%"class.hls::stream.1"* %_src_mat, %"class.hls::stream.1"* %_out_mat, [256 x %class.ap_uint.0]* %buf, [5 x %class.ap_uint.0]* %src_buf, %class.ap_uint.0* %OutputValues, %class.ap_uint.0* %P0, i16 zeroext %img_width, i16 zeroext %img_height, i16* %shift_x, %class.ap_uint.2* %row_ind, i16 %row.coerce, i8 %win_size.coerce) uwtable {
  %1 = alloca %"class.hls::stream.1"*, align 8
  %2 = alloca %"class.hls::stream.1"*, align 8
  %3 = alloca [256 x %class.ap_uint.0]*, align 8
  %4 = alloca [5 x %class.ap_uint.0]*, align 8
  %5 = alloca %class.ap_uint.0*, align 8
  %6 = alloca %class.ap_uint.0*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16*, align 8
  %10 = alloca %class.ap_uint.2*, align 8
  %row = alloca %class.ap_uint.2, align 2
  %win_size = alloca %class.ap_uint.0, align 1
  %buf_cop = alloca [5 x %class.ap_uint.0], align 1
  %npc = alloca i16, align 2
  %col = alloca %class.ap_uint.2, align 1
  %11 = alloca %class.ap_uint.2, align 1
  %12 = alloca %class.ap_uint.2, align 1
  %13 = alloca %class.ap_uint.2, align 1
  %14 = alloca %class.ap_uint.0, align 1
  %15 = alloca %class.ap_uint.0, align 1
  %16 = alloca %class.ap_uint.0, align 1
  %copy_buf_var = alloca i32, align 4
  %17 = alloca %class.ap_uint.2, align 1
  %18 = alloca %class.ap_int, align 1
  %19 = alloca %class.ap_uint.0, align 1
  %20 = alloca %class.ap_uint.2, align 1
  %21 = alloca i24
  %22 = alloca i24
  %23 = alloca %class.ap_uint.0, align 1
  %24 = alloca %class.ap_uint.2, align 1
  %25 = alloca %class.ap_int, align 1
  %26 = alloca i24
  %extract_px = alloca i32, align 4
  %27 = alloca %class.ap_uint.2, align 1
  %28 = alloca %class.ap_uint.0, align 1
  %29 = alloca %class.ap_uint.0, align 1
  %30 = alloca %class.ap_uint.0, align 1
  %31 = alloca %class.ap_uint.0, align 1
  %32 = alloca %class.ap_uint.2, align 1
  %33 = alloca %class.ap_uint.0, align 1
  %34 = alloca %class.ap_uint.0, align 1
  %wrap_buf = alloca i32, align 4
  %col_warp = alloca i32, align 4
  %35 = alloca %class.ap_uint.2, align 1
  %36 = alloca %class.ap_uint.0, align 1
  %37 = alloca %class.ap_uint.2, align 1
  store %"class.hls::stream.1"* %_src_mat, %"class.hls::stream.1"** %1, align 8
  store %"class.hls::stream.1"* %_out_mat, %"class.hls::stream.1"** %2, align 8
  store [256 x %class.ap_uint.0]* %buf, [256 x %class.ap_uint.0]** %3, align 8
  store [5 x %class.ap_uint.0]* %src_buf, [5 x %class.ap_uint.0]** %4, align 8
  store %class.ap_uint.0* %OutputValues, %class.ap_uint.0** %5, align 8
  store %class.ap_uint.0* %P0, %class.ap_uint.0** %6, align 8
  store i16 %img_width, i16* %7, align 2
  store i16 %img_height, i16* %8, align 2
  store i16* %shift_x, i16** %9, align 8
  store %class.ap_uint.2* %row_ind, %class.ap_uint.2** %10, align 8
  %38 = getelementptr %class.ap_uint.2* %row, i32 0, i32 0
  %39 = bitcast [2 x i8]* %38 to i16*
  store i16 %row.coerce, i16* %39, align 1
  %40 = getelementptr %class.ap_uint.0* %win_size, i32 0, i32 0
  %41 = bitcast [1 x i8]* %40 to i8*
  store i8 %win_size.coerce, i8* %41, align 1
  %42 = getelementptr inbounds [5 x %class.ap_uint.0]* %buf_cop, i32 0, i32 0
  %43 = getelementptr inbounds %class.ap_uint.0* %42, i64 5
  br label %44

; <label>:44                                      ; preds = %44, %0
  %45 = phi %class.ap_uint.0* [ %42, %0 ], [ %46, %44 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %45)
  %46 = getelementptr inbounds %class.ap_uint.0* %45, i64 1
  %47 = icmp eq %class.ap_uint.0* %46, %43
  br i1 %47, label %48, label %44

; <label>:48                                      ; preds = %44
  store i16 1, i16* %npc, align 2
  br label %49

; <label>:49                                      ; preds = %48
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.2* %col, i32 0)
  br label %50

; <label>:50                                      ; preds = %334, %49
  %51 = bitcast %class.ap_uint.2* %11 to i8*
  %52 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 2, i32 1, i1 false)
  %53 = load i16* %7, align 2
  %54 = zext i16 %53 to i32
  %55 = add nsw i32 %54, 2
  %56 = getelementptr %class.ap_uint.2* %11, i32 0, i32 0
  %57 = bitcast [2 x i8]* %56 to i16*
  %58 = load i16* %57, align 1
  %59 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %58, i32 %55)
  br i1 %59, label %60, label %338

; <label>:60                                      ; preds = %50
  %61 = bitcast %class.ap_uint.2* %12 to i8*
  %62 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 2, i32 1, i1 false)
  %63 = load i16* %8, align 2
  %64 = getelementptr %class.ap_uint.2* %12, i32 0, i32 0
  %65 = bitcast [2 x i8]* %64 to i16*
  %66 = load i16* %65, align 1
  %67 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %66, i16 zeroext %63)
  br i1 %67, label %68, label %93

; <label>:68                                      ; preds = %60
  %69 = bitcast %class.ap_uint.2* %13 to i8*
  %70 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 2, i32 1, i1 false)
  %71 = load i16* %7, align 2
  %72 = getelementptr %class.ap_uint.2* %13, i32 0, i32 0
  %73 = bitcast [2 x i8]* %72 to i16*
  %74 = load i16* %73, align 1
  %75 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %74, i16 zeroext %71)
  br i1 %75, label %76, label %93

; <label>:76                                      ; preds = %68
  %77 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %78 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %79 = getelementptr %class.ap_uint.0* %14, i32 0, i32 0
  %80 = bitcast [1 x i8]* %79 to i8*
  store i8 %78, i8* %80, align 1
  %81 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %14)
  %82 = load %class.ap_uint.2** %10, align 8
  %83 = getelementptr inbounds %class.ap_uint.2* %82, i64 %81
  %84 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %83)
  %85 = load [256 x %class.ap_uint.0]** %3, align 8
  %86 = getelementptr inbounds [256 x %class.ap_uint.0]* %85, i64 %84
  %87 = getelementptr inbounds [256 x %class.ap_uint.0]* %86, i32 0, i64 %77
  %88 = load %"class.hls::stream.1"** %1, align 8
  %89 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.1"* %88)
  %90 = getelementptr %class.ap_uint.0* %15, i32 0, i32 0
  %91 = bitcast [1 x i8]* %90 to i8*
  store i8 %89, i8* %91, align 1
  %92 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %87, %class.ap_uint.0* %15)
  br label %106

; <label>:93                                      ; preds = %68, %60
  %94 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %95 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %96 = getelementptr %class.ap_uint.0* %16, i32 0, i32 0
  %97 = bitcast [1 x i8]* %96 to i8*
  store i8 %95, i8* %97, align 1
  %98 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %16)
  %99 = load %class.ap_uint.2** %10, align 8
  %100 = getelementptr inbounds %class.ap_uint.2* %99, i64 %98
  %101 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %100)
  %102 = load [256 x %class.ap_uint.0]** %3, align 8
  %103 = getelementptr inbounds [256 x %class.ap_uint.0]* %102, i64 %101
  %104 = getelementptr inbounds [256 x %class.ap_uint.0]* %103, i32 0, i64 %94
  %105 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %104, i32 0)
  br label %106

; <label>:106                                     ; preds = %93, %76
  store i32 0, i32* %copy_buf_var, align 4
  br label %107

; <label>:107                                     ; preds = %193, %106
  %108 = load i32* %copy_buf_var, align 4
  %109 = icmp slt i32 %108, 5
  br i1 %109, label %110, label %196

; <label>:110                                     ; preds = %107
  %111 = bitcast %class.ap_uint.2* %17 to i8*
  %112 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 2, i32 1, i1 false)
  %113 = load i16* %8, align 2
  %114 = zext i16 %113 to i32
  %115 = sub nsw i32 %114, 1
  %116 = getelementptr %class.ap_uint.2* %17, i32 0, i32 0
  %117 = bitcast [2 x i8]* %116 to i16*
  %118 = load i16* %117, align 1
  %119 = call zeroext i1 @_ZgtILi13EEb7ap_uintIXT_EEi(i16 %118, i32 %115)
  br i1 %119, label %120, label %178

; <label>:120                                     ; preds = %110
  %121 = load i32* %copy_buf_var, align 4
  %122 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %123 = getelementptr %class.ap_uint.0* %19, i32 0, i32 0
  %124 = bitcast [1 x i8]* %123 to i8*
  store i8 %122, i8* %124, align 1
  %125 = load i16* %8, align 2
  %126 = zext i16 %125 to i32
  %127 = sub nsw i32 %126, 1
  %128 = call i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %row, i32 %127)
  %129 = getelementptr %class.ap_uint.2* %20, i32 0, i32 0
  %130 = bitcast [2 x i8]* %129 to i16*
  store i16 %128, i16* %130, align 1
  %131 = getelementptr %class.ap_uint.0* %19, i32 0, i32 0
  %132 = bitcast [1 x i8]* %131 to i8*
  %133 = load i8* %132, align 1
  %134 = getelementptr %class.ap_uint.2* %20, i32 0, i32 0
  %135 = bitcast [2 x i8]* %134 to i16*
  %136 = load i16* %135, align 1
  %137 = call i24 @_ZmiILi8ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %133, i16 %136)
  %138 = getelementptr %class.ap_int* %18, i32 0, i32 0
  store i24 %137, i24* %21
  %139 = bitcast i24* %21 to [3 x i8]*
  %140 = load [3 x i8]* %139, align 1
  store [3 x i8] %140, [3 x i8]* %138
  %141 = getelementptr %class.ap_int* %18, i32 0, i32 0
  %142 = bitcast i24* %22 to [3 x i8]*
  %143 = load [3 x i8]* %141
  store [3 x i8] %143, [3 x i8]* %142, align 1
  %144 = load i24* %22
  %145 = call zeroext i1 @_ZgtILi21EEbi6ap_intIXT_EE(i32 %121, i24 %144)
  br i1 %145, label %146, label %178

; <label>:146                                     ; preds = %120
  %147 = load i32* %copy_buf_var, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [5 x %class.ap_uint.0]* %buf_cop, i32 0, i64 %148
  %150 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %151 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %152 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %153 = bitcast [1 x i8]* %152 to i8*
  store i8 %151, i8* %153, align 1
  %154 = load i16* %8, align 2
  %155 = zext i16 %154 to i32
  %156 = sub nsw i32 %155, 1
  %157 = call i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %row, i32 %156)
  %158 = getelementptr %class.ap_uint.2* %24, i32 0, i32 0
  %159 = bitcast [2 x i8]* %158 to i16*
  store i16 %157, i16* %159, align 1
  %160 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %161 = bitcast [1 x i8]* %160 to i8*
  %162 = load i8* %161, align 1
  %163 = getelementptr %class.ap_uint.2* %24, i32 0, i32 0
  %164 = bitcast [2 x i8]* %163 to i16*
  %165 = load i16* %164, align 1
  %166 = call i24 @_ZmiILi8ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %162, i16 %165)
  %167 = getelementptr %class.ap_int* %25, i32 0, i32 0
  store i24 %166, i24* %26
  %168 = bitcast i24* %26 to [3 x i8]*
  %169 = load [3 x i8]* %168, align 1
  store [3 x i8] %169, [3 x i8]* %167
  %170 = call i64 @_ZNK6ap_intILi21EEcvlEv(%class.ap_int* %25)
  %171 = load %class.ap_uint.2** %10, align 8
  %172 = getelementptr inbounds %class.ap_uint.2* %171, i64 %170
  %173 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %172)
  %174 = load [256 x %class.ap_uint.0]** %3, align 8
  %175 = getelementptr inbounds [256 x %class.ap_uint.0]* %174, i64 %173
  %176 = getelementptr inbounds [256 x %class.ap_uint.0]* %175, i32 0, i64 %150
  %177 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %149, %class.ap_uint.0* %176)
  br label %192

; <label>:178                                     ; preds = %120, %110
  %179 = load i32* %copy_buf_var, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [5 x %class.ap_uint.0]* %buf_cop, i32 0, i64 %180
  %182 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %183 = load i32* %copy_buf_var, align 4
  %184 = sext i32 %183 to i64
  %185 = load %class.ap_uint.2** %10, align 8
  %186 = getelementptr inbounds %class.ap_uint.2* %185, i64 %184
  %187 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %186)
  %188 = load [256 x %class.ap_uint.0]** %3, align 8
  %189 = getelementptr inbounds [256 x %class.ap_uint.0]* %188, i64 %187
  %190 = getelementptr inbounds [256 x %class.ap_uint.0]* %189, i32 0, i64 %182
  %191 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %181, %class.ap_uint.0* %190)
  br label %192

; <label>:192                                     ; preds = %178, %146
  br label %193

; <label>:193                                     ; preds = %192
  %194 = load i32* %copy_buf_var, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %copy_buf_var, align 4
  br label %107

; <label>:196                                     ; preds = %107
  store i32 0, i32* %extract_px, align 4
  br label %197

; <label>:197                                     ; preds = %243, %196
  %198 = load i32* %extract_px, align 4
  %199 = icmp slt i32 %198, 5
  br i1 %199, label %200, label %246

; <label>:200                                     ; preds = %197
  %201 = bitcast %class.ap_uint.2* %27 to i8*
  %202 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* %202, i64 2, i32 1, i1 false)
  %203 = load i16* %7, align 2
  %204 = getelementptr %class.ap_uint.2* %27, i32 0, i32 0
  %205 = bitcast [2 x i8]* %204 to i16*
  %206 = load i16* %205, align 1
  %207 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %206, i16 zeroext %203)
  br i1 %207, label %208, label %222

; <label>:208                                     ; preds = %200
  %209 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %210 = getelementptr %class.ap_uint.0* %28, i32 0, i32 0
  %211 = bitcast [1 x i8]* %210 to i8*
  store i8 %209, i8* %211, align 1
  %212 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %28)
  %213 = load i32* %extract_px, align 4
  %214 = sext i32 %213 to i64
  %215 = load [5 x %class.ap_uint.0]** %4, align 8
  %216 = getelementptr inbounds [5 x %class.ap_uint.0]* %215, i64 %214
  %217 = getelementptr inbounds [5 x %class.ap_uint.0]* %216, i32 0, i64 %212
  %218 = load i32* %extract_px, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [5 x %class.ap_uint.0]* %buf_cop, i32 0, i64 %219
  %221 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %217, %class.ap_uint.0* %220)
  br label %242

; <label>:222                                     ; preds = %200
  %223 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %224 = getelementptr %class.ap_uint.0* %29, i32 0, i32 0
  %225 = bitcast [1 x i8]* %224 to i8*
  store i8 %223, i8* %225, align 1
  %226 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %29)
  %227 = load i32* %extract_px, align 4
  %228 = sext i32 %227 to i64
  %229 = load [5 x %class.ap_uint.0]** %4, align 8
  %230 = getelementptr inbounds [5 x %class.ap_uint.0]* %229, i64 %228
  %231 = getelementptr inbounds [5 x %class.ap_uint.0]* %230, i32 0, i64 %226
  %232 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 2)
  %233 = getelementptr %class.ap_uint.0* %30, i32 0, i32 0
  %234 = bitcast [1 x i8]* %233 to i8*
  store i8 %232, i8* %234, align 1
  %235 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %30)
  %236 = load i32* %extract_px, align 4
  %237 = sext i32 %236 to i64
  %238 = load [5 x %class.ap_uint.0]** %4, align 8
  %239 = getelementptr inbounds [5 x %class.ap_uint.0]* %238, i64 %237
  %240 = getelementptr inbounds [5 x %class.ap_uint.0]* %239, i32 0, i64 %235
  %241 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %231, %class.ap_uint.0* %240)
  br label %242

; <label>:242                                     ; preds = %222, %208
  br label %243

; <label>:243                                     ; preds = %242
  %244 = load i32* %extract_px, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %extract_px, align 4
  br label %197

; <label>:246                                     ; preds = %197
  %247 = load %class.ap_uint.0** %5, align 8
  %248 = load [5 x %class.ap_uint.0]** %4, align 8
  %249 = bitcast %class.ap_uint.0* %31 to i8*
  %250 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %249, i8* %250, i64 1, i32 1, i1 false)
  %251 = getelementptr %class.ap_uint.0* %31, i32 0, i32 0
  %252 = bitcast [1 x i8]* %251 to i8*
  %253 = load i8* %252, align 1
  call void @_ZL97p_Z20xFPyrDownApplykernelILi1ELi0ELi5ELi25ELi1EEP7ap_uintILi8EEPA5_7ap_uintILi8EE7ap_uintILi8EE_1P7ap_uintILi8EEPA5_S0_S0_(%class.ap_uint.0* %247, [5 x %class.ap_uint.0]* %248, i8 %253)
  %254 = bitcast %class.ap_uint.2* %32 to i8*
  %255 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %254, i8* %255, i64 2, i32 1, i1 false)
  %256 = bitcast %class.ap_uint.0* %34 to i8*
  %257 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %256, i8* %257, i64 1, i32 1, i1 false)
  %258 = getelementptr %class.ap_uint.0* %34, i32 0, i32 0
  %259 = bitcast [1 x i8]* %258 to i8*
  %260 = load i8* %259, align 1
  %261 = call i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8 %260, i32 1)
  %262 = getelementptr %class.ap_uint.0* %33, i32 0, i32 0
  %263 = bitcast [1 x i8]* %262 to i8*
  store i8 %261, i8* %263, align 1
  %264 = getelementptr %class.ap_uint.2* %32, i32 0, i32 0
  %265 = bitcast [2 x i8]* %264 to i16*
  %266 = load i16* %265, align 1
  %267 = getelementptr %class.ap_uint.0* %33, i32 0, i32 0
  %268 = bitcast [1 x i8]* %267 to i8*
  %269 = load i8* %268, align 1
  %270 = call zeroext i1 @_ZgeILi13ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i16 %266, i8 %269)
  br i1 %270, label %271, label %275

; <label>:271                                     ; preds = %246
  %272 = load %"class.hls::stream.1"** %2, align 8
  %273 = load %class.ap_uint.0** %5, align 8
  %274 = getelementptr inbounds %class.ap_uint.0* %273, i64 0
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.1"* %272, %class.ap_uint.0* %274)
  br label %275

; <label>:275                                     ; preds = %271, %246
  store i32 0, i32* %wrap_buf, align 4
  br label %276

; <label>:276                                     ; preds = %330, %275
  %277 = load i32* %wrap_buf, align 4
  %278 = icmp slt i32 %277, 5
  br i1 %278, label %279, label %333

; <label>:279                                     ; preds = %276
  store i32 0, i32* %col_warp, align 4
  br label %280

; <label>:280                                     ; preds = %326, %279
  %281 = load i32* %col_warp, align 4
  %282 = icmp slt i32 %281, 4
  br i1 %282, label %283, label %329

; <label>:283                                     ; preds = %280
  %284 = bitcast %class.ap_uint.2* %35 to i8*
  %285 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %284, i8* %285, i64 2, i32 1, i1 false)
  %286 = getelementptr %class.ap_uint.2* %35, i32 0, i32 0
  %287 = bitcast [2 x i8]* %286 to i16*
  %288 = load i16* %287, align 1
  %289 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %288, i32 0)
  br i1 %289, label %290, label %308

; <label>:290                                     ; preds = %283
  %291 = load i32* %col_warp, align 4
  %292 = sext i32 %291 to i64
  %293 = load i32* %wrap_buf, align 4
  %294 = sext i32 %293 to i64
  %295 = load [5 x %class.ap_uint.0]** %4, align 8
  %296 = getelementptr inbounds [5 x %class.ap_uint.0]* %295, i64 %294
  %297 = getelementptr inbounds [5 x %class.ap_uint.0]* %296, i32 0, i64 %292
  %298 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %299 = getelementptr %class.ap_uint.0* %36, i32 0, i32 0
  %300 = bitcast [1 x i8]* %299 to i8*
  store i8 %298, i8* %300, align 1
  %301 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %36)
  %302 = load i32* %wrap_buf, align 4
  %303 = sext i32 %302 to i64
  %304 = load [5 x %class.ap_uint.0]** %4, align 8
  %305 = getelementptr inbounds [5 x %class.ap_uint.0]* %304, i64 %303
  %306 = getelementptr inbounds [5 x %class.ap_uint.0]* %305, i32 0, i64 %301
  %307 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %297, %class.ap_uint.0* %306)
  br label %325

; <label>:308                                     ; preds = %283
  %309 = load i32* %col_warp, align 4
  %310 = sext i32 %309 to i64
  %311 = load i32* %wrap_buf, align 4
  %312 = sext i32 %311 to i64
  %313 = load [5 x %class.ap_uint.0]** %4, align 8
  %314 = getelementptr inbounds [5 x %class.ap_uint.0]* %313, i64 %312
  %315 = getelementptr inbounds [5 x %class.ap_uint.0]* %314, i32 0, i64 %310
  %316 = load i32* %col_warp, align 4
  %317 = add nsw i32 %316, 1
  %318 = sext i32 %317 to i64
  %319 = load i32* %wrap_buf, align 4
  %320 = sext i32 %319 to i64
  %321 = load [5 x %class.ap_uint.0]** %4, align 8
  %322 = getelementptr inbounds [5 x %class.ap_uint.0]* %321, i64 %320
  %323 = getelementptr inbounds [5 x %class.ap_uint.0]* %322, i32 0, i64 %318
  %324 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %315, %class.ap_uint.0* %323)
  br label %325

; <label>:325                                     ; preds = %308, %290
  br label %326

; <label>:326                                     ; preds = %325
  %327 = load i32* %col_warp, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %col_warp, align 4
  br label %280

; <label>:329                                     ; preds = %280
  br label %330

; <label>:330                                     ; preds = %329
  %331 = load i32* %wrap_buf, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %wrap_buf, align 4
  br label %276

; <label>:333                                     ; preds = %276
  br label %334

; <label>:334                                     ; preds = %333
  %335 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %col, i32 0)
  %336 = getelementptr %class.ap_uint.2* %37, i32 0, i32 0
  %337 = bitcast [2 x i8]* %336 to i16*
  store i16 %335, i16* %337, align 1
  br label %50

; <label>:338                                     ; preds = %50
  ret void
}

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.2*, %class.ap_uint.2*)

declare void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.2*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16, i32)

declare zeroext i1 @_ZgtILi13EEb7ap_uintIXT_EEi(i16, i32)

declare zeroext i1 @_ZgtILi21EEbi6ap_intIXT_EE(i32, i24)

declare i24 @_ZmiILi8ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8, i16)

declare i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2*, i32)

declare i64 @_ZNK6ap_intILi21EEcvlEv(%class.ap_int*)

define internal void @_ZL97p_Z20xFPyrDownApplykernelILi1ELi0ELi5ELi25ELi1EEP7ap_uintILi8EEPA5_7ap_uintILi8EE7ap_uintILi8EE_1P7ap_uintILi8EEPA5_S0_S0_(%class.ap_uint.0* %OutputValues, [5 x %class.ap_uint.0]* %src_buf, i8 %win_size.coerce) uwtable {
  %1 = alloca %class.ap_uint.0*, align 8
  %2 = alloca [5 x %class.ap_uint.0]*, align 8
  %win_size = alloca %class.ap_uint.0, align 1
  %array = alloca [25 x %class.ap_uint.3], align 16
  %array_ptr = alloca i32, align 4
  %copy_arr = alloca i32, align 4
  %copy_in = alloca i32, align 4
  %out_pixel = alloca %class.ap_uint.3, align 1
  %k = alloca [25 x i32], align 16
  %_l_i = alloca i32, align 4
  %_l_k = alloca i32, align 4
  %3 = alloca %class.ap_uint.3, align 1
  %4 = alloca %class.ap_uint.3, align 1
  store %class.ap_uint.0* %OutputValues, %class.ap_uint.0** %1, align 8
  store [5 x %class.ap_uint.0]* %src_buf, [5 x %class.ap_uint.0]** %2, align 8
  %5 = getelementptr %class.ap_uint.0* %win_size, i32 0, i32 0
  %6 = bitcast [1 x i8]* %5 to i8*
  store i8 %win_size.coerce, i8* %6, align 1
  %7 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i32 0
  %8 = getelementptr inbounds %class.ap_uint.3* %7, i64 25
  br label %9

; <label>:9                                       ; preds = %9, %0
  %10 = phi %class.ap_uint.3* [ %7, %0 ], [ %11, %9 ]
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.3* %10)
  %11 = getelementptr inbounds %class.ap_uint.3* %10, i64 1
  %12 = icmp eq %class.ap_uint.3* %11, %8
  br i1 %12, label %13, label %9

; <label>:13                                      ; preds = %9
  store i32 0, i32* %array_ptr, align 4
  br label %14

; <label>:14                                      ; preds = %13
  store i32 0, i32* %copy_arr, align 4
  br label %15

; <label>:15                                      ; preds = %40, %14
  %16 = load i32* %copy_arr, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %43

; <label>:18                                      ; preds = %15
  store i32 0, i32* %copy_in, align 4
  br label %19

; <label>:19                                      ; preds = %36, %18
  %20 = load i32* %copy_in, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %39

; <label>:22                                      ; preds = %19
  %23 = load i32* %array_ptr, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 %24
  %26 = load i32* %copy_in, align 4
  %27 = sext i32 %26 to i64
  %28 = load i32* %copy_arr, align 4
  %29 = sext i32 %28 to i64
  %30 = load [5 x %class.ap_uint.0]** %2, align 8
  %31 = getelementptr inbounds [5 x %class.ap_uint.0]* %30, i64 %29
  %32 = getelementptr inbounds [5 x %class.ap_uint.0]* %31, i32 0, i64 %27
  %33 = call %class.ap_uint.3* @_ZN7ap_uintILi32EEaSILi8EEERS0_RKS_IXT_EE(%class.ap_uint.3* %25, %class.ap_uint.0* %32)
  %34 = load i32* %array_ptr, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %array_ptr, align 4
  br label %36

; <label>:36                                      ; preds = %22
  %37 = load i32* %copy_in, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %copy_in, align 4
  br label %19

; <label>:39                                      ; preds = %19
  br label %40

; <label>:40                                      ; preds = %39
  %41 = load i32* %copy_arr, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %copy_arr, align 4
  br label %15

; <label>:43                                      ; preds = %15
  call void @_ZN7ap_uintILi32EEC1Ei(%class.ap_uint.3* %out_pixel, i32 0)
  %44 = bitcast [25 x i32]* %k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* bitcast ([25 x i32]* @_ZZL97p_Z20xFPyrDownApplykernelILi1ELi0ELi5ELi25ELi1EEP7ap_uintILi8EEPA5_7ap_uintILi8EE7ap_uintILi8EE_1P7ap_uintILi8EEPA5_S0_S0_E1k to i8*), i64 100, i32 16, i1 false)
  store i32 0, i32* %_l_i, align 4
  store i32 0, i32* %_l_k, align 4
  store i32 0, i32* %_l_i, align 4
  br label %45

; <label>:45                                      ; preds = %316, %43
  %46 = load i32* %_l_i, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %319

; <label>:48                                      ; preds = %45
  %49 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 0
  %50 = load i32* %_l_k, align 4
  %51 = add nsw i32 %50, 7
  %52 = load i32* %_l_k, align 4
  %53 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %49, i32 %51, i32 %52)
  %54 = load i64* %53
  %55 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 4
  %56 = load i32* %_l_k, align 4
  %57 = add nsw i32 %56, 7
  %58 = load i32* %_l_k, align 4
  %59 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %55, i32 %57, i32 %58)
  %60 = load i64* %59
  %61 = add i64 %54, %60
  %62 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 20
  %63 = load i32* %_l_k, align 4
  %64 = add nsw i32 %63, 7
  %65 = load i32* %_l_k, align 4
  %66 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %62, i32 %64, i32 %65)
  %67 = load i64* %66
  %68 = add i64 %61, %67
  %69 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 24
  %70 = load i32* %_l_k, align 4
  %71 = add nsw i32 %70, 7
  %72 = load i32* %_l_k, align 4
  %73 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %69, i32 %71, i32 %72)
  %74 = load i64* %73
  %75 = add i64 %68, %74
  %76 = call %class.ap_uint.3* @_ZN7ap_uintILi32EEaSEm(%class.ap_uint.3* %out_pixel, i64 %75)
  %77 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 1
  %78 = load i32* %_l_k, align 4
  %79 = add nsw i32 %78, 7
  %80 = load i32* %_l_k, align 4
  %81 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %77, i32 %79, i32 %80)
  %82 = load i64* %81
  %83 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 3
  %84 = load i32* %_l_k, align 4
  %85 = add nsw i32 %84, 7
  %86 = load i32* %_l_k, align 4
  %87 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %83, i32 %85, i32 %86)
  %88 = load i64* %87
  %89 = add i64 %82, %88
  %90 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 5
  %91 = load i32* %_l_k, align 4
  %92 = add nsw i32 %91, 7
  %93 = load i32* %_l_k, align 4
  %94 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %90, i32 %92, i32 %93)
  %95 = load i64* %94
  %96 = add i64 %89, %95
  %97 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 9
  %98 = load i32* %_l_k, align 4
  %99 = add nsw i32 %98, 7
  %100 = load i32* %_l_k, align 4
  %101 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %97, i32 %99, i32 %100)
  %102 = load i64* %101
  %103 = add i64 %96, %102
  %104 = shl i64 %103, 2
  %105 = call %class.ap_uint.3* @_ZpLILi32EER7ap_uintIXT_EES2_m(%class.ap_uint.3* %out_pixel, i64 %104)
  %106 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 21
  %107 = load i32* %_l_k, align 4
  %108 = add nsw i32 %107, 7
  %109 = load i32* %_l_k, align 4
  %110 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %106, i32 %108, i32 %109)
  %111 = load i64* %110
  %112 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 23
  %113 = load i32* %_l_k, align 4
  %114 = add nsw i32 %113, 7
  %115 = load i32* %_l_k, align 4
  %116 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %112, i32 %114, i32 %115)
  %117 = load i64* %116
  %118 = add i64 %111, %117
  %119 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 15
  %120 = load i32* %_l_k, align 4
  %121 = add nsw i32 %120, 7
  %122 = load i32* %_l_k, align 4
  %123 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %119, i32 %121, i32 %122)
  %124 = load i64* %123
  %125 = add i64 %118, %124
  %126 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 19
  %127 = load i32* %_l_k, align 4
  %128 = add nsw i32 %127, 7
  %129 = load i32* %_l_k, align 4
  %130 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %126, i32 %128, i32 %129)
  %131 = load i64* %130
  %132 = add i64 %125, %131
  %133 = shl i64 %132, 2
  %134 = call %class.ap_uint.3* @_ZpLILi32EER7ap_uintIXT_EES2_m(%class.ap_uint.3* %out_pixel, i64 %133)
  %135 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 2
  %136 = load i32* %_l_k, align 4
  %137 = add nsw i32 %136, 7
  %138 = load i32* %_l_k, align 4
  %139 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %135, i32 %137, i32 %138)
  %140 = load i64* %139
  %141 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 10
  %142 = load i32* %_l_k, align 4
  %143 = add nsw i32 %142, 7
  %144 = load i32* %_l_k, align 4
  %145 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %141, i32 %143, i32 %144)
  %146 = load i64* %145
  %147 = add i64 %140, %146
  %148 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 14
  %149 = load i32* %_l_k, align 4
  %150 = add nsw i32 %149, 7
  %151 = load i32* %_l_k, align 4
  %152 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %148, i32 %150, i32 %151)
  %153 = load i64* %152
  %154 = add i64 %147, %153
  %155 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 22
  %156 = load i32* %_l_k, align 4
  %157 = add nsw i32 %156, 7
  %158 = load i32* %_l_k, align 4
  %159 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %155, i32 %157, i32 %158)
  %160 = load i64* %159
  %161 = add i64 %154, %160
  %162 = shl i64 %161, 2
  %163 = call %class.ap_uint.3* @_ZpLILi32EER7ap_uintIXT_EES2_m(%class.ap_uint.3* %out_pixel, i64 %162)
  %164 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 2
  %165 = load i32* %_l_k, align 4
  %166 = add nsw i32 %165, 7
  %167 = load i32* %_l_k, align 4
  %168 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %164, i32 %166, i32 %167)
  %169 = load i64* %168
  %170 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 10
  %171 = load i32* %_l_k, align 4
  %172 = add nsw i32 %171, 7
  %173 = load i32* %_l_k, align 4
  %174 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %170, i32 %172, i32 %173)
  %175 = load i64* %174
  %176 = add i64 %169, %175
  %177 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 14
  %178 = load i32* %_l_k, align 4
  %179 = add nsw i32 %178, 7
  %180 = load i32* %_l_k, align 4
  %181 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %177, i32 %179, i32 %180)
  %182 = load i64* %181
  %183 = add i64 %176, %182
  %184 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 22
  %185 = load i32* %_l_k, align 4
  %186 = add nsw i32 %185, 7
  %187 = load i32* %_l_k, align 4
  %188 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %184, i32 %186, i32 %187)
  %189 = load i64* %188
  %190 = add i64 %183, %189
  %191 = shl i64 %190, 1
  %192 = call %class.ap_uint.3* @_ZpLILi32EER7ap_uintIXT_EES2_m(%class.ap_uint.3* %out_pixel, i64 %191)
  %193 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 6
  %194 = load i32* %_l_k, align 4
  %195 = add nsw i32 %194, 7
  %196 = load i32* %_l_k, align 4
  %197 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %193, i32 %195, i32 %196)
  %198 = load i64* %197
  %199 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 8
  %200 = load i32* %_l_k, align 4
  %201 = add nsw i32 %200, 7
  %202 = load i32* %_l_k, align 4
  %203 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %199, i32 %201, i32 %202)
  %204 = load i64* %203
  %205 = add i64 %198, %204
  %206 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 16
  %207 = load i32* %_l_k, align 4
  %208 = add nsw i32 %207, 7
  %209 = load i32* %_l_k, align 4
  %210 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %206, i32 %208, i32 %209)
  %211 = load i64* %210
  %212 = add i64 %205, %211
  %213 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 18
  %214 = load i32* %_l_k, align 4
  %215 = add nsw i32 %214, 7
  %216 = load i32* %_l_k, align 4
  %217 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %213, i32 %215, i32 %216)
  %218 = load i64* %217
  %219 = add i64 %212, %218
  %220 = shl i64 %219, 4
  %221 = call %class.ap_uint.3* @_ZpLILi32EER7ap_uintIXT_EES2_m(%class.ap_uint.3* %out_pixel, i64 %220)
  %222 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 7
  %223 = load i32* %_l_k, align 4
  %224 = add nsw i32 %223, 7
  %225 = load i32* %_l_k, align 4
  %226 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %222, i32 %224, i32 %225)
  %227 = load i64* %226
  %228 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 11
  %229 = load i32* %_l_k, align 4
  %230 = add nsw i32 %229, 7
  %231 = load i32* %_l_k, align 4
  %232 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %228, i32 %230, i32 %231)
  %233 = load i64* %232
  %234 = add i64 %227, %233
  %235 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 13
  %236 = load i32* %_l_k, align 4
  %237 = add nsw i32 %236, 7
  %238 = load i32* %_l_k, align 4
  %239 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %235, i32 %237, i32 %238)
  %240 = load i64* %239
  %241 = add i64 %234, %240
  %242 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 17
  %243 = load i32* %_l_k, align 4
  %244 = add nsw i32 %243, 7
  %245 = load i32* %_l_k, align 4
  %246 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %242, i32 %244, i32 %245)
  %247 = load i64* %246
  %248 = add i64 %241, %247
  %249 = shl i64 %248, 4
  %250 = call %class.ap_uint.3* @_ZpLILi32EER7ap_uintIXT_EES2_m(%class.ap_uint.3* %out_pixel, i64 %249)
  %251 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 7
  %252 = load i32* %_l_k, align 4
  %253 = add nsw i32 %252, 7
  %254 = load i32* %_l_k, align 4
  %255 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %251, i32 %253, i32 %254)
  %256 = load i64* %255
  %257 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 11
  %258 = load i32* %_l_k, align 4
  %259 = add nsw i32 %258, 7
  %260 = load i32* %_l_k, align 4
  %261 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %257, i32 %259, i32 %260)
  %262 = load i64* %261
  %263 = add i64 %256, %262
  %264 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 13
  %265 = load i32* %_l_k, align 4
  %266 = add nsw i32 %265, 7
  %267 = load i32* %_l_k, align 4
  %268 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %264, i32 %266, i32 %267)
  %269 = load i64* %268
  %270 = add i64 %263, %269
  %271 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 17
  %272 = load i32* %_l_k, align 4
  %273 = add nsw i32 %272, 7
  %274 = load i32* %_l_k, align 4
  %275 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %271, i32 %273, i32 %274)
  %276 = load i64* %275
  %277 = add i64 %270, %276
  %278 = shl i64 %277, 3
  %279 = call %class.ap_uint.3* @_ZpLILi32EER7ap_uintIXT_EES2_m(%class.ap_uint.3* %out_pixel, i64 %278)
  %280 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 12
  %281 = load i32* %_l_k, align 4
  %282 = add nsw i32 %281, 7
  %283 = load i32* %_l_k, align 4
  %284 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %280, i32 %282, i32 %283)
  %285 = load i64* %284
  %286 = shl i64 %285, 5
  %287 = call %class.ap_uint.3* @_ZpLILi32EER7ap_uintIXT_EES2_m(%class.ap_uint.3* %out_pixel, i64 %286)
  %288 = getelementptr inbounds [25 x %class.ap_uint.3]* %array, i32 0, i64 12
  %289 = load i32* %_l_k, align 4
  %290 = add nsw i32 %289, 7
  %291 = load i32* %_l_k, align 4
  %292 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3* %288, i32 %290, i32 %291)
  %293 = load i64* %292
  %294 = shl i64 %293, 2
  %295 = call %class.ap_uint.3* @_ZpLILi32EER7ap_uintIXT_EES2_m(%class.ap_uint.3* %out_pixel, i64 %294)
  %296 = call i32 @_ZplILi32EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %out_pixel, i32 128)
  %297 = getelementptr %class.ap_uint.3* %3, i32 0, i32 0
  %298 = bitcast [4 x i8]* %297 to i32*
  store i32 %296, i32* %298, align 1
  %299 = getelementptr %class.ap_uint.3* %3, i32 0, i32 0
  %300 = bitcast [4 x i8]* %299 to i32*
  %301 = load i32* %300, align 1
  %302 = call i32 @_ZrsILi32EE7ap_uintIXT_EES1_i(i32 %301, i32 8)
  %303 = getelementptr %class.ap_uint.3* %4, i32 0, i32 0
  %304 = bitcast [4 x i8]* %303 to i32*
  store i32 %302, i32* %304, align 1
  %305 = call i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.3* %4)
  %306 = trunc i64 %305 to i8
  %307 = zext i8 %306 to i64
  %308 = load %class.ap_uint.0** %1, align 8
  %309 = getelementptr inbounds %class.ap_uint.0* %308, i64 0
  %310 = load i32* %_l_k, align 4
  %311 = add nsw i32 %310, 7
  %312 = load i32* %_l_k, align 4
  %313 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %309, i32 %311, i32 %312)
  store i64 %307, i64* %313
  %314 = load i32* %_l_k, align 4
  %315 = add nsw i32 %314, 8
  store i32 %315, i32* %_l_k, align 4
  br label %316

; <label>:316                                     ; preds = %48
  %317 = load i32* %_l_i, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %_l_i, align 4
  br label %45

; <label>:319                                     ; preds = %45
  ret void
}

declare zeroext i1 @_ZgeILi13ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i16, i8)

declare zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16, i32)

declare void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.3*)

declare %class.ap_uint.3* @_ZN7ap_uintILi32EEaSILi8EEERS0_RKS_IXT_EE(%class.ap_uint.3*, %class.ap_uint.0*)

declare void @_ZN7ap_uintILi32EEC1Ei(%class.ap_uint.3*, i32)

declare %class.ap_uint.3* @_ZN7ap_uintILi32EEaSEm(%class.ap_uint.3*, i64)

declare i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.3*, i32, i32)

declare %class.ap_uint.3* @_ZpLILi32EER7ap_uintIXT_EES2_m(%class.ap_uint.3*, i64)

declare i32 @_ZrsILi32EE7ap_uintIXT_EES1_i(i32, i32)

declare i32 @_ZplILi32EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3*, i32)

declare i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.3*)

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

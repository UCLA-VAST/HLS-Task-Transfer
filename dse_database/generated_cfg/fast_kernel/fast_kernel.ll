; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/fast_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [8 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream.1" = type { %class.ap_uint.0 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.2 = type { [2 x i8] }
%class.ap_int = type { [3 x i8] }
%class.ap_uint.3 = type { [1 x i8] }
%class.ap_int.4 = type { [2 x i8] }
%class.ap_uint.5 = type { [1 x i8] }

@.str = private unnamed_addr constant [107 x i8] c"((_image_height <= ROWS ) && (_image_width <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"xf_fast.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL119p_ZN2xf21xFFastCornerDetectionILi256ELi256ELi0ELi1ELi1ELi12ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEtth_1RN3hls6streamI7ap_uintILi8EEEES4_tth = private unnamed_addr constant [242 x i8] c"void p_ZN2xf21xFFastCornerDetectionILi256ELi256ELi0ELi1ELi1ELi12ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEtth_1(hls::stream<_DataType_0_1_name> &, hls::stream<_DataType_0_1_name> &, unsigned short, unsigned short, unsigned char)\00", align 1
@.str2 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z10fast_accelP7ap_uintILi64EES1_iii(%class.ap_uint* %img_inp, %class.ap_uint* %img_out, i32 %rows, i32 %cols, i32 %threshold) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_inp, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_out, %class.ap_uint** %2, align 8
  store i32 %rows, i32* %3, align 4
  store i32 %cols, i32* %4, align 4
  store i32 %threshold, i32* %5, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat)
  %6 = load i32* %3, align 4
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32* %4, align 4
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %out_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %out_mat)
  %10 = load i32* %3, align 4
  %11 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32* %4, align 4
  %13 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %class.ap_uint** %1, align 8
  call void @_ZL93p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_0_256_256_1_(%class.ap_uint* %14, %struct.xf_Mat_0_256_256_1_* %in_mat)
  %15 = load i32* %5, align 4
  %16 = trunc i32 %15 to i8
  call void @_ZL96p_ZN2xf4fastILi1ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEh_1R19xf_Mat_0_256_256_1_S0_h(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_0_256_256_1_* %out_mat, i8 zeroext %16)
  %17 = load %class.ap_uint** %2, align 8
  call void @_ZL93p_ZN2xf11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi64EE(%struct.xf_Mat_0_256_256_1_* %out_mat, %class.ap_uint* %17)
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

define internal void @_ZL96p_ZN2xf4fastILi1ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEh_1R19xf_Mat_0_256_256_1_S0_h(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_dst_mat, i8 zeroext %_threshold) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i8, align 1
  %_src = alloca %"class.hls::stream.1", align 1
  %_dst = alloca %"class.hls::stream.1", align 1
  %src_rows = alloca i32, align 4
  %src_cols = alloca i32, align 4
  %dst_rows = alloca i32, align 4
  %dst_cols = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %4 = alloca %class.ap_uint.0, align 1
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %value = alloca %class.ap_uint.0, align 1
  %5 = alloca %class.ap_uint.0, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i8 %_threshold, i8* %3, align 1
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.1"* %_src)
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.1"* %_dst)
  %6 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %6, i32 0, i32 1
  %8 = load i32* %7, align 4
  store i32 %8, i32* %src_rows, align 4
  %9 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %9, i32 0, i32 2
  %11 = load i32* %10, align 4
  store i32 %11, i32* %src_cols, align 4
  %12 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %13 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %12, i32 0, i32 1
  %14 = load i32* %13, align 4
  store i32 %14, i32* %dst_rows, align 4
  %15 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %16 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %15, i32 0, i32 2
  %17 = load i32* %16, align 4
  store i32 %17, i32* %dst_cols, align 4
  store i32 0, i32* %i, align 4
  br label %18

; <label>:18                                      ; preds = %43, %0
  %19 = load i32* %i, align 4
  %20 = load i32* %src_rows, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %46

; <label>:22                                      ; preds = %18
  store i32 0, i32* %j, align 4
  br label %23

; <label>:23                                      ; preds = %39, %22
  %24 = load i32* %j, align 4
  %25 = load i32* %src_cols, align 4
  %26 = ashr i32 %25, 0
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %42

; <label>:28                                      ; preds = %23
  %29 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %30 = load i32* %i, align 4
  %31 = load i32* %src_cols, align 4
  %32 = ashr i32 %31, 0
  %33 = mul nsw i32 %30, %32
  %34 = load i32* %j, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %29, i32 %35)
  %37 = getelementptr %class.ap_uint.0* %4, i32 0, i32 0
  %38 = bitcast [1 x i8]* %37 to i8*
  store i8 %36, i8* %38, align 1
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.1"* %_src, %class.ap_uint.0* %4)
  br label %39

; <label>:39                                      ; preds = %28
  %40 = load i32* %j, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %j, align 4
  br label %23

; <label>:42                                      ; preds = %23
  br label %43

; <label>:43                                      ; preds = %42
  %44 = load i32* %i, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %i, align 4
  br label %18

; <label>:46                                      ; preds = %18
  %47 = load i32* %src_rows, align 4
  %48 = trunc i32 %47 to i16
  %49 = load i32* %src_cols, align 4
  %50 = trunc i32 %49 to i16
  %51 = load i8* %3, align 1
  call void @_ZL119p_ZN2xf21xFFastCornerDetectionILi256ELi256ELi0ELi1ELi1ELi12ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEtth_1RN3hls6streamI7ap_uintILi8EEEES4_tth(%"class.hls::stream.1"* %_src, %"class.hls::stream.1"* %_dst, i16 zeroext %48, i16 zeroext %50, i8 zeroext %51)
  store i32 0, i32* %i1, align 4
  br label %52

; <label>:52                                      ; preds = %82, %46
  %53 = load i32* %i1, align 4
  %54 = load i32* %dst_rows, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %85

; <label>:56                                      ; preds = %52
  store i32 0, i32* %j2, align 4
  br label %57

; <label>:57                                      ; preds = %78, %56
  %58 = load i32* %j2, align 4
  %59 = load i32* %dst_cols, align 4
  %60 = ashr i32 %59, 0
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %81

; <label>:62                                      ; preds = %57
  %63 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.1"* %_dst)
  %64 = getelementptr %class.ap_uint.0* %value, i32 0, i32 0
  %65 = bitcast [1 x i8]* %64 to i8*
  store i8 %63, i8* %65, align 1
  %66 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %67 = load i32* %i1, align 4
  %68 = load i32* %dst_cols, align 4
  %69 = ashr i32 %68, 0
  %70 = mul nsw i32 %67, %69
  %71 = load i32* %j2, align 4
  %72 = add nsw i32 %70, %71
  %73 = bitcast %class.ap_uint.0* %5 to i8*
  %74 = bitcast %class.ap_uint.0* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 1, i32 1, i1 false)
  %75 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %76 = bitcast [1 x i8]* %75 to i8*
  %77 = load i8* %76, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %66, i32 %72, i8 %77)
  br label %78

; <label>:78                                      ; preds = %62
  %79 = load i32* %j2, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %j2, align 4
  br label %57

; <label>:81                                      ; preds = %57
  br label %82

; <label>:82                                      ; preds = %81
  %83 = load i32* %i1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %i1, align 4
  br label %52

; <label>:85                                      ; preds = %52
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

declare void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.1"*)

declare void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.1"*, %class.ap_uint.0*)

define internal void @_ZL119p_ZN2xf21xFFastCornerDetectionILi256ELi256ELi0ELi1ELi1ELi12ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEtth_1RN3hls6streamI7ap_uintILi8EEEES4_tth(%"class.hls::stream.1"* %_strm_in, %"class.hls::stream.1"* %_strm_out, i16 zeroext %_image_height, i16 zeroext %_image_width, i8 zeroext %_threshold) uwtable {
  %1 = alloca %"class.hls::stream.1"*, align 8
  %2 = alloca %"class.hls::stream.1"*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %_dst = alloca %"class.hls::stream.1", align 1
  %6 = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_uint.0, align 1
  store %"class.hls::stream.1"* %_strm_in, %"class.hls::stream.1"** %1, align 8
  store %"class.hls::stream.1"* %_strm_out, %"class.hls::stream.1"** %2, align 8
  store i16 %_image_height, i16* %3, align 2
  store i16 %_image_width, i16* %4, align 2
  store i8 %_threshold, i8* %5, align 1
  %8 = load i16* %3, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp sle i32 %9, 256
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %0
  %12 = load i16* %4, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp sle i32 %13, 256
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %11
  br label %18

; <label>:16                                      ; preds = %11, %0
  call void @__assert_fail(i8* getelementptr inbounds ([107 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i32 1040, i8* getelementptr inbounds ([242 x i8]* @__PRETTY_FUNCTION__._ZL119p_ZN2xf21xFFastCornerDetectionILi256ELi256ELi0ELi1ELi1ELi12ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEtth_1RN3hls6streamI7ap_uintILi8EEEES4_tth, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %18

; <label>:18                                      ; preds = %17, %15
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.1"* %_dst)
  %19 = load %"class.hls::stream.1"** %1, align 8
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %6, i32 7)
  %20 = load i16* %3, align 2
  %21 = load i16* %4, align 2
  %22 = load i8* %5, align 1
  %23 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %24 = bitcast [1 x i8]* %23 to i8*
  %25 = load i8* %24, align 1
  call void @_ZL126p_ZN2xf9xFfast7x7ILi256ELi256ELi0ELi1ELi1ELi259ELi7ELi49EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEtth_1RN3hls6streamI7ap_uintILi8EEEES4_S2_tth(%"class.hls::stream.1"* %19, %"class.hls::stream.1"* %_dst, i8 %25, i16 zeroext %20, i16 zeroext %21, i8 zeroext %22)
  %26 = load %"class.hls::stream.1"** %2, align 8
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %7, i32 3)
  %27 = load i16* %3, align 2
  %28 = load i16* %4, align 2
  %29 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %30 = bitcast [1 x i8]* %29 to i8*
  %31 = load i8* %30, align 1
  call void @_ZL124p_ZN2xf9xFfastnmsILi256ELi256ELi0ELi1ELi1ELi257ELi3ELi9EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEtt_1RN3hls6streamI7ap_uintILi8EEEES4_S2_tt(%"class.hls::stream.1"* %_dst, %"class.hls::stream.1"* %26, i8 %31, i16 zeroext %27, i16 zeroext %28)
  ret void
}

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

define internal void @_ZL126p_ZN2xf9xFfast7x7ILi256ELi256ELi0ELi1ELi1ELi259ELi7ELi49EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEtth_1RN3hls6streamI7ap_uintILi8EEEES4_S2_tth(%"class.hls::stream.1"* %_src_mat, %"class.hls::stream.1"* %_out_mat, i8 %win_size.coerce, i16 zeroext %img_height, i16 zeroext %img_width, i8 zeroext %_threshold) uwtable {
  %1 = alloca %"class.hls::stream.1"*, align 8
  %2 = alloca %"class.hls::stream.1"*, align 8
  %win_size = alloca %class.ap_uint.0, align 1
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %row_ind = alloca [7 x %class.ap_uint.2], align 1
  %pack_corners = alloca %class.ap_uint.0, align 1
  %shift_x = alloca i16, align 2
  %row = alloca %class.ap_uint.2, align 1
  %col = alloca %class.ap_uint.2, align 1
  %OutputValues = alloca [1 x %class.ap_uint.0], align 1
  %src_buf = alloca [7 x [7 x %class.ap_uint.0]], align 16
  %P0 = alloca %class.ap_uint.0, align 1
  %buf = alloca [7 x [256 x %class.ap_uint.0]], align 16
  %init_row_ind = alloca i32, align 4
  %6 = alloca %class.ap_uint.0, align 1
  %init_buf = alloca i32, align 4
  %7 = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint.0, align 1
  %9 = alloca %class.ap_uint.2, align 1
  %10 = alloca %class.ap_uint.0, align 1
  %11 = alloca %class.ap_uint.2, align 1
  %12 = alloca %class.ap_uint.0, align 1
  %13 = alloca %class.ap_uint.2, align 1
  %14 = alloca %class.ap_uint.2, align 1
  %init_buf1 = alloca i32, align 4
  %15 = alloca %class.ap_uint.2, align 1
  %16 = alloca %class.ap_uint.0, align 1
  %17 = alloca %class.ap_uint.0, align 1
  %18 = alloca %class.ap_uint.2, align 1
  %19 = alloca %class.ap_uint.0, align 1
  %20 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.0, align 1
  %22 = alloca %class.ap_uint.2, align 1
  %23 = alloca %class.ap_uint.0, align 1
  %zero_ind = alloca %class.ap_uint.2, align 1
  %init_row_ind2 = alloca i32, align 4
  %24 = alloca %class.ap_uint.0, align 1
  %25 = alloca %class.ap_uint.2, align 1
  store %"class.hls::stream.1"* %_src_mat, %"class.hls::stream.1"** %1, align 8
  store %"class.hls::stream.1"* %_out_mat, %"class.hls::stream.1"** %2, align 8
  %26 = getelementptr %class.ap_uint.0* %win_size, i32 0, i32 0
  %27 = bitcast [1 x i8]* %26 to i8*
  store i8 %win_size.coerce, i8* %27, align 1
  store i16 %img_height, i16* %3, align 2
  store i16 %img_width, i16* %4, align 2
  store i8 %_threshold, i8* %5, align 1
  %28 = getelementptr inbounds [7 x %class.ap_uint.2]* %row_ind, i32 0, i32 0
  %29 = getelementptr inbounds %class.ap_uint.2* %28, i64 7
  br label %30

; <label>:30                                      ; preds = %30, %0
  %31 = phi %class.ap_uint.2* [ %28, %0 ], [ %32, %30 ]
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %31)
  %32 = getelementptr inbounds %class.ap_uint.2* %31, i64 1
  %33 = icmp eq %class.ap_uint.2* %32, %29
  br i1 %33, label %34, label %30

; <label>:34                                      ; preds = %30
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %pack_corners)
  store i16 0, i16* %shift_x, align 2
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %row)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %col)
  %35 = getelementptr inbounds [1 x %class.ap_uint.0]* %OutputValues, i32 0, i32 0
  %36 = getelementptr inbounds %class.ap_uint.0* %35, i64 1
  br label %37

; <label>:37                                      ; preds = %37, %34
  %38 = phi %class.ap_uint.0* [ %35, %34 ], [ %39, %37 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %38)
  %39 = getelementptr inbounds %class.ap_uint.0* %38, i64 1
  %40 = icmp eq %class.ap_uint.0* %39, %36
  br i1 %40, label %41, label %37

; <label>:41                                      ; preds = %37
  %42 = getelementptr inbounds [7 x [7 x %class.ap_uint.0]]* %src_buf, i32 0, i32 0, i32 0
  %43 = getelementptr inbounds %class.ap_uint.0* %42, i64 49
  br label %44

; <label>:44                                      ; preds = %44, %41
  %45 = phi %class.ap_uint.0* [ %42, %41 ], [ %46, %44 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %45)
  %46 = getelementptr inbounds %class.ap_uint.0* %45, i64 1
  %47 = icmp eq %class.ap_uint.0* %46, %43
  br i1 %47, label %48, label %44

; <label>:48                                      ; preds = %44
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %P0)
  %49 = getelementptr inbounds [7 x [256 x %class.ap_uint.0]]* %buf, i32 0, i32 0, i32 0
  %50 = getelementptr inbounds %class.ap_uint.0* %49, i64 1792
  br label %51

; <label>:51                                      ; preds = %51, %48
  %52 = phi %class.ap_uint.0* [ %49, %48 ], [ %53, %51 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %52)
  %53 = getelementptr inbounds %class.ap_uint.0* %52, i64 1
  %54 = icmp eq %class.ap_uint.0* %53, %50
  br i1 %54, label %55, label %51

; <label>:55                                      ; preds = %51
  store i32 0, i32* %init_row_ind, align 4
  br label %56

; <label>:56                                      ; preds = %70, %55
  %57 = load i32* %init_row_ind, align 4
  %58 = bitcast %class.ap_uint.0* %6 to i8*
  %59 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 1, i32 1, i1 false)
  %60 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %61 = bitcast [1 x i8]* %60 to i8*
  %62 = load i8* %61, align 1
  %63 = call zeroext i1 @_ZltILi8EEbi7ap_uintIXT_EE(i32 %57, i8 %62)
  br i1 %63, label %64, label %73

; <label>:64                                      ; preds = %56
  %65 = load i32* %init_row_ind, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [7 x %class.ap_uint.2]* %row_ind, i32 0, i64 %66
  %68 = load i32* %init_row_ind, align 4
  %69 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %67, i32 %68)
  br label %70

; <label>:70                                      ; preds = %64
  %71 = load i32* %init_row_ind, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %init_row_ind, align 4
  br label %56

; <label>:73                                      ; preds = %56
  br label %74

; <label>:74                                      ; preds = %73
  %75 = bitcast %class.ap_uint.0* %7 to i8*
  %76 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 1, i32 1, i1 false)
  %77 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %78 = bitcast [1 x i8]* %77 to i8*
  %79 = load i8* %78, align 1
  %80 = call i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8 %79, i32 1)
  %81 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %82 = bitcast [1 x i8]* %81 to i8*
  store i8 %80, i8* %82, align 1
  %83 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %8)
  %84 = getelementptr inbounds [7 x %class.ap_uint.2]* %row_ind, i32 0, i64 %83
  %85 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %84)
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %init_buf, align 4
  br label %87

; <label>:87                                      ; preds = %128, %74
  %88 = load i32* %init_buf, align 4
  %89 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %90 = getelementptr %class.ap_uint.0* %10, i32 0, i32 0
  %91 = bitcast [1 x i8]* %90 to i8*
  store i8 %89, i8* %91, align 1
  %92 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %10)
  %93 = getelementptr inbounds [7 x %class.ap_uint.2]* %row_ind, i32 0, i64 %92
  %94 = bitcast %class.ap_uint.2* %9 to i8*
  %95 = bitcast %class.ap_uint.2* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 2, i32 1, i1 false)
  %96 = getelementptr %class.ap_uint.2* %9, i32 0, i32 0
  %97 = bitcast [2 x i8]* %96 to i16*
  %98 = load i16* %97, align 1
  %99 = call zeroext i1 @_ZltILi13EEbi7ap_uintIXT_EE(i32 %88, i16 %98)
  br i1 %99, label %100, label %131

; <label>:100                                     ; preds = %87
  %101 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %col, i32 0)
  br label %102

; <label>:102                                     ; preds = %123, %100
  %103 = bitcast %class.ap_uint.2* %11 to i8*
  %104 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 2, i32 1, i1 false)
  %105 = load i16* %4, align 2
  %106 = zext i16 %105 to i32
  %107 = ashr i32 %106, 0
  %108 = getelementptr %class.ap_uint.2* %11, i32 0, i32 0
  %109 = bitcast [2 x i8]* %108 to i16*
  %110 = load i16* %109, align 1
  %111 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %110, i32 %107)
  br i1 %111, label %112, label %127

; <label>:112                                     ; preds = %102
  %113 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %114 = load i32* %init_buf, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [7 x [256 x %class.ap_uint.0]]* %buf, i32 0, i64 %115
  %117 = getelementptr inbounds [256 x %class.ap_uint.0]* %116, i32 0, i64 %113
  %118 = load %"class.hls::stream.1"** %1, align 8
  %119 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.1"* %118)
  %120 = getelementptr %class.ap_uint.0* %12, i32 0, i32 0
  %121 = bitcast [1 x i8]* %120 to i8*
  store i8 %119, i8* %121, align 1
  %122 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %117, %class.ap_uint.0* %12)
  br label %123

; <label>:123                                     ; preds = %112
  %124 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %col, i32 0)
  %125 = getelementptr %class.ap_uint.2* %13, i32 0, i32 0
  %126 = bitcast [2 x i8]* %125 to i16*
  store i16 %124, i16* %126, align 1
  br label %102

; <label>:127                                     ; preds = %102
  br label %128

; <label>:128                                     ; preds = %127
  %129 = load i32* %init_buf, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %init_buf, align 4
  br label %87

; <label>:131                                     ; preds = %87
  %132 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %col, i32 0)
  br label %133

; <label>:133                                     ; preds = %158, %131
  %134 = bitcast %class.ap_uint.2* %14 to i8*
  %135 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 2, i32 1, i1 false)
  %136 = load i16* %4, align 2
  %137 = zext i16 %136 to i32
  %138 = ashr i32 %137, 0
  %139 = getelementptr %class.ap_uint.2* %14, i32 0, i32 0
  %140 = bitcast [2 x i8]* %139 to i16*
  %141 = load i16* %140, align 1
  %142 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %141, i32 %138)
  br i1 %142, label %143, label %162

; <label>:143                                     ; preds = %133
  store i32 0, i32* %init_buf1, align 4
  br label %144

; <label>:144                                     ; preds = %154, %143
  %145 = load i32* %init_buf1, align 4
  %146 = icmp slt i32 %145, 3
  br i1 %146, label %147, label %157

; <label>:147                                     ; preds = %144
  %148 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %149 = load i32* %init_buf1, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [7 x [256 x %class.ap_uint.0]]* %buf, i32 0, i64 %150
  %152 = getelementptr inbounds [256 x %class.ap_uint.0]* %151, i32 0, i64 %148
  %153 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %152, i32 0)
  br label %154

; <label>:154                                     ; preds = %147
  %155 = load i32* %init_buf1, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %init_buf1, align 4
  br label %144

; <label>:157                                     ; preds = %144
  br label %158

; <label>:158                                     ; preds = %157
  %159 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %col, i32 0)
  %160 = getelementptr %class.ap_uint.2* %15, i32 0, i32 0
  %161 = bitcast [2 x i8]* %160 to i16*
  store i16 %159, i16* %161, align 1
  br label %133

; <label>:162                                     ; preds = %133
  br label %163

; <label>:163                                     ; preds = %162
  %164 = bitcast %class.ap_uint.0* %17 to i8*
  %165 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* %165, i64 1, i32 1, i1 false)
  %166 = getelementptr %class.ap_uint.0* %17, i32 0, i32 0
  %167 = bitcast [1 x i8]* %166 to i8*
  %168 = load i8* %167, align 1
  %169 = call i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8 %168, i32 1)
  %170 = getelementptr %class.ap_uint.0* %16, i32 0, i32 0
  %171 = bitcast [1 x i8]* %170 to i8*
  store i8 %169, i8* %171, align 1
  %172 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSILi8EEERS0_RKS_IXT_EE(%class.ap_uint.2* %row, %class.ap_uint.0* %16)
  br label %173

; <label>:173                                     ; preds = %241, %163
  %174 = bitcast %class.ap_uint.2* %18 to i8*
  %175 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %174, i8* %175, i64 2, i32 1, i1 false)
  %176 = load i16* %3, align 2
  %177 = bitcast %class.ap_uint.0* %21 to i8*
  %178 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %177, i8* %178, i64 1, i32 1, i1 false)
  %179 = getelementptr %class.ap_uint.0* %21, i32 0, i32 0
  %180 = bitcast [1 x i8]* %179 to i8*
  %181 = load i8* %180, align 1
  %182 = call i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8 %181, i32 1)
  %183 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %184 = bitcast [1 x i8]* %183 to i8*
  store i8 %182, i8* %184, align 1
  %185 = call i8 @_ZplILi8EE7ap_uintIXT_EEtRKS1_(i16 zeroext %176, %class.ap_uint.0* %20)
  %186 = getelementptr %class.ap_uint.0* %19, i32 0, i32 0
  %187 = bitcast [1 x i8]* %186 to i8*
  store i8 %185, i8* %187, align 1
  %188 = getelementptr %class.ap_uint.2* %18, i32 0, i32 0
  %189 = bitcast [2 x i8]* %188 to i16*
  %190 = load i16* %189, align 1
  %191 = getelementptr %class.ap_uint.0* %19, i32 0, i32 0
  %192 = bitcast [1 x i8]* %191 to i8*
  %193 = load i8* %192, align 1
  %194 = call zeroext i1 @_ZltILi13ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i16 %190, i8 %193)
  br i1 %194, label %195, label %245

; <label>:195                                     ; preds = %173
  %196 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %P0, i32 0)
  %197 = load %"class.hls::stream.1"** %1, align 8
  %198 = load %"class.hls::stream.1"** %2, align 8
  %199 = getelementptr inbounds [7 x [256 x %class.ap_uint.0]]* %buf, i32 0, i32 0
  %200 = getelementptr inbounds [7 x [7 x %class.ap_uint.0]]* %src_buf, i32 0, i32 0
  %201 = getelementptr inbounds [1 x %class.ap_uint.0]* %OutputValues, i32 0, i32 0
  %202 = load i16* %4, align 2
  %203 = load i16* %3, align 2
  %204 = getelementptr inbounds [7 x %class.ap_uint.2]* %row_ind, i32 0, i32 0
  %205 = bitcast %class.ap_uint.2* %22 to i8*
  %206 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %205, i8* %206, i64 2, i32 1, i1 false)
  %207 = bitcast %class.ap_uint.0* %23 to i8*
  %208 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %207, i8* %208, i64 1, i32 1, i1 false)
  %209 = load i8* %5, align 1
  %210 = getelementptr %class.ap_uint.2* %22, i32 0, i32 0
  %211 = bitcast [2 x i8]* %210 to i16*
  %212 = load i16* %211, align 1
  %213 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %214 = bitcast [1 x i8]* %213 to i8*
  %215 = load i8* %214, align 1
  call void @_ZL245p_ZN2xf11ProcessFastILi256ELi256ELi0ELi1ELi1ELi259ELi7ELi49EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEPA256_7ap_uintILi8EEPA7_7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EEttRtP7ap_uintILi13EE7ap_uintILi13EE7ap_uintILi8EEhR7ap_uintILi8EE_1RN3hls6streamI7ap_uintILi8EEEES4_PA256_S2_PA7_S2_PS2_RS2_ttRtPS1_ILi13EESC_S2_hSA_(%"class.hls::stream.1"* %197, %"class.hls::stream.1"* %198, [256 x %class.ap_uint.0]* %199, [7 x %class.ap_uint.0]* %200, %class.ap_uint.0* %201, %class.ap_uint.0* %P0, i16 zeroext %202, i16 zeroext %203, i16* %shift_x, %class.ap_uint.2* %204, i16 %212, i8 %215, i8 zeroext %209, %class.ap_uint.0* %pack_corners)
  %216 = getelementptr inbounds [7 x %class.ap_uint.2]* %row_ind, i32 0, i64 0
  %217 = bitcast %class.ap_uint.2* %zero_ind to i8*
  %218 = bitcast %class.ap_uint.2* %216 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %217, i8* %218, i64 2, i32 1, i1 false)
  store i32 0, i32* %init_row_ind2, align 4
  br label %219

; <label>:219                                     ; preds = %231, %195
  %220 = load i32* %init_row_ind2, align 4
  %221 = icmp slt i32 %220, 6
  br i1 %221, label %222, label %234

; <label>:222                                     ; preds = %219
  %223 = load i32* %init_row_ind2, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [7 x %class.ap_uint.2]* %row_ind, i32 0, i64 %224
  %226 = load i32* %init_row_ind2, align 4
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [7 x %class.ap_uint.2]* %row_ind, i32 0, i64 %228
  %230 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.2* %225, %class.ap_uint.2* %229)
  br label %231

; <label>:231                                     ; preds = %222
  %232 = load i32* %init_row_ind2, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %init_row_ind2, align 4
  br label %219

; <label>:234                                     ; preds = %219
  %235 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %236 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %237 = bitcast [1 x i8]* %236 to i8*
  store i8 %235, i8* %237, align 1
  %238 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %24)
  %239 = getelementptr inbounds [7 x %class.ap_uint.2]* %row_ind, i32 0, i64 %238
  %240 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.2* %239, %class.ap_uint.2* %zero_ind)
  br label %241

; <label>:241                                     ; preds = %234
  %242 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %row, i32 0)
  %243 = getelementptr %class.ap_uint.2* %25, i32 0, i32 0
  %244 = bitcast [2 x i8]* %243 to i16*
  store i16 %242, i16* %244, align 1
  br label %173

; <label>:245                                     ; preds = %173
  ret void
}

declare void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0*, i32)

define internal void @_ZL124p_ZN2xf9xFfastnmsILi256ELi256ELi0ELi1ELi1ELi257ELi3ELi9EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEE7ap_uintILi8EEtt_1RN3hls6streamI7ap_uintILi8EEEES4_S2_tt(%"class.hls::stream.1"* %_src_mat, %"class.hls::stream.1"* %_out_mat, i8 %win_size.coerce, i16 zeroext %img_height, i16 zeroext %img_width) uwtable {
  %1 = alloca %"class.hls::stream.1"*, align 8
  %2 = alloca %"class.hls::stream.1"*, align 8
  %win_size = alloca %class.ap_uint.0, align 1
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %row_ind = alloca [3 x %class.ap_uint.2], align 1
  %shift_x = alloca i16, align 2
  %row = alloca %class.ap_uint.2, align 1
  %col = alloca %class.ap_uint.2, align 1
  %OutputValues = alloca [1 x %class.ap_uint.0], align 1
  %src_buf = alloca [3 x [3 x %class.ap_uint.0]], align 1
  %P0 = alloca %class.ap_uint.0, align 1
  %buf = alloca [3 x [256 x %class.ap_uint.0]], align 16
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
  %29 = getelementptr inbounds [3 x %class.ap_uint.2]* %row_ind, i32 0, i32 0
  %30 = getelementptr inbounds %class.ap_uint.2* %29, i64 3
  br label %31

; <label>:31                                      ; preds = %31, %0
  %32 = phi %class.ap_uint.2* [ %29, %0 ], [ %33, %31 ]
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %32)
  %33 = getelementptr inbounds %class.ap_uint.2* %32, i64 1
  %34 = icmp eq %class.ap_uint.2* %33, %30
  br i1 %34, label %35, label %31

; <label>:35                                      ; preds = %31
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
  %43 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_buf, i32 0, i32 0, i32 0
  %44 = getelementptr inbounds %class.ap_uint.0* %43, i64 9
  br label %45

; <label>:45                                      ; preds = %45, %42
  %46 = phi %class.ap_uint.0* [ %43, %42 ], [ %47, %45 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %46)
  %47 = getelementptr inbounds %class.ap_uint.0* %46, i64 1
  %48 = icmp eq %class.ap_uint.0* %47, %44
  br i1 %48, label %49, label %45

; <label>:49                                      ; preds = %45
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %P0)
  %50 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %buf, i32 0, i32 0, i32 0
  %51 = getelementptr inbounds %class.ap_uint.0* %50, i64 768
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
  %68 = getelementptr inbounds [3 x %class.ap_uint.2]* %row_ind, i32 0, i64 %67
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
  %85 = getelementptr inbounds [3 x %class.ap_uint.2]* %row_ind, i32 0, i64 %84
  %86 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %init_buf, align 4
  br label %88

; <label>:88                                      ; preds = %129, %75
  %89 = load i32* %init_buf, align 4
  %90 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %91 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %92 = bitcast [1 x i8]* %91 to i8*
  store i8 %90, i8* %92, align 1
  %93 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %9)
  %94 = getelementptr inbounds [3 x %class.ap_uint.2]* %row_ind, i32 0, i64 %93
  %95 = bitcast %class.ap_uint.2* %8 to i8*
  %96 = bitcast %class.ap_uint.2* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 2, i32 1, i1 false)
  %97 = getelementptr %class.ap_uint.2* %8, i32 0, i32 0
  %98 = bitcast [2 x i8]* %97 to i16*
  %99 = load i16* %98, align 1
  %100 = call zeroext i1 @_ZltILi13EEbi7ap_uintIXT_EE(i32 %89, i16 %99)
  br i1 %100, label %101, label %132

; <label>:101                                     ; preds = %88
  %102 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %col, i32 0)
  br label %103

; <label>:103                                     ; preds = %124, %101
  %104 = bitcast %class.ap_uint.2* %10 to i8*
  %105 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 2, i32 1, i1 false)
  %106 = load i16* %4, align 2
  %107 = zext i16 %106 to i32
  %108 = ashr i32 %107, 0
  %109 = getelementptr %class.ap_uint.2* %10, i32 0, i32 0
  %110 = bitcast [2 x i8]* %109 to i16*
  %111 = load i16* %110, align 1
  %112 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %111, i32 %108)
  br i1 %112, label %113, label %128

; <label>:113                                     ; preds = %103
  %114 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %115 = load i32* %init_buf, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %buf, i32 0, i64 %116
  %118 = getelementptr inbounds [256 x %class.ap_uint.0]* %117, i32 0, i64 %114
  %119 = load %"class.hls::stream.1"** %1, align 8
  %120 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.1"* %119)
  %121 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %122 = bitcast [1 x i8]* %121 to i8*
  store i8 %120, i8* %122, align 1
  %123 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %118, %class.ap_uint.0* %11)
  br label %124

; <label>:124                                     ; preds = %113
  %125 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %col, i32 0)
  %126 = getelementptr %class.ap_uint.2* %12, i32 0, i32 0
  %127 = bitcast [2 x i8]* %126 to i16*
  store i16 %125, i16* %127, align 1
  br label %103

; <label>:128                                     ; preds = %103
  br label %129

; <label>:129                                     ; preds = %128
  %130 = load i32* %init_buf, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %init_buf, align 4
  br label %88

; <label>:132                                     ; preds = %88
  %133 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %col, i32 0)
  br label %134

; <label>:134                                     ; preds = %173, %132
  %135 = bitcast %class.ap_uint.2* %13 to i8*
  %136 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 2, i32 1, i1 false)
  %137 = load i16* %4, align 2
  %138 = zext i16 %137 to i32
  %139 = ashr i32 %138, 0
  %140 = getelementptr %class.ap_uint.2* %13, i32 0, i32 0
  %141 = bitcast [2 x i8]* %140 to i16*
  %142 = load i16* %141, align 1
  %143 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %142, i32 %139)
  br i1 %143, label %144, label %177

; <label>:144                                     ; preds = %134
  store i32 0, i32* %init_buf1, align 4
  br label %145

; <label>:145                                     ; preds = %169, %144
  %146 = load i32* %init_buf1, align 4
  %147 = icmp slt i32 %146, 1
  br i1 %147, label %148, label %172

; <label>:148                                     ; preds = %145
  %149 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %150 = load i32* %init_buf1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %buf, i32 0, i64 %151
  %153 = getelementptr inbounds [256 x %class.ap_uint.0]* %152, i32 0, i64 %149
  %154 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %155 = bitcast %class.ap_uint.0* %14 to i8*
  %156 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %155, i8* %156, i64 1, i32 1, i1 false)
  %157 = getelementptr %class.ap_uint.0* %14, i32 0, i32 0
  %158 = bitcast [1 x i8]* %157 to i8*
  %159 = load i8* %158, align 1
  %160 = call i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8 %159, i32 1)
  %161 = getelementptr %class.ap_uint.0* %15, i32 0, i32 0
  %162 = bitcast [1 x i8]* %161 to i8*
  store i8 %160, i8* %162, align 1
  %163 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %15)
  %164 = getelementptr inbounds [3 x %class.ap_uint.2]* %row_ind, i32 0, i64 %163
  %165 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %164)
  %166 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %buf, i32 0, i64 %165
  %167 = getelementptr inbounds [256 x %class.ap_uint.0]* %166, i32 0, i64 %154
  %168 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %153, %class.ap_uint.0* %167)
  br label %169

; <label>:169                                     ; preds = %148
  %170 = load i32* %init_buf1, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %init_buf1, align 4
  br label %145

; <label>:172                                     ; preds = %145
  br label %173

; <label>:173                                     ; preds = %172
  %174 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %col, i32 0)
  %175 = getelementptr %class.ap_uint.2* %16, i32 0, i32 0
  %176 = bitcast [2 x i8]* %175 to i16*
  store i16 %174, i16* %176, align 1
  br label %134

; <label>:177                                     ; preds = %134
  br label %178

; <label>:178                                     ; preds = %177
  %179 = bitcast %class.ap_uint.0* %18 to i8*
  %180 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* %180, i64 1, i32 1, i1 false)
  %181 = getelementptr %class.ap_uint.0* %18, i32 0, i32 0
  %182 = bitcast [1 x i8]* %181 to i8*
  %183 = load i8* %182, align 1
  %184 = call i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8 %183, i32 1)
  %185 = getelementptr %class.ap_uint.0* %17, i32 0, i32 0
  %186 = bitcast [1 x i8]* %185 to i8*
  store i8 %184, i8* %186, align 1
  %187 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSILi8EEERS0_RKS_IXT_EE(%class.ap_uint.2* %row, %class.ap_uint.0* %17)
  br label %188

; <label>:188                                     ; preds = %255, %178
  %189 = bitcast %class.ap_uint.2* %19 to i8*
  %190 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %189, i8* %190, i64 2, i32 1, i1 false)
  %191 = load i16* %3, align 2
  %192 = bitcast %class.ap_uint.0* %22 to i8*
  %193 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* %193, i64 1, i32 1, i1 false)
  %194 = getelementptr %class.ap_uint.0* %22, i32 0, i32 0
  %195 = bitcast [1 x i8]* %194 to i8*
  %196 = load i8* %195, align 1
  %197 = call i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8 %196, i32 1)
  %198 = getelementptr %class.ap_uint.0* %21, i32 0, i32 0
  %199 = bitcast [1 x i8]* %198 to i8*
  store i8 %197, i8* %199, align 1
  %200 = call i8 @_ZplILi8EE7ap_uintIXT_EEtRKS1_(i16 zeroext %191, %class.ap_uint.0* %21)
  %201 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %202 = bitcast [1 x i8]* %201 to i8*
  store i8 %200, i8* %202, align 1
  %203 = getelementptr %class.ap_uint.2* %19, i32 0, i32 0
  %204 = bitcast [2 x i8]* %203 to i16*
  %205 = load i16* %204, align 1
  %206 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %207 = bitcast [1 x i8]* %206 to i8*
  %208 = load i8* %207, align 1
  %209 = call zeroext i1 @_ZltILi13ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i16 %205, i8 %208)
  br i1 %209, label %210, label %259

; <label>:210                                     ; preds = %188
  %211 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %P0, i32 0)
  %212 = load %"class.hls::stream.1"** %1, align 8
  %213 = load %"class.hls::stream.1"** %2, align 8
  %214 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %buf, i32 0, i32 0
  %215 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_buf, i32 0, i32 0
  %216 = getelementptr inbounds [1 x %class.ap_uint.0]* %OutputValues, i32 0, i32 0
  %217 = load i16* %4, align 2
  %218 = load i16* %3, align 2
  %219 = getelementptr inbounds [3 x %class.ap_uint.2]* %row_ind, i32 0, i32 0
  %220 = bitcast %class.ap_uint.2* %23 to i8*
  %221 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %221, i64 2, i32 1, i1 false)
  %222 = bitcast %class.ap_uint.0* %24 to i8*
  %223 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %222, i8* %223, i64 1, i32 1, i1 false)
  %224 = getelementptr %class.ap_uint.2* %23, i32 0, i32 0
  %225 = bitcast [2 x i8]* %224 to i16*
  %226 = load i16* %225, align 1
  %227 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %228 = bitcast [1 x i8]* %227 to i8*
  %229 = load i8* %228, align 1
  call void @_ZL231p_ZN2xf14ProcessfastnmsILi256ELi256ELi0ELi1ELi1ELi257ELi3ELi9EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEPA256_7ap_uintILi8EEPA3_7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EEttRtP7ap_uintILi13EE7ap_uintILi13EE7ap_uintILi8EE_1RN3hls6streamI7ap_uintILi8EEEES4_PA256_S2_PA3_S2_PS2_RS2_ttRtPS1_ILi13EESC_S2_(%"class.hls::stream.1"* %212, %"class.hls::stream.1"* %213, [256 x %class.ap_uint.0]* %214, [3 x %class.ap_uint.0]* %215, %class.ap_uint.0* %216, %class.ap_uint.0* %P0, i16 zeroext %217, i16 zeroext %218, i16* %shift_x, %class.ap_uint.2* %219, i16 %226, i8 %229)
  %230 = getelementptr inbounds [3 x %class.ap_uint.2]* %row_ind, i32 0, i64 0
  %231 = bitcast %class.ap_uint.2* %zero_ind to i8*
  %232 = bitcast %class.ap_uint.2* %230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %231, i8* %232, i64 2, i32 1, i1 false)
  store i32 0, i32* %init_row_ind2, align 4
  br label %233

; <label>:233                                     ; preds = %245, %210
  %234 = load i32* %init_row_ind2, align 4
  %235 = icmp slt i32 %234, 2
  br i1 %235, label %236, label %248

; <label>:236                                     ; preds = %233
  %237 = load i32* %init_row_ind2, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [3 x %class.ap_uint.2]* %row_ind, i32 0, i64 %238
  %240 = load i32* %init_row_ind2, align 4
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [3 x %class.ap_uint.2]* %row_ind, i32 0, i64 %242
  %244 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.2* %239, %class.ap_uint.2* %243)
  br label %245

; <label>:245                                     ; preds = %236
  %246 = load i32* %init_row_ind2, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %init_row_ind2, align 4
  br label %233

; <label>:248                                     ; preds = %233
  %249 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %250 = getelementptr %class.ap_uint.0* %25, i32 0, i32 0
  %251 = bitcast [1 x i8]* %250 to i8*
  store i8 %249, i8* %251, align 1
  %252 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %25)
  %253 = getelementptr inbounds [3 x %class.ap_uint.2]* %row_ind, i32 0, i64 %252
  %254 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.2* %253, %class.ap_uint.2* %zero_ind)
  br label %255

; <label>:255                                     ; preds = %248
  %256 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %row, i32 0)
  %257 = getelementptr %class.ap_uint.2* %26, i32 0, i32 0
  %258 = bitcast [2 x i8]* %257 to i16*
  store i16 %256, i16* %258, align 1
  br label %188

; <label>:259                                     ; preds = %188
  ret void
}

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2*)

declare zeroext i1 @_ZltILi8EEbi7ap_uintIXT_EE(i32, i8)

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2*, i32)

declare i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8, i32)

declare i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2*)

declare zeroext i1 @_ZltILi13EEbi7ap_uintIXT_EE(i32, i16)

declare i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16, i32)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2*, i32)

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSILi8EEERS0_RKS_IXT_EE(%class.ap_uint.2*, %class.ap_uint.0*)

declare zeroext i1 @_ZltILi13ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i16, i8)

declare i8 @_ZplILi8EE7ap_uintIXT_EEtRKS1_(i16 zeroext, %class.ap_uint.0*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0*, i32)

define internal void @_ZL231p_ZN2xf14ProcessfastnmsILi256ELi256ELi0ELi1ELi1ELi257ELi3ELi9EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEPA256_7ap_uintILi8EEPA3_7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EEttRtP7ap_uintILi13EE7ap_uintILi13EE7ap_uintILi8EE_1RN3hls6streamI7ap_uintILi8EEEES4_PA256_S2_PA3_S2_PS2_RS2_ttRtPS1_ILi13EESC_S2_(%"class.hls::stream.1"* %_src_mat, %"class.hls::stream.1"* %_out_mat, [256 x %class.ap_uint.0]* %buf, [3 x %class.ap_uint.0]* %src_buf, %class.ap_uint.0* %OutputValues, %class.ap_uint.0* %P0, i16 zeroext %img_width, i16 zeroext %img_height, i16* %shift_x, %class.ap_uint.2* %row_ind, i16 %row.coerce, i8 %win_size.coerce) uwtable {
  %1 = alloca %"class.hls::stream.1"*, align 8
  %2 = alloca %"class.hls::stream.1"*, align 8
  %3 = alloca [256 x %class.ap_uint.0]*, align 8
  %4 = alloca [3 x %class.ap_uint.0]*, align 8
  %5 = alloca %class.ap_uint.0*, align 8
  %6 = alloca %class.ap_uint.0*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16*, align 8
  %10 = alloca %class.ap_uint.2*, align 8
  %row = alloca %class.ap_uint.2, align 2
  %win_size = alloca %class.ap_uint.0, align 1
  %buf_cop = alloca [3 x %class.ap_uint.0], align 1
  %npc = alloca i16, align 2
  %col_loop_var = alloca i16, align 2
  %extract_px = alloca i32, align 4
  %ext_copy = alloca i32, align 4
  %col = alloca %class.ap_uint.2, align 1
  %11 = alloca %class.ap_uint.2, align 1
  %12 = alloca %class.ap_uint.2, align 1
  %13 = alloca %class.ap_uint.2, align 1
  %14 = alloca %class.ap_uint.0, align 1
  %15 = alloca %class.ap_uint.0, align 1
  %copy_buf_var = alloca i32, align 4
  %16 = alloca %class.ap_uint.2, align 1
  %17 = alloca %class.ap_int, align 1
  %18 = alloca %class.ap_uint.0, align 1
  %19 = alloca %class.ap_uint.2, align 1
  %20 = alloca i24
  %21 = alloca i24
  %22 = alloca %class.ap_uint.0, align 1
  %23 = alloca %class.ap_uint.2, align 1
  %24 = alloca %class.ap_int, align 1
  %25 = alloca i24
  %extract_px1 = alloca i32, align 4
  %26 = alloca %class.ap_uint.2, align 1
  %27 = alloca %class.ap_uint.0, align 1
  %28 = alloca %class.ap_uint.0, align 1
  %29 = alloca %class.ap_uint.0, align 1
  %30 = alloca %class.ap_uint.0, align 1
  %31 = alloca %class.ap_uint.2, align 1
  %wrap_buf = alloca i32, align 4
  %col_warp = alloca i32, align 4
  %32 = alloca %class.ap_uint.2, align 1
  %33 = alloca %class.ap_uint.0, align 1
  %34 = alloca %class.ap_uint.2, align 1
  store %"class.hls::stream.1"* %_src_mat, %"class.hls::stream.1"** %1, align 8
  store %"class.hls::stream.1"* %_out_mat, %"class.hls::stream.1"** %2, align 8
  store [256 x %class.ap_uint.0]* %buf, [256 x %class.ap_uint.0]** %3, align 8
  store [3 x %class.ap_uint.0]* %src_buf, [3 x %class.ap_uint.0]** %4, align 8
  store %class.ap_uint.0* %OutputValues, %class.ap_uint.0** %5, align 8
  store %class.ap_uint.0* %P0, %class.ap_uint.0** %6, align 8
  store i16 %img_width, i16* %7, align 2
  store i16 %img_height, i16* %8, align 2
  store i16* %shift_x, i16** %9, align 8
  store %class.ap_uint.2* %row_ind, %class.ap_uint.2** %10, align 8
  %35 = getelementptr %class.ap_uint.2* %row, i32 0, i32 0
  %36 = bitcast [2 x i8]* %35 to i16*
  store i16 %row.coerce, i16* %36, align 1
  %37 = getelementptr %class.ap_uint.0* %win_size, i32 0, i32 0
  %38 = bitcast [1 x i8]* %37 to i8*
  store i8 %win_size.coerce, i8* %38, align 1
  %39 = getelementptr inbounds [3 x %class.ap_uint.0]* %buf_cop, i32 0, i32 0
  %40 = getelementptr inbounds %class.ap_uint.0* %39, i64 3
  br label %41

; <label>:41                                      ; preds = %41, %0
  %42 = phi %class.ap_uint.0* [ %39, %0 ], [ %43, %41 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %42)
  %43 = getelementptr inbounds %class.ap_uint.0* %42, i64 1
  %44 = icmp eq %class.ap_uint.0* %43, %40
  br i1 %44, label %45, label %41

; <label>:45                                      ; preds = %41
  store i16 1, i16* %npc, align 2
  store i16 0, i16* %col_loop_var, align 2
  store i16 1, i16* %col_loop_var, align 2
  store i32 0, i32* %extract_px, align 4
  br label %46

; <label>:46                                      ; preds = %70, %45
  %47 = load i32* %extract_px, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %73

; <label>:49                                      ; preds = %46
  store i32 0, i32* %ext_copy, align 4
  br label %50

; <label>:50                                      ; preds = %66, %49
  %51 = load i32* %ext_copy, align 4
  %52 = load i16* %npc, align 2
  %53 = zext i16 %52 to i32
  %54 = add nsw i32 %53, 3
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %69

; <label>:57                                      ; preds = %50
  %58 = load i32* %ext_copy, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32* %extract_px, align 4
  %61 = sext i32 %60 to i64
  %62 = load [3 x %class.ap_uint.0]** %4, align 8
  %63 = getelementptr inbounds [3 x %class.ap_uint.0]* %62, i64 %61
  %64 = getelementptr inbounds [3 x %class.ap_uint.0]* %63, i32 0, i64 %59
  %65 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %64, i32 0)
  br label %66

; <label>:66                                      ; preds = %57
  %67 = load i32* %ext_copy, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %ext_copy, align 4
  br label %50

; <label>:69                                      ; preds = %50
  br label %70

; <label>:70                                      ; preds = %69
  %71 = load i32* %extract_px, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %extract_px, align 4
  br label %46

; <label>:73                                      ; preds = %46
  br label %74

; <label>:74                                      ; preds = %73
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.2* %col, i32 0)
  br label %75

; <label>:75                                      ; preds = %340, %74
  %76 = bitcast %class.ap_uint.2* %11 to i8*
  %77 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 2, i32 1, i1 false)
  %78 = load i16* %7, align 2
  %79 = zext i16 %78 to i32
  %80 = ashr i32 %79, 0
  %81 = load i16* %col_loop_var, align 2
  %82 = zext i16 %81 to i32
  %83 = add nsw i32 %80, %82
  %84 = getelementptr %class.ap_uint.2* %11, i32 0, i32 0
  %85 = bitcast [2 x i8]* %84 to i16*
  %86 = load i16* %85, align 1
  %87 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %86, i32 %83)
  br i1 %87, label %88, label %344

; <label>:88                                      ; preds = %75
  %89 = bitcast %class.ap_uint.2* %12 to i8*
  %90 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 2, i32 1, i1 false)
  %91 = load i16* %8, align 2
  %92 = getelementptr %class.ap_uint.2* %12, i32 0, i32 0
  %93 = bitcast [2 x i8]* %92 to i16*
  %94 = load i16* %93, align 1
  %95 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %94, i16 zeroext %91)
  br i1 %95, label %96, label %123

; <label>:96                                      ; preds = %88
  %97 = bitcast %class.ap_uint.2* %13 to i8*
  %98 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 2, i32 1, i1 false)
  %99 = load i16* %7, align 2
  %100 = zext i16 %99 to i32
  %101 = ashr i32 %100, 0
  %102 = getelementptr %class.ap_uint.2* %13, i32 0, i32 0
  %103 = bitcast [2 x i8]* %102 to i16*
  %104 = load i16* %103, align 1
  %105 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %104, i32 %101)
  br i1 %105, label %106, label %123

; <label>:106                                     ; preds = %96
  %107 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %108 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %109 = getelementptr %class.ap_uint.0* %14, i32 0, i32 0
  %110 = bitcast [1 x i8]* %109 to i8*
  store i8 %108, i8* %110, align 1
  %111 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %14)
  %112 = load %class.ap_uint.2** %10, align 8
  %113 = getelementptr inbounds %class.ap_uint.2* %112, i64 %111
  %114 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %113)
  %115 = load [256 x %class.ap_uint.0]** %3, align 8
  %116 = getelementptr inbounds [256 x %class.ap_uint.0]* %115, i64 %114
  %117 = getelementptr inbounds [256 x %class.ap_uint.0]* %116, i32 0, i64 %107
  %118 = load %"class.hls::stream.1"** %1, align 8
  %119 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.1"* %118)
  %120 = getelementptr %class.ap_uint.0* %15, i32 0, i32 0
  %121 = bitcast [1 x i8]* %120 to i8*
  store i8 %119, i8* %121, align 1
  %122 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %117, %class.ap_uint.0* %15)
  br label %123

; <label>:123                                     ; preds = %106, %96, %88
  store i32 0, i32* %copy_buf_var, align 4
  br label %124

; <label>:124                                     ; preds = %210, %123
  %125 = load i32* %copy_buf_var, align 4
  %126 = icmp slt i32 %125, 3
  br i1 %126, label %127, label %213

; <label>:127                                     ; preds = %124
  %128 = bitcast %class.ap_uint.2* %16 to i8*
  %129 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 2, i32 1, i1 false)
  %130 = load i16* %8, align 2
  %131 = zext i16 %130 to i32
  %132 = sub nsw i32 %131, 1
  %133 = getelementptr %class.ap_uint.2* %16, i32 0, i32 0
  %134 = bitcast [2 x i8]* %133 to i16*
  %135 = load i16* %134, align 1
  %136 = call zeroext i1 @_ZgtILi13EEb7ap_uintIXT_EEi(i16 %135, i32 %132)
  br i1 %136, label %137, label %195

; <label>:137                                     ; preds = %127
  %138 = load i32* %copy_buf_var, align 4
  %139 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %140 = getelementptr %class.ap_uint.0* %18, i32 0, i32 0
  %141 = bitcast [1 x i8]* %140 to i8*
  store i8 %139, i8* %141, align 1
  %142 = load i16* %8, align 2
  %143 = zext i16 %142 to i32
  %144 = sub nsw i32 %143, 1
  %145 = call i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %row, i32 %144)
  %146 = getelementptr %class.ap_uint.2* %19, i32 0, i32 0
  %147 = bitcast [2 x i8]* %146 to i16*
  store i16 %145, i16* %147, align 1
  %148 = getelementptr %class.ap_uint.0* %18, i32 0, i32 0
  %149 = bitcast [1 x i8]* %148 to i8*
  %150 = load i8* %149, align 1
  %151 = getelementptr %class.ap_uint.2* %19, i32 0, i32 0
  %152 = bitcast [2 x i8]* %151 to i16*
  %153 = load i16* %152, align 1
  %154 = call i24 @_ZmiILi8ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %150, i16 %153)
  %155 = getelementptr %class.ap_int* %17, i32 0, i32 0
  store i24 %154, i24* %20
  %156 = bitcast i24* %20 to [3 x i8]*
  %157 = load [3 x i8]* %156, align 1
  store [3 x i8] %157, [3 x i8]* %155
  %158 = getelementptr %class.ap_int* %17, i32 0, i32 0
  %159 = bitcast i24* %21 to [3 x i8]*
  %160 = load [3 x i8]* %158
  store [3 x i8] %160, [3 x i8]* %159, align 1
  %161 = load i24* %21
  %162 = call zeroext i1 @_ZgtILi21EEbi6ap_intIXT_EE(i32 %138, i24 %161)
  br i1 %162, label %163, label %195

; <label>:163                                     ; preds = %137
  %164 = load i32* %copy_buf_var, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [3 x %class.ap_uint.0]* %buf_cop, i32 0, i64 %165
  %167 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %168 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %169 = getelementptr %class.ap_uint.0* %22, i32 0, i32 0
  %170 = bitcast [1 x i8]* %169 to i8*
  store i8 %168, i8* %170, align 1
  %171 = load i16* %8, align 2
  %172 = zext i16 %171 to i32
  %173 = sub nsw i32 %172, 1
  %174 = call i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %row, i32 %173)
  %175 = getelementptr %class.ap_uint.2* %23, i32 0, i32 0
  %176 = bitcast [2 x i8]* %175 to i16*
  store i16 %174, i16* %176, align 1
  %177 = getelementptr %class.ap_uint.0* %22, i32 0, i32 0
  %178 = bitcast [1 x i8]* %177 to i8*
  %179 = load i8* %178, align 1
  %180 = getelementptr %class.ap_uint.2* %23, i32 0, i32 0
  %181 = bitcast [2 x i8]* %180 to i16*
  %182 = load i16* %181, align 1
  %183 = call i24 @_ZmiILi8ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %179, i16 %182)
  %184 = getelementptr %class.ap_int* %24, i32 0, i32 0
  store i24 %183, i24* %25
  %185 = bitcast i24* %25 to [3 x i8]*
  %186 = load [3 x i8]* %185, align 1
  store [3 x i8] %186, [3 x i8]* %184
  %187 = call i64 @_ZNK6ap_intILi21EEcvlEv(%class.ap_int* %24)
  %188 = load %class.ap_uint.2** %10, align 8
  %189 = getelementptr inbounds %class.ap_uint.2* %188, i64 %187
  %190 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %189)
  %191 = load [256 x %class.ap_uint.0]** %3, align 8
  %192 = getelementptr inbounds [256 x %class.ap_uint.0]* %191, i64 %190
  %193 = getelementptr inbounds [256 x %class.ap_uint.0]* %192, i32 0, i64 %167
  %194 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %166, %class.ap_uint.0* %193)
  br label %209

; <label>:195                                     ; preds = %137, %127
  %196 = load i32* %copy_buf_var, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [3 x %class.ap_uint.0]* %buf_cop, i32 0, i64 %197
  %199 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %200 = load i32* %copy_buf_var, align 4
  %201 = sext i32 %200 to i64
  %202 = load %class.ap_uint.2** %10, align 8
  %203 = getelementptr inbounds %class.ap_uint.2* %202, i64 %201
  %204 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %203)
  %205 = load [256 x %class.ap_uint.0]** %3, align 8
  %206 = getelementptr inbounds [256 x %class.ap_uint.0]* %205, i64 %204
  %207 = getelementptr inbounds [256 x %class.ap_uint.0]* %206, i32 0, i64 %199
  %208 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %198, %class.ap_uint.0* %207)
  br label %209

; <label>:209                                     ; preds = %195, %163
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i32* %copy_buf_var, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %copy_buf_var, align 4
  br label %124

; <label>:213                                     ; preds = %124
  store i32 0, i32* %extract_px1, align 4
  br label %214

; <label>:214                                     ; preds = %260, %213
  %215 = load i32* %extract_px1, align 4
  %216 = icmp slt i32 %215, 3
  br i1 %216, label %217, label %263

; <label>:217                                     ; preds = %214
  %218 = bitcast %class.ap_uint.2* %26 to i8*
  %219 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %218, i8* %219, i64 2, i32 1, i1 false)
  %220 = load i16* %7, align 2
  %221 = getelementptr %class.ap_uint.2* %26, i32 0, i32 0
  %222 = bitcast [2 x i8]* %221 to i16*
  %223 = load i16* %222, align 1
  %224 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %223, i16 zeroext %220)
  br i1 %224, label %225, label %239

; <label>:225                                     ; preds = %217
  %226 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %227 = getelementptr %class.ap_uint.0* %27, i32 0, i32 0
  %228 = bitcast [1 x i8]* %227 to i8*
  store i8 %226, i8* %228, align 1
  %229 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %27)
  %230 = load i32* %extract_px1, align 4
  %231 = sext i32 %230 to i64
  %232 = load [3 x %class.ap_uint.0]** %4, align 8
  %233 = getelementptr inbounds [3 x %class.ap_uint.0]* %232, i64 %231
  %234 = getelementptr inbounds [3 x %class.ap_uint.0]* %233, i32 0, i64 %229
  %235 = load i32* %extract_px1, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [3 x %class.ap_uint.0]* %buf_cop, i32 0, i64 %236
  %238 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %234, %class.ap_uint.0* %237)
  br label %259

; <label>:239                                     ; preds = %217
  %240 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %241 = getelementptr %class.ap_uint.0* %28, i32 0, i32 0
  %242 = bitcast [1 x i8]* %241 to i8*
  store i8 %240, i8* %242, align 1
  %243 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %28)
  %244 = load i32* %extract_px1, align 4
  %245 = sext i32 %244 to i64
  %246 = load [3 x %class.ap_uint.0]** %4, align 8
  %247 = getelementptr inbounds [3 x %class.ap_uint.0]* %246, i64 %245
  %248 = getelementptr inbounds [3 x %class.ap_uint.0]* %247, i32 0, i64 %243
  %249 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 2)
  %250 = getelementptr %class.ap_uint.0* %29, i32 0, i32 0
  %251 = bitcast [1 x i8]* %250 to i8*
  store i8 %249, i8* %251, align 1
  %252 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %29)
  %253 = load i32* %extract_px1, align 4
  %254 = sext i32 %253 to i64
  %255 = load [3 x %class.ap_uint.0]** %4, align 8
  %256 = getelementptr inbounds [3 x %class.ap_uint.0]* %255, i64 %254
  %257 = getelementptr inbounds [3 x %class.ap_uint.0]* %256, i32 0, i64 %252
  %258 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %248, %class.ap_uint.0* %257)
  br label %259

; <label>:259                                     ; preds = %239, %225
  br label %260

; <label>:260                                     ; preds = %259
  %261 = load i32* %extract_px1, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %extract_px1, align 4
  br label %214

; <label>:263                                     ; preds = %214
  %264 = load %class.ap_uint.0** %5, align 8
  %265 = load [3 x %class.ap_uint.0]** %4, align 8
  %266 = bitcast %class.ap_uint.0* %30 to i8*
  %267 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %266, i8* %267, i64 1, i32 1, i1 false)
  %268 = getelementptr %class.ap_uint.0* %30, i32 0, i32 0
  %269 = bitcast [1 x i8]* %268 to i8*
  %270 = load i8* %269, align 1
  call void @_ZL85p_ZN2xf9xFnmsProcILi1ELi0ELi3ELi9EEEP7ap_uintILi8EEPA3_7ap_uintILi8EE7ap_uintILi8EE_1P7ap_uintILi8EEPA3_S0_S0_(%class.ap_uint.0* %264, [3 x %class.ap_uint.0]* %265, i8 %270)
  %271 = bitcast %class.ap_uint.2* %31 to i8*
  %272 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %271, i8* %272, i64 2, i32 1, i1 false)
  %273 = getelementptr %class.ap_uint.2* %31, i32 0, i32 0
  %274 = bitcast [2 x i8]* %273 to i16*
  %275 = load i16* %274, align 1
  %276 = call zeroext i1 @_ZgeILi13EEb7ap_uintIXT_EEi(i16 %275, i32 1)
  br i1 %276, label %277, label %281

; <label>:277                                     ; preds = %263
  %278 = load %"class.hls::stream.1"** %2, align 8
  %279 = load %class.ap_uint.0** %5, align 8
  %280 = getelementptr inbounds %class.ap_uint.0* %279, i64 0
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.1"* %278, %class.ap_uint.0* %280)
  br label %281

; <label>:281                                     ; preds = %277, %263
  store i32 0, i32* %wrap_buf, align 4
  br label %282

; <label>:282                                     ; preds = %336, %281
  %283 = load i32* %wrap_buf, align 4
  %284 = icmp slt i32 %283, 3
  br i1 %284, label %285, label %339

; <label>:285                                     ; preds = %282
  store i32 0, i32* %col_warp, align 4
  br label %286

; <label>:286                                     ; preds = %332, %285
  %287 = load i32* %col_warp, align 4
  %288 = icmp slt i32 %287, 2
  br i1 %288, label %289, label %335

; <label>:289                                     ; preds = %286
  %290 = bitcast %class.ap_uint.2* %32 to i8*
  %291 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %290, i8* %291, i64 2, i32 1, i1 false)
  %292 = getelementptr %class.ap_uint.2* %32, i32 0, i32 0
  %293 = bitcast [2 x i8]* %292 to i16*
  %294 = load i16* %293, align 1
  %295 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %294, i32 0)
  br i1 %295, label %296, label %314

; <label>:296                                     ; preds = %289
  %297 = load i32* %col_warp, align 4
  %298 = sext i32 %297 to i64
  %299 = load i32* %wrap_buf, align 4
  %300 = sext i32 %299 to i64
  %301 = load [3 x %class.ap_uint.0]** %4, align 8
  %302 = getelementptr inbounds [3 x %class.ap_uint.0]* %301, i64 %300
  %303 = getelementptr inbounds [3 x %class.ap_uint.0]* %302, i32 0, i64 %298
  %304 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %305 = getelementptr %class.ap_uint.0* %33, i32 0, i32 0
  %306 = bitcast [1 x i8]* %305 to i8*
  store i8 %304, i8* %306, align 1
  %307 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %33)
  %308 = load i32* %wrap_buf, align 4
  %309 = sext i32 %308 to i64
  %310 = load [3 x %class.ap_uint.0]** %4, align 8
  %311 = getelementptr inbounds [3 x %class.ap_uint.0]* %310, i64 %309
  %312 = getelementptr inbounds [3 x %class.ap_uint.0]* %311, i32 0, i64 %307
  %313 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %303, %class.ap_uint.0* %312)
  br label %331

; <label>:314                                     ; preds = %289
  %315 = load i32* %col_warp, align 4
  %316 = sext i32 %315 to i64
  %317 = load i32* %wrap_buf, align 4
  %318 = sext i32 %317 to i64
  %319 = load [3 x %class.ap_uint.0]** %4, align 8
  %320 = getelementptr inbounds [3 x %class.ap_uint.0]* %319, i64 %318
  %321 = getelementptr inbounds [3 x %class.ap_uint.0]* %320, i32 0, i64 %316
  %322 = load i32* %col_warp, align 4
  %323 = add nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = load i32* %wrap_buf, align 4
  %326 = sext i32 %325 to i64
  %327 = load [3 x %class.ap_uint.0]** %4, align 8
  %328 = getelementptr inbounds [3 x %class.ap_uint.0]* %327, i64 %326
  %329 = getelementptr inbounds [3 x %class.ap_uint.0]* %328, i32 0, i64 %324
  %330 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %321, %class.ap_uint.0* %329)
  br label %331

; <label>:331                                     ; preds = %314, %296
  br label %332

; <label>:332                                     ; preds = %331
  %333 = load i32* %col_warp, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %col_warp, align 4
  br label %286

; <label>:335                                     ; preds = %286
  br label %336

; <label>:336                                     ; preds = %335
  %337 = load i32* %wrap_buf, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %wrap_buf, align 4
  br label %282

; <label>:339                                     ; preds = %282
  br label %340

; <label>:340                                     ; preds = %339
  %341 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %col, i32 0)
  %342 = getelementptr %class.ap_uint.2* %34, i32 0, i32 0
  %343 = bitcast [2 x i8]* %342 to i16*
  store i16 %341, i16* %343, align 1
  br label %75

; <label>:344                                     ; preds = %75
  ret void
}

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.2*, %class.ap_uint.2*)

declare void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.2*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare zeroext i1 @_ZgtILi13EEb7ap_uintIXT_EEi(i16, i32)

declare zeroext i1 @_ZgtILi21EEbi6ap_intIXT_EE(i32, i24)

declare i24 @_ZmiILi8ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8, i16)

declare i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2*, i32)

declare i64 @_ZNK6ap_intILi21EEcvlEv(%class.ap_int*)

define internal void @_ZL85p_ZN2xf9xFnmsProcILi1ELi0ELi3ELi9EEEP7ap_uintILi8EEPA3_7ap_uintILi8EE7ap_uintILi8EE_1P7ap_uintILi8EEPA3_S0_S0_(%class.ap_uint.0* %OutputValues, [3 x %class.ap_uint.0]* %src_buf, i8 %win_size.coerce) uwtable {
  %1 = alloca %class.ap_uint.0*, align 8
  %2 = alloca [3 x %class.ap_uint.0]*, align 8
  %win_size = alloca %class.ap_uint.0, align 1
  %pix = alloca %class.ap_uint.0, align 1
  %3 = alloca %class.ap_uint.0, align 1
  %4 = alloca %class.ap_uint.0, align 1
  %5 = alloca %class.ap_uint.0, align 1
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
  store %class.ap_uint.0* %OutputValues, %class.ap_uint.0** %1, align 8
  store [3 x %class.ap_uint.0]* %src_buf, [3 x %class.ap_uint.0]** %2, align 8
  %20 = getelementptr %class.ap_uint.0* %win_size, i32 0, i32 0
  %21 = bitcast [1 x i8]* %20 to i8*
  store i8 %win_size.coerce, i8* %21, align 1
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %pix)
  %22 = load [3 x %class.ap_uint.0]** %2, align 8
  %23 = getelementptr inbounds [3 x %class.ap_uint.0]* %22, i64 1
  %24 = getelementptr inbounds [3 x %class.ap_uint.0]* %23, i32 0, i64 1
  %25 = bitcast %class.ap_uint.0* %3 to i8*
  %26 = bitcast %class.ap_uint.0* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 1, i32 1, i1 false)
  %27 = getelementptr %class.ap_uint.0* %3, i32 0, i32 0
  %28 = bitcast [1 x i8]* %27 to i8*
  %29 = load i8* %28, align 1
  %30 = call zeroext i1 @_ZneILi8EEb7ap_uintIXT_EEi(i8 %29, i32 0)
  br i1 %30, label %31, label %180

; <label>:31                                      ; preds = %0
  %32 = load [3 x %class.ap_uint.0]** %2, align 8
  %33 = getelementptr inbounds [3 x %class.ap_uint.0]* %32, i64 1
  %34 = getelementptr inbounds [3 x %class.ap_uint.0]* %33, i32 0, i64 1
  %35 = bitcast %class.ap_uint.0* %4 to i8*
  %36 = bitcast %class.ap_uint.0* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 1, i32 1, i1 false)
  %37 = load [3 x %class.ap_uint.0]** %2, align 8
  %38 = getelementptr inbounds [3 x %class.ap_uint.0]* %37, i64 1
  %39 = getelementptr inbounds [3 x %class.ap_uint.0]* %38, i32 0, i64 0
  %40 = bitcast %class.ap_uint.0* %5 to i8*
  %41 = bitcast %class.ap_uint.0* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 1, i32 1, i1 false)
  %42 = getelementptr %class.ap_uint.0* %4, i32 0, i32 0
  %43 = bitcast [1 x i8]* %42 to i8*
  %44 = load i8* %43, align 1
  %45 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %46 = bitcast [1 x i8]* %45 to i8*
  %47 = load i8* %46, align 1
  %48 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %44, i8 %47)
  br i1 %48, label %49, label %177

; <label>:49                                      ; preds = %31
  %50 = load [3 x %class.ap_uint.0]** %2, align 8
  %51 = getelementptr inbounds [3 x %class.ap_uint.0]* %50, i64 1
  %52 = getelementptr inbounds [3 x %class.ap_uint.0]* %51, i32 0, i64 1
  %53 = bitcast %class.ap_uint.0* %6 to i8*
  %54 = bitcast %class.ap_uint.0* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 1, i32 1, i1 false)
  %55 = load [3 x %class.ap_uint.0]** %2, align 8
  %56 = getelementptr inbounds [3 x %class.ap_uint.0]* %55, i64 1
  %57 = getelementptr inbounds [3 x %class.ap_uint.0]* %56, i32 0, i64 2
  %58 = bitcast %class.ap_uint.0* %7 to i8*
  %59 = bitcast %class.ap_uint.0* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 1, i32 1, i1 false)
  %60 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %61 = bitcast [1 x i8]* %60 to i8*
  %62 = load i8* %61, align 1
  %63 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %64 = bitcast [1 x i8]* %63 to i8*
  %65 = load i8* %64, align 1
  %66 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %62, i8 %65)
  br i1 %66, label %67, label %177

; <label>:67                                      ; preds = %49
  %68 = load [3 x %class.ap_uint.0]** %2, align 8
  %69 = getelementptr inbounds [3 x %class.ap_uint.0]* %68, i64 1
  %70 = getelementptr inbounds [3 x %class.ap_uint.0]* %69, i32 0, i64 1
  %71 = bitcast %class.ap_uint.0* %8 to i8*
  %72 = bitcast %class.ap_uint.0* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 1, i32 1, i1 false)
  %73 = load [3 x %class.ap_uint.0]** %2, align 8
  %74 = getelementptr inbounds [3 x %class.ap_uint.0]* %73, i64 0
  %75 = getelementptr inbounds [3 x %class.ap_uint.0]* %74, i32 0, i64 0
  %76 = bitcast %class.ap_uint.0* %9 to i8*
  %77 = bitcast %class.ap_uint.0* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 1, i32 1, i1 false)
  %78 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %79 = bitcast [1 x i8]* %78 to i8*
  %80 = load i8* %79, align 1
  %81 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %82 = bitcast [1 x i8]* %81 to i8*
  %83 = load i8* %82, align 1
  %84 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %80, i8 %83)
  br i1 %84, label %85, label %177

; <label>:85                                      ; preds = %67
  %86 = load [3 x %class.ap_uint.0]** %2, align 8
  %87 = getelementptr inbounds [3 x %class.ap_uint.0]* %86, i64 1
  %88 = getelementptr inbounds [3 x %class.ap_uint.0]* %87, i32 0, i64 1
  %89 = bitcast %class.ap_uint.0* %10 to i8*
  %90 = bitcast %class.ap_uint.0* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 1, i32 1, i1 false)
  %91 = load [3 x %class.ap_uint.0]** %2, align 8
  %92 = getelementptr inbounds [3 x %class.ap_uint.0]* %91, i64 0
  %93 = getelementptr inbounds [3 x %class.ap_uint.0]* %92, i32 0, i64 1
  %94 = bitcast %class.ap_uint.0* %11 to i8*
  %95 = bitcast %class.ap_uint.0* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 1, i32 1, i1 false)
  %96 = getelementptr %class.ap_uint.0* %10, i32 0, i32 0
  %97 = bitcast [1 x i8]* %96 to i8*
  %98 = load i8* %97, align 1
  %99 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %100 = bitcast [1 x i8]* %99 to i8*
  %101 = load i8* %100, align 1
  %102 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %98, i8 %101)
  br i1 %102, label %103, label %177

; <label>:103                                     ; preds = %85
  %104 = load [3 x %class.ap_uint.0]** %2, align 8
  %105 = getelementptr inbounds [3 x %class.ap_uint.0]* %104, i64 1
  %106 = getelementptr inbounds [3 x %class.ap_uint.0]* %105, i32 0, i64 1
  %107 = bitcast %class.ap_uint.0* %12 to i8*
  %108 = bitcast %class.ap_uint.0* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 1, i32 1, i1 false)
  %109 = load [3 x %class.ap_uint.0]** %2, align 8
  %110 = getelementptr inbounds [3 x %class.ap_uint.0]* %109, i64 0
  %111 = getelementptr inbounds [3 x %class.ap_uint.0]* %110, i32 0, i64 2
  %112 = bitcast %class.ap_uint.0* %13 to i8*
  %113 = bitcast %class.ap_uint.0* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 1, i32 1, i1 false)
  %114 = getelementptr %class.ap_uint.0* %12, i32 0, i32 0
  %115 = bitcast [1 x i8]* %114 to i8*
  %116 = load i8* %115, align 1
  %117 = getelementptr %class.ap_uint.0* %13, i32 0, i32 0
  %118 = bitcast [1 x i8]* %117 to i8*
  %119 = load i8* %118, align 1
  %120 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %116, i8 %119)
  br i1 %120, label %121, label %177

; <label>:121                                     ; preds = %103
  %122 = load [3 x %class.ap_uint.0]** %2, align 8
  %123 = getelementptr inbounds [3 x %class.ap_uint.0]* %122, i64 1
  %124 = getelementptr inbounds [3 x %class.ap_uint.0]* %123, i32 0, i64 1
  %125 = bitcast %class.ap_uint.0* %14 to i8*
  %126 = bitcast %class.ap_uint.0* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %126, i64 1, i32 1, i1 false)
  %127 = load [3 x %class.ap_uint.0]** %2, align 8
  %128 = getelementptr inbounds [3 x %class.ap_uint.0]* %127, i64 2
  %129 = getelementptr inbounds [3 x %class.ap_uint.0]* %128, i32 0, i64 0
  %130 = bitcast %class.ap_uint.0* %15 to i8*
  %131 = bitcast %class.ap_uint.0* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 1, i32 1, i1 false)
  %132 = getelementptr %class.ap_uint.0* %14, i32 0, i32 0
  %133 = bitcast [1 x i8]* %132 to i8*
  %134 = load i8* %133, align 1
  %135 = getelementptr %class.ap_uint.0* %15, i32 0, i32 0
  %136 = bitcast [1 x i8]* %135 to i8*
  %137 = load i8* %136, align 1
  %138 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %134, i8 %137)
  br i1 %138, label %139, label %177

; <label>:139                                     ; preds = %121
  %140 = load [3 x %class.ap_uint.0]** %2, align 8
  %141 = getelementptr inbounds [3 x %class.ap_uint.0]* %140, i64 1
  %142 = getelementptr inbounds [3 x %class.ap_uint.0]* %141, i32 0, i64 1
  %143 = bitcast %class.ap_uint.0* %16 to i8*
  %144 = bitcast %class.ap_uint.0* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %143, i8* %144, i64 1, i32 1, i1 false)
  %145 = load [3 x %class.ap_uint.0]** %2, align 8
  %146 = getelementptr inbounds [3 x %class.ap_uint.0]* %145, i64 2
  %147 = getelementptr inbounds [3 x %class.ap_uint.0]* %146, i32 0, i64 1
  %148 = bitcast %class.ap_uint.0* %17 to i8*
  %149 = bitcast %class.ap_uint.0* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* %149, i64 1, i32 1, i1 false)
  %150 = getelementptr %class.ap_uint.0* %16, i32 0, i32 0
  %151 = bitcast [1 x i8]* %150 to i8*
  %152 = load i8* %151, align 1
  %153 = getelementptr %class.ap_uint.0* %17, i32 0, i32 0
  %154 = bitcast [1 x i8]* %153 to i8*
  %155 = load i8* %154, align 1
  %156 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %152, i8 %155)
  br i1 %156, label %157, label %177

; <label>:157                                     ; preds = %139
  %158 = load [3 x %class.ap_uint.0]** %2, align 8
  %159 = getelementptr inbounds [3 x %class.ap_uint.0]* %158, i64 1
  %160 = getelementptr inbounds [3 x %class.ap_uint.0]* %159, i32 0, i64 1
  %161 = bitcast %class.ap_uint.0* %18 to i8*
  %162 = bitcast %class.ap_uint.0* %160 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %161, i8* %162, i64 1, i32 1, i1 false)
  %163 = load [3 x %class.ap_uint.0]** %2, align 8
  %164 = getelementptr inbounds [3 x %class.ap_uint.0]* %163, i64 2
  %165 = getelementptr inbounds [3 x %class.ap_uint.0]* %164, i32 0, i64 2
  %166 = bitcast %class.ap_uint.0* %19 to i8*
  %167 = bitcast %class.ap_uint.0* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %166, i8* %167, i64 1, i32 1, i1 false)
  %168 = getelementptr %class.ap_uint.0* %18, i32 0, i32 0
  %169 = bitcast [1 x i8]* %168 to i8*
  %170 = load i8* %169, align 1
  %171 = getelementptr %class.ap_uint.0* %19, i32 0, i32 0
  %172 = bitcast [1 x i8]* %171 to i8*
  %173 = load i8* %172, align 1
  %174 = call zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8 %170, i8 %173)
  br i1 %174, label %175, label %177

; <label>:175                                     ; preds = %157
  %176 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %pix, i32 255)
  br label %179

; <label>:177                                     ; preds = %157, %139, %121, %103, %85, %67, %49, %31
  %178 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %pix, i32 0)
  br label %179

; <label>:179                                     ; preds = %177, %175
  br label %182

; <label>:180                                     ; preds = %0
  %181 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %pix, i32 0)
  br label %182

; <label>:182                                     ; preds = %180, %179
  %183 = load %class.ap_uint.0** %1, align 8
  %184 = getelementptr inbounds %class.ap_uint.0* %183, i64 0
  %185 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %184, %class.ap_uint.0* %pix)
  ret void
}

declare zeroext i1 @_ZgeILi13EEb7ap_uintIXT_EEi(i16, i32)

declare zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16, i32)

declare zeroext i1 @_ZneILi8EEb7ap_uintIXT_EEi(i8, i32)

declare zeroext i1 @_ZgtILi8ELi8EEb7ap_uintIXT_EES0_IXT0_EE(i8, i8)

define internal void @_ZL245p_ZN2xf11ProcessFastILi256ELi256ELi0ELi1ELi1ELi259ELi7ELi49EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEEPA256_7ap_uintILi8EEPA7_7ap_uintILi8EEP7ap_uintILi8EER7ap_uintILi8EEttRtP7ap_uintILi13EE7ap_uintILi13EE7ap_uintILi8EEhR7ap_uintILi8EE_1RN3hls6streamI7ap_uintILi8EEEES4_PA256_S2_PA7_S2_PS2_RS2_ttRtPS1_ILi13EESC_S2_hSA_(%"class.hls::stream.1"* %_src_mat, %"class.hls::stream.1"* %_out_mat, [256 x %class.ap_uint.0]* %buf, [7 x %class.ap_uint.0]* %src_buf, %class.ap_uint.0* %OutputValues, %class.ap_uint.0* %P0, i16 zeroext %img_width, i16 zeroext %img_height, i16* %shift_x, %class.ap_uint.2* %row_ind, i16 %row.coerce, i8 %win_size.coerce, i8 zeroext %_threshold, %class.ap_uint.0* %pack_corners) uwtable {
  %1 = alloca %"class.hls::stream.1"*, align 8
  %2 = alloca %"class.hls::stream.1"*, align 8
  %3 = alloca [256 x %class.ap_uint.0]*, align 8
  %4 = alloca [7 x %class.ap_uint.0]*, align 8
  %5 = alloca %class.ap_uint.0*, align 8
  %6 = alloca %class.ap_uint.0*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16*, align 8
  %10 = alloca %class.ap_uint.2*, align 8
  %row = alloca %class.ap_uint.2, align 2
  %win_size = alloca %class.ap_uint.0, align 1
  %11 = alloca i8, align 1
  %12 = alloca %class.ap_uint.0*, align 8
  %buf_cop = alloca [7 x %class.ap_uint.0], align 1
  %npc = alloca i16, align 2
  %col_loop_var = alloca i16, align 2
  %extract_px = alloca i32, align 4
  %ext_copy = alloca i32, align 4
  %col = alloca %class.ap_uint.2, align 1
  %13 = alloca %class.ap_uint.2, align 1
  %14 = alloca %class.ap_uint.2, align 1
  %15 = alloca %class.ap_uint.2, align 1
  %16 = alloca %class.ap_uint.0, align 1
  %17 = alloca %class.ap_uint.0, align 1
  %copy_buf_var = alloca i32, align 4
  %18 = alloca %class.ap_uint.2, align 1
  %19 = alloca %class.ap_int, align 1
  %20 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.2, align 1
  %22 = alloca i24
  %23 = alloca i24
  %24 = alloca %class.ap_uint.0, align 1
  %25 = alloca %class.ap_uint.2, align 1
  %26 = alloca %class.ap_int, align 1
  %27 = alloca i24
  %extract_px1 = alloca i32, align 4
  %28 = alloca %class.ap_uint.2, align 1
  %29 = alloca %class.ap_uint.0, align 1
  %30 = alloca %class.ap_uint.0, align 1
  %31 = alloca %class.ap_uint.0, align 1
  %32 = alloca %class.ap_uint.2, align 1
  %33 = alloca %class.ap_uint.2, align 1
  %34 = alloca %class.ap_uint.2, align 1
  %35 = alloca %class.ap_uint.2, align 1
  %36 = alloca %class.ap_uint.0, align 1
  %37 = alloca %class.ap_uint.2, align 1
  %38 = alloca %class.ap_uint.2, align 1
  %39 = alloca %class.ap_uint.2, align 1
  %wrap_buf = alloca i32, align 4
  %col_warp = alloca i32, align 4
  %40 = alloca %class.ap_uint.2, align 1
  %41 = alloca %class.ap_uint.0, align 1
  %42 = alloca %class.ap_uint.2, align 1
  store %"class.hls::stream.1"* %_src_mat, %"class.hls::stream.1"** %1, align 8
  store %"class.hls::stream.1"* %_out_mat, %"class.hls::stream.1"** %2, align 8
  store [256 x %class.ap_uint.0]* %buf, [256 x %class.ap_uint.0]** %3, align 8
  store [7 x %class.ap_uint.0]* %src_buf, [7 x %class.ap_uint.0]** %4, align 8
  store %class.ap_uint.0* %OutputValues, %class.ap_uint.0** %5, align 8
  store %class.ap_uint.0* %P0, %class.ap_uint.0** %6, align 8
  store i16 %img_width, i16* %7, align 2
  store i16 %img_height, i16* %8, align 2
  store i16* %shift_x, i16** %9, align 8
  store %class.ap_uint.2* %row_ind, %class.ap_uint.2** %10, align 8
  %43 = getelementptr %class.ap_uint.2* %row, i32 0, i32 0
  %44 = bitcast [2 x i8]* %43 to i16*
  store i16 %row.coerce, i16* %44, align 1
  %45 = getelementptr %class.ap_uint.0* %win_size, i32 0, i32 0
  %46 = bitcast [1 x i8]* %45 to i8*
  store i8 %win_size.coerce, i8* %46, align 1
  store i8 %_threshold, i8* %11, align 1
  store %class.ap_uint.0* %pack_corners, %class.ap_uint.0** %12, align 8
  %47 = getelementptr inbounds [7 x %class.ap_uint.0]* %buf_cop, i32 0, i32 0
  %48 = getelementptr inbounds %class.ap_uint.0* %47, i64 7
  br label %49

; <label>:49                                      ; preds = %49, %0
  %50 = phi %class.ap_uint.0* [ %47, %0 ], [ %51, %49 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %50)
  %51 = getelementptr inbounds %class.ap_uint.0* %50, i64 1
  %52 = icmp eq %class.ap_uint.0* %51, %48
  br i1 %52, label %53, label %49

; <label>:53                                      ; preds = %49
  store i16 1, i16* %npc, align 2
  store i16 0, i16* %col_loop_var, align 2
  store i16 3, i16* %col_loop_var, align 2
  store i32 0, i32* %extract_px, align 4
  br label %54

; <label>:54                                      ; preds = %78, %53
  %55 = load i32* %extract_px, align 4
  %56 = icmp slt i32 %55, 7
  br i1 %56, label %57, label %81

; <label>:57                                      ; preds = %54
  store i32 0, i32* %ext_copy, align 4
  br label %58

; <label>:58                                      ; preds = %74, %57
  %59 = load i32* %ext_copy, align 4
  %60 = load i16* %npc, align 2
  %61 = zext i16 %60 to i32
  %62 = add nsw i32 %61, 7
  %63 = sub nsw i32 %62, 1
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %77

; <label>:65                                      ; preds = %58
  %66 = load i32* %ext_copy, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32* %extract_px, align 4
  %69 = sext i32 %68 to i64
  %70 = load [7 x %class.ap_uint.0]** %4, align 8
  %71 = getelementptr inbounds [7 x %class.ap_uint.0]* %70, i64 %69
  %72 = getelementptr inbounds [7 x %class.ap_uint.0]* %71, i32 0, i64 %67
  %73 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %72, i32 0)
  br label %74

; <label>:74                                      ; preds = %65
  %75 = load i32* %ext_copy, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %ext_copy, align 4
  br label %58

; <label>:77                                      ; preds = %58
  br label %78

; <label>:78                                      ; preds = %77
  %79 = load i32* %extract_px, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %extract_px, align 4
  br label %54

; <label>:81                                      ; preds = %54
  br label %82

; <label>:82                                      ; preds = %81
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.2* %col, i32 0)
  br label %83

; <label>:83                                      ; preds = %401, %82
  %84 = bitcast %class.ap_uint.2* %13 to i8*
  %85 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 2, i32 1, i1 false)
  %86 = load i16* %7, align 2
  %87 = zext i16 %86 to i32
  %88 = ashr i32 %87, 0
  %89 = load i16* %col_loop_var, align 2
  %90 = zext i16 %89 to i32
  %91 = add nsw i32 %88, %90
  %92 = getelementptr %class.ap_uint.2* %13, i32 0, i32 0
  %93 = bitcast [2 x i8]* %92 to i16*
  %94 = load i16* %93, align 1
  %95 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %94, i32 %91)
  br i1 %95, label %96, label %405

; <label>:96                                      ; preds = %83
  %97 = bitcast %class.ap_uint.2* %14 to i8*
  %98 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 2, i32 1, i1 false)
  %99 = load i16* %8, align 2
  %100 = getelementptr %class.ap_uint.2* %14, i32 0, i32 0
  %101 = bitcast [2 x i8]* %100 to i16*
  %102 = load i16* %101, align 1
  %103 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %102, i16 zeroext %99)
  br i1 %103, label %104, label %131

; <label>:104                                     ; preds = %96
  %105 = bitcast %class.ap_uint.2* %15 to i8*
  %106 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 2, i32 1, i1 false)
  %107 = load i16* %7, align 2
  %108 = zext i16 %107 to i32
  %109 = ashr i32 %108, 0
  %110 = getelementptr %class.ap_uint.2* %15, i32 0, i32 0
  %111 = bitcast [2 x i8]* %110 to i16*
  %112 = load i16* %111, align 1
  %113 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %112, i32 %109)
  br i1 %113, label %114, label %131

; <label>:114                                     ; preds = %104
  %115 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %116 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %117 = getelementptr %class.ap_uint.0* %16, i32 0, i32 0
  %118 = bitcast [1 x i8]* %117 to i8*
  store i8 %116, i8* %118, align 1
  %119 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %16)
  %120 = load %class.ap_uint.2** %10, align 8
  %121 = getelementptr inbounds %class.ap_uint.2* %120, i64 %119
  %122 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %121)
  %123 = load [256 x %class.ap_uint.0]** %3, align 8
  %124 = getelementptr inbounds [256 x %class.ap_uint.0]* %123, i64 %122
  %125 = getelementptr inbounds [256 x %class.ap_uint.0]* %124, i32 0, i64 %115
  %126 = load %"class.hls::stream.1"** %1, align 8
  %127 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.1"* %126)
  %128 = getelementptr %class.ap_uint.0* %17, i32 0, i32 0
  %129 = bitcast [1 x i8]* %128 to i8*
  store i8 %127, i8* %129, align 1
  %130 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %125, %class.ap_uint.0* %17)
  br label %131

; <label>:131                                     ; preds = %114, %104, %96
  store i32 0, i32* %copy_buf_var, align 4
  br label %132

; <label>:132                                     ; preds = %218, %131
  %133 = load i32* %copy_buf_var, align 4
  %134 = icmp slt i32 %133, 7
  br i1 %134, label %135, label %221

; <label>:135                                     ; preds = %132
  %136 = bitcast %class.ap_uint.2* %18 to i8*
  %137 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %137, i64 2, i32 1, i1 false)
  %138 = load i16* %8, align 2
  %139 = zext i16 %138 to i32
  %140 = sub nsw i32 %139, 1
  %141 = getelementptr %class.ap_uint.2* %18, i32 0, i32 0
  %142 = bitcast [2 x i8]* %141 to i16*
  %143 = load i16* %142, align 1
  %144 = call zeroext i1 @_ZgtILi13EEb7ap_uintIXT_EEi(i16 %143, i32 %140)
  br i1 %144, label %145, label %203

; <label>:145                                     ; preds = %135
  %146 = load i32* %copy_buf_var, align 4
  %147 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %148 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %149 = bitcast [1 x i8]* %148 to i8*
  store i8 %147, i8* %149, align 1
  %150 = load i16* %8, align 2
  %151 = zext i16 %150 to i32
  %152 = sub nsw i32 %151, 1
  %153 = call i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %row, i32 %152)
  %154 = getelementptr %class.ap_uint.2* %21, i32 0, i32 0
  %155 = bitcast [2 x i8]* %154 to i16*
  store i16 %153, i16* %155, align 1
  %156 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %157 = bitcast [1 x i8]* %156 to i8*
  %158 = load i8* %157, align 1
  %159 = getelementptr %class.ap_uint.2* %21, i32 0, i32 0
  %160 = bitcast [2 x i8]* %159 to i16*
  %161 = load i16* %160, align 1
  %162 = call i24 @_ZmiILi8ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %158, i16 %161)
  %163 = getelementptr %class.ap_int* %19, i32 0, i32 0
  store i24 %162, i24* %22
  %164 = bitcast i24* %22 to [3 x i8]*
  %165 = load [3 x i8]* %164, align 1
  store [3 x i8] %165, [3 x i8]* %163
  %166 = getelementptr %class.ap_int* %19, i32 0, i32 0
  %167 = bitcast i24* %23 to [3 x i8]*
  %168 = load [3 x i8]* %166
  store [3 x i8] %168, [3 x i8]* %167, align 1
  %169 = load i24* %23
  %170 = call zeroext i1 @_ZgtILi21EEbi6ap_intIXT_EE(i32 %146, i24 %169)
  br i1 %170, label %171, label %203

; <label>:171                                     ; preds = %145
  %172 = load i32* %copy_buf_var, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [7 x %class.ap_uint.0]* %buf_cop, i32 0, i64 %173
  %175 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %176 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %177 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %178 = bitcast [1 x i8]* %177 to i8*
  store i8 %176, i8* %178, align 1
  %179 = load i16* %8, align 2
  %180 = zext i16 %179 to i32
  %181 = sub nsw i32 %180, 1
  %182 = call i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %row, i32 %181)
  %183 = getelementptr %class.ap_uint.2* %25, i32 0, i32 0
  %184 = bitcast [2 x i8]* %183 to i16*
  store i16 %182, i16* %184, align 1
  %185 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %186 = bitcast [1 x i8]* %185 to i8*
  %187 = load i8* %186, align 1
  %188 = getelementptr %class.ap_uint.2* %25, i32 0, i32 0
  %189 = bitcast [2 x i8]* %188 to i16*
  %190 = load i16* %189, align 1
  %191 = call i24 @_ZmiILi8ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %187, i16 %190)
  %192 = getelementptr %class.ap_int* %26, i32 0, i32 0
  store i24 %191, i24* %27
  %193 = bitcast i24* %27 to [3 x i8]*
  %194 = load [3 x i8]* %193, align 1
  store [3 x i8] %194, [3 x i8]* %192
  %195 = call i64 @_ZNK6ap_intILi21EEcvlEv(%class.ap_int* %26)
  %196 = load %class.ap_uint.2** %10, align 8
  %197 = getelementptr inbounds %class.ap_uint.2* %196, i64 %195
  %198 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %197)
  %199 = load [256 x %class.ap_uint.0]** %3, align 8
  %200 = getelementptr inbounds [256 x %class.ap_uint.0]* %199, i64 %198
  %201 = getelementptr inbounds [256 x %class.ap_uint.0]* %200, i32 0, i64 %175
  %202 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %174, %class.ap_uint.0* %201)
  br label %217

; <label>:203                                     ; preds = %145, %135
  %204 = load i32* %copy_buf_var, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [7 x %class.ap_uint.0]* %buf_cop, i32 0, i64 %205
  %207 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %col)
  %208 = load i32* %copy_buf_var, align 4
  %209 = sext i32 %208 to i64
  %210 = load %class.ap_uint.2** %10, align 8
  %211 = getelementptr inbounds %class.ap_uint.2* %210, i64 %209
  %212 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %211)
  %213 = load [256 x %class.ap_uint.0]** %3, align 8
  %214 = getelementptr inbounds [256 x %class.ap_uint.0]* %213, i64 %212
  %215 = getelementptr inbounds [256 x %class.ap_uint.0]* %214, i32 0, i64 %207
  %216 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %206, %class.ap_uint.0* %215)
  br label %217

; <label>:217                                     ; preds = %203, %171
  br label %218

; <label>:218                                     ; preds = %217
  %219 = load i32* %copy_buf_var, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %copy_buf_var, align 4
  br label %132

; <label>:221                                     ; preds = %132
  store i32 0, i32* %extract_px1, align 4
  br label %222

; <label>:222                                     ; preds = %268, %221
  %223 = load i32* %extract_px1, align 4
  %224 = icmp slt i32 %223, 7
  br i1 %224, label %225, label %271

; <label>:225                                     ; preds = %222
  %226 = bitcast %class.ap_uint.2* %28 to i8*
  %227 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %226, i8* %227, i64 2, i32 1, i1 false)
  %228 = load i16* %7, align 2
  %229 = getelementptr %class.ap_uint.2* %28, i32 0, i32 0
  %230 = bitcast [2 x i8]* %229 to i16*
  %231 = load i16* %230, align 1
  %232 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %231, i16 zeroext %228)
  br i1 %232, label %233, label %247

; <label>:233                                     ; preds = %225
  %234 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %235 = getelementptr %class.ap_uint.0* %29, i32 0, i32 0
  %236 = bitcast [1 x i8]* %235 to i8*
  store i8 %234, i8* %236, align 1
  %237 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %29)
  %238 = load i32* %extract_px1, align 4
  %239 = sext i32 %238 to i64
  %240 = load [7 x %class.ap_uint.0]** %4, align 8
  %241 = getelementptr inbounds [7 x %class.ap_uint.0]* %240, i64 %239
  %242 = getelementptr inbounds [7 x %class.ap_uint.0]* %241, i32 0, i64 %237
  %243 = load i32* %extract_px1, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [7 x %class.ap_uint.0]* %buf_cop, i32 0, i64 %244
  %246 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %242, %class.ap_uint.0* %245)
  br label %267

; <label>:247                                     ; preds = %225
  %248 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %249 = getelementptr %class.ap_uint.0* %30, i32 0, i32 0
  %250 = bitcast [1 x i8]* %249 to i8*
  store i8 %248, i8* %250, align 1
  %251 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %30)
  %252 = load i32* %extract_px1, align 4
  %253 = sext i32 %252 to i64
  %254 = load [7 x %class.ap_uint.0]** %4, align 8
  %255 = getelementptr inbounds [7 x %class.ap_uint.0]* %254, i64 %253
  %256 = getelementptr inbounds [7 x %class.ap_uint.0]* %255, i32 0, i64 %251
  %257 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 2)
  %258 = getelementptr %class.ap_uint.0* %31, i32 0, i32 0
  %259 = bitcast [1 x i8]* %258 to i8*
  store i8 %257, i8* %259, align 1
  %260 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %31)
  %261 = load i32* %extract_px1, align 4
  %262 = sext i32 %261 to i64
  %263 = load [7 x %class.ap_uint.0]** %4, align 8
  %264 = getelementptr inbounds [7 x %class.ap_uint.0]* %263, i64 %262
  %265 = getelementptr inbounds [7 x %class.ap_uint.0]* %264, i32 0, i64 %260
  %266 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %256, %class.ap_uint.0* %265)
  br label %267

; <label>:267                                     ; preds = %247, %233
  br label %268

; <label>:268                                     ; preds = %267
  %269 = load i32* %extract_px1, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %extract_px1, align 4
  br label %222

; <label>:271                                     ; preds = %222
  %272 = bitcast %class.ap_uint.2* %32 to i8*
  %273 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %272, i8* %273, i64 2, i32 1, i1 false)
  %274 = load i16* %7, align 2
  %275 = getelementptr %class.ap_uint.2* %32, i32 0, i32 0
  %276 = bitcast [2 x i8]* %275 to i16*
  %277 = load i16* %276, align 1
  %278 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %277, i16 zeroext %274)
  br i1 %278, label %279, label %311

; <label>:279                                     ; preds = %271
  %280 = bitcast %class.ap_uint.2* %33 to i8*
  %281 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %280, i8* %281, i64 2, i32 1, i1 false)
  %282 = load i16* %8, align 2
  %283 = getelementptr %class.ap_uint.2* %33, i32 0, i32 0
  %284 = bitcast [2 x i8]* %283 to i16*
  %285 = load i16* %284, align 1
  %286 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %285, i16 zeroext %282)
  br i1 %286, label %287, label %311

; <label>:287                                     ; preds = %279
  %288 = bitcast %class.ap_uint.2* %34 to i8*
  %289 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %288, i8* %289, i64 2, i32 1, i1 false)
  %290 = getelementptr %class.ap_uint.2* %34, i32 0, i32 0
  %291 = bitcast [2 x i8]* %290 to i16*
  %292 = load i16* %291, align 1
  %293 = call zeroext i1 @_ZgeILi13EEb7ap_uintIXT_EEi(i16 %292, i32 6)
  br i1 %293, label %294, label %311

; <label>:294                                     ; preds = %287
  %295 = bitcast %class.ap_uint.2* %35 to i8*
  %296 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %295, i8* %296, i64 2, i32 1, i1 false)
  %297 = getelementptr %class.ap_uint.2* %35, i32 0, i32 0
  %298 = bitcast [2 x i8]* %297 to i16*
  %299 = load i16* %298, align 1
  %300 = call zeroext i1 @_ZgeILi13EEb7ap_uintIXT_EEi(i16 %299, i32 6)
  br i1 %300, label %301, label %311

; <label>:301                                     ; preds = %294
  %302 = load %class.ap_uint.0** %5, align 8
  %303 = load [7 x %class.ap_uint.0]** %4, align 8
  %304 = bitcast %class.ap_uint.0* %36 to i8*
  %305 = bitcast %class.ap_uint.0* %win_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %304, i8* %305, i64 1, i32 1, i1 false)
  %306 = load i8* %11, align 1
  %307 = load %class.ap_uint.0** %12, align 8
  %308 = getelementptr %class.ap_uint.0* %36, i32 0, i32 0
  %309 = bitcast [1 x i8]* %308 to i8*
  %310 = load i8* %309, align 1
  call void @_ZL108p_ZN2xf10xFfastProcILi1ELi1ELi0ELi7ELi49EEEP7ap_uintILi8EEPA7_7ap_uintILi8EE7ap_uintILi8EEhR7ap_uintILi8EE_1P7ap_uintILi8EEPA7_S0_S0_hRS0_(%class.ap_uint.0* %302, [7 x %class.ap_uint.0]* %303, i8 %310, i8 zeroext %306, %class.ap_uint.0* %307)
  br label %311

; <label>:311                                     ; preds = %301, %294, %287, %279, %271
  %312 = bitcast %class.ap_uint.2* %37 to i8*
  %313 = bitcast %class.ap_uint.2* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %312, i8* %313, i64 2, i32 1, i1 false)
  %314 = load i16* %8, align 2
  %315 = getelementptr %class.ap_uint.2* %37, i32 0, i32 0
  %316 = bitcast [2 x i8]* %315 to i16*
  %317 = load i16* %316, align 1
  %318 = call zeroext i1 @_ZgeILi13EEb7ap_uintIXT_EEt(i16 %317, i16 zeroext %314)
  br i1 %318, label %327, label %319

; <label>:319                                     ; preds = %311
  %320 = bitcast %class.ap_uint.2* %38 to i8*
  %321 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %320, i8* %321, i64 2, i32 1, i1 false)
  %322 = load i16* %7, align 2
  %323 = getelementptr %class.ap_uint.2* %38, i32 0, i32 0
  %324 = bitcast [2 x i8]* %323 to i16*
  %325 = load i16* %324, align 1
  %326 = call zeroext i1 @_ZgeILi13EEb7ap_uintIXT_EEt(i16 %325, i16 zeroext %322)
  br i1 %326, label %327, label %331

; <label>:327                                     ; preds = %319, %311
  %328 = load %class.ap_uint.0** %5, align 8
  %329 = getelementptr inbounds %class.ap_uint.0* %328, i64 0
  %330 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %329, i32 0)
  br label %331

; <label>:331                                     ; preds = %327, %319
  %332 = bitcast %class.ap_uint.2* %39 to i8*
  %333 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %332, i8* %333, i64 2, i32 1, i1 false)
  %334 = getelementptr %class.ap_uint.2* %39, i32 0, i32 0
  %335 = bitcast [2 x i8]* %334 to i16*
  %336 = load i16* %335, align 1
  %337 = call zeroext i1 @_ZgeILi13EEb7ap_uintIXT_EEi(i16 %336, i32 3)
  br i1 %337, label %338, label %342

; <label>:338                                     ; preds = %331
  %339 = load %"class.hls::stream.1"** %2, align 8
  %340 = load %class.ap_uint.0** %5, align 8
  %341 = getelementptr inbounds %class.ap_uint.0* %340, i64 0
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.1"* %339, %class.ap_uint.0* %341)
  br label %342

; <label>:342                                     ; preds = %338, %331
  store i32 0, i32* %wrap_buf, align 4
  br label %343

; <label>:343                                     ; preds = %397, %342
  %344 = load i32* %wrap_buf, align 4
  %345 = icmp slt i32 %344, 7
  br i1 %345, label %346, label %400

; <label>:346                                     ; preds = %343
  store i32 0, i32* %col_warp, align 4
  br label %347

; <label>:347                                     ; preds = %393, %346
  %348 = load i32* %col_warp, align 4
  %349 = icmp slt i32 %348, 6
  br i1 %349, label %350, label %396

; <label>:350                                     ; preds = %347
  %351 = bitcast %class.ap_uint.2* %40 to i8*
  %352 = bitcast %class.ap_uint.2* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %351, i8* %352, i64 2, i32 1, i1 false)
  %353 = getelementptr %class.ap_uint.2* %40, i32 0, i32 0
  %354 = bitcast [2 x i8]* %353 to i16*
  %355 = load i16* %354, align 1
  %356 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %355, i32 0)
  br i1 %356, label %357, label %375

; <label>:357                                     ; preds = %350
  %358 = load i32* %col_warp, align 4
  %359 = sext i32 %358 to i64
  %360 = load i32* %wrap_buf, align 4
  %361 = sext i32 %360 to i64
  %362 = load [7 x %class.ap_uint.0]** %4, align 8
  %363 = getelementptr inbounds [7 x %class.ap_uint.0]* %362, i64 %361
  %364 = getelementptr inbounds [7 x %class.ap_uint.0]* %363, i32 0, i64 %359
  %365 = call i8 @_ZmiILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %win_size, i32 1)
  %366 = getelementptr %class.ap_uint.0* %41, i32 0, i32 0
  %367 = bitcast [1 x i8]* %366 to i8*
  store i8 %365, i8* %367, align 1
  %368 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %41)
  %369 = load i32* %wrap_buf, align 4
  %370 = sext i32 %369 to i64
  %371 = load [7 x %class.ap_uint.0]** %4, align 8
  %372 = getelementptr inbounds [7 x %class.ap_uint.0]* %371, i64 %370
  %373 = getelementptr inbounds [7 x %class.ap_uint.0]* %372, i32 0, i64 %368
  %374 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %364, %class.ap_uint.0* %373)
  br label %392

; <label>:375                                     ; preds = %350
  %376 = load i32* %col_warp, align 4
  %377 = sext i32 %376 to i64
  %378 = load i32* %wrap_buf, align 4
  %379 = sext i32 %378 to i64
  %380 = load [7 x %class.ap_uint.0]** %4, align 8
  %381 = getelementptr inbounds [7 x %class.ap_uint.0]* %380, i64 %379
  %382 = getelementptr inbounds [7 x %class.ap_uint.0]* %381, i32 0, i64 %377
  %383 = load i32* %col_warp, align 4
  %384 = add nsw i32 %383, 1
  %385 = sext i32 %384 to i64
  %386 = load i32* %wrap_buf, align 4
  %387 = sext i32 %386 to i64
  %388 = load [7 x %class.ap_uint.0]** %4, align 8
  %389 = getelementptr inbounds [7 x %class.ap_uint.0]* %388, i64 %387
  %390 = getelementptr inbounds [7 x %class.ap_uint.0]* %389, i32 0, i64 %385
  %391 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %382, %class.ap_uint.0* %390)
  br label %392

; <label>:392                                     ; preds = %375, %357
  br label %393

; <label>:393                                     ; preds = %392
  %394 = load i32* %col_warp, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %col_warp, align 4
  br label %347

; <label>:396                                     ; preds = %347
  br label %397

; <label>:397                                     ; preds = %396
  %398 = load i32* %wrap_buf, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %wrap_buf, align 4
  br label %343

; <label>:400                                     ; preds = %343
  br label %401

; <label>:401                                     ; preds = %400
  %402 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %col, i32 0)
  %403 = getelementptr %class.ap_uint.2* %42, i32 0, i32 0
  %404 = bitcast [2 x i8]* %403 to i16*
  store i16 %402, i16* %404, align 1
  br label %83

; <label>:405                                     ; preds = %83
  ret void
}

define internal void @_ZL108p_ZN2xf10xFfastProcILi1ELi1ELi0ELi7ELi49EEEP7ap_uintILi8EEPA7_7ap_uintILi8EE7ap_uintILi8EEhR7ap_uintILi8EE_1P7ap_uintILi8EEPA7_S0_S0_hRS0_(%class.ap_uint.0* %OutputValues, [7 x %class.ap_uint.0]* %src_buf, i8 %win_size.coerce, i8 zeroext %_threshold, %class.ap_uint.0* %pack_corners) uwtable {
  %1 = alloca %class.ap_uint.0*, align 8
  %2 = alloca [7 x %class.ap_uint.0]*, align 8
  %win_size = alloca %class.ap_uint.0, align 1
  %3 = alloca i8, align 1
  %4 = alloca %class.ap_uint.0*, align 8
  %kx = alloca i8, align 1
  %ix = alloca i8, align 1
  %tbuf_temp = alloca %class.ap_uint.0, align 1
  %flag_d = alloca [1 x [25 x i16]], align 16
  %flag_val = alloca [1 x [25 x i16]], align 16
  %i = alloca %class.ap_uint.3, align 1
  %5 = alloca %class.ap_uint.3, align 1
  %6 = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_uint.3, align 1
  %8 = alloca %class.ap_uint.0, align 1
  %9 = alloca %class.ap_uint.3, align 1
  %10 = alloca %class.ap_int.4, align 1
  %11 = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.3, align 1
  %13 = alloca %class.ap_uint.0, align 1
  %14 = alloca %class.ap_uint.3, align 1
  %15 = alloca %class.ap_int.4, align 1
  %16 = alloca %class.ap_uint.0, align 1
  %17 = alloca %class.ap_uint.3, align 1
  %18 = alloca %class.ap_uint.0, align 1
  %19 = alloca %class.ap_uint.3, align 1
  %20 = alloca %class.ap_int.4, align 1
  %21 = alloca %class.ap_uint.0, align 1
  %22 = alloca %class.ap_uint.3, align 1
  %23 = alloca %class.ap_uint.0, align 1
  %24 = alloca %class.ap_uint.3, align 1
  %25 = alloca %class.ap_int.4, align 1
  %26 = alloca %class.ap_uint.0, align 1
  %27 = alloca %class.ap_uint.3, align 1
  %28 = alloca %class.ap_uint.0, align 1
  %29 = alloca %class.ap_uint.3, align 1
  %30 = alloca %class.ap_int.4, align 1
  %31 = alloca %class.ap_uint.0, align 1
  %32 = alloca %class.ap_uint.3, align 1
  %33 = alloca %class.ap_uint.0, align 1
  %34 = alloca %class.ap_uint.3, align 1
  %35 = alloca %class.ap_int.4, align 1
  %36 = alloca %class.ap_uint.0, align 1
  %37 = alloca %class.ap_uint.3, align 1
  %38 = alloca %class.ap_uint.0, align 1
  %39 = alloca %class.ap_uint.3, align 1
  %40 = alloca %class.ap_int.4, align 1
  %41 = alloca %class.ap_uint.0, align 1
  %42 = alloca %class.ap_uint.3, align 1
  %43 = alloca %class.ap_uint.0, align 1
  %44 = alloca %class.ap_uint.3, align 1
  %45 = alloca %class.ap_int.4, align 1
  %46 = alloca %class.ap_uint.0, align 1
  %47 = alloca %class.ap_uint.3, align 1
  %48 = alloca %class.ap_uint.0, align 1
  %49 = alloca %class.ap_uint.3, align 1
  %50 = alloca %class.ap_int.4, align 1
  %51 = alloca %class.ap_uint.0, align 1
  %52 = alloca %class.ap_uint.3, align 1
  %53 = alloca %class.ap_uint.0, align 1
  %54 = alloca %class.ap_uint.3, align 1
  %55 = alloca %class.ap_int.4, align 1
  %56 = alloca %class.ap_uint.0, align 1
  %57 = alloca %class.ap_uint.3, align 1
  %58 = alloca %class.ap_uint.0, align 1
  %59 = alloca %class.ap_uint.3, align 1
  %60 = alloca %class.ap_int.4, align 1
  %61 = alloca %class.ap_uint.0, align 1
  %62 = alloca %class.ap_uint.3, align 1
  %63 = alloca %class.ap_uint.0, align 1
  %64 = alloca %class.ap_uint.3, align 1
  %65 = alloca %class.ap_int.4, align 1
  %66 = alloca %class.ap_uint.0, align 1
  %67 = alloca %class.ap_uint.3, align 1
  %68 = alloca %class.ap_uint.0, align 1
  %69 = alloca %class.ap_uint.3, align 1
  %70 = alloca %class.ap_int.4, align 1
  %71 = alloca %class.ap_uint.0, align 1
  %72 = alloca %class.ap_uint.3, align 1
  %73 = alloca %class.ap_uint.0, align 1
  %74 = alloca %class.ap_uint.3, align 1
  %75 = alloca %class.ap_int.4, align 1
  %76 = alloca %class.ap_uint.0, align 1
  %77 = alloca %class.ap_uint.3, align 1
  %78 = alloca %class.ap_uint.0, align 1
  %79 = alloca %class.ap_uint.3, align 1
  %80 = alloca %class.ap_int.4, align 1
  %81 = alloca %class.ap_uint.0, align 1
  %82 = alloca %class.ap_uint.3, align 1
  %83 = alloca %class.ap_uint.0, align 1
  %84 = alloca %class.ap_uint.3, align 1
  %85 = alloca %class.ap_int.4, align 1
  %j = alloca %class.ap_uint.3, align 1
  %86 = alloca %class.ap_uint.3, align 1
  %87 = alloca %class.ap_uint.3, align 1
  %88 = alloca %class.ap_uint.3, align 1
  %89 = alloca %class.ap_uint.3, align 1
  %90 = alloca %class.ap_uint.3, align 1
  %91 = alloca %class.ap_uint.3, align 1
  %92 = alloca %class.ap_uint.3, align 1
  %93 = alloca %class.ap_uint.3, align 1
  %core = alloca i8, align 1
  %iscorner = alloca i8, align 1
  %count = alloca i8, align 1
  %c = alloca %class.ap_uint.5, align 1
  %94 = alloca %class.ap_uint.5, align 1
  %95 = alloca %class.ap_uint.5, align 1
  %96 = alloca %class.ap_uint.5, align 1
  %97 = alloca %class.ap_uint.3, align 1
  store %class.ap_uint.0* %OutputValues, %class.ap_uint.0** %1, align 8
  store [7 x %class.ap_uint.0]* %src_buf, [7 x %class.ap_uint.0]** %2, align 8
  %98 = getelementptr %class.ap_uint.0* %win_size, i32 0, i32 0
  %99 = bitcast [1 x i8]* %98 to i8*
  store i8 %win_size.coerce, i8* %99, align 1
  store i8 %_threshold, i8* %3, align 1
  store %class.ap_uint.0* %pack_corners, %class.ap_uint.0** %4, align 8
  store i8 0, i8* %kx, align 1
  store i8 0, i8* %ix, align 1
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %tbuf_temp, i32 0)
  %100 = bitcast [1 x [25 x i16]]* %flag_d to i8*
  call void @llvm.memset.p0i8.i64(i8* %100, i8 0, i64 50, i32 16, i1 false)
  %101 = bitcast [1 x [25 x i16]]* %flag_val to i8*
  call void @llvm.memset.p0i8.i64(i8* %101, i8 0, i64 50, i32 16, i1 false)
  call void @_ZN7ap_uintILi4EEC1Ei(%class.ap_uint.3* %i, i32 0)
  br label %102

; <label>:102                                     ; preds = %900, %0
  %103 = bitcast %class.ap_uint.3* %5 to i8*
  %104 = bitcast %class.ap_uint.3* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 1, i32 1, i1 false)
  %105 = getelementptr %class.ap_uint.3* %5, i32 0, i32 0
  %106 = bitcast [1 x i8]* %105 to i8*
  %107 = load i8* %106, align 1
  %108 = call zeroext i1 @_ZltILi4EEb7ap_uintIXT_EEi(i8 %107, i32 1)
  br i1 %108, label %109, label %904

; <label>:109                                     ; preds = %102
  %110 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %111 = getelementptr %class.ap_uint.3* %7, i32 0, i32 0
  %112 = bitcast [1 x i8]* %111 to i8*
  store i8 %110, i8* %112, align 1
  %113 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %7)
  %114 = load [7 x %class.ap_uint.0]** %2, align 8
  %115 = getelementptr inbounds [7 x %class.ap_uint.0]* %114, i64 3
  %116 = getelementptr inbounds [7 x %class.ap_uint.0]* %115, i32 0, i64 %113
  %117 = bitcast %class.ap_uint.0* %6 to i8*
  %118 = bitcast %class.ap_uint.0* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 1, i32 1, i1 false)
  %119 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %120 = getelementptr %class.ap_uint.3* %9, i32 0, i32 0
  %121 = bitcast [1 x i8]* %120 to i8*
  store i8 %119, i8* %121, align 1
  %122 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %9)
  %123 = load [7 x %class.ap_uint.0]** %2, align 8
  %124 = getelementptr inbounds [7 x %class.ap_uint.0]* %123, i64 0
  %125 = getelementptr inbounds [7 x %class.ap_uint.0]* %124, i32 0, i64 %122
  %126 = bitcast %class.ap_uint.0* %8 to i8*
  %127 = bitcast %class.ap_uint.0* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 1, i32 1, i1 false)
  %128 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %129 = bitcast [1 x i8]* %128 to i8*
  %130 = load i8* %129, align 1
  %131 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %132 = bitcast [1 x i8]* %131 to i8*
  %133 = load i8* %132, align 1
  %134 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %130, i8 %133)
  %135 = getelementptr %class.ap_int.4* %10, i32 0, i32 0
  %136 = bitcast [2 x i8]* %135 to i16*
  store i16 %134, i16* %136, align 1
  %137 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %10)
  %138 = trunc i64 %137 to i16
  %139 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %140 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %139
  %141 = getelementptr inbounds [25 x i16]* %140, i32 0, i64 0
  store i16 %138, i16* %141, align 2
  %142 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %143 = getelementptr %class.ap_uint.3* %12, i32 0, i32 0
  %144 = bitcast [1 x i8]* %143 to i8*
  store i8 %142, i8* %144, align 1
  %145 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %12)
  %146 = load [7 x %class.ap_uint.0]** %2, align 8
  %147 = getelementptr inbounds [7 x %class.ap_uint.0]* %146, i64 3
  %148 = getelementptr inbounds [7 x %class.ap_uint.0]* %147, i32 0, i64 %145
  %149 = bitcast %class.ap_uint.0* %11 to i8*
  %150 = bitcast %class.ap_uint.0* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %149, i8* %150, i64 1, i32 1, i1 false)
  %151 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 4, %class.ap_uint.3* %i)
  %152 = getelementptr %class.ap_uint.3* %14, i32 0, i32 0
  %153 = bitcast [1 x i8]* %152 to i8*
  store i8 %151, i8* %153, align 1
  %154 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %14)
  %155 = load [7 x %class.ap_uint.0]** %2, align 8
  %156 = getelementptr inbounds [7 x %class.ap_uint.0]* %155, i64 0
  %157 = getelementptr inbounds [7 x %class.ap_uint.0]* %156, i32 0, i64 %154
  %158 = bitcast %class.ap_uint.0* %13 to i8*
  %159 = bitcast %class.ap_uint.0* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %158, i8* %159, i64 1, i32 1, i1 false)
  %160 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %161 = bitcast [1 x i8]* %160 to i8*
  %162 = load i8* %161, align 1
  %163 = getelementptr %class.ap_uint.0* %13, i32 0, i32 0
  %164 = bitcast [1 x i8]* %163 to i8*
  %165 = load i8* %164, align 1
  %166 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %162, i8 %165)
  %167 = getelementptr %class.ap_int.4* %15, i32 0, i32 0
  %168 = bitcast [2 x i8]* %167 to i16*
  store i16 %166, i16* %168, align 1
  %169 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %15)
  %170 = trunc i64 %169 to i16
  %171 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %172 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %171
  %173 = getelementptr inbounds [25 x i16]* %172, i32 0, i64 1
  store i16 %170, i16* %173, align 2
  %174 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %175 = getelementptr %class.ap_uint.3* %17, i32 0, i32 0
  %176 = bitcast [1 x i8]* %175 to i8*
  store i8 %174, i8* %176, align 1
  %177 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %17)
  %178 = load [7 x %class.ap_uint.0]** %2, align 8
  %179 = getelementptr inbounds [7 x %class.ap_uint.0]* %178, i64 3
  %180 = getelementptr inbounds [7 x %class.ap_uint.0]* %179, i32 0, i64 %177
  %181 = bitcast %class.ap_uint.0* %16 to i8*
  %182 = bitcast %class.ap_uint.0* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %181, i8* %182, i64 1, i32 1, i1 false)
  %183 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 5, %class.ap_uint.3* %i)
  %184 = getelementptr %class.ap_uint.3* %19, i32 0, i32 0
  %185 = bitcast [1 x i8]* %184 to i8*
  store i8 %183, i8* %185, align 1
  %186 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %19)
  %187 = load [7 x %class.ap_uint.0]** %2, align 8
  %188 = getelementptr inbounds [7 x %class.ap_uint.0]* %187, i64 1
  %189 = getelementptr inbounds [7 x %class.ap_uint.0]* %188, i32 0, i64 %186
  %190 = bitcast %class.ap_uint.0* %18 to i8*
  %191 = bitcast %class.ap_uint.0* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %191, i64 1, i32 1, i1 false)
  %192 = getelementptr %class.ap_uint.0* %16, i32 0, i32 0
  %193 = bitcast [1 x i8]* %192 to i8*
  %194 = load i8* %193, align 1
  %195 = getelementptr %class.ap_uint.0* %18, i32 0, i32 0
  %196 = bitcast [1 x i8]* %195 to i8*
  %197 = load i8* %196, align 1
  %198 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %194, i8 %197)
  %199 = getelementptr %class.ap_int.4* %20, i32 0, i32 0
  %200 = bitcast [2 x i8]* %199 to i16*
  store i16 %198, i16* %200, align 1
  %201 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %20)
  %202 = trunc i64 %201 to i16
  %203 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %204 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %203
  %205 = getelementptr inbounds [25 x i16]* %204, i32 0, i64 2
  store i16 %202, i16* %205, align 2
  %206 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %207 = getelementptr %class.ap_uint.3* %22, i32 0, i32 0
  %208 = bitcast [1 x i8]* %207 to i8*
  store i8 %206, i8* %208, align 1
  %209 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %22)
  %210 = load [7 x %class.ap_uint.0]** %2, align 8
  %211 = getelementptr inbounds [7 x %class.ap_uint.0]* %210, i64 3
  %212 = getelementptr inbounds [7 x %class.ap_uint.0]* %211, i32 0, i64 %209
  %213 = bitcast %class.ap_uint.0* %21 to i8*
  %214 = bitcast %class.ap_uint.0* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %213, i8* %214, i64 1, i32 1, i1 false)
  %215 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 6, %class.ap_uint.3* %i)
  %216 = getelementptr %class.ap_uint.3* %24, i32 0, i32 0
  %217 = bitcast [1 x i8]* %216 to i8*
  store i8 %215, i8* %217, align 1
  %218 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %24)
  %219 = load [7 x %class.ap_uint.0]** %2, align 8
  %220 = getelementptr inbounds [7 x %class.ap_uint.0]* %219, i64 2
  %221 = getelementptr inbounds [7 x %class.ap_uint.0]* %220, i32 0, i64 %218
  %222 = bitcast %class.ap_uint.0* %23 to i8*
  %223 = bitcast %class.ap_uint.0* %221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %222, i8* %223, i64 1, i32 1, i1 false)
  %224 = getelementptr %class.ap_uint.0* %21, i32 0, i32 0
  %225 = bitcast [1 x i8]* %224 to i8*
  %226 = load i8* %225, align 1
  %227 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %228 = bitcast [1 x i8]* %227 to i8*
  %229 = load i8* %228, align 1
  %230 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %226, i8 %229)
  %231 = getelementptr %class.ap_int.4* %25, i32 0, i32 0
  %232 = bitcast [2 x i8]* %231 to i16*
  store i16 %230, i16* %232, align 1
  %233 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %25)
  %234 = trunc i64 %233 to i16
  %235 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %236 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %235
  %237 = getelementptr inbounds [25 x i16]* %236, i32 0, i64 3
  store i16 %234, i16* %237, align 2
  %238 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %239 = getelementptr %class.ap_uint.3* %27, i32 0, i32 0
  %240 = bitcast [1 x i8]* %239 to i8*
  store i8 %238, i8* %240, align 1
  %241 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %27)
  %242 = load [7 x %class.ap_uint.0]** %2, align 8
  %243 = getelementptr inbounds [7 x %class.ap_uint.0]* %242, i64 3
  %244 = getelementptr inbounds [7 x %class.ap_uint.0]* %243, i32 0, i64 %241
  %245 = bitcast %class.ap_uint.0* %26 to i8*
  %246 = bitcast %class.ap_uint.0* %244 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %245, i8* %246, i64 1, i32 1, i1 false)
  %247 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 6, %class.ap_uint.3* %i)
  %248 = getelementptr %class.ap_uint.3* %29, i32 0, i32 0
  %249 = bitcast [1 x i8]* %248 to i8*
  store i8 %247, i8* %249, align 1
  %250 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %29)
  %251 = load [7 x %class.ap_uint.0]** %2, align 8
  %252 = getelementptr inbounds [7 x %class.ap_uint.0]* %251, i64 3
  %253 = getelementptr inbounds [7 x %class.ap_uint.0]* %252, i32 0, i64 %250
  %254 = bitcast %class.ap_uint.0* %28 to i8*
  %255 = bitcast %class.ap_uint.0* %253 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %254, i8* %255, i64 1, i32 1, i1 false)
  %256 = getelementptr %class.ap_uint.0* %26, i32 0, i32 0
  %257 = bitcast [1 x i8]* %256 to i8*
  %258 = load i8* %257, align 1
  %259 = getelementptr %class.ap_uint.0* %28, i32 0, i32 0
  %260 = bitcast [1 x i8]* %259 to i8*
  %261 = load i8* %260, align 1
  %262 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %258, i8 %261)
  %263 = getelementptr %class.ap_int.4* %30, i32 0, i32 0
  %264 = bitcast [2 x i8]* %263 to i16*
  store i16 %262, i16* %264, align 1
  %265 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %30)
  %266 = trunc i64 %265 to i16
  %267 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %268 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %267
  %269 = getelementptr inbounds [25 x i16]* %268, i32 0, i64 4
  store i16 %266, i16* %269, align 2
  %270 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %271 = getelementptr %class.ap_uint.3* %32, i32 0, i32 0
  %272 = bitcast [1 x i8]* %271 to i8*
  store i8 %270, i8* %272, align 1
  %273 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %32)
  %274 = load [7 x %class.ap_uint.0]** %2, align 8
  %275 = getelementptr inbounds [7 x %class.ap_uint.0]* %274, i64 3
  %276 = getelementptr inbounds [7 x %class.ap_uint.0]* %275, i32 0, i64 %273
  %277 = bitcast %class.ap_uint.0* %31 to i8*
  %278 = bitcast %class.ap_uint.0* %276 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %277, i8* %278, i64 1, i32 1, i1 false)
  %279 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 6, %class.ap_uint.3* %i)
  %280 = getelementptr %class.ap_uint.3* %34, i32 0, i32 0
  %281 = bitcast [1 x i8]* %280 to i8*
  store i8 %279, i8* %281, align 1
  %282 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %34)
  %283 = load [7 x %class.ap_uint.0]** %2, align 8
  %284 = getelementptr inbounds [7 x %class.ap_uint.0]* %283, i64 4
  %285 = getelementptr inbounds [7 x %class.ap_uint.0]* %284, i32 0, i64 %282
  %286 = bitcast %class.ap_uint.0* %33 to i8*
  %287 = bitcast %class.ap_uint.0* %285 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %286, i8* %287, i64 1, i32 1, i1 false)
  %288 = getelementptr %class.ap_uint.0* %31, i32 0, i32 0
  %289 = bitcast [1 x i8]* %288 to i8*
  %290 = load i8* %289, align 1
  %291 = getelementptr %class.ap_uint.0* %33, i32 0, i32 0
  %292 = bitcast [1 x i8]* %291 to i8*
  %293 = load i8* %292, align 1
  %294 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %290, i8 %293)
  %295 = getelementptr %class.ap_int.4* %35, i32 0, i32 0
  %296 = bitcast [2 x i8]* %295 to i16*
  store i16 %294, i16* %296, align 1
  %297 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %35)
  %298 = trunc i64 %297 to i16
  %299 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %300 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %299
  %301 = getelementptr inbounds [25 x i16]* %300, i32 0, i64 5
  store i16 %298, i16* %301, align 2
  %302 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %303 = getelementptr %class.ap_uint.3* %37, i32 0, i32 0
  %304 = bitcast [1 x i8]* %303 to i8*
  store i8 %302, i8* %304, align 1
  %305 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %37)
  %306 = load [7 x %class.ap_uint.0]** %2, align 8
  %307 = getelementptr inbounds [7 x %class.ap_uint.0]* %306, i64 3
  %308 = getelementptr inbounds [7 x %class.ap_uint.0]* %307, i32 0, i64 %305
  %309 = bitcast %class.ap_uint.0* %36 to i8*
  %310 = bitcast %class.ap_uint.0* %308 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %309, i8* %310, i64 1, i32 1, i1 false)
  %311 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 5, %class.ap_uint.3* %i)
  %312 = getelementptr %class.ap_uint.3* %39, i32 0, i32 0
  %313 = bitcast [1 x i8]* %312 to i8*
  store i8 %311, i8* %313, align 1
  %314 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %39)
  %315 = load [7 x %class.ap_uint.0]** %2, align 8
  %316 = getelementptr inbounds [7 x %class.ap_uint.0]* %315, i64 5
  %317 = getelementptr inbounds [7 x %class.ap_uint.0]* %316, i32 0, i64 %314
  %318 = bitcast %class.ap_uint.0* %38 to i8*
  %319 = bitcast %class.ap_uint.0* %317 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %318, i8* %319, i64 1, i32 1, i1 false)
  %320 = getelementptr %class.ap_uint.0* %36, i32 0, i32 0
  %321 = bitcast [1 x i8]* %320 to i8*
  %322 = load i8* %321, align 1
  %323 = getelementptr %class.ap_uint.0* %38, i32 0, i32 0
  %324 = bitcast [1 x i8]* %323 to i8*
  %325 = load i8* %324, align 1
  %326 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %322, i8 %325)
  %327 = getelementptr %class.ap_int.4* %40, i32 0, i32 0
  %328 = bitcast [2 x i8]* %327 to i16*
  store i16 %326, i16* %328, align 1
  %329 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %40)
  %330 = trunc i64 %329 to i16
  %331 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %332 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %331
  %333 = getelementptr inbounds [25 x i16]* %332, i32 0, i64 6
  store i16 %330, i16* %333, align 2
  %334 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %335 = getelementptr %class.ap_uint.3* %42, i32 0, i32 0
  %336 = bitcast [1 x i8]* %335 to i8*
  store i8 %334, i8* %336, align 1
  %337 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %42)
  %338 = load [7 x %class.ap_uint.0]** %2, align 8
  %339 = getelementptr inbounds [7 x %class.ap_uint.0]* %338, i64 3
  %340 = getelementptr inbounds [7 x %class.ap_uint.0]* %339, i32 0, i64 %337
  %341 = bitcast %class.ap_uint.0* %41 to i8*
  %342 = bitcast %class.ap_uint.0* %340 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %341, i8* %342, i64 1, i32 1, i1 false)
  %343 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 4, %class.ap_uint.3* %i)
  %344 = getelementptr %class.ap_uint.3* %44, i32 0, i32 0
  %345 = bitcast [1 x i8]* %344 to i8*
  store i8 %343, i8* %345, align 1
  %346 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %44)
  %347 = load [7 x %class.ap_uint.0]** %2, align 8
  %348 = getelementptr inbounds [7 x %class.ap_uint.0]* %347, i64 6
  %349 = getelementptr inbounds [7 x %class.ap_uint.0]* %348, i32 0, i64 %346
  %350 = bitcast %class.ap_uint.0* %43 to i8*
  %351 = bitcast %class.ap_uint.0* %349 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %350, i8* %351, i64 1, i32 1, i1 false)
  %352 = getelementptr %class.ap_uint.0* %41, i32 0, i32 0
  %353 = bitcast [1 x i8]* %352 to i8*
  %354 = load i8* %353, align 1
  %355 = getelementptr %class.ap_uint.0* %43, i32 0, i32 0
  %356 = bitcast [1 x i8]* %355 to i8*
  %357 = load i8* %356, align 1
  %358 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %354, i8 %357)
  %359 = getelementptr %class.ap_int.4* %45, i32 0, i32 0
  %360 = bitcast [2 x i8]* %359 to i16*
  store i16 %358, i16* %360, align 1
  %361 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %45)
  %362 = trunc i64 %361 to i16
  %363 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %364 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %363
  %365 = getelementptr inbounds [25 x i16]* %364, i32 0, i64 7
  store i16 %362, i16* %365, align 2
  %366 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %367 = getelementptr %class.ap_uint.3* %47, i32 0, i32 0
  %368 = bitcast [1 x i8]* %367 to i8*
  store i8 %366, i8* %368, align 1
  %369 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %47)
  %370 = load [7 x %class.ap_uint.0]** %2, align 8
  %371 = getelementptr inbounds [7 x %class.ap_uint.0]* %370, i64 3
  %372 = getelementptr inbounds [7 x %class.ap_uint.0]* %371, i32 0, i64 %369
  %373 = bitcast %class.ap_uint.0* %46 to i8*
  %374 = bitcast %class.ap_uint.0* %372 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %373, i8* %374, i64 1, i32 1, i1 false)
  %375 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %376 = getelementptr %class.ap_uint.3* %49, i32 0, i32 0
  %377 = bitcast [1 x i8]* %376 to i8*
  store i8 %375, i8* %377, align 1
  %378 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %49)
  %379 = load [7 x %class.ap_uint.0]** %2, align 8
  %380 = getelementptr inbounds [7 x %class.ap_uint.0]* %379, i64 6
  %381 = getelementptr inbounds [7 x %class.ap_uint.0]* %380, i32 0, i64 %378
  %382 = bitcast %class.ap_uint.0* %48 to i8*
  %383 = bitcast %class.ap_uint.0* %381 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %382, i8* %383, i64 1, i32 1, i1 false)
  %384 = getelementptr %class.ap_uint.0* %46, i32 0, i32 0
  %385 = bitcast [1 x i8]* %384 to i8*
  %386 = load i8* %385, align 1
  %387 = getelementptr %class.ap_uint.0* %48, i32 0, i32 0
  %388 = bitcast [1 x i8]* %387 to i8*
  %389 = load i8* %388, align 1
  %390 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %386, i8 %389)
  %391 = getelementptr %class.ap_int.4* %50, i32 0, i32 0
  %392 = bitcast [2 x i8]* %391 to i16*
  store i16 %390, i16* %392, align 1
  %393 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %50)
  %394 = trunc i64 %393 to i16
  %395 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %396 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %395
  %397 = getelementptr inbounds [25 x i16]* %396, i32 0, i64 8
  store i16 %394, i16* %397, align 2
  %398 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %399 = getelementptr %class.ap_uint.3* %52, i32 0, i32 0
  %400 = bitcast [1 x i8]* %399 to i8*
  store i8 %398, i8* %400, align 1
  %401 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %52)
  %402 = load [7 x %class.ap_uint.0]** %2, align 8
  %403 = getelementptr inbounds [7 x %class.ap_uint.0]* %402, i64 3
  %404 = getelementptr inbounds [7 x %class.ap_uint.0]* %403, i32 0, i64 %401
  %405 = bitcast %class.ap_uint.0* %51 to i8*
  %406 = bitcast %class.ap_uint.0* %404 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %405, i8* %406, i64 1, i32 1, i1 false)
  %407 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 2, %class.ap_uint.3* %i)
  %408 = getelementptr %class.ap_uint.3* %54, i32 0, i32 0
  %409 = bitcast [1 x i8]* %408 to i8*
  store i8 %407, i8* %409, align 1
  %410 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %54)
  %411 = load [7 x %class.ap_uint.0]** %2, align 8
  %412 = getelementptr inbounds [7 x %class.ap_uint.0]* %411, i64 6
  %413 = getelementptr inbounds [7 x %class.ap_uint.0]* %412, i32 0, i64 %410
  %414 = bitcast %class.ap_uint.0* %53 to i8*
  %415 = bitcast %class.ap_uint.0* %413 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %414, i8* %415, i64 1, i32 1, i1 false)
  %416 = getelementptr %class.ap_uint.0* %51, i32 0, i32 0
  %417 = bitcast [1 x i8]* %416 to i8*
  %418 = load i8* %417, align 1
  %419 = getelementptr %class.ap_uint.0* %53, i32 0, i32 0
  %420 = bitcast [1 x i8]* %419 to i8*
  %421 = load i8* %420, align 1
  %422 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %418, i8 %421)
  %423 = getelementptr %class.ap_int.4* %55, i32 0, i32 0
  %424 = bitcast [2 x i8]* %423 to i16*
  store i16 %422, i16* %424, align 1
  %425 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %55)
  %426 = trunc i64 %425 to i16
  %427 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %428 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %427
  %429 = getelementptr inbounds [25 x i16]* %428, i32 0, i64 9
  store i16 %426, i16* %429, align 2
  %430 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %431 = getelementptr %class.ap_uint.3* %57, i32 0, i32 0
  %432 = bitcast [1 x i8]* %431 to i8*
  store i8 %430, i8* %432, align 1
  %433 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %57)
  %434 = load [7 x %class.ap_uint.0]** %2, align 8
  %435 = getelementptr inbounds [7 x %class.ap_uint.0]* %434, i64 3
  %436 = getelementptr inbounds [7 x %class.ap_uint.0]* %435, i32 0, i64 %433
  %437 = bitcast %class.ap_uint.0* %56 to i8*
  %438 = bitcast %class.ap_uint.0* %436 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %437, i8* %438, i64 1, i32 1, i1 false)
  %439 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 1, %class.ap_uint.3* %i)
  %440 = getelementptr %class.ap_uint.3* %59, i32 0, i32 0
  %441 = bitcast [1 x i8]* %440 to i8*
  store i8 %439, i8* %441, align 1
  %442 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %59)
  %443 = load [7 x %class.ap_uint.0]** %2, align 8
  %444 = getelementptr inbounds [7 x %class.ap_uint.0]* %443, i64 5
  %445 = getelementptr inbounds [7 x %class.ap_uint.0]* %444, i32 0, i64 %442
  %446 = bitcast %class.ap_uint.0* %58 to i8*
  %447 = bitcast %class.ap_uint.0* %445 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %446, i8* %447, i64 1, i32 1, i1 false)
  %448 = getelementptr %class.ap_uint.0* %56, i32 0, i32 0
  %449 = bitcast [1 x i8]* %448 to i8*
  %450 = load i8* %449, align 1
  %451 = getelementptr %class.ap_uint.0* %58, i32 0, i32 0
  %452 = bitcast [1 x i8]* %451 to i8*
  %453 = load i8* %452, align 1
  %454 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %450, i8 %453)
  %455 = getelementptr %class.ap_int.4* %60, i32 0, i32 0
  %456 = bitcast [2 x i8]* %455 to i16*
  store i16 %454, i16* %456, align 1
  %457 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %60)
  %458 = trunc i64 %457 to i16
  %459 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %460 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %459
  %461 = getelementptr inbounds [25 x i16]* %460, i32 0, i64 10
  store i16 %458, i16* %461, align 2
  %462 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %463 = getelementptr %class.ap_uint.3* %62, i32 0, i32 0
  %464 = bitcast [1 x i8]* %463 to i8*
  store i8 %462, i8* %464, align 1
  %465 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %62)
  %466 = load [7 x %class.ap_uint.0]** %2, align 8
  %467 = getelementptr inbounds [7 x %class.ap_uint.0]* %466, i64 3
  %468 = getelementptr inbounds [7 x %class.ap_uint.0]* %467, i32 0, i64 %465
  %469 = bitcast %class.ap_uint.0* %61 to i8*
  %470 = bitcast %class.ap_uint.0* %468 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %469, i8* %470, i64 1, i32 1, i1 false)
  %471 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 0, %class.ap_uint.3* %i)
  %472 = getelementptr %class.ap_uint.3* %64, i32 0, i32 0
  %473 = bitcast [1 x i8]* %472 to i8*
  store i8 %471, i8* %473, align 1
  %474 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %64)
  %475 = load [7 x %class.ap_uint.0]** %2, align 8
  %476 = getelementptr inbounds [7 x %class.ap_uint.0]* %475, i64 4
  %477 = getelementptr inbounds [7 x %class.ap_uint.0]* %476, i32 0, i64 %474
  %478 = bitcast %class.ap_uint.0* %63 to i8*
  %479 = bitcast %class.ap_uint.0* %477 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %478, i8* %479, i64 1, i32 1, i1 false)
  %480 = getelementptr %class.ap_uint.0* %61, i32 0, i32 0
  %481 = bitcast [1 x i8]* %480 to i8*
  %482 = load i8* %481, align 1
  %483 = getelementptr %class.ap_uint.0* %63, i32 0, i32 0
  %484 = bitcast [1 x i8]* %483 to i8*
  %485 = load i8* %484, align 1
  %486 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %482, i8 %485)
  %487 = getelementptr %class.ap_int.4* %65, i32 0, i32 0
  %488 = bitcast [2 x i8]* %487 to i16*
  store i16 %486, i16* %488, align 1
  %489 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %65)
  %490 = trunc i64 %489 to i16
  %491 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %492 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %491
  %493 = getelementptr inbounds [25 x i16]* %492, i32 0, i64 11
  store i16 %490, i16* %493, align 2
  %494 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %495 = getelementptr %class.ap_uint.3* %67, i32 0, i32 0
  %496 = bitcast [1 x i8]* %495 to i8*
  store i8 %494, i8* %496, align 1
  %497 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %67)
  %498 = load [7 x %class.ap_uint.0]** %2, align 8
  %499 = getelementptr inbounds [7 x %class.ap_uint.0]* %498, i64 3
  %500 = getelementptr inbounds [7 x %class.ap_uint.0]* %499, i32 0, i64 %497
  %501 = bitcast %class.ap_uint.0* %66 to i8*
  %502 = bitcast %class.ap_uint.0* %500 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %501, i8* %502, i64 1, i32 1, i1 false)
  %503 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 0, %class.ap_uint.3* %i)
  %504 = getelementptr %class.ap_uint.3* %69, i32 0, i32 0
  %505 = bitcast [1 x i8]* %504 to i8*
  store i8 %503, i8* %505, align 1
  %506 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %69)
  %507 = load [7 x %class.ap_uint.0]** %2, align 8
  %508 = getelementptr inbounds [7 x %class.ap_uint.0]* %507, i64 3
  %509 = getelementptr inbounds [7 x %class.ap_uint.0]* %508, i32 0, i64 %506
  %510 = bitcast %class.ap_uint.0* %68 to i8*
  %511 = bitcast %class.ap_uint.0* %509 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %510, i8* %511, i64 1, i32 1, i1 false)
  %512 = getelementptr %class.ap_uint.0* %66, i32 0, i32 0
  %513 = bitcast [1 x i8]* %512 to i8*
  %514 = load i8* %513, align 1
  %515 = getelementptr %class.ap_uint.0* %68, i32 0, i32 0
  %516 = bitcast [1 x i8]* %515 to i8*
  %517 = load i8* %516, align 1
  %518 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %514, i8 %517)
  %519 = getelementptr %class.ap_int.4* %70, i32 0, i32 0
  %520 = bitcast [2 x i8]* %519 to i16*
  store i16 %518, i16* %520, align 1
  %521 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %70)
  %522 = trunc i64 %521 to i16
  %523 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %524 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %523
  %525 = getelementptr inbounds [25 x i16]* %524, i32 0, i64 12
  store i16 %522, i16* %525, align 2
  %526 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %527 = getelementptr %class.ap_uint.3* %72, i32 0, i32 0
  %528 = bitcast [1 x i8]* %527 to i8*
  store i8 %526, i8* %528, align 1
  %529 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %72)
  %530 = load [7 x %class.ap_uint.0]** %2, align 8
  %531 = getelementptr inbounds [7 x %class.ap_uint.0]* %530, i64 3
  %532 = getelementptr inbounds [7 x %class.ap_uint.0]* %531, i32 0, i64 %529
  %533 = bitcast %class.ap_uint.0* %71 to i8*
  %534 = bitcast %class.ap_uint.0* %532 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %533, i8* %534, i64 1, i32 1, i1 false)
  %535 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 0, %class.ap_uint.3* %i)
  %536 = getelementptr %class.ap_uint.3* %74, i32 0, i32 0
  %537 = bitcast [1 x i8]* %536 to i8*
  store i8 %535, i8* %537, align 1
  %538 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %74)
  %539 = load [7 x %class.ap_uint.0]** %2, align 8
  %540 = getelementptr inbounds [7 x %class.ap_uint.0]* %539, i64 2
  %541 = getelementptr inbounds [7 x %class.ap_uint.0]* %540, i32 0, i64 %538
  %542 = bitcast %class.ap_uint.0* %73 to i8*
  %543 = bitcast %class.ap_uint.0* %541 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %542, i8* %543, i64 1, i32 1, i1 false)
  %544 = getelementptr %class.ap_uint.0* %71, i32 0, i32 0
  %545 = bitcast [1 x i8]* %544 to i8*
  %546 = load i8* %545, align 1
  %547 = getelementptr %class.ap_uint.0* %73, i32 0, i32 0
  %548 = bitcast [1 x i8]* %547 to i8*
  %549 = load i8* %548, align 1
  %550 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %546, i8 %549)
  %551 = getelementptr %class.ap_int.4* %75, i32 0, i32 0
  %552 = bitcast [2 x i8]* %551 to i16*
  store i16 %550, i16* %552, align 1
  %553 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %75)
  %554 = trunc i64 %553 to i16
  %555 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %556 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %555
  %557 = getelementptr inbounds [25 x i16]* %556, i32 0, i64 13
  store i16 %554, i16* %557, align 2
  %558 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %559 = getelementptr %class.ap_uint.3* %77, i32 0, i32 0
  %560 = bitcast [1 x i8]* %559 to i8*
  store i8 %558, i8* %560, align 1
  %561 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %77)
  %562 = load [7 x %class.ap_uint.0]** %2, align 8
  %563 = getelementptr inbounds [7 x %class.ap_uint.0]* %562, i64 3
  %564 = getelementptr inbounds [7 x %class.ap_uint.0]* %563, i32 0, i64 %561
  %565 = bitcast %class.ap_uint.0* %76 to i8*
  %566 = bitcast %class.ap_uint.0* %564 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %565, i8* %566, i64 1, i32 1, i1 false)
  %567 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 1, %class.ap_uint.3* %i)
  %568 = getelementptr %class.ap_uint.3* %79, i32 0, i32 0
  %569 = bitcast [1 x i8]* %568 to i8*
  store i8 %567, i8* %569, align 1
  %570 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %79)
  %571 = load [7 x %class.ap_uint.0]** %2, align 8
  %572 = getelementptr inbounds [7 x %class.ap_uint.0]* %571, i64 1
  %573 = getelementptr inbounds [7 x %class.ap_uint.0]* %572, i32 0, i64 %570
  %574 = bitcast %class.ap_uint.0* %78 to i8*
  %575 = bitcast %class.ap_uint.0* %573 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %574, i8* %575, i64 1, i32 1, i1 false)
  %576 = getelementptr %class.ap_uint.0* %76, i32 0, i32 0
  %577 = bitcast [1 x i8]* %576 to i8*
  %578 = load i8* %577, align 1
  %579 = getelementptr %class.ap_uint.0* %78, i32 0, i32 0
  %580 = bitcast [1 x i8]* %579 to i8*
  %581 = load i8* %580, align 1
  %582 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %578, i8 %581)
  %583 = getelementptr %class.ap_int.4* %80, i32 0, i32 0
  %584 = bitcast [2 x i8]* %583 to i16*
  store i16 %582, i16* %584, align 1
  %585 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %80)
  %586 = trunc i64 %585 to i16
  %587 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %588 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %587
  %589 = getelementptr inbounds [25 x i16]* %588, i32 0, i64 14
  store i16 %586, i16* %589, align 2
  %590 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 3, %class.ap_uint.3* %i)
  %591 = getelementptr %class.ap_uint.3* %82, i32 0, i32 0
  %592 = bitcast [1 x i8]* %591 to i8*
  store i8 %590, i8* %592, align 1
  %593 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %82)
  %594 = load [7 x %class.ap_uint.0]** %2, align 8
  %595 = getelementptr inbounds [7 x %class.ap_uint.0]* %594, i64 3
  %596 = getelementptr inbounds [7 x %class.ap_uint.0]* %595, i32 0, i64 %593
  %597 = bitcast %class.ap_uint.0* %81 to i8*
  %598 = bitcast %class.ap_uint.0* %596 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %597, i8* %598, i64 1, i32 1, i1 false)
  %599 = call i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32 2, %class.ap_uint.3* %i)
  %600 = getelementptr %class.ap_uint.3* %84, i32 0, i32 0
  %601 = bitcast [1 x i8]* %600 to i8*
  store i8 %599, i8* %601, align 1
  %602 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %84)
  %603 = load [7 x %class.ap_uint.0]** %2, align 8
  %604 = getelementptr inbounds [7 x %class.ap_uint.0]* %603, i64 0
  %605 = getelementptr inbounds [7 x %class.ap_uint.0]* %604, i32 0, i64 %602
  %606 = bitcast %class.ap_uint.0* %83 to i8*
  %607 = bitcast %class.ap_uint.0* %605 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %606, i8* %607, i64 1, i32 1, i1 false)
  %608 = getelementptr %class.ap_uint.0* %81, i32 0, i32 0
  %609 = bitcast [1 x i8]* %608 to i8*
  %610 = load i8* %609, align 1
  %611 = getelementptr %class.ap_uint.0* %83, i32 0, i32 0
  %612 = bitcast [1 x i8]* %611 to i8*
  %613 = load i8* %612, align 1
  %614 = call i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %610, i8 %613)
  %615 = getelementptr %class.ap_int.4* %85, i32 0, i32 0
  %616 = bitcast [2 x i8]* %615 to i16*
  store i16 %614, i16* %616, align 1
  %617 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4* %85)
  %618 = trunc i64 %617 to i16
  %619 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %620 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %619
  %621 = getelementptr inbounds [25 x i16]* %620, i32 0, i64 15
  store i16 %618, i16* %621, align 2
  %622 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %623 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %622
  %624 = getelementptr inbounds [25 x i16]* %623, i32 0, i64 0
  %625 = load i16* %624, align 2
  %626 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %627 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %626
  %628 = getelementptr inbounds [25 x i16]* %627, i32 0, i64 16
  store i16 %625, i16* %628, align 2
  %629 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %630 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %629
  %631 = getelementptr inbounds [25 x i16]* %630, i32 0, i64 1
  %632 = load i16* %631, align 2
  %633 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %634 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %633
  %635 = getelementptr inbounds [25 x i16]* %634, i32 0, i64 17
  store i16 %632, i16* %635, align 2
  %636 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %637 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %636
  %638 = getelementptr inbounds [25 x i16]* %637, i32 0, i64 2
  %639 = load i16* %638, align 2
  %640 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %641 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %640
  %642 = getelementptr inbounds [25 x i16]* %641, i32 0, i64 18
  store i16 %639, i16* %642, align 2
  %643 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %644 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %643
  %645 = getelementptr inbounds [25 x i16]* %644, i32 0, i64 3
  %646 = load i16* %645, align 2
  %647 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %648 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %647
  %649 = getelementptr inbounds [25 x i16]* %648, i32 0, i64 19
  store i16 %646, i16* %649, align 2
  %650 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %651 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %650
  %652 = getelementptr inbounds [25 x i16]* %651, i32 0, i64 4
  %653 = load i16* %652, align 2
  %654 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %655 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %654
  %656 = getelementptr inbounds [25 x i16]* %655, i32 0, i64 20
  store i16 %653, i16* %656, align 2
  %657 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %658 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %657
  %659 = getelementptr inbounds [25 x i16]* %658, i32 0, i64 5
  %660 = load i16* %659, align 2
  %661 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %662 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %661
  %663 = getelementptr inbounds [25 x i16]* %662, i32 0, i64 21
  store i16 %660, i16* %663, align 2
  %664 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %665 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %664
  %666 = getelementptr inbounds [25 x i16]* %665, i32 0, i64 6
  %667 = load i16* %666, align 2
  %668 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %669 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %668
  %670 = getelementptr inbounds [25 x i16]* %669, i32 0, i64 22
  store i16 %667, i16* %670, align 2
  %671 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %672 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %671
  %673 = getelementptr inbounds [25 x i16]* %672, i32 0, i64 7
  %674 = load i16* %673, align 2
  %675 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %676 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %675
  %677 = getelementptr inbounds [25 x i16]* %676, i32 0, i64 23
  store i16 %674, i16* %677, align 2
  %678 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %679 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %678
  %680 = getelementptr inbounds [25 x i16]* %679, i32 0, i64 8
  %681 = load i16* %680, align 2
  %682 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %683 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %682
  %684 = getelementptr inbounds [25 x i16]* %683, i32 0, i64 24
  store i16 %681, i16* %684, align 2
  call void @_ZN7ap_uintILi4EEC1Ei(%class.ap_uint.3* %j, i32 0)
  br label %685

; <label>:685                                     ; preds = %794, %109
  %686 = bitcast %class.ap_uint.3* %86 to i8*
  %687 = bitcast %class.ap_uint.3* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %686, i8* %687, i64 1, i32 1, i1 false)
  %688 = getelementptr %class.ap_uint.3* %86, i32 0, i32 0
  %689 = bitcast [1 x i8]* %688 to i8*
  %690 = load i8* %689, align 1
  %691 = call zeroext i1 @_ZltILi4EEb7ap_uintIXT_EEi(i8 %690, i32 8)
  br i1 %691, label %692, label %798

; <label>:692                                     ; preds = %685
  %693 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %j)
  %694 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %695 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %694
  %696 = getelementptr inbounds [25 x i16]* %695, i32 0, i64 %693
  %697 = load i16* %696, align 2
  %698 = sext i16 %697 to i32
  %699 = load i8* %3, align 1
  %700 = zext i8 %699 to i32
  %701 = icmp sgt i32 %698, %700
  br i1 %701, label %702, label %707

; <label>:702                                     ; preds = %692
  %703 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %j)
  %704 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %705 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %704
  %706 = getelementptr inbounds [25 x i16]* %705, i32 0, i64 %703
  store i16 1, i16* %706, align 2
  br label %729

; <label>:707                                     ; preds = %692
  %708 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %j)
  %709 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %710 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %709
  %711 = getelementptr inbounds [25 x i16]* %710, i32 0, i64 %708
  %712 = load i16* %711, align 2
  %713 = sext i16 %712 to i32
  %714 = load i8* %3, align 1
  %715 = zext i8 %714 to i32
  %716 = sub nsw i32 0, %715
  %717 = icmp slt i32 %713, %716
  br i1 %717, label %718, label %723

; <label>:718                                     ; preds = %707
  %719 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %j)
  %720 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %721 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %720
  %722 = getelementptr inbounds [25 x i16]* %721, i32 0, i64 %719
  store i16 2, i16* %722, align 2
  br label %728

; <label>:723                                     ; preds = %707
  %724 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %j)
  %725 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %726 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %725
  %727 = getelementptr inbounds [25 x i16]* %726, i32 0, i64 %724
  store i16 0, i16* %727, align 2
  br label %728

; <label>:728                                     ; preds = %723, %718
  br label %729

; <label>:729                                     ; preds = %728, %702
  %730 = call i8 @_ZplILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %j, i32 8)
  %731 = getelementptr %class.ap_uint.3* %87, i32 0, i32 0
  %732 = bitcast [1 x i8]* %731 to i8*
  store i8 %730, i8* %732, align 1
  %733 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %87)
  %734 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %735 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %734
  %736 = getelementptr inbounds [25 x i16]* %735, i32 0, i64 %733
  %737 = load i16* %736, align 2
  %738 = sext i16 %737 to i32
  %739 = load i8* %3, align 1
  %740 = zext i8 %739 to i32
  %741 = icmp sgt i32 %738, %740
  br i1 %741, label %742, label %750

; <label>:742                                     ; preds = %729
  %743 = call i8 @_ZplILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %j, i32 8)
  %744 = getelementptr %class.ap_uint.3* %88, i32 0, i32 0
  %745 = bitcast [1 x i8]* %744 to i8*
  store i8 %743, i8* %745, align 1
  %746 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %88)
  %747 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %748 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %747
  %749 = getelementptr inbounds [25 x i16]* %748, i32 0, i64 %746
  store i16 1, i16* %749, align 2
  br label %781

; <label>:750                                     ; preds = %729
  %751 = call i8 @_ZplILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %j, i32 8)
  %752 = getelementptr %class.ap_uint.3* %89, i32 0, i32 0
  %753 = bitcast [1 x i8]* %752 to i8*
  store i8 %751, i8* %753, align 1
  %754 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %89)
  %755 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %756 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %755
  %757 = getelementptr inbounds [25 x i16]* %756, i32 0, i64 %754
  %758 = load i16* %757, align 2
  %759 = sext i16 %758 to i32
  %760 = load i8* %3, align 1
  %761 = zext i8 %760 to i32
  %762 = sub nsw i32 0, %761
  %763 = icmp slt i32 %759, %762
  br i1 %763, label %764, label %772

; <label>:764                                     ; preds = %750
  %765 = call i8 @_ZplILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %j, i32 8)
  %766 = getelementptr %class.ap_uint.3* %90, i32 0, i32 0
  %767 = bitcast [1 x i8]* %766 to i8*
  store i8 %765, i8* %767, align 1
  %768 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %90)
  %769 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %770 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %769
  %771 = getelementptr inbounds [25 x i16]* %770, i32 0, i64 %768
  store i16 2, i16* %771, align 2
  br label %780

; <label>:772                                     ; preds = %750
  %773 = call i8 @_ZplILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %j, i32 8)
  %774 = getelementptr %class.ap_uint.3* %91, i32 0, i32 0
  %775 = bitcast [1 x i8]* %774 to i8*
  store i8 %773, i8* %775, align 1
  %776 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %91)
  %777 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %778 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %777
  %779 = getelementptr inbounds [25 x i16]* %778, i32 0, i64 %776
  store i16 0, i16* %779, align 2
  br label %780

; <label>:780                                     ; preds = %772, %764
  br label %781

; <label>:781                                     ; preds = %780, %742
  %782 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %j)
  %783 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %784 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %783
  %785 = getelementptr inbounds [25 x i16]* %784, i32 0, i64 %782
  %786 = load i16* %785, align 2
  %787 = call i8 @_ZplILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %j, i32 16)
  %788 = getelementptr %class.ap_uint.3* %92, i32 0, i32 0
  %789 = bitcast [1 x i8]* %788 to i8*
  store i8 %787, i8* %789, align 1
  %790 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %92)
  %791 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %792 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %791
  %793 = getelementptr inbounds [25 x i16]* %792, i32 0, i64 %790
  store i16 %786, i16* %793, align 2
  br label %794

; <label>:794                                     ; preds = %781
  %795 = call i8 @_ZN7ap_uintILi4EEppEi(%class.ap_uint.3* %j, i32 0)
  %796 = getelementptr %class.ap_uint.3* %93, i32 0, i32 0
  %797 = bitcast [1 x i8]* %796 to i8*
  store i8 %795, i8* %797, align 1
  br label %685

; <label>:798                                     ; preds = %685
  %799 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %800 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %799
  %801 = getelementptr inbounds [25 x i16]* %800, i32 0, i64 8
  %802 = load i16* %801, align 2
  %803 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %804 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %803
  %805 = getelementptr inbounds [25 x i16]* %804, i32 0, i64 24
  store i16 %802, i16* %805, align 2
  %806 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %807 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %806
  %808 = getelementptr inbounds [25 x i16]* %807, i32 0, i64 8
  %809 = load i16* %808, align 2
  %810 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %811 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %810
  %812 = getelementptr inbounds [25 x i16]* %811, i32 0, i64 24
  store i16 %809, i16* %812, align 2
  store i8 0, i8* %core, align 1
  store i8 0, i8* %iscorner, align 1
  store i8 1, i8* %count, align 1
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.5* %c, i32 1)
  br label %813

; <label>:813                                     ; preds = %855, %798
  %814 = bitcast %class.ap_uint.5* %94 to i8*
  %815 = bitcast %class.ap_uint.5* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %814, i8* %815, i64 1, i32 1, i1 false)
  %816 = getelementptr %class.ap_uint.5* %94, i32 0, i32 0
  %817 = bitcast [1 x i8]* %816 to i8*
  %818 = load i8* %817, align 1
  %819 = call zeroext i1 @_ZltILi5EEb7ap_uintIXT_EEi(i8 %818, i32 25)
  br i1 %819, label %820, label %859

; <label>:820                                     ; preds = %813
  %821 = call i8 @_ZmiILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %c, i32 1)
  %822 = getelementptr %class.ap_uint.5* %95, i32 0, i32 0
  %823 = bitcast [1 x i8]* %822 to i8*
  store i8 %821, i8* %823, align 1
  %824 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %95)
  %825 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %826 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %825
  %827 = getelementptr inbounds [25 x i16]* %826, i32 0, i64 %824
  %828 = load i16* %827, align 2
  %829 = sext i16 %828 to i32
  %830 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %c)
  %831 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %832 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %831
  %833 = getelementptr inbounds [25 x i16]* %832, i32 0, i64 %830
  %834 = load i16* %833, align 2
  %835 = sext i16 %834 to i32
  %836 = icmp eq i32 %829, %835
  br i1 %836, label %837, label %853

; <label>:837                                     ; preds = %820
  %838 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %c)
  %839 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %840 = getelementptr inbounds [1 x [25 x i16]]* %flag_val, i32 0, i64 %839
  %841 = getelementptr inbounds [25 x i16]* %840, i32 0, i64 %838
  %842 = load i16* %841, align 2
  %843 = sext i16 %842 to i32
  %844 = icmp sgt i32 %843, 0
  br i1 %844, label %845, label %853

; <label>:845                                     ; preds = %837
  %846 = load i8* %count, align 1
  %847 = add i8 %846, 1
  store i8 %847, i8* %count, align 1
  %848 = load i8* %count, align 1
  %849 = zext i8 %848 to i32
  %850 = icmp sgt i32 %849, 8
  br i1 %850, label %851, label %852

; <label>:851                                     ; preds = %845
  store i8 1, i8* %iscorner, align 1
  br label %852

; <label>:852                                     ; preds = %851, %845
  br label %854

; <label>:853                                     ; preds = %837, %820
  store i8 1, i8* %count, align 1
  br label %854

; <label>:854                                     ; preds = %853, %852
  br label %855

; <label>:855                                     ; preds = %854
  %856 = call i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.5* %c, i32 0)
  %857 = getelementptr %class.ap_uint.5* %96, i32 0, i32 0
  %858 = bitcast [1 x i8]* %857 to i8*
  store i8 %856, i8* %858, align 1
  br label %813

; <label>:859                                     ; preds = %813
  %860 = load i8* %iscorner, align 1
  %861 = icmp ne i8 %860, 0
  br i1 %861, label %862, label %875

; <label>:862                                     ; preds = %859
  %863 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3* %i)
  %864 = getelementptr inbounds [1 x [25 x i16]]* %flag_d, i32 0, i64 %863
  %865 = getelementptr inbounds [25 x i16]* %864, i32 0, i32 0
  %866 = load i8* %3, align 1
  %867 = zext i8 %866 to i32
  call void @_ZL26p_ZN2xf11xFCoreScoreEPsiPhPsiPh(i16* %865, i32 %867, i8* %core)
  %868 = load %class.ap_uint.0** %4, align 8
  %869 = load i8* %ix, align 1
  %870 = zext i8 %869 to i32
  %871 = add nsw i32 %870, 7
  %872 = load i8* %ix, align 1
  %873 = zext i8 %872 to i32
  %874 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %868, i32 %871, i32 %873)
  store i64 255, i64* %874
  br label %883

; <label>:875                                     ; preds = %859
  %876 = load %class.ap_uint.0** %4, align 8
  %877 = load i8* %ix, align 1
  %878 = zext i8 %877 to i32
  %879 = add nsw i32 %878, 7
  %880 = load i8* %ix, align 1
  %881 = zext i8 %880 to i32
  %882 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %876, i32 %879, i32 %881)
  store i64 0, i64* %882
  br label %883

; <label>:883                                     ; preds = %875, %862
  %884 = load i8* %ix, align 1
  %885 = zext i8 %884 to i32
  %886 = add nsw i32 %885, 8
  %887 = trunc i32 %886 to i8
  store i8 %887, i8* %ix, align 1
  %888 = load i8* %core, align 1
  %889 = zext i8 %888 to i64
  %890 = load i8* %kx, align 1
  %891 = zext i8 %890 to i32
  %892 = add nsw i32 %891, 7
  %893 = load i8* %kx, align 1
  %894 = zext i8 %893 to i32
  %895 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %tbuf_temp, i32 %892, i32 %894)
  store i64 %889, i64* %895
  %896 = load i8* %kx, align 1
  %897 = zext i8 %896 to i32
  %898 = add nsw i32 %897, 8
  %899 = trunc i32 %898 to i8
  store i8 %899, i8* %kx, align 1
  br label %900

; <label>:900                                     ; preds = %883
  %901 = call i8 @_ZN7ap_uintILi4EEppEi(%class.ap_uint.3* %i, i32 0)
  %902 = getelementptr %class.ap_uint.3* %97, i32 0, i32 0
  %903 = bitcast [1 x i8]* %902 to i8*
  store i8 %901, i8* %903, align 1
  br label %102

; <label>:904                                     ; preds = %102
  %905 = load %class.ap_uint.0** %1, align 8
  %906 = getelementptr inbounds %class.ap_uint.0* %905, i64 0
  %907 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %906, %class.ap_uint.0* %tbuf_temp)
  ret void
}

declare zeroext i1 @_ZgeILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare void @_ZN7ap_uintILi4EEC1Ei(%class.ap_uint.3*, i32)

declare zeroext i1 @_ZltILi4EEb7ap_uintIXT_EEi(i8, i32)

declare i16 @_ZmiILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8, i8)

declare i8 @_ZplILi4EE7ap_uintIXT_EEiRKS1_(i32, %class.ap_uint.3*)

declare i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.3*)

declare i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.4*)

declare i8 @_ZplILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3*, i32)

declare i8 @_ZN7ap_uintILi4EEppEi(%class.ap_uint.3*, i32)

declare void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.5*, i32)

declare zeroext i1 @_ZltILi5EEb7ap_uintIXT_EEi(i8, i32)

declare i8 @_ZmiILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5*, i32)

declare i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5*)

declare i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.5*, i32)

define internal void @_ZL26p_ZN2xf11xFCoreScoreEPsiPhPsiPh(i16* %flag_d, i32 %_threshold, i8* %core) uwtable {
  %1 = alloca i16*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %flag_d_min2 = alloca [24 x i16], align 16
  %flag_d_max2 = alloca [24 x i16], align 16
  %flag_d_min4 = alloca [22 x i16], align 16
  %flag_d_max4 = alloca [22 x i16], align 16
  %flag_d_min8 = alloca [18 x i16], align 16
  %flag_d_max8 = alloca [18 x i16], align 16
  %i = alloca %class.ap_uint.5, align 1
  %4 = alloca %class.ap_uint.5, align 1
  %5 = alloca %class.ap_uint.5, align 1
  %6 = alloca %class.ap_uint.5, align 1
  %7 = alloca %class.ap_uint.5, align 1
  %8 = alloca %class.ap_uint.5, align 1
  %9 = alloca %class.ap_uint.5, align 1
  %i1 = alloca %class.ap_uint.5, align 1
  %10 = alloca %class.ap_uint.5, align 1
  %11 = alloca %class.ap_uint.5, align 1
  %12 = alloca %class.ap_uint.5, align 1
  %13 = alloca %class.ap_uint.5, align 1
  %14 = alloca %class.ap_uint.5, align 1
  %15 = alloca %class.ap_uint.5, align 1
  %i2 = alloca %class.ap_uint.5, align 1
  %16 = alloca %class.ap_uint.5, align 1
  %17 = alloca %class.ap_uint.5, align 1
  %18 = alloca %class.ap_uint.5, align 1
  %19 = alloca %class.ap_uint.5, align 1
  %20 = alloca %class.ap_uint.5, align 1
  %21 = alloca %class.ap_uint.5, align 1
  %a0 = alloca i8, align 1
  %i3 = alloca %class.ap_uint.5, align 1
  %22 = alloca %class.ap_uint.5, align 1
  %_in_i_0 = alloca %class.ap_uint.5, align 1
  %23 = alloca %class.ap_uint.5, align 1
  %a = alloca i16, align 2
  %24 = alloca %class.ap_uint.5, align 1
  %25 = alloca %class.ap_uint.5, align 1
  %26 = alloca %class.ap_uint.5, align 1
  %27 = alloca %class.ap_uint.5, align 1
  %28 = alloca %class.ap_uint.5, align 1
  %29 = alloca %class.ap_uint.5, align 1
  %30 = alloca %class.ap_uint.5, align 1
  %31 = alloca %class.ap_uint.5, align 1
  %32 = alloca %class.ap_uint.5, align 1
  %33 = alloca %class.ap_uint.5, align 1
  %b0 = alloca i16, align 2
  %i4 = alloca %class.ap_uint.5, align 1
  %34 = alloca %class.ap_uint.5, align 1
  %_in_i = alloca %class.ap_uint.5, align 1
  %35 = alloca %class.ap_uint.5, align 1
  %b = alloca i16, align 2
  %36 = alloca %class.ap_uint.5, align 1
  %37 = alloca %class.ap_uint.5, align 1
  %38 = alloca %class.ap_uint.5, align 1
  %39 = alloca %class.ap_uint.5, align 1
  %40 = alloca %class.ap_uint.5, align 1
  %41 = alloca %class.ap_uint.5, align 1
  %42 = alloca %class.ap_uint.5, align 1
  %43 = alloca %class.ap_uint.5, align 1
  %44 = alloca %class.ap_uint.5, align 1
  %45 = alloca %class.ap_uint.5, align 1
  store i16* %flag_d, i16** %1, align 8
  store i32 %_threshold, i32* %2, align 4
  store i8* %core, i8** %3, align 8
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.5* %i, i32 0)
  br label %46

; <label>:46                                      ; preds = %116, %0
  %47 = bitcast %class.ap_uint.5* %4 to i8*
  %48 = bitcast %class.ap_uint.5* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 1, i32 1, i1 false)
  %49 = getelementptr %class.ap_uint.5* %4, i32 0, i32 0
  %50 = bitcast [1 x i8]* %49 to i8*
  %51 = load i8* %50, align 1
  %52 = call zeroext i1 @_ZltILi5EEb7ap_uintIXT_EEi(i8 %51, i32 24)
  br i1 %52, label %53, label %120

; <label>:53                                      ; preds = %46
  %54 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i)
  %55 = load i16** %1, align 8
  %56 = getelementptr inbounds i16* %55, i64 %54
  %57 = load i16* %56, align 2
  %58 = sext i16 %57 to i32
  %59 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %i, i32 1)
  %60 = getelementptr %class.ap_uint.5* %5, i32 0, i32 0
  %61 = bitcast [1 x i8]* %60 to i8*
  store i8 %59, i8* %61, align 1
  %62 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %5)
  %63 = load i16** %1, align 8
  %64 = getelementptr inbounds i16* %63, i64 %62
  %65 = load i16* %64, align 2
  %66 = sext i16 %65 to i32
  %67 = icmp slt i32 %58, %66
  br i1 %67, label %68, label %73

; <label>:68                                      ; preds = %53
  %69 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i)
  %70 = load i16** %1, align 8
  %71 = getelementptr inbounds i16* %70, i64 %69
  %72 = load i16* %71, align 2
  br label %81

; <label>:73                                      ; preds = %53
  %74 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %i, i32 1)
  %75 = getelementptr %class.ap_uint.5* %6, i32 0, i32 0
  %76 = bitcast [1 x i8]* %75 to i8*
  store i8 %74, i8* %76, align 1
  %77 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %6)
  %78 = load i16** %1, align 8
  %79 = getelementptr inbounds i16* %78, i64 %77
  %80 = load i16* %79, align 2
  br label %81

; <label>:81                                      ; preds = %73, %68
  %82 = phi i16 [ %72, %68 ], [ %80, %73 ]
  %83 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i)
  %84 = getelementptr inbounds [24 x i16]* %flag_d_min2, i32 0, i64 %83
  store i16 %82, i16* %84, align 2
  %85 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i)
  %86 = load i16** %1, align 8
  %87 = getelementptr inbounds i16* %86, i64 %85
  %88 = load i16* %87, align 2
  %89 = sext i16 %88 to i32
  %90 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %i, i32 1)
  %91 = getelementptr %class.ap_uint.5* %7, i32 0, i32 0
  %92 = bitcast [1 x i8]* %91 to i8*
  store i8 %90, i8* %92, align 1
  %93 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %7)
  %94 = load i16** %1, align 8
  %95 = getelementptr inbounds i16* %94, i64 %93
  %96 = load i16* %95, align 2
  %97 = sext i16 %96 to i32
  %98 = icmp sgt i32 %89, %97
  br i1 %98, label %99, label %104

; <label>:99                                      ; preds = %81
  %100 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i)
  %101 = load i16** %1, align 8
  %102 = getelementptr inbounds i16* %101, i64 %100
  %103 = load i16* %102, align 2
  br label %112

; <label>:104                                     ; preds = %81
  %105 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %i, i32 1)
  %106 = getelementptr %class.ap_uint.5* %8, i32 0, i32 0
  %107 = bitcast [1 x i8]* %106 to i8*
  store i8 %105, i8* %107, align 1
  %108 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %8)
  %109 = load i16** %1, align 8
  %110 = getelementptr inbounds i16* %109, i64 %108
  %111 = load i16* %110, align 2
  br label %112

; <label>:112                                     ; preds = %104, %99
  %113 = phi i16 [ %103, %99 ], [ %111, %104 ]
  %114 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i)
  %115 = getelementptr inbounds [24 x i16]* %flag_d_max2, i32 0, i64 %114
  store i16 %113, i16* %115, align 2
  br label %116

; <label>:116                                     ; preds = %112
  %117 = call i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.5* %i, i32 0)
  %118 = getelementptr %class.ap_uint.5* %9, i32 0, i32 0
  %119 = bitcast [1 x i8]* %118 to i8*
  store i8 %117, i8* %119, align 1
  br label %46

; <label>:120                                     ; preds = %46
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.5* %i1, i32 0)
  br label %121

; <label>:121                                     ; preds = %183, %120
  %122 = bitcast %class.ap_uint.5* %10 to i8*
  %123 = bitcast %class.ap_uint.5* %i1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 1, i32 1, i1 false)
  %124 = getelementptr %class.ap_uint.5* %10, i32 0, i32 0
  %125 = bitcast [1 x i8]* %124 to i8*
  %126 = load i8* %125, align 1
  %127 = call zeroext i1 @_ZltILi5EEb7ap_uintIXT_EEi(i8 %126, i32 22)
  br i1 %127, label %128, label %187

; <label>:128                                     ; preds = %121
  %129 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i1)
  %130 = getelementptr inbounds [24 x i16]* %flag_d_min2, i32 0, i64 %129
  %131 = load i16* %130, align 2
  %132 = sext i16 %131 to i32
  %133 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %i1, i32 2)
  %134 = getelementptr %class.ap_uint.5* %11, i32 0, i32 0
  %135 = bitcast [1 x i8]* %134 to i8*
  store i8 %133, i8* %135, align 1
  %136 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %11)
  %137 = getelementptr inbounds [24 x i16]* %flag_d_min2, i32 0, i64 %136
  %138 = load i16* %137, align 2
  %139 = sext i16 %138 to i32
  %140 = icmp slt i32 %132, %139
  br i1 %140, label %141, label %145

; <label>:141                                     ; preds = %128
  %142 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i1)
  %143 = getelementptr inbounds [24 x i16]* %flag_d_min2, i32 0, i64 %142
  %144 = load i16* %143, align 2
  br label %152

; <label>:145                                     ; preds = %128
  %146 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %i1, i32 2)
  %147 = getelementptr %class.ap_uint.5* %12, i32 0, i32 0
  %148 = bitcast [1 x i8]* %147 to i8*
  store i8 %146, i8* %148, align 1
  %149 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %12)
  %150 = getelementptr inbounds [24 x i16]* %flag_d_min2, i32 0, i64 %149
  %151 = load i16* %150, align 2
  br label %152

; <label>:152                                     ; preds = %145, %141
  %153 = phi i16 [ %144, %141 ], [ %151, %145 ]
  %154 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i1)
  %155 = getelementptr inbounds [22 x i16]* %flag_d_min4, i32 0, i64 %154
  store i16 %153, i16* %155, align 2
  %156 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i1)
  %157 = getelementptr inbounds [24 x i16]* %flag_d_max2, i32 0, i64 %156
  %158 = load i16* %157, align 2
  %159 = sext i16 %158 to i32
  %160 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %i1, i32 2)
  %161 = getelementptr %class.ap_uint.5* %13, i32 0, i32 0
  %162 = bitcast [1 x i8]* %161 to i8*
  store i8 %160, i8* %162, align 1
  %163 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %13)
  %164 = getelementptr inbounds [24 x i16]* %flag_d_max2, i32 0, i64 %163
  %165 = load i16* %164, align 2
  %166 = sext i16 %165 to i32
  %167 = icmp sgt i32 %159, %166
  br i1 %167, label %168, label %172

; <label>:168                                     ; preds = %152
  %169 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i1)
  %170 = getelementptr inbounds [24 x i16]* %flag_d_max2, i32 0, i64 %169
  %171 = load i16* %170, align 2
  br label %179

; <label>:172                                     ; preds = %152
  %173 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %i1, i32 2)
  %174 = getelementptr %class.ap_uint.5* %14, i32 0, i32 0
  %175 = bitcast [1 x i8]* %174 to i8*
  store i8 %173, i8* %175, align 1
  %176 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %14)
  %177 = getelementptr inbounds [24 x i16]* %flag_d_max2, i32 0, i64 %176
  %178 = load i16* %177, align 2
  br label %179

; <label>:179                                     ; preds = %172, %168
  %180 = phi i16 [ %171, %168 ], [ %178, %172 ]
  %181 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i1)
  %182 = getelementptr inbounds [22 x i16]* %flag_d_max4, i32 0, i64 %181
  store i16 %180, i16* %182, align 2
  br label %183

; <label>:183                                     ; preds = %179
  %184 = call i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.5* %i1, i32 0)
  %185 = getelementptr %class.ap_uint.5* %15, i32 0, i32 0
  %186 = bitcast [1 x i8]* %185 to i8*
  store i8 %184, i8* %186, align 1
  br label %121

; <label>:187                                     ; preds = %121
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.5* %i2, i32 0)
  br label %188

; <label>:188                                     ; preds = %250, %187
  %189 = bitcast %class.ap_uint.5* %16 to i8*
  %190 = bitcast %class.ap_uint.5* %i2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %189, i8* %190, i64 1, i32 1, i1 false)
  %191 = getelementptr %class.ap_uint.5* %16, i32 0, i32 0
  %192 = bitcast [1 x i8]* %191 to i8*
  %193 = load i8* %192, align 1
  %194 = call zeroext i1 @_ZltILi5EEb7ap_uintIXT_EEi(i8 %193, i32 18)
  br i1 %194, label %195, label %254

; <label>:195                                     ; preds = %188
  %196 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i2)
  %197 = getelementptr inbounds [22 x i16]* %flag_d_min4, i32 0, i64 %196
  %198 = load i16* %197, align 2
  %199 = sext i16 %198 to i32
  %200 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %i2, i32 4)
  %201 = getelementptr %class.ap_uint.5* %17, i32 0, i32 0
  %202 = bitcast [1 x i8]* %201 to i8*
  store i8 %200, i8* %202, align 1
  %203 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %17)
  %204 = getelementptr inbounds [22 x i16]* %flag_d_min4, i32 0, i64 %203
  %205 = load i16* %204, align 2
  %206 = sext i16 %205 to i32
  %207 = icmp slt i32 %199, %206
  br i1 %207, label %208, label %212

; <label>:208                                     ; preds = %195
  %209 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i2)
  %210 = getelementptr inbounds [22 x i16]* %flag_d_min4, i32 0, i64 %209
  %211 = load i16* %210, align 2
  br label %219

; <label>:212                                     ; preds = %195
  %213 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %i2, i32 4)
  %214 = getelementptr %class.ap_uint.5* %18, i32 0, i32 0
  %215 = bitcast [1 x i8]* %214 to i8*
  store i8 %213, i8* %215, align 1
  %216 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %18)
  %217 = getelementptr inbounds [22 x i16]* %flag_d_min4, i32 0, i64 %216
  %218 = load i16* %217, align 2
  br label %219

; <label>:219                                     ; preds = %212, %208
  %220 = phi i16 [ %211, %208 ], [ %218, %212 ]
  %221 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i2)
  %222 = getelementptr inbounds [18 x i16]* %flag_d_min8, i32 0, i64 %221
  store i16 %220, i16* %222, align 2
  %223 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i2)
  %224 = getelementptr inbounds [22 x i16]* %flag_d_max4, i32 0, i64 %223
  %225 = load i16* %224, align 2
  %226 = sext i16 %225 to i32
  %227 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %i2, i32 4)
  %228 = getelementptr %class.ap_uint.5* %19, i32 0, i32 0
  %229 = bitcast [1 x i8]* %228 to i8*
  store i8 %227, i8* %229, align 1
  %230 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %19)
  %231 = getelementptr inbounds [22 x i16]* %flag_d_max4, i32 0, i64 %230
  %232 = load i16* %231, align 2
  %233 = sext i16 %232 to i32
  %234 = icmp sgt i32 %226, %233
  br i1 %234, label %235, label %239

; <label>:235                                     ; preds = %219
  %236 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i2)
  %237 = getelementptr inbounds [22 x i16]* %flag_d_max4, i32 0, i64 %236
  %238 = load i16* %237, align 2
  br label %246

; <label>:239                                     ; preds = %219
  %240 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %i2, i32 4)
  %241 = getelementptr %class.ap_uint.5* %20, i32 0, i32 0
  %242 = bitcast [1 x i8]* %241 to i8*
  store i8 %240, i8* %242, align 1
  %243 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %20)
  %244 = getelementptr inbounds [22 x i16]* %flag_d_max4, i32 0, i64 %243
  %245 = load i16* %244, align 2
  br label %246

; <label>:246                                     ; preds = %239, %235
  %247 = phi i16 [ %238, %235 ], [ %245, %239 ]
  %248 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %i2)
  %249 = getelementptr inbounds [18 x i16]* %flag_d_max8, i32 0, i64 %248
  store i16 %247, i16* %249, align 2
  br label %250

; <label>:250                                     ; preds = %246
  %251 = call i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.5* %i2, i32 0)
  %252 = getelementptr %class.ap_uint.5* %21, i32 0, i32 0
  %253 = bitcast [1 x i8]* %252 to i8*
  store i8 %251, i8* %253, align 1
  br label %188

; <label>:254                                     ; preds = %188
  %255 = load i32* %2, align 4
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %a0, align 1
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.5* %i3, i32 0)
  br label %257

; <label>:257                                     ; preds = %393, %254
  %258 = bitcast %class.ap_uint.5* %22 to i8*
  %259 = bitcast %class.ap_uint.5* %i3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %258, i8* %259, i64 1, i32 1, i1 false)
  %260 = getelementptr %class.ap_uint.5* %22, i32 0, i32 0
  %261 = bitcast [1 x i8]* %260 to i8*
  %262 = load i8* %261, align 1
  %263 = call zeroext i1 @_ZleILi5EEb7ap_uintIXT_EEl(i8 %262, i64 7)
  br i1 %263, label %264, label %397

; <label>:264                                     ; preds = %257
  %265 = call i8 @_ZmlILi5EE7ap_uintIXT_EElRKS1_(i64 2, %class.ap_uint.5* %i3)
  %266 = getelementptr %class.ap_uint.5* %23, i32 0, i32 0
  %267 = bitcast [1 x i8]* %266 to i8*
  store i8 %265, i8* %267, align 1
  %268 = call i8 @_ZplILi5EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.5* %23)
  %269 = getelementptr %class.ap_uint.5* %_in_i_0, i32 0, i32 0
  %270 = bitcast [1 x i8]* %269 to i8*
  store i8 %268, i8* %270, align 1
  store i16 255, i16* %a, align 2
  %271 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %_in_i_0, i32 1)
  %272 = getelementptr %class.ap_uint.5* %24, i32 0, i32 0
  %273 = bitcast [1 x i8]* %272 to i8*
  store i8 %271, i8* %273, align 1
  %274 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %24)
  %275 = getelementptr inbounds [18 x i16]* %flag_d_min8, i32 0, i64 %274
  %276 = load i16* %275, align 2
  store i16 %276, i16* %a, align 2
  %277 = load i8* %a0, align 1
  %278 = zext i8 %277 to i32
  %279 = load i16* %a, align 2
  %280 = sext i16 %279 to i32
  %281 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %_in_i_0)
  %282 = load i16** %1, align 8
  %283 = getelementptr inbounds i16* %282, i64 %281
  %284 = load i16* %283, align 2
  %285 = sext i16 %284 to i32
  %286 = icmp slt i32 %280, %285
  br i1 %286, label %287, label %289

; <label>:287                                     ; preds = %264
  %288 = load i16* %a, align 2
  br label %294

; <label>:289                                     ; preds = %264
  %290 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %_in_i_0)
  %291 = load i16** %1, align 8
  %292 = getelementptr inbounds i16* %291, i64 %290
  %293 = load i16* %292, align 2
  br label %294

; <label>:294                                     ; preds = %289, %287
  %295 = phi i16 [ %288, %287 ], [ %293, %289 ]
  %296 = sext i16 %295 to i32
  %297 = icmp sgt i32 %278, %296
  br i1 %297, label %298, label %301

; <label>:298                                     ; preds = %294
  %299 = load i8* %a0, align 1
  %300 = zext i8 %299 to i32
  br label %320

; <label>:301                                     ; preds = %294
  %302 = load i16* %a, align 2
  %303 = sext i16 %302 to i32
  %304 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %_in_i_0)
  %305 = load i16** %1, align 8
  %306 = getelementptr inbounds i16* %305, i64 %304
  %307 = load i16* %306, align 2
  %308 = sext i16 %307 to i32
  %309 = icmp slt i32 %303, %308
  br i1 %309, label %310, label %312

; <label>:310                                     ; preds = %301
  %311 = load i16* %a, align 2
  br label %317

; <label>:312                                     ; preds = %301
  %313 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %_in_i_0)
  %314 = load i16** %1, align 8
  %315 = getelementptr inbounds i16* %314, i64 %313
  %316 = load i16* %315, align 2
  br label %317

; <label>:317                                     ; preds = %312, %310
  %318 = phi i16 [ %311, %310 ], [ %316, %312 ]
  %319 = sext i16 %318 to i32
  br label %320

; <label>:320                                     ; preds = %317, %298
  %321 = phi i32 [ %300, %298 ], [ %319, %317 ]
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %a0, align 1
  %323 = load i8* %a0, align 1
  %324 = zext i8 %323 to i32
  %325 = load i16* %a, align 2
  %326 = sext i16 %325 to i32
  %327 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %_in_i_0, i32 8)
  %328 = getelementptr %class.ap_uint.5* %25, i32 0, i32 0
  %329 = bitcast [1 x i8]* %328 to i8*
  store i8 %327, i8* %329, align 1
  %330 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %25, i32 1)
  %331 = getelementptr %class.ap_uint.5* %26, i32 0, i32 0
  %332 = bitcast [1 x i8]* %331 to i8*
  store i8 %330, i8* %332, align 1
  %333 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %26)
  %334 = load i16** %1, align 8
  %335 = getelementptr inbounds i16* %334, i64 %333
  %336 = load i16* %335, align 2
  %337 = sext i16 %336 to i32
  %338 = icmp slt i32 %326, %337
  br i1 %338, label %339, label %341

; <label>:339                                     ; preds = %320
  %340 = load i16* %a, align 2
  br label %352

; <label>:341                                     ; preds = %320
  %342 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %_in_i_0, i32 8)
  %343 = getelementptr %class.ap_uint.5* %27, i32 0, i32 0
  %344 = bitcast [1 x i8]* %343 to i8*
  store i8 %342, i8* %344, align 1
  %345 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %27, i32 1)
  %346 = getelementptr %class.ap_uint.5* %28, i32 0, i32 0
  %347 = bitcast [1 x i8]* %346 to i8*
  store i8 %345, i8* %347, align 1
  %348 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %28)
  %349 = load i16** %1, align 8
  %350 = getelementptr inbounds i16* %349, i64 %348
  %351 = load i16* %350, align 2
  br label %352

; <label>:352                                     ; preds = %341, %339
  %353 = phi i16 [ %340, %339 ], [ %351, %341 ]
  %354 = sext i16 %353 to i32
  %355 = icmp sgt i32 %324, %354
  br i1 %355, label %356, label %359

; <label>:356                                     ; preds = %352
  %357 = load i8* %a0, align 1
  %358 = zext i8 %357 to i32
  br label %390

; <label>:359                                     ; preds = %352
  %360 = load i16* %a, align 2
  %361 = sext i16 %360 to i32
  %362 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %_in_i_0, i32 8)
  %363 = getelementptr %class.ap_uint.5* %29, i32 0, i32 0
  %364 = bitcast [1 x i8]* %363 to i8*
  store i8 %362, i8* %364, align 1
  %365 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %29, i32 1)
  %366 = getelementptr %class.ap_uint.5* %30, i32 0, i32 0
  %367 = bitcast [1 x i8]* %366 to i8*
  store i8 %365, i8* %367, align 1
  %368 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %30)
  %369 = load i16** %1, align 8
  %370 = getelementptr inbounds i16* %369, i64 %368
  %371 = load i16* %370, align 2
  %372 = sext i16 %371 to i32
  %373 = icmp slt i32 %361, %372
  br i1 %373, label %374, label %376

; <label>:374                                     ; preds = %359
  %375 = load i16* %a, align 2
  br label %387

; <label>:376                                     ; preds = %359
  %377 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %_in_i_0, i32 8)
  %378 = getelementptr %class.ap_uint.5* %31, i32 0, i32 0
  %379 = bitcast [1 x i8]* %378 to i8*
  store i8 %377, i8* %379, align 1
  %380 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %31, i32 1)
  %381 = getelementptr %class.ap_uint.5* %32, i32 0, i32 0
  %382 = bitcast [1 x i8]* %381 to i8*
  store i8 %380, i8* %382, align 1
  %383 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %32)
  %384 = load i16** %1, align 8
  %385 = getelementptr inbounds i16* %384, i64 %383
  %386 = load i16* %385, align 2
  br label %387

; <label>:387                                     ; preds = %376, %374
  %388 = phi i16 [ %375, %374 ], [ %386, %376 ]
  %389 = sext i16 %388 to i32
  br label %390

; <label>:390                                     ; preds = %387, %356
  %391 = phi i32 [ %358, %356 ], [ %389, %387 ]
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %a0, align 1
  br label %393

; <label>:393                                     ; preds = %390
  %394 = call i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.5* %i3, i32 0)
  %395 = getelementptr %class.ap_uint.5* %33, i32 0, i32 0
  %396 = bitcast [1 x i8]* %395 to i8*
  store i8 %394, i8* %396, align 1
  br label %257

; <label>:397                                     ; preds = %257
  %398 = load i32* %2, align 4
  %399 = sub nsw i32 0, %398
  %400 = trunc i32 %399 to i16
  store i16 %400, i16* %b0, align 2
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.5* %i4, i32 0)
  br label %401

; <label>:401                                     ; preds = %531, %397
  %402 = bitcast %class.ap_uint.5* %34 to i8*
  %403 = bitcast %class.ap_uint.5* %i4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %402, i8* %403, i64 1, i32 1, i1 false)
  %404 = getelementptr %class.ap_uint.5* %34, i32 0, i32 0
  %405 = bitcast [1 x i8]* %404 to i8*
  %406 = load i8* %405, align 1
  %407 = call zeroext i1 @_ZleILi5EEb7ap_uintIXT_EEl(i8 %406, i64 7)
  br i1 %407, label %408, label %535

; <label>:408                                     ; preds = %401
  %409 = call i8 @_ZmlILi5EE7ap_uintIXT_EElRKS1_(i64 2, %class.ap_uint.5* %i4)
  %410 = getelementptr %class.ap_uint.5* %35, i32 0, i32 0
  %411 = bitcast [1 x i8]* %410 to i8*
  store i8 %409, i8* %411, align 1
  %412 = call i8 @_ZplILi5EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.5* %35)
  %413 = getelementptr %class.ap_uint.5* %_in_i, i32 0, i32 0
  %414 = bitcast [1 x i8]* %413 to i8*
  store i8 %412, i8* %414, align 1
  store i16 -255, i16* %b, align 2
  %415 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %_in_i, i32 1)
  %416 = getelementptr %class.ap_uint.5* %36, i32 0, i32 0
  %417 = bitcast [1 x i8]* %416 to i8*
  store i8 %415, i8* %417, align 1
  %418 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %36)
  %419 = getelementptr inbounds [18 x i16]* %flag_d_max8, i32 0, i64 %418
  %420 = load i16* %419, align 2
  store i16 %420, i16* %b, align 2
  %421 = load i16* %b0, align 2
  %422 = sext i16 %421 to i32
  %423 = load i16* %b, align 2
  %424 = sext i16 %423 to i32
  %425 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %_in_i)
  %426 = load i16** %1, align 8
  %427 = getelementptr inbounds i16* %426, i64 %425
  %428 = load i16* %427, align 2
  %429 = sext i16 %428 to i32
  %430 = icmp sgt i32 %424, %429
  br i1 %430, label %431, label %433

; <label>:431                                     ; preds = %408
  %432 = load i16* %b, align 2
  br label %438

; <label>:433                                     ; preds = %408
  %434 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %_in_i)
  %435 = load i16** %1, align 8
  %436 = getelementptr inbounds i16* %435, i64 %434
  %437 = load i16* %436, align 2
  br label %438

; <label>:438                                     ; preds = %433, %431
  %439 = phi i16 [ %432, %431 ], [ %437, %433 ]
  %440 = sext i16 %439 to i32
  %441 = icmp slt i32 %422, %440
  br i1 %441, label %442, label %444

; <label>:442                                     ; preds = %438
  %443 = load i16* %b0, align 2
  br label %462

; <label>:444                                     ; preds = %438
  %445 = load i16* %b, align 2
  %446 = sext i16 %445 to i32
  %447 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %_in_i)
  %448 = load i16** %1, align 8
  %449 = getelementptr inbounds i16* %448, i64 %447
  %450 = load i16* %449, align 2
  %451 = sext i16 %450 to i32
  %452 = icmp sgt i32 %446, %451
  br i1 %452, label %453, label %455

; <label>:453                                     ; preds = %444
  %454 = load i16* %b, align 2
  br label %460

; <label>:455                                     ; preds = %444
  %456 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %_in_i)
  %457 = load i16** %1, align 8
  %458 = getelementptr inbounds i16* %457, i64 %456
  %459 = load i16* %458, align 2
  br label %460

; <label>:460                                     ; preds = %455, %453
  %461 = phi i16 [ %454, %453 ], [ %459, %455 ]
  br label %462

; <label>:462                                     ; preds = %460, %442
  %463 = phi i16 [ %443, %442 ], [ %461, %460 ]
  store i16 %463, i16* %b0, align 2
  %464 = load i16* %b0, align 2
  %465 = sext i16 %464 to i32
  %466 = load i16* %b, align 2
  %467 = sext i16 %466 to i32
  %468 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %_in_i, i32 8)
  %469 = getelementptr %class.ap_uint.5* %37, i32 0, i32 0
  %470 = bitcast [1 x i8]* %469 to i8*
  store i8 %468, i8* %470, align 1
  %471 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %37, i32 1)
  %472 = getelementptr %class.ap_uint.5* %38, i32 0, i32 0
  %473 = bitcast [1 x i8]* %472 to i8*
  store i8 %471, i8* %473, align 1
  %474 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %38)
  %475 = load i16** %1, align 8
  %476 = getelementptr inbounds i16* %475, i64 %474
  %477 = load i16* %476, align 2
  %478 = sext i16 %477 to i32
  %479 = icmp sgt i32 %467, %478
  br i1 %479, label %480, label %482

; <label>:480                                     ; preds = %462
  %481 = load i16* %b, align 2
  br label %493

; <label>:482                                     ; preds = %462
  %483 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %_in_i, i32 8)
  %484 = getelementptr %class.ap_uint.5* %39, i32 0, i32 0
  %485 = bitcast [1 x i8]* %484 to i8*
  store i8 %483, i8* %485, align 1
  %486 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %39, i32 1)
  %487 = getelementptr %class.ap_uint.5* %40, i32 0, i32 0
  %488 = bitcast [1 x i8]* %487 to i8*
  store i8 %486, i8* %488, align 1
  %489 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %40)
  %490 = load i16** %1, align 8
  %491 = getelementptr inbounds i16* %490, i64 %489
  %492 = load i16* %491, align 2
  br label %493

; <label>:493                                     ; preds = %482, %480
  %494 = phi i16 [ %481, %480 ], [ %492, %482 ]
  %495 = sext i16 %494 to i32
  %496 = icmp slt i32 %465, %495
  br i1 %496, label %497, label %499

; <label>:497                                     ; preds = %493
  %498 = load i16* %b0, align 2
  br label %529

; <label>:499                                     ; preds = %493
  %500 = load i16* %b, align 2
  %501 = sext i16 %500 to i32
  %502 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %_in_i, i32 8)
  %503 = getelementptr %class.ap_uint.5* %41, i32 0, i32 0
  %504 = bitcast [1 x i8]* %503 to i8*
  store i8 %502, i8* %504, align 1
  %505 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %41, i32 1)
  %506 = getelementptr %class.ap_uint.5* %42, i32 0, i32 0
  %507 = bitcast [1 x i8]* %506 to i8*
  store i8 %505, i8* %507, align 1
  %508 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %42)
  %509 = load i16** %1, align 8
  %510 = getelementptr inbounds i16* %509, i64 %508
  %511 = load i16* %510, align 2
  %512 = sext i16 %511 to i32
  %513 = icmp sgt i32 %501, %512
  br i1 %513, label %514, label %516

; <label>:514                                     ; preds = %499
  %515 = load i16* %b, align 2
  br label %527

; <label>:516                                     ; preds = %499
  %517 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %_in_i, i32 8)
  %518 = getelementptr %class.ap_uint.5* %43, i32 0, i32 0
  %519 = bitcast [1 x i8]* %518 to i8*
  store i8 %517, i8* %519, align 1
  %520 = call i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %43, i32 1)
  %521 = getelementptr %class.ap_uint.5* %44, i32 0, i32 0
  %522 = bitcast [1 x i8]* %521 to i8*
  store i8 %520, i8* %522, align 1
  %523 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.5* %44)
  %524 = load i16** %1, align 8
  %525 = getelementptr inbounds i16* %524, i64 %523
  %526 = load i16* %525, align 2
  br label %527

; <label>:527                                     ; preds = %516, %514
  %528 = phi i16 [ %515, %514 ], [ %526, %516 ]
  br label %529

; <label>:529                                     ; preds = %527, %497
  %530 = phi i16 [ %498, %497 ], [ %528, %527 ]
  store i16 %530, i16* %b0, align 2
  br label %531

; <label>:531                                     ; preds = %529
  %532 = call i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.5* %i4, i32 0)
  %533 = getelementptr %class.ap_uint.5* %45, i32 0, i32 0
  %534 = bitcast [1 x i8]* %533 to i8*
  store i8 %532, i8* %534, align 1
  br label %401

; <label>:535                                     ; preds = %401
  %536 = load i8* %a0, align 1
  %537 = zext i8 %536 to i32
  %538 = load i16* %b0, align 2
  %539 = sext i16 %538 to i32
  %540 = sub nsw i32 0, %539
  %541 = icmp sgt i32 %537, %540
  br i1 %541, label %542, label %545

; <label>:542                                     ; preds = %535
  %543 = load i8* %a0, align 1
  %544 = zext i8 %543 to i32
  br label %549

; <label>:545                                     ; preds = %535
  %546 = load i16* %b0, align 2
  %547 = sext i16 %546 to i32
  %548 = sub nsw i32 0, %547
  br label %549

; <label>:549                                     ; preds = %545, %542
  %550 = phi i32 [ %544, %542 ], [ %548, %545 ]
  %551 = sub nsw i32 %550, 1
  %552 = trunc i32 %551 to i8
  %553 = load i8** %3, align 8
  store i8 %552, i8* %553, align 1
  ret void
}

declare i8 @_ZplILi5EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5*, i32)

declare zeroext i1 @_ZleILi5EEb7ap_uintIXT_EEl(i8, i64)

declare i8 @_ZplILi5EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.5*)

declare i8 @_ZmlILi5EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.5*)

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

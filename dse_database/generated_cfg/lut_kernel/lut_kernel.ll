; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/lut_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [8 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream.1" = type { %class.ap_uint.0 }
%"class.hls::stream.2" = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.3 = type { [2 x i8] }

@.str = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z9lut_accelP7ap_uintILi64EES1_Phii(%class.ap_uint* %imgInput_data, %class.ap_uint* %imgOutput_data, i8* %lut_ptr, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %imgInput = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %imgOutput = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %imgInput_data, %class.ap_uint** %1, align 8
  store %class.ap_uint* %imgOutput_data, %class.ap_uint** %2, align 8
  store i8* %lut_ptr, i8** %3, align 8
  store i32 %rows, i32* %4, align 4
  store i32 %cols, i32* %5, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %imgInput)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %imgInput)
  %6 = load i32* %4, align 4
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %imgInput, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32* %5, align 4
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %imgInput, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %imgOutput)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %imgOutput)
  %10 = load i32* %4, align 4
  %11 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %imgOutput, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32* %5, align 4
  %13 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %imgOutput, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %class.ap_uint** %1, align 8
  call void @_ZL93p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_0_256_256_1_(%class.ap_uint* %14, %struct.xf_Mat_0_256_256_1_* %imgInput)
  %15 = load i8** %3, align 8
  call void @_ZL92p_ZN2xf3LUTILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPh_1R19xf_Mat_0_256_256_1_S0_Ph(%struct.xf_Mat_0_256_256_1_* %imgInput, %struct.xf_Mat_0_256_256_1_* %imgOutput, i8* %15)
  %16 = load %class.ap_uint** %2, align 8
  call void @_ZL93p_ZN2xf11xfMat2ArrayILi64ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi64EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi64EE(%struct.xf_Mat_0_256_256_1_* %imgOutput, %class.ap_uint* %16)
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

define internal void @_ZL92p_ZN2xf3LUTILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPh_1R19xf_Mat_0_256_256_1_S0_Ph(%struct.xf_Mat_0_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_* %_dst, i8* %_lut) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i8*, align 8
  %_src_stream = alloca %"class.hls::stream.1", align 1
  %_dst_stream = alloca %"class.hls::stream.1", align 1
  %_lut_stream = alloca %"class.hls::stream.2", align 1
  %src_rows = alloca i32, align 4
  %src_cols = alloca i32, align 4
  %dst_rows = alloca i32, align 4
  %dst_cols = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %4 = alloca %class.ap_uint.0, align 1
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %5 = alloca %class.ap_uint.0, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i8* %_lut, i8** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.1"* %_src_stream)
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream.1"* %_dst_stream)
  call void @_ZN3hls6streamIhEC1Ev(%"class.hls::stream.2"* %_lut_stream)
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
  br label %18

; <label>:18                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %19

; <label>:19                                      ; preds = %44, %18
  %20 = load i32* %i, align 4
  %21 = load i32* %src_rows, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

; <label>:23                                      ; preds = %19
  store i32 0, i32* %j, align 4
  br label %24

; <label>:24                                      ; preds = %40, %23
  %25 = load i32* %j, align 4
  %26 = load i32* %src_cols, align 4
  %27 = ashr i32 %26, 0
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %43

; <label>:29                                      ; preds = %24
  %30 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %31 = load i32* %i, align 4
  %32 = load i32* %src_cols, align 4
  %33 = ashr i32 %32, 0
  %34 = mul nsw i32 %31, %33
  %35 = load i32* %j, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %30, i32 %36)
  %38 = getelementptr %class.ap_uint.0* %4, i32 0, i32 0
  %39 = bitcast [1 x i8]* %38 to i8*
  store i8 %37, i8* %39, align 1
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.1"* %_src_stream, %class.ap_uint.0* %4)
  br label %40

; <label>:40                                      ; preds = %29
  %41 = load i32* %j, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %j, align 4
  br label %24

; <label>:43                                      ; preds = %24
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load i32* %i, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %i, align 4
  br label %19

; <label>:47                                      ; preds = %19
  br label %48

; <label>:48                                      ; preds = %47
  store i32 0, i32* %i1, align 4
  br label %49

; <label>:49                                      ; preds = %57, %48
  %50 = load i32* %i1, align 4
  %51 = icmp slt i32 %50, 256
  br i1 %51, label %52, label %60

; <label>:52                                      ; preds = %49
  %53 = load i8** %3, align 8
  %54 = load i32* %i1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8* %53, i64 %55
  call void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream.2"* %_lut_stream, i8* %56)
  br label %57

; <label>:57                                      ; preds = %52
  %58 = load i32* %i1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %i1, align 4
  br label %49

; <label>:60                                      ; preds = %49
  %61 = load i32* %src_rows, align 4
  %62 = trunc i32 %61 to i16
  %63 = load i32* %src_cols, align 4
  %64 = trunc i32 %63 to i16
  call void @_ZL117p_ZN2xf10LUT_kernelILi256ELi256ELi1ELi0ELi1ELi1ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamIhEtt_1RN3hls6streamI7ap_uintILi8EEEES4_RNS0_IhEEtt(%"class.hls::stream.1"* %_src_stream, %"class.hls::stream.1"* %_dst_stream, %"class.hls::stream.2"* %_lut_stream, i16 zeroext %62, i16 zeroext %64)
  store i32 0, i32* %i2, align 4
  br label %65

; <label>:65                                      ; preds = %93, %60
  %66 = load i32* %i2, align 4
  %67 = load i32* %dst_rows, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %96

; <label>:69                                      ; preds = %65
  store i32 0, i32* %j3, align 4
  br label %70

; <label>:70                                      ; preds = %89, %69
  %71 = load i32* %j3, align 4
  %72 = load i32* %dst_cols, align 4
  %73 = ashr i32 %72, 0
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %92

; <label>:75                                      ; preds = %70
  %76 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %77 = load i32* %i2, align 4
  %78 = load i32* %dst_cols, align 4
  %79 = ashr i32 %78, 0
  %80 = mul nsw i32 %77, %79
  %81 = load i32* %j3, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.1"* %_dst_stream)
  %84 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %85 = bitcast [1 x i8]* %84 to i8*
  store i8 %83, i8* %85, align 1
  %86 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %87 = bitcast [1 x i8]* %86 to i8*
  %88 = load i8* %87, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %76, i32 %82, i8 %88)
  br label %89

; <label>:89                                      ; preds = %75
  %90 = load i32* %j3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %j3, align 4
  br label %70

; <label>:92                                      ; preds = %70
  br label %93

; <label>:93                                      ; preds = %92
  %94 = load i32* %i2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %i2, align 4
  br label %65

; <label>:96                                      ; preds = %65
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

declare void @_ZN3hls6streamIhEC1Ev(%"class.hls::stream.2"*)

declare void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.1"*, %class.ap_uint.0*)

declare void @_ZN3hls6streamIhE5writeERKh(%"class.hls::stream.2"*, i8*)

define internal void @_ZL117p_ZN2xf10LUT_kernelILi256ELi256ELi1ELi0ELi1ELi1ELi1EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamIhEtt_1RN3hls6streamI7ap_uintILi8EEEES4_RNS0_IhEEtt(%"class.hls::stream.1"* %_src, %"class.hls::stream.1"* %_dst, %"class.hls::stream.2"* %_lut, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %"class.hls::stream.1"*, align 8
  %2 = alloca %"class.hls::stream.1"*, align 8
  %3 = alloca %"class.hls::stream.2"*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %"class.hls::stream.1"* %_src, %"class.hls::stream.1"** %1, align 8
  store %"class.hls::stream.1"* %_dst, %"class.hls::stream.1"** %2, align 8
  store %"class.hls::stream.2"* %_lut, %"class.hls::stream.2"** %3, align 8
  store i16 %height, i16* %4, align 2
  store i16 %width, i16* %5, align 2
  %6 = load %"class.hls::stream.1"** %1, align 8
  %7 = load %"class.hls::stream.1"** %2, align 8
  %8 = load %"class.hls::stream.2"** %3, align 8
  %9 = load i16* %4, align 2
  %10 = load i16* %5, align 2
  call void @_ZL124p_ZN2xf11xFLUTKernelILi256ELi256ELi1ELi0ELi1ELi1ELi1ELi256EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamIhEtt_1RN3hls6streamI7ap_uintILi8EEEES4_RNS0_IhEEtt(%"class.hls::stream.1"* %6, %"class.hls::stream.1"* %7, %"class.hls::stream.2"* %8, i16 zeroext %9, i16 zeroext %10)
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

declare i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.1"*)

define internal void @_ZL124p_ZN2xf11xFLUTKernelILi256ELi256ELi1ELi0ELi1ELi1ELi1ELi256EEER6streamI7ap_uintILi8EEER6streamI7ap_uintILi8EEER6streamIhEtt_1RN3hls6streamI7ap_uintILi8EEEES4_RNS0_IhEEtt(%"class.hls::stream.1"* %_src, %"class.hls::stream.1"* %_dst, %"class.hls::stream.2"* %_lutptr, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %"class.hls::stream.1"*, align 8
  %2 = alloca %"class.hls::stream.1"*, align 8
  %3 = alloca %"class.hls::stream.2"*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %i = alloca %class.ap_uint.3, align 1
  %j = alloca %class.ap_uint.3, align 1
  %k = alloca %class.ap_uint.3, align 1
  %npc = alloca i8, align 1
  %_lut = alloca [256 x i8], align 16
  %6 = alloca %class.ap_uint.3, align 1
  %7 = alloca %class.ap_uint.3, align 1
  %lut = alloca [1 x [256 x i8]], align 16
  %8 = alloca %class.ap_uint.3, align 1
  %9 = alloca %class.ap_uint.3, align 1
  %10 = alloca %class.ap_uint.3, align 1
  %11 = alloca %class.ap_uint.3, align 1
  %val_src = alloca %class.ap_uint.0, align 1
  %val_dst = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.3, align 1
  %13 = alloca %class.ap_uint.3, align 1
  %14 = alloca %class.ap_uint.0, align 1
  %l = alloca i8, align 1
  %c = alloca i32, align 4
  %15 = alloca %class.ap_uint.3, align 1
  %_in_k = alloca %class.ap_uint.3, align 1
  %16 = alloca %class.ap_uint.3, align 1
  %p = alloca %class.ap_uint.0, align 1
  %17 = alloca %class.ap_uint.3, align 1
  %18 = alloca %class.ap_uint.3, align 1
  %19 = alloca %class.ap_uint.3, align 1
  %20 = alloca %class.ap_uint.3, align 1
  %21 = alloca %class.ap_uint.3, align 1
  store %"class.hls::stream.1"* %_src, %"class.hls::stream.1"** %1, align 8
  store %"class.hls::stream.1"* %_dst, %"class.hls::stream.1"** %2, align 8
  store %"class.hls::stream.2"* %_lutptr, %"class.hls::stream.2"** %3, align 8
  store i16 %height, i16* %4, align 2
  store i16 %width, i16* %5, align 2
  %22 = load i16* %5, align 2
  %23 = zext i16 %22 to i32
  %24 = ashr i32 %23, 0
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %5, align 2
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3* %i)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3* %j)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3* %k)
  store i8 1, i8* %npc, align 1
  %26 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3* %i, i32 0)
  br label %27

; <label>:27                                      ; preds = %39, %0
  %28 = bitcast %class.ap_uint.3* %6 to i8*
  %29 = bitcast %class.ap_uint.3* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 2, i32 1, i1 false)
  %30 = getelementptr %class.ap_uint.3* %6, i32 0, i32 0
  %31 = bitcast [2 x i8]* %30 to i16*
  %32 = load i16* %31, align 1
  %33 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %32, i32 256)
  br i1 %33, label %34, label %43

; <label>:34                                      ; preds = %27
  %35 = load %"class.hls::stream.2"** %3, align 8
  %36 = call zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream.2"* %35)
  %37 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.3* %i)
  %38 = getelementptr inbounds [256 x i8]* %_lut, i32 0, i64 %37
  store i8 %36, i8* %38, align 1
  br label %39

; <label>:39                                      ; preds = %34
  %40 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %i, i32 0)
  %41 = getelementptr %class.ap_uint.3* %7, i32 0, i32 0
  %42 = bitcast [2 x i8]* %41 to i16*
  store i16 %40, i16* %42, align 1
  br label %27

; <label>:43                                      ; preds = %27
  %44 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3* %i, i32 0)
  br label %45

; <label>:45                                      ; preds = %77, %43
  %46 = bitcast %class.ap_uint.3* %8 to i8*
  %47 = bitcast %class.ap_uint.3* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 2, i32 1, i1 false)
  %48 = load i8* %npc, align 1
  %49 = zext i8 %48 to i32
  %50 = mul nsw i32 %49, 1
  %51 = getelementptr %class.ap_uint.3* %8, i32 0, i32 0
  %52 = bitcast [2 x i8]* %51 to i16*
  %53 = load i16* %52, align 1
  %54 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %53, i32 %50)
  br i1 %54, label %55, label %81

; <label>:55                                      ; preds = %45
  %56 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3* %j, i32 0)
  br label %57

; <label>:57                                      ; preds = %72, %55
  %58 = bitcast %class.ap_uint.3* %9 to i8*
  %59 = bitcast %class.ap_uint.3* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 2, i32 1, i1 false)
  %60 = getelementptr %class.ap_uint.3* %9, i32 0, i32 0
  %61 = bitcast [2 x i8]* %60 to i16*
  %62 = load i16* %61, align 1
  %63 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %62, i32 256)
  br i1 %63, label %64, label %76

; <label>:64                                      ; preds = %57
  %65 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.3* %j)
  %66 = getelementptr inbounds [256 x i8]* %_lut, i32 0, i64 %65
  %67 = load i8* %66, align 1
  %68 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.3* %j)
  %69 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.3* %i)
  %70 = getelementptr inbounds [1 x [256 x i8]]* %lut, i32 0, i64 %69
  %71 = getelementptr inbounds [256 x i8]* %70, i32 0, i64 %68
  store i8 %67, i8* %71, align 1
  br label %72

; <label>:72                                      ; preds = %64
  %73 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %j, i32 0)
  %74 = getelementptr %class.ap_uint.3* %10, i32 0, i32 0
  %75 = bitcast [2 x i8]* %74 to i16*
  store i16 %73, i16* %75, align 1
  br label %57

; <label>:76                                      ; preds = %57
  br label %77

; <label>:77                                      ; preds = %76
  %78 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %i, i32 0)
  %79 = getelementptr %class.ap_uint.3* %11, i32 0, i32 0
  %80 = bitcast [2 x i8]* %79 to i16*
  store i16 %78, i16* %80, align 1
  br label %45

; <label>:81                                      ; preds = %45
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_src)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_dst)
  br label %82

; <label>:82                                      ; preds = %81
  %83 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3* %i, i32 0)
  br label %84

; <label>:84                                      ; preds = %151, %82
  %85 = bitcast %class.ap_uint.3* %12 to i8*
  %86 = bitcast %class.ap_uint.3* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 2, i32 1, i1 false)
  %87 = load i16* %4, align 2
  %88 = getelementptr %class.ap_uint.3* %12, i32 0, i32 0
  %89 = bitcast [2 x i8]* %88 to i16*
  %90 = load i16* %89, align 1
  %91 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %90, i16 zeroext %87)
  br i1 %91, label %92, label %155

; <label>:92                                      ; preds = %84
  br label %93

; <label>:93                                      ; preds = %92
  %94 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3* %j, i32 0)
  br label %95

; <label>:95                                      ; preds = %146, %93
  %96 = bitcast %class.ap_uint.3* %13 to i8*
  %97 = bitcast %class.ap_uint.3* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 2, i32 1, i1 false)
  %98 = load i16* %5, align 2
  %99 = getelementptr %class.ap_uint.3* %13, i32 0, i32 0
  %100 = bitcast [2 x i8]* %99 to i16*
  %101 = load i16* %100, align 1
  %102 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %101, i16 zeroext %98)
  br i1 %102, label %103, label %150

; <label>:103                                     ; preds = %95
  %104 = load %"class.hls::stream.1"** %1, align 8
  %105 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream.1"* %104)
  %106 = getelementptr %class.ap_uint.0* %14, i32 0, i32 0
  %107 = bitcast [1 x i8]* %106 to i8*
  store i8 %105, i8* %107, align 1
  %108 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val_src, %class.ap_uint.0* %14)
  store i8 0, i8* %l, align 1
  store i32 0, i32* %c, align 4
  br label %109

; <label>:109                                     ; preds = %103
  %110 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3* %k, i32 0)
  br label %111

; <label>:111                                     ; preds = %139, %109
  %112 = bitcast %class.ap_uint.3* %15 to i8*
  %113 = bitcast %class.ap_uint.3* %k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 2, i32 1, i1 false)
  %114 = getelementptr %class.ap_uint.3* %15, i32 0, i32 0
  %115 = bitcast [2 x i8]* %114 to i16*
  %116 = load i16* %115, align 1
  %117 = call zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16 %116, i64 0)
  br i1 %117, label %118, label %143

; <label>:118                                     ; preds = %111
  %119 = call i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64 8, %class.ap_uint.3* %k)
  %120 = getelementptr %class.ap_uint.3* %16, i32 0, i32 0
  %121 = bitcast [2 x i8]* %120 to i16*
  store i16 %119, i16* %121, align 1
  %122 = call i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.3* %16)
  %123 = getelementptr %class.ap_uint.3* %_in_k, i32 0, i32 0
  %124 = bitcast [2 x i8]* %123 to i16*
  store i16 %122, i16* %124, align 1
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %p)
  %125 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_in_k, i32 7)
  %126 = getelementptr %class.ap_uint.3* %17, i32 0, i32 0
  %127 = bitcast [2 x i8]* %126 to i16*
  store i16 %125, i16* %127, align 1
  %128 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_src, %class.ap_uint.3* %17, %class.ap_uint.3* %_in_k)
  %129 = load i64* %128
  %130 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %p, i64 %129)
  %131 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %p)
  %132 = getelementptr inbounds [256 x i8]* %_lut, i32 0, i64 %131
  %133 = load i8* %132, align 1
  %134 = zext i8 %133 to i64
  %135 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_in_k, i32 7)
  %136 = getelementptr %class.ap_uint.3* %18, i32 0, i32 0
  %137 = bitcast [2 x i8]* %136 to i16*
  store i16 %135, i16* %137, align 1
  %138 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_dst, %class.ap_uint.3* %18, %class.ap_uint.3* %_in_k)
  store i64 %134, i64* %138
  br label %139

; <label>:139                                     ; preds = %118
  %140 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %k, i32 0)
  %141 = getelementptr %class.ap_uint.3* %19, i32 0, i32 0
  %142 = bitcast [2 x i8]* %141 to i16*
  store i16 %140, i16* %142, align 1
  br label %111

; <label>:143                                     ; preds = %111
  %144 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.3* %k, i64 8)
  %145 = load %"class.hls::stream.1"** %2, align 8
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream.1"* %145, %class.ap_uint.0* %val_dst)
  br label %146

; <label>:146                                     ; preds = %143
  %147 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %j, i32 0)
  %148 = getelementptr %class.ap_uint.3* %20, i32 0, i32 0
  %149 = bitcast [2 x i8]* %148 to i16*
  store i16 %147, i16* %149, align 1
  br label %95

; <label>:150                                     ; preds = %95
  br label %151

; <label>:151                                     ; preds = %150
  %152 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %i, i32 0)
  %153 = getelementptr %class.ap_uint.3* %21, i32 0, i32 0
  %154 = bitcast [2 x i8]* %153 to i16*
  store i16 %152, i16* %154, align 1
  br label %84

; <label>:155                                     ; preds = %84
  ret void
}

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3*)

declare %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16, i32)

declare zeroext i8 @_ZN3hls6streamIhE4readEv(%"class.hls::stream.2"*)

declare i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.3*)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16, i64)

declare i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.3*)

declare i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.3*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0*, i64)

declare i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0*, %class.ap_uint.3*, %class.ap_uint.3*)

declare i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3*, i32)

declare %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.3*, i64)

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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
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

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

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

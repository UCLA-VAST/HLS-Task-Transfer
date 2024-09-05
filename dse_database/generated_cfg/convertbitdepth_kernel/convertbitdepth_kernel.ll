; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/convertbitdepth_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_Mat_2_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.1] }
%class.ap_uint.1 = type { [2 x i8] }
%class.ap_uint.2 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.3 = type { [2 x i8] }
%class.ap_uint.4 = type { [2 x i8] }
%class.ap_int = type { [4 x i8] }
%class.ap_int.5 = type { [3 x i8] }
%class.ap_int.6 = type { [2 x i8] }

@.str = private unnamed_addr constant [108 x i8] c"((_src_mat.rows <= ROWS ) && (_src_mat.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [24 x i8] c"xf_convert_bitdepth.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL115p_ZN2xf9convertToILi0ELi2ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE7ap_uintILi4EEi_1R19xf_Mat_0_256_256_1_R19xf_Mat_2_256_256_1_7ap_uintILi4EEi = private unnamed_addr constant [204 x i8] c"void p_ZN2xf9convertToILi0ELi2ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE7ap_uintILi4EEi_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_2_256_256_1_ &, class ap_uint<4>, int)\00", align 1
@.str2 = private unnamed_addr constant [108 x i8] c"((_dst_mat.rows <= ROWS ) && (_dst_mat.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str3 = private unnamed_addr constant [474 x i8] c"( ((_convert_type == XF_CONVERT_16U_TO_8U) || (_convert_type == XF_CONVERT_16S_TO_8U) || ( _convert_type == XF_CONVERT_32S_TO_8U) || ( _convert_type == XF_CONVERT_32S_TO_16S) || (_convert_type == XF_CONVERT_32S_TO_16U) || (_convert_type == XF_CONVERT_8U_TO_16U) || (_convert_type == XF_CONVERT_8U_TO_16S) || (_convert_type == XF_CONVERT_8U_TO_32S) || (_convert_type == XF_CONVERT_16U_TO_32S) || (_convert_type == XF_CONVERT_16S_TO_32S)) && \22 conversion type is not valid \22)\00", align 1
@.str4 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_2_256_256_1_4initIEEiib_1P19xf_Mat_2_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_2_256_256_1_4initIEEiib_1(struct xf_Mat_2_256_256_1_ *, int, int, bool)\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z22convert_bitdepth_accelP7ap_uintILi256EES1_iiii(%class.ap_uint* %imgInput, %class.ap_uint* %imgOutput, i32 %rows, i32 %cols, i32 %_convert_type, i32 %shift) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_2_256_256_1_, align 4
  %7 = alloca %class.ap_uint.2, align 1
  store %class.ap_uint* %imgInput, %class.ap_uint** %1, align 8
  store %class.ap_uint* %imgOutput, %class.ap_uint** %2, align 8
  store i32 %rows, i32* %3, align 4
  store i32 %cols, i32* %4, align 4
  store i32 %_convert_type, i32* %5, align 4
  store i32 %shift, i32* %6, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat)
  %8 = load i32* %3, align 4
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32* %4, align 4
  %11 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  call void @_ZN19xf_Mat_2_256_256_1_C1Ev(%struct.xf_Mat_2_256_256_1_* %out_mat)
  call void @_ZL33p_ZN2xf16Mat_2_256_256_1_C2IEEv_1P19xf_Mat_2_256_256_1_(%struct.xf_Mat_2_256_256_1_* %out_mat)
  %12 = load i32* %3, align 4
  %13 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %out_mat, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32* %4, align 4
  %15 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %out_mat, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %16, %struct.xf_Mat_0_256_256_1_* %in_mat)
  %17 = load i32* %5, align 4
  call void @_ZN7ap_uintILi4EEC1Ei(%class.ap_uint.2* %7, i32 %17)
  %18 = load i32* %6, align 4
  %19 = getelementptr %class.ap_uint.2* %7, i32 0, i32 0
  %20 = bitcast [1 x i8]* %19 to i8*
  %21 = load i8* %20, align 1
  call void @_ZL115p_ZN2xf9convertToILi0ELi2ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE7ap_uintILi4EEi_1R19xf_Mat_0_256_256_1_R19xf_Mat_2_256_256_1_7ap_uintILi4EEi(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_2_256_256_1_* %out_mat, i8 %21, i32 %18)
  %22 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_2_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_2_256_256_1_* %out_mat, %class.ap_uint* %22)
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

define linkonce_odr void @_ZN19xf_Mat_2_256_256_1_C1Ev(%struct.xf_Mat_2_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  store %struct.xf_Mat_2_256_256_1_* %this, %struct.xf_Mat_2_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_2_256_256_1_** %1
  call void @_ZN19xf_Mat_2_256_256_1_C2Ev(%struct.xf_Mat_2_256_256_1_* %2)
  ret void
}

define internal void @_ZL33p_ZN2xf16Mat_2_256_256_1_C2IEEv_1P19xf_Mat_2_256_256_1_(%struct.xf_Mat_2_256_256_1_* %this_) uwtable {
  %1 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  store %struct.xf_Mat_2_256_256_1_* %this_, %struct.xf_Mat_2_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  call void @_ZL38p_ZN2xf16Mat_2_256_256_1_4initIEEiib_1P19xf_Mat_2_256_256_1_iib(%struct.xf_Mat_2_256_256_1_* %2, i32 256, i32 256, i1 zeroext true)
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

define internal void @_ZL115p_ZN2xf9convertToILi0ELi2ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE7ap_uintILi4EEi_1R19xf_Mat_0_256_256_1_R19xf_Mat_2_256_256_1_7ap_uintILi4EEi(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_2_256_256_1_* %_dst_mat, i8 %_convert_type.coerce, i32 %_shift) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %_convert_type = alloca %class.ap_uint.2, align 1
  %3 = alloca i32, align 4
  %4 = alloca %class.ap_uint.2, align 1
  %5 = alloca %class.ap_uint.2, align 1
  %6 = alloca %class.ap_uint.2, align 1
  %7 = alloca %class.ap_uint.2, align 1
  %8 = alloca %class.ap_uint.2, align 1
  %9 = alloca %class.ap_uint.2, align 1
  %10 = alloca %class.ap_uint.2, align 1
  %11 = alloca %class.ap_uint.2, align 1
  %12 = alloca %class.ap_uint.2, align 1
  %13 = alloca %class.ap_uint.2, align 1
  %width = alloca i16, align 2
  %height = alloca i16, align 2
  %14 = alloca %class.ap_uint.2, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_2_256_256_1_* %_dst_mat, %struct.xf_Mat_2_256_256_1_** %2, align 8
  %15 = getelementptr %class.ap_uint.2* %_convert_type, i32 0, i32 0
  %16 = bitcast [1 x i8]* %15 to i8*
  store i8 %_convert_type.coerce, i8* %16, align 1
  store i32 %_shift, i32* %3, align 4
  %17 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %18 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %17, i32 0, i32 1
  %19 = load i32* %18, align 4
  %20 = icmp sle i32 %19, 256
  br i1 %20, label %21, label %27

; <label>:21                                      ; preds = %0
  %22 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %22, i32 0, i32 2
  %24 = load i32* %23, align 4
  %25 = icmp sle i32 %24, 256
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %21
  br label %29

; <label>:27                                      ; preds = %21, %0
  call void @__assert_fail(i8* getelementptr inbounds ([108 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8]* @.str1, i32 0, i32 0), i32 147, i8* getelementptr inbounds ([204 x i8]* @__PRETTY_FUNCTION__._ZL115p_ZN2xf9convertToILi0ELi2ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE7ap_uintILi4EEi_1R19xf_Mat_0_256_256_1_R19xf_Mat_2_256_256_1_7ap_uintILi4EEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  %30 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %31 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %30, i32 0, i32 1
  %32 = load i32* %31, align 4
  %33 = icmp sle i32 %32, 256
  br i1 %33, label %34, label %40

; <label>:34                                      ; preds = %29
  %35 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %36 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %35, i32 0, i32 2
  %37 = load i32* %36, align 4
  %38 = icmp sle i32 %37, 256
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %34
  br label %42

; <label>:40                                      ; preds = %34, %29
  call void @__assert_fail(i8* getelementptr inbounds ([108 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8]* @.str1, i32 0, i32 0), i32 148, i8* getelementptr inbounds ([204 x i8]* @__PRETTY_FUNCTION__._ZL115p_ZN2xf9convertToILi0ELi2ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE7ap_uintILi4EEi_1R19xf_Mat_0_256_256_1_R19xf_Mat_2_256_256_1_7ap_uintILi4EEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %42

; <label>:42                                      ; preds = %41, %39
  %43 = bitcast %class.ap_uint.2* %4 to i8*
  %44 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 1, i32 1, i1 false)
  %45 = getelementptr %class.ap_uint.2* %4, i32 0, i32 0
  %46 = bitcast [1 x i8]* %45 to i8*
  %47 = load i8* %46, align 1
  %48 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %47, i32 0)
  br i1 %48, label %112, label %49

; <label>:49                                      ; preds = %42
  %50 = bitcast %class.ap_uint.2* %5 to i8*
  %51 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 1, i32 1, i1 false)
  %52 = getelementptr %class.ap_uint.2* %5, i32 0, i32 0
  %53 = bitcast [1 x i8]* %52 to i8*
  %54 = load i8* %53, align 1
  %55 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %54, i32 1)
  br i1 %55, label %112, label %56

; <label>:56                                      ; preds = %49
  %57 = bitcast %class.ap_uint.2* %6 to i8*
  %58 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 1, i32 1, i1 false)
  %59 = getelementptr %class.ap_uint.2* %6, i32 0, i32 0
  %60 = bitcast [1 x i8]* %59 to i8*
  %61 = load i8* %60, align 1
  %62 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %61, i32 2)
  br i1 %62, label %112, label %63

; <label>:63                                      ; preds = %56
  %64 = bitcast %class.ap_uint.2* %7 to i8*
  %65 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 1, i32 1, i1 false)
  %66 = getelementptr %class.ap_uint.2* %7, i32 0, i32 0
  %67 = bitcast [1 x i8]* %66 to i8*
  %68 = load i8* %67, align 1
  %69 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %68, i32 4)
  br i1 %69, label %112, label %70

; <label>:70                                      ; preds = %63
  %71 = bitcast %class.ap_uint.2* %8 to i8*
  %72 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 1, i32 1, i1 false)
  %73 = getelementptr %class.ap_uint.2* %8, i32 0, i32 0
  %74 = bitcast [1 x i8]* %73 to i8*
  %75 = load i8* %74, align 1
  %76 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %75, i32 3)
  br i1 %76, label %112, label %77

; <label>:77                                      ; preds = %70
  %78 = bitcast %class.ap_uint.2* %9 to i8*
  %79 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 1, i32 1, i1 false)
  %80 = getelementptr %class.ap_uint.2* %9, i32 0, i32 0
  %81 = bitcast [1 x i8]* %80 to i8*
  %82 = load i8* %81, align 1
  %83 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %82, i32 5)
  br i1 %83, label %112, label %84

; <label>:84                                      ; preds = %77
  %85 = bitcast %class.ap_uint.2* %10 to i8*
  %86 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 1, i32 1, i1 false)
  %87 = getelementptr %class.ap_uint.2* %10, i32 0, i32 0
  %88 = bitcast [1 x i8]* %87 to i8*
  %89 = load i8* %88, align 1
  %90 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %89, i32 6)
  br i1 %90, label %112, label %91

; <label>:91                                      ; preds = %84
  %92 = bitcast %class.ap_uint.2* %11 to i8*
  %93 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 1, i32 1, i1 false)
  %94 = getelementptr %class.ap_uint.2* %11, i32 0, i32 0
  %95 = bitcast [1 x i8]* %94 to i8*
  %96 = load i8* %95, align 1
  %97 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %96, i32 7)
  br i1 %97, label %112, label %98

; <label>:98                                      ; preds = %91
  %99 = bitcast %class.ap_uint.2* %12 to i8*
  %100 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* %100, i64 1, i32 1, i1 false)
  %101 = getelementptr %class.ap_uint.2* %12, i32 0, i32 0
  %102 = bitcast [1 x i8]* %101 to i8*
  %103 = load i8* %102, align 1
  %104 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %103, i32 8)
  br i1 %104, label %112, label %105

; <label>:105                                     ; preds = %98
  %106 = bitcast %class.ap_uint.2* %13 to i8*
  %107 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 1, i32 1, i1 false)
  %108 = getelementptr %class.ap_uint.2* %13, i32 0, i32 0
  %109 = bitcast [1 x i8]* %108 to i8*
  %110 = load i8* %109, align 1
  %111 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %110, i32 9)
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %105, %98, %91, %84, %77, %70, %63, %56, %49, %42
  br label %115

; <label>:113                                     ; preds = %105
  call void @__assert_fail(i8* getelementptr inbounds ([474 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8]* @.str1, i32 0, i32 0), i32 155, i8* getelementptr inbounds ([204 x i8]* @__PRETTY_FUNCTION__._ZL115p_ZN2xf9convertToILi0ELi2ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE7ap_uintILi4EEi_1R19xf_Mat_0_256_256_1_R19xf_Mat_2_256_256_1_7ap_uintILi4EEi, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %115

; <label>:115                                     ; preds = %114, %112
  %116 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %117 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %116, i32 0, i32 2
  %118 = load i32* %117, align 4
  %119 = ashr i32 %118, 0
  %120 = trunc i32 %119 to i16
  store i16 %120, i16* %width, align 2
  %121 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %122 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %121, i32 0, i32 1
  %123 = load i32* %122, align 4
  %124 = trunc i32 %123 to i16
  store i16 %124, i16* %height, align 2
  %125 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %126 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %127 = bitcast %class.ap_uint.2* %14 to i8*
  %128 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %128, i64 1, i32 1, i1 false)
  %129 = load i32* %3, align 4
  %130 = load i16* %height, align 2
  %131 = load i16* %width, align 2
  %132 = getelementptr %class.ap_uint.2* %14, i32 0, i32 0
  %133 = bitcast [1 x i8]* %132 to i8*
  %134 = load i8* %133, align 1
  call void @_ZL154p_ZN2xf23xfConvertBitDepthKernelILi0ELi2ELi256ELi256ELi0ELi3ELi1ELi5ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE7ap_uintILi4EEitt_1R19xf_Mat_0_256_256_1_R19xf_Mat_2_256_256_1_7ap_uintILi4EEitt(%struct.xf_Mat_0_256_256_1_* %125, %struct.xf_Mat_2_256_256_1_* %126, i8 %134, i32 %129, i16 zeroext %130, i16 zeroext %131)
  ret void
}

declare void @_ZN7ap_uintILi4EEC1Ei(%class.ap_uint.2*, i32)

define internal void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_2_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_2_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %struct.xf_Mat_2_256_256_1_* %srcMat, %struct.xf_Mat_2_256_256_1_** %1, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %2, align 8
  %3 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %4 = load %class.ap_uint** %2, align 8
  call void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EEP7ap_uintILi256EE_1P14xf_accel_utilsR19xf_Mat_2_256_256_1_P7ap_uintILi256EE(%struct.xf_accel_utils* %au, %struct.xf_Mat_2_256_256_1_* %3, %class.ap_uint* %4)
  ret void
}

define internal void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EEP7ap_uintILi256EE_1P14xf_accel_utilsR19xf_Mat_2_256_256_1_P7ap_uintILi256EE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_2_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %struct.xf_Mat_2_256_256_1_* %srcMat, %struct.xf_Mat_2_256_256_1_** %2, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %3, align 8
  store i32 16, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  call void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi2ELi256ELi256ELi1ELi65536EEER3MatILi2ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1P14xf_accel_utilsR19xf_Mat_2_256_256_1_RN3hls6streamI7ap_uintILi256EEEE(%struct.xf_accel_utils* %10, %struct.xf_Mat_2_256_256_1_* %11, %"class.hls::stream"* %strm)
  %12 = load %struct.xf_accel_utils** %1, align 8
  %13 = load %class.ap_uint** %3, align 8
  %14 = load i32* %rows, align 4
  %15 = load i32* %cols, align 4
  call void @_ZL123p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi16ELi4096EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEEPS4_ii(%struct.xf_accel_utils* %12, %"class.hls::stream"* %strm, %class.ap_uint* %13, i32 %14, i32 %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"*)

define internal void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi2ELi256ELi256ELi1ELi65536EEER3MatILi2ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1P14xf_accel_utilsR19xf_Mat_2_256_256_1_RN3hls6streamI7ap_uintILi256EEEE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_2_256_256_1_* %srcMat, %"class.hls::stream"* %dstStrm) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
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
  store %struct.xf_Mat_2_256_256_1_* %srcMat, %struct.xf_Mat_2_256_256_1_** %2, align 8
  store %"class.hls::stream"* %dstStrm, %"class.hls::stream"** %3, align 8
  %5 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %6 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  store i32 %7, i32* %rows, align 4
  %8 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %8, i32 0, i32 2
  %10 = load i32* %9, align 4
  store i32 %10, i32* %cols, align 4
  %11 = load i32* %rows, align 4
  %12 = load i32* %cols, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sdiv i32 %13, 1
  store i32 %14, i32* %loop_count, align 4
  store i32 256, i32* %bits_to_add, align 4
  store i32 16, i32* %N_size, align 4
  call void @_ZN7ap_uintILi256EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.1* %in)
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
  %21 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %22 = load i32* %i, align 4
  %23 = call i16 @_ZL36p_ZN2xf16Mat_2_256_256_1_4readIEEi_1P19xf_Mat_2_256_256_1_i(%struct.xf_Mat_2_256_256_1_* %21, i32 %22)
  %24 = getelementptr %class.ap_uint.1* %4, i32 0, i32 0
  %25 = bitcast [2 x i8]* %24 to i16*
  store i16 %23, i16* %25, align 1
  %26 = call %class.ap_uint.1* @_ZN7ap_uintILi16EEaSERKS0_(%class.ap_uint.1* %in, %class.ap_uint.1* %4)
  %27 = load i32* %bits_to_add, align 4
  %28 = icmp sle i32 %27, 16
  br i1 %28, label %29, label %52

; <label>:29                                      ; preds = %20
  %30 = load i32* %bits_to_add, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.1* %in, i32 %31, i32 0)
  %33 = load i64* %32
  %34 = load i32* %bits_to_add, align 4
  %35 = sub nsw i32 256, %34
  %36 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 255, i32 %35)
  store i64 %33, i64* %36
  %37 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"* %37, %class.ap_uint* %r)
  %38 = load i32* %bits_to_add, align 4
  %39 = icmp ne i32 %38, 16
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %29
  %41 = load i32* %bits_to_add, align 4
  %42 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.1* %in, i32 15, i32 %41)
  %43 = load i64* %42
  %44 = load i32* %bits_to_add, align 4
  %45 = sub nsw i32 16, %44
  %46 = sub nsw i32 %45, 1
  %47 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %46, i32 0)
  store i64 %43, i64* %47
  br label %48

; <label>:48                                      ; preds = %40, %29
  %49 = load i32* %bits_to_add, align 4
  %50 = sub nsw i32 16, %49
  %51 = sub nsw i32 256, %50
  store i32 %51, i32* %bits_to_add, align 4
  br label %63

; <label>:52                                      ; preds = %20
  %53 = call i64 @_ZNK7ap_uintILi16EEcvmEv(%class.ap_uint.1* %in)
  %54 = load i32* %bits_to_add, align 4
  %55 = sub nsw i32 256, %54
  %56 = add nsw i32 %55, 16
  %57 = sub nsw i32 %56, 1
  %58 = load i32* %bits_to_add, align 4
  %59 = sub nsw i32 256, %58
  %60 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %57, i32 %59)
  store i64 %53, i64* %60
  %61 = load i32* %bits_to_add, align 4
  %62 = sub nsw i32 %61, 16
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

define internal void @_ZL123p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi16ELi4096EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEEPS4_ii(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %class.ap_uint* %dstPtr, i32 %rows, i32 %cols) uwtable {
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
  store i32 16, i32* %pixel_width, align 4
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

declare void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.1*)

declare %class.ap_uint.1* @_ZN7ap_uintILi16EEaSERKS0_(%class.ap_uint.1*, %class.ap_uint.1*)

define internal i16 @_ZL36p_ZN2xf16Mat_2_256_256_1_4readIEEi_1P19xf_Mat_2_256_256_1_i(%struct.xf_Mat_2_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.1, align 1
  %2 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_2_256_256_1_* %this_, %struct.xf_Mat_2_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %6, i32 0, i32 4
  %8 = getelementptr inbounds [65536 x %class.ap_uint.1]* %7, i32 0, i64 %5
  %9 = bitcast %class.ap_uint.1* %1 to i8*
  %10 = bitcast %class.ap_uint.1* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 2, i32 1, i1 false)
  %11 = getelementptr %class.ap_uint.1* %1, i32 0, i32 0
  %12 = bitcast [2 x i8]* %11 to i16*
  %13 = load i16* %12, align 1
  ret i16 %13
}

declare i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.1*, i32, i32)

declare i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

declare i64 @_ZNK7ap_uintILi16EEcvmEv(%class.ap_uint.1*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8, i32)

define internal void @_ZL154p_ZN2xf23xfConvertBitDepthKernelILi0ELi2ELi256ELi256ELi0ELi3ELi1ELi5ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE7ap_uintILi4EEitt_1R19xf_Mat_0_256_256_1_R19xf_Mat_2_256_256_1_7ap_uintILi4EEitt(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_2_256_256_1_* %_dst_mat, i8 %_convert_type.coerce, i32 %_shift, i16 zeroext %_height, i16 zeroext %_width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %_convert_type = alloca %class.ap_uint.2, align 1
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %buf = alloca %class.ap_uint.0, align 1
  %result = alloca %class.ap_uint.1, align 1
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %col = alloca %class.ap_uint.3, align 1
  %row = alloca %class.ap_uint.3, align 1
  %j = alloca %class.ap_uint.4, align 1
  %k = alloca %class.ap_uint.4, align 1
  %i = alloca %class.ap_uint.4, align 1
  %out_step = alloca %class.ap_uint.4, align 1
  %in_step = alloca %class.ap_uint.4, align 1
  %6 = alloca %class.ap_uint.3, align 1
  %7 = alloca %class.ap_uint.3, align 1
  %8 = alloca %class.ap_uint.0, align 1
  %9 = alloca %class.ap_uint.3, align 1
  %10 = alloca %class.ap_uint.3, align 1
  %11 = alloca %class.ap_int, align 1
  %12 = alloca %class.ap_uint.4, align 1
  %val = alloca %class.ap_uint.0, align 1
  %13 = alloca %class.ap_uint.4, align 1
  %14 = alloca %class.ap_uint.4, align 1
  %15 = alloca %class.ap_int.5, align 1
  %16 = alloca i24
  %17 = alloca %class.ap_uint.2, align 1
  %18 = alloca %class.ap_uint.2, align 1
  %19 = alloca %class.ap_uint.2, align 1
  %20 = alloca %class.ap_uint.2, align 1
  %21 = alloca %class.ap_uint.2, align 1
  %22 = alloca %class.ap_uint.0, align 1
  %23 = alloca %class.ap_uint.0, align 1
  %24 = alloca %class.ap_uint.0, align 1
  %25 = alloca %class.ap_uint.0, align 1
  %26 = alloca %class.ap_int.6, align 1
  %27 = alloca %class.ap_uint.4, align 1
  %28 = alloca %class.ap_uint.4, align 1
  %29 = alloca %class.ap_int.5, align 1
  %30 = alloca i24
  %31 = alloca %class.ap_int.6, align 1
  %32 = alloca %class.ap_int.6, align 1
  %33 = alloca %class.ap_uint.4, align 1
  %34 = alloca %class.ap_uint.4, align 1
  %35 = alloca %class.ap_int.5, align 1
  %36 = alloca i24
  %37 = alloca %class.ap_int.6, align 1
  %38 = alloca %class.ap_int.6, align 1
  %39 = alloca %class.ap_uint.4, align 1
  %40 = alloca %class.ap_uint.4, align 1
  %41 = alloca %class.ap_int.5, align 1
  %42 = alloca i24
  %43 = alloca %class.ap_int.6, align 1
  %44 = alloca %class.ap_int.6, align 1
  %45 = alloca %class.ap_uint.4, align 1
  %46 = alloca %class.ap_uint.4, align 1
  %47 = alloca %class.ap_int.5, align 1
  %48 = alloca i24
  %49 = alloca %class.ap_uint.4, align 1
  %50 = alloca %class.ap_uint.4, align 1
  %51 = alloca %class.ap_uint.4, align 1
  %52 = alloca %class.ap_uint.3, align 1
  %53 = alloca %class.ap_uint.3, align 1
  %54 = alloca %class.ap_int, align 1
  %55 = alloca %class.ap_uint.1, align 1
  %56 = alloca %class.ap_uint.3, align 1
  %57 = alloca %class.ap_uint.3, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_2_256_256_1_* %_dst_mat, %struct.xf_Mat_2_256_256_1_** %2, align 8
  %58 = getelementptr %class.ap_uint.2* %_convert_type, i32 0, i32 0
  %59 = bitcast [1 x i8]* %58 to i8*
  store i8 %_convert_type.coerce, i8* %59, align 1
  store i32 %_shift, i32* %3, align 4
  store i16 %_height, i16* %4, align 2
  store i16 %_width, i16* %5, align 2
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %buf)
  call void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.1* %result)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3* %col)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3* %row)
  call void @_ZN7ap_uintILi10EEC1Ev(%class.ap_uint.4* %j)
  call void @_ZN7ap_uintILi10EEC1Ev(%class.ap_uint.4* %k)
  call void @_ZN7ap_uintILi10EEC1Ev(%class.ap_uint.4* %i)
  call void @_ZN7ap_uintILi10EEC1Ev(%class.ap_uint.4* %out_step)
  call void @_ZN7ap_uintILi10EEC1Ev(%class.ap_uint.4* %in_step)
  store i32 -32768, i32* %min, align 4
  store i32 32767, i32* %max, align 4
  br label %60

; <label>:60                                      ; preds = %0
  %61 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3* %row, i32 0)
  br label %62

; <label>:62                                      ; preds = %385, %60
  %63 = bitcast %class.ap_uint.3* %6 to i8*
  %64 = bitcast %class.ap_uint.3* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 2, i32 1, i1 false)
  %65 = load i16* %4, align 2
  %66 = getelementptr %class.ap_uint.3* %6, i32 0, i32 0
  %67 = bitcast [2 x i8]* %66 to i16*
  %68 = load i16* %67, align 1
  %69 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %68, i16 zeroext %65)
  br i1 %69, label %70, label %389

; <label>:70                                      ; preds = %62
  br label %71

; <label>:71                                      ; preds = %70
  %72 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3* %col, i32 0)
  br label %73

; <label>:73                                      ; preds = %380, %71
  %74 = bitcast %class.ap_uint.3* %7 to i8*
  %75 = bitcast %class.ap_uint.3* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 2, i32 1, i1 false)
  %76 = load i16* %5, align 2
  %77 = getelementptr %class.ap_uint.3* %7, i32 0, i32 0
  %78 = bitcast [2 x i8]* %77 to i16*
  %79 = load i16* %78, align 1
  %80 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %79, i16 zeroext %76)
  br i1 %80, label %81, label %384

; <label>:81                                      ; preds = %73
  %82 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %83 = load i16* %5, align 2
  %84 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.3* %row, i16 zeroext %83)
  %85 = getelementptr %class.ap_uint.3* %9, i32 0, i32 0
  %86 = bitcast [2 x i8]* %85 to i16*
  store i16 %84, i16* %86, align 1
  %87 = bitcast %class.ap_uint.3* %10 to i8*
  %88 = bitcast %class.ap_uint.3* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 2, i32 1, i1 false)
  %89 = getelementptr %class.ap_uint.3* %9, i32 0, i32 0
  %90 = bitcast [2 x i8]* %89 to i16*
  %91 = load i16* %90, align 1
  %92 = getelementptr %class.ap_uint.3* %10, i32 0, i32 0
  %93 = bitcast [2 x i8]* %92 to i16*
  %94 = load i16* %93, align 1
  %95 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %91, i16 %94)
  %96 = getelementptr %class.ap_int* %11, i32 0, i32 0
  %97 = bitcast [4 x i8]* %96 to i32*
  store i32 %95, i32* %97, align 1
  %98 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %11)
  %99 = trunc i64 %98 to i32
  %100 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %82, i32 %99)
  %101 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %102 = bitcast [1 x i8]* %101 to i8*
  store i8 %100, i8* %102, align 1
  %103 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %buf, %class.ap_uint.0* %8)
  %104 = call %class.ap_uint.4* @_ZN7ap_uintILi10EEaSEi(%class.ap_uint.4* %out_step, i32 16)
  %105 = call %class.ap_uint.4* @_ZN7ap_uintILi10EEaSEi(%class.ap_uint.4* %in_step, i32 8)
  %106 = call i64* @_ZN7ap_uintILi10EEcmILi10EEERmRS_IXT_EE(%class.ap_uint.4* %104, %class.ap_uint.4* %105)
  %107 = call %class.ap_uint.4* @_ZN7ap_uintILi10EEaSEi(%class.ap_uint.4* %k, i32 0)
  %108 = call %class.ap_uint.4* @_ZN7ap_uintILi10EEaSEi(%class.ap_uint.4* %i, i32 0)
  %109 = call i64* @_ZN7ap_uintILi10EEcmILi10EEERmRS_IXT_EE(%class.ap_uint.4* %107, %class.ap_uint.4* %108)
  br label %110

; <label>:110                                     ; preds = %81
  %111 = call %class.ap_uint.4* @_ZN7ap_uintILi10EEaSEi(%class.ap_uint.4* %j, i32 0)
  br label %112

; <label>:112                                     ; preds = %352, %110
  %113 = bitcast %class.ap_uint.4* %12 to i8*
  %114 = bitcast %class.ap_uint.4* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %114, i64 2, i32 1, i1 false)
  %115 = getelementptr %class.ap_uint.4* %12, i32 0, i32 0
  %116 = bitcast [2 x i8]* %115 to i16*
  %117 = load i16* %116, align 1
  %118 = call zeroext i1 @_ZleILi10EEb7ap_uintIXT_EEi(i16 %117, i32 0)
  br i1 %118, label %119, label %356

; <label>:119                                     ; preds = %112
  %120 = bitcast %class.ap_uint.4* %13 to i8*
  %121 = bitcast %class.ap_uint.4* %k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 2, i32 1, i1 false)
  %122 = call i16 @_ZmiILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.4* %in_step, i32 1)
  %123 = getelementptr %class.ap_uint.4* %14, i32 0, i32 0
  %124 = bitcast [2 x i8]* %123 to i16*
  store i16 %122, i16* %124, align 1
  %125 = getelementptr %class.ap_uint.4* %13, i32 0, i32 0
  %126 = bitcast [2 x i8]* %125 to i16*
  %127 = load i16* %126, align 1
  %128 = getelementptr %class.ap_uint.4* %14, i32 0, i32 0
  %129 = bitcast [2 x i8]* %128 to i16*
  %130 = load i16* %129, align 1
  %131 = call i24 @_ZplILi10ELi10EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %127, i16 %130)
  %132 = getelementptr %class.ap_int.5* %15, i32 0, i32 0
  store i24 %131, i24* %16
  %133 = bitcast i24* %16 to [3 x i8]*
  %134 = load [3 x i8]* %133, align 1
  store [3 x i8] %134, [3 x i8]* %132
  %135 = call i64 @_ZNK6ap_intILi20EEcvlEv(%class.ap_int.5* %15)
  %136 = trunc i64 %135 to i32
  %137 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.4* %k)
  %138 = trunc i64 %137 to i32
  %139 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %buf, i32 %136, i32 %138)
  %140 = load i64* %139
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %val, i64 %140)
  %141 = bitcast %class.ap_uint.2* %17 to i8*
  %142 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 1, i32 1, i1 false)
  %143 = getelementptr %class.ap_uint.2* %17, i32 0, i32 0
  %144 = bitcast [1 x i8]* %143 to i8*
  %145 = load i8* %144, align 1
  %146 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %145, i32 0)
  br i1 %146, label %175, label %147

; <label>:147                                     ; preds = %119
  %148 = bitcast %class.ap_uint.2* %18 to i8*
  %149 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* %149, i64 1, i32 1, i1 false)
  %150 = getelementptr %class.ap_uint.2* %18, i32 0, i32 0
  %151 = bitcast [1 x i8]* %150 to i8*
  %152 = load i8* %151, align 1
  %153 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %152, i32 1)
  br i1 %153, label %175, label %154

; <label>:154                                     ; preds = %147
  %155 = bitcast %class.ap_uint.2* %19 to i8*
  %156 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %155, i8* %156, i64 1, i32 1, i1 false)
  %157 = getelementptr %class.ap_uint.2* %19, i32 0, i32 0
  %158 = bitcast [1 x i8]* %157 to i8*
  %159 = load i8* %158, align 1
  %160 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %159, i32 2)
  br i1 %160, label %175, label %161

; <label>:161                                     ; preds = %154
  %162 = bitcast %class.ap_uint.2* %20 to i8*
  %163 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %163, i64 1, i32 1, i1 false)
  %164 = getelementptr %class.ap_uint.2* %20, i32 0, i32 0
  %165 = bitcast [1 x i8]* %164 to i8*
  %166 = load i8* %165, align 1
  %167 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %166, i32 3)
  br i1 %167, label %175, label %168

; <label>:168                                     ; preds = %161
  %169 = bitcast %class.ap_uint.2* %21 to i8*
  %170 = bitcast %class.ap_uint.2* %_convert_type to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* %170, i64 1, i32 1, i1 false)
  %171 = getelementptr %class.ap_uint.2* %21, i32 0, i32 0
  %172 = bitcast [1 x i8]* %171 to i8*
  %173 = load i8* %172, align 1
  %174 = call zeroext i1 @_ZeqILi4EEb7ap_uintIXT_EEi(i8 %173, i32 4)
  br i1 %174, label %175, label %229

; <label>:175                                     ; preds = %168, %161, %154, %147, %119
  %176 = bitcast %class.ap_uint.0* %23 to i8*
  %177 = bitcast %class.ap_uint.0* %val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %176, i8* %177, i64 1, i32 1, i1 false)
  %178 = load i32* %3, align 4
  %179 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %180 = bitcast [1 x i8]* %179 to i8*
  %181 = load i8* %180, align 1
  %182 = call i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8 %181, i32 %178)
  %183 = getelementptr %class.ap_uint.0* %22, i32 0, i32 0
  %184 = bitcast [1 x i8]* %183 to i8*
  store i8 %182, i8* %184, align 1
  %185 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val, %class.ap_uint.0* %22)
  %186 = bitcast %class.ap_uint.0* %24 to i8*
  %187 = bitcast %class.ap_uint.0* %val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %186, i8* %187, i64 1, i32 1, i1 false)
  %188 = load i32* %min, align 4
  %189 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %190 = bitcast [1 x i8]* %189 to i8*
  %191 = load i8* %190, align 1
  %192 = call zeroext i1 @_ZltILi8EEb7ap_uintIXT_EEi(i8 %191, i32 %188)
  br i1 %192, label %193, label %196

; <label>:193                                     ; preds = %175
  %194 = load i32* %min, align 4
  %195 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %val, i32 %194)
  br label %196

; <label>:196                                     ; preds = %193, %175
  %197 = bitcast %class.ap_uint.0* %25 to i8*
  %198 = bitcast %class.ap_uint.0* %val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %197, i8* %198, i64 1, i32 1, i1 false)
  %199 = load i32* %max, align 4
  %200 = getelementptr %class.ap_uint.0* %25, i32 0, i32 0
  %201 = bitcast [1 x i8]* %200 to i8*
  %202 = load i8* %201, align 1
  %203 = call zeroext i1 @_ZgtILi8EEb7ap_uintIXT_EEi(i8 %202, i32 %199)
  br i1 %203, label %204, label %207

; <label>:204                                     ; preds = %196
  %205 = load i32* %max, align 4
  %206 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %val, i32 %205)
  br label %207

; <label>:207                                     ; preds = %204, %196
  call void @_ZN6ap_intILi16EEC1ILi8EEERK7ap_uintIXT_EE(%class.ap_int.6* %26, %class.ap_uint.0* %val)
  %208 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.6* %26)
  %209 = bitcast %class.ap_uint.4* %27 to i8*
  %210 = bitcast %class.ap_uint.4* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %209, i8* %210, i64 2, i32 1, i1 false)
  %211 = call i16 @_ZmiILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.4* %out_step, i32 1)
  %212 = getelementptr %class.ap_uint.4* %28, i32 0, i32 0
  %213 = bitcast [2 x i8]* %212 to i16*
  store i16 %211, i16* %213, align 1
  %214 = getelementptr %class.ap_uint.4* %27, i32 0, i32 0
  %215 = bitcast [2 x i8]* %214 to i16*
  %216 = load i16* %215, align 1
  %217 = getelementptr %class.ap_uint.4* %28, i32 0, i32 0
  %218 = bitcast [2 x i8]* %217 to i16*
  %219 = load i16* %218, align 1
  %220 = call i24 @_ZplILi10ELi10EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %216, i16 %219)
  %221 = getelementptr %class.ap_int.5* %29, i32 0, i32 0
  store i24 %220, i24* %30
  %222 = bitcast i24* %30 to [3 x i8]*
  %223 = load [3 x i8]* %222, align 1
  store [3 x i8] %223, [3 x i8]* %221
  %224 = call i64 @_ZNK6ap_intILi20EEcvlEv(%class.ap_int.5* %29)
  %225 = trunc i64 %224 to i32
  %226 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.4* %i)
  %227 = trunc i64 %226 to i32
  %228 = call i64* @_ZN7ap_uintILi16EEclEii(%class.ap_uint.1* %result, i32 %225, i32 %227)
  store i64 %208, i64* %228
  br label %332

; <label>:229                                     ; preds = %168
  call void @_ZN6ap_intILi16EEC1ILi8EEERK7ap_uintIXT_EE(%class.ap_int.6* %32, %class.ap_uint.0* %val)
  %230 = load i32* %3, align 4
  %231 = getelementptr %class.ap_int.6* %32, i32 0, i32 0
  %232 = bitcast [2 x i8]* %231 to i16*
  %233 = load i16* %232, align 1
  %234 = call i16 @_ZlsILi16EE6ap_intIXT_EES1_i(i16 %233, i32 %230)
  %235 = getelementptr %class.ap_int.6* %31, i32 0, i32 0
  %236 = bitcast [2 x i8]* %235 to i16*
  store i16 %234, i16* %236, align 1
  %237 = load i32* %max, align 4
  %238 = getelementptr %class.ap_int.6* %31, i32 0, i32 0
  %239 = bitcast [2 x i8]* %238 to i16*
  %240 = load i16* %239, align 1
  %241 = call zeroext i1 @_ZgtILi16EEb6ap_intIXT_EEi(i16 %240, i32 %237)
  br i1 %241, label %242, label %265

; <label>:242                                     ; preds = %229
  %243 = load i32* %max, align 4
  %244 = sext i32 %243 to i64
  %245 = bitcast %class.ap_uint.4* %33 to i8*
  %246 = bitcast %class.ap_uint.4* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %245, i8* %246, i64 2, i32 1, i1 false)
  %247 = call i16 @_ZmiILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.4* %out_step, i32 1)
  %248 = getelementptr %class.ap_uint.4* %34, i32 0, i32 0
  %249 = bitcast [2 x i8]* %248 to i16*
  store i16 %247, i16* %249, align 1
  %250 = getelementptr %class.ap_uint.4* %33, i32 0, i32 0
  %251 = bitcast [2 x i8]* %250 to i16*
  %252 = load i16* %251, align 1
  %253 = getelementptr %class.ap_uint.4* %34, i32 0, i32 0
  %254 = bitcast [2 x i8]* %253 to i16*
  %255 = load i16* %254, align 1
  %256 = call i24 @_ZplILi10ELi10EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %252, i16 %255)
  %257 = getelementptr %class.ap_int.5* %35, i32 0, i32 0
  store i24 %256, i24* %36
  %258 = bitcast i24* %36 to [3 x i8]*
  %259 = load [3 x i8]* %258, align 1
  store [3 x i8] %259, [3 x i8]* %257
  %260 = call i64 @_ZNK6ap_intILi20EEcvlEv(%class.ap_int.5* %35)
  %261 = trunc i64 %260 to i32
  %262 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.4* %i)
  %263 = trunc i64 %262 to i32
  %264 = call i64* @_ZN7ap_uintILi16EEclEii(%class.ap_uint.1* %result, i32 %261, i32 %263)
  store i64 %244, i64* %264
  br label %331

; <label>:265                                     ; preds = %229
  call void @_ZN6ap_intILi16EEC1ILi8EEERK7ap_uintIXT_EE(%class.ap_int.6* %38, %class.ap_uint.0* %val)
  %266 = load i32* %3, align 4
  %267 = getelementptr %class.ap_int.6* %38, i32 0, i32 0
  %268 = bitcast [2 x i8]* %267 to i16*
  %269 = load i16* %268, align 1
  %270 = call i16 @_ZlsILi16EE6ap_intIXT_EES1_i(i16 %269, i32 %266)
  %271 = getelementptr %class.ap_int.6* %37, i32 0, i32 0
  %272 = bitcast [2 x i8]* %271 to i16*
  store i16 %270, i16* %272, align 1
  %273 = load i32* %min, align 4
  %274 = getelementptr %class.ap_int.6* %37, i32 0, i32 0
  %275 = bitcast [2 x i8]* %274 to i16*
  %276 = load i16* %275, align 1
  %277 = call zeroext i1 @_ZltILi16EEb6ap_intIXT_EEi(i16 %276, i32 %273)
  br i1 %277, label %278, label %301

; <label>:278                                     ; preds = %265
  %279 = load i32* %min, align 4
  %280 = sext i32 %279 to i64
  %281 = bitcast %class.ap_uint.4* %39 to i8*
  %282 = bitcast %class.ap_uint.4* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %281, i8* %282, i64 2, i32 1, i1 false)
  %283 = call i16 @_ZmiILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.4* %out_step, i32 1)
  %284 = getelementptr %class.ap_uint.4* %40, i32 0, i32 0
  %285 = bitcast [2 x i8]* %284 to i16*
  store i16 %283, i16* %285, align 1
  %286 = getelementptr %class.ap_uint.4* %39, i32 0, i32 0
  %287 = bitcast [2 x i8]* %286 to i16*
  %288 = load i16* %287, align 1
  %289 = getelementptr %class.ap_uint.4* %40, i32 0, i32 0
  %290 = bitcast [2 x i8]* %289 to i16*
  %291 = load i16* %290, align 1
  %292 = call i24 @_ZplILi10ELi10EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %288, i16 %291)
  %293 = getelementptr %class.ap_int.5* %41, i32 0, i32 0
  store i24 %292, i24* %42
  %294 = bitcast i24* %42 to [3 x i8]*
  %295 = load [3 x i8]* %294, align 1
  store [3 x i8] %295, [3 x i8]* %293
  %296 = call i64 @_ZNK6ap_intILi20EEcvlEv(%class.ap_int.5* %41)
  %297 = trunc i64 %296 to i32
  %298 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.4* %i)
  %299 = trunc i64 %298 to i32
  %300 = call i64* @_ZN7ap_uintILi16EEclEii(%class.ap_uint.1* %result, i32 %297, i32 %299)
  store i64 %280, i64* %300
  br label %330

; <label>:301                                     ; preds = %265
  call void @_ZN6ap_intILi16EEC1ILi8EEERK7ap_uintIXT_EE(%class.ap_int.6* %43, %class.ap_uint.0* %val)
  %302 = load i32* %3, align 4
  %303 = getelementptr %class.ap_int.6* %43, i32 0, i32 0
  %304 = bitcast [2 x i8]* %303 to i16*
  %305 = load i16* %304, align 1
  %306 = call i16 @_ZlsILi16EE6ap_intIXT_EES1_i(i16 %305, i32 %302)
  %307 = getelementptr %class.ap_int.6* %44, i32 0, i32 0
  %308 = bitcast [2 x i8]* %307 to i16*
  store i16 %306, i16* %308, align 1
  %309 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.6* %44)
  %310 = bitcast %class.ap_uint.4* %45 to i8*
  %311 = bitcast %class.ap_uint.4* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %310, i8* %311, i64 2, i32 1, i1 false)
  %312 = call i16 @_ZmiILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.4* %out_step, i32 1)
  %313 = getelementptr %class.ap_uint.4* %46, i32 0, i32 0
  %314 = bitcast [2 x i8]* %313 to i16*
  store i16 %312, i16* %314, align 1
  %315 = getelementptr %class.ap_uint.4* %45, i32 0, i32 0
  %316 = bitcast [2 x i8]* %315 to i16*
  %317 = load i16* %316, align 1
  %318 = getelementptr %class.ap_uint.4* %46, i32 0, i32 0
  %319 = bitcast [2 x i8]* %318 to i16*
  %320 = load i16* %319, align 1
  %321 = call i24 @_ZplILi10ELi10EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %317, i16 %320)
  %322 = getelementptr %class.ap_int.5* %47, i32 0, i32 0
  store i24 %321, i24* %48
  %323 = bitcast i24* %48 to [3 x i8]*
  %324 = load [3 x i8]* %323, align 1
  store [3 x i8] %324, [3 x i8]* %322
  %325 = call i64 @_ZNK6ap_intILi20EEcvlEv(%class.ap_int.5* %47)
  %326 = trunc i64 %325 to i32
  %327 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.4* %i)
  %328 = trunc i64 %327 to i32
  %329 = call i64* @_ZN7ap_uintILi16EEclEii(%class.ap_uint.1* %result, i32 %326, i32 %328)
  store i64 %309, i64* %329
  br label %330

; <label>:330                                     ; preds = %301, %278
  br label %331

; <label>:331                                     ; preds = %330, %242
  br label %332

; <label>:332                                     ; preds = %331, %207
  %333 = bitcast %class.ap_uint.4* %49 to i8*
  %334 = bitcast %class.ap_uint.4* %in_step to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %333, i8* %334, i64 2, i32 1, i1 false)
  %335 = getelementptr %class.ap_uint.4* %49, i32 0, i32 0
  %336 = bitcast [2 x i8]* %335 to i16*
  %337 = load i16* %336, align 1
  %338 = call %class.ap_uint.4* @_ZpLILi10ELi10EER7ap_uintIXT_EES2_S0_IXT0_EE(%class.ap_uint.4* %k, i16 %337)
  %339 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.4* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %350

; <label>:341                                     ; preds = %332
  %342 = bitcast %class.ap_uint.4* %50 to i8*
  %343 = bitcast %class.ap_uint.4* %out_step to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %342, i8* %343, i64 2, i32 1, i1 false)
  %344 = getelementptr %class.ap_uint.4* %50, i32 0, i32 0
  %345 = bitcast [2 x i8]* %344 to i16*
  %346 = load i16* %345, align 1
  %347 = call %class.ap_uint.4* @_ZpLILi10ELi10EER7ap_uintIXT_EES2_S0_IXT0_EE(%class.ap_uint.4* %i, i16 %346)
  %348 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.4* %347)
  %349 = icmp ne i64 %348, 0
  br label %350

; <label>:350                                     ; preds = %341, %332
  %351 = phi i1 [ false, %332 ], [ %349, %341 ]
  br label %352

; <label>:352                                     ; preds = %350
  %353 = call i16 @_ZN7ap_uintILi10EEppEv(%class.ap_uint.4* %j)
  %354 = getelementptr %class.ap_uint.4* %51, i32 0, i32 0
  %355 = bitcast [2 x i8]* %354 to i16*
  store i16 %353, i16* %355, align 1
  br label %112

; <label>:356                                     ; preds = %112
  %357 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %358 = load i16* %5, align 2
  %359 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.3* %row, i16 zeroext %358)
  %360 = getelementptr %class.ap_uint.3* %52, i32 0, i32 0
  %361 = bitcast [2 x i8]* %360 to i16*
  store i16 %359, i16* %361, align 1
  %362 = bitcast %class.ap_uint.3* %53 to i8*
  %363 = bitcast %class.ap_uint.3* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %362, i8* %363, i64 2, i32 1, i1 false)
  %364 = getelementptr %class.ap_uint.3* %52, i32 0, i32 0
  %365 = bitcast [2 x i8]* %364 to i16*
  %366 = load i16* %365, align 1
  %367 = getelementptr %class.ap_uint.3* %53, i32 0, i32 0
  %368 = bitcast [2 x i8]* %367 to i16*
  %369 = load i16* %368, align 1
  %370 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %366, i16 %369)
  %371 = getelementptr %class.ap_int* %54, i32 0, i32 0
  %372 = bitcast [4 x i8]* %371 to i32*
  store i32 %370, i32* %372, align 1
  %373 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %54)
  %374 = trunc i64 %373 to i32
  %375 = bitcast %class.ap_uint.1* %55 to i8*
  %376 = bitcast %class.ap_uint.1* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %375, i8* %376, i64 2, i32 1, i1 false)
  %377 = getelementptr %class.ap_uint.1* %55, i32 0, i32 0
  %378 = bitcast [2 x i8]* %377 to i16*
  %379 = load i16* %378, align 1
  call void @_ZL52p_ZN2xf16Mat_2_256_256_1_5writeIEEi7ap_uintILi16EE_1P19xf_Mat_2_256_256_1_i7ap_uintILi16EE(%struct.xf_Mat_2_256_256_1_* %357, i32 %374, i16 %379)
  br label %380

; <label>:380                                     ; preds = %356
  %381 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %col, i32 0)
  %382 = getelementptr %class.ap_uint.3* %56, i32 0, i32 0
  %383 = bitcast [2 x i8]* %382 to i16*
  store i16 %381, i16* %383, align 1
  br label %73

; <label>:384                                     ; preds = %73
  br label %385

; <label>:385                                     ; preds = %384
  %386 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %row, i32 0)
  %387 = getelementptr %class.ap_uint.3* %57, i32 0, i32 0
  %388 = bitcast [2 x i8]* %387 to i16*
  store i16 %386, i16* %388, align 1
  br label %62

; <label>:389                                     ; preds = %62
  ret void
}

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0*)

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3*)

declare void @_ZN7ap_uintILi10EEC1Ev(%class.ap_uint.4*)

declare %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

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

declare i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.3*, i16 zeroext)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int*)

declare %class.ap_uint.4* @_ZN7ap_uintILi10EEaSEi(%class.ap_uint.4*, i32)

declare i64* @_ZN7ap_uintILi10EEcmILi10EEERmRS_IXT_EE(%class.ap_uint.4*, %class.ap_uint.4*)

declare zeroext i1 @_ZleILi10EEb7ap_uintIXT_EEi(i16, i32)

declare void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0*, i64)

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0*, i32, i32)

declare i24 @_ZplILi10ELi10EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

declare i16 @_ZmiILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.4*, i32)

declare i64 @_ZNK6ap_intILi20EEcvlEv(%class.ap_int.5*)

declare i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.4*)

declare i8 @_ZrsILi8EE7ap_uintIXT_EES1_i(i8, i32)

declare zeroext i1 @_ZltILi8EEb7ap_uintIXT_EEi(i8, i32)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0*, i32)

declare zeroext i1 @_ZgtILi8EEb7ap_uintIXT_EEi(i8, i32)

declare void @_ZN6ap_intILi16EEC1ILi8EEERK7ap_uintIXT_EE(%class.ap_int.6*, %class.ap_uint.0*)

declare i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.6*)

declare i64* @_ZN7ap_uintILi16EEclEii(%class.ap_uint.1*, i32, i32)

declare zeroext i1 @_ZgtILi16EEb6ap_intIXT_EEi(i16, i32)

declare i16 @_ZlsILi16EE6ap_intIXT_EES1_i(i16, i32)

declare zeroext i1 @_ZltILi16EEb6ap_intIXT_EEi(i16, i32)

declare %class.ap_uint.4* @_ZpLILi10ELi10EER7ap_uintIXT_EES2_S0_IXT0_EE(%class.ap_uint.4*, i16)

declare i16 @_ZN7ap_uintILi10EEppEv(%class.ap_uint.4*)

define internal void @_ZL52p_ZN2xf16Mat_2_256_256_1_5writeIEEi7ap_uintILi16EE_1P19xf_Mat_2_256_256_1_i7ap_uintILi16EE(%struct.xf_Mat_2_256_256_1_* %this_, i32 %index, i16 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.1, align 2
  store %struct.xf_Mat_2_256_256_1_* %this_, %struct.xf_Mat_2_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint.1* %val, i32 0, i32 0
  %4 = bitcast [2 x i8]* %3 to i16*
  store i16 %val.coerce, i16* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.1]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint.1* @_ZN7ap_uintILi16EEaSERKS0_(%class.ap_uint.1* %9, %class.ap_uint.1* %val)
  ret void
}

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3*, i32)

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

define internal void @_ZL38p_ZN2xf16Mat_2_256_256_1_4initIEEiib_1P19xf_Mat_2_256_256_1_iib(%struct.xf_Mat_2_256_256_1_* %this_, i32 %_rows, i32 %_cols, i1 zeroext %allocate) nounwind uwtable {
  %1 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.xf_Mat_2_256_256_1_* %this_, %struct.xf_Mat_2_256_256_1_** %1, align 8
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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_2_256_256_1_4initIEEiib_1P19xf_Mat_2_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load i32* %2, align 4
  %22 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32* %3, align 4
  %25 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %26 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32* %2, align 4
  %28 = load i32* %3, align 4
  %29 = ashr i32 %28, 0
  %30 = mul nsw i32 %27, %29
  %31 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %32 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i8* %4, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %20
  br label %36

; <label>:36                                      ; preds = %35, %20
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_2_256_256_1_C2Ev(%struct.xf_Mat_2_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  store %struct.xf_Mat_2_256_256_1_* %this, %struct.xf_Mat_2_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_2_256_256_1_** %1
  %3 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %2, i32 0, i32 4
  %4 = getelementptr inbounds [65536 x %class.ap_uint.1]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.1* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint.1* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.1* %7)
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

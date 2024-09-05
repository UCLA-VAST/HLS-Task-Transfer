; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/histogram_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [8 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%class.ap_uint.1 = type { [2 x i8] }
%class.ap_uint.2 = type { [1 x i8] }
%class.ap_uint.3 = type { [2 x i8] }
%class.ap_int = type { [4 x i8] }
%class.ap_uint.4 = type { [2 x i8] }
%"class.hls::stream" = type { %class.ap_uint }

@.str = private unnamed_addr constant [100 x i8] c"((_src.rows <= ROWS ) && (_src.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"xf_histogram.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL70p_ZN2xf8calcHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPj_1R19xf_Mat_0_256_256_1_Pj = private unnamed_addr constant [122 x i8] c"void p_ZN2xf8calcHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPj_1(struct xf_Mat_0_256_256_1_ &, unsigned int *)\00", align 1
@.str2 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z15histogram_accelP7ap_uintILi64EEPjii(%class.ap_uint* %img_inp, i32* %histogram, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_inp, %class.ap_uint** %1, align 8
  store i32* %histogram, i32** %2, align 8
  store i32 %rows, i32* %3, align 4
  store i32 %cols, i32* %4, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat)
  %5 = load i32* %3, align 4
  %6 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load i32* %4, align 4
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load %class.ap_uint** %1, align 8
  call void @_ZL93p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_0_256_256_1_(%class.ap_uint* %9, %struct.xf_Mat_0_256_256_1_* %in_mat)
  %10 = load i32** %2, align 8
  call void @_ZL70p_ZN2xf8calcHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPj_1R19xf_Mat_0_256_256_1_Pj(%struct.xf_Mat_0_256_256_1_* %in_mat, i32* %10)
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

define internal void @_ZL70p_ZN2xf8calcHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPj_1R19xf_Mat_0_256_256_1_Pj(%struct.xf_Mat_0_256_256_1_* %_src, i32* %histogram) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i32*, align 8
  %hist_array = alloca [1 x [256 x i32]], align 16
  %width = alloca i16, align 2
  %height = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.xf_Mat_0_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i32* %histogram, i32** %2, align 8
  %3 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %4 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %3, i32 0, i32 1
  %5 = load i32* %4, align 4
  %6 = icmp sle i32 %5, 256
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %8, i32 0, i32 2
  %10 = load i32* %9, align 4
  %11 = icmp sle i32 %10, 256
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %7
  br label %15

; <label>:13                                      ; preds = %7, %0
  call void @__assert_fail(i8* getelementptr inbounds ([100 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0), i32 174, i8* getelementptr inbounds ([122 x i8]* @__PRETTY_FUNCTION__._ZL70p_ZN2xf8calcHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPj_1R19xf_Mat_0_256_256_1_Pj, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = bitcast [1 x [256 x i32]]* %hist_array to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 1024, i32 16, i1 false)
  %17 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %18 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %17, i32 0, i32 2
  %19 = load i32* %18, align 4
  %20 = ashr i32 %19, 0
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %width, align 2
  %22 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %22, i32 0, i32 1
  %24 = load i32* %23, align 4
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %height, align 2
  %26 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %27 = getelementptr inbounds [1 x [256 x i32]]* %hist_array, i32 0, i32 0
  call void @_ZL107p_ZN2xf17xFHistogramKernelILi0ELi256ELi256ELi0ELi1ELi1ELi128ELi1EEER3MatILi0ELi256ELi256ELi1EEPA256_jRtRt_1R19xf_Mat_0_256_256_1_PA256_jRtS3_(%struct.xf_Mat_0_256_256_1_* %26, [256 x i32]* %27, i16* %height, i16* %width)
  store i32 0, i32* %i, align 4
  br label %28

; <label>:28                                      ; preds = %54, %15
  %29 = load i32* %i, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %57

; <label>:31                                      ; preds = %28
  store i32 0, i32* %j, align 4
  br label %32

; <label>:32                                      ; preds = %50, %31
  %33 = load i32* %j, align 4
  %34 = icmp slt i32 %33, 256
  br i1 %34, label %35, label %53

; <label>:35                                      ; preds = %32
  %36 = load i32* %j, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32* %i, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1 x [256 x i32]]* %hist_array, i32 0, i64 %39
  %41 = getelementptr inbounds [256 x i32]* %40, i32 0, i64 %37
  %42 = load i32* %41, align 4
  %43 = load i32* %i, align 4
  %44 = mul nsw i32 %43, 256
  %45 = load i32* %j, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = load i32** %2, align 8
  %49 = getelementptr inbounds i32* %48, i64 %47
  store i32 %42, i32* %49, align 4
  br label %50

; <label>:50                                      ; preds = %35
  %51 = load i32* %j, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %j, align 4
  br label %32

; <label>:53                                      ; preds = %32
  br label %54

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %i, align 4
  br label %28

; <label>:57                                      ; preds = %28
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

define internal void @_ZL107p_ZN2xf17xFHistogramKernelILi0ELi256ELi256ELi0ELi1ELi1ELi128ELi1EEER3MatILi0ELi256ELi256ELi1EEPA256_jRtRt_1R19xf_Mat_0_256_256_1_PA256_jRtS3_(%struct.xf_Mat_0_256_256_1_* %_src_mat, [256 x i32]* %hist_array, i16* %imgheight, i16* %imgwidth) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca [256 x i32]*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %tmp_hist = alloca [1 x [256 x i32]], align 16
  %tmp_hist1 = alloca [1 x [256 x i32]], align 16
  %in_buf = alloca %class.ap_uint.0, align 1
  %in_buf1 = alloca %class.ap_uint.0, align 1
  %temp_buf = alloca %class.ap_uint.0, align 1
  %flag = alloca i8, align 1
  %i = alloca %class.ap_uint.1, align 1
  %5 = alloca %class.ap_uint.1, align 1
  %j = alloca %class.ap_uint.2, align 1
  %6 = alloca %class.ap_uint.2, align 1
  %7 = alloca %class.ap_uint.2, align 1
  %8 = alloca %class.ap_uint.1, align 1
  %row = alloca %class.ap_uint.3, align 1
  %9 = alloca %class.ap_uint.3, align 1
  %col = alloca %class.ap_uint.3, align 1
  %10 = alloca %class.ap_uint.3, align 1
  %11 = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.3, align 1
  %13 = alloca %class.ap_uint.3, align 1
  %14 = alloca %class.ap_int, align 1
  %15 = alloca %class.ap_uint.3, align 1
  %16 = alloca %class.ap_uint.0, align 1
  %17 = alloca %class.ap_int, align 1
  %18 = alloca %class.ap_uint.3, align 1
  %19 = alloca %class.ap_uint.3, align 1
  %20 = alloca %class.ap_int, align 1
  %_l_i = alloca %class.ap_uint.4, align 1
  %_l_j = alloca %class.ap_uint.4, align 1
  %21 = alloca %class.ap_uint.4, align 1
  %_in_l_i = alloca %class.ap_uint.4, align 1
  %22 = alloca %class.ap_uint.4, align 1
  %val = alloca %class.ap_uint.0, align 1
  %val1 = alloca %class.ap_uint.0, align 1
  %23 = alloca %class.ap_uint.4, align 1
  %24 = alloca %class.ap_uint.4, align 1
  %tmpval = alloca i32, align 4
  %tmpval1 = alloca i32, align 4
  %25 = alloca %class.ap_uint.3, align 1
  %26 = alloca %class.ap_uint.4, align 1
  %27 = alloca %class.ap_uint.4, align 1
  %28 = alloca %class.ap_uint.3, align 1
  %29 = alloca %class.ap_uint.3, align 1
  %cnt = alloca i32, align 4
  %p = alloca i32, align 4
  %plane = alloca [1 x i32], align 4
  %i1 = alloca %class.ap_uint.1, align 1
  %30 = alloca %class.ap_uint.1, align 1
  %_l_j_0 = alloca %class.ap_uint.2, align 1
  %_l_k = alloca %class.ap_uint.2, align 1
  %31 = alloca %class.ap_uint.2, align 1
  %value = alloca i32, align 4
  %32 = alloca %class.ap_uint.2, align 1
  %33 = alloca %class.ap_uint.2, align 1
  %34 = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store [256 x i32]* %hist_array, [256 x i32]** %2, align 8
  store i16* %imgheight, i16** %3, align 8
  store i16* %imgwidth, i16** %4, align 8
  %35 = bitcast [1 x [256 x i32]]* %tmp_hist to i8*
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 1024, i32 16, i1 false)
  %36 = bitcast [1 x [256 x i32]]* %tmp_hist1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 1024, i32 16, i1 false)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %in_buf)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %in_buf1)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %temp_buf)
  store i8 0, i8* %flag, align 1
  br label %37

; <label>:37                                      ; preds = %0
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.1* %i, i32 0)
  br label %38

; <label>:38                                      ; preds = %67, %37
  %39 = bitcast %class.ap_uint.1* %5 to i8*
  %40 = bitcast %class.ap_uint.1* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 2, i32 1, i1 false)
  %41 = getelementptr %class.ap_uint.1* %5, i32 0, i32 0
  %42 = bitcast [2 x i8]* %41 to i16*
  %43 = load i16* %42, align 1
  %44 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16 %43, i32 256)
  br i1 %44, label %45, label %71

; <label>:45                                      ; preds = %38
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.2* %j, i32 0)
  br label %46

; <label>:46                                      ; preds = %62, %45
  %47 = bitcast %class.ap_uint.2* %6 to i8*
  %48 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 1, i32 1, i1 false)
  %49 = getelementptr %class.ap_uint.2* %6, i32 0, i32 0
  %50 = bitcast [1 x i8]* %49 to i8*
  %51 = load i8* %50, align 1
  %52 = call zeroext i1 @_ZltILi5EEb7ap_uintIXT_EEi(i8 %51, i32 1)
  br i1 %52, label %53, label %66

; <label>:53                                      ; preds = %46
  %54 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.1* %i)
  %55 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.2* %j)
  %56 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist, i32 0, i64 %55
  %57 = getelementptr inbounds [256 x i32]* %56, i32 0, i64 %54
  store i32 0, i32* %57, align 4
  %58 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.1* %i)
  %59 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.2* %j)
  %60 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist1, i32 0, i64 %59
  %61 = getelementptr inbounds [256 x i32]* %60, i32 0, i64 %58
  store i32 0, i32* %61, align 4
  br label %62

; <label>:62                                      ; preds = %53
  %63 = call i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.2* %j, i32 0)
  %64 = getelementptr %class.ap_uint.2* %7, i32 0, i32 0
  %65 = bitcast [1 x i8]* %64 to i8*
  store i8 %63, i8* %65, align 1
  br label %46

; <label>:66                                      ; preds = %46
  br label %67

; <label>:67                                      ; preds = %66
  %68 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.1* %i, i32 0)
  %69 = getelementptr %class.ap_uint.1* %8, i32 0, i32 0
  %70 = bitcast [2 x i8]* %69 to i16*
  store i16 %68, i16* %70, align 1
  br label %38

; <label>:71                                      ; preds = %38
  br label %72

; <label>:72                                      ; preds = %71
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.3* %row, i32 0)
  br label %73

; <label>:73                                      ; preds = %234, %72
  %74 = bitcast %class.ap_uint.3* %9 to i8*
  %75 = bitcast %class.ap_uint.3* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 2, i32 1, i1 false)
  %76 = load i16** %3, align 8
  %77 = load i16* %76, align 2
  %78 = getelementptr %class.ap_uint.3* %9, i32 0, i32 0
  %79 = bitcast [2 x i8]* %78 to i16*
  %80 = load i16* %79, align 1
  %81 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %80, i16 zeroext %77)
  br i1 %81, label %82, label %238

; <label>:82                                      ; preds = %73
  br label %83

; <label>:83                                      ; preds = %82
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.3* %col, i32 0)
  br label %84

; <label>:84                                      ; preds = %228, %83
  %85 = bitcast %class.ap_uint.3* %10 to i8*
  %86 = bitcast %class.ap_uint.3* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 2, i32 1, i1 false)
  %87 = load i16** %4, align 8
  %88 = load i16* %87, align 2
  %89 = getelementptr %class.ap_uint.3* %10, i32 0, i32 0
  %90 = bitcast [2 x i8]* %89 to i16*
  %91 = load i16* %90, align 1
  %92 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %91, i16 zeroext %88)
  br i1 %92, label %93, label %233

; <label>:93                                      ; preds = %84
  %94 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %95 = load i16** %4, align 8
  %96 = load i16* %95, align 2
  %97 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.3* %row, i16 zeroext %96)
  %98 = getelementptr %class.ap_uint.3* %12, i32 0, i32 0
  %99 = bitcast [2 x i8]* %98 to i16*
  store i16 %97, i16* %99, align 1
  %100 = bitcast %class.ap_uint.3* %13 to i8*
  %101 = bitcast %class.ap_uint.3* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 2, i32 1, i1 false)
  %102 = getelementptr %class.ap_uint.3* %12, i32 0, i32 0
  %103 = bitcast [2 x i8]* %102 to i16*
  %104 = load i16* %103, align 1
  %105 = getelementptr %class.ap_uint.3* %13, i32 0, i32 0
  %106 = bitcast [2 x i8]* %105 to i16*
  %107 = load i16* %106, align 1
  %108 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %104, i16 %107)
  %109 = getelementptr %class.ap_int* %14, i32 0, i32 0
  %110 = bitcast [4 x i8]* %109 to i32*
  store i32 %108, i32* %110, align 1
  %111 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %14)
  %112 = trunc i64 %111 to i32
  %113 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %94, i32 %112)
  %114 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %115 = bitcast [1 x i8]* %114 to i8*
  store i8 %113, i8* %115, align 1
  %116 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %in_buf, %class.ap_uint.0* %11)
  %117 = bitcast %class.ap_uint.3* %15 to i8*
  %118 = bitcast %class.ap_uint.3* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 2, i32 1, i1 false)
  %119 = load i16** %4, align 8
  %120 = load i16* %119, align 2
  %121 = zext i16 %120 to i32
  %122 = sub nsw i32 %121, 1
  %123 = getelementptr %class.ap_uint.3* %15, i32 0, i32 0
  %124 = bitcast [2 x i8]* %123 to i16*
  %125 = load i16* %124, align 1
  %126 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %125, i32 %122)
  br i1 %126, label %127, label %129

; <label>:127                                     ; preds = %93
  %128 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %in_buf1, i32 0)
  br label %156

; <label>:129                                     ; preds = %93
  %130 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %131 = load i16** %4, align 8
  %132 = load i16* %131, align 2
  %133 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.3* %row, i16 zeroext %132)
  %134 = getelementptr %class.ap_uint.3* %18, i32 0, i32 0
  %135 = bitcast [2 x i8]* %134 to i16*
  store i16 %133, i16* %135, align 1
  %136 = bitcast %class.ap_uint.3* %19 to i8*
  %137 = bitcast %class.ap_uint.3* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %137, i64 2, i32 1, i1 false)
  %138 = getelementptr %class.ap_uint.3* %18, i32 0, i32 0
  %139 = bitcast [2 x i8]* %138 to i16*
  %140 = load i16* %139, align 1
  %141 = getelementptr %class.ap_uint.3* %19, i32 0, i32 0
  %142 = bitcast [2 x i8]* %141 to i16*
  %143 = load i16* %142, align 1
  %144 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %140, i16 %143)
  %145 = getelementptr %class.ap_int* %17, i32 0, i32 0
  %146 = bitcast [4 x i8]* %145 to i32*
  store i32 %144, i32* %146, align 1
  %147 = call i32 @_ZplILi26EE6ap_intIXT_EERKS1_i(%class.ap_int* %17, i32 1)
  %148 = getelementptr %class.ap_int* %20, i32 0, i32 0
  %149 = bitcast [4 x i8]* %148 to i32*
  store i32 %147, i32* %149, align 1
  %150 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %20)
  %151 = trunc i64 %150 to i32
  %152 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %130, i32 %151)
  %153 = getelementptr %class.ap_uint.0* %16, i32 0, i32 0
  %154 = bitcast [1 x i8]* %153 to i8*
  store i8 %152, i8* %154, align 1
  %155 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %in_buf1, %class.ap_uint.0* %16)
  br label %156

; <label>:156                                     ; preds = %129, %127
  call void @_ZN7ap_uintILi9EEC1Ei(%class.ap_uint.4* %_l_i, i32 0)
  call void @_ZN7ap_uintILi9EEC1Ei(%class.ap_uint.4* %_l_j, i32 0)
  br label %157

; <label>:157                                     ; preds = %156
  %158 = call %class.ap_uint.4* @_ZN7ap_uintILi9EEaSEi(%class.ap_uint.4* %_l_i, i32 0)
  br label %159

; <label>:159                                     ; preds = %222, %157
  %160 = bitcast %class.ap_uint.4* %21 to i8*
  %161 = bitcast %class.ap_uint.4* %_l_i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %160, i8* %161, i64 2, i32 1, i1 false)
  %162 = getelementptr %class.ap_uint.4* %21, i32 0, i32 0
  %163 = bitcast [2 x i8]* %162 to i16*
  %164 = load i16* %163, align 1
  %165 = call zeroext i1 @_ZleILi9EEb7ap_uintIXT_EEl(i16 %164, i64 0)
  br i1 %165, label %166, label %226

; <label>:166                                     ; preds = %159
  %167 = call i16 @_ZmlILi9EE7ap_uintIXT_EElRKS1_(i64 8, %class.ap_uint.4* %_l_i)
  %168 = getelementptr %class.ap_uint.4* %22, i32 0, i32 0
  %169 = bitcast [2 x i8]* %168 to i16*
  store i16 %167, i16* %169, align 1
  %170 = call i16 @_ZplILi9EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.4* %22)
  %171 = getelementptr %class.ap_uint.4* %_in_l_i, i32 0, i32 0
  %172 = bitcast [2 x i8]* %171 to i16*
  store i16 %170, i16* %172, align 1
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %val, i32 0)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %val1, i32 0)
  %173 = call i16 @_ZplILi9EE7ap_uintIXT_EERKS1_i(%class.ap_uint.4* %_in_l_i, i32 7)
  %174 = getelementptr %class.ap_uint.4* %23, i32 0, i32 0
  %175 = bitcast [2 x i8]* %174 to i16*
  store i16 %173, i16* %175, align 1
  %176 = call i64* @_ZN7ap_uintILi8EE5rangeILi9ELi9EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %in_buf, %class.ap_uint.4* %23, %class.ap_uint.4* %_in_l_i)
  %177 = load i64* %176
  %178 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %val, i64 %177)
  %179 = call i16 @_ZplILi9EE7ap_uintIXT_EERKS1_i(%class.ap_uint.4* %_in_l_i, i32 7)
  %180 = getelementptr %class.ap_uint.4* %24, i32 0, i32 0
  %181 = bitcast [2 x i8]* %180 to i16*
  store i16 %179, i16* %181, align 1
  %182 = call i64* @_ZN7ap_uintILi8EE5rangeILi9ELi9EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %in_buf1, %class.ap_uint.4* %24, %class.ap_uint.4* %_in_l_i)
  %183 = load i64* %182
  %184 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %val1, i64 %183)
  %185 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %val)
  %186 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.4* %_l_j)
  %187 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist, i32 0, i64 %186
  %188 = getelementptr inbounds [256 x i32]* %187, i32 0, i64 %185
  %189 = load i32* %188, align 4
  store i32 %189, i32* %tmpval, align 4
  %190 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %val1)
  %191 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.4* %_l_j)
  %192 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist1, i32 0, i64 %191
  %193 = getelementptr inbounds [256 x i32]* %192, i32 0, i64 %190
  %194 = load i32* %193, align 4
  store i32 %194, i32* %tmpval1, align 4
  %195 = load i32* %tmpval, align 4
  %196 = add i32 %195, 1
  %197 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %val)
  %198 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.4* %_l_j)
  %199 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist, i32 0, i64 %198
  %200 = getelementptr inbounds [256 x i32]* %199, i32 0, i64 %197
  store i32 %196, i32* %200, align 4
  %201 = bitcast %class.ap_uint.3* %25 to i8*
  %202 = bitcast %class.ap_uint.3* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* %202, i64 2, i32 1, i1 false)
  %203 = load i16** %4, align 8
  %204 = load i16* %203, align 2
  %205 = zext i16 %204 to i32
  %206 = sub nsw i32 %205, 1
  %207 = getelementptr %class.ap_uint.3* %25, i32 0, i32 0
  %208 = bitcast [2 x i8]* %207 to i16*
  %209 = load i16* %208, align 1
  %210 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %209, i32 %206)
  br i1 %210, label %218, label %211

; <label>:211                                     ; preds = %166
  %212 = load i32* %tmpval1, align 4
  %213 = add i32 %212, 1
  %214 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %val1)
  %215 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.4* %_l_j)
  %216 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist1, i32 0, i64 %215
  %217 = getelementptr inbounds [256 x i32]* %216, i32 0, i64 %214
  store i32 %213, i32* %217, align 4
  br label %218

; <label>:218                                     ; preds = %211, %166
  %219 = call i16 @_ZN7ap_uintILi9EEppEi(%class.ap_uint.4* %_l_j, i32 0)
  %220 = getelementptr %class.ap_uint.4* %26, i32 0, i32 0
  %221 = bitcast [2 x i8]* %220 to i16*
  store i16 %219, i16* %221, align 1
  br label %222

; <label>:222                                     ; preds = %218
  %223 = call i16 @_ZN7ap_uintILi9EEppEi(%class.ap_uint.4* %_l_i, i32 0)
  %224 = getelementptr %class.ap_uint.4* %27, i32 0, i32 0
  %225 = bitcast [2 x i8]* %224 to i16*
  store i16 %223, i16* %225, align 1
  br label %159

; <label>:226                                     ; preds = %159
  %227 = call %class.ap_uint.4* @_ZN7ap_uintILi9EEaSEl(%class.ap_uint.4* %_l_i, i64 8)
  br label %228

; <label>:228                                     ; preds = %226
  %229 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %col, i32 2)
  %230 = getelementptr %class.ap_uint.3* %28, i32 0, i32 0
  %231 = bitcast [2 x i8]* %230 to i16*
  store i16 %229, i16* %231, align 1
  %232 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.3* %col, %class.ap_uint.3* %28)
  br label %84

; <label>:233                                     ; preds = %84
  br label %234

; <label>:234                                     ; preds = %233
  %235 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %row, i32 0)
  %236 = getelementptr %class.ap_uint.3* %29, i32 0, i32 0
  %237 = bitcast [2 x i8]* %236 to i16*
  store i16 %235, i16* %237, align 1
  br label %73

; <label>:238                                     ; preds = %73
  store i32 0, i32* %p, align 4
  br label %239

; <label>:239                                     ; preds = %238
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.1* %i1, i32 0)
  br label %240

; <label>:240                                     ; preds = %284, %239
  %241 = bitcast %class.ap_uint.1* %30 to i8*
  %242 = bitcast %class.ap_uint.1* %i1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %241, i8* %242, i64 2, i32 1, i1 false)
  %243 = getelementptr %class.ap_uint.1* %30, i32 0, i32 0
  %244 = bitcast [2 x i8]* %243 to i16*
  %245 = load i16* %244, align 1
  %246 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16 %245, i32 256)
  br i1 %246, label %247, label %288

; <label>:247                                     ; preds = %240
  store i32 0, i32* %cnt, align 4
  store i32 0, i32* %p, align 4
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.2* %_l_j_0, i32 0)
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.2* %_l_k, i32 0)
  %248 = call %class.ap_uint.2* @_ZN7ap_uintILi5EEaSEi(%class.ap_uint.2* %_l_j_0, i32 0)
  br label %249

; <label>:249                                     ; preds = %274, %247
  %250 = bitcast %class.ap_uint.2* %31 to i8*
  %251 = bitcast %class.ap_uint.2* %_l_j_0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %250, i8* %251, i64 1, i32 1, i1 false)
  %252 = getelementptr %class.ap_uint.2* %31, i32 0, i32 0
  %253 = bitcast [1 x i8]* %252 to i8*
  %254 = load i8* %253, align 1
  %255 = call zeroext i1 @_ZleILi5EEb7ap_uintIXT_EEi(i8 %254, i32 0)
  br i1 %255, label %256, label %278

; <label>:256                                     ; preds = %249
  %257 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.1* %i1)
  %258 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.2* %_l_j_0)
  %259 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist, i32 0, i64 %258
  %260 = getelementptr inbounds [256 x i32]* %259, i32 0, i64 %257
  %261 = load i32* %260, align 4
  %262 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.1* %i1)
  %263 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.2* %_l_j_0)
  %264 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist1, i32 0, i64 %263
  %265 = getelementptr inbounds [256 x i32]* %264, i32 0, i64 %262
  %266 = load i32* %265, align 4
  %267 = add i32 %261, %266
  store i32 %267, i32* %value, align 4
  %268 = load i32* %cnt, align 4
  %269 = load i32* %value, align 4
  %270 = add i32 %268, %269
  store i32 %270, i32* %cnt, align 4
  %271 = call i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.2* %_l_k, i32 0)
  %272 = getelementptr %class.ap_uint.2* %32, i32 0, i32 0
  %273 = bitcast [1 x i8]* %272 to i8*
  store i8 %271, i8* %273, align 1
  br label %274

; <label>:274                                     ; preds = %256
  %275 = call i8 @_ZN7ap_uintILi5EEppEv(%class.ap_uint.2* %_l_j_0)
  %276 = getelementptr %class.ap_uint.2* %33, i32 0, i32 0
  %277 = bitcast [1 x i8]* %276 to i8*
  store i8 %275, i8* %277, align 1
  br label %249

; <label>:278                                     ; preds = %249
  %279 = load i32* %cnt, align 4
  %280 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.1* %i1)
  %281 = load [256 x i32]** %2, align 8
  %282 = getelementptr inbounds [256 x i32]* %281, i64 0
  %283 = getelementptr inbounds [256 x i32]* %282, i32 0, i64 %280
  store i32 %279, i32* %283, align 4
  br label %284

; <label>:284                                     ; preds = %278
  %285 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.1* %i1, i32 0)
  %286 = getelementptr %class.ap_uint.1* %34, i32 0, i32 0
  %287 = bitcast [2 x i8]* %286 to i16*
  store i16 %285, i16* %287, align 1
  br label %240

; <label>:288                                     ; preds = %240
  ret void
}

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0*)

declare void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16, i32)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.2*, i32)

declare zeroext i1 @_ZltILi5EEb7ap_uintIXT_EEi(i8, i32)

declare i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.1*)

declare i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.2*)

declare i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.2*, i32)

declare i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.1*, i32)

declare void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.3*, i32)

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

declare zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16, i32)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0*, i32)

declare i32 @_ZplILi26EE6ap_intIXT_EERKS1_i(%class.ap_int*, i32)

declare void @_ZN7ap_uintILi9EEC1Ei(%class.ap_uint.4*, i32)

declare %class.ap_uint.4* @_ZN7ap_uintILi9EEaSEi(%class.ap_uint.4*, i32)

declare zeroext i1 @_ZleILi9EEb7ap_uintIXT_EEl(i16, i64)

declare i16 @_ZplILi9EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.4*)

declare i16 @_ZmlILi9EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.4*)

declare void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0*, i32)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0*, i64)

declare i64* @_ZN7ap_uintILi8EE5rangeILi9ELi9EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0*, %class.ap_uint.4*, %class.ap_uint.4*)

declare i16 @_ZplILi9EE7ap_uintIXT_EERKS1_i(%class.ap_uint.4*, i32)

declare i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0*)

declare i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.4*)

declare i16 @_ZN7ap_uintILi9EEppEi(%class.ap_uint.4*, i32)

declare %class.ap_uint.4* @_ZN7ap_uintILi9EEaSEl(%class.ap_uint.4*, i64)

declare %class.ap_uint.3* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.3*, %class.ap_uint.3*)

declare i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3*, i32)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3*, i32)

declare %class.ap_uint.2* @_ZN7ap_uintILi5EEaSEi(%class.ap_uint.2*, i32)

declare zeroext i1 @_ZleILi5EEb7ap_uintIXT_EEi(i8, i32)

declare i8 @_ZN7ap_uintILi5EEppEv(%class.ap_uint.2*)

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

declare void @_ZN3hls6streamI7ap_uintILi64EEEC1Ev(%"class.hls::stream"*)

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

declare void @_ZN7ap_uintILi64EEC1Ev(%class.ap_uint*)

declare i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint*, i32, i32)

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0*, i32, i32)

declare %class.ap_uint* @_ZN7ap_uintILi64EEaSERKS0_(%class.ap_uint*, %class.ap_uint*)

declare i64 @_ZN3hls6streamI7ap_uintILi64EEE4readEv(%"class.hls::stream"*)

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

declare void @_ZN3hls6streamI7ap_uintILi64EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

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

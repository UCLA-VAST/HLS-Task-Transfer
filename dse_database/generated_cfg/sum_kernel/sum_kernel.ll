; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/sum_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [1 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint] }
%struct.xf_accel_utils = type { i8 }
%struct.xf_Scalar_1_double_ = type { [1 x double] }
%class.ap_uint.0 = type { [2 x i8] }
%class.ap_uint.1 = type { [8 x i8] }
%class.ap_int = type { [4 x i8] }
%class.ap_int.2 = type { [9 x i8] }
%"class.hls::stream" = type { %class.ap_uint }

@.str = private unnamed_addr constant [100 x i8] c"((src1.rows <= ROWS ) && (src1.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"xf_sum.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL65p_ZN2xf3sumILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPd_1R19xf_Mat_0_256_256_1_Pd = private unnamed_addr constant [111 x i8] c"void p_ZN2xf3sumILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPd_1(struct xf_Mat_0_256_256_1_ &, double *)\00", align 1
@.str2 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z9sum_accelP7ap_uintILi8EEPdii(%class.ap_uint* %img_inp1, double* %scl, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %pROLS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %_src = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_inp1, %class.ap_uint** %1, align 8
  store double* %scl, double** %2, align 8
  store i32 %rows, i32* %3, align 4
  store i32 %cols, i32* %4, align 4
  store i32 256, i32* %pROLS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %_src)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_src)
  %5 = load i32* %3, align 4
  %6 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_src, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load i32* %4, align 4
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_src, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load %class.ap_uint** %1, align 8
  call void @_ZL91p_ZN2xf11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi8EER19xf_Mat_0_256_256_1_(%class.ap_uint* %9, %struct.xf_Mat_0_256_256_1_* %_src)
  %10 = load double** %2, align 8
  call void @_ZL65p_ZN2xf3sumILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPd_1R19xf_Mat_0_256_256_1_Pd(%struct.xf_Mat_0_256_256_1_* %_src, double* %10)
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

define internal void @_ZL91p_ZN2xf11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi8EER19xf_Mat_0_256_256_1_(%class.ap_uint* %srcPtr, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %class.ap_uint* %srcPtr, %class.ap_uint** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %dstMat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  %3 = load %class.ap_uint** %1, align 8
  %4 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  call void @_ZL104p_ZN2xf11accel_utils11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi8EER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %au, %class.ap_uint* %3, %struct.xf_Mat_0_256_256_1_* %4)
  ret void
}

define internal void @_ZL65p_ZN2xf3sumILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPd_1R19xf_Mat_0_256_256_1_Pd(%struct.xf_Mat_0_256_256_1_* %src1, double* %sum) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca double*, align 8
  %width = alloca i16, align 2
  %scl = alloca %struct.xf_Scalar_1_double_, align 8
  %i = alloca i32, align 4
  store %struct.xf_Mat_0_256_256_1_* %src1, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store double* %sum, double** %2, align 8
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
  call void @__assert_fail(i8* getelementptr inbounds ([100 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0), i32 120, i8* getelementptr inbounds ([111 x i8]* @__PRETTY_FUNCTION__._ZL65p_ZN2xf3sumILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPd_1R19xf_Mat_0_256_256_1_Pd, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %17 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %16, i32 0, i32 2
  %18 = load i32* %17, align 4
  %19 = ashr i32 %18, 0
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %width, align 2
  call void @_ZL33p_ZN2xf16Scalar_1_double_C2IEEv_1P19xf_Scalar_1_double_(%struct.xf_Scalar_1_double_* %scl)
  %21 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %22 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %22, i32 0, i32 1
  %24 = load i32* %23, align 4
  %25 = trunc i32 %24 to i16
  %26 = load i16* %width, align 2
  %27 = call i32 @_ZL104p_ZN2xf9sumKernelILi0ELi256ELi256ELi1ELi1ELi0ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER6ScalarILi1EdEtt_1R19xf_Mat_0_256_256_1_R19xf_Scalar_1_double_tt(%struct.xf_Mat_0_256_256_1_* %21, %struct.xf_Scalar_1_double_* %scl, i16 zeroext %25, i16 zeroext %26)
  store i32 0, i32* %i, align 4
  br label %28

; <label>:28                                      ; preds = %41, %15
  %29 = load i32* %i, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %44

; <label>:31                                      ; preds = %28
  %32 = load i32* %i, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.xf_Scalar_1_double_* %scl, i32 0, i32 0
  %35 = getelementptr inbounds [1 x double]* %34, i32 0, i64 %33
  %36 = load double* %35, align 8
  %37 = load i32* %i, align 4
  %38 = sext i32 %37 to i64
  %39 = load double** %2, align 8
  %40 = getelementptr inbounds double* %39, i64 %38
  store double %36, double* %40, align 8
  br label %41

; <label>:41                                      ; preds = %31
  %42 = load i32* %i, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %i, align 4
  br label %28

; <label>:44                                      ; preds = %28
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL33p_ZN2xf16Scalar_1_double_C2IEEv_1P19xf_Scalar_1_double_(%struct.xf_Scalar_1_double_* %this_) nounwind uwtable {
  %1 = alloca %struct.xf_Scalar_1_double_*, align 8
  store %struct.xf_Scalar_1_double_* %this_, %struct.xf_Scalar_1_double_** %1, align 8
  ret void
}

define internal i32 @_ZL104p_ZN2xf9sumKernelILi0ELi256ELi256ELi1ELi1ELi0ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER6ScalarILi1EdEtt_1R19xf_Mat_0_256_256_1_R19xf_Scalar_1_double_tt(%struct.xf_Mat_0_256_256_1_* %src1, %struct.xf_Scalar_1_double_* %scl, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Scalar_1_double_*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %i = alloca %class.ap_uint.0, align 1
  %j = alloca %class.ap_uint.0, align 1
  %k = alloca %class.ap_uint.0, align 1
  %l = alloca %class.ap_uint.0, align 1
  %c = alloca %class.ap_uint.0, align 1
  %internal_sum = alloca [1 x %class.ap_uint.1], align 1
  %i1 = alloca i32, align 4
  %STEP = alloca i32, align 4
  %pxl_pack1 = alloca %class.ap_uint, align 1
  %pxl_pack2 = alloca %class.ap_uint, align 1
  %5 = alloca %class.ap_uint.0, align 1
  %6 = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_uint, align 1
  %8 = alloca %class.ap_uint.0, align 1
  %9 = alloca %class.ap_uint.0, align 1
  %10 = alloca %class.ap_int, align 1
  %11 = alloca %class.ap_uint.0, align 1
  %_in_k = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.0, align 1
  %pxl1 = alloca %class.ap_uint, align 1
  %13 = alloca %class.ap_uint.0, align 1
  %14 = alloca %class.ap_int.2, align 1
  %15 = alloca %class.ap_uint.1, align 1
  %16 = alloca %class.ap_uint, align 1
  %17 = alloca { i64, i8 }
  %18 = alloca %class.ap_uint.0, align 1
  %19 = alloca %class.ap_uint.0, align 1
  %20 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.0, align 1
  store %struct.xf_Mat_0_256_256_1_* %src1, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Scalar_1_double_* %scl, %struct.xf_Scalar_1_double_** %2, align 8
  store i16 %height, i16* %3, align 2
  store i16 %width, i16* %4, align 2
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.0* %i)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.0* %j)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.0* %k)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.0* %l)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.0* %c)
  %22 = getelementptr inbounds [1 x %class.ap_uint.1]* %internal_sum, i32 0, i32 0
  %23 = getelementptr inbounds %class.ap_uint.1* %22, i64 1
  br label %24

; <label>:24                                      ; preds = %24, %0
  %25 = phi %class.ap_uint.1* [ %22, %0 ], [ %26, %24 ]
  call void @_ZN7ap_uintILi64EEC1Ev(%class.ap_uint.1* %25)
  %26 = getelementptr inbounds %class.ap_uint.1* %25, i64 1
  %27 = icmp eq %class.ap_uint.1* %26, %23
  br i1 %27, label %28, label %24

; <label>:28                                      ; preds = %24
  store i32 0, i32* %i1, align 4
  br label %29

; <label>:29                                      ; preds = %37, %28
  %30 = load i32* %i1, align 4
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %40

; <label>:32                                      ; preds = %29
  %33 = load i32* %i1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1 x %class.ap_uint.1]* %internal_sum, i32 0, i64 %34
  %36 = call %class.ap_uint.1* @_ZN7ap_uintILi64EEaSEi(%class.ap_uint.1* %35, i32 0)
  br label %37

; <label>:37                                      ; preds = %32
  %38 = load i32* %i1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %i1, align 4
  br label %29

; <label>:40                                      ; preds = %29
  store i32 8, i32* %STEP, align 4
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint* %pxl_pack1)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint* %pxl_pack2)
  br label %41

; <label>:41                                      ; preds = %40
  %42 = call %class.ap_uint.0* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.0* %i, i32 0)
  br label %43

; <label>:43                                      ; preds = %138, %41
  %44 = bitcast %class.ap_uint.0* %5 to i8*
  %45 = bitcast %class.ap_uint.0* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 2, i32 1, i1 false)
  %46 = load i16* %3, align 2
  %47 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %48 = bitcast [2 x i8]* %47 to i16*
  %49 = load i16* %48, align 1
  %50 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %49, i16 zeroext %46)
  br i1 %50, label %51, label %142

; <label>:51                                      ; preds = %43
  br label %52

; <label>:52                                      ; preds = %51
  %53 = call %class.ap_uint.0* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.0* %j, i32 0)
  br label %54

; <label>:54                                      ; preds = %133, %52
  %55 = bitcast %class.ap_uint.0* %6 to i8*
  %56 = bitcast %class.ap_uint.0* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 2, i32 1, i1 false)
  %57 = load i16* %4, align 2
  %58 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %59 = bitcast [2 x i8]* %58 to i16*
  %60 = load i16* %59, align 1
  %61 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %60, i16 zeroext %57)
  br i1 %61, label %62, label %137

; <label>:62                                      ; preds = %54
  %63 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %64 = load i16* %4, align 2
  %65 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.0* %i, i16 zeroext %64)
  %66 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %67 = bitcast [2 x i8]* %66 to i16*
  store i16 %65, i16* %67, align 1
  %68 = bitcast %class.ap_uint.0* %9 to i8*
  %69 = bitcast %class.ap_uint.0* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 2, i32 1, i1 false)
  %70 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %71 = bitcast [2 x i8]* %70 to i16*
  %72 = load i16* %71, align 1
  %73 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %74 = bitcast [2 x i8]* %73 to i16*
  %75 = load i16* %74, align 1
  %76 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %72, i16 %75)
  %77 = getelementptr %class.ap_int* %10, i32 0, i32 0
  %78 = bitcast [4 x i8]* %77 to i32*
  store i32 %76, i32* %78, align 1
  %79 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %10)
  %80 = trunc i64 %79 to i32
  %81 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %63, i32 %80)
  %82 = getelementptr %class.ap_uint* %7, i32 0, i32 0
  %83 = bitcast [1 x i8]* %82 to i8*
  store i8 %81, i8* %83, align 1
  %84 = call %class.ap_uint* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint* %pxl_pack1, %class.ap_uint* %7)
  %85 = call %class.ap_uint.0* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.0* %c, i32 0)
  br label %86

; <label>:86                                      ; preds = %62
  %87 = call %class.ap_uint.0* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.0* %k, i32 0)
  br label %88

; <label>:88                                      ; preds = %127, %86
  %89 = bitcast %class.ap_uint.0* %11 to i8*
  %90 = bitcast %class.ap_uint.0* %k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 2, i32 1, i1 false)
  %91 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %92 = bitcast [2 x i8]* %91 to i16*
  %93 = load i16* %92, align 1
  %94 = call zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16 %93, i64 0)
  br i1 %94, label %95, label %131

; <label>:95                                      ; preds = %88
  %96 = call i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64 8, %class.ap_uint.0* %k)
  %97 = getelementptr %class.ap_uint.0* %12, i32 0, i32 0
  %98 = bitcast [2 x i8]* %97 to i16*
  store i16 %96, i16* %98, align 1
  %99 = call i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.0* %12)
  %100 = getelementptr %class.ap_uint.0* %_in_k, i32 0, i32 0
  %101 = bitcast [2 x i8]* %100 to i16*
  store i16 %99, i16* %101, align 1
  %102 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %_in_k, i32 7)
  %103 = getelementptr %class.ap_uint.0* %13, i32 0, i32 0
  %104 = bitcast [2 x i8]* %103 to i16*
  store i16 %102, i16* %104, align 1
  %105 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint* %pxl_pack1, %class.ap_uint.0* %13, %class.ap_uint.0* %_in_k)
  %106 = load i64* %105
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint* %pxl1, i64 %106)
  %107 = getelementptr inbounds [1 x %class.ap_uint.1]* %internal_sum, i32 0, i64 0
  %108 = getelementptr inbounds [1 x %class.ap_uint.1]* %internal_sum, i32 0, i64 0
  %109 = bitcast %class.ap_uint.1* %15 to i8*
  %110 = bitcast %class.ap_uint.1* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 8, i32 1, i1 false)
  %111 = bitcast %class.ap_uint* %16 to i8*
  %112 = bitcast %class.ap_uint* %pxl1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 1, i32 1, i1 false)
  %113 = getelementptr %class.ap_uint.1* %15, i32 0, i32 0
  %114 = bitcast [8 x i8]* %113 to i64*
  %115 = load i64* %114, align 1
  %116 = getelementptr %class.ap_uint* %16, i32 0, i32 0
  %117 = bitcast [1 x i8]* %116 to i8*
  %118 = load i8* %117, align 1
  %119 = call { i64, i8 } @_ZplILi64ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i64 %115, i8 %118)
  %120 = getelementptr %class.ap_int.2* %14, i32 0, i32 0
  store { i64, i8 } %119, { i64, i8 }* %17
  %121 = bitcast { i64, i8 }* %17 to [9 x i8]*
  %122 = load [9 x i8]* %121, align 1
  store [9 x i8] %122, [9 x i8]* %120
  %123 = call %class.ap_uint.1* @_ZN7ap_uintILi64EEaSILi72EEERS0_RK6ap_intIXT_EE(%class.ap_uint.1* %107, %class.ap_int.2* %14)
  %124 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.0* %c, i32 0)
  %125 = getelementptr %class.ap_uint.0* %18, i32 0, i32 0
  %126 = bitcast [2 x i8]* %125 to i16*
  store i16 %124, i16* %126, align 1
  br label %127

; <label>:127                                     ; preds = %95
  %128 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.0* %k, i32 0)
  %129 = getelementptr %class.ap_uint.0* %19, i32 0, i32 0
  %130 = bitcast [2 x i8]* %129 to i16*
  store i16 %128, i16* %130, align 1
  br label %88

; <label>:131                                     ; preds = %88
  %132 = call %class.ap_uint.0* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.0* %k, i64 8)
  br label %133

; <label>:133                                     ; preds = %131
  %134 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.0* %j, i32 0)
  %135 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %136 = bitcast [2 x i8]* %135 to i16*
  store i16 %134, i16* %136, align 1
  br label %54

; <label>:137                                     ; preds = %54
  br label %138

; <label>:138                                     ; preds = %137
  %139 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.0* %i, i32 0)
  %140 = getelementptr %class.ap_uint.0* %21, i32 0, i32 0
  %141 = bitcast [2 x i8]* %140 to i16*
  store i16 %139, i16* %141, align 1
  br label %43

; <label>:142                                     ; preds = %43
  %143 = getelementptr inbounds [1 x %class.ap_uint.1]* %internal_sum, i32 0, i64 0
  %144 = call i64 @_ZNK7ap_uintILi64EEcvmEv(%class.ap_uint.1* %143)
  %145 = uitofp i64 %144 to double
  %146 = load %struct.xf_Scalar_1_double_** %2, align 8
  %147 = getelementptr inbounds %struct.xf_Scalar_1_double_* %146, i32 0, i32 0
  %148 = getelementptr inbounds [1 x double]* %147, i32 0, i64 0
  store double %145, double* %148, align 8
  ret i32 0
}

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.0*)

declare void @_ZN7ap_uintILi64EEC1Ev(%class.ap_uint.1*)

declare %class.ap_uint.1* @_ZN7ap_uintILi64EEaSEi(%class.ap_uint.1*, i32)

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint*)

declare %class.ap_uint.0* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.0*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare %class.ap_uint* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint*, %class.ap_uint*)

define internal i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint, align 1
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %6, i32 0, i32 4
  %8 = getelementptr inbounds [65536 x %class.ap_uint]* %7, i32 0, i64 %5
  %9 = bitcast %class.ap_uint* %1 to i8*
  %10 = bitcast %class.ap_uint* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 1, i32 1, i1 false)
  %11 = getelementptr %class.ap_uint* %1, i32 0, i32 0
  %12 = bitcast [1 x i8]* %11 to i8*
  %13 = load i8* %12, align 1
  ret i8 %13
}

declare i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.0*, i16 zeroext)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int*)

declare zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16, i64)

declare i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.0*)

declare i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.0*)

declare void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint*, i64)

declare i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint*, %class.ap_uint.0*, %class.ap_uint.0*)

declare i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0*, i32)

declare %class.ap_uint.1* @_ZN7ap_uintILi64EEaSILi72EEERS0_RK6ap_intIXT_EE(%class.ap_uint.1*, %class.ap_int.2*)

declare { i64, i8 } @_ZplILi64ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i64, i8)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.0*, i32)

declare %class.ap_uint.0* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.0*, i64)

declare i64 @_ZNK7ap_uintILi64EEcvmEv(%class.ap_uint.1*)

define internal void @_ZL104p_ZN2xf11accel_utils11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi8EER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
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
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream"* %strm)
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
  call void @_ZL117p_ZN2xf11accel_utils13Array2hlsStrmILi8ELi256ELi256ELi1ELi1ELi8ELi65536EEEP7ap_uintILi8EER6streamI7ap_uintILi8EEEii_1P14xf_accel_utilsP7ap_uintILi8EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %10, %class.ap_uint* %11, %"class.hls::stream"* %strm, i32 %12, i32 %13)
  %14 = load %struct.xf_accel_utils** %1, align 8
  %15 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  call void @_ZL123p_ZN2xf11accel_utils13hlsStrm2xfMatILi8ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi8EEER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi8EEEER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %14, %"class.hls::stream"* %strm, %struct.xf_Mat_0_256_256_1_* %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream"*)

define internal void @_ZL117p_ZN2xf11accel_utils13Array2hlsStrmILi8ELi256ELi256ELi1ELi1ELi8ELi65536EEEP7ap_uintILi8EER6streamI7ap_uintILi8EEEii_1P14xf_accel_utilsP7ap_uintILi8EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %"class.hls::stream"* %dstStrm, i32 %rows, i32 %cols) uwtable {
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
  %11 = add nsw i32 %10, 8
  %12 = sub nsw i32 %11, 1
  %13 = sdiv i32 %12, 8
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
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream"* %19, %class.ap_uint* %23)
  br label %24

; <label>:24                                      ; preds = %18
  %25 = load i32* %i, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %14

; <label>:27                                      ; preds = %14
  ret void
}

define internal void @_ZL123p_ZN2xf11accel_utils13hlsStrm2xfMatILi8ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi8EEER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi8EEEER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %"class.hls::stream"*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %valid_bits = alloca i32, align 4
  %N_size = alloca i32, align 4
  %r = alloca %class.ap_uint, align 1
  %out = alloca %class.ap_uint, align 1
  %i = alloca i32, align 4
  %4 = alloca %class.ap_uint, align 1
  %5 = alloca %class.ap_uint, align 1
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
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint* %out)
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
  %29 = sub nsw i32 8, %28
  %30 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %r, i32 7, i32 %29)
  %31 = load i64* %30
  %32 = load i32* %valid_bits, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %out, i32 %33, i32 0)
  store i64 %31, i64* %34
  br label %35

; <label>:35                                      ; preds = %27, %24
  %36 = load %"class.hls::stream"** %2, align 8
  %37 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream"* %36)
  %38 = getelementptr %class.ap_uint* %4, i32 0, i32 0
  %39 = bitcast [1 x i8]* %38 to i8*
  store i8 %37, i8* %39, align 1
  %40 = call %class.ap_uint* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint* %r, %class.ap_uint* %4)
  %41 = load i32* %valid_bits, align 4
  %42 = sub nsw i32 8, %41
  %43 = sub nsw i32 %42, 1
  %44 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %r, i32 %43, i32 0)
  %45 = load i64* %44
  %46 = load i32* %valid_bits, align 4
  %47 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %out, i32 7, i32 %46)
  store i64 %45, i64* %47
  %48 = load i32* %valid_bits, align 4
  %49 = sub nsw i32 8, %48
  %50 = sub nsw i32 8, %49
  store i32 %50, i32* %valid_bits, align 4
  br label %63

; <label>:51                                      ; preds = %21
  %52 = load i32* %valid_bits, align 4
  %53 = sub nsw i32 8, %52
  %54 = add nsw i32 %53, 8
  %55 = sub nsw i32 %54, 1
  %56 = load i32* %valid_bits, align 4
  %57 = sub nsw i32 8, %56
  %58 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %r, i32 %55, i32 %57)
  %59 = load i64* %58
  %60 = call %class.ap_uint* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint* %out, i64 %59)
  %61 = load i32* %valid_bits, align 4
  %62 = sub nsw i32 %61, 8
  store i32 %62, i32* %valid_bits, align 4
  br label %63

; <label>:63                                      ; preds = %51, %35
  %64 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %65 = load i32* %i, align 4
  %66 = bitcast %class.ap_uint* %5 to i8*
  %67 = bitcast %class.ap_uint* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 1, i32 1, i1 false)
  %68 = getelementptr %class.ap_uint* %5, i32 0, i32 0
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

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint*, i32, i32)

declare i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream"*)

declare %class.ap_uint* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint*, i64)

define internal void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %this_, i32 %index, i8 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint, align 1
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint* %val, i32 0, i32 0
  %4 = bitcast [1 x i8]* %3 to i8*
  store i8 %val.coerce, i8* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint* %9, %class.ap_uint* %val)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

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
  %4 = getelementptr inbounds [65536 x %class.ap_uint]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint* %7)
  %8 = getelementptr inbounds %class.ap_uint* %7, i64 1
  %9 = icmp eq %class.ap_uint* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  ret void
}

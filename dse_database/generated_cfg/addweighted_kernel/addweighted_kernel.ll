; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/addweighted_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_Mat_1_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.1] }
%class.ap_uint.1 = type { [2 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.2 = type { [2 x i8] }
%class.ap_uint.3 = type { [3 x i8] }
%class.ap_int = type { [4 x i8] }
%class.ap_uint.4 = type { [5 x i8] }
%class.ap_int.5 = type { [4 x i8] }
%class.ap_int.6 = type { [13 x i8] }
%class.ap_int.7 = type { [10 x i8] }

@.str = private unnamed_addr constant [101 x i8] c"((src1.rows == src2.rows ) && (src1.cols == src2.cols)) && \22Both input images should have same size\22\00", align 1
@.str1 = private unnamed_addr constant [20 x i8] c"xf_add_weighted.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL133p_ZN2xf11addWeightedILi0ELi1ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEfR3MatILi0ELi256ELi256ELi1EEffR3MatILi1ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_fS0_ffR19xf_Mat_1_256_256_1_ = private unnamed_addr constant [250 x i8] c"void p_ZN2xf11addWeightedILi0ELi1ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEfR3MatILi0ELi256ELi256ELi1EEffR3MatILi1ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &, float, struct xf_Mat_0_256_256_1_ &, float, float, struct xf_Mat_1_256_256_1_ &)\00", align 1
@.str2 = private unnamed_addr constant [105 x i8] c"((src1.rows == dst.rows ) && (src1.cols == dst.cols)) && \22Input and output image should be of same size\22\00", align 1
@.str3 = private unnamed_addr constant [100 x i8] c"((src1.rows <= ROWS ) && (src1.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str4 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_1_256_256_1_4initIEEiib_1P19xf_Mat_1_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_1_256_256_1_4initIEEiib_1(struct xf_Mat_1_256_256_1_ *, int, int, bool)\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z12add_weightedP7ap_uintILi256EES1_S1_iifff(%class.ap_uint* %img_inp1, %class.ap_uint* %img_inp2, %class.ap_uint* %img_out, i32 %rows, i32 %cols, float %alpha, float %beta, float %gama) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %_src1 = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %_src2 = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %_dst = alloca %struct.xf_Mat_1_256_256_1_, align 4
  store %class.ap_uint* %img_inp1, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_inp2, %class.ap_uint** %2, align 8
  store %class.ap_uint* %img_out, %class.ap_uint** %3, align 8
  store i32 %rows, i32* %4, align 4
  store i32 %cols, i32* %5, align 4
  store float %alpha, float* %6, align 4
  store float %beta, float* %7, align 4
  store float %gama, float* %8, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %_src1)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_src1)
  %9 = load i32* %4, align 4
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_src1, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32* %5, align 4
  %12 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_src1, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %_src2)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_src2)
  %13 = load i32* %4, align 4
  %14 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_src2, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32* %5, align 4
  %16 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_src2, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  call void @_ZN19xf_Mat_1_256_256_1_C1Ev(%struct.xf_Mat_1_256_256_1_* %_dst)
  call void @_ZL33p_ZN2xf16Mat_1_256_256_1_C2IEEv_1P19xf_Mat_1_256_256_1_(%struct.xf_Mat_1_256_256_1_* %_dst)
  %17 = load i32* %4, align 4
  %18 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %_dst, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32* %5, align 4
  %20 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %_dst, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %21, %struct.xf_Mat_0_256_256_1_* %_src1)
  %22 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %22, %struct.xf_Mat_0_256_256_1_* %_src2)
  %23 = load float* %6, align 4
  %24 = load float* %7, align 4
  %25 = load float* %8, align 4
  call void @_ZL133p_ZN2xf11addWeightedILi0ELi1ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEfR3MatILi0ELi256ELi256ELi1EEffR3MatILi1ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_fS0_ffR19xf_Mat_1_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_src1, float %23, %struct.xf_Mat_0_256_256_1_* %_src2, float %24, float %25, %struct.xf_Mat_1_256_256_1_* %_dst)
  %26 = load %class.ap_uint** %3, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi1ELi256ELi256ELi1EEER3MatILi1ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_1_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_1_256_256_1_* %_dst, %class.ap_uint* %26)
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

define linkonce_odr void @_ZN19xf_Mat_1_256_256_1_C1Ev(%struct.xf_Mat_1_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_1_256_256_1_*, align 8
  store %struct.xf_Mat_1_256_256_1_* %this, %struct.xf_Mat_1_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_1_256_256_1_** %1
  call void @_ZN19xf_Mat_1_256_256_1_C2Ev(%struct.xf_Mat_1_256_256_1_* %2)
  ret void
}

define internal void @_ZL33p_ZN2xf16Mat_1_256_256_1_C2IEEv_1P19xf_Mat_1_256_256_1_(%struct.xf_Mat_1_256_256_1_* %this_) uwtable {
  %1 = alloca %struct.xf_Mat_1_256_256_1_*, align 8
  store %struct.xf_Mat_1_256_256_1_* %this_, %struct.xf_Mat_1_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_1_256_256_1_** %1, align 8
  call void @_ZL38p_ZN2xf16Mat_1_256_256_1_4initIEEiib_1P19xf_Mat_1_256_256_1_iib(%struct.xf_Mat_1_256_256_1_* %2, i32 256, i32 256, i1 zeroext true)
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

define internal void @_ZL133p_ZN2xf11addWeightedILi0ELi1ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEfR3MatILi0ELi256ELi256ELi1EEffR3MatILi1ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_fS0_ffR19xf_Mat_1_256_256_1_(%struct.xf_Mat_0_256_256_1_* %src1, float %alpha, %struct.xf_Mat_0_256_256_1_* %src2, float %beta, float %gama, %struct.xf_Mat_1_256_256_1_* %dst) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca float, align 4
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca %struct.xf_Mat_1_256_256_1_*, align 8
  %width = alloca i16, align 2
  store %struct.xf_Mat_0_256_256_1_* %src1, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store float %alpha, float* %2, align 4
  store %struct.xf_Mat_0_256_256_1_* %src2, %struct.xf_Mat_0_256_256_1_** %3, align 8
  store float %beta, float* %4, align 4
  store float %gama, float* %5, align 4
  store %struct.xf_Mat_1_256_256_1_* %dst, %struct.xf_Mat_1_256_256_1_** %6, align 8
  %7 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %7, i32 0, i32 1
  %9 = load i32* %8, align 4
  %10 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %11 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %10, i32 0, i32 1
  %12 = load i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %23

; <label>:14                                      ; preds = %0
  %15 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %16 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %15, i32 0, i32 2
  %17 = load i32* %16, align 4
  %18 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %19 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %18, i32 0, i32 2
  %20 = load i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %14
  br label %25

; <label>:23                                      ; preds = %14, %0
  call void @__assert_fail(i8* getelementptr inbounds ([101 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([250 x i8]* @__PRETTY_FUNCTION__._ZL133p_ZN2xf11addWeightedILi0ELi1ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEfR3MatILi0ELi256ELi256ELi1EEffR3MatILi1ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_fS0_ffR19xf_Mat_1_256_256_1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %25

; <label>:25                                      ; preds = %24, %22
  %26 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %27 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %26, i32 0, i32 1
  %28 = load i32* %27, align 4
  %29 = load %struct.xf_Mat_1_256_256_1_** %6, align 8
  %30 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %29, i32 0, i32 1
  %31 = load i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %42

; <label>:33                                      ; preds = %25
  %34 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %35 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %34, i32 0, i32 2
  %36 = load i32* %35, align 4
  %37 = load %struct.xf_Mat_1_256_256_1_** %6, align 8
  %38 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %37, i32 0, i32 2
  %39 = load i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %33
  br label %44

; <label>:42                                      ; preds = %33, %25
  call void @__assert_fail(i8* getelementptr inbounds ([105 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 108, i8* getelementptr inbounds ([250 x i8]* @__PRETTY_FUNCTION__._ZL133p_ZN2xf11addWeightedILi0ELi1ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEfR3MatILi0ELi256ELi256ELi1EEffR3MatILi1ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_fS0_ffR19xf_Mat_1_256_256_1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %44

; <label>:44                                      ; preds = %43, %41
  %45 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %46 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %45, i32 0, i32 1
  %47 = load i32* %46, align 4
  %48 = icmp sle i32 %47, 256
  br i1 %48, label %49, label %55

; <label>:49                                      ; preds = %44
  %50 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %51 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %50, i32 0, i32 2
  %52 = load i32* %51, align 4
  %53 = icmp sle i32 %52, 256
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %49
  br label %57

; <label>:55                                      ; preds = %49, %44
  call void @__assert_fail(i8* getelementptr inbounds ([100 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([250 x i8]* @__PRETTY_FUNCTION__._ZL133p_ZN2xf11addWeightedILi0ELi1ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEfR3MatILi0ELi256ELi256ELi1EEffR3MatILi1ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_fS0_ffR19xf_Mat_1_256_256_1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %57

; <label>:57                                      ; preds = %56, %54
  %58 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %59 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %58, i32 0, i32 2
  %60 = load i32* %59, align 4
  %61 = ashr i32 %60, 0
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %width, align 2
  %63 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %64 = load float* %2, align 4
  %65 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %66 = load float* %4, align 4
  %67 = load float* %5, align 4
  %68 = load %struct.xf_Mat_1_256_256_1_** %6, align 8
  %69 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %70 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %69, i32 0, i32 1
  %71 = load i32* %70, align 4
  %72 = trunc i32 %71 to i16
  %73 = load i16* %width, align 2
  %74 = call i32 @_ZL167p_ZN2xf17AddWeightedKernelILi0ELi1ELi256ELi256ELi1ELi1ELi0ELi2ELi1ELi5ELi256EEER3MatILi0ELi256ELi256ELi1EEfR3MatILi0ELi256ELi256ELi1EEffR3MatILi1ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_fS0_ffR19xf_Mat_1_256_256_1_tt(%struct.xf_Mat_0_256_256_1_* %63, float %64, %struct.xf_Mat_0_256_256_1_* %65, float %66, float %67, %struct.xf_Mat_1_256_256_1_* %68, i16 zeroext %72, i16 zeroext %73)
  ret void
}

define internal void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi1ELi256ELi256ELi1EEER3MatILi1ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_1_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_1_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_Mat_1_256_256_1_*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %struct.xf_Mat_1_256_256_1_* %srcMat, %struct.xf_Mat_1_256_256_1_** %1, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %2, align 8
  %3 = load %struct.xf_Mat_1_256_256_1_** %1, align 8
  %4 = load %class.ap_uint** %2, align 8
  call void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi1ELi256ELi256ELi1EEER3MatILi1ELi256ELi256ELi1EEP7ap_uintILi256EE_1P14xf_accel_utilsR19xf_Mat_1_256_256_1_P7ap_uintILi256EE(%struct.xf_accel_utils* %au, %struct.xf_Mat_1_256_256_1_* %3, %class.ap_uint* %4)
  ret void
}

define internal void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi1ELi256ELi256ELi1EEER3MatILi1ELi256ELi256ELi1EEP7ap_uintILi256EE_1P14xf_accel_utilsR19xf_Mat_1_256_256_1_P7ap_uintILi256EE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_1_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_1_256_256_1_*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %struct.xf_Mat_1_256_256_1_* %srcMat, %struct.xf_Mat_1_256_256_1_** %2, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %3, align 8
  store i32 16, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_1_256_256_1_** %2, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_1_256_256_1_** %2, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %struct.xf_Mat_1_256_256_1_** %2, align 8
  call void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi1ELi256ELi256ELi1ELi65536EEER3MatILi1ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1P14xf_accel_utilsR19xf_Mat_1_256_256_1_RN3hls6streamI7ap_uintILi256EEEE(%struct.xf_accel_utils* %10, %struct.xf_Mat_1_256_256_1_* %11, %"class.hls::stream"* %strm)
  %12 = load %struct.xf_accel_utils** %1, align 8
  %13 = load %class.ap_uint** %3, align 8
  %14 = load i32* %rows, align 4
  %15 = load i32* %cols, align 4
  call void @_ZL123p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi16ELi4096EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEEPS4_ii(%struct.xf_accel_utils* %12, %"class.hls::stream"* %strm, %class.ap_uint* %13, i32 %14, i32 %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"*)

define internal void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi1ELi256ELi256ELi1ELi65536EEER3MatILi1ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1P14xf_accel_utilsR19xf_Mat_1_256_256_1_RN3hls6streamI7ap_uintILi256EEEE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_1_256_256_1_* %srcMat, %"class.hls::stream"* %dstStrm) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_1_256_256_1_*, align 8
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
  store %struct.xf_Mat_1_256_256_1_* %srcMat, %struct.xf_Mat_1_256_256_1_** %2, align 8
  store %"class.hls::stream"* %dstStrm, %"class.hls::stream"** %3, align 8
  %5 = load %struct.xf_Mat_1_256_256_1_** %2, align 8
  %6 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  store i32 %7, i32* %rows, align 4
  %8 = load %struct.xf_Mat_1_256_256_1_** %2, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %8, i32 0, i32 2
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
  %21 = load %struct.xf_Mat_1_256_256_1_** %2, align 8
  %22 = load i32* %i, align 4
  %23 = call i16 @_ZL36p_ZN2xf16Mat_1_256_256_1_4readIEEi_1P19xf_Mat_1_256_256_1_i(%struct.xf_Mat_1_256_256_1_* %21, i32 %22)
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

define internal i16 @_ZL36p_ZN2xf16Mat_1_256_256_1_4readIEEi_1P19xf_Mat_1_256_256_1_i(%struct.xf_Mat_1_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.1, align 1
  %2 = alloca %struct.xf_Mat_1_256_256_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_1_256_256_1_* %this_, %struct.xf_Mat_1_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_1_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %6, i32 0, i32 4
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

define internal i32 @_ZL167p_ZN2xf17AddWeightedKernelILi0ELi1ELi256ELi256ELi1ELi1ELi0ELi2ELi1ELi5ELi256EEER3MatILi0ELi256ELi256ELi1EEfR3MatILi0ELi256ELi256ELi1EEffR3MatILi1ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_fS0_ffR19xf_Mat_1_256_256_1_tt(%struct.xf_Mat_0_256_256_1_* %src1, float %alpha, %struct.xf_Mat_0_256_256_1_* %src2, float %beta, float %gama, %struct.xf_Mat_1_256_256_1_* %dst, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca float, align 4
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca %struct.xf_Mat_1_256_256_1_*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %i = alloca %class.ap_uint.2, align 1
  %j = alloca %class.ap_uint.2, align 1
  %k = alloca %class.ap_uint.2, align 1
  %l = alloca %class.ap_uint.2, align 1
  %temp = alloca %class.ap_uint.3, align 1
  %temp1 = alloca %class.ap_uint.3, align 1
  %temp2 = alloca %class.ap_uint.3, align 1
  %STEP = alloca i32, align 4
  %pxl_pack_out = alloca %class.ap_uint.1, align 1
  %pxl_pack1 = alloca %class.ap_uint.0, align 1
  %pxl_pack2 = alloca %class.ap_uint.0, align 1
  %9 = alloca %class.ap_uint.2, align 1
  %10 = alloca %class.ap_uint.2, align 1
  %11 = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.2, align 1
  %13 = alloca %class.ap_uint.2, align 1
  %14 = alloca %class.ap_int, align 1
  %15 = alloca %class.ap_uint.0, align 1
  %16 = alloca %class.ap_uint.2, align 1
  %17 = alloca %class.ap_uint.2, align 1
  %18 = alloca %class.ap_int, align 1
  %19 = alloca %class.ap_uint.2, align 1
  %_in_k = alloca %class.ap_uint.2, align 1
  %20 = alloca %class.ap_uint.2, align 1
  %pxl1 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.2, align 1
  %pxl2 = alloca %class.ap_uint.0, align 1
  %22 = alloca %class.ap_uint.2, align 1
  %firstcmp = alloca %class.ap_uint.4, align 1
  %23 = alloca %class.ap_int.5, align 1
  %24 = alloca %class.ap_uint.0, align 1
  %25 = alloca %class.ap_uint.3, align 1
  %26 = alloca i24
  %secondcmp = alloca %class.ap_uint.4, align 1
  %27 = alloca %class.ap_int.5, align 1
  %28 = alloca %class.ap_uint.0, align 1
  %29 = alloca %class.ap_uint.3, align 1
  %30 = alloca i24
  %t = alloca %class.ap_uint.1, align 1
  %31 = alloca %class.ap_int.6, align 1
  %32 = alloca %class.ap_int.6, align 1
  %33 = alloca %class.ap_int.7, align 1
  %34 = alloca %class.ap_uint.4, align 1
  %35 = alloca %class.ap_uint.4, align 1
  %36 = alloca i40
  %37 = alloca i40
  %38 = alloca { i64, i16 }
  %39 = alloca %class.ap_uint.3, align 1
  %40 = alloca { i64, i16 }
  %41 = alloca i24
  %42 = alloca { i64, i40 }
  %43 = alloca { i64, i40 }
  %44 = alloca { i64, i40 }
  %45 = alloca %class.ap_uint.2, align 1
  %46 = alloca %class.ap_uint.2, align 1
  %47 = alloca %class.ap_uint.2, align 1
  %48 = alloca %class.ap_uint.2, align 1
  %49 = alloca %class.ap_uint.2, align 1
  %50 = alloca %class.ap_int, align 1
  %51 = alloca %class.ap_uint.1, align 1
  %52 = alloca %class.ap_uint.2, align 1
  %53 = alloca %class.ap_uint.2, align 1
  store %struct.xf_Mat_0_256_256_1_* %src1, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store float %alpha, float* %2, align 4
  store %struct.xf_Mat_0_256_256_1_* %src2, %struct.xf_Mat_0_256_256_1_** %3, align 8
  store float %beta, float* %4, align 4
  store float %gama, float* %5, align 4
  store %struct.xf_Mat_1_256_256_1_* %dst, %struct.xf_Mat_1_256_256_1_** %6, align 8
  store i16 %height, i16* %7, align 2
  store i16 %width, i16* %8, align 2
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %i)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %j)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %k)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %l)
  %54 = load float* %2, align 4
  %55 = fmul float %54, 8.388608e+06
  call void @_ZN7ap_uintILi24EEC1Ef(%class.ap_uint.3* %temp, float %55)
  %56 = load float* %4, align 4
  %57 = fmul float %56, 8.388608e+06
  call void @_ZN7ap_uintILi24EEC1Ef(%class.ap_uint.3* %temp1, float %57)
  %58 = load float* %5, align 4
  %59 = fmul float %58, 8.388608e+06
  call void @_ZN7ap_uintILi24EEC1Ef(%class.ap_uint.3* %temp2, float %59)
  store i32 8, i32* %STEP, align 4
  call void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.1* %pxl_pack_out)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %pxl_pack1)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %pxl_pack2)
  br label %60

; <label>:60                                      ; preds = %0
  %61 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %i, i32 0)
  br label %62

; <label>:62                                      ; preds = %266, %60
  %63 = bitcast %class.ap_uint.2* %9 to i8*
  %64 = bitcast %class.ap_uint.2* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 2, i32 1, i1 false)
  %65 = load i16* %7, align 2
  %66 = getelementptr %class.ap_uint.2* %9, i32 0, i32 0
  %67 = bitcast [2 x i8]* %66 to i16*
  %68 = load i16* %67, align 1
  %69 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %68, i16 zeroext %65)
  br i1 %69, label %70, label %270

; <label>:70                                      ; preds = %62
  br label %71

; <label>:71                                      ; preds = %70
  %72 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %j, i32 0)
  br label %73

; <label>:73                                      ; preds = %261, %71
  %74 = bitcast %class.ap_uint.2* %10 to i8*
  %75 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 2, i32 1, i1 false)
  %76 = load i16* %8, align 2
  %77 = getelementptr %class.ap_uint.2* %10, i32 0, i32 0
  %78 = bitcast [2 x i8]* %77 to i16*
  %79 = load i16* %78, align 1
  %80 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %79, i16 zeroext %76)
  br i1 %80, label %81, label %265

; <label>:81                                      ; preds = %73
  %82 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %83 = load i16* %8, align 2
  %84 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.2* %i, i16 zeroext %83)
  %85 = getelementptr %class.ap_uint.2* %12, i32 0, i32 0
  %86 = bitcast [2 x i8]* %85 to i16*
  store i16 %84, i16* %86, align 1
  %87 = bitcast %class.ap_uint.2* %13 to i8*
  %88 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 2, i32 1, i1 false)
  %89 = getelementptr %class.ap_uint.2* %12, i32 0, i32 0
  %90 = bitcast [2 x i8]* %89 to i16*
  %91 = load i16* %90, align 1
  %92 = getelementptr %class.ap_uint.2* %13, i32 0, i32 0
  %93 = bitcast [2 x i8]* %92 to i16*
  %94 = load i16* %93, align 1
  %95 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %91, i16 %94)
  %96 = getelementptr %class.ap_int* %14, i32 0, i32 0
  %97 = bitcast [4 x i8]* %96 to i32*
  store i32 %95, i32* %97, align 1
  %98 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %14)
  %99 = trunc i64 %98 to i32
  %100 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %82, i32 %99)
  %101 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %102 = bitcast [1 x i8]* %101 to i8*
  store i8 %100, i8* %102, align 1
  %103 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %pxl_pack1, %class.ap_uint.0* %11)
  %104 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %105 = load i16* %8, align 2
  %106 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.2* %i, i16 zeroext %105)
  %107 = getelementptr %class.ap_uint.2* %16, i32 0, i32 0
  %108 = bitcast [2 x i8]* %107 to i16*
  store i16 %106, i16* %108, align 1
  %109 = bitcast %class.ap_uint.2* %17 to i8*
  %110 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 2, i32 1, i1 false)
  %111 = getelementptr %class.ap_uint.2* %16, i32 0, i32 0
  %112 = bitcast [2 x i8]* %111 to i16*
  %113 = load i16* %112, align 1
  %114 = getelementptr %class.ap_uint.2* %17, i32 0, i32 0
  %115 = bitcast [2 x i8]* %114 to i16*
  %116 = load i16* %115, align 1
  %117 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %113, i16 %116)
  %118 = getelementptr %class.ap_int* %18, i32 0, i32 0
  %119 = bitcast [4 x i8]* %118 to i32*
  store i32 %117, i32* %119, align 1
  %120 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %18)
  %121 = trunc i64 %120 to i32
  %122 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %104, i32 %121)
  %123 = getelementptr %class.ap_uint.0* %15, i32 0, i32 0
  %124 = bitcast [1 x i8]* %123 to i8*
  store i8 %122, i8* %124, align 1
  %125 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %pxl_pack2, %class.ap_uint.0* %15)
  %126 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %l, i32 0)
  br label %127

; <label>:127                                     ; preds = %81
  %128 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %k, i32 0)
  br label %129

; <label>:129                                     ; preds = %232, %127
  %130 = bitcast %class.ap_uint.2* %19 to i8*
  %131 = bitcast %class.ap_uint.2* %k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 2, i32 1, i1 false)
  %132 = getelementptr %class.ap_uint.2* %19, i32 0, i32 0
  %133 = bitcast [2 x i8]* %132 to i16*
  %134 = load i16* %133, align 1
  %135 = call zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16 %134, i64 0)
  br i1 %135, label %136, label %236

; <label>:136                                     ; preds = %129
  %137 = call i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64 8, %class.ap_uint.2* %k)
  %138 = getelementptr %class.ap_uint.2* %20, i32 0, i32 0
  %139 = bitcast [2 x i8]* %138 to i16*
  store i16 %137, i16* %139, align 1
  %140 = call i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.2* %20)
  %141 = getelementptr %class.ap_uint.2* %_in_k, i32 0, i32 0
  %142 = bitcast [2 x i8]* %141 to i16*
  store i16 %140, i16* %142, align 1
  %143 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %_in_k, i32 7)
  %144 = getelementptr %class.ap_uint.2* %21, i32 0, i32 0
  %145 = bitcast [2 x i8]* %144 to i16*
  store i16 %143, i16* %145, align 1
  %146 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %pxl_pack1, %class.ap_uint.2* %21, %class.ap_uint.2* %_in_k)
  %147 = load i64* %146
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %pxl1, i64 %147)
  %148 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %_in_k, i32 7)
  %149 = getelementptr %class.ap_uint.2* %22, i32 0, i32 0
  %150 = bitcast [2 x i8]* %149 to i16*
  store i16 %148, i16* %150, align 1
  %151 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %pxl_pack2, %class.ap_uint.2* %22, %class.ap_uint.2* %_in_k)
  %152 = load i64* %151
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %pxl2, i64 %152)
  %153 = bitcast %class.ap_uint.0* %24 to i8*
  %154 = bitcast %class.ap_uint.0* %pxl1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %153, i8* %154, i64 1, i32 1, i1 false)
  %155 = bitcast %class.ap_uint.3* %25 to i8*
  %156 = bitcast %class.ap_uint.3* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %155, i8* %156, i64 3, i32 1, i1 false)
  %157 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %158 = bitcast [1 x i8]* %157 to i8*
  %159 = load i8* %158, align 1
  %160 = getelementptr %class.ap_uint.3* %25, i32 0, i32 0
  %161 = bitcast i24* %26 to [3 x i8]*
  %162 = load [3 x i8]* %160
  store [3 x i8] %162, [3 x i8]* %161, align 1
  %163 = load i24* %26
  %164 = call i32 @_ZmlILi8ELi24EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %159, i24 %163)
  %165 = getelementptr %class.ap_int.5* %23, i32 0, i32 0
  %166 = bitcast [4 x i8]* %165 to i32*
  store i32 %164, i32* %166, align 1
  call void @_ZN7ap_uintILi40EEC1ILi32EEERK6ap_intIXT_EE(%class.ap_uint.4* %firstcmp, %class.ap_int.5* %23)
  %167 = bitcast %class.ap_uint.0* %28 to i8*
  %168 = bitcast %class.ap_uint.0* %pxl2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %167, i8* %168, i64 1, i32 1, i1 false)
  %169 = bitcast %class.ap_uint.3* %29 to i8*
  %170 = bitcast %class.ap_uint.3* %temp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* %170, i64 3, i32 1, i1 false)
  %171 = getelementptr %class.ap_uint.0* %28, i32 0, i32 0
  %172 = bitcast [1 x i8]* %171 to i8*
  %173 = load i8* %172, align 1
  %174 = getelementptr %class.ap_uint.3* %29, i32 0, i32 0
  %175 = bitcast i24* %30 to [3 x i8]*
  %176 = load [3 x i8]* %174
  store [3 x i8] %176, [3 x i8]* %175, align 1
  %177 = load i24* %30
  %178 = call i32 @_ZmlILi8ELi24EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %173, i24 %177)
  %179 = getelementptr %class.ap_int.5* %27, i32 0, i32 0
  %180 = bitcast [4 x i8]* %179 to i32*
  store i32 %178, i32* %180, align 1
  call void @_ZN7ap_uintILi40EEC1ILi32EEERK6ap_intIXT_EE(%class.ap_uint.4* %secondcmp, %class.ap_int.5* %27)
  %181 = bitcast %class.ap_uint.4* %34 to i8*
  %182 = bitcast %class.ap_uint.4* %firstcmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %181, i8* %182, i64 5, i32 1, i1 false)
  %183 = bitcast %class.ap_uint.4* %35 to i8*
  %184 = bitcast %class.ap_uint.4* %secondcmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %183, i8* %184, i64 5, i32 1, i1 false)
  %185 = getelementptr %class.ap_uint.4* %34, i32 0, i32 0
  %186 = bitcast i40* %36 to [5 x i8]*
  %187 = load [5 x i8]* %185
  store [5 x i8] %187, [5 x i8]* %186, align 1
  %188 = load i40* %36
  %189 = getelementptr %class.ap_uint.4* %35, i32 0, i32 0
  %190 = bitcast i40* %37 to [5 x i8]*
  %191 = load [5 x i8]* %189
  store [5 x i8] %191, [5 x i8]* %190, align 1
  %192 = load i40* %37
  %193 = call { i64, i16 } @_ZplILi40ELi40EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i40 %188, i40 %192)
  %194 = getelementptr %class.ap_int.7* %33, i32 0, i32 0
  store { i64, i16 } %193, { i64, i16 }* %38
  %195 = bitcast { i64, i16 }* %38 to [10 x i8]*
  %196 = load [10 x i8]* %195, align 1
  store [10 x i8] %196, [10 x i8]* %194
  %197 = bitcast %class.ap_uint.3* %39 to i8*
  %198 = bitcast %class.ap_uint.3* %temp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %197, i8* %198, i64 3, i32 1, i1 false)
  %199 = bitcast { i64, i16 }* %40 to i8*
  %200 = bitcast %class.ap_int.7* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %199, i8* %200, i64 10, i32 0, i1 false)
  %201 = getelementptr { i64, i16 }* %40, i32 0, i32 0
  %202 = load i64* %201, align 1
  %203 = getelementptr { i64, i16 }* %40, i32 0, i32 1
  %204 = load i16* %203, align 1
  %205 = getelementptr %class.ap_uint.3* %39, i32 0, i32 0
  %206 = bitcast i24* %41 to [3 x i8]*
  %207 = load [3 x i8]* %205
  store [3 x i8] %207, [3 x i8]* %206, align 1
  %208 = load i24* %41
  %209 = call { i64, i40 } @_ZplILi80ELi24EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i64 %202, i16 %204, i24 %208)
  %210 = getelementptr %class.ap_int.6* %32, i32 0, i32 0
  store { i64, i40 } %209, { i64, i40 }* %42
  %211 = bitcast { i64, i40 }* %42 to [13 x i8]*
  %212 = load [13 x i8]* %211, align 1
  store [13 x i8] %212, [13 x i8]* %210
  %213 = bitcast { i64, i40 }* %43 to i8*
  %214 = bitcast %class.ap_int.6* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %213, i8* %214, i64 13, i32 0, i1 false)
  %215 = getelementptr { i64, i40 }* %43, i32 0, i32 0
  %216 = load i64* %215, align 1
  %217 = getelementptr { i64, i40 }* %43, i32 0, i32 1
  %218 = load i40* %217, align 1
  %219 = call { i64, i40 } @_ZrsILi104EE6ap_intIXT_EES1_i(i64 %216, i40 %218, i32 23)
  %220 = getelementptr %class.ap_int.6* %31, i32 0, i32 0
  store { i64, i40 } %219, { i64, i40 }* %44
  %221 = bitcast { i64, i40 }* %44 to [13 x i8]*
  %222 = load [13 x i8]* %221, align 1
  store [13 x i8] %222, [13 x i8]* %220
  call void @_ZN7ap_uintILi16EEC1ILi104EEERK6ap_intIXT_EE(%class.ap_uint.1* %t, %class.ap_int.6* %31)
  %223 = call i64 @_ZNK7ap_uintILi16EEcvmEv(%class.ap_uint.1* %t)
  %224 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %l, i32 16)
  %225 = getelementptr %class.ap_uint.2* %46, i32 0, i32 0
  %226 = bitcast [2 x i8]* %225 to i16*
  store i16 %224, i16* %226, align 1
  %227 = call i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %46, i32 1)
  %228 = getelementptr %class.ap_uint.2* %45, i32 0, i32 0
  %229 = bitcast [2 x i8]* %228 to i16*
  store i16 %227, i16* %229, align 1
  %230 = call i64* @_ZN7ap_uintILi16EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.1* %pxl_pack_out, %class.ap_uint.2* %45, %class.ap_uint.2* %l)
  store i64 %223, i64* %230
  %231 = call %class.ap_uint.2* @_ZpLILi13EER7ap_uintIXT_EES2_i(%class.ap_uint.2* %l, i32 16)
  br label %232

; <label>:232                                     ; preds = %136
  %233 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %k, i32 0)
  %234 = getelementptr %class.ap_uint.2* %47, i32 0, i32 0
  %235 = bitcast [2 x i8]* %234 to i16*
  store i16 %233, i16* %235, align 1
  br label %129

; <label>:236                                     ; preds = %129
  %237 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.2* %k, i64 8)
  %238 = load %struct.xf_Mat_1_256_256_1_** %6, align 8
  %239 = load i16* %8, align 2
  %240 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.2* %i, i16 zeroext %239)
  %241 = getelementptr %class.ap_uint.2* %48, i32 0, i32 0
  %242 = bitcast [2 x i8]* %241 to i16*
  store i16 %240, i16* %242, align 1
  %243 = bitcast %class.ap_uint.2* %49 to i8*
  %244 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %243, i8* %244, i64 2, i32 1, i1 false)
  %245 = getelementptr %class.ap_uint.2* %48, i32 0, i32 0
  %246 = bitcast [2 x i8]* %245 to i16*
  %247 = load i16* %246, align 1
  %248 = getelementptr %class.ap_uint.2* %49, i32 0, i32 0
  %249 = bitcast [2 x i8]* %248 to i16*
  %250 = load i16* %249, align 1
  %251 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %247, i16 %250)
  %252 = getelementptr %class.ap_int* %50, i32 0, i32 0
  %253 = bitcast [4 x i8]* %252 to i32*
  store i32 %251, i32* %253, align 1
  %254 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %50)
  %255 = trunc i64 %254 to i32
  %256 = bitcast %class.ap_uint.1* %51 to i8*
  %257 = bitcast %class.ap_uint.1* %pxl_pack_out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %256, i8* %257, i64 2, i32 1, i1 false)
  %258 = getelementptr %class.ap_uint.1* %51, i32 0, i32 0
  %259 = bitcast [2 x i8]* %258 to i16*
  %260 = load i16* %259, align 1
  call void @_ZL52p_ZN2xf16Mat_1_256_256_1_5writeIEEi7ap_uintILi16EE_1P19xf_Mat_1_256_256_1_i7ap_uintILi16EE(%struct.xf_Mat_1_256_256_1_* %238, i32 %255, i16 %260)
  br label %261

; <label>:261                                     ; preds = %236
  %262 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %j, i32 0)
  %263 = getelementptr %class.ap_uint.2* %52, i32 0, i32 0
  %264 = bitcast [2 x i8]* %263 to i16*
  store i16 %262, i16* %264, align 1
  br label %73

; <label>:265                                     ; preds = %73
  br label %266

; <label>:266                                     ; preds = %265
  %267 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %i, i32 0)
  %268 = getelementptr %class.ap_uint.2* %53, i32 0, i32 0
  %269 = bitcast [2 x i8]* %268 to i16*
  store i16 %267, i16* %269, align 1
  br label %62

; <label>:270                                     ; preds = %62
  ret i32 0
}

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2*)

declare void @_ZN7ap_uintILi24EEC1Ef(%class.ap_uint.3*, float)

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0*)

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2*, i32)

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

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.2*, i16 zeroext)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int*)

declare zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16, i64)

declare i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.2*)

declare i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.2*)

declare void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0*, i64)

declare i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0*, %class.ap_uint.2*, %class.ap_uint.2*)

declare i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2*, i32)

declare void @_ZN7ap_uintILi40EEC1ILi32EEERK6ap_intIXT_EE(%class.ap_uint.4*, %class.ap_int.5*)

declare i32 @_ZmlILi8ELi24EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8, i24)

declare void @_ZN7ap_uintILi16EEC1ILi104EEERK6ap_intIXT_EE(%class.ap_uint.1*, %class.ap_int.6*)

declare { i64, i40 } @_ZrsILi104EE6ap_intIXT_EES1_i(i64, i40, i32)

declare { i64, i40 } @_ZplILi80ELi24EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i64, i16, i24)

declare { i64, i16 } @_ZplILi40ELi40EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i40, i40)

declare i64* @_ZN7ap_uintILi16EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.1*, %class.ap_uint.2*, %class.ap_uint.2*)

declare i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2*, i32)

declare %class.ap_uint.2* @_ZpLILi13EER7ap_uintIXT_EES2_i(%class.ap_uint.2*, i32)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2*, i32)

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.2*, i64)

define internal void @_ZL52p_ZN2xf16Mat_1_256_256_1_5writeIEEi7ap_uintILi16EE_1P19xf_Mat_1_256_256_1_i7ap_uintILi16EE(%struct.xf_Mat_1_256_256_1_* %this_, i32 %index, i16 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_1_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.1, align 2
  store %struct.xf_Mat_1_256_256_1_* %this_, %struct.xf_Mat_1_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint.1* %val, i32 0, i32 0
  %4 = bitcast [2 x i8]* %3 to i16*
  store i16 %val.coerce, i16* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_1_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.1]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint.1* @_ZN7ap_uintILi16EEaSERKS0_(%class.ap_uint.1* %9, %class.ap_uint.1* %val)
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

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0*, i32, i32)

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

define internal void @_ZL38p_ZN2xf16Mat_1_256_256_1_4initIEEiib_1P19xf_Mat_1_256_256_1_iib(%struct.xf_Mat_1_256_256_1_* %this_, i32 %_rows, i32 %_cols, i1 zeroext %allocate) nounwind uwtable {
  %1 = alloca %struct.xf_Mat_1_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.xf_Mat_1_256_256_1_* %this_, %struct.xf_Mat_1_256_256_1_** %1, align 8
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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_1_256_256_1_4initIEEiib_1P19xf_Mat_1_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load i32* %2, align 4
  %22 = load %struct.xf_Mat_1_256_256_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32* %3, align 4
  %25 = load %struct.xf_Mat_1_256_256_1_** %1, align 8
  %26 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32* %2, align 4
  %28 = load i32* %3, align 4
  %29 = ashr i32 %28, 0
  %30 = mul nsw i32 %27, %29
  %31 = load %struct.xf_Mat_1_256_256_1_** %1, align 8
  %32 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i8* %4, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %20
  br label %36

; <label>:36                                      ; preds = %35, %20
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_1_256_256_1_C2Ev(%struct.xf_Mat_1_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_1_256_256_1_*, align 8
  store %struct.xf_Mat_1_256_256_1_* %this, %struct.xf_Mat_1_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_1_256_256_1_** %1
  %3 = getelementptr inbounds %struct.xf_Mat_1_256_256_1_* %2, i32 0, i32 4
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

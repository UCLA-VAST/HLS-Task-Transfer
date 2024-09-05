; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/magnitude_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_2_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [2 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }

@.str = private unnamed_addr constant [110 x i8] c"((_src_matx.rows <= ROWS ) && (_src_matx.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"xf_magnitude.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL131p_ZN2xf9magnitudeILi0ELi2ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE_1R19xf_Mat_2_256_256_1_S0_S0_ = private unnamed_addr constant [227 x i8] c"void p_ZN2xf9magnitudeILi0ELi2ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE_1(struct xf_Mat_2_256_256_1_ &, struct xf_Mat_2_256_256_1_ &, struct xf_Mat_2_256_256_1_ &)\00", align 1
@.str2 = private unnamed_addr constant [110 x i8] c"((_src_maty.rows <= ROWS ) && (_src_maty.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str3 = private unnamed_addr constant [121 x i8] c"((_src_matx.rows == _src_maty.rows ) && (_src_matx.cols == _src_maty.cols)) && \22Both input images should have same size\22\00", align 1
@.str4 = private unnamed_addr constant [125 x i8] c"((_src_matx.rows == _dst_mat.rows ) && (_src_matx.cols == _dst_mat.cols)) && \22Input and output image should be of same size\22\00", align 1
@.str5 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_2_256_256_1_4initIEEiib_1P19xf_Mat_2_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_2_256_256_1_4initIEEiib_1(struct xf_Mat_2_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z15magnitude_accelP7ap_uintILi256EES1_S1_ii(%class.ap_uint* %img_inp1, %class.ap_uint* %img_inp2, %class.ap_uint* %img_out, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %_src1 = alloca %struct.xf_Mat_2_256_256_1_, align 4
  %_src2 = alloca %struct.xf_Mat_2_256_256_1_, align 4
  %_dst = alloca %struct.xf_Mat_2_256_256_1_, align 4
  store %class.ap_uint* %img_inp1, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_inp2, %class.ap_uint** %2, align 8
  store %class.ap_uint* %img_out, %class.ap_uint** %3, align 8
  store i32 %rows, i32* %4, align 4
  store i32 %cols, i32* %5, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_2_256_256_1_C1Ev(%struct.xf_Mat_2_256_256_1_* %_src1)
  call void @_ZL33p_ZN2xf16Mat_2_256_256_1_C2IEEv_1P19xf_Mat_2_256_256_1_(%struct.xf_Mat_2_256_256_1_* %_src1)
  %6 = load i32* %4, align 4
  %7 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %_src1, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32* %5, align 4
  %9 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %_src1, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  call void @_ZN19xf_Mat_2_256_256_1_C1Ev(%struct.xf_Mat_2_256_256_1_* %_src2)
  call void @_ZL33p_ZN2xf16Mat_2_256_256_1_C2IEEv_1P19xf_Mat_2_256_256_1_(%struct.xf_Mat_2_256_256_1_* %_src2)
  %10 = load i32* %4, align 4
  %11 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %_src2, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32* %5, align 4
  %13 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %_src2, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  call void @_ZN19xf_Mat_2_256_256_1_C1Ev(%struct.xf_Mat_2_256_256_1_* %_dst)
  call void @_ZL33p_ZN2xf16Mat_2_256_256_1_C2IEEv_1P19xf_Mat_2_256_256_1_(%struct.xf_Mat_2_256_256_1_* %_dst)
  %14 = load i32* %4, align 4
  %15 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %_dst, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32* %5, align 4
  %17 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %_dst, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi2ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi2ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_2_256_256_1_(%class.ap_uint* %18, %struct.xf_Mat_2_256_256_1_* %_src1)
  %19 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi2ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi2ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_2_256_256_1_(%class.ap_uint* %19, %struct.xf_Mat_2_256_256_1_* %_src2)
  call void @_ZL131p_ZN2xf9magnitudeILi0ELi2ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE_1R19xf_Mat_2_256_256_1_S0_S0_(%struct.xf_Mat_2_256_256_1_* %_src1, %struct.xf_Mat_2_256_256_1_* %_src2, %struct.xf_Mat_2_256_256_1_* %_dst)
  %20 = load %class.ap_uint** %3, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_2_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_2_256_256_1_* %_dst, %class.ap_uint* %20)
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

define internal void @_ZL95p_ZN2xf11Array2xfMatILi256ELi2ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi2ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_2_256_256_1_(%class.ap_uint* %srcPtr, %struct.xf_Mat_2_256_256_1_* %dstMat) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %class.ap_uint* %srcPtr, %class.ap_uint** %1, align 8
  store %struct.xf_Mat_2_256_256_1_* %dstMat, %struct.xf_Mat_2_256_256_1_** %2, align 8
  %3 = load %class.ap_uint** %1, align 8
  %4 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  call void @_ZL108p_ZN2xf11accel_utils11Array2xfMatILi256ELi2ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi2ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi256EER19xf_Mat_2_256_256_1_(%struct.xf_accel_utils* %au, %class.ap_uint* %3, %struct.xf_Mat_2_256_256_1_* %4)
  ret void
}

define internal void @_ZL131p_ZN2xf9magnitudeILi0ELi2ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE_1R19xf_Mat_2_256_256_1_S0_S0_(%struct.xf_Mat_2_256_256_1_* %_src_matx, %struct.xf_Mat_2_256_256_1_* %_src_maty, %struct.xf_Mat_2_256_256_1_* %_dst_mat) uwtable {
  %1 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %imgwidth = alloca i16, align 2
  %height = alloca i16, align 2
  store %struct.xf_Mat_2_256_256_1_* %_src_matx, %struct.xf_Mat_2_256_256_1_** %1, align 8
  store %struct.xf_Mat_2_256_256_1_* %_src_maty, %struct.xf_Mat_2_256_256_1_** %2, align 8
  store %struct.xf_Mat_2_256_256_1_* %_dst_mat, %struct.xf_Mat_2_256_256_1_** %3, align 8
  %4 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = icmp sle i32 %6, 256
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %0
  %9 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %9, i32 0, i32 2
  %11 = load i32* %10, align 4
  %12 = icmp sle i32 %11, 256
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %8
  br label %16

; <label>:14                                      ; preds = %8, %0
  call void @__assert_fail(i8* getelementptr inbounds ([110 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0), i32 142, i8* getelementptr inbounds ([227 x i8]* @__PRETTY_FUNCTION__._ZL131p_ZN2xf9magnitudeILi0ELi2ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE_1R19xf_Mat_2_256_256_1_S0_S0_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %18 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %17, i32 0, i32 1
  %19 = load i32* %18, align 4
  %20 = icmp sle i32 %19, 256
  br i1 %20, label %21, label %27

; <label>:21                                      ; preds = %16
  %22 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %22, i32 0, i32 2
  %24 = load i32* %23, align 4
  %25 = icmp sle i32 %24, 256
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %21
  br label %29

; <label>:27                                      ; preds = %21, %16
  call void @__assert_fail(i8* getelementptr inbounds ([110 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0), i32 143, i8* getelementptr inbounds ([227 x i8]* @__PRETTY_FUNCTION__._ZL131p_ZN2xf9magnitudeILi0ELi2ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE_1R19xf_Mat_2_256_256_1_S0_S0_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %29

; <label>:29                                      ; preds = %28, %26
  %30 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %31 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %30, i32 0, i32 1
  %32 = load i32* %31, align 4
  %33 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %34 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %33, i32 0, i32 1
  %35 = load i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %46

; <label>:37                                      ; preds = %29
  %38 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %39 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %38, i32 0, i32 2
  %40 = load i32* %39, align 4
  %41 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %42 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %41, i32 0, i32 2
  %43 = load i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %37
  br label %48

; <label>:46                                      ; preds = %37, %29
  call void @__assert_fail(i8* getelementptr inbounds ([121 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0), i32 144, i8* getelementptr inbounds ([227 x i8]* @__PRETTY_FUNCTION__._ZL131p_ZN2xf9magnitudeILi0ELi2ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE_1R19xf_Mat_2_256_256_1_S0_S0_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %48

; <label>:48                                      ; preds = %47, %45
  %49 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %50 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %49, i32 0, i32 1
  %51 = load i32* %50, align 4
  %52 = load %struct.xf_Mat_2_256_256_1_** %3, align 8
  %53 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %52, i32 0, i32 1
  %54 = load i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %65

; <label>:56                                      ; preds = %48
  %57 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %58 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %57, i32 0, i32 2
  %59 = load i32* %58, align 4
  %60 = load %struct.xf_Mat_2_256_256_1_** %3, align 8
  %61 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %60, i32 0, i32 2
  %62 = load i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %56
  br label %67

; <label>:65                                      ; preds = %56, %48
  call void @__assert_fail(i8* getelementptr inbounds ([125 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([227 x i8]* @__PRETTY_FUNCTION__._ZL131p_ZN2xf9magnitudeILi0ELi2ELi2ELi256ELi256ELi1EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EE_1R19xf_Mat_2_256_256_1_S0_S0_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %67

; <label>:67                                      ; preds = %66, %64
  %68 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %69 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %68, i32 0, i32 2
  %70 = load i32* %69, align 4
  %71 = ashr i32 %70, 0
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %imgwidth, align 2
  %73 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %74 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %73, i32 0, i32 1
  %75 = load i32* %74, align 4
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %height, align 2
  %77 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %78 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %79 = load %struct.xf_Mat_2_256_256_1_** %3, align 8
  call void @_ZL163p_ZN2xf17xFMagnitudeKernelILi2ELi2ELi256ELi256ELi3ELi3ELi1ELi5ELi5ELi256EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EEiRtRt_1R19xf_Mat_2_256_256_1_S0_S0_iRtS1_(%struct.xf_Mat_2_256_256_1_* %77, %struct.xf_Mat_2_256_256_1_* %78, %struct.xf_Mat_2_256_256_1_* %79, i32 0, i16* %height, i16* %imgwidth)
  ret void
}

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
  %in = alloca %class.ap_uint.0, align 1
  %i = alloca i32, align 4
  %4 = alloca %class.ap_uint.0, align 1
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
  call void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.0* %in)
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
  %24 = getelementptr %class.ap_uint.0* %4, i32 0, i32 0
  %25 = bitcast [2 x i8]* %24 to i16*
  store i16 %23, i16* %25, align 1
  %26 = call %class.ap_uint.0* @_ZN7ap_uintILi16EEaSERKS0_(%class.ap_uint.0* %in, %class.ap_uint.0* %4)
  %27 = load i32* %bits_to_add, align 4
  %28 = icmp sle i32 %27, 16
  br i1 %28, label %29, label %52

; <label>:29                                      ; preds = %20
  %30 = load i32* %bits_to_add, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.0* %in, i32 %31, i32 0)
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
  %42 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.0* %in, i32 15, i32 %41)
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
  %53 = call i64 @_ZNK7ap_uintILi16EEcvmEv(%class.ap_uint.0* %in)
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

declare void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.0*)

declare %class.ap_uint.0* @_ZN7ap_uintILi16EEaSERKS0_(%class.ap_uint.0*, %class.ap_uint.0*)

define internal i16 @_ZL36p_ZN2xf16Mat_2_256_256_1_4readIEEi_1P19xf_Mat_2_256_256_1_i(%struct.xf_Mat_2_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.0, align 1
  %2 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_2_256_256_1_* %this_, %struct.xf_Mat_2_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %6, i32 0, i32 4
  %8 = getelementptr inbounds [65536 x %class.ap_uint.0]* %7, i32 0, i64 %5
  %9 = bitcast %class.ap_uint.0* %1 to i8*
  %10 = bitcast %class.ap_uint.0* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 2, i32 1, i1 false)
  %11 = getelementptr %class.ap_uint.0* %1, i32 0, i32 0
  %12 = bitcast [2 x i8]* %11 to i16*
  %13 = load i16* %12, align 1
  ret i16 %13
}

declare i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.0*, i32, i32)

declare i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

declare i64 @_ZNK7ap_uintILi16EEcvmEv(%class.ap_uint.0*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL163p_ZN2xf17xFMagnitudeKernelILi2ELi2ELi256ELi256ELi3ELi3ELi1ELi5ELi5ELi256EEER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EER3MatILi2ELi256ELi256ELi1EEiRtRt_1R19xf_Mat_2_256_256_1_S0_S0_iRtS1_(%struct.xf_Mat_2_256_256_1_* %_src1, %struct.xf_Mat_2_256_256_1_* %_src2, %struct.xf_Mat_2_256_256_1_* %_dst_mat, i32 %_norm_type, i16* %imgheight, i16* %imgwidth) uwtable {
  %1 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %val_src1 = alloca %class.ap_uint.0, align 1
  %val_src2 = alloca %class.ap_uint.0, align 1
  %val_dst = alloca %class.ap_uint.0, align 1
  %tempgx = alloca i32, align 4
  %tempgy = alloca i32, align 4
  %result_temp = alloca i32, align 4
  %p = alloca i16, align 2
  %q = alloca i16, align 2
  %result = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %7 = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint.0, align 1
  %proc_loop = alloca i32, align 4
  %step = alloca i32, align 4
  %k = alloca i32, align 4
  %_in_k = alloca i32, align 4
  %tmp = alloca i16, align 2
  %tmp1 = alloca i32, align 4
  %9 = alloca %class.ap_uint.0, align 1
  store %struct.xf_Mat_2_256_256_1_* %_src1, %struct.xf_Mat_2_256_256_1_** %1, align 8
  store %struct.xf_Mat_2_256_256_1_* %_src2, %struct.xf_Mat_2_256_256_1_** %2, align 8
  store %struct.xf_Mat_2_256_256_1_* %_dst_mat, %struct.xf_Mat_2_256_256_1_** %3, align 8
  store i32 %_norm_type, i32* %4, align 4
  store i16* %imgheight, i16** %5, align 8
  store i16* %imgwidth, i16** %6, align 8
  call void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.0* %val_src1)
  call void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.0* %val_src2)
  call void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.0* %val_dst)
  store i32 0, i32* %result_temp, align 4
  br label %10

; <label>:10                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %164, %10
  %12 = load i32* %i, align 4
  %13 = load i16** %5, align 8
  %14 = load i16* %13, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %167

; <label>:17                                      ; preds = %11
  br label %18

; <label>:18                                      ; preds = %17
  store i32 0, i32* %j, align 4
  br label %19

; <label>:19                                      ; preds = %160, %18
  %20 = load i32* %j, align 4
  %21 = load i16** %6, align 8
  %22 = load i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %163

; <label>:25                                      ; preds = %19
  %26 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %27 = load i32* %i, align 4
  %28 = load i16** %6, align 8
  %29 = load i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = mul nsw i32 %27, %30
  %32 = load i32* %j, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i16 @_ZL36p_ZN2xf16Mat_2_256_256_1_4readIEEi_1P19xf_Mat_2_256_256_1_i(%struct.xf_Mat_2_256_256_1_* %26, i32 %33)
  %35 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %36 = bitcast [2 x i8]* %35 to i16*
  store i16 %34, i16* %36, align 1
  %37 = call %class.ap_uint.0* @_ZN7ap_uintILi16EEaSERKS0_(%class.ap_uint.0* %val_src1, %class.ap_uint.0* %7)
  %38 = load %struct.xf_Mat_2_256_256_1_** %2, align 8
  %39 = load i32* %i, align 4
  %40 = load i16** %6, align 8
  %41 = load i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = mul nsw i32 %39, %42
  %44 = load i32* %j, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i16 @_ZL36p_ZN2xf16Mat_2_256_256_1_4readIEEi_1P19xf_Mat_2_256_256_1_i(%struct.xf_Mat_2_256_256_1_* %38, i32 %45)
  %47 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %48 = bitcast [2 x i8]* %47 to i16*
  store i16 %46, i16* %48, align 1
  %49 = call %class.ap_uint.0* @_ZN7ap_uintILi16EEaSERKS0_(%class.ap_uint.0* %val_src2, %class.ap_uint.0* %8)
  store i32 16, i32* %proc_loop, align 4
  store i32 16, i32* %step, align 4
  br label %50

; <label>:50                                      ; preds = %25
  store i32 0, i32* %k, align 4
  br label %51

; <label>:51                                      ; preds = %143, %50
  %52 = load i32* %k, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %146

; <label>:54                                      ; preds = %51
  %55 = load i32* %k, align 4
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 16, %56
  %58 = add nsw i64 0, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %_in_k, align 4
  %60 = load i32* %_in_k, align 4
  %61 = load i32* %step, align 4
  %62 = sub nsw i32 %61, 1
  %63 = add nsw i32 %60, %62
  %64 = load i32* %_in_k, align 4
  %65 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.0* %val_src1, i32 %63, i32 %64)
  %66 = load i64* %65
  %67 = trunc i64 %66 to i16
  store i16 %67, i16* %p, align 2
  %68 = load i32* %_in_k, align 4
  %69 = load i32* %step, align 4
  %70 = sub nsw i32 %69, 1
  %71 = add nsw i32 %68, %70
  %72 = load i32* %_in_k, align 4
  %73 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.0* %val_src2, i32 %71, i32 %72)
  %74 = load i64* %73
  %75 = trunc i64 %74 to i16
  store i16 %75, i16* %q, align 2
  %76 = load i16* %p, align 2
  %77 = sext i16 %76 to i32
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

; <label>:79                                      ; preds = %54
  %80 = load i16* %p, align 2
  %81 = sext i16 %80 to i32
  %82 = sub nsw i32 0, %81
  br label %86

; <label>:83                                      ; preds = %54
  %84 = load i16* %p, align 2
  %85 = sext i16 %84 to i32
  br label %86

; <label>:86                                      ; preds = %83, %79
  %87 = phi i32 [ %82, %79 ], [ %85, %83 ]
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* %p, align 2
  %89 = load i16* %q, align 2
  %90 = sext i16 %89 to i32
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

; <label>:92                                      ; preds = %86
  %93 = load i16* %q, align 2
  %94 = sext i16 %93 to i32
  %95 = sub nsw i32 0, %94
  br label %99

; <label>:96                                      ; preds = %86
  %97 = load i16* %q, align 2
  %98 = sext i16 %97 to i32
  br label %99

; <label>:99                                      ; preds = %96, %92
  %100 = phi i32 [ %95, %92 ], [ %98, %96 ]
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %q, align 2
  %102 = load i32* %4, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %112

; <label>:104                                     ; preds = %99
  %105 = load i16* %p, align 2
  %106 = sext i16 %105 to i32
  %107 = load i16* %q, align 2
  %108 = sext i16 %107 to i32
  %109 = add nsw i32 %106, %108
  %110 = trunc i32 %109 to i16
  store i16 %110, i16* %tmp, align 2
  %111 = load i16* %tmp, align 2
  store i16 %111, i16* %result, align 2
  br label %134

; <label>:112                                     ; preds = %99
  %113 = load i32* %4, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %133

; <label>:115                                     ; preds = %112
  %116 = load i16* %p, align 2
  %117 = sext i16 %116 to i32
  %118 = load i16* %p, align 2
  %119 = sext i16 %118 to i32
  %120 = mul nsw i32 %117, %119
  store i32 %120, i32* %tempgx, align 4
  %121 = load i16* %q, align 2
  %122 = sext i16 %121 to i32
  %123 = load i16* %q, align 2
  %124 = sext i16 %123 to i32
  %125 = mul nsw i32 %122, %124
  store i32 %125, i32* %tempgy, align 4
  %126 = load i32* %tempgx, align 4
  %127 = load i32* %tempgy, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %result_temp, align 4
  %129 = load i32* %result_temp, align 4
  %130 = call i32 @_ZL14p_ZN2xf4SqrtEjj(i32 %129)
  store i32 %130, i32* %tmp1, align 4
  %131 = load i32* %tmp1, align 4
  %132 = trunc i32 %131 to i16
  store i16 %132, i16* %result, align 2
  br label %133

; <label>:133                                     ; preds = %115, %112
  br label %134

; <label>:134                                     ; preds = %133, %104
  %135 = load i16* %result, align 2
  %136 = sext i16 %135 to i64
  %137 = load i32* %_in_k, align 4
  %138 = load i32* %step, align 4
  %139 = sub nsw i32 %138, 1
  %140 = add nsw i32 %137, %139
  %141 = load i32* %_in_k, align 4
  %142 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.0* %val_dst, i32 %140, i32 %141)
  store i64 %136, i64* %142
  br label %143

; <label>:143                                     ; preds = %134
  %144 = load i32* %k, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %k, align 4
  br label %51

; <label>:146                                     ; preds = %51
  %147 = load %struct.xf_Mat_2_256_256_1_** %3, align 8
  %148 = load i32* %i, align 4
  %149 = load i16** %6, align 8
  %150 = load i16* %149, align 2
  %151 = zext i16 %150 to i32
  %152 = mul nsw i32 %148, %151
  %153 = load i32* %j, align 4
  %154 = add nsw i32 %152, %153
  %155 = bitcast %class.ap_uint.0* %9 to i8*
  %156 = bitcast %class.ap_uint.0* %val_dst to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %155, i8* %156, i64 2, i32 1, i1 false)
  %157 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %158 = bitcast [2 x i8]* %157 to i16*
  %159 = load i16* %158, align 1
  call void @_ZL52p_ZN2xf16Mat_2_256_256_1_5writeIEEi7ap_uintILi16EE_1P19xf_Mat_2_256_256_1_i7ap_uintILi16EE(%struct.xf_Mat_2_256_256_1_* %147, i32 %154, i16 %159)
  br label %160

; <label>:160                                     ; preds = %146
  %161 = load i32* %j, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %j, align 4
  br label %19

; <label>:163                                     ; preds = %19
  br label %164

; <label>:164                                     ; preds = %163
  %165 = load i32* %i, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %i, align 4
  br label %11

; <label>:167                                     ; preds = %11
  ret void
}

define internal i32 @_ZL14p_ZN2xf4SqrtEjj(i32 %D) nounwind uwtable {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %Q = alloca i16, align 2
  %R = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmpQ = alloca i32, align 4
  %tmpR = alloca i32, align 4
  %_in_i = alloca i32, align 4
  store i32 %D, i32* %1, align 4
  store i32 0, i32* %R, align 4
  store i16 0, i16* %Q, align 2
  store i32 0, i32* %tmp, align 4
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %74, %0
  %3 = load i32* %i, align 4
  %4 = icmp sle i32 %3, 15
  br i1 %4, label %5, label %77

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4
  %7 = mul nsw i32 -1, %6
  %8 = add nsw i32 15, %7
  store i32 %8, i32* %_in_i, align 4
  %9 = load i32* %R, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %32

; <label>:11                                      ; preds = %5
  %12 = load i32* %1, align 4
  %13 = load i32* %_in_i, align 4
  %14 = load i32* %_in_i, align 4
  %15 = add nsw i32 %13, %14
  %16 = lshr i32 %12, %15
  store i32 %16, i32* %tmp, align 4
  %17 = load i32* %tmp, align 4
  %18 = and i32 %17, 3
  store i32 %18, i32* %tmp, align 4
  %19 = load i32* %R, align 4
  %20 = shl i32 %19, 2
  store i32 %20, i32* %tmpR, align 4
  %21 = load i32* %tmpR, align 4
  %22 = load i32* %tmp, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %R, align 4
  %24 = load i16* %Q, align 2
  %25 = sext i16 %24 to i32
  %26 = shl i32 %25, 2
  store i32 %26, i32* %tmpQ, align 4
  %27 = load i32* %tmpQ, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* %tmpQ, align 4
  %29 = load i32* %R, align 4
  %30 = load i32* %tmpQ, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %R, align 4
  br label %53

; <label>:32                                      ; preds = %5
  %33 = load i32* %1, align 4
  %34 = load i32* %_in_i, align 4
  %35 = load i32* %_in_i, align 4
  %36 = add nsw i32 %34, %35
  %37 = lshr i32 %33, %36
  store i32 %37, i32* %tmp, align 4
  %38 = load i32* %tmp, align 4
  %39 = and i32 %38, 3
  store i32 %39, i32* %tmp, align 4
  %40 = load i32* %R, align 4
  %41 = shl i32 %40, 2
  store i32 %41, i32* %tmpR, align 4
  %42 = load i32* %tmpR, align 4
  %43 = load i32* %tmp, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %R, align 4
  %45 = load i16* %Q, align 2
  %46 = sext i16 %45 to i32
  %47 = shl i32 %46, 2
  store i32 %47, i32* %tmpQ, align 4
  %48 = load i32* %tmpQ, align 4
  %49 = or i32 %48, 3
  store i32 %49, i32* %tmpQ, align 4
  %50 = load i32* %R, align 4
  %51 = load i32* %tmpQ, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %R, align 4
  br label %53

; <label>:53                                      ; preds = %32, %11
  %54 = load i32* %R, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %65

; <label>:56                                      ; preds = %53
  %57 = load i16* %Q, align 2
  %58 = sext i16 %57 to i32
  %59 = shl i32 %58, 1
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %Q, align 2
  %61 = load i16* %Q, align 2
  %62 = sext i16 %61 to i32
  %63 = or i32 %62, 1
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %Q, align 2
  br label %73

; <label>:65                                      ; preds = %53
  %66 = load i16* %Q, align 2
  %67 = sext i16 %66 to i32
  %68 = shl i32 %67, 1
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %Q, align 2
  %70 = load i16* %Q, align 2
  %71 = sext i16 %70 to i32
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %Q, align 2
  br label %73

; <label>:73                                      ; preds = %65, %56
  br label %74

; <label>:74                                      ; preds = %73
  %75 = load i32* %i, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %i, align 4
  br label %2

; <label>:77                                      ; preds = %2
  store i32 -1, i32* %i, align 4
  %78 = load i16* %Q, align 2
  %79 = sext i16 %78 to i32
  ret i32 %79
}

define internal void @_ZL52p_ZN2xf16Mat_2_256_256_1_5writeIEEi7ap_uintILi16EE_1P19xf_Mat_2_256_256_1_i7ap_uintILi16EE(%struct.xf_Mat_2_256_256_1_* %this_, i32 %index, i16 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.0, align 2
  store %struct.xf_Mat_2_256_256_1_* %this_, %struct.xf_Mat_2_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint.0* %val, i32 0, i32 0
  %4 = bitcast [2 x i8]* %3 to i16*
  store i16 %val.coerce, i16* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_2_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.0]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint.0* @_ZN7ap_uintILi16EEaSERKS0_(%class.ap_uint.0* %9, %class.ap_uint.0* %val)
  ret void
}

define internal void @_ZL108p_ZN2xf11accel_utils11Array2xfMatILi256ELi2ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi2ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi256EER19xf_Mat_2_256_256_1_(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %struct.xf_Mat_2_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %class.ap_uint* %srcPtr, %class.ap_uint** %2, align 8
  store %struct.xf_Mat_2_256_256_1_* %dstMat, %struct.xf_Mat_2_256_256_1_** %3, align 8
  store i32 16, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_2_256_256_1_** %3, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_2_256_256_1_** %3, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %class.ap_uint** %2, align 8
  %12 = load i32* %rows, align 4
  %13 = load i32* %cols, align 4
  call void @_ZL123p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi1ELi16ELi4096EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1P14xf_accel_utilsP7ap_uintILi256EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %10, %class.ap_uint* %11, %"class.hls::stream"* %strm, i32 %12, i32 %13)
  %14 = load %struct.xf_accel_utils** %1, align 8
  %15 = load %struct.xf_Mat_2_256_256_1_** %3, align 8
  call void @_ZL127p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi2ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi256EEER3MatILi2ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEER19xf_Mat_2_256_256_1_(%struct.xf_accel_utils* %14, %"class.hls::stream"* %strm, %struct.xf_Mat_2_256_256_1_* %15)
  ret void
}

define internal void @_ZL123p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi1ELi16ELi4096EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1P14xf_accel_utilsP7ap_uintILi256EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %"class.hls::stream"* %dstStrm, i32 %rows, i32 %cols) uwtable {
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
  store i32 16, i32* %pixel_width, align 4
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

define internal void @_ZL127p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi2ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi256EEER3MatILi2ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEER19xf_Mat_2_256_256_1_(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %struct.xf_Mat_2_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %"class.hls::stream"*, align 8
  %3 = alloca %struct.xf_Mat_2_256_256_1_*, align 8
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
  store %struct.xf_Mat_2_256_256_1_* %dstMat, %struct.xf_Mat_2_256_256_1_** %3, align 8
  %6 = load %struct.xf_Mat_2_256_256_1_** %3, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %6, i32 0, i32 1
  %8 = load i32* %7, align 4
  store i32 %8, i32* %rows, align 4
  %9 = load %struct.xf_Mat_2_256_256_1_** %3, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_2_256_256_1_* %9, i32 0, i32 2
  %11 = load i32* %10, align 4
  store i32 %11, i32* %cols, align 4
  %12 = load i32* %rows, align 4
  %13 = load i32* %cols, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 1
  store i32 %15, i32* %loop_count, align 4
  store i32 0, i32* %valid_bits, align 4
  store i32 16, i32* %N_size, align 4
  call void @_ZN7ap_uintILi256EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.0* %out)
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
  %23 = icmp slt i32 %22, 16
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
  %34 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.0* %out, i32 %33, i32 0)
  store i64 %31, i64* %34
  br label %35

; <label>:35                                      ; preds = %27, %24
  %36 = load %"class.hls::stream"** %2, align 8
  call void @_ZN3hls6streamI7ap_uintILi256EEE4readEv(%class.ap_uint* sret %4, %"class.hls::stream"* %36)
  %37 = call %class.ap_uint* @_ZN7ap_uintILi256EEaSERKS0_(%class.ap_uint* %r, %class.ap_uint* %4)
  %38 = load i32* %valid_bits, align 4
  %39 = sub nsw i32 16, %38
  %40 = sub nsw i32 %39, 1
  %41 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %40, i32 0)
  %42 = load i64* %41
  %43 = load i32* %valid_bits, align 4
  %44 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.0* %out, i32 15, i32 %43)
  store i64 %42, i64* %44
  %45 = load i32* %valid_bits, align 4
  %46 = sub nsw i32 16, %45
  %47 = sub nsw i32 256, %46
  store i32 %47, i32* %valid_bits, align 4
  br label %60

; <label>:48                                      ; preds = %21
  %49 = load i32* %valid_bits, align 4
  %50 = sub nsw i32 256, %49
  %51 = add nsw i32 %50, 16
  %52 = sub nsw i32 %51, 1
  %53 = load i32* %valid_bits, align 4
  %54 = sub nsw i32 256, %53
  %55 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %52, i32 %54)
  %56 = load i64* %55
  %57 = call %class.ap_uint.0* @_ZN7ap_uintILi16EEaSEm(%class.ap_uint.0* %out, i64 %56)
  %58 = load i32* %valid_bits, align 4
  %59 = sub nsw i32 %58, 16
  store i32 %59, i32* %valid_bits, align 4
  br label %60

; <label>:60                                      ; preds = %48, %35
  %61 = load %struct.xf_Mat_2_256_256_1_** %3, align 8
  %62 = load i32* %i, align 4
  %63 = bitcast %class.ap_uint.0* %5 to i8*
  %64 = bitcast %class.ap_uint.0* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 2, i32 1, i1 false)
  %65 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %66 = bitcast [2 x i8]* %65 to i16*
  %67 = load i16* %66, align 1
  call void @_ZL52p_ZN2xf16Mat_2_256_256_1_5writeIEEi7ap_uintILi16EE_1P19xf_Mat_2_256_256_1_i7ap_uintILi16EE(%struct.xf_Mat_2_256_256_1_* %61, i32 %62, i16 %67)
  br label %68

; <label>:68                                      ; preds = %60
  %69 = load i32* %i, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %i, align 4
  br label %17

; <label>:71                                      ; preds = %17
  ret void
}

declare %class.ap_uint.0* @_ZN7ap_uintILi16EEaSEm(%class.ap_uint.0*, i64)

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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_2_256_256_1_4initIEEiib_1P19xf_Mat_2_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
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
  %4 = getelementptr inbounds [65536 x %class.ap_uint.0]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.0* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint.0* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi16EEC1Ev(%class.ap_uint.0* %7)
  %8 = getelementptr inbounds %class.ap_uint.0* %7, i64 1
  %9 = icmp eq %class.ap_uint.0* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  ret void
}

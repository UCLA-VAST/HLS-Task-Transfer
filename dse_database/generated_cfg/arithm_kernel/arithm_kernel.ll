; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/arithm_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.1 = type { [2 x i8] }
%class.ap_int = type { [4 x i8] }
%class.ap_int.2 = type { [2 x i8] }

@.str = private unnamed_addr constant [82 x i8] c"((scale >= 0) && (scale <= 1)) && \22_scale_val must be within the range of 0 to 1\22\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"xf_arithm.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL127p_ZN2xf8multiplyILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEf_1R19xf_Mat_0_256_256_1_S0_S0_f = private unnamed_addr constant [230 x i8] c"void p_ZN2xf8multiplyILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEf_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, float)\00", align 1
@.str2 = private unnamed_addr constant [147 x i8] c"((src1.rows <= ROWS ) && (src1.cols <= COLS) && (src2.rows <= ROWS ) && (src2.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str3 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z6arithmP7ap_uintILi256EES1_S1_ii(%class.ap_uint* %img_inp1, %class.ap_uint* %img_inp2, %class.ap_uint* %img_out, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %_src1 = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %_src2 = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %_dst = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_inp1, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_inp2, %class.ap_uint** %2, align 8
  store %class.ap_uint* %img_out, %class.ap_uint** %3, align 8
  store i32 %rows, i32* %4, align 4
  store i32 %cols, i32* %5, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %_src1)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_src1)
  %6 = load i32* %4, align 4
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_src1, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32* %5, align 4
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_src1, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %_src2)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_src2)
  %10 = load i32* %4, align 4
  %11 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_src2, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32* %5, align 4
  %13 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_src2, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %_dst)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_dst)
  %14 = load i32* %4, align 4
  %15 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_dst, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32* %5, align 4
  %17 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %_dst, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %18, %struct.xf_Mat_0_256_256_1_* %_src1)
  %19 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %19, %struct.xf_Mat_0_256_256_1_* %_src2)
  call void @_ZL127p_ZN2xf8multiplyILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEf_1R19xf_Mat_0_256_256_1_S0_S0_f(%struct.xf_Mat_0_256_256_1_* %_src1, %struct.xf_Mat_0_256_256_1_* %_src2, %struct.xf_Mat_0_256_256_1_* %_dst, float 0x3FA99999A0000000)
  %20 = load %class.ap_uint** %3, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_0_256_256_1_* %_dst, %class.ap_uint* %20)
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

define internal void @_ZL127p_ZN2xf8multiplyILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEf_1R19xf_Mat_0_256_256_1_S0_S0_f(%struct.xf_Mat_0_256_256_1_* %src1, %struct.xf_Mat_0_256_256_1_* %src2, %struct.xf_Mat_0_256_256_1_* %dst, float %scale) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %4 = alloca float, align 4
  %image_width = alloca i16, align 2
  store %struct.xf_Mat_0_256_256_1_* %src1, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %src2, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %dst, %struct.xf_Mat_0_256_256_1_** %3, align 8
  store float %scale, float* %4, align 4
  %5 = load float* %4, align 4
  %6 = fcmp oge float %5, 0.000000e+00
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %0
  %8 = load float* %4, align 4
  %9 = fcmp ole float %8, 1.000000e+00
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  br label %13

; <label>:11                                      ; preds = %7, %0
  call void @__assert_fail(i8* getelementptr inbounds ([82 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i32 0, i32 0), i32 749, i8* getelementptr inbounds ([230 x i8]* @__PRETTY_FUNCTION__._ZL127p_ZN2xf8multiplyILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEf_1R19xf_Mat_0_256_256_1_S0_S0_f, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %13

; <label>:13                                      ; preds = %12, %10
  %14 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %15 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %14, i32 0, i32 1
  %16 = load i32* %15, align 4
  %17 = icmp sle i32 %16, 256
  br i1 %17, label %18, label %34

; <label>:18                                      ; preds = %13
  %19 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %20 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %19, i32 0, i32 2
  %21 = load i32* %20, align 4
  %22 = icmp sle i32 %21, 256
  br i1 %22, label %23, label %34

; <label>:23                                      ; preds = %18
  %24 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %25 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %24, i32 0, i32 1
  %26 = load i32* %25, align 4
  %27 = icmp sle i32 %26, 256
  br i1 %27, label %28, label %34

; <label>:28                                      ; preds = %23
  %29 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %30 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %29, i32 0, i32 2
  %31 = load i32* %30, align 4
  %32 = icmp sle i32 %31, 256
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %28
  br label %36

; <label>:34                                      ; preds = %28, %23, %18, %13
  call void @__assert_fail(i8* getelementptr inbounds ([147 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i32 0, i32 0), i32 750, i8* getelementptr inbounds ([230 x i8]* @__PRETTY_FUNCTION__._ZL127p_ZN2xf8multiplyILi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEf_1R19xf_Mat_0_256_256_1_S0_S0_f, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %38 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %37, i32 0, i32 2
  %39 = load i32* %38, align 4
  %40 = ashr i32 %39, 0
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %image_width, align 2
  %42 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %43 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %44 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %45 = load float* %4, align 4
  %46 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %47 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %46, i32 0, i32 1
  %48 = load i32* %47, align 4
  %49 = trunc i32 %48 to i16
  %50 = load i16* %image_width, align 2
  call void @_ZL152p_ZN2xf11xFMulKernelILi0ELi256ELi256ELi1ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEiftt_1R19xf_Mat_0_256_256_1_S0_S0_iftt(%struct.xf_Mat_0_256_256_1_* %42, %struct.xf_Mat_0_256_256_1_* %43, %struct.xf_Mat_0_256_256_1_* %44, i32 0, float %45, i16 zeroext %49, i16 zeroext %50)
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

define internal void @_ZL152p_ZN2xf11xFMulKernelILi0ELi256ELi256ELi1ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEiftt_1R19xf_Mat_0_256_256_1_S0_S0_iftt(%struct.xf_Mat_0_256_256_1_* %src1, %struct.xf_Mat_0_256_256_1_* %src2, %struct.xf_Mat_0_256_256_1_* %dst, i32 %_policytype, float %_scale_val, i16 zeroext %image_height, i16 zeroext %image_width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %STEP = alloca i32, align 4
  %i = alloca %class.ap_uint.1, align 1
  %j = alloca %class.ap_uint.1, align 1
  %k = alloca %class.ap_uint.1, align 1
  %val_src1 = alloca %class.ap_uint.0, align 1
  %val_src2 = alloca %class.ap_uint.0, align 1
  %val_dst = alloca %class.ap_uint.0, align 1
  %result = alloca %class.ap_uint.0, align 1
  %p = alloca %class.ap_uint.0, align 1
  %q = alloca %class.ap_uint.0, align 1
  %result_temp = alloca i64, align 8
  %scale_value_8 = alloca i16, align 2
  %scale_value_16 = alloca i32, align 4
  %idx = alloca i64, align 8
  %8 = alloca %class.ap_uint.1, align 1
  %9 = alloca %class.ap_uint.1, align 1
  %10 = alloca %class.ap_uint.0, align 1
  %11 = alloca %class.ap_uint.1, align 1
  %12 = alloca %class.ap_uint.1, align 1
  %13 = alloca %class.ap_int, align 1
  %14 = alloca %class.ap_uint.0, align 1
  %15 = alloca %class.ap_uint.1, align 1
  %16 = alloca %class.ap_uint.1, align 1
  %17 = alloca %class.ap_int, align 1
  %18 = alloca %class.ap_uint.1, align 1
  %_in_k = alloca %class.ap_uint.1, align 1
  %19 = alloca %class.ap_uint.1, align 1
  %20 = alloca %class.ap_uint.1, align 1
  %21 = alloca %class.ap_uint.1, align 1
  %22 = alloca %class.ap_int.2, align 1
  %23 = alloca %class.ap_uint.0, align 1
  %24 = alloca %class.ap_uint.0, align 1
  %25 = alloca %class.ap_int.2, align 1
  %26 = alloca %class.ap_uint.1, align 1
  %27 = alloca %class.ap_uint.1, align 1
  %28 = alloca %class.ap_uint.1, align 1
  %29 = alloca %class.ap_uint.1, align 1
  %30 = alloca %class.ap_int, align 1
  %31 = alloca %class.ap_uint.0, align 1
  %32 = alloca %class.ap_uint.1, align 1
  %33 = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %src1, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %src2, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %dst, %struct.xf_Mat_0_256_256_1_** %3, align 8
  store i32 %_policytype, i32* %4, align 4
  store float %_scale_val, float* %5, align 4
  store i16 %image_height, i16* %6, align 2
  store i16 %image_width, i16* %7, align 2
  store i32 8, i32* %STEP, align 4
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %i)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %j)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %k)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_src1)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_src2)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_dst)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %result)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %p)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %q)
  %34 = load float* %5, align 4
  %35 = fmul float %34, 3.276700e+04
  %36 = fptoui float %35 to i16
  store i16 %36, i16* %scale_value_8, align 2
  store i64 0, i64* %idx, align 8
  br label %37

; <label>:37                                      ; preds = %0
  %38 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %i, i32 0)
  br label %39

; <label>:39                                      ; preds = %208, %37
  %40 = bitcast %class.ap_uint.1* %8 to i8*
  %41 = bitcast %class.ap_uint.1* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 2, i32 1, i1 false)
  %42 = load i16* %6, align 2
  %43 = getelementptr %class.ap_uint.1* %8, i32 0, i32 0
  %44 = bitcast [2 x i8]* %43 to i16*
  %45 = load i16* %44, align 1
  %46 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %45, i16 zeroext %42)
  br i1 %46, label %47, label %212

; <label>:47                                      ; preds = %39
  br label %48

; <label>:48                                      ; preds = %47
  %49 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %j, i32 0)
  br label %50

; <label>:50                                      ; preds = %203, %48
  %51 = bitcast %class.ap_uint.1* %9 to i8*
  %52 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 2, i32 1, i1 false)
  %53 = load i16* %7, align 2
  %54 = getelementptr %class.ap_uint.1* %9, i32 0, i32 0
  %55 = bitcast [2 x i8]* %54 to i16*
  %56 = load i16* %55, align 1
  %57 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %56, i16 zeroext %53)
  br i1 %57, label %58, label %207

; <label>:58                                      ; preds = %50
  %59 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %60 = load i16* %7, align 2
  %61 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %i, i16 zeroext %60)
  %62 = getelementptr %class.ap_uint.1* %11, i32 0, i32 0
  %63 = bitcast [2 x i8]* %62 to i16*
  store i16 %61, i16* %63, align 1
  %64 = bitcast %class.ap_uint.1* %12 to i8*
  %65 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 2, i32 1, i1 false)
  %66 = getelementptr %class.ap_uint.1* %11, i32 0, i32 0
  %67 = bitcast [2 x i8]* %66 to i16*
  %68 = load i16* %67, align 1
  %69 = getelementptr %class.ap_uint.1* %12, i32 0, i32 0
  %70 = bitcast [2 x i8]* %69 to i16*
  %71 = load i16* %70, align 1
  %72 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %68, i16 %71)
  %73 = getelementptr %class.ap_int* %13, i32 0, i32 0
  %74 = bitcast [4 x i8]* %73 to i32*
  store i32 %72, i32* %74, align 1
  %75 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %13)
  %76 = trunc i64 %75 to i32
  %77 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %59, i32 %76)
  %78 = getelementptr %class.ap_uint.0* %10, i32 0, i32 0
  %79 = bitcast [1 x i8]* %78 to i8*
  store i8 %77, i8* %79, align 1
  %80 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val_src1, %class.ap_uint.0* %10)
  %81 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %82 = load i16* %7, align 2
  %83 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %i, i16 zeroext %82)
  %84 = getelementptr %class.ap_uint.1* %15, i32 0, i32 0
  %85 = bitcast [2 x i8]* %84 to i16*
  store i16 %83, i16* %85, align 1
  %86 = bitcast %class.ap_uint.1* %16 to i8*
  %87 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 2, i32 1, i1 false)
  %88 = getelementptr %class.ap_uint.1* %15, i32 0, i32 0
  %89 = bitcast [2 x i8]* %88 to i16*
  %90 = load i16* %89, align 1
  %91 = getelementptr %class.ap_uint.1* %16, i32 0, i32 0
  %92 = bitcast [2 x i8]* %91 to i16*
  %93 = load i16* %92, align 1
  %94 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %90, i16 %93)
  %95 = getelementptr %class.ap_int* %17, i32 0, i32 0
  %96 = bitcast [4 x i8]* %95 to i32*
  store i32 %94, i32* %96, align 1
  %97 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %17)
  %98 = trunc i64 %97 to i32
  %99 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %81, i32 %98)
  %100 = getelementptr %class.ap_uint.0* %14, i32 0, i32 0
  %101 = bitcast [1 x i8]* %100 to i8*
  store i8 %99, i8* %101, align 1
  %102 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val_src2, %class.ap_uint.0* %14)
  br label %103

; <label>:103                                     ; preds = %58
  %104 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %k, i32 0)
  br label %105

; <label>:105                                     ; preds = %174, %103
  %106 = bitcast %class.ap_uint.1* %18 to i8*
  %107 = bitcast %class.ap_uint.1* %k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 2, i32 1, i1 false)
  %108 = getelementptr %class.ap_uint.1* %18, i32 0, i32 0
  %109 = bitcast [2 x i8]* %108 to i16*
  %110 = load i16* %109, align 1
  %111 = call zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16 %110, i64 0)
  br i1 %111, label %112, label %178

; <label>:112                                     ; preds = %105
  %113 = call i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64 8, %class.ap_uint.1* %k)
  %114 = getelementptr %class.ap_uint.1* %19, i32 0, i32 0
  %115 = bitcast [2 x i8]* %114 to i16*
  store i16 %113, i16* %115, align 1
  %116 = call i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.1* %19)
  %117 = getelementptr %class.ap_uint.1* %_in_k, i32 0, i32 0
  %118 = bitcast [2 x i8]* %117 to i16*
  store i16 %116, i16* %118, align 1
  %119 = load i32* %STEP, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 %120)
  %122 = getelementptr %class.ap_uint.1* %20, i32 0, i32 0
  %123 = bitcast [2 x i8]* %122 to i16*
  store i16 %121, i16* %123, align 1
  %124 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_src1, %class.ap_uint.1* %20, %class.ap_uint.1* %_in_k)
  %125 = load i64* %124
  %126 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %p, i64 %125)
  %127 = load i32* %STEP, align 4
  %128 = sub nsw i32 %127, 1
  %129 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 %128)
  %130 = getelementptr %class.ap_uint.1* %21, i32 0, i32 0
  %131 = bitcast [2 x i8]* %130 to i16*
  store i16 %129, i16* %131, align 1
  %132 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_src2, %class.ap_uint.1* %21, %class.ap_uint.1* %_in_k)
  %133 = load i64* %132
  %134 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %q, i64 %133)
  %135 = load i16* %scale_value_8, align 2
  %136 = call i8 @_ZmlILi8EE7ap_uintIXT_EEtRKS1_(i16 zeroext %135, %class.ap_uint.0* %p)
  %137 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %138 = bitcast [1 x i8]* %137 to i8*
  store i8 %136, i8* %138, align 1
  %139 = bitcast %class.ap_uint.0* %24 to i8*
  %140 = bitcast %class.ap_uint.0* %q to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %139, i8* %140, i64 1, i32 1, i1 false)
  %141 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %142 = bitcast [1 x i8]* %141 to i8*
  %143 = load i8* %142, align 1
  %144 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %145 = bitcast [1 x i8]* %144 to i8*
  %146 = load i8* %145, align 1
  %147 = call i16 @_ZmlILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %143, i8 %146)
  %148 = getelementptr %class.ap_int.2* %22, i32 0, i32 0
  %149 = bitcast [2 x i8]* %148 to i16*
  store i16 %147, i16* %149, align 1
  %150 = getelementptr %class.ap_int.2* %22, i32 0, i32 0
  %151 = bitcast [2 x i8]* %150 to i16*
  %152 = load i16* %151, align 1
  %153 = call i16 @_ZrsILi16EE6ap_intIXT_EES1_i(i16 %152, i32 15)
  %154 = getelementptr %class.ap_int.2* %25, i32 0, i32 0
  %155 = bitcast [2 x i8]* %154 to i16*
  store i16 %153, i16* %155, align 1
  %156 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.2* %25)
  store i64 %156, i64* %result_temp, align 8
  %157 = load i32* %4, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %163

; <label>:159                                     ; preds = %112
  %160 = load i64* %result_temp, align 8
  %161 = icmp sgt i64 %160, 255
  br i1 %161, label %162, label %163

; <label>:162                                     ; preds = %159
  store i64 255, i64* %result_temp, align 8
  br label %163

; <label>:163                                     ; preds = %162, %159, %112
  %164 = load i64* %result_temp, align 8
  %165 = trunc i64 %164 to i8
  %166 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEh(%class.ap_uint.0* %result, i8 zeroext %165)
  %167 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %result)
  %168 = load i32* %STEP, align 4
  %169 = sub nsw i32 %168, 1
  %170 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %_in_k, i32 %169)
  %171 = getelementptr %class.ap_uint.1* %26, i32 0, i32 0
  %172 = bitcast [2 x i8]* %171 to i16*
  store i16 %170, i16* %172, align 1
  %173 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %val_dst, %class.ap_uint.1* %26, %class.ap_uint.1* %_in_k)
  store i64 %167, i64* %173
  br label %174

; <label>:174                                     ; preds = %163
  %175 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %k, i32 0)
  %176 = getelementptr %class.ap_uint.1* %27, i32 0, i32 0
  %177 = bitcast [2 x i8]* %176 to i16*
  store i16 %175, i16* %177, align 1
  br label %105

; <label>:178                                     ; preds = %105
  %179 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.1* %k, i64 8)
  %180 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %181 = load i16* %7, align 2
  %182 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %i, i16 zeroext %181)
  %183 = getelementptr %class.ap_uint.1* %28, i32 0, i32 0
  %184 = bitcast [2 x i8]* %183 to i16*
  store i16 %182, i16* %184, align 1
  %185 = bitcast %class.ap_uint.1* %29 to i8*
  %186 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %185, i8* %186, i64 2, i32 1, i1 false)
  %187 = getelementptr %class.ap_uint.1* %28, i32 0, i32 0
  %188 = bitcast [2 x i8]* %187 to i16*
  %189 = load i16* %188, align 1
  %190 = getelementptr %class.ap_uint.1* %29, i32 0, i32 0
  %191 = bitcast [2 x i8]* %190 to i16*
  %192 = load i16* %191, align 1
  %193 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %189, i16 %192)
  %194 = getelementptr %class.ap_int* %30, i32 0, i32 0
  %195 = bitcast [4 x i8]* %194 to i32*
  store i32 %193, i32* %195, align 1
  %196 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %30)
  %197 = trunc i64 %196 to i32
  %198 = bitcast %class.ap_uint.0* %31 to i8*
  %199 = bitcast %class.ap_uint.0* %val_dst to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %198, i8* %199, i64 1, i32 1, i1 false)
  %200 = getelementptr %class.ap_uint.0* %31, i32 0, i32 0
  %201 = bitcast [1 x i8]* %200 to i8*
  %202 = load i8* %201, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %180, i32 %197, i8 %202)
  br label %203

; <label>:203                                     ; preds = %178
  %204 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %j, i32 0)
  %205 = getelementptr %class.ap_uint.1* %32, i32 0, i32 0
  %206 = bitcast [2 x i8]* %205 to i16*
  store i16 %204, i16* %206, align 1
  br label %50

; <label>:207                                     ; preds = %50
  br label %208

; <label>:208                                     ; preds = %207
  %209 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %i, i32 0)
  %210 = getelementptr %class.ap_uint.1* %33, i32 0, i32 0
  %211 = bitcast [2 x i8]* %210 to i16*
  store i16 %209, i16* %211, align 1
  br label %39

; <label>:212                                     ; preds = %39
  ret void
}

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1*)

declare %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1*, i16 zeroext)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int*)

declare zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16, i64)

declare i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.1*)

declare i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.1*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0*, i64)

declare i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0*, %class.ap_uint.1*, %class.ap_uint.1*)

declare i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1*, i32)

declare i16 @_ZrsILi16EE6ap_intIXT_EES1_i(i16, i32)

declare i16 @_ZmlILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8, i8)

declare i8 @_ZmlILi8EE7ap_uintIXT_EEtRKS1_(i16 zeroext, %class.ap_uint.0*)

declare i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int.2*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEh(%class.ap_uint.0*, i8 zeroext)

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

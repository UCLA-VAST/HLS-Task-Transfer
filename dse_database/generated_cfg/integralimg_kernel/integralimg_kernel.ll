; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/integralimg_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_Mat_3_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.1] }
%class.ap_uint.1 = type { [4 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.2 = type { [3 x i8] }
%class.ap_uint.3 = type { [2 x i8] }
%class.ap_int = type { [4 x i8] }
%class.ap_int.4 = type { [4 x i8] }
%class.ap_int.5 = type { [7 x i8] }

@.str = private unnamed_addr constant [125 x i8] c"((_src_mat.rows <= ROWS ) && (_dst_mat.cols <= COLS)) && \22ROWS and COLS should be greater than or equal to input image size\22\00", align 1
@.str1 = private unnamed_addr constant [22 x i8] c"xf_integral_image.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL99p_ZN2xf8integralILi0ELi3ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi3ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_R19xf_Mat_3_256_256_1_ = private unnamed_addr constant [165 x i8] c"void p_ZN2xf8integralILi0ELi3ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi3ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_3_256_256_1_ &)\00", align 1
@.str2 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_3_256_256_1_4initIEEiib_1P19xf_Mat_3_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_3_256_256_1_4initIEEiib_1(struct xf_Mat_3_256_256_1_ *, int, int, bool)\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z14integral_accelP7ap_uintILi256EES1_ii(%class.ap_uint* %img_inp, %class.ap_uint* %img_out, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_3_256_256_1_, align 4
  store %class.ap_uint* %img_inp, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_out, %class.ap_uint** %2, align 8
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
  call void @_ZN19xf_Mat_3_256_256_1_C1Ev(%struct.xf_Mat_3_256_256_1_* %out_mat)
  call void @_ZL33p_ZN2xf16Mat_3_256_256_1_C2IEEv_1P19xf_Mat_3_256_256_1_(%struct.xf_Mat_3_256_256_1_* %out_mat)
  %9 = load i32* %3, align 4
  %10 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %out_mat, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32* %4, align 4
  %12 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %out_mat, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %13, %struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL99p_ZN2xf8integralILi0ELi3ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi3ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_R19xf_Mat_3_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_3_256_256_1_* %out_mat)
  %14 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi3ELi256ELi256ELi1EEER3MatILi3ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_3_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_3_256_256_1_* %out_mat, %class.ap_uint* %14)
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

define linkonce_odr void @_ZN19xf_Mat_3_256_256_1_C1Ev(%struct.xf_Mat_3_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_3_256_256_1_*, align 8
  store %struct.xf_Mat_3_256_256_1_* %this, %struct.xf_Mat_3_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_3_256_256_1_** %1
  call void @_ZN19xf_Mat_3_256_256_1_C2Ev(%struct.xf_Mat_3_256_256_1_* %2)
  ret void
}

define internal void @_ZL33p_ZN2xf16Mat_3_256_256_1_C2IEEv_1P19xf_Mat_3_256_256_1_(%struct.xf_Mat_3_256_256_1_* %this_) uwtable {
  %1 = alloca %struct.xf_Mat_3_256_256_1_*, align 8
  store %struct.xf_Mat_3_256_256_1_* %this_, %struct.xf_Mat_3_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_3_256_256_1_** %1, align 8
  call void @_ZL38p_ZN2xf16Mat_3_256_256_1_4initIEEiib_1P19xf_Mat_3_256_256_1_iib(%struct.xf_Mat_3_256_256_1_* %2, i32 256, i32 256, i1 zeroext true)
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

define internal void @_ZL99p_ZN2xf8integralILi0ELi3ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi3ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_R19xf_Mat_3_256_256_1_(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_3_256_256_1_* %_dst_mat) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_3_256_256_1_*, align 8
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_3_256_256_1_* %_dst_mat, %struct.xf_Mat_3_256_256_1_** %2, align 8
  %3 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %4 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %3, i32 0, i32 1
  %5 = load i32* %4, align 4
  %6 = icmp sle i32 %5, 256
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load %struct.xf_Mat_3_256_256_1_** %2, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %8, i32 0, i32 2
  %10 = load i32* %9, align 4
  %11 = icmp sle i32 %10, 256
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %7
  br label %15

; <label>:13                                      ; preds = %7, %0
  call void @__assert_fail(i8* getelementptr inbounds ([125 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str1, i32 0, i32 0), i32 109, i8* getelementptr inbounds ([165 x i8]* @__PRETTY_FUNCTION__._ZL99p_ZN2xf8integralILi0ELi3ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi3ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_R19xf_Mat_3_256_256_1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %15

; <label>:15                                      ; preds = %14, %12
  %16 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %17 = load %struct.xf_Mat_3_256_256_1_** %2, align 8
  %18 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %19 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %18, i32 0, i32 1
  %20 = load i32* %19, align 4
  %21 = trunc i32 %20 to i16
  %22 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %22, i32 0, i32 2
  %24 = load i32* %23, align 4
  %25 = trunc i32 %24 to i16
  call void @_ZL130p_ZN2xf21XFIntegralImageKernelILi0ELi3ELi256ELi256ELi1ELi1ELi12ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi3ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_R19xf_Mat_3_256_256_1_tt(%struct.xf_Mat_0_256_256_1_* %16, %struct.xf_Mat_3_256_256_1_* %17, i16 zeroext %21, i16 zeroext %25)
  ret void
}

define internal void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi3ELi256ELi256ELi1EEER3MatILi3ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_3_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_3_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_Mat_3_256_256_1_*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %struct.xf_Mat_3_256_256_1_* %srcMat, %struct.xf_Mat_3_256_256_1_** %1, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %2, align 8
  %3 = load %struct.xf_Mat_3_256_256_1_** %1, align 8
  %4 = load %class.ap_uint** %2, align 8
  call void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi3ELi256ELi256ELi1EEER3MatILi3ELi256ELi256ELi1EEP7ap_uintILi256EE_1P14xf_accel_utilsR19xf_Mat_3_256_256_1_P7ap_uintILi256EE(%struct.xf_accel_utils* %au, %struct.xf_Mat_3_256_256_1_* %3, %class.ap_uint* %4)
  ret void
}

define internal void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi3ELi256ELi256ELi1EEER3MatILi3ELi256ELi256ELi1EEP7ap_uintILi256EE_1P14xf_accel_utilsR19xf_Mat_3_256_256_1_P7ap_uintILi256EE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_3_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_3_256_256_1_*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %struct.xf_Mat_3_256_256_1_* %srcMat, %struct.xf_Mat_3_256_256_1_** %2, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %3, align 8
  store i32 32, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_3_256_256_1_** %2, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_3_256_256_1_** %2, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %struct.xf_Mat_3_256_256_1_** %2, align 8
  call void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi3ELi256ELi256ELi1ELi65536EEER3MatILi3ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1P14xf_accel_utilsR19xf_Mat_3_256_256_1_RN3hls6streamI7ap_uintILi256EEEE(%struct.xf_accel_utils* %10, %struct.xf_Mat_3_256_256_1_* %11, %"class.hls::stream"* %strm)
  %12 = load %struct.xf_accel_utils** %1, align 8
  %13 = load %class.ap_uint** %3, align 8
  %14 = load i32* %rows, align 4
  %15 = load i32* %cols, align 4
  call void @_ZL123p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi32ELi8192EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEEPS4_ii(%struct.xf_accel_utils* %12, %"class.hls::stream"* %strm, %class.ap_uint* %13, i32 %14, i32 %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"*)

define internal void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi3ELi256ELi256ELi1ELi65536EEER3MatILi3ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1P14xf_accel_utilsR19xf_Mat_3_256_256_1_RN3hls6streamI7ap_uintILi256EEEE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_3_256_256_1_* %srcMat, %"class.hls::stream"* %dstStrm) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_3_256_256_1_*, align 8
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
  store %struct.xf_Mat_3_256_256_1_* %srcMat, %struct.xf_Mat_3_256_256_1_** %2, align 8
  store %"class.hls::stream"* %dstStrm, %"class.hls::stream"** %3, align 8
  %5 = load %struct.xf_Mat_3_256_256_1_** %2, align 8
  %6 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  store i32 %7, i32* %rows, align 4
  %8 = load %struct.xf_Mat_3_256_256_1_** %2, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %8, i32 0, i32 2
  %10 = load i32* %9, align 4
  store i32 %10, i32* %cols, align 4
  %11 = load i32* %rows, align 4
  %12 = load i32* %cols, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sdiv i32 %13, 1
  store i32 %14, i32* %loop_count, align 4
  store i32 256, i32* %bits_to_add, align 4
  store i32 32, i32* %N_size, align 4
  call void @_ZN7ap_uintILi256EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1* %in)
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
  %21 = load %struct.xf_Mat_3_256_256_1_** %2, align 8
  %22 = load i32* %i, align 4
  %23 = call i32 @_ZL36p_ZN2xf16Mat_3_256_256_1_4readIEEi_1P19xf_Mat_3_256_256_1_i(%struct.xf_Mat_3_256_256_1_* %21, i32 %22)
  %24 = getelementptr %class.ap_uint.1* %4, i32 0, i32 0
  %25 = bitcast [4 x i8]* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.1* %in, %class.ap_uint.1* %4)
  %27 = load i32* %bits_to_add, align 4
  %28 = icmp sle i32 %27, 32
  br i1 %28, label %29, label %52

; <label>:29                                      ; preds = %20
  %30 = load i32* %bits_to_add, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.1* %in, i32 %31, i32 0)
  %33 = load i64* %32
  %34 = load i32* %bits_to_add, align 4
  %35 = sub nsw i32 256, %34
  %36 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 255, i32 %35)
  store i64 %33, i64* %36
  %37 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"* %37, %class.ap_uint* %r)
  %38 = load i32* %bits_to_add, align 4
  %39 = icmp ne i32 %38, 32
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %29
  %41 = load i32* %bits_to_add, align 4
  %42 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.1* %in, i32 31, i32 %41)
  %43 = load i64* %42
  %44 = load i32* %bits_to_add, align 4
  %45 = sub nsw i32 32, %44
  %46 = sub nsw i32 %45, 1
  %47 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %46, i32 0)
  store i64 %43, i64* %47
  br label %48

; <label>:48                                      ; preds = %40, %29
  %49 = load i32* %bits_to_add, align 4
  %50 = sub nsw i32 32, %49
  %51 = sub nsw i32 256, %50
  store i32 %51, i32* %bits_to_add, align 4
  br label %63

; <label>:52                                      ; preds = %20
  %53 = call i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.1* %in)
  %54 = load i32* %bits_to_add, align 4
  %55 = sub nsw i32 256, %54
  %56 = add nsw i32 %55, 32
  %57 = sub nsw i32 %56, 1
  %58 = load i32* %bits_to_add, align 4
  %59 = sub nsw i32 256, %58
  %60 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %57, i32 %59)
  store i64 %53, i64* %60
  %61 = load i32* %bits_to_add, align 4
  %62 = sub nsw i32 %61, 32
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

define internal void @_ZL123p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi1ELi32ELi8192EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEEPS4_ii(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %class.ap_uint* %dstPtr, i32 %rows, i32 %cols) uwtable {
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
  store i32 32, i32* %pixel_width, align 4
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

declare void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1*)

declare %class.ap_uint.1* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.1*, %class.ap_uint.1*)

define internal i32 @_ZL36p_ZN2xf16Mat_3_256_256_1_4readIEEi_1P19xf_Mat_3_256_256_1_i(%struct.xf_Mat_3_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.1, align 1
  %2 = alloca %struct.xf_Mat_3_256_256_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_3_256_256_1_* %this_, %struct.xf_Mat_3_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_3_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %6, i32 0, i32 4
  %8 = getelementptr inbounds [65536 x %class.ap_uint.1]* %7, i32 0, i64 %5
  %9 = bitcast %class.ap_uint.1* %1 to i8*
  %10 = bitcast %class.ap_uint.1* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 4, i32 1, i1 false)
  %11 = getelementptr %class.ap_uint.1* %1, i32 0, i32 0
  %12 = bitcast [4 x i8]* %11 to i32*
  %13 = load i32* %12, align 1
  ret i32 %13
}

declare i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.1*, i32, i32)

declare i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

declare i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.1*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL130p_ZN2xf21XFIntegralImageKernelILi0ELi3ELi256ELi256ELi1ELi1ELi12ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi3ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_R19xf_Mat_3_256_256_1_tt(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_3_256_256_1_* %_dst_mat, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_3_256_256_1_*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %linebuff = alloca [256 x %class.ap_uint.1], align 16
  %cur_sum = alloca i32, align 4
  %prev = alloca %class.ap_uint.2, align 1
  %i = alloca %class.ap_uint.3, align 1
  %j = alloca %class.ap_uint.3, align 1
  %5 = alloca %class.ap_uint.3, align 1
  %val = alloca %class.ap_uint.0, align 1
  %6 = alloca %class.ap_uint.3, align 1
  %7 = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint.3, align 1
  %9 = alloca %class.ap_uint.3, align 1
  %10 = alloca %class.ap_int, align 1
  %11 = alloca %class.ap_int.4, align 1
  %12 = alloca %class.ap_uint.2, align 1
  %13 = alloca %class.ap_uint.0, align 1
  %14 = alloca i24
  %15 = alloca %class.ap_uint.3, align 1
  %16 = alloca %class.ap_uint.2, align 1
  %17 = alloca %class.ap_uint.1, align 1
  %18 = alloca i24
  %19 = alloca %class.ap_int.5, align 1
  %20 = alloca i56
  %21 = alloca %class.ap_uint.3, align 1
  %22 = alloca %class.ap_uint.3, align 1
  %23 = alloca %class.ap_int, align 1
  %24 = alloca %class.ap_uint.1, align 1
  %25 = alloca %class.ap_uint.3, align 1
  %26 = alloca %class.ap_uint.3, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_3_256_256_1_* %_dst_mat, %struct.xf_Mat_3_256_256_1_** %2, align 8
  store i16 %height, i16* %3, align 2
  store i16 %width, i16* %4, align 2
  %27 = getelementptr inbounds [256 x %class.ap_uint.1]* %linebuff, i32 0, i32 0
  %28 = getelementptr inbounds %class.ap_uint.1* %27, i64 256
  br label %29

; <label>:29                                      ; preds = %29, %0
  %30 = phi %class.ap_uint.1* [ %27, %0 ], [ %31, %29 ]
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1* %30)
  %31 = getelementptr inbounds %class.ap_uint.1* %30, i64 1
  %32 = icmp eq %class.ap_uint.1* %31, %28
  br i1 %32, label %33, label %29

; <label>:33                                      ; preds = %29
  call void @_ZN7ap_uintILi22EEC1Ev(%class.ap_uint.2* %prev)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3* %i)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3* %j)
  br label %34

; <label>:34                                      ; preds = %33
  %35 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3* %i, i32 0)
  br label %36

; <label>:36                                      ; preds = %155, %34
  %37 = bitcast %class.ap_uint.3* %5 to i8*
  %38 = bitcast %class.ap_uint.3* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 2, i32 1, i1 false)
  %39 = load i16* %3, align 2
  %40 = getelementptr %class.ap_uint.3* %5, i32 0, i32 0
  %41 = bitcast [2 x i8]* %40 to i16*
  %42 = load i16* %41, align 1
  %43 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %42, i16 zeroext %39)
  br i1 %43, label %44, label %159

; <label>:44                                      ; preds = %36
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val)
  store i32 0, i32* %cur_sum, align 4
  %45 = call %class.ap_uint.2* @_ZN7ap_uintILi22EEaSEi(%class.ap_uint.2* %prev, i32 0)
  br label %46

; <label>:46                                      ; preds = %44
  %47 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3* %j, i32 0)
  br label %48

; <label>:48                                      ; preds = %150, %46
  %49 = bitcast %class.ap_uint.3* %6 to i8*
  %50 = bitcast %class.ap_uint.3* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 2, i32 1, i1 false)
  %51 = load i16* %4, align 2
  %52 = getelementptr %class.ap_uint.3* %6, i32 0, i32 0
  %53 = bitcast [2 x i8]* %52 to i16*
  %54 = load i16* %53, align 1
  %55 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %54, i16 zeroext %51)
  br i1 %55, label %56, label %154

; <label>:56                                      ; preds = %48
  %57 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %58 = load i16* %4, align 2
  %59 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.3* %i, i16 zeroext %58)
  %60 = getelementptr %class.ap_uint.3* %8, i32 0, i32 0
  %61 = bitcast [2 x i8]* %60 to i16*
  store i16 %59, i16* %61, align 1
  %62 = bitcast %class.ap_uint.3* %9 to i8*
  %63 = bitcast %class.ap_uint.3* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 2, i32 1, i1 false)
  %64 = getelementptr %class.ap_uint.3* %8, i32 0, i32 0
  %65 = bitcast [2 x i8]* %64 to i16*
  %66 = load i16* %65, align 1
  %67 = getelementptr %class.ap_uint.3* %9, i32 0, i32 0
  %68 = bitcast [2 x i8]* %67 to i16*
  %69 = load i16* %68, align 1
  %70 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %66, i16 %69)
  %71 = getelementptr %class.ap_int* %10, i32 0, i32 0
  %72 = bitcast [4 x i8]* %71 to i32*
  store i32 %70, i32* %72, align 1
  %73 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %10)
  %74 = trunc i64 %73 to i32
  %75 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %57, i32 %74)
  %76 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %77 = bitcast [1 x i8]* %76 to i8*
  store i8 %75, i8* %77, align 1
  %78 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val, %class.ap_uint.0* %7)
  %79 = bitcast %class.ap_uint.2* %12 to i8*
  %80 = bitcast %class.ap_uint.2* %prev to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 3, i32 1, i1 false)
  %81 = bitcast %class.ap_uint.0* %13 to i8*
  %82 = bitcast %class.ap_uint.0* %val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 1, i32 1, i1 false)
  %83 = getelementptr %class.ap_uint.2* %12, i32 0, i32 0
  %84 = bitcast i24* %14 to [3 x i8]*
  %85 = load [3 x i8]* %83
  store [3 x i8] %85, [3 x i8]* %84, align 1
  %86 = load i24* %14
  %87 = getelementptr %class.ap_uint.0* %13, i32 0, i32 0
  %88 = bitcast [1 x i8]* %87 to i8*
  %89 = load i8* %88, align 1
  %90 = call i32 @_ZplILi22ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i24 %86, i8 %89)
  %91 = getelementptr %class.ap_int.4* %11, i32 0, i32 0
  %92 = bitcast [4 x i8]* %91 to i32*
  store i32 %90, i32* %92, align 1
  %93 = call %class.ap_uint.2* @_ZN7ap_uintILi22EEaSILi30EEERS0_RK6ap_intIXT_EE(%class.ap_uint.2* %prev, %class.ap_int.4* %11)
  %94 = bitcast %class.ap_uint.3* %15 to i8*
  %95 = bitcast %class.ap_uint.3* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 2, i32 1, i1 false)
  %96 = getelementptr %class.ap_uint.3* %15, i32 0, i32 0
  %97 = bitcast [2 x i8]* %96 to i16*
  %98 = load i16* %97, align 1
  %99 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %98, i32 0)
  br i1 %99, label %100, label %103

; <label>:100                                     ; preds = %56
  %101 = call i64 @_ZNK7ap_uintILi22EEcvmEv(%class.ap_uint.2* %prev)
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %cur_sum, align 4
  br label %123

; <label>:103                                     ; preds = %56
  %104 = bitcast %class.ap_uint.2* %16 to i8*
  %105 = bitcast %class.ap_uint.2* %prev to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 3, i32 1, i1 false)
  %106 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.3* %j)
  %107 = getelementptr inbounds [256 x %class.ap_uint.1]* %linebuff, i32 0, i64 %106
  %108 = bitcast %class.ap_uint.1* %17 to i8*
  %109 = bitcast %class.ap_uint.1* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 4, i32 1, i1 false)
  %110 = getelementptr %class.ap_uint.2* %16, i32 0, i32 0
  %111 = bitcast i24* %18 to [3 x i8]*
  %112 = load [3 x i8]* %110
  store [3 x i8] %112, [3 x i8]* %111, align 1
  %113 = load i24* %18
  %114 = getelementptr %class.ap_uint.1* %17, i32 0, i32 0
  %115 = bitcast [4 x i8]* %114 to i32*
  %116 = load i32* %115, align 1
  %117 = call i56 @_ZplILi22ELi32EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i24 %113, i32 %116)
  %118 = getelementptr %class.ap_int.5* %19, i32 0, i32 0
  store i56 %117, i56* %20
  %119 = bitcast i56* %20 to [7 x i8]*
  %120 = load [7 x i8]* %119, align 1
  store [7 x i8] %120, [7 x i8]* %118
  %121 = call i64 @_ZNK6ap_intILi54EEcvlEv(%class.ap_int.5* %19)
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %cur_sum, align 4
  br label %123

; <label>:123                                     ; preds = %103, %100
  %124 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.3* %j)
  %125 = getelementptr inbounds [256 x %class.ap_uint.1]* %linebuff, i32 0, i64 %124
  %126 = load i32* %cur_sum, align 4
  %127 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSEj(%class.ap_uint.1* %125, i32 %126)
  %128 = load %struct.xf_Mat_3_256_256_1_** %2, align 8
  %129 = load i16* %4, align 2
  %130 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.3* %i, i16 zeroext %129)
  %131 = getelementptr %class.ap_uint.3* %21, i32 0, i32 0
  %132 = bitcast [2 x i8]* %131 to i16*
  store i16 %130, i16* %132, align 1
  %133 = bitcast %class.ap_uint.3* %22 to i8*
  %134 = bitcast %class.ap_uint.3* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %133, i8* %134, i64 2, i32 1, i1 false)
  %135 = getelementptr %class.ap_uint.3* %21, i32 0, i32 0
  %136 = bitcast [2 x i8]* %135 to i16*
  %137 = load i16* %136, align 1
  %138 = getelementptr %class.ap_uint.3* %22, i32 0, i32 0
  %139 = bitcast [2 x i8]* %138 to i16*
  %140 = load i16* %139, align 1
  %141 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %137, i16 %140)
  %142 = getelementptr %class.ap_int* %23, i32 0, i32 0
  %143 = bitcast [4 x i8]* %142 to i32*
  store i32 %141, i32* %143, align 1
  %144 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %23)
  %145 = trunc i64 %144 to i32
  %146 = load i32* %cur_sum, align 4
  call void @_ZN7ap_uintILi32EEC1Ej(%class.ap_uint.1* %24, i32 %146)
  %147 = getelementptr %class.ap_uint.1* %24, i32 0, i32 0
  %148 = bitcast [4 x i8]* %147 to i32*
  %149 = load i32* %148, align 1
  call void @_ZL52p_ZN2xf16Mat_3_256_256_1_5writeIEEi7ap_uintILi32EE_1P19xf_Mat_3_256_256_1_i7ap_uintILi32EE(%struct.xf_Mat_3_256_256_1_* %128, i32 %145, i32 %149)
  br label %150

; <label>:150                                     ; preds = %123
  %151 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %j, i32 0)
  %152 = getelementptr %class.ap_uint.3* %25, i32 0, i32 0
  %153 = bitcast [2 x i8]* %152 to i16*
  store i16 %151, i16* %153, align 1
  br label %48

; <label>:154                                     ; preds = %48
  br label %155

; <label>:155                                     ; preds = %154
  %156 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %i, i32 0)
  %157 = getelementptr %class.ap_uint.3* %26, i32 0, i32 0
  %158 = bitcast [2 x i8]* %157 to i16*
  store i16 %156, i16* %158, align 1
  br label %36

; <label>:159                                     ; preds = %36
  ret void
}

declare void @_ZN7ap_uintILi22EEC1Ev(%class.ap_uint.2*)

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3*)

declare %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0*)

declare %class.ap_uint.2* @_ZN7ap_uintILi22EEaSEi(%class.ap_uint.2*, i32)

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

declare %class.ap_uint.2* @_ZN7ap_uintILi22EEaSILi30EEERS0_RK6ap_intIXT_EE(%class.ap_uint.2*, %class.ap_int.4*)

declare i32 @_ZplILi22ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i24, i8)

declare zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16, i32)

declare i64 @_ZNK7ap_uintILi22EEcvmEv(%class.ap_uint.2*)

declare i56 @_ZplILi22ELi32EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i24, i32)

declare i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.3*)

declare i64 @_ZNK6ap_intILi54EEcvlEv(%class.ap_int.5*)

declare %class.ap_uint.1* @_ZN7ap_uintILi32EEaSEj(%class.ap_uint.1*, i32)

define internal void @_ZL52p_ZN2xf16Mat_3_256_256_1_5writeIEEi7ap_uintILi32EE_1P19xf_Mat_3_256_256_1_i7ap_uintILi32EE(%struct.xf_Mat_3_256_256_1_* %this_, i32 %index, i32 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_3_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.1, align 4
  store %struct.xf_Mat_3_256_256_1_* %this_, %struct.xf_Mat_3_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint.1* %val, i32 0, i32 0
  %4 = bitcast [4 x i8]* %3 to i32*
  store i32 %val.coerce, i32* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_3_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.1]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.1* %9, %class.ap_uint.1* %val)
  ret void
}

declare void @_ZN7ap_uintILi32EEC1Ej(%class.ap_uint.1*, i32)

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

define internal void @_ZL38p_ZN2xf16Mat_3_256_256_1_4initIEEiib_1P19xf_Mat_3_256_256_1_iib(%struct.xf_Mat_3_256_256_1_* %this_, i32 %_rows, i32 %_cols, i1 zeroext %allocate) nounwind uwtable {
  %1 = alloca %struct.xf_Mat_3_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.xf_Mat_3_256_256_1_* %this_, %struct.xf_Mat_3_256_256_1_** %1, align 8
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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_3_256_256_1_4initIEEiib_1P19xf_Mat_3_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load i32* %2, align 4
  %22 = load %struct.xf_Mat_3_256_256_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32* %3, align 4
  %25 = load %struct.xf_Mat_3_256_256_1_** %1, align 8
  %26 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32* %2, align 4
  %28 = load i32* %3, align 4
  %29 = ashr i32 %28, 0
  %30 = mul nsw i32 %27, %29
  %31 = load %struct.xf_Mat_3_256_256_1_** %1, align 8
  %32 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i8* %4, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %20
  br label %36

; <label>:36                                      ; preds = %35, %20
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_3_256_256_1_C2Ev(%struct.xf_Mat_3_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_3_256_256_1_*, align 8
  store %struct.xf_Mat_3_256_256_1_* %this, %struct.xf_Mat_3_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_3_256_256_1_** %1
  %3 = getelementptr inbounds %struct.xf_Mat_3_256_256_1_* %2, i32 0, i32 4
  %4 = getelementptr inbounds [65536 x %class.ap_uint.1]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.1* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint.1* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1* %7)
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

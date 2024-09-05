; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/histequalize_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.7 = type { [2 x i8] }
%class.ap_uint.4 = type { [1 x i8] }
%class.ap_uint.5 = type { [2 x i8] }
%class.ap_int.6 = type { [4 x i8] }
%class.ap_uint.3 = type { [2 x i8] }
%class.ap_uint.1 = type { [5 x i8] }
%class.ap_int = type { [10 x i8] }
%class.ap_uint.2 = type { [4 x i8] }

@.str = private unnamed_addr constant [100 x i8] c"((img_height <= ROWS) && (img_width <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"xf_hist_equalize.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL127p_ZN2xf12equalizeHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_ = private unnamed_addr constant [223 x i8] c"void p_ZN2xf12equalizeHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &)\00", align 1
@.str2 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z18equalizeHist_accelP7ap_uintILi256EES1_S1_ii(%class.ap_uint* %img_inp, %class.ap_uint* %img_inp1, %class.ap_uint* %img_out, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %in_mat1 = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_inp, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_inp1, %class.ap_uint** %2, align 8
  store %class.ap_uint* %img_out, %class.ap_uint** %3, align 8
  store i32 %rows, i32* %4, align 4
  store i32 %cols, i32* %5, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat1)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat1)
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %out_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %out_mat)
  %6 = load i32* %4, align 4
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32* %5, align 4
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32* %4, align 4
  %11 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat1, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32* %5, align 4
  %13 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat1, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32* %4, align 4
  %15 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32* %5, align 4
  %17 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %18, %struct.xf_Mat_0_256_256_1_* %in_mat)
  %19 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %19, %struct.xf_Mat_0_256_256_1_* %in_mat1)
  call void @_ZL127p_ZN2xf12equalizeHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_0_256_256_1_* %in_mat1, %struct.xf_Mat_0_256_256_1_* %out_mat)
  %20 = load %class.ap_uint** %3, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_0_256_256_1_* %out_mat, %class.ap_uint* %20)
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

define internal void @_ZL127p_ZN2xf12equalizeHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_(%struct.xf_Mat_0_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_* %_src1, %struct.xf_Mat_0_256_256_1_* %_dst) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %img_height = alloca i16, align 2
  %img_width = alloca i16, align 2
  %histogram = alloca [1 x [256 x i32]], align 16
  store %struct.xf_Mat_0_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_src1, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst, %struct.xf_Mat_0_256_256_1_** %3, align 8
  %4 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = trunc i32 %6 to i16
  store i16 %7, i16* %img_height, align 2
  %8 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %8, i32 0, i32 2
  %10 = load i32* %9, align 4
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %img_width, align 2
  %12 = load i16* %img_height, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp sle i32 %13, 256
  br i1 %14, label %15, label %20

; <label>:15                                      ; preds = %0
  %16 = load i16* %img_width, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp sle i32 %17, 256
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %15
  br label %22

; <label>:20                                      ; preds = %15, %0
  call void @__assert_fail(i8* getelementptr inbounds ([100 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), i32 169, i8* getelementptr inbounds ([223 x i8]* @__PRETTY_FUNCTION__._ZL127p_ZN2xf12equalizeHistILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_S0_S0_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = load i16* %img_width, align 2
  %24 = zext i16 %23 to i32
  %25 = ashr i32 %24, 0
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %img_width, align 2
  %27 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %28 = getelementptr inbounds [1 x [256 x i32]]* %histogram, i32 0, i32 0
  call void @_ZL107p_ZN2xf17xFHistogramKernelILi0ELi256ELi256ELi0ELi1ELi1ELi128ELi1EEER3MatILi0ELi256ELi256ELi1EEPA256_jRtRt_1R19xf_Mat_0_256_256_1_PA256_jRtS3_(%struct.xf_Mat_0_256_256_1_* %27, [256 x i32]* %28, i16* %img_height, i16* %img_width)
  %29 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %30 = getelementptr inbounds [1 x [256 x i32]]* %histogram, i32 0, i32 0
  %31 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %32 = load i16* %img_height, align 2
  %33 = load i16* %img_width, align 2
  call void @_ZL121p_ZN2xf10xFEqualizeILi0ELi256ELi256ELi0ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EEPA256_jR3MatILi0ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_PA256_jS0_tt(%struct.xf_Mat_0_256_256_1_* %29, [256 x i32]* %30, %struct.xf_Mat_0_256_256_1_* %31, i16 zeroext %32, i16 zeroext %33)
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
  %i = alloca %class.ap_uint.7, align 1
  %5 = alloca %class.ap_uint.7, align 1
  %j = alloca %class.ap_uint.4, align 1
  %6 = alloca %class.ap_uint.4, align 1
  %7 = alloca %class.ap_uint.4, align 1
  %8 = alloca %class.ap_uint.7, align 1
  %row = alloca %class.ap_uint.5, align 1
  %9 = alloca %class.ap_uint.5, align 1
  %col = alloca %class.ap_uint.5, align 1
  %10 = alloca %class.ap_uint.5, align 1
  %11 = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.5, align 1
  %13 = alloca %class.ap_uint.5, align 1
  %14 = alloca %class.ap_int.6, align 1
  %15 = alloca %class.ap_uint.5, align 1
  %16 = alloca %class.ap_uint.0, align 1
  %17 = alloca %class.ap_int.6, align 1
  %18 = alloca %class.ap_uint.5, align 1
  %19 = alloca %class.ap_uint.5, align 1
  %20 = alloca %class.ap_int.6, align 1
  %_l_i = alloca %class.ap_uint.3, align 1
  %_l_j = alloca %class.ap_uint.3, align 1
  %21 = alloca %class.ap_uint.3, align 1
  %_in_l_i = alloca %class.ap_uint.3, align 1
  %22 = alloca %class.ap_uint.3, align 1
  %val = alloca %class.ap_uint.0, align 1
  %val1 = alloca %class.ap_uint.0, align 1
  %23 = alloca %class.ap_uint.3, align 1
  %24 = alloca %class.ap_uint.3, align 1
  %tmpval = alloca i32, align 4
  %tmpval1 = alloca i32, align 4
  %25 = alloca %class.ap_uint.5, align 1
  %26 = alloca %class.ap_uint.3, align 1
  %27 = alloca %class.ap_uint.3, align 1
  %28 = alloca %class.ap_uint.5, align 1
  %29 = alloca %class.ap_uint.5, align 1
  %cnt = alloca i32, align 4
  %p = alloca i32, align 4
  %plane = alloca [1 x i32], align 4
  %i1 = alloca %class.ap_uint.7, align 1
  %30 = alloca %class.ap_uint.7, align 1
  %_l_j_0 = alloca %class.ap_uint.4, align 1
  %_l_k = alloca %class.ap_uint.4, align 1
  %31 = alloca %class.ap_uint.4, align 1
  %value = alloca i32, align 4
  %32 = alloca %class.ap_uint.4, align 1
  %33 = alloca %class.ap_uint.4, align 1
  %34 = alloca %class.ap_uint.7, align 1
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
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.7* %i, i32 0)
  br label %38

; <label>:38                                      ; preds = %67, %37
  %39 = bitcast %class.ap_uint.7* %5 to i8*
  %40 = bitcast %class.ap_uint.7* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 2, i32 1, i1 false)
  %41 = getelementptr %class.ap_uint.7* %5, i32 0, i32 0
  %42 = bitcast [2 x i8]* %41 to i16*
  %43 = load i16* %42, align 1
  %44 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16 %43, i32 256)
  br i1 %44, label %45, label %71

; <label>:45                                      ; preds = %38
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.4* %j, i32 0)
  br label %46

; <label>:46                                      ; preds = %62, %45
  %47 = bitcast %class.ap_uint.4* %6 to i8*
  %48 = bitcast %class.ap_uint.4* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 1, i32 1, i1 false)
  %49 = getelementptr %class.ap_uint.4* %6, i32 0, i32 0
  %50 = bitcast [1 x i8]* %49 to i8*
  %51 = load i8* %50, align 1
  %52 = call zeroext i1 @_ZltILi5EEb7ap_uintIXT_EEi(i8 %51, i32 1)
  br i1 %52, label %53, label %66

; <label>:53                                      ; preds = %46
  %54 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.7* %i)
  %55 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.4* %j)
  %56 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist, i32 0, i64 %55
  %57 = getelementptr inbounds [256 x i32]* %56, i32 0, i64 %54
  store i32 0, i32* %57, align 4
  %58 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.7* %i)
  %59 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.4* %j)
  %60 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist1, i32 0, i64 %59
  %61 = getelementptr inbounds [256 x i32]* %60, i32 0, i64 %58
  store i32 0, i32* %61, align 4
  br label %62

; <label>:62                                      ; preds = %53
  %63 = call i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.4* %j, i32 0)
  %64 = getelementptr %class.ap_uint.4* %7, i32 0, i32 0
  %65 = bitcast [1 x i8]* %64 to i8*
  store i8 %63, i8* %65, align 1
  br label %46

; <label>:66                                      ; preds = %46
  br label %67

; <label>:67                                      ; preds = %66
  %68 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.7* %i, i32 0)
  %69 = getelementptr %class.ap_uint.7* %8, i32 0, i32 0
  %70 = bitcast [2 x i8]* %69 to i16*
  store i16 %68, i16* %70, align 1
  br label %38

; <label>:71                                      ; preds = %38
  br label %72

; <label>:72                                      ; preds = %71
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.5* %row, i32 0)
  br label %73

; <label>:73                                      ; preds = %234, %72
  %74 = bitcast %class.ap_uint.5* %9 to i8*
  %75 = bitcast %class.ap_uint.5* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 2, i32 1, i1 false)
  %76 = load i16** %3, align 8
  %77 = load i16* %76, align 2
  %78 = getelementptr %class.ap_uint.5* %9, i32 0, i32 0
  %79 = bitcast [2 x i8]* %78 to i16*
  %80 = load i16* %79, align 1
  %81 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %80, i16 zeroext %77)
  br i1 %81, label %82, label %238

; <label>:82                                      ; preds = %73
  br label %83

; <label>:83                                      ; preds = %82
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.5* %col, i32 0)
  br label %84

; <label>:84                                      ; preds = %228, %83
  %85 = bitcast %class.ap_uint.5* %10 to i8*
  %86 = bitcast %class.ap_uint.5* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 2, i32 1, i1 false)
  %87 = load i16** %4, align 8
  %88 = load i16* %87, align 2
  %89 = getelementptr %class.ap_uint.5* %10, i32 0, i32 0
  %90 = bitcast [2 x i8]* %89 to i16*
  %91 = load i16* %90, align 1
  %92 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %91, i16 zeroext %88)
  br i1 %92, label %93, label %233

; <label>:93                                      ; preds = %84
  %94 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %95 = load i16** %4, align 8
  %96 = load i16* %95, align 2
  %97 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.5* %row, i16 zeroext %96)
  %98 = getelementptr %class.ap_uint.5* %12, i32 0, i32 0
  %99 = bitcast [2 x i8]* %98 to i16*
  store i16 %97, i16* %99, align 1
  %100 = bitcast %class.ap_uint.5* %13 to i8*
  %101 = bitcast %class.ap_uint.5* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 2, i32 1, i1 false)
  %102 = getelementptr %class.ap_uint.5* %12, i32 0, i32 0
  %103 = bitcast [2 x i8]* %102 to i16*
  %104 = load i16* %103, align 1
  %105 = getelementptr %class.ap_uint.5* %13, i32 0, i32 0
  %106 = bitcast [2 x i8]* %105 to i16*
  %107 = load i16* %106, align 1
  %108 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %104, i16 %107)
  %109 = getelementptr %class.ap_int.6* %14, i32 0, i32 0
  %110 = bitcast [4 x i8]* %109 to i32*
  store i32 %108, i32* %110, align 1
  %111 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int.6* %14)
  %112 = trunc i64 %111 to i32
  %113 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %94, i32 %112)
  %114 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %115 = bitcast [1 x i8]* %114 to i8*
  store i8 %113, i8* %115, align 1
  %116 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %in_buf, %class.ap_uint.0* %11)
  %117 = bitcast %class.ap_uint.5* %15 to i8*
  %118 = bitcast %class.ap_uint.5* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 2, i32 1, i1 false)
  %119 = load i16** %4, align 8
  %120 = load i16* %119, align 2
  %121 = zext i16 %120 to i32
  %122 = sub nsw i32 %121, 1
  %123 = getelementptr %class.ap_uint.5* %15, i32 0, i32 0
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
  %133 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.5* %row, i16 zeroext %132)
  %134 = getelementptr %class.ap_uint.5* %18, i32 0, i32 0
  %135 = bitcast [2 x i8]* %134 to i16*
  store i16 %133, i16* %135, align 1
  %136 = bitcast %class.ap_uint.5* %19 to i8*
  %137 = bitcast %class.ap_uint.5* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %137, i64 2, i32 1, i1 false)
  %138 = getelementptr %class.ap_uint.5* %18, i32 0, i32 0
  %139 = bitcast [2 x i8]* %138 to i16*
  %140 = load i16* %139, align 1
  %141 = getelementptr %class.ap_uint.5* %19, i32 0, i32 0
  %142 = bitcast [2 x i8]* %141 to i16*
  %143 = load i16* %142, align 1
  %144 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %140, i16 %143)
  %145 = getelementptr %class.ap_int.6* %17, i32 0, i32 0
  %146 = bitcast [4 x i8]* %145 to i32*
  store i32 %144, i32* %146, align 1
  %147 = call i32 @_ZplILi26EE6ap_intIXT_EERKS1_i(%class.ap_int.6* %17, i32 1)
  %148 = getelementptr %class.ap_int.6* %20, i32 0, i32 0
  %149 = bitcast [4 x i8]* %148 to i32*
  store i32 %147, i32* %149, align 1
  %150 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int.6* %20)
  %151 = trunc i64 %150 to i32
  %152 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %130, i32 %151)
  %153 = getelementptr %class.ap_uint.0* %16, i32 0, i32 0
  %154 = bitcast [1 x i8]* %153 to i8*
  store i8 %152, i8* %154, align 1
  %155 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %in_buf1, %class.ap_uint.0* %16)
  br label %156

; <label>:156                                     ; preds = %129, %127
  call void @_ZN7ap_uintILi9EEC1Ei(%class.ap_uint.3* %_l_i, i32 0)
  call void @_ZN7ap_uintILi9EEC1Ei(%class.ap_uint.3* %_l_j, i32 0)
  br label %157

; <label>:157                                     ; preds = %156
  %158 = call %class.ap_uint.3* @_ZN7ap_uintILi9EEaSEi(%class.ap_uint.3* %_l_i, i32 0)
  br label %159

; <label>:159                                     ; preds = %222, %157
  %160 = bitcast %class.ap_uint.3* %21 to i8*
  %161 = bitcast %class.ap_uint.3* %_l_i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %160, i8* %161, i64 2, i32 1, i1 false)
  %162 = getelementptr %class.ap_uint.3* %21, i32 0, i32 0
  %163 = bitcast [2 x i8]* %162 to i16*
  %164 = load i16* %163, align 1
  %165 = call zeroext i1 @_ZleILi9EEb7ap_uintIXT_EEl(i16 %164, i64 0)
  br i1 %165, label %166, label %226

; <label>:166                                     ; preds = %159
  %167 = call i16 @_ZmlILi9EE7ap_uintIXT_EElRKS1_(i64 8, %class.ap_uint.3* %_l_i)
  %168 = getelementptr %class.ap_uint.3* %22, i32 0, i32 0
  %169 = bitcast [2 x i8]* %168 to i16*
  store i16 %167, i16* %169, align 1
  %170 = call i16 @_ZplILi9EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.3* %22)
  %171 = getelementptr %class.ap_uint.3* %_in_l_i, i32 0, i32 0
  %172 = bitcast [2 x i8]* %171 to i16*
  store i16 %170, i16* %172, align 1
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %val, i32 0)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %val1, i32 0)
  %173 = call i16 @_ZplILi9EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_in_l_i, i32 7)
  %174 = getelementptr %class.ap_uint.3* %23, i32 0, i32 0
  %175 = bitcast [2 x i8]* %174 to i16*
  store i16 %173, i16* %175, align 1
  %176 = call i64* @_ZN7ap_uintILi8EE5rangeILi9ELi9EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %in_buf, %class.ap_uint.3* %23, %class.ap_uint.3* %_in_l_i)
  %177 = load i64* %176
  %178 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %val, i64 %177)
  %179 = call i16 @_ZplILi9EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_in_l_i, i32 7)
  %180 = getelementptr %class.ap_uint.3* %24, i32 0, i32 0
  %181 = bitcast [2 x i8]* %180 to i16*
  store i16 %179, i16* %181, align 1
  %182 = call i64* @_ZN7ap_uintILi8EE5rangeILi9ELi9EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %in_buf1, %class.ap_uint.3* %24, %class.ap_uint.3* %_in_l_i)
  %183 = load i64* %182
  %184 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %val1, i64 %183)
  %185 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %val)
  %186 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.3* %_l_j)
  %187 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist, i32 0, i64 %186
  %188 = getelementptr inbounds [256 x i32]* %187, i32 0, i64 %185
  %189 = load i32* %188, align 4
  store i32 %189, i32* %tmpval, align 4
  %190 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %val1)
  %191 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.3* %_l_j)
  %192 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist1, i32 0, i64 %191
  %193 = getelementptr inbounds [256 x i32]* %192, i32 0, i64 %190
  %194 = load i32* %193, align 4
  store i32 %194, i32* %tmpval1, align 4
  %195 = load i32* %tmpval, align 4
  %196 = add i32 %195, 1
  %197 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %val)
  %198 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.3* %_l_j)
  %199 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist, i32 0, i64 %198
  %200 = getelementptr inbounds [256 x i32]* %199, i32 0, i64 %197
  store i32 %196, i32* %200, align 4
  %201 = bitcast %class.ap_uint.5* %25 to i8*
  %202 = bitcast %class.ap_uint.5* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* %202, i64 2, i32 1, i1 false)
  %203 = load i16** %4, align 8
  %204 = load i16* %203, align 2
  %205 = zext i16 %204 to i32
  %206 = sub nsw i32 %205, 1
  %207 = getelementptr %class.ap_uint.5* %25, i32 0, i32 0
  %208 = bitcast [2 x i8]* %207 to i16*
  %209 = load i16* %208, align 1
  %210 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %209, i32 %206)
  br i1 %210, label %218, label %211

; <label>:211                                     ; preds = %166
  %212 = load i32* %tmpval1, align 4
  %213 = add i32 %212, 1
  %214 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %val1)
  %215 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.3* %_l_j)
  %216 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist1, i32 0, i64 %215
  %217 = getelementptr inbounds [256 x i32]* %216, i32 0, i64 %214
  store i32 %213, i32* %217, align 4
  br label %218

; <label>:218                                     ; preds = %211, %166
  %219 = call i16 @_ZN7ap_uintILi9EEppEi(%class.ap_uint.3* %_l_j, i32 0)
  %220 = getelementptr %class.ap_uint.3* %26, i32 0, i32 0
  %221 = bitcast [2 x i8]* %220 to i16*
  store i16 %219, i16* %221, align 1
  br label %222

; <label>:222                                     ; preds = %218
  %223 = call i16 @_ZN7ap_uintILi9EEppEi(%class.ap_uint.3* %_l_i, i32 0)
  %224 = getelementptr %class.ap_uint.3* %27, i32 0, i32 0
  %225 = bitcast [2 x i8]* %224 to i16*
  store i16 %223, i16* %225, align 1
  br label %159

; <label>:226                                     ; preds = %159
  %227 = call %class.ap_uint.3* @_ZN7ap_uintILi9EEaSEl(%class.ap_uint.3* %_l_i, i64 8)
  br label %228

; <label>:228                                     ; preds = %226
  %229 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %col, i32 2)
  %230 = getelementptr %class.ap_uint.5* %28, i32 0, i32 0
  %231 = bitcast [2 x i8]* %230 to i16*
  store i16 %229, i16* %231, align 1
  %232 = call %class.ap_uint.5* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.5* %col, %class.ap_uint.5* %28)
  br label %84

; <label>:233                                     ; preds = %84
  br label %234

; <label>:234                                     ; preds = %233
  %235 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.5* %row, i32 0)
  %236 = getelementptr %class.ap_uint.5* %29, i32 0, i32 0
  %237 = bitcast [2 x i8]* %236 to i16*
  store i16 %235, i16* %237, align 1
  br label %73

; <label>:238                                     ; preds = %73
  store i32 0, i32* %p, align 4
  br label %239

; <label>:239                                     ; preds = %238
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.7* %i1, i32 0)
  br label %240

; <label>:240                                     ; preds = %284, %239
  %241 = bitcast %class.ap_uint.7* %30 to i8*
  %242 = bitcast %class.ap_uint.7* %i1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %241, i8* %242, i64 2, i32 1, i1 false)
  %243 = getelementptr %class.ap_uint.7* %30, i32 0, i32 0
  %244 = bitcast [2 x i8]* %243 to i16*
  %245 = load i16* %244, align 1
  %246 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16 %245, i32 256)
  br i1 %246, label %247, label %288

; <label>:247                                     ; preds = %240
  store i32 0, i32* %cnt, align 4
  store i32 0, i32* %p, align 4
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.4* %_l_j_0, i32 0)
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.4* %_l_k, i32 0)
  %248 = call %class.ap_uint.4* @_ZN7ap_uintILi5EEaSEi(%class.ap_uint.4* %_l_j_0, i32 0)
  br label %249

; <label>:249                                     ; preds = %274, %247
  %250 = bitcast %class.ap_uint.4* %31 to i8*
  %251 = bitcast %class.ap_uint.4* %_l_j_0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %250, i8* %251, i64 1, i32 1, i1 false)
  %252 = getelementptr %class.ap_uint.4* %31, i32 0, i32 0
  %253 = bitcast [1 x i8]* %252 to i8*
  %254 = load i8* %253, align 1
  %255 = call zeroext i1 @_ZleILi5EEb7ap_uintIXT_EEi(i8 %254, i32 0)
  br i1 %255, label %256, label %278

; <label>:256                                     ; preds = %249
  %257 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.7* %i1)
  %258 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.4* %_l_j_0)
  %259 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist, i32 0, i64 %258
  %260 = getelementptr inbounds [256 x i32]* %259, i32 0, i64 %257
  %261 = load i32* %260, align 4
  %262 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.7* %i1)
  %263 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.4* %_l_j_0)
  %264 = getelementptr inbounds [1 x [256 x i32]]* %tmp_hist1, i32 0, i64 %263
  %265 = getelementptr inbounds [256 x i32]* %264, i32 0, i64 %262
  %266 = load i32* %265, align 4
  %267 = add i32 %261, %266
  store i32 %267, i32* %value, align 4
  %268 = load i32* %cnt, align 4
  %269 = load i32* %value, align 4
  %270 = add i32 %268, %269
  store i32 %270, i32* %cnt, align 4
  %271 = call i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.4* %_l_k, i32 0)
  %272 = getelementptr %class.ap_uint.4* %32, i32 0, i32 0
  %273 = bitcast [1 x i8]* %272 to i8*
  store i8 %271, i8* %273, align 1
  br label %274

; <label>:274                                     ; preds = %256
  %275 = call i8 @_ZN7ap_uintILi5EEppEv(%class.ap_uint.4* %_l_j_0)
  %276 = getelementptr %class.ap_uint.4* %33, i32 0, i32 0
  %277 = bitcast [1 x i8]* %276 to i8*
  store i8 %275, i8* %277, align 1
  br label %249

; <label>:278                                     ; preds = %249
  %279 = load i32* %cnt, align 4
  %280 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.7* %i1)
  %281 = load [256 x i32]** %2, align 8
  %282 = getelementptr inbounds [256 x i32]* %281, i64 0
  %283 = getelementptr inbounds [256 x i32]* %282, i32 0, i64 %280
  store i32 %279, i32* %283, align 4
  br label %284

; <label>:284                                     ; preds = %278
  %285 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.7* %i1, i32 0)
  %286 = getelementptr %class.ap_uint.7* %34, i32 0, i32 0
  %287 = bitcast [2 x i8]* %286 to i16*
  store i16 %285, i16* %287, align 1
  br label %240

; <label>:288                                     ; preds = %240
  ret void
}

define internal void @_ZL121p_ZN2xf10xFEqualizeILi0ELi256ELi256ELi0ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EEPA256_jR3MatILi0ELi256ELi256ELi1EEtt_1R19xf_Mat_0_256_256_1_PA256_jS0_tt(%struct.xf_Mat_0_256_256_1_* %_src1, [256 x i32]* %hist_stream, %struct.xf_Mat_0_256_256_1_* %_dst_mat, i16 zeroext %img_height, i16 zeroext %img_width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca [256 x i32]*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %in_buf = alloca %class.ap_uint.0, align 1
  %temp_buf = alloca %class.ap_uint.0, align 1
  %cum_hist = alloca [256 x %class.ap_uint.0], align 16
  %tmp_cum_hist = alloca [1 x [256 x %class.ap_uint.0]], align 16
  %temp_val = alloca i32, align 4
  %init_val = alloca i32, align 4
  %scale = alloca i32, align 4
  %scale1 = alloca %class.ap_uint.1, align 1
  %6 = alloca %class.ap_int, align 1
  %7 = alloca %class.ap_uint.1, align 1
  %8 = alloca %class.ap_uint.1, align 1
  %9 = alloca i40
  %10 = alloca i40
  %11 = alloca { i64, i16 }
  %temp_sum = alloca %class.ap_uint.2, align 1
  %i = alloca %class.ap_uint.3, align 1
  %12 = alloca %class.ap_uint.3, align 1
  %sum = alloca i64, align 8
  %13 = alloca %class.ap_uint.3, align 1
  %i1 = alloca %class.ap_uint.3, align 1
  %14 = alloca %class.ap_uint.3, align 1
  %j = alloca %class.ap_uint.4, align 1
  %15 = alloca %class.ap_uint.4, align 1
  %tmpval = alloca %class.ap_uint.0, align 1
  %16 = alloca %class.ap_uint.4, align 1
  %17 = alloca %class.ap_uint.3, align 1
  %row = alloca %class.ap_uint.5, align 1
  %18 = alloca %class.ap_uint.5, align 1
  %col = alloca %class.ap_uint.5, align 1
  %19 = alloca %class.ap_uint.5, align 1
  %20 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.5, align 1
  %22 = alloca %class.ap_uint.5, align 1
  %23 = alloca %class.ap_int.6, align 1
  %_l_i = alloca %class.ap_uint.3, align 1
  %_l_j = alloca %class.ap_uint.3, align 1
  %24 = alloca %class.ap_uint.3, align 1
  %_in_l_i = alloca %class.ap_uint.3, align 1
  %25 = alloca %class.ap_uint.3, align 1
  %val = alloca %class.ap_uint.0, align 1
  %26 = alloca %class.ap_uint.3, align 1
  %27 = alloca %class.ap_uint.3, align 1
  %28 = alloca %class.ap_uint.3, align 1
  %29 = alloca %class.ap_uint.3, align 1
  %30 = alloca %class.ap_uint.5, align 1
  %31 = alloca %class.ap_uint.5, align 1
  %32 = alloca %class.ap_int.6, align 1
  %33 = alloca %class.ap_uint.0, align 1
  %34 = alloca %class.ap_uint.5, align 1
  %35 = alloca %class.ap_uint.5, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src1, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store [256 x i32]* %hist_stream, [256 x i32]** %2, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %3, align 8
  store i16 %img_height, i16* %4, align 2
  store i16 %img_width, i16* %5, align 2
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %in_buf)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %temp_buf)
  %36 = getelementptr inbounds [256 x %class.ap_uint.0]* %cum_hist, i32 0, i32 0
  %37 = getelementptr inbounds %class.ap_uint.0* %36, i64 256
  br label %38

; <label>:38                                      ; preds = %38, %0
  %39 = phi %class.ap_uint.0* [ %36, %0 ], [ %40, %38 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %39)
  %40 = getelementptr inbounds %class.ap_uint.0* %39, i64 1
  %41 = icmp eq %class.ap_uint.0* %40, %37
  br i1 %41, label %42, label %38

; <label>:42                                      ; preds = %38
  %43 = getelementptr inbounds [1 x [256 x %class.ap_uint.0]]* %tmp_cum_hist, i32 0, i32 0, i32 0
  %44 = getelementptr inbounds %class.ap_uint.0* %43, i64 256
  br label %45

; <label>:45                                      ; preds = %45, %42
  %46 = phi %class.ap_uint.0* [ %43, %42 ], [ %47, %45 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %46)
  %47 = getelementptr inbounds %class.ap_uint.0* %46, i64 1
  %48 = icmp eq %class.ap_uint.0* %47, %44
  br i1 %48, label %49, label %45

; <label>:49                                      ; preds = %45
  %50 = load i16* %4, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16* %5, align 2
  %53 = zext i16 %52 to i32
  %54 = shl i32 %53, 0
  %55 = mul nsw i32 %51, %54
  store i32 %55, i32* %temp_val, align 4
  %56 = load i32* %temp_val, align 4
  %57 = load [256 x i32]** %2, align 8
  %58 = getelementptr inbounds [256 x i32]* %57, i64 0
  %59 = getelementptr inbounds [256 x i32]* %58, i32 0, i64 0
  %60 = load i32* %59, align 4
  %61 = sub i32 %56, %60
  store i32 %61, i32* %init_val, align 4
  %62 = load i32* %init_val, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %49
  store i32 0, i32* %scale, align 4
  br label %68

; <label>:65                                      ; preds = %49
  %66 = load i32* %init_val, align 4
  %67 = udiv i32 -2147483648, %66
  store i32 %67, i32* %scale, align 4
  br label %68

; <label>:68                                      ; preds = %65, %64
  call void @_ZN7ap_uintILi40EEC1Ei(%class.ap_uint.1* %7, i32 255)
  %69 = load i32* %scale, align 4
  call void @_ZN7ap_uintILi40EEC1Ej(%class.ap_uint.1* %8, i32 %69)
  %70 = getelementptr %class.ap_uint.1* %7, i32 0, i32 0
  %71 = bitcast i40* %9 to [5 x i8]*
  %72 = load [5 x i8]* %70
  store [5 x i8] %72, [5 x i8]* %71, align 1
  %73 = load i40* %9
  %74 = getelementptr %class.ap_uint.1* %8, i32 0, i32 0
  %75 = bitcast i40* %10 to [5 x i8]*
  %76 = load [5 x i8]* %74
  store [5 x i8] %76, [5 x i8]* %75, align 1
  %77 = load i40* %10
  %78 = call { i64, i16 } @_ZmlILi40ELi40EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i40 %73, i40 %77)
  %79 = getelementptr %class.ap_int* %6, i32 0, i32 0
  store { i64, i16 } %78, { i64, i16 }* %11
  %80 = bitcast { i64, i16 }* %11 to [10 x i8]*
  %81 = load [10 x i8]* %80, align 1
  store [10 x i8] %81, [10 x i8]* %79
  call void @_ZN7ap_uintILi40EEC1ILi80EEERK6ap_intIXT_EE(%class.ap_uint.1* %scale1, %class.ap_int* %6)
  call void @_ZN7ap_uintILi32EEC1Ei(%class.ap_uint.2* %temp_sum, i32 0)
  %82 = getelementptr inbounds [256 x %class.ap_uint.0]* %cum_hist, i32 0, i64 0
  %83 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %82, i32 0)
  br label %84

; <label>:84                                      ; preds = %68
  call void @_ZN7ap_uintILi9EEC1Ei(%class.ap_uint.3* %i, i32 1)
  br label %85

; <label>:85                                      ; preds = %112, %84
  %86 = bitcast %class.ap_uint.3* %12 to i8*
  %87 = bitcast %class.ap_uint.3* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 2, i32 1, i1 false)
  %88 = getelementptr %class.ap_uint.3* %12, i32 0, i32 0
  %89 = bitcast [2 x i8]* %88 to i16*
  %90 = load i16* %89, align 1
  %91 = call zeroext i1 @_ZltILi9EEb7ap_uintIXT_EEi(i16 %90, i32 256)
  br i1 %91, label %92, label %116

; <label>:92                                      ; preds = %85
  %93 = call i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.2* %temp_sum)
  %94 = trunc i64 %93 to i32
  %95 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.3* %i)
  %96 = load [256 x i32]** %2, align 8
  %97 = getelementptr inbounds [256 x i32]* %96, i64 0
  %98 = getelementptr inbounds [256 x i32]* %97, i32 0, i64 %95
  %99 = load i32* %98, align 4
  %100 = add i32 %94, %99
  %101 = call %class.ap_uint.2* @_ZN7ap_uintILi32EEaSEj(%class.ap_uint.2* %temp_sum, i32 %100)
  %102 = call i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.2* %temp_sum)
  %103 = call i64 @_ZNK7ap_uintILi40EEcvmEv(%class.ap_uint.1* %scale1)
  %104 = mul i64 %102, %103
  store i64 %104, i64* %sum, align 8
  %105 = load i64* %sum, align 8
  %106 = add i64 %105, 1073741824
  store i64 %106, i64* %sum, align 8
  %107 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.3* %i)
  %108 = getelementptr inbounds [256 x %class.ap_uint.0]* %cum_hist, i32 0, i64 %107
  %109 = load i64* %sum, align 8
  %110 = lshr i64 %109, 31
  %111 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %108, i64 %110)
  br label %112

; <label>:112                                     ; preds = %92
  %113 = call i16 @_ZN7ap_uintILi9EEppEi(%class.ap_uint.3* %i, i32 0)
  %114 = getelementptr %class.ap_uint.3* %13, i32 0, i32 0
  %115 = bitcast [2 x i8]* %114 to i16*
  store i16 %113, i16* %115, align 1
  br label %85

; <label>:116                                     ; preds = %85
  call void @_ZN7ap_uintILi9EEC1Ei(%class.ap_uint.3* %i1, i32 0)
  br label %117

; <label>:117                                     ; preds = %147, %116
  %118 = bitcast %class.ap_uint.3* %14 to i8*
  %119 = bitcast %class.ap_uint.3* %i1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 2, i32 1, i1 false)
  %120 = getelementptr %class.ap_uint.3* %14, i32 0, i32 0
  %121 = bitcast [2 x i8]* %120 to i16*
  %122 = load i16* %121, align 1
  %123 = call zeroext i1 @_ZltILi9EEb7ap_uintIXT_EEi(i16 %122, i32 256)
  br i1 %123, label %124, label %151

; <label>:124                                     ; preds = %117
  call void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.4* %j, i32 0)
  br label %125

; <label>:125                                     ; preds = %142, %124
  %126 = bitcast %class.ap_uint.4* %15 to i8*
  %127 = bitcast %class.ap_uint.4* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 1, i32 1, i1 false)
  %128 = getelementptr %class.ap_uint.4* %15, i32 0, i32 0
  %129 = bitcast [1 x i8]* %128 to i8*
  %130 = load i8* %129, align 1
  %131 = call zeroext i1 @_ZltILi5EEb7ap_uintIXT_EEi(i8 %130, i32 1)
  br i1 %131, label %132, label %146

; <label>:132                                     ; preds = %125
  %133 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.3* %i1)
  %134 = getelementptr inbounds [256 x %class.ap_uint.0]* %cum_hist, i32 0, i64 %133
  %135 = bitcast %class.ap_uint.0* %tmpval to i8*
  %136 = bitcast %class.ap_uint.0* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 1, i32 1, i1 false)
  %137 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.3* %i1)
  %138 = call i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.4* %j)
  %139 = getelementptr inbounds [1 x [256 x %class.ap_uint.0]]* %tmp_cum_hist, i32 0, i64 %138
  %140 = getelementptr inbounds [256 x %class.ap_uint.0]* %139, i32 0, i64 %137
  %141 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %140, %class.ap_uint.0* %tmpval)
  br label %142

; <label>:142                                     ; preds = %132
  %143 = call i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.4* %j, i32 0)
  %144 = getelementptr %class.ap_uint.4* %16, i32 0, i32 0
  %145 = bitcast [1 x i8]* %144 to i8*
  store i8 %143, i8* %145, align 1
  br label %125

; <label>:146                                     ; preds = %125
  br label %147

; <label>:147                                     ; preds = %146
  %148 = call i16 @_ZN7ap_uintILi9EEppEi(%class.ap_uint.3* %i1, i32 0)
  %149 = getelementptr %class.ap_uint.3* %17, i32 0, i32 0
  %150 = bitcast [2 x i8]* %149 to i16*
  store i16 %148, i16* %150, align 1
  br label %117

; <label>:151                                     ; preds = %117
  br label %152

; <label>:152                                     ; preds = %151
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.5* %row, i32 0)
  br label %153

; <label>:153                                     ; preds = %262, %152
  %154 = bitcast %class.ap_uint.5* %18 to i8*
  %155 = bitcast %class.ap_uint.5* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %154, i8* %155, i64 2, i32 1, i1 false)
  %156 = load i16* %4, align 2
  %157 = getelementptr %class.ap_uint.5* %18, i32 0, i32 0
  %158 = bitcast [2 x i8]* %157 to i16*
  %159 = load i16* %158, align 1
  %160 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %159, i16 zeroext %156)
  br i1 %160, label %161, label %266

; <label>:161                                     ; preds = %153
  br label %162

; <label>:162                                     ; preds = %161
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.5* %col, i32 0)
  br label %163

; <label>:163                                     ; preds = %257, %162
  %164 = bitcast %class.ap_uint.5* %19 to i8*
  %165 = bitcast %class.ap_uint.5* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* %165, i64 2, i32 1, i1 false)
  %166 = load i16* %5, align 2
  %167 = getelementptr %class.ap_uint.5* %19, i32 0, i32 0
  %168 = bitcast [2 x i8]* %167 to i16*
  %169 = load i16* %168, align 1
  %170 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %169, i16 zeroext %166)
  br i1 %170, label %171, label %261

; <label>:171                                     ; preds = %163
  %172 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %173 = load i16* %5, align 2
  %174 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.5* %row, i16 zeroext %173)
  %175 = getelementptr %class.ap_uint.5* %21, i32 0, i32 0
  %176 = bitcast [2 x i8]* %175 to i16*
  store i16 %174, i16* %176, align 1
  %177 = bitcast %class.ap_uint.5* %22 to i8*
  %178 = bitcast %class.ap_uint.5* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %177, i8* %178, i64 2, i32 1, i1 false)
  %179 = getelementptr %class.ap_uint.5* %21, i32 0, i32 0
  %180 = bitcast [2 x i8]* %179 to i16*
  %181 = load i16* %180, align 1
  %182 = getelementptr %class.ap_uint.5* %22, i32 0, i32 0
  %183 = bitcast [2 x i8]* %182 to i16*
  %184 = load i16* %183, align 1
  %185 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %181, i16 %184)
  %186 = getelementptr %class.ap_int.6* %23, i32 0, i32 0
  %187 = bitcast [4 x i8]* %186 to i32*
  store i32 %185, i32* %187, align 1
  %188 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int.6* %23)
  %189 = trunc i64 %188 to i32
  %190 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %172, i32 %189)
  %191 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %192 = bitcast [1 x i8]* %191 to i8*
  store i8 %190, i8* %192, align 1
  %193 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %in_buf, %class.ap_uint.0* %20)
  call void @_ZN7ap_uintILi9EEC1Ei(%class.ap_uint.3* %_l_i, i32 0)
  call void @_ZN7ap_uintILi9EEC1Ei(%class.ap_uint.3* %_l_j, i32 0)
  br label %194

; <label>:194                                     ; preds = %171
  %195 = call %class.ap_uint.3* @_ZN7ap_uintILi9EEaSEi(%class.ap_uint.3* %_l_i, i32 0)
  br label %196

; <label>:196                                     ; preds = %228, %194
  %197 = bitcast %class.ap_uint.3* %24 to i8*
  %198 = bitcast %class.ap_uint.3* %_l_i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %197, i8* %198, i64 2, i32 1, i1 false)
  %199 = getelementptr %class.ap_uint.3* %24, i32 0, i32 0
  %200 = bitcast [2 x i8]* %199 to i16*
  %201 = load i16* %200, align 1
  %202 = call zeroext i1 @_ZleILi9EEb7ap_uintIXT_EEl(i16 %201, i64 0)
  br i1 %202, label %203, label %232

; <label>:203                                     ; preds = %196
  %204 = call i16 @_ZmlILi9EE7ap_uintIXT_EElRKS1_(i64 8, %class.ap_uint.3* %_l_i)
  %205 = getelementptr %class.ap_uint.3* %25, i32 0, i32 0
  %206 = bitcast [2 x i8]* %205 to i16*
  store i16 %204, i16* %206, align 1
  %207 = call i16 @_ZplILi9EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.3* %25)
  %208 = getelementptr %class.ap_uint.3* %_in_l_i, i32 0, i32 0
  %209 = bitcast [2 x i8]* %208 to i16*
  store i16 %207, i16* %209, align 1
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val)
  %210 = call i16 @_ZplILi9EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_in_l_i, i32 7)
  %211 = getelementptr %class.ap_uint.3* %26, i32 0, i32 0
  %212 = bitcast [2 x i8]* %211 to i16*
  store i16 %210, i16* %212, align 1
  %213 = call i64* @_ZN7ap_uintILi8EE5rangeILi9ELi9EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %in_buf, %class.ap_uint.3* %26, %class.ap_uint.3* %_in_l_i)
  %214 = load i64* %213
  %215 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %val, i64 %214)
  %216 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %val)
  %217 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.3* %_l_j)
  %218 = getelementptr inbounds [1 x [256 x %class.ap_uint.0]]* %tmp_cum_hist, i32 0, i64 %217
  %219 = getelementptr inbounds [256 x %class.ap_uint.0]* %218, i32 0, i64 %216
  %220 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %219)
  %221 = call i16 @_ZplILi9EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3* %_in_l_i, i32 7)
  %222 = getelementptr %class.ap_uint.3* %27, i32 0, i32 0
  %223 = bitcast [2 x i8]* %222 to i16*
  store i16 %221, i16* %223, align 1
  %224 = call i64* @_ZN7ap_uintILi8EEclILi9ELi9EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %temp_buf, %class.ap_uint.3* %27, %class.ap_uint.3* %_in_l_i)
  store i64 %220, i64* %224
  %225 = call i16 @_ZN7ap_uintILi9EEppEi(%class.ap_uint.3* %_l_j, i32 0)
  %226 = getelementptr %class.ap_uint.3* %28, i32 0, i32 0
  %227 = bitcast [2 x i8]* %226 to i16*
  store i16 %225, i16* %227, align 1
  br label %228

; <label>:228                                     ; preds = %203
  %229 = call i16 @_ZN7ap_uintILi9EEppEi(%class.ap_uint.3* %_l_i, i32 0)
  %230 = getelementptr %class.ap_uint.3* %29, i32 0, i32 0
  %231 = bitcast [2 x i8]* %230 to i16*
  store i16 %229, i16* %231, align 1
  br label %196

; <label>:232                                     ; preds = %196
  %233 = call %class.ap_uint.3* @_ZN7ap_uintILi9EEaSEl(%class.ap_uint.3* %_l_i, i64 8)
  %234 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %235 = load i16* %5, align 2
  %236 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.5* %row, i16 zeroext %235)
  %237 = getelementptr %class.ap_uint.5* %30, i32 0, i32 0
  %238 = bitcast [2 x i8]* %237 to i16*
  store i16 %236, i16* %238, align 1
  %239 = bitcast %class.ap_uint.5* %31 to i8*
  %240 = bitcast %class.ap_uint.5* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %239, i8* %240, i64 2, i32 1, i1 false)
  %241 = getelementptr %class.ap_uint.5* %30, i32 0, i32 0
  %242 = bitcast [2 x i8]* %241 to i16*
  %243 = load i16* %242, align 1
  %244 = getelementptr %class.ap_uint.5* %31, i32 0, i32 0
  %245 = bitcast [2 x i8]* %244 to i16*
  %246 = load i16* %245, align 1
  %247 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %243, i16 %246)
  %248 = getelementptr %class.ap_int.6* %32, i32 0, i32 0
  %249 = bitcast [4 x i8]* %248 to i32*
  store i32 %247, i32* %249, align 1
  %250 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int.6* %32)
  %251 = trunc i64 %250 to i32
  %252 = bitcast %class.ap_uint.0* %33 to i8*
  %253 = bitcast %class.ap_uint.0* %temp_buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %252, i8* %253, i64 1, i32 1, i1 false)
  %254 = getelementptr %class.ap_uint.0* %33, i32 0, i32 0
  %255 = bitcast [1 x i8]* %254 to i8*
  %256 = load i8* %255, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %234, i32 %251, i8 %256)
  br label %257

; <label>:257                                     ; preds = %232
  %258 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.5* %col, i32 0)
  %259 = getelementptr %class.ap_uint.5* %34, i32 0, i32 0
  %260 = bitcast [2 x i8]* %259 to i16*
  store i16 %258, i16* %260, align 1
  br label %163

; <label>:261                                     ; preds = %163
  br label %262

; <label>:262                                     ; preds = %261
  %263 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.5* %row, i32 0)
  %264 = getelementptr %class.ap_uint.5* %35, i32 0, i32 0
  %265 = bitcast [2 x i8]* %264 to i16*
  store i16 %263, i16* %265, align 1
  br label %153

; <label>:266                                     ; preds = %153
  ret void
}

declare void @_ZN7ap_uintILi40EEC1ILi80EEERK6ap_intIXT_EE(%class.ap_uint.1*, %class.ap_int*)

declare { i64, i16 } @_ZmlILi40ELi40EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i40, i40)

declare void @_ZN7ap_uintILi40EEC1Ei(%class.ap_uint.1*, i32)

declare void @_ZN7ap_uintILi40EEC1Ej(%class.ap_uint.1*, i32)

declare void @_ZN7ap_uintILi32EEC1Ei(%class.ap_uint.2*, i32)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0*, i32)

declare void @_ZN7ap_uintILi9EEC1Ei(%class.ap_uint.3*, i32)

declare zeroext i1 @_ZltILi9EEb7ap_uintIXT_EEi(i16, i32)

declare %class.ap_uint.2* @_ZN7ap_uintILi32EEaSEj(%class.ap_uint.2*, i32)

declare i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.2*)

declare i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.3*)

declare i64 @_ZNK7ap_uintILi40EEcvmEv(%class.ap_uint.1*)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0*, i64)

declare i16 @_ZN7ap_uintILi9EEppEi(%class.ap_uint.3*, i32)

declare void @_ZN7ap_uintILi5EEC1Ei(%class.ap_uint.4*, i32)

declare zeroext i1 @_ZltILi5EEb7ap_uintIXT_EEi(i8, i32)

declare i64 @_ZNK7ap_uintILi5EEcvmEv(%class.ap_uint.4*)

declare i8 @_ZN7ap_uintILi5EEppEi(%class.ap_uint.4*, i32)

declare void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.5*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.5*, i16 zeroext)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int.6*)

declare %class.ap_uint.3* @_ZN7ap_uintILi9EEaSEi(%class.ap_uint.3*, i32)

declare zeroext i1 @_ZleILi9EEb7ap_uintIXT_EEl(i16, i64)

declare i16 @_ZplILi9EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.3*)

declare i16 @_ZmlILi9EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.3*)

declare i64* @_ZN7ap_uintILi8EE5rangeILi9ELi9EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0*, %class.ap_uint.3*, %class.ap_uint.3*)

declare i16 @_ZplILi9EE7ap_uintIXT_EERKS1_i(%class.ap_uint.3*, i32)

declare i64* @_ZN7ap_uintILi8EEclILi9ELi9EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0*, %class.ap_uint.3*, %class.ap_uint.3*)

declare %class.ap_uint.3* @_ZN7ap_uintILi9EEaSEl(%class.ap_uint.3*, i64)

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

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.5*, i32)

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.7*, i32)

declare zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16, i32)

declare i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.7*)

declare i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.7*, i32)

declare zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16, i32)

declare i32 @_ZplILi26EE6ap_intIXT_EERKS1_i(%class.ap_int.6*, i32)

declare void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0*, i32)

declare %class.ap_uint.5* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.5*, %class.ap_uint.5*)

declare i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5*, i32)

declare %class.ap_uint.4* @_ZN7ap_uintILi5EEaSEi(%class.ap_uint.4*, i32)

declare zeroext i1 @_ZleILi5EEb7ap_uintIXT_EEi(i8, i32)

declare i8 @_ZN7ap_uintILi5EEppEv(%class.ap_uint.4*)

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

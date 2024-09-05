; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/reduce_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [8 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_Mat_5_1_3840_1_ = type { i8, i32, i32, i32, [3840 x %class.ap_uint.1] }
%class.ap_uint.1 = type { [4 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.2 = type { [2 x i8] }
%class.ap_int = type { [4 x i8] }
%class.ap_int.3 = type { [5 x i8] }

@.str = private unnamed_addr constant [93 x i8] c"((height <= ROWS ) && (width <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"xf_reduce.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL112p_ZN2xf6reduceILi1ELi0ELi5ELi256ELi256ELi1ELi3840ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi5ELi1ELi3840ELi1EEh_1R19xf_Mat_0_256_256_1_R18xf_Mat_5_1_3840_1_h = private unnamed_addr constant [192 x i8] c"void p_ZN2xf6reduceILi1ELi0ELi5ELi256ELi256ELi1ELi3840ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi5ELi1ELi3840ELi1EEh_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_5_1_3840_1_ &, unsigned char)\00", align 1
@.str2 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL37p_ZN2xf15Mat_5_1_3840_1_4initIEEiib_1P18xf_Mat_5_1_3840_1_iib = private unnamed_addr constant [88 x i8] c"void p_ZN2xf15Mat_5_1_3840_1_4initIEEiib_1(struct xf_Mat_5_1_3840_1_ *, int, int, bool)\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z12reduce_accelP7ap_uintILi64EES1_iii(%class.ap_uint* %img_inp, %class.ap_uint* %img_out, i32 %rows, i32 %cols, i32 %dim) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPIX = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_5_1_3840_1_, align 4
  store %class.ap_uint* %img_inp, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_out, %class.ap_uint** %2, align 8
  store i32 %rows, i32* %3, align 4
  store i32 %cols, i32* %4, align 4
  store i32 %dim, i32* %5, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPIX, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat)
  %6 = load i32* %3, align 4
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32* %4, align 4
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  call void @_ZN18xf_Mat_5_1_3840_1_C1Ev(%struct.xf_Mat_5_1_3840_1_* %out_mat)
  call void @_ZL32p_ZN2xf15Mat_5_1_3840_1_C2IEEv_1P18xf_Mat_5_1_3840_1_(%struct.xf_Mat_5_1_3840_1_* %out_mat)
  %10 = load i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %0
  %13 = load i32* %3, align 4
  %14 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %out_mat, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %out_mat, i32 0, i32 2
  store i32 1, i32* %15, align 4
  br label %20

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %out_mat, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load i32* %4, align 4
  %19 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %out_mat, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  br label %20

; <label>:20                                      ; preds = %16, %12
  %21 = load %class.ap_uint** %1, align 8
  call void @_ZL93p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_0_256_256_1_(%class.ap_uint* %21, %struct.xf_Mat_0_256_256_1_* %in_mat)
  %22 = load i32* %5, align 4
  %23 = trunc i32 %22 to i8
  call void @_ZL112p_ZN2xf6reduceILi1ELi0ELi5ELi256ELi256ELi1ELi3840ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi5ELi1ELi3840ELi1EEh_1R19xf_Mat_0_256_256_1_R18xf_Mat_5_1_3840_1_h(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_5_1_3840_1_* %out_mat, i8 zeroext %23)
  %24 = load %class.ap_uint** %2, align 8
  call void @_ZL91p_ZN2xf11xfMat2ArrayILi64ELi5ELi1ELi3840ELi1EEER3MatILi5ELi1ELi3840ELi1EEP7ap_uintILi64EE_1R18xf_Mat_5_1_3840_1_P7ap_uintILi64EE(%struct.xf_Mat_5_1_3840_1_* %out_mat, %class.ap_uint* %24)
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

define linkonce_odr void @_ZN18xf_Mat_5_1_3840_1_C1Ev(%struct.xf_Mat_5_1_3840_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_5_1_3840_1_*, align 8
  store %struct.xf_Mat_5_1_3840_1_* %this, %struct.xf_Mat_5_1_3840_1_** %1, align 8
  %2 = load %struct.xf_Mat_5_1_3840_1_** %1
  call void @_ZN18xf_Mat_5_1_3840_1_C2Ev(%struct.xf_Mat_5_1_3840_1_* %2)
  ret void
}

define internal void @_ZL32p_ZN2xf15Mat_5_1_3840_1_C2IEEv_1P18xf_Mat_5_1_3840_1_(%struct.xf_Mat_5_1_3840_1_* %this_) uwtable {
  %1 = alloca %struct.xf_Mat_5_1_3840_1_*, align 8
  store %struct.xf_Mat_5_1_3840_1_* %this_, %struct.xf_Mat_5_1_3840_1_** %1, align 8
  %2 = load %struct.xf_Mat_5_1_3840_1_** %1, align 8
  call void @_ZL37p_ZN2xf15Mat_5_1_3840_1_4initIEEiib_1P18xf_Mat_5_1_3840_1_iib(%struct.xf_Mat_5_1_3840_1_* %2, i32 1, i32 3840, i1 zeroext true)
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

define internal void @_ZL112p_ZN2xf6reduceILi1ELi0ELi5ELi256ELi256ELi1ELi3840ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi5ELi1ELi3840ELi1EEh_1R19xf_Mat_0_256_256_1_R18xf_Mat_5_1_3840_1_h(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_5_1_3840_1_* %_dst_mat, i8 zeroext %dim) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_5_1_3840_1_*, align 8
  %3 = alloca i8, align 1
  %width = alloca i16, align 2
  %height = alloca i16, align 2
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_5_1_3840_1_* %_dst_mat, %struct.xf_Mat_5_1_3840_1_** %2, align 8
  store i8 %dim, i8* %3, align 1
  %4 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %4, i32 0, i32 2
  %6 = load i32* %5, align 4
  %7 = ashr i32 %6, 0
  %8 = trunc i32 %7 to i16
  store i16 %8, i16* %width, align 2
  %9 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %9, i32 0, i32 1
  %11 = load i32* %10, align 4
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %height, align 2
  %13 = load i16* %height, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp sle i32 %14, 256
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %0
  %17 = load i16* %width, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp sle i32 %18, 256
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %16
  br label %23

; <label>:21                                      ; preds = %16, %0
  call void @__assert_fail(i8* getelementptr inbounds ([93 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i32 0, i32 0), i32 208, i8* getelementptr inbounds ([192 x i8]* @__PRETTY_FUNCTION__._ZL112p_ZN2xf6reduceILi1ELi0ELi5ELi256ELi256ELi1ELi3840ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi5ELi1ELi3840ELi1EEh_1R19xf_Mat_0_256_256_1_R18xf_Mat_5_1_3840_1_h, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %25 = load %struct.xf_Mat_5_1_3840_1_** %2, align 8
  %26 = load i8* %3, align 1
  %27 = load i16* %height, align 2
  %28 = load i16* %width, align 2
  call void @_ZL142p_ZN2xf14xFreduceKernelILi0ELi5ELi256ELi256ELi1ELi3840ELi0ELi1ELi1ELi12ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi5ELi1ELi3840ELi1EEhtt_1R19xf_Mat_0_256_256_1_R18xf_Mat_5_1_3840_1_htt(%struct.xf_Mat_0_256_256_1_* %24, %struct.xf_Mat_5_1_3840_1_* %25, i8 zeroext %26, i16 zeroext %27, i16 zeroext %28)
  ret void
}

define internal void @_ZL91p_ZN2xf11xfMat2ArrayILi64ELi5ELi1ELi3840ELi1EEER3MatILi5ELi1ELi3840ELi1EEP7ap_uintILi64EE_1R18xf_Mat_5_1_3840_1_P7ap_uintILi64EE(%struct.xf_Mat_5_1_3840_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_Mat_5_1_3840_1_*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %struct.xf_Mat_5_1_3840_1_* %srcMat, %struct.xf_Mat_5_1_3840_1_** %1, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %2, align 8
  %3 = load %struct.xf_Mat_5_1_3840_1_** %1, align 8
  %4 = load %class.ap_uint** %2, align 8
  call void @_ZL104p_ZN2xf11accel_utils11xfMat2ArrayILi64ELi5ELi1ELi3840ELi1EEER3MatILi5ELi1ELi3840ELi1EEP7ap_uintILi64EE_1P14xf_accel_utilsR18xf_Mat_5_1_3840_1_P7ap_uintILi64EE(%struct.xf_accel_utils* %au, %struct.xf_Mat_5_1_3840_1_* %3, %class.ap_uint* %4)
  ret void
}

define internal void @_ZL104p_ZN2xf11accel_utils11xfMat2ArrayILi64ELi5ELi1ELi3840ELi1EEER3MatILi5ELi1ELi3840ELi1EEP7ap_uintILi64EE_1P14xf_accel_utilsR18xf_Mat_5_1_3840_1_P7ap_uintILi64EE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_5_1_3840_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_5_1_3840_1_*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %struct.xf_Mat_5_1_3840_1_* %srcMat, %struct.xf_Mat_5_1_3840_1_** %2, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %3, align 8
  store i32 32, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi64EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_5_1_3840_1_** %2, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_5_1_3840_1_** %2, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %struct.xf_Mat_5_1_3840_1_** %2, align 8
  call void @_ZL122p_ZN2xf11accel_utils13xfMat2hlsStrmILi64ELi5ELi1ELi3840ELi1ELi3840EEER3MatILi5ELi1ELi3840ELi1EER6streamI7ap_uintILi64EEE_1P14xf_accel_utilsR18xf_Mat_5_1_3840_1_RN3hls6streamI7ap_uintILi64EEEE(%struct.xf_accel_utils* %10, %struct.xf_Mat_5_1_3840_1_* %11, %"class.hls::stream"* %strm)
  %12 = load %struct.xf_accel_utils** %1, align 8
  %13 = load %class.ap_uint** %3, align 8
  %14 = load i32* %rows, align 4
  %15 = load i32* %cols, align 4
  call void @_ZL119p_ZN2xf11accel_utils13hlsStrm2ArrayILi64ELi1ELi3840ELi1ELi1ELi32ELi1920EEER6streamI7ap_uintILi64EEEP7ap_uintILi64EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi64EEEEPS4_ii(%struct.xf_accel_utils* %12, %"class.hls::stream"* %strm, %class.ap_uint* %13, i32 %14, i32 %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi64EEEC1Ev(%"class.hls::stream"*)

define internal void @_ZL122p_ZN2xf11accel_utils13xfMat2hlsStrmILi64ELi5ELi1ELi3840ELi1ELi3840EEER3MatILi5ELi1ELi3840ELi1EER6streamI7ap_uintILi64EEE_1P14xf_accel_utilsR18xf_Mat_5_1_3840_1_RN3hls6streamI7ap_uintILi64EEEE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_5_1_3840_1_* %srcMat, %"class.hls::stream"* %dstStrm) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_5_1_3840_1_*, align 8
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
  store %struct.xf_Mat_5_1_3840_1_* %srcMat, %struct.xf_Mat_5_1_3840_1_** %2, align 8
  store %"class.hls::stream"* %dstStrm, %"class.hls::stream"** %3, align 8
  %5 = load %struct.xf_Mat_5_1_3840_1_** %2, align 8
  %6 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  store i32 %7, i32* %rows, align 4
  %8 = load %struct.xf_Mat_5_1_3840_1_** %2, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %8, i32 0, i32 2
  %10 = load i32* %9, align 4
  store i32 %10, i32* %cols, align 4
  %11 = load i32* %rows, align 4
  %12 = load i32* %cols, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sdiv i32 %13, 1
  store i32 %14, i32* %loop_count, align 4
  store i32 64, i32* %bits_to_add, align 4
  store i32 32, i32* %N_size, align 4
  call void @_ZN7ap_uintILi64EEC1Ev(%class.ap_uint* %r)
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
  %21 = load %struct.xf_Mat_5_1_3840_1_** %2, align 8
  %22 = load i32* %i, align 4
  %23 = call i32 @_ZL35p_ZN2xf15Mat_5_1_3840_1_4readIEEi_1P18xf_Mat_5_1_3840_1_i(%struct.xf_Mat_5_1_3840_1_* %21, i32 %22)
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
  %35 = sub nsw i32 64, %34
  %36 = call i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint* %r, i32 63, i32 %35)
  store i64 %33, i64* %36
  %37 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi64EEE5writeERKS2_(%"class.hls::stream"* %37, %class.ap_uint* %r)
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
  %47 = call i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint* %r, i32 %46, i32 0)
  store i64 %43, i64* %47
  br label %48

; <label>:48                                      ; preds = %40, %29
  %49 = load i32* %bits_to_add, align 4
  %50 = sub nsw i32 32, %49
  %51 = sub nsw i32 64, %50
  store i32 %51, i32* %bits_to_add, align 4
  br label %63

; <label>:52                                      ; preds = %20
  %53 = call i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.1* %in)
  %54 = load i32* %bits_to_add, align 4
  %55 = sub nsw i32 64, %54
  %56 = add nsw i32 %55, 32
  %57 = sub nsw i32 %56, 1
  %58 = load i32* %bits_to_add, align 4
  %59 = sub nsw i32 64, %58
  %60 = call i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint* %r, i32 %57, i32 %59)
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
  %69 = icmp ne i32 %68, 64
  br i1 %69, label %70, label %72

; <label>:70                                      ; preds = %67
  %71 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi64EEE5writeERKS2_(%"class.hls::stream"* %71, %class.ap_uint* %r)
  br label %72

; <label>:72                                      ; preds = %70, %67
  ret void
}

define internal void @_ZL119p_ZN2xf11accel_utils13hlsStrm2ArrayILi64ELi1ELi3840ELi1ELi1ELi32ELi1920EEER6streamI7ap_uintILi64EEEP7ap_uintILi64EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi64EEEEPS4_ii(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %class.ap_uint* %dstPtr, i32 %rows, i32 %cols) uwtable {
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

declare void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1*)

declare %class.ap_uint.1* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.1*, %class.ap_uint.1*)

define internal i32 @_ZL35p_ZN2xf15Mat_5_1_3840_1_4readIEEi_1P18xf_Mat_5_1_3840_1_i(%struct.xf_Mat_5_1_3840_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.1, align 1
  %2 = alloca %struct.xf_Mat_5_1_3840_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_5_1_3840_1_* %this_, %struct.xf_Mat_5_1_3840_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_5_1_3840_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %6, i32 0, i32 4
  %8 = getelementptr inbounds [3840 x %class.ap_uint.1]* %7, i32 0, i64 %5
  %9 = bitcast %class.ap_uint.1* %1 to i8*
  %10 = bitcast %class.ap_uint.1* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 4, i32 1, i1 false)
  %11 = getelementptr %class.ap_uint.1* %1, i32 0, i32 0
  %12 = bitcast [4 x i8]* %11 to i32*
  %13 = load i32* %12, align 1
  ret i32 %13
}

declare i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.1*, i32, i32)

declare i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi64EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

declare i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.1*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL142p_ZN2xf14xFreduceKernelILi0ELi5ELi256ELi256ELi1ELi3840ELi0ELi1ELi1ELi12ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi5ELi1ELi3840ELi1EEhtt_1R19xf_Mat_0_256_256_1_R18xf_Mat_5_1_3840_1_htt(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_5_1_3840_1_* %_dst_mat, i8 zeroext %dim, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_5_1_3840_1_*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %val_src = alloca %class.ap_uint.0, align 1
  %val_dst = alloca %class.ap_uint.1, align 1
  %p = alloca i64, align 8
  %q = alloca i64, align 8
  %max = alloca i8, align 1
  %depth = alloca i16, align 2
  %internal_res = alloca %class.ap_uint.1, align 1
  %line_buf = alloca [256 x %class.ap_uint.1], align 16
  %i = alloca i32, align 4
  %6 = alloca %class.ap_uint.0, align 1
  %i1 = alloca %class.ap_uint.2, align 1
  %j = alloca %class.ap_uint.2, align 1
  %k = alloca %class.ap_uint.2, align 1
  %planes = alloca %class.ap_uint.2, align 1
  %var = alloca i32, align 4
  %7 = alloca %class.ap_uint.2, align 1
  %8 = alloca %class.ap_uint.2, align 1
  %9 = alloca %class.ap_uint.0, align 1
  %10 = alloca %class.ap_uint.2, align 1
  %11 = alloca %class.ap_uint.2, align 1
  %12 = alloca %class.ap_int, align 1
  %13 = alloca %class.ap_int.3, align 1
  %14 = alloca %class.ap_uint.1, align 1
  %15 = alloca %class.ap_uint.0, align 1
  %16 = alloca i40
  %17 = alloca %class.ap_uint.2, align 1
  %18 = alloca %class.ap_uint.1, align 1
  %19 = alloca %class.ap_uint.2, align 1
  %20 = alloca %class.ap_uint.1, align 1
  %21 = alloca %class.ap_uint.2, align 1
  %out = alloca i32, align 4
  %22 = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_5_1_3840_1_* %_dst_mat, %struct.xf_Mat_5_1_3840_1_** %2, align 8
  store i8 %dim, i8* %3, align 1
  store i16 %height, i16* %4, align 2
  store i16 %width, i16* %5, align 2
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_src)
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1* %val_dst)
  store i64 0, i64* %p, align 8
  store i64 0, i64* %q, align 8
  store i8 0, i8* %max, align 1
  store i16 8, i16* %depth, align 2
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1* %internal_res)
  %23 = getelementptr inbounds [256 x %class.ap_uint.1]* %line_buf, i32 0, i32 0
  %24 = getelementptr inbounds %class.ap_uint.1* %23, i64 256
  br label %25

; <label>:25                                      ; preds = %25, %0
  %26 = phi %class.ap_uint.1* [ %23, %0 ], [ %27, %25 ]
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.1* %26)
  %27 = getelementptr inbounds %class.ap_uint.1* %26, i64 1
  %28 = icmp eq %class.ap_uint.1* %27, %24
  br i1 %28, label %29, label %25

; <label>:29                                      ; preds = %25
  %30 = load i8* %3, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %54

; <label>:33                                      ; preds = %29
  store i32 0, i32* %i, align 4
  br label %34

; <label>:34                                      ; preds = %50, %33
  %35 = load i32* %i, align 4
  %36 = load i16* %5, align 2
  %37 = zext i16 %36 to i32
  %38 = ashr i32 %37, 0
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %53

; <label>:40                                      ; preds = %34
  %41 = load i32* %i, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [256 x %class.ap_uint.1]* %line_buf, i32 0, i64 %42
  %44 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %45 = load i32* %i, align 4
  %46 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %44, i32 %45)
  %47 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %48 = bitcast [1 x i8]* %47 to i8*
  store i8 %46, i8* %48, align 1
  %49 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSILi8EEERS0_RKS_IXT_EE(%class.ap_uint.1* %43, %class.ap_uint.0* %6)
  br label %50

; <label>:50                                      ; preds = %40
  %51 = load i32* %i, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %i, align 4
  br label %34

; <label>:53                                      ; preds = %34
  br label %54

; <label>:54                                      ; preds = %53, %29
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %i1)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %j)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %k)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %planes)
  %55 = load i8* %3, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %54
  store i32 1, i32* %var, align 4
  br label %60

; <label>:59                                      ; preds = %54
  store i32 0, i32* %var, align 4
  br label %60

; <label>:60                                      ; preds = %59, %58
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load i32* %var, align 4
  %63 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEj(%class.ap_uint.2* %i1, i32 %62)
  br label %64

; <label>:64                                      ; preds = %179, %61
  %65 = bitcast %class.ap_uint.2* %7 to i8*
  %66 = bitcast %class.ap_uint.2* %i1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 2, i32 1, i1 false)
  %67 = load i16* %4, align 2
  %68 = getelementptr %class.ap_uint.2* %7, i32 0, i32 0
  %69 = bitcast [2 x i8]* %68 to i16*
  %70 = load i16* %69, align 1
  %71 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %70, i16 zeroext %67)
  br i1 %71, label %72, label %183

; <label>:72                                      ; preds = %64
  %73 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSEi(%class.ap_uint.1* %internal_res, i32 0)
  store i8 0, i8* %max, align 1
  br label %74

; <label>:74                                      ; preds = %72
  %75 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %j, i32 0)
  br label %76

; <label>:76                                      ; preds = %159, %74
  %77 = bitcast %class.ap_uint.2* %8 to i8*
  %78 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 2, i32 1, i1 false)
  %79 = load i16* %5, align 2
  %80 = getelementptr %class.ap_uint.2* %8, i32 0, i32 0
  %81 = bitcast [2 x i8]* %80 to i16*
  %82 = load i16* %81, align 1
  %83 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %82, i16 zeroext %79)
  br i1 %83, label %84, label %163

; <label>:84                                      ; preds = %76
  %85 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %86 = load i16* %5, align 2
  %87 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.2* %i1, i16 zeroext %86)
  %88 = getelementptr %class.ap_uint.2* %10, i32 0, i32 0
  %89 = bitcast [2 x i8]* %88 to i16*
  store i16 %87, i16* %89, align 1
  %90 = bitcast %class.ap_uint.2* %11 to i8*
  %91 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 2, i32 1, i1 false)
  %92 = getelementptr %class.ap_uint.2* %10, i32 0, i32 0
  %93 = bitcast [2 x i8]* %92 to i16*
  %94 = load i16* %93, align 1
  %95 = getelementptr %class.ap_uint.2* %11, i32 0, i32 0
  %96 = bitcast [2 x i8]* %95 to i16*
  %97 = load i16* %96, align 1
  %98 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %94, i16 %97)
  %99 = getelementptr %class.ap_int* %12, i32 0, i32 0
  %100 = bitcast [4 x i8]* %99 to i32*
  store i32 %98, i32* %100, align 1
  %101 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %12)
  %102 = trunc i64 %101 to i32
  %103 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %85, i32 %102)
  %104 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %105 = bitcast [1 x i8]* %104 to i8*
  store i8 %103, i8* %105, align 1
  %106 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val_src, %class.ap_uint.0* %9)
  %107 = load i8* %3, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

; <label>:110                                     ; preds = %84
  %111 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %j)
  %112 = getelementptr inbounds [256 x %class.ap_uint.1]* %line_buf, i32 0, i64 %111
  %113 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.1* %internal_res, %class.ap_uint.1* %112)
  br label %114

; <label>:114                                     ; preds = %110, %84
  %115 = bitcast %class.ap_uint.1* %14 to i8*
  %116 = bitcast %class.ap_uint.1* %internal_res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %116, i64 4, i32 1, i1 false)
  %117 = bitcast %class.ap_uint.0* %15 to i8*
  %118 = bitcast %class.ap_uint.0* %val_src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 1, i32 1, i1 false)
  %119 = getelementptr %class.ap_uint.1* %14, i32 0, i32 0
  %120 = bitcast [4 x i8]* %119 to i32*
  %121 = load i32* %120, align 1
  %122 = getelementptr %class.ap_uint.0* %15, i32 0, i32 0
  %123 = bitcast [1 x i8]* %122 to i8*
  %124 = load i8* %123, align 1
  %125 = call i40 @_ZplILi32ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i32 %121, i8 %124)
  %126 = getelementptr %class.ap_int.3* %13, i32 0, i32 0
  store i40 %125, i40* %16
  %127 = bitcast i40* %16 to [5 x i8]*
  %128 = load [5 x i8]* %127, align 1
  store [5 x i8] %128, [5 x i8]* %126
  %129 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSILi40EEERS0_RK6ap_intIXT_EE(%class.ap_uint.1* %internal_res, %class.ap_int.3* %13)
  %130 = load i8* %3, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %149

; <label>:133                                     ; preds = %114
  %134 = bitcast %class.ap_uint.2* %17 to i8*
  %135 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 2, i32 1, i1 false)
  %136 = load i16* %5, align 2
  %137 = zext i16 %136 to i32
  %138 = sub nsw i32 %137, 1
  %139 = getelementptr %class.ap_uint.2* %17, i32 0, i32 0
  %140 = bitcast [2 x i8]* %139 to i16*
  %141 = load i16* %140, align 1
  %142 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16 %141, i32 %138)
  br i1 %142, label %143, label %149

; <label>:143                                     ; preds = %133
  %144 = load i16* %5, align 2
  %145 = call i32 @_ZdvILi32EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %internal_res, i16 zeroext %144)
  %146 = getelementptr %class.ap_uint.1* %18, i32 0, i32 0
  %147 = bitcast [4 x i8]* %146 to i32*
  store i32 %145, i32* %147, align 1
  %148 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.1* %val_dst, %class.ap_uint.1* %18)
  br label %149

; <label>:149                                     ; preds = %143, %133, %114
  %150 = load i8* %3, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %158

; <label>:153                                     ; preds = %149
  %154 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.1* %val_dst, %class.ap_uint.1* %internal_res)
  %155 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %j)
  %156 = getelementptr inbounds [256 x %class.ap_uint.1]* %line_buf, i32 0, i64 %155
  %157 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.1* %156, %class.ap_uint.1* %val_dst)
  br label %158

; <label>:158                                     ; preds = %153, %149
  br label %159

; <label>:159                                     ; preds = %158
  %160 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %j, i32 0)
  %161 = getelementptr %class.ap_uint.2* %19, i32 0, i32 0
  %162 = bitcast [2 x i8]* %161 to i16*
  store i16 %160, i16* %162, align 1
  br label %76

; <label>:163                                     ; preds = %76
  %164 = load i8* %3, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %178

; <label>:167                                     ; preds = %163
  %168 = load %struct.xf_Mat_5_1_3840_1_** %2, align 8
  %169 = load i64* %q, align 8
  %170 = trunc i64 %169 to i32
  %171 = bitcast %class.ap_uint.1* %20 to i8*
  %172 = bitcast %class.ap_uint.1* %val_dst to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %171, i8* %172, i64 4, i32 1, i1 false)
  %173 = getelementptr %class.ap_uint.1* %20, i32 0, i32 0
  %174 = bitcast [4 x i8]* %173 to i32*
  %175 = load i32* %174, align 1
  call void @_ZL51p_ZN2xf15Mat_5_1_3840_1_5writeIEEi7ap_uintILi32EE_1P18xf_Mat_5_1_3840_1_i7ap_uintILi32EE(%struct.xf_Mat_5_1_3840_1_* %168, i32 %170, i32 %175)
  %176 = load i64* %q, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %q, align 8
  br label %178

; <label>:178                                     ; preds = %167, %163
  br label %179

; <label>:179                                     ; preds = %178
  %180 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %i1, i32 0)
  %181 = getelementptr %class.ap_uint.2* %21, i32 0, i32 0
  %182 = bitcast [2 x i8]* %181 to i16*
  store i16 %180, i16* %182, align 1
  br label %64

; <label>:183                                     ; preds = %64
  %184 = load i8* %3, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %214

; <label>:187                                     ; preds = %183
  store i32 0, i32* %out, align 4
  br label %188

; <label>:188                                     ; preds = %210, %187
  %189 = load i32* %out, align 4
  %190 = load i16* %5, align 2
  %191 = zext i16 %190 to i32
  %192 = ashr i32 %191, 0
  %193 = icmp ult i32 %189, %192
  br i1 %193, label %194, label %213

; <label>:194                                     ; preds = %188
  %195 = load %struct.xf_Mat_5_1_3840_1_** %2, align 8
  %196 = load i64* %q, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i32* %out, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [256 x %class.ap_uint.1]* %line_buf, i32 0, i64 %199
  %201 = load i16* %4, align 2
  %202 = call i32 @_ZdvILi32EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %200, i16 zeroext %201)
  %203 = getelementptr %class.ap_uint.1* %22, i32 0, i32 0
  %204 = bitcast [4 x i8]* %203 to i32*
  store i32 %202, i32* %204, align 1
  %205 = getelementptr %class.ap_uint.1* %22, i32 0, i32 0
  %206 = bitcast [4 x i8]* %205 to i32*
  %207 = load i32* %206, align 1
  call void @_ZL51p_ZN2xf15Mat_5_1_3840_1_5writeIEEi7ap_uintILi32EE_1P18xf_Mat_5_1_3840_1_i7ap_uintILi32EE(%struct.xf_Mat_5_1_3840_1_* %195, i32 %197, i32 %207)
  %208 = load i64* %q, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %q, align 8
  br label %210

; <label>:210                                     ; preds = %194
  %211 = load i32* %out, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %out, align 4
  br label %188

; <label>:213                                     ; preds = %188
  br label %214

; <label>:214                                     ; preds = %213, %183
  ret void
}

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0*)

declare %class.ap_uint.1* @_ZN7ap_uintILi32EEaSILi8EEERS0_RKS_IXT_EE(%class.ap_uint.1*, %class.ap_uint.0*)

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

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2*)

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEj(%class.ap_uint.2*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare %class.ap_uint.1* @_ZN7ap_uintILi32EEaSEi(%class.ap_uint.1*, i32)

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2*, i32)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0*, %class.ap_uint.0*)

declare i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.2*, i16 zeroext)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int*)

declare i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2*)

declare %class.ap_uint.1* @_ZN7ap_uintILi32EEaSILi40EEERS0_RK6ap_intIXT_EE(%class.ap_uint.1*, %class.ap_int.3*)

declare i40 @_ZplILi32ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i32, i8)

declare zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEi(i16, i32)

declare i32 @_ZdvILi32EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1*, i16 zeroext)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2*, i32)

define internal void @_ZL51p_ZN2xf15Mat_5_1_3840_1_5writeIEEi7ap_uintILi32EE_1P18xf_Mat_5_1_3840_1_i7ap_uintILi32EE(%struct.xf_Mat_5_1_3840_1_* %this_, i32 %index, i32 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_5_1_3840_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.1, align 4
  store %struct.xf_Mat_5_1_3840_1_* %this_, %struct.xf_Mat_5_1_3840_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint.1* %val, i32 0, i32 0
  %4 = bitcast [4 x i8]* %3 to i32*
  store i32 %val.coerce, i32* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_5_1_3840_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [3840 x %class.ap_uint.1]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint.1* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.1* %9, %class.ap_uint.1* %val)
  ret void
}

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

define internal void @_ZL37p_ZN2xf15Mat_5_1_3840_1_4initIEEiib_1P18xf_Mat_5_1_3840_1_iib(%struct.xf_Mat_5_1_3840_1_* %this_, i32 %_rows, i32 %_cols, i1 zeroext %allocate) nounwind uwtable {
  %1 = alloca %struct.xf_Mat_5_1_3840_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.xf_Mat_5_1_3840_1_* %this_, %struct.xf_Mat_5_1_3840_1_** %1, align 8
  store i32 %_rows, i32* %2, align 4
  store i32 %_cols, i32* %3, align 4
  %5 = zext i1 %allocate to i8
  store i8 %5, i8* %4, align 1
  %6 = load i32* %2, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %0
  %9 = load i32* %2, align 4
  %10 = icmp sle i32 %9, 1
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %8
  %12 = load i32* %3, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %11
  %15 = load i32* %3, align 4
  %16 = icmp sle i32 %15, 3840
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %14
  br label %20

; <label>:18                                      ; preds = %14, %11, %8, %0
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([88 x i8]* @__PRETTY_FUNCTION__._ZL37p_ZN2xf15Mat_5_1_3840_1_4initIEEiib_1P18xf_Mat_5_1_3840_1_iib, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load i32* %2, align 4
  %22 = load %struct.xf_Mat_5_1_3840_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32* %3, align 4
  %25 = load %struct.xf_Mat_5_1_3840_1_** %1, align 8
  %26 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32* %2, align 4
  %28 = load i32* %3, align 4
  %29 = ashr i32 %28, 0
  %30 = mul nsw i32 %27, %29
  %31 = load %struct.xf_Mat_5_1_3840_1_** %1, align 8
  %32 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i8* %4, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %20
  br label %36

; <label>:36                                      ; preds = %35, %20
  ret void
}

define linkonce_odr void @_ZN18xf_Mat_5_1_3840_1_C2Ev(%struct.xf_Mat_5_1_3840_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_5_1_3840_1_*, align 8
  store %struct.xf_Mat_5_1_3840_1_* %this, %struct.xf_Mat_5_1_3840_1_** %1, align 8
  %2 = load %struct.xf_Mat_5_1_3840_1_** %1
  %3 = getelementptr inbounds %struct.xf_Mat_5_1_3840_1_* %2, i32 0, i32 4
  %4 = getelementptr inbounds [3840 x %class.ap_uint.1]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.1* %4, i64 3840
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

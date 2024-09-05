; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/customconv_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_int = type { [1 x i8] }
%class.ap_int.1 = type { [4 x i8] }
%class.ap_uint.2 = type { [3 x i8] }
%class.ap_int.3 = type { [8 x i8] }

@.str = private unnamed_addr constant [108 x i8] c"((_src_mat.rows <= ROWS ) && (_src_mat.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [26 x i8] c"xf_custom_convolution.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL114p_ZN2xf8filter2DILi0ELi3ELi3ELi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPsh_1R19xf_Mat_0_256_256_1_S0_Psh = private unnamed_addr constant [204 x i8] c"void p_ZN2xf8filter2DILi0ELi3ELi3ELi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPsh_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, short *, unsigned char)\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"rows >= 8\00", align 1
@__PRETTY_FUNCTION__._ZL150p_ZN2xf16xFFilter2DkernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256ELi3ELi3ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA3_shtt_1R19xf_Mat_0_256_256_1_S0_PA3_shtt = private unnamed_addr constant [277 x i8] c"void p_ZN2xf16xFFilter2DkernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256ELi3ELi3ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA3_shtt_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, short (*)[3], unsigned char, unsigned short, unsigned short)\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"cols >= 8\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"rows <= ROWS\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"cols <= COLS\00", align 1
@.str6 = private unnamed_addr constant [11 x i8] c"(x < COLS)\00", align 1
@.str7 = private unnamed_addr constant [40 x i8] c"t < 0 || (locy >= 0 && locy < K_HEIGHT)\00", align 1
@.str8 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str9 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z14Filter2d_accelP7ap_uintILi256EES1_iiPsh(%class.ap_uint* %_src, %class.ap_uint* %_dst, i32 %rows, i32 %cols, i16* %filter_ptr, i8 zeroext %shift) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i8, align 1
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %_src, %class.ap_uint** %1, align 8
  store %class.ap_uint* %_dst, %class.ap_uint** %2, align 8
  store i32 %rows, i32* %3, align 4
  store i32 %cols, i32* %4, align 4
  store i16* %filter_ptr, i16** %5, align 8
  store i8 %shift, i8* %6, align 1
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat)
  %7 = load i32* %3, align 4
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32* %4, align 4
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %out_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %out_mat)
  %11 = load i32* %3, align 4
  %12 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32* %4, align 4
  %14 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %15, %struct.xf_Mat_0_256_256_1_* %in_mat)
  %16 = load i16** %5, align 8
  %17 = load i8* %6, align 1
  call void @_ZL114p_ZN2xf8filter2DILi0ELi3ELi3ELi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPsh_1R19xf_Mat_0_256_256_1_S0_Psh(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_0_256_256_1_* %out_mat, i16* %16, i8 zeroext %17)
  %18 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_0_256_256_1_* %out_mat, %class.ap_uint* %18)
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

define internal void @_ZL114p_ZN2xf8filter2DILi0ELi3ELi3ELi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPsh_1R19xf_Mat_0_256_256_1_S0_Psh(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_dst_mat, i16* %filter, i8 zeroext %_shift) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i8, align 1
  %img_width = alloca i16, align 2
  %img_height = alloca i16, align 2
  %lfilter = alloca [3 x [3 x i16]], align 16
  %_s_i = alloca i32, align 4
  %_l_i = alloca i8, align 1
  %_s_j = alloca i32, align 4
  %_l_j = alloca i8, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i16* %filter, i16** %3, align 8
  store i8 %_shift, i8* %4, align 1
  %5 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %6 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %5, i32 0, i32 1
  %7 = load i32* %6, align 4
  %8 = icmp sle i32 %7, 256
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %0
  %10 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %11 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %10, i32 0, i32 2
  %12 = load i32* %11, align 4
  %13 = icmp sle i32 %12, 256
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9
  br label %17

; <label>:15                                      ; preds = %9, %0
  call void @__assert_fail(i8* getelementptr inbounds ([108 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str1, i32 0, i32 0), i32 815, i8* getelementptr inbounds ([204 x i8]* @__PRETTY_FUNCTION__._ZL114p_ZN2xf8filter2DILi0ELi3ELi3ELi0ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPsh_1R19xf_Mat_0_256_256_1_S0_Psh, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %17

; <label>:17                                      ; preds = %16, %14
  %18 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %19 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %18, i32 0, i32 2
  %20 = load i32* %19, align 4
  %21 = ashr i32 %20, 0
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %img_width, align 2
  %23 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %24 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %23, i32 0, i32 1
  %25 = load i32* %24, align 4
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %img_height, align 2
  store i32 0, i32* %_s_i, align 4
  store i8 0, i8* %_l_i, align 1
  store i32 0, i32* %_s_i, align 4
  br label %27

; <label>:27                                      ; preds = %53, %17
  %28 = load i32* %_s_i, align 4
  %29 = icmp sle i32 %28, 2
  br i1 %29, label %30, label %56

; <label>:30                                      ; preds = %27
  store i32 0, i32* %_s_j, align 4
  store i8 0, i8* %_l_j, align 1
  store i32 0, i32* %_s_j, align 4
  br label %31

; <label>:31                                      ; preds = %49, %30
  %32 = load i32* %_s_j, align 4
  %33 = icmp sle i32 %32, 2
  br i1 %33, label %34, label %52

; <label>:34                                      ; preds = %31
  %35 = load i32* %_s_i, align 4
  %36 = mul nsw i32 %35, 3
  %37 = load i32* %_s_j, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = load i16** %3, align 8
  %41 = getelementptr inbounds i16* %40, i64 %39
  %42 = load i16* %41, align 2
  %43 = load i32* %_s_j, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32* %_s_i, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x [3 x i16]]* %lfilter, i32 0, i64 %46
  %48 = getelementptr inbounds [3 x i16]* %47, i32 0, i64 %44
  store i16 %42, i16* %48, align 2
  br label %49

; <label>:49                                      ; preds = %34
  %50 = load i32* %_s_j, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %_s_j, align 4
  br label %31

; <label>:52                                      ; preds = %31
  br label %53

; <label>:53                                      ; preds = %52
  %54 = load i32* %_s_i, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %_s_i, align 4
  br label %27

; <label>:56                                      ; preds = %27
  %57 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %58 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %59 = getelementptr inbounds [3 x [3 x i16]]* %lfilter, i32 0, i32 0
  %60 = load i8* %4, align 1
  %61 = load i16* %img_height, align 2
  %62 = load i16* %img_width, align 2
  call void @_ZL150p_ZN2xf16xFFilter2DkernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256ELi3ELi3ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA3_shtt_1R19xf_Mat_0_256_256_1_S0_PA3_shtt(%struct.xf_Mat_0_256_256_1_* %57, %struct.xf_Mat_0_256_256_1_* %58, [3 x i16]* %59, i8 zeroext %60, i16 zeroext %61, i16 zeroext %62)
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

define internal void @_ZL150p_ZN2xf16xFFilter2DkernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256ELi3ELi3ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA3_shtt_1R19xf_Mat_0_256_256_1_S0_PA3_shtt(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_dst_mat, [3 x i16]* %_filter_kernel, i8 zeroext %shift, i16 zeroext %rows, i16 zeroext %cols) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca [3 x i16]*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %fillvalue = alloca %class.ap_uint.0, align 1
  %src_kernel_win = alloca [3 x [3 x %class.ap_uint.0]], align 1
  %k_buf = alloca [3 x [256 x %class.ap_uint.0]], align 16
  %right_border_buf = alloca [3 x [3 x %class.ap_uint.0]], align 1
  %col_buf = alloca [3 x %class.ap_uint.0], align 1
  %heightloop = alloca i32, align 4
  %widthloop = alloca i32, align 4
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %rd_ind = alloca i32, align 4
  %wr_ind = alloca i32, align 4
  %anchorx = alloca i16, align 2
  %anchory = alloca i16, align 2
  %ImagLocx = alloca i16, align 2
  %ImagLocy = alloca i16, align 2
  %x = alloca i16, align 2
  %row = alloca %class.ap_int, align 1
  %7 = alloca %class.ap_int, align 1
  %col = alloca %class.ap_int, align 1
  %8 = alloca %class.ap_int, align 1
  %_in_col = alloca %class.ap_int, align 1
  %9 = alloca %class.ap_int, align 1
  %10 = alloca %class.ap_int, align 1
  %11 = alloca %class.ap_int, align 1
  %12 = alloca %class.ap_int, align 1
  %buf_row = alloca %class.ap_int, align 1
  %13 = alloca %class.ap_int, align 1
  %14 = alloca %class.ap_int, align 1
  %Toppixel = alloca %class.ap_uint.0, align 1
  %buf_row1 = alloca %class.ap_int, align 1
  %15 = alloca %class.ap_int, align 1
  %_in_buf_row = alloca %class.ap_int, align 1
  %16 = alloca %class.ap_int, align 1
  %temp = alloca %class.ap_uint.0, align 1
  %17 = alloca %class.ap_int, align 1
  %18 = alloca %class.ap_int, align 1
  %19 = alloca %class.ap_int, align 1
  %20 = alloca %class.ap_int, align 1
  %temp2 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.0, align 1
  %buf_row3 = alloca i32, align 4
  %buf_row4 = alloca i32, align 4
  %ref = alloca i32, align 4
  %y = alloca i32, align 4
  %buf_row5 = alloca i32, align 4
  %t = alloca i32, align 4
  %locy = alloca i32, align 4
  %temp6 = alloca %class.ap_uint.0, align 1
  %temp1 = alloca %class.ap_uint.0, align 1
  %22 = alloca %class.ap_uint.0, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store [3 x i16]* %_filter_kernel, [3 x i16]** %3, align 8
  store i8 %shift, i8* %4, align 1
  store i16 %rows, i16* %5, align 2
  store i16 %cols, i16* %6, align 2
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %fillvalue, i32 0)
  %23 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_kernel_win, i32 0, i32 0, i32 0
  %24 = getelementptr inbounds %class.ap_uint.0* %23, i64 9
  br label %25

; <label>:25                                      ; preds = %25, %0
  %26 = phi %class.ap_uint.0* [ %23, %0 ], [ %27, %25 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %26)
  %27 = getelementptr inbounds %class.ap_uint.0* %26, i64 1
  %28 = icmp eq %class.ap_uint.0* %27, %24
  br i1 %28, label %29, label %25

; <label>:29                                      ; preds = %25
  %30 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %k_buf, i32 0, i32 0, i32 0
  %31 = getelementptr inbounds %class.ap_uint.0* %30, i64 768
  br label %32

; <label>:32                                      ; preds = %32, %29
  %33 = phi %class.ap_uint.0* [ %30, %29 ], [ %34, %32 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %33)
  %34 = getelementptr inbounds %class.ap_uint.0* %33, i64 1
  %35 = icmp eq %class.ap_uint.0* %34, %31
  br i1 %35, label %36, label %32

; <label>:36                                      ; preds = %32
  %37 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %right_border_buf, i32 0, i32 0, i32 0
  %38 = getelementptr inbounds %class.ap_uint.0* %37, i64 9
  br label %39

; <label>:39                                      ; preds = %39, %36
  %40 = phi %class.ap_uint.0* [ %37, %36 ], [ %41, %39 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %40)
  %41 = getelementptr inbounds %class.ap_uint.0* %40, i64 1
  %42 = icmp eq %class.ap_uint.0* %41, %38
  br i1 %42, label %43, label %39

; <label>:43                                      ; preds = %39
  %44 = getelementptr inbounds [3 x %class.ap_uint.0]* %col_buf, i32 0, i32 0
  %45 = getelementptr inbounds %class.ap_uint.0* %44, i64 3
  br label %46

; <label>:46                                      ; preds = %46, %43
  %47 = phi %class.ap_uint.0* [ %44, %43 ], [ %48, %46 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %47)
  %48 = getelementptr inbounds %class.ap_uint.0* %47, i64 1
  %49 = icmp eq %class.ap_uint.0* %48, %45
  br i1 %49, label %50, label %46

; <label>:50                                      ; preds = %46
  %51 = load i16* %5, align 2
  %52 = zext i16 %51 to i32
  %53 = icmp sge i32 %52, 8
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %50
  br label %57

; <label>:55                                      ; preds = %50
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str1, i32 0, i32 0), i32 670, i8* getelementptr inbounds ([277 x i8]* @__PRETTY_FUNCTION__._ZL150p_ZN2xf16xFFilter2DkernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256ELi3ELi3ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA3_shtt_1R19xf_Mat_0_256_256_1_S0_PA3_shtt, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %57

; <label>:57                                      ; preds = %56, %54
  %58 = load i16* %6, align 2
  %59 = zext i16 %58 to i32
  %60 = icmp sge i32 %59, 8
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %57
  br label %64

; <label>:62                                      ; preds = %57
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str1, i32 0, i32 0), i32 671, i8* getelementptr inbounds ([277 x i8]* @__PRETTY_FUNCTION__._ZL150p_ZN2xf16xFFilter2DkernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256ELi3ELi3ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA3_shtt_1R19xf_Mat_0_256_256_1_S0_PA3_shtt, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %64

; <label>:64                                      ; preds = %63, %61
  %65 = load i16* %5, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp sle i32 %66, 256
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %64
  br label %71

; <label>:69                                      ; preds = %64
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str1, i32 0, i32 0), i32 672, i8* getelementptr inbounds ([277 x i8]* @__PRETTY_FUNCTION__._ZL150p_ZN2xf16xFFilter2DkernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256ELi3ELi3ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA3_shtt_1R19xf_Mat_0_256_256_1_S0_PA3_shtt, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %71

; <label>:71                                      ; preds = %70, %68
  %72 = load i16* %6, align 2
  %73 = zext i16 %72 to i32
  %74 = icmp sle i32 %73, 256
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %71
  br label %78

; <label>:76                                      ; preds = %71
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str1, i32 0, i32 0), i32 673, i8* getelementptr inbounds ([277 x i8]* @__PRETTY_FUNCTION__._ZL150p_ZN2xf16xFFilter2DkernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256ELi3ELi3ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA3_shtt_1R19xf_Mat_0_256_256_1_S0_PA3_shtt, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %78

; <label>:78                                      ; preds = %77, %75
  %79 = load i16* %5, align 2
  %80 = zext i16 %79 to i32
  %81 = add nsw i32 %80, 3
  %82 = sub nsw i32 %81, 1
  %83 = add nsw i32 %82, 3
  store i32 %83, i32* %heightloop, align 4
  %84 = load i16* %6, align 2
  %85 = zext i16 %84 to i32
  %86 = add nsw i32 %85, 3
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %widthloop, align 4
  store i32 0, i32* %rd_ind, align 4
  store i32 0, i32* %wr_ind, align 4
  store i16 1, i16* %anchorx, align 2
  store i16 1, i16* %anchory, align 2
  store i16 0, i16* %ImagLocx, align 2
  store i16 0, i16* %ImagLocy, align 2
  br label %88

; <label>:88                                      ; preds = %78
  store i16 0, i16* %i, align 2
  br label %89

; <label>:89                                      ; preds = %473, %88
  %90 = load i16* %i, align 2
  %91 = zext i16 %90 to i32
  %92 = load i32* %heightloop, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %476

; <label>:94                                      ; preds = %89
  br label %95

; <label>:95                                      ; preds = %94
  store i16 0, i16* %j, align 2
  br label %96

; <label>:96                                      ; preds = %469, %95
  %97 = load i16* %j, align 2
  %98 = zext i16 %97 to i32
  %99 = load i32* %widthloop, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %472

; <label>:101                                     ; preds = %96
  %102 = load i16* %j, align 2
  %103 = zext i16 %102 to i32
  %104 = load i16* %anchorx, align 2
  %105 = zext i16 %104 to i32
  %106 = sub nsw i32 %103, %105
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %ImagLocx, align 2
  %108 = load i16* %i, align 2
  %109 = zext i16 %108 to i32
  %110 = sub nsw i32 %109, 3
  %111 = load i16* %anchory, align 2
  %112 = zext i16 %111 to i32
  %113 = sub nsw i32 %110, %112
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %ImagLocy, align 2
  %115 = load i16* %ImagLocx, align 2
  %116 = sext i16 %115 to i32
  %117 = load i16* %6, align 2
  %118 = zext i16 %117 to i32
  %119 = call i32 @_ZL30p_ZN2xf17borderInterpolateEiiiiii(i32 %116, i32 %118, i32 0)
  %120 = trunc i32 %119 to i16
  store i16 %120, i16* %x, align 2
  call void @_ZN6ap_intILi8EEC1Ei(%class.ap_int* %row, i32 0)
  br label %121

; <label>:121                                     ; preds = %160, %101
  %122 = bitcast %class.ap_int* %7 to i8*
  %123 = bitcast %class.ap_int* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 1, i32 1, i1 false)
  %124 = getelementptr %class.ap_int* %7, i32 0, i32 0
  %125 = bitcast [1 x i8]* %124 to i8*
  %126 = load i8* %125, align 1
  %127 = call zeroext i1 @_ZltILi8EEb6ap_intIXT_EEi(i8 %126, i32 3)
  br i1 %127, label %128, label %164

; <label>:128                                     ; preds = %121
  call void @_ZN6ap_intILi8EEC1Ei(%class.ap_int* %col, i32 0)
  br label %129

; <label>:129                                     ; preds = %155, %128
  %130 = bitcast %class.ap_int* %8 to i8*
  %131 = bitcast %class.ap_int* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 1, i32 1, i1 false)
  %132 = getelementptr %class.ap_int* %8, i32 0, i32 0
  %133 = bitcast [1 x i8]* %132 to i8*
  %134 = load i8* %133, align 1
  %135 = call zeroext i1 @_ZleILi8EEb6ap_intIXT_EEl(i8 %134, i64 1)
  br i1 %135, label %136, label %159

; <label>:136                                     ; preds = %129
  %137 = call i8 @_ZmlILi8EE6ap_intIXT_EEiRKS1_(i32 -1, %class.ap_int* %col)
  %138 = getelementptr %class.ap_int* %9, i32 0, i32 0
  %139 = bitcast [1 x i8]* %138 to i8*
  store i8 %137, i8* %139, align 1
  %140 = call i8 @_ZplILi8EE6ap_intIXT_EElRKS1_(i64 2, %class.ap_int* %9)
  %141 = getelementptr %class.ap_int* %_in_col, i32 0, i32 0
  %142 = bitcast [1 x i8]* %141 to i8*
  store i8 %140, i8* %142, align 1
  %143 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %_in_col)
  %144 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %row)
  %145 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_kernel_win, i32 0, i64 %144
  %146 = getelementptr inbounds [3 x %class.ap_uint.0]* %145, i32 0, i64 %143
  %147 = call i8 @_ZmiILi8EE6ap_intIXT_EERKS1_i(%class.ap_int* %_in_col, i32 1)
  %148 = getelementptr %class.ap_int* %10, i32 0, i32 0
  %149 = bitcast [1 x i8]* %148 to i8*
  store i8 %147, i8* %149, align 1
  %150 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %10)
  %151 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %row)
  %152 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_kernel_win, i32 0, i64 %151
  %153 = getelementptr inbounds [3 x %class.ap_uint.0]* %152, i32 0, i64 %150
  %154 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %146, %class.ap_uint.0* %153)
  br label %155

; <label>:155                                     ; preds = %136
  %156 = call i8 @_ZN6ap_intILi8EEppEi(%class.ap_int* %col, i32 0)
  %157 = getelementptr %class.ap_int* %11, i32 0, i32 0
  %158 = bitcast [1 x i8]* %157 to i8*
  store i8 %156, i8* %158, align 1
  br label %129

; <label>:159                                     ; preds = %129
  br label %160

; <label>:160                                     ; preds = %159
  %161 = call i8 @_ZN6ap_intILi8EEppEi(%class.ap_int* %row, i32 0)
  %162 = getelementptr %class.ap_int* %12, i32 0, i32 0
  %163 = bitcast [1 x i8]* %162 to i8*
  store i8 %161, i8* %163, align 1
  br label %121

; <label>:164                                     ; preds = %121
  call void @_ZN6ap_intILi8EEC1Ei(%class.ap_int* %buf_row, i32 0)
  br label %165

; <label>:165                                     ; preds = %195, %164
  %166 = bitcast %class.ap_int* %13 to i8*
  %167 = bitcast %class.ap_int* %buf_row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %166, i8* %167, i64 1, i32 1, i1 false)
  %168 = getelementptr %class.ap_int* %13, i32 0, i32 0
  %169 = bitcast [1 x i8]* %168 to i8*
  %170 = load i8* %169, align 1
  %171 = call zeroext i1 @_ZltILi8EEb6ap_intIXT_EEi(i8 %170, i32 3)
  br i1 %171, label %172, label %199

; <label>:172                                     ; preds = %165
  %173 = load i16* %x, align 2
  %174 = sext i16 %173 to i32
  %175 = icmp slt i32 %174, 256
  br i1 %175, label %176, label %177

; <label>:176                                     ; preds = %172
  br label %179

; <label>:177                                     ; preds = %172
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str1, i32 0, i32 0), i32 723, i8* getelementptr inbounds ([277 x i8]* @__PRETTY_FUNCTION__._ZL150p_ZN2xf16xFFilter2DkernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256ELi3ELi3ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA3_shtt_1R19xf_Mat_0_256_256_1_S0_PA3_shtt, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %179

; <label>:179                                     ; preds = %178, %176
  %180 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %buf_row)
  %181 = getelementptr inbounds [3 x %class.ap_uint.0]* %col_buf, i32 0, i64 %180
  %182 = load i16* %x, align 2
  %183 = sext i16 %182 to i32
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

; <label>:185                                     ; preds = %179
  br label %192

; <label>:186                                     ; preds = %179
  %187 = load i16* %x, align 2
  %188 = sext i16 %187 to i64
  %189 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %buf_row)
  %190 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %k_buf, i32 0, i64 %189
  %191 = getelementptr inbounds [256 x %class.ap_uint.0]* %190, i32 0, i64 %188
  br label %192

; <label>:192                                     ; preds = %186, %185
  %193 = phi %class.ap_uint.0* [ %fillvalue, %185 ], [ %191, %186 ]
  %194 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %181, %class.ap_uint.0* %193)
  br label %195

; <label>:195                                     ; preds = %192
  %196 = call i8 @_ZN6ap_intILi8EEppEi(%class.ap_int* %buf_row, i32 0)
  %197 = getelementptr %class.ap_int* %14, i32 0, i32 0
  %198 = bitcast [1 x i8]* %197 to i8*
  store i8 %196, i8* %198, align 1
  br label %165

; <label>:199                                     ; preds = %165
  %200 = load i16* %ImagLocy, align 2
  %201 = sext i16 %200 to i32
  %202 = load i16* %anchory, align 2
  %203 = zext i16 %202 to i32
  %204 = sub nsw i32 0, %203
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %217, label %206

; <label>:206                                     ; preds = %199
  %207 = load i16* %ImagLocy, align 2
  %208 = sext i16 %207 to i32
  %209 = icmp sge i32 %208, 2
  br i1 %209, label %210, label %367

; <label>:210                                     ; preds = %206
  %211 = load i16* %ImagLocy, align 2
  %212 = sext i16 %211 to i32
  %213 = load i16* %5, align 2
  %214 = zext i16 %213 to i32
  %215 = sub nsw i32 %214, 1
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %367

; <label>:217                                     ; preds = %210, %199
  %218 = load i16* %ImagLocx, align 2
  %219 = sext i16 %218 to i32
  %220 = icmp sge i32 %219, 0
  br i1 %220, label %221, label %326

; <label>:221                                     ; preds = %217
  %222 = load i16* %ImagLocx, align 2
  %223 = sext i16 %222 to i32
  %224 = load i16* %6, align 2
  %225 = zext i16 %224 to i32
  %226 = icmp slt i32 %223, %225
  br i1 %226, label %227, label %326

; <label>:227                                     ; preds = %221
  %228 = getelementptr inbounds [3 x %class.ap_uint.0]* %col_buf, i32 0, i64 2
  %229 = bitcast %class.ap_uint.0* %Toppixel to i8*
  %230 = bitcast %class.ap_uint.0* %228 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %229, i8* %230, i64 1, i32 1, i1 false)
  %231 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_kernel_win, i32 0, i64 2
  %232 = getelementptr inbounds [3 x %class.ap_uint.0]* %231, i32 0, i64 0
  %233 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %232, %class.ap_uint.0* %Toppixel)
  %234 = load i16* %ImagLocx, align 2
  %235 = sext i16 %234 to i32
  %236 = load i16* %6, align 2
  %237 = zext i16 %236 to i32
  %238 = sub nsw i32 %237, 3
  %239 = icmp sge i32 %235, %238
  br i1 %239, label %240, label %251

; <label>:240                                     ; preds = %227
  %241 = load i16* %ImagLocx, align 2
  %242 = sext i16 %241 to i32
  %243 = load i16* %6, align 2
  %244 = zext i16 %243 to i32
  %245 = sub nsw i32 %244, 3
  %246 = sub nsw i32 %242, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %right_border_buf, i32 0, i64 0
  %249 = getelementptr inbounds [3 x %class.ap_uint.0]* %248, i32 0, i64 %247
  %250 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %249, %class.ap_uint.0* %Toppixel)
  br label %251

; <label>:251                                     ; preds = %240, %227
  call void @_ZN6ap_intILi8EEC1Ei(%class.ap_int* %buf_row1, i32 0)
  br label %252

; <label>:252                                     ; preds = %308, %251
  %253 = bitcast %class.ap_int* %15 to i8*
  %254 = bitcast %class.ap_int* %buf_row1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %253, i8* %254, i64 1, i32 1, i1 false)
  %255 = getelementptr %class.ap_int* %15, i32 0, i32 0
  %256 = bitcast [1 x i8]* %255 to i8*
  %257 = load i8* %256, align 1
  %258 = call zeroext i1 @_ZleILi8EEb6ap_intIXT_EEl(i8 %257, i64 1)
  br i1 %258, label %259, label %312

; <label>:259                                     ; preds = %252
  %260 = call i8 @_ZmlILi8EE6ap_intIXT_EEiRKS1_(i32 -1, %class.ap_int* %buf_row1)
  %261 = getelementptr %class.ap_int* %16, i32 0, i32 0
  %262 = bitcast [1 x i8]* %261 to i8*
  store i8 %260, i8* %262, align 1
  %263 = call i8 @_ZplILi8EE6ap_intIXT_EElRKS1_(i64 2, %class.ap_int* %16)
  %264 = getelementptr %class.ap_int* %_in_buf_row, i32 0, i32 0
  %265 = bitcast [1 x i8]* %264 to i8*
  store i8 %263, i8* %265, align 1
  %266 = call i8 @_ZmiILi8EE6ap_intIXT_EERKS1_i(%class.ap_int* %_in_buf_row, i32 1)
  %267 = getelementptr %class.ap_int* %17, i32 0, i32 0
  %268 = bitcast [1 x i8]* %267 to i8*
  store i8 %266, i8* %268, align 1
  %269 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %17)
  %270 = getelementptr inbounds [3 x %class.ap_uint.0]* %col_buf, i32 0, i64 %269
  %271 = bitcast %class.ap_uint.0* %temp to i8*
  %272 = bitcast %class.ap_uint.0* %270 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %271, i8* %272, i64 1, i32 1, i1 false)
  %273 = call i8 @_ZmiILi8EE6ap_intIXT_EERKS1_i(%class.ap_int* %_in_buf_row, i32 1)
  %274 = getelementptr %class.ap_int* %18, i32 0, i32 0
  %275 = bitcast [1 x i8]* %274 to i8*
  store i8 %273, i8* %275, align 1
  %276 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %18)
  %277 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_kernel_win, i32 0, i64 %276
  %278 = getelementptr inbounds [3 x %class.ap_uint.0]* %277, i32 0, i64 0
  %279 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %278, %class.ap_uint.0* %temp)
  %280 = load i16* %x, align 2
  %281 = sext i16 %280 to i64
  %282 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %_in_buf_row)
  %283 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %k_buf, i32 0, i64 %282
  %284 = getelementptr inbounds [256 x %class.ap_uint.0]* %283, i32 0, i64 %281
  %285 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %284, %class.ap_uint.0* %temp)
  %286 = load i16* %ImagLocx, align 2
  %287 = sext i16 %286 to i32
  %288 = load i16* %6, align 2
  %289 = zext i16 %288 to i32
  %290 = sub nsw i32 %289, 3
  %291 = icmp sge i32 %287, %290
  br i1 %291, label %292, label %307

; <label>:292                                     ; preds = %259
  %293 = load i16* %ImagLocx, align 2
  %294 = sext i16 %293 to i32
  %295 = load i16* %6, align 2
  %296 = zext i16 %295 to i32
  %297 = sub nsw i32 %296, 3
  %298 = sub nsw i32 %294, %297
  %299 = sext i32 %298 to i64
  %300 = call i8 @_ZmiILi8EE6ap_intIXT_EEiRKS1_(i32 3, %class.ap_int* %_in_buf_row)
  %301 = getelementptr %class.ap_int* %19, i32 0, i32 0
  %302 = bitcast [1 x i8]* %301 to i8*
  store i8 %300, i8* %302, align 1
  %303 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %19)
  %304 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %right_border_buf, i32 0, i64 %303
  %305 = getelementptr inbounds [3 x %class.ap_uint.0]* %304, i32 0, i64 %299
  %306 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %305, %class.ap_uint.0* %temp)
  br label %307

; <label>:307                                     ; preds = %292, %259
  br label %308

; <label>:308                                     ; preds = %307
  %309 = call i8 @_ZN6ap_intILi8EEppEi(%class.ap_int* %buf_row1, i32 0)
  %310 = getelementptr %class.ap_int* %20, i32 0, i32 0
  %311 = bitcast [1 x i8]* %310 to i8*
  store i8 %309, i8* %311, align 1
  br label %252

; <label>:312                                     ; preds = %252
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %temp2, i32 0)
  %313 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %314 = load i32* %rd_ind, align 4
  %315 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %313, i32 %314)
  %316 = getelementptr %class.ap_uint.0* %21, i32 0, i32 0
  %317 = bitcast [1 x i8]* %316 to i8*
  store i8 %315, i8* %317, align 1
  %318 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %temp2, %class.ap_uint.0* %21)
  %319 = load i32* %rd_ind, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %rd_ind, align 4
  %321 = load i16* %x, align 2
  %322 = sext i16 %321 to i64
  %323 = getelementptr inbounds [3 x [256 x %class.ap_uint.0]]* %k_buf, i32 0, i64 0
  %324 = getelementptr inbounds [256 x %class.ap_uint.0]* %323, i32 0, i64 %322
  %325 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %324, %class.ap_uint.0* %temp2)
  br label %366

; <label>:326                                     ; preds = %221, %217
  %327 = load i16* %ImagLocx, align 2
  %328 = sext i16 %327 to i32
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %344

; <label>:330                                     ; preds = %326
  store i32 0, i32* %buf_row3, align 4
  br label %331

; <label>:331                                     ; preds = %340, %330
  %332 = load i32* %buf_row3, align 4
  %333 = icmp slt i32 %332, 3
  br i1 %333, label %334, label %343

; <label>:334                                     ; preds = %331
  %335 = load i32* %buf_row3, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_kernel_win, i32 0, i64 %336
  %338 = getelementptr inbounds [3 x %class.ap_uint.0]* %337, i32 0, i64 0
  %339 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %338, %class.ap_uint.0* %fillvalue)
  br label %340

; <label>:340                                     ; preds = %334
  %341 = load i32* %buf_row3, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %buf_row3, align 4
  br label %331

; <label>:343                                     ; preds = %331
  br label %365

; <label>:344                                     ; preds = %326
  %345 = load i16* %ImagLocx, align 2
  %346 = sext i16 %345 to i32
  %347 = load i16* %6, align 2
  %348 = zext i16 %347 to i32
  %349 = icmp sge i32 %346, %348
  br i1 %349, label %350, label %364

; <label>:350                                     ; preds = %344
  store i32 0, i32* %buf_row4, align 4
  br label %351

; <label>:351                                     ; preds = %360, %350
  %352 = load i32* %buf_row4, align 4
  %353 = icmp slt i32 %352, 3
  br i1 %353, label %354, label %363

; <label>:354                                     ; preds = %351
  %355 = load i32* %buf_row4, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_kernel_win, i32 0, i64 %356
  %358 = getelementptr inbounds [3 x %class.ap_uint.0]* %357, i32 0, i64 0
  %359 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %358, %class.ap_uint.0* %fillvalue)
  br label %360

; <label>:360                                     ; preds = %354
  %361 = load i32* %buf_row4, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %buf_row4, align 4
  br label %351

; <label>:363                                     ; preds = %351
  br label %364

; <label>:364                                     ; preds = %363, %344
  br label %365

; <label>:365                                     ; preds = %364, %343
  br label %366

; <label>:366                                     ; preds = %365, %312
  br label %445

; <label>:367                                     ; preds = %210, %206
  %368 = load i16* %ImagLocy, align 2
  %369 = sext i16 %368 to i32
  %370 = icmp sge i32 %369, 0
  br i1 %370, label %371, label %444

; <label>:371                                     ; preds = %367
  store i32 2, i32* %ref, align 4
  %372 = load i16* %ImagLocy, align 2
  %373 = sext i16 %372 to i32
  %374 = load i16* %5, align 2
  %375 = zext i16 %374 to i32
  %376 = sub nsw i32 %375, 1
  %377 = icmp sge i32 %373, %376
  br i1 %377, label %378, label %382

; <label>:378                                     ; preds = %371
  %379 = load i16* %5, align 2
  %380 = zext i16 %379 to i32
  %381 = sub nsw i32 %380, 1
  store i32 %381, i32* %ref, align 4
  br label %382

; <label>:382                                     ; preds = %378, %371
  %383 = load i16* %ImagLocy, align 2
  %384 = sext i16 %383 to i32
  store i32 %384, i32* %y, align 4
  store i32 0, i32* %buf_row5, align 4
  br label %385

; <label>:385                                     ; preds = %440, %382
  %386 = load i32* %buf_row5, align 4
  %387 = icmp slt i32 %386, 3
  br i1 %387, label %388, label %443

; <label>:388                                     ; preds = %385
  %389 = load i32* %y, align 4
  %390 = load i16* %5, align 2
  %391 = zext i16 %390 to i32
  %392 = call i32 @_ZL30p_ZN2xf17borderInterpolateEiiiiii(i32 %389, i32 %391, i32 0)
  store i32 %392, i32* %t, align 4
  %393 = load i32* %ref, align 4
  %394 = load i32* %t, align 4
  %395 = sub nsw i32 %393, %394
  store i32 %395, i32* %locy, align 4
  %396 = load i32* %t, align 4
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %404, label %398

; <label>:398                                     ; preds = %388
  %399 = load i32* %locy, align 4
  %400 = icmp sge i32 %399, 0
  br i1 %400, label %401, label %405

; <label>:401                                     ; preds = %398
  %402 = load i32* %locy, align 4
  %403 = icmp slt i32 %402, 3
  br i1 %403, label %404, label %405

; <label>:404                                     ; preds = %401, %388
  br label %407

; <label>:405                                     ; preds = %401, %398
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str1, i32 0, i32 0), i32 775, i8* getelementptr inbounds ([277 x i8]* @__PRETTY_FUNCTION__._ZL150p_ZN2xf16xFFilter2DkernelILi0ELi0ELi256ELi256ELi0ELi0ELi1ELi1ELi1ELi256ELi3ELi3ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEPA3_shtt_1R19xf_Mat_0_256_256_1_S0_PA3_shtt, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %407

; <label>:407                                     ; preds = %406, %404
  %408 = load i32* %y, align 4
  %409 = load i16* %5, align 2
  %410 = zext i16 %409 to i32
  %411 = icmp sge i32 %408, %410
  br i1 %411, label %412, label %418

; <label>:412                                     ; preds = %407
  %413 = load i32* %buf_row5, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_kernel_win, i32 0, i64 %414
  %416 = getelementptr inbounds [3 x %class.ap_uint.0]* %415, i32 0, i64 0
  %417 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %416, %class.ap_uint.0* %fillvalue)
  br label %437

; <label>:418                                     ; preds = %407
  %419 = load i32* %y, align 4
  %420 = icmp slt i32 %419, 0
  br i1 %420, label %421, label %427

; <label>:421                                     ; preds = %418
  %422 = load i32* %buf_row5, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_kernel_win, i32 0, i64 %423
  %425 = getelementptr inbounds [3 x %class.ap_uint.0]* %424, i32 0, i64 0
  %426 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %425, %class.ap_uint.0* %fillvalue)
  br label %436

; <label>:427                                     ; preds = %418
  %428 = load i32* %buf_row5, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_kernel_win, i32 0, i64 %429
  %431 = getelementptr inbounds [3 x %class.ap_uint.0]* %430, i32 0, i64 0
  %432 = load i32* %locy, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [3 x %class.ap_uint.0]* %col_buf, i32 0, i64 %433
  %435 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %431, %class.ap_uint.0* %434)
  br label %436

; <label>:436                                     ; preds = %427, %421
  br label %437

; <label>:437                                     ; preds = %436, %412
  %438 = load i32* %y, align 4
  %439 = add nsw i32 %438, -1
  store i32 %439, i32* %y, align 4
  br label %440

; <label>:440                                     ; preds = %437
  %441 = load i32* %buf_row5, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %buf_row5, align 4
  br label %385

; <label>:443                                     ; preds = %385
  br label %444

; <label>:444                                     ; preds = %443, %367
  br label %445

; <label>:445                                     ; preds = %444, %366
  %446 = load i16* %i, align 2
  %447 = zext i16 %446 to i32
  %448 = icmp sge i32 %447, 5
  br i1 %448, label %449, label %468

; <label>:449                                     ; preds = %445
  %450 = load i16* %j, align 2
  %451 = zext i16 %450 to i32
  %452 = icmp sge i32 %451, 2
  br i1 %452, label %453, label %468

; <label>:453                                     ; preds = %449
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %temp6)
  %454 = getelementptr inbounds [3 x [3 x %class.ap_uint.0]]* %src_kernel_win, i32 0, i32 0
  %455 = load [3 x i16]** %3, align 8
  %456 = load i8* %4, align 1
  call void @_ZL88p_ZN2xf15xFApplyFilter2DILi0ELi0ELi3ELi3ELi1EEEPA3_7ap_uintILi8EEPA3_sR7ap_uintILi8EEh_1PA3_7ap_uintILi8EEPA3_sRS0_h([3 x %class.ap_uint.0]* %454, [3 x i16]* %455, %class.ap_uint.0* %temp6, i8 zeroext %456)
  %457 = bitcast %class.ap_uint.0* %temp1 to i8*
  %458 = bitcast %class.ap_uint.0* %temp6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %457, i8* %458, i64 1, i32 1, i1 false)
  %459 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %460 = load i32* %wr_ind, align 4
  %461 = bitcast %class.ap_uint.0* %22 to i8*
  %462 = bitcast %class.ap_uint.0* %temp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %461, i8* %462, i64 1, i32 1, i1 false)
  %463 = getelementptr %class.ap_uint.0* %22, i32 0, i32 0
  %464 = bitcast [1 x i8]* %463 to i8*
  %465 = load i8* %464, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %459, i32 %460, i8 %465)
  %466 = load i32* %wr_ind, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %wr_ind, align 4
  br label %468

; <label>:468                                     ; preds = %453, %449, %445
  br label %469

; <label>:469                                     ; preds = %468
  %470 = load i16* %j, align 2
  %471 = add i16 %470, 1
  store i16 %471, i16* %j, align 2
  br label %96

; <label>:472                                     ; preds = %96
  br label %473

; <label>:473                                     ; preds = %472
  %474 = load i16* %i, align 2
  %475 = add i16 %474, 1
  store i16 %475, i16* %i, align 2
  br label %89

; <label>:476                                     ; preds = %89
  ret void
}

declare void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0*, i32)

define internal i32 @_ZL30p_ZN2xf17borderInterpolateEiiiiii(i32 %p, i32 %len, i32 %borderType) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %p, i32* %2, align 4
  store i32 %len, i32* %3, align 4
  store i32 %borderType, i32* %4, align 4
  %5 = load i32* %2, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load i32* %2, align 4
  %9 = load i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %7
  %12 = load i32* %2, align 4
  store i32 %12, i32* %1
  br label %16

; <label>:13                                      ; preds = %7, %0
  store i32 -1, i32* %2, align 4
  br label %14

; <label>:14                                      ; preds = %13
  %15 = load i32* %2, align 4
  store i32 %15, i32* %1
  br label %16

; <label>:16                                      ; preds = %14, %11
  %17 = load i32* %1
  ret i32 %17
}

declare void @_ZN6ap_intILi8EEC1Ei(%class.ap_int*, i32)

declare zeroext i1 @_ZltILi8EEb6ap_intIXT_EEi(i8, i32)

declare zeroext i1 @_ZleILi8EEb6ap_intIXT_EEl(i8, i64)

declare i8 @_ZplILi8EE6ap_intIXT_EElRKS1_(i64, %class.ap_int*)

declare i8 @_ZmlILi8EE6ap_intIXT_EEiRKS1_(i32, %class.ap_int*)

declare i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int*)

declare i8 @_ZmiILi8EE6ap_intIXT_EERKS1_i(%class.ap_int*, i32)

declare i8 @_ZN6ap_intILi8EEppEi(%class.ap_int*, i32)

declare i8 @_ZmiILi8EE6ap_intIXT_EEiRKS1_(i32, %class.ap_int*)

define internal void @_ZL88p_ZN2xf15xFApplyFilter2DILi0ELi0ELi3ELi3ELi1EEEPA3_7ap_uintILi8EEPA3_sR7ap_uintILi8EEh_1PA3_7ap_uintILi8EEPA3_sRS0_h([3 x %class.ap_uint.0]* %_kernel_pixel, [3 x i16]* %_kernel_filter, %class.ap_uint.0* %out, i8 zeroext %shift) uwtable {
  %1 = alloca [3 x %class.ap_uint.0]*, align 8
  %2 = alloca [3 x i16]*, align 8
  %3 = alloca %class.ap_uint.0*, align 8
  %4 = alloca i8, align 1
  %sum = alloca %class.ap_int.1, align 1
  %in_step = alloca %class.ap_int.1, align 1
  %out_step = alloca %class.ap_int.1, align 1
  %p = alloca %class.ap_int.1, align 1
  %temp = alloca %class.ap_int.1, align 1
  %tmp_sum = alloca %class.ap_int.1, align 1
  %bgr_val = alloca %class.ap_uint.2, align 1
  %_l_c = alloca %class.ap_uint.0, align 1
  %_l_k = alloca %class.ap_uint.0, align 1
  %5 = alloca %class.ap_uint.0, align 1
  %m = alloca %class.ap_int, align 1
  %6 = alloca %class.ap_int, align 1
  %n = alloca %class.ap_int, align 1
  %7 = alloca %class.ap_int, align 1
  %src_v = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_int, align 1
  %9 = alloca %class.ap_int, align 1
  %10 = alloca %class.ap_int, align 1
  %filter_v = alloca i16, align 2
  %11 = alloca %class.ap_int.1, align 1
  %12 = alloca %class.ap_int.1, align 1
  %13 = alloca %class.ap_int.3, align 1
  %14 = alloca %class.ap_int.3, align 1
  %15 = alloca %class.ap_int.1, align 1
  %16 = alloca %class.ap_int.1, align 1
  %17 = alloca %class.ap_int, align 1
  %18 = alloca %class.ap_int, align 1
  %19 = alloca %class.ap_int.1, align 1
  %20 = alloca %class.ap_int.1, align 1
  %21 = alloca %class.ap_int.1, align 1
  %22 = alloca %class.ap_int.1, align 1
  %23 = alloca %class.ap_uint.0, align 1
  %24 = alloca %class.ap_int.1, align 1
  %25 = alloca %class.ap_uint.0, align 1
  %26 = alloca %class.ap_uint.0, align 1
  %27 = alloca %class.ap_int.1, align 1
  %28 = alloca %class.ap_uint.0, align 1
  store [3 x %class.ap_uint.0]* %_kernel_pixel, [3 x %class.ap_uint.0]** %1, align 8
  store [3 x i16]* %_kernel_filter, [3 x i16]** %2, align 8
  store %class.ap_uint.0* %out, %class.ap_uint.0** %3, align 8
  store i8 %shift, i8* %4, align 1
  call void @_ZN6ap_intILi32EEC1Ei(%class.ap_int.1* %sum, i32 0)
  call void @_ZN6ap_intILi32EEC1Ei(%class.ap_int.1* %in_step, i32 0)
  call void @_ZN6ap_intILi32EEC1Ei(%class.ap_int.1* %out_step, i32 0)
  call void @_ZN6ap_intILi32EEC1Ei(%class.ap_int.1* %p, i32 0)
  call void @_ZN6ap_intILi32EEC1Ei(%class.ap_int.1* %temp, i32 0)
  call void @_ZN6ap_intILi32EEC1Ei(%class.ap_int.1* %tmp_sum, i32 0)
  br label %29

; <label>:29                                      ; preds = %0
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.2* %bgr_val)
  %30 = call %class.ap_int.1* @_ZN6ap_intILi32EEaSEi(%class.ap_int.1* %in_step, i32 8)
  %31 = call %class.ap_int.1* @_ZN6ap_intILi32EEaSEi(%class.ap_int.1* %out_step, i32 8)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %_l_c, i32 0)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %_l_k, i32 0)
  %32 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %_l_c, i32 0)
  br label %33

; <label>:33                                      ; preds = %185, %29
  %34 = bitcast %class.ap_uint.0* %5 to i8*
  %35 = bitcast %class.ap_uint.0* %_l_c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 1, i32 1, i1 false)
  %36 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %37 = bitcast [1 x i8]* %36 to i8*
  %38 = load i8* %37, align 1
  %39 = call zeroext i1 @_ZleILi8EEb7ap_uintIXT_EEi(i8 %38, i32 0)
  br i1 %39, label %40, label %189

; <label>:40                                      ; preds = %33
  %41 = call %class.ap_int.1* @_ZN6ap_intILi32EEaSEi(%class.ap_int.1* %sum, i32 0)
  %42 = call %class.ap_int.1* @_ZN6ap_intILi32EEaSEi(%class.ap_int.1* %temp, i32 0)
  %43 = call %class.ap_int.1* @_ZN6ap_intILi32EEaSEi(%class.ap_int.1* %tmp_sum, i32 0)
  call void @_ZN6ap_intILi8EEC1Ei(%class.ap_int* %m, i32 0)
  br label %44

; <label>:44                                      ; preds = %126, %40
  %45 = bitcast %class.ap_int* %6 to i8*
  %46 = bitcast %class.ap_int* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 1, i32 1, i1 false)
  %47 = getelementptr %class.ap_int* %6, i32 0, i32 0
  %48 = bitcast [1 x i8]* %47 to i8*
  %49 = load i8* %48, align 1
  %50 = call zeroext i1 @_ZltILi8EEb6ap_intIXT_EEi(i8 %49, i32 3)
  br i1 %50, label %51, label %130

; <label>:51                                      ; preds = %44
  br label %52

; <label>:52                                      ; preds = %51
  call void @_ZN6ap_intILi8EEC1Ei(%class.ap_int* %n, i32 0)
  br label %53

; <label>:53                                      ; preds = %121, %52
  %54 = bitcast %class.ap_int* %7 to i8*
  %55 = bitcast %class.ap_int* %n to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 1, i32 1, i1 false)
  %56 = getelementptr %class.ap_int* %7, i32 0, i32 0
  %57 = bitcast [1 x i8]* %56 to i8*
  %58 = load i8* %57, align 1
  %59 = call zeroext i1 @_ZltILi8EEb6ap_intIXT_EEi(i8 %58, i32 3)
  br i1 %59, label %60, label %125

; <label>:60                                      ; preds = %53
  %61 = call i8 @_ZmiILi8EE6ap_intIXT_EEiRKS1_(i32 2, %class.ap_int* %n)
  %62 = getelementptr %class.ap_int* %8, i32 0, i32 0
  %63 = bitcast [1 x i8]* %62 to i8*
  store i8 %61, i8* %63, align 1
  %64 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %8)
  %65 = call i8 @_ZmiILi8EE6ap_intIXT_EEiRKS1_(i32 3, %class.ap_int* %m)
  %66 = getelementptr %class.ap_int* %9, i32 0, i32 0
  %67 = bitcast [1 x i8]* %66 to i8*
  store i8 %65, i8* %67, align 1
  %68 = call i8 @_ZmiILi8EE6ap_intIXT_EERKS1_i(%class.ap_int* %9, i32 1)
  %69 = getelementptr %class.ap_int* %10, i32 0, i32 0
  %70 = bitcast [1 x i8]* %69 to i8*
  store i8 %68, i8* %70, align 1
  %71 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %10)
  %72 = load [3 x %class.ap_uint.0]** %1, align 8
  %73 = getelementptr inbounds [3 x %class.ap_uint.0]* %72, i64 %71
  %74 = getelementptr inbounds [3 x %class.ap_uint.0]* %73, i32 0, i64 %64
  %75 = bitcast %class.ap_uint.0* %src_v to i8*
  %76 = bitcast %class.ap_uint.0* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 1, i32 1, i1 false)
  %77 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %n)
  %78 = call i64 @_ZNK6ap_intILi8EEcvlEv(%class.ap_int* %m)
  %79 = load [3 x i16]** %2, align 8
  %80 = getelementptr inbounds [3 x i16]* %79, i64 %78
  %81 = getelementptr inbounds [3 x i16]* %80, i32 0, i64 %77
  %82 = load i16* %81, align 2
  store i16 %82, i16* %filter_v, align 2
  %83 = bitcast %class.ap_int.1* %11 to i8*
  %84 = bitcast %class.ap_int.1* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 4, i32 1, i1 false)
  %85 = call i32 @_ZmiILi32EE6ap_intIXT_EERKS1_i(%class.ap_int.1* %in_step, i32 1)
  %86 = getelementptr %class.ap_int.1* %12, i32 0, i32 0
  %87 = bitcast [4 x i8]* %86 to i32*
  store i32 %85, i32* %87, align 1
  %88 = getelementptr %class.ap_int.1* %11, i32 0, i32 0
  %89 = bitcast [4 x i8]* %88 to i32*
  %90 = load i32* %89, align 1
  %91 = getelementptr %class.ap_int.1* %12, i32 0, i32 0
  %92 = bitcast [4 x i8]* %91 to i32*
  %93 = load i32* %92, align 1
  %94 = call i64 @_ZplILi32ELi32EE6ap_intIXplT_T0_EES0_IXT_EES0_IXT0_EE(i32 %90, i32 %93)
  %95 = getelementptr %class.ap_int.3* %13, i32 0, i32 0
  %96 = bitcast [8 x i8]* %95 to i64*
  store i64 %94, i64* %96, align 1
  %97 = call i64 @_ZNK6ap_intILi64EEcvlEv(%class.ap_int.3* %13)
  %98 = trunc i64 %97 to i32
  %99 = call i64 @_ZNK6ap_intILi32EEcvlEv(%class.ap_int.1* %p)
  %100 = trunc i64 %99 to i32
  %101 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %src_v, i32 %98, i32 %100)
  %102 = load i64* %101
  %103 = load i16* %filter_v, align 2
  %104 = sext i16 %103 to i64
  %105 = mul i64 %102, %104
  %106 = call %class.ap_int.1* @_ZN6ap_intILi32EEaSEm(%class.ap_int.1* %temp, i64 %105)
  %107 = bitcast %class.ap_int.1* %15 to i8*
  %108 = bitcast %class.ap_int.1* %sum to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 4, i32 1, i1 false)
  %109 = bitcast %class.ap_int.1* %16 to i8*
  %110 = bitcast %class.ap_int.1* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 4, i32 1, i1 false)
  %111 = getelementptr %class.ap_int.1* %15, i32 0, i32 0
  %112 = bitcast [4 x i8]* %111 to i32*
  %113 = load i32* %112, align 1
  %114 = getelementptr %class.ap_int.1* %16, i32 0, i32 0
  %115 = bitcast [4 x i8]* %114 to i32*
  %116 = load i32* %115, align 1
  %117 = call i64 @_ZplILi32ELi32EE6ap_intIXplT_T0_EES0_IXT_EES0_IXT0_EE(i32 %113, i32 %116)
  %118 = getelementptr %class.ap_int.3* %14, i32 0, i32 0
  %119 = bitcast [8 x i8]* %118 to i64*
  store i64 %117, i64* %119, align 1
  %120 = call %class.ap_int.1* @_ZN6ap_intILi32EEaSILi64EEERS0_RKS_IXT_EE(%class.ap_int.1* %sum, %class.ap_int.3* %14)
  br label %121

; <label>:121                                     ; preds = %60
  %122 = call i8 @_ZN6ap_intILi8EEppEi(%class.ap_int* %n, i32 0)
  %123 = getelementptr %class.ap_int* %17, i32 0, i32 0
  %124 = bitcast [1 x i8]* %123 to i8*
  store i8 %122, i8* %124, align 1
  br label %53

; <label>:125                                     ; preds = %53
  br label %126

; <label>:126                                     ; preds = %125
  %127 = call i8 @_ZN6ap_intILi8EEppEi(%class.ap_int* %m, i32 0)
  %128 = getelementptr %class.ap_int* %18, i32 0, i32 0
  %129 = bitcast [1 x i8]* %128 to i8*
  store i8 %127, i8* %129, align 1
  br label %44

; <label>:130                                     ; preds = %44
  %131 = call i32 @_ZplILi32EE6ap_intIXT_EERKS1_i(%class.ap_int.1* %p, i32 8)
  %132 = getelementptr %class.ap_int.1* %19, i32 0, i32 0
  %133 = bitcast [4 x i8]* %132 to i32*
  store i32 %131, i32* %133, align 1
  %134 = call %class.ap_int.1* @_ZN6ap_intILi32EEaSERKS0_(%class.ap_int.1* %p, %class.ap_int.1* %19)
  %135 = bitcast %class.ap_int.1* %21 to i8*
  %136 = bitcast %class.ap_int.1* %sum to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 4, i32 1, i1 false)
  %137 = load i8* %4, align 1
  %138 = getelementptr %class.ap_int.1* %21, i32 0, i32 0
  %139 = bitcast [4 x i8]* %138 to i32*
  %140 = load i32* %139, align 1
  %141 = call i32 @_ZrsILi32EE6ap_intIXT_EES1_h(i32 %140, i8 zeroext %137)
  %142 = getelementptr %class.ap_int.1* %20, i32 0, i32 0
  %143 = bitcast [4 x i8]* %142 to i32*
  store i32 %141, i32* %143, align 1
  %144 = call %class.ap_int.1* @_ZN6ap_intILi32EEaSERKS0_(%class.ap_int.1* %tmp_sum, %class.ap_int.1* %20)
  %145 = bitcast %class.ap_int.1* %22 to i8*
  %146 = bitcast %class.ap_int.1* %tmp_sum to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* %146, i64 4, i32 1, i1 false)
  %147 = getelementptr %class.ap_int.1* %22, i32 0, i32 0
  %148 = bitcast [4 x i8]* %147 to i32*
  %149 = load i32* %148, align 1
  %150 = call zeroext i1 @_ZgtILi32EEb6ap_intIXT_EEi(i32 %149, i32 255)
  br i1 %150, label %151, label %157

; <label>:151                                     ; preds = %130
  %152 = load %class.ap_uint.0** %3, align 8
  %153 = call i8 @_ZplILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %_l_k, i32 7)
  %154 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %155 = bitcast [1 x i8]* %154 to i8*
  store i8 %153, i8* %155, align 1
  %156 = call i64* @_ZN7ap_uintILi8EE5rangeILi8ELi8EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %152, %class.ap_uint.0* %23, %class.ap_uint.0* %_l_k)
  store i64 255, i64* %156
  br label %178

; <label>:157                                     ; preds = %130
  %158 = bitcast %class.ap_int.1* %24 to i8*
  %159 = bitcast %class.ap_int.1* %tmp_sum to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %158, i8* %159, i64 4, i32 1, i1 false)
  %160 = getelementptr %class.ap_int.1* %24, i32 0, i32 0
  %161 = bitcast [4 x i8]* %160 to i32*
  %162 = load i32* %161, align 1
  %163 = call zeroext i1 @_ZltILi32EEb6ap_intIXT_EEi(i32 %162, i32 0)
  br i1 %163, label %164, label %170

; <label>:164                                     ; preds = %157
  %165 = load %class.ap_uint.0** %3, align 8
  %166 = call i8 @_ZplILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %_l_k, i32 7)
  %167 = getelementptr %class.ap_uint.0* %25, i32 0, i32 0
  %168 = bitcast [1 x i8]* %167 to i8*
  store i8 %166, i8* %168, align 1
  %169 = call i64* @_ZN7ap_uintILi8EE5rangeILi8ELi8EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %165, %class.ap_uint.0* %25, %class.ap_uint.0* %_l_k)
  store i64 0, i64* %169
  br label %177

; <label>:170                                     ; preds = %157
  %171 = call i64 @_ZNK6ap_intILi32EEcvlEv(%class.ap_int.1* %tmp_sum)
  %172 = load %class.ap_uint.0** %3, align 8
  %173 = call i8 @_ZplILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %_l_k, i32 7)
  %174 = getelementptr %class.ap_uint.0* %26, i32 0, i32 0
  %175 = bitcast [1 x i8]* %174 to i8*
  store i8 %173, i8* %175, align 1
  %176 = call i64* @_ZN7ap_uintILi8EE5rangeILi8ELi8EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0* %172, %class.ap_uint.0* %26, %class.ap_uint.0* %_l_k)
  store i64 %171, i64* %176
  br label %177

; <label>:177                                     ; preds = %170, %164
  br label %178

; <label>:178                                     ; preds = %177, %151
  %179 = bitcast %class.ap_int.1* %27 to i8*
  %180 = bitcast %class.ap_int.1* %out_step to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* %180, i64 4, i32 1, i1 false)
  %181 = getelementptr %class.ap_int.1* %27, i32 0, i32 0
  %182 = bitcast [4 x i8]* %181 to i32*
  %183 = load i32* %182, align 1
  %184 = call %class.ap_uint.0* @_ZpLILi8ELi32EER7ap_uintIXT_EES2_6ap_intIXT0_EE(%class.ap_uint.0* %_l_k, i32 %183)
  br label %185

; <label>:185                                     ; preds = %178
  %186 = call i8 @_ZN7ap_uintILi8EEppEv(%class.ap_uint.0* %_l_c)
  %187 = getelementptr %class.ap_uint.0* %28, i32 0, i32 0
  %188 = bitcast [1 x i8]* %187 to i8*
  store i8 %186, i8* %188, align 1
  br label %33

; <label>:189                                     ; preds = %33
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

declare void @_ZN6ap_intILi32EEC1Ei(%class.ap_int.1*, i32)

declare void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.2*)

declare %class.ap_int.1* @_ZN6ap_intILi32EEaSEi(%class.ap_int.1*, i32)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0*, i32)

declare zeroext i1 @_ZleILi8EEb7ap_uintIXT_EEi(i8, i32)

declare %class.ap_int.1* @_ZN6ap_intILi32EEaSEm(%class.ap_int.1*, i64)

declare i64 @_ZplILi32ELi32EE6ap_intIXplT_T0_EES0_IXT_EES0_IXT0_EE(i32, i32)

declare i32 @_ZmiILi32EE6ap_intIXT_EERKS1_i(%class.ap_int.1*, i32)

declare i64 @_ZNK6ap_intILi64EEcvlEv(%class.ap_int.3*)

declare i64 @_ZNK6ap_intILi32EEcvlEv(%class.ap_int.1*)

declare %class.ap_int.1* @_ZN6ap_intILi32EEaSILi64EEERS0_RKS_IXT_EE(%class.ap_int.1*, %class.ap_int.3*)

declare %class.ap_int.1* @_ZN6ap_intILi32EEaSERKS0_(%class.ap_int.1*, %class.ap_int.1*)

declare i32 @_ZplILi32EE6ap_intIXT_EERKS1_i(%class.ap_int.1*, i32)

declare i32 @_ZrsILi32EE6ap_intIXT_EES1_h(i32, i8 zeroext)

declare zeroext i1 @_ZgtILi32EEb6ap_intIXT_EEi(i32, i32)

declare i64* @_ZN7ap_uintILi8EE5rangeILi8ELi8EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.0*, %class.ap_uint.0*, %class.ap_uint.0*)

declare i8 @_ZplILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0*, i32)

declare zeroext i1 @_ZltILi32EEb6ap_intIXT_EEi(i32, i32)

declare %class.ap_uint.0* @_ZpLILi8ELi32EER7ap_uintIXT_EES2_6ap_intIXT0_EE(%class.ap_uint.0*, i32)

declare i8 @_ZN7ap_uintILi8EEppEv(%class.ap_uint.0*)

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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str9, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
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

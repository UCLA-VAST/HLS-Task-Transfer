; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/channelextract_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_7_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [4 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.1] }
%class.ap_uint.1 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.2 = type { [2 x i8] }
%class.ap_int = type { [4 x i8] }

@.str = private unnamed_addr constant [431 x i8] c"((_channel == XF_EXTRACT_CH_0) || (_channel == XF_EXTRACT_CH_1) || (_channel == XF_EXTRACT_CH_2) || (_channel == XF_EXTRACT_CH_3) || (_channel == XF_EXTRACT_CH_R) || (_channel == XF_EXTRACT_CH_G) || (_channel == XF_EXTRACT_CH_B) || (_channel == XF_EXTRACT_CH_A) || (_channel == XF_EXTRACT_CH_Y) || (_channel == XF_EXTRACT_CH_U) || (_channel == XF_EXTRACT_CH_V)) && \22Invalid Channel Value. See xf_channel_extract_e enumerated type\22\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"xf_channel_extract.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL107p_ZN2xf14extractChannelILi7ELi0ELi256ELi256ELi1EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEt_1R19xf_Mat_7_256_256_1_R19xf_Mat_0_256_256_1_t = private unnamed_addr constant [189 x i8] c"void p_ZN2xf14extractChannelILi7ELi0ELi256ELi256ELi1EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEt_1(struct xf_Mat_7_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, unsigned short)\00", align 1
@.str2 = private unnamed_addr constant [108 x i8] c"((_src_mat.rows <= ROWS ) && (_src_mat.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str3 = private unnamed_addr constant [108 x i8] c"((_dst_mat.rows <= ROWS ) && (_dst_mat.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str4 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_7_256_256_1_4initIEEiib_1P19xf_Mat_7_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_7_256_256_1_4initIEEiib_1(struct xf_Mat_7_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z21channel_extract_accelP7ap_uintILi256EES1_tii(%class.ap_uint* %img_rgba, %class.ap_uint* %img_gray, i16 zeroext %channel, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %imgInput0 = alloca %struct.xf_Mat_7_256_256_1_, align 4
  %imgOutput0 = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_rgba, %class.ap_uint** %1, align 8
  store %class.ap_uint* %img_gray, %class.ap_uint** %2, align 8
  store i16 %channel, i16* %3, align 2
  store i32 %rows, i32* %4, align 4
  store i32 %cols, i32* %5, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_7_256_256_1_C1Ev(%struct.xf_Mat_7_256_256_1_* %imgInput0)
  call void @_ZL33p_ZN2xf16Mat_7_256_256_1_C2IEEv_1P19xf_Mat_7_256_256_1_(%struct.xf_Mat_7_256_256_1_* %imgInput0)
  %6 = load i32* %4, align 4
  %7 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %imgInput0, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32* %5, align 4
  %9 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %imgInput0, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %imgOutput0)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %imgOutput0)
  %10 = load i32* %4, align 4
  %11 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %imgOutput0, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32* %5, align 4
  %13 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %imgOutput0, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi7ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi7ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_7_256_256_1_(%class.ap_uint* %14, %struct.xf_Mat_7_256_256_1_* %imgInput0)
  %15 = load i16* %3, align 2
  call void @_ZL107p_ZN2xf14extractChannelILi7ELi0ELi256ELi256ELi1EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEt_1R19xf_Mat_7_256_256_1_R19xf_Mat_0_256_256_1_t(%struct.xf_Mat_7_256_256_1_* %imgInput0, %struct.xf_Mat_0_256_256_1_* %imgOutput0, i16 zeroext %15)
  %16 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_0_256_256_1_* %imgOutput0, %class.ap_uint* %16)
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_7_256_256_1_C1Ev(%struct.xf_Mat_7_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_7_256_256_1_*, align 8
  store %struct.xf_Mat_7_256_256_1_* %this, %struct.xf_Mat_7_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_7_256_256_1_** %1
  call void @_ZN19xf_Mat_7_256_256_1_C2Ev(%struct.xf_Mat_7_256_256_1_* %2)
  ret void
}

define internal void @_ZL33p_ZN2xf16Mat_7_256_256_1_C2IEEv_1P19xf_Mat_7_256_256_1_(%struct.xf_Mat_7_256_256_1_* %this_) uwtable {
  %1 = alloca %struct.xf_Mat_7_256_256_1_*, align 8
  store %struct.xf_Mat_7_256_256_1_* %this_, %struct.xf_Mat_7_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_7_256_256_1_** %1, align 8
  call void @_ZL38p_ZN2xf16Mat_7_256_256_1_4initIEEiib_1P19xf_Mat_7_256_256_1_iib(%struct.xf_Mat_7_256_256_1_* %2, i32 256, i32 256, i1 zeroext true)
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

define internal void @_ZL95p_ZN2xf11Array2xfMatILi256ELi7ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi7ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_7_256_256_1_(%class.ap_uint* %srcPtr, %struct.xf_Mat_7_256_256_1_* %dstMat) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %struct.xf_Mat_7_256_256_1_*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %class.ap_uint* %srcPtr, %class.ap_uint** %1, align 8
  store %struct.xf_Mat_7_256_256_1_* %dstMat, %struct.xf_Mat_7_256_256_1_** %2, align 8
  %3 = load %class.ap_uint** %1, align 8
  %4 = load %struct.xf_Mat_7_256_256_1_** %2, align 8
  call void @_ZL108p_ZN2xf11accel_utils11Array2xfMatILi256ELi7ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi7ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi256EER19xf_Mat_7_256_256_1_(%struct.xf_accel_utils* %au, %class.ap_uint* %3, %struct.xf_Mat_7_256_256_1_* %4)
  ret void
}

define internal void @_ZL107p_ZN2xf14extractChannelILi7ELi0ELi256ELi256ELi1EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEt_1R19xf_Mat_7_256_256_1_R19xf_Mat_0_256_256_1_t(%struct.xf_Mat_7_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_dst_mat, i16 zeroext %_channel) uwtable {
  %1 = alloca %struct.xf_Mat_7_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i16, align 2
  %width = alloca i16, align 2
  store %struct.xf_Mat_7_256_256_1_* %_src_mat, %struct.xf_Mat_7_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i16 %_channel, i16* %3, align 2
  %4 = load i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %47, label %7

; <label>:7                                       ; preds = %0
  %8 = load i16* %3, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %47, label %11

; <label>:11                                      ; preds = %7
  %12 = load i16* %3, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %47, label %15

; <label>:15                                      ; preds = %11
  %16 = load i16* %3, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %47, label %19

; <label>:19                                      ; preds = %15
  %20 = load i16* %3, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %47, label %23

; <label>:23                                      ; preds = %19
  %24 = load i16* %3, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %47, label %27

; <label>:27                                      ; preds = %23
  %28 = load i16* %3, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp eq i32 %29, 6
  br i1 %30, label %47, label %31

; <label>:31                                      ; preds = %27
  %32 = load i16* %3, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %33, 7
  br i1 %34, label %47, label %35

; <label>:35                                      ; preds = %31
  %36 = load i16* %3, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %47, label %39

; <label>:39                                      ; preds = %35
  %40 = load i16* %3, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %41, 9
  br i1 %42, label %47, label %43

; <label>:43                                      ; preds = %39
  %44 = load i16* %3, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %43, %39, %35, %31, %27, %23, %19, %15, %11, %7, %0
  br label %50

; <label>:48                                      ; preds = %43
  call void @__assert_fail(i8* getelementptr inbounds ([431 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 131, i8* getelementptr inbounds ([189 x i8]* @__PRETTY_FUNCTION__._ZL107p_ZN2xf14extractChannelILi7ELi0ELi256ELi256ELi1EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEt_1R19xf_Mat_7_256_256_1_R19xf_Mat_0_256_256_1_t, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %50

; <label>:50                                      ; preds = %49, %47
  %51 = load %struct.xf_Mat_7_256_256_1_** %1, align 8
  %52 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %51, i32 0, i32 1
  %53 = load i32* %52, align 4
  %54 = icmp sle i32 %53, 256
  br i1 %54, label %55, label %61

; <label>:55                                      ; preds = %50
  %56 = load %struct.xf_Mat_7_256_256_1_** %1, align 8
  %57 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %56, i32 0, i32 2
  %58 = load i32* %57, align 4
  %59 = icmp sle i32 %58, 256
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %55
  br label %63

; <label>:61                                      ; preds = %55, %50
  call void @__assert_fail(i8* getelementptr inbounds ([108 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 132, i8* getelementptr inbounds ([189 x i8]* @__PRETTY_FUNCTION__._ZL107p_ZN2xf14extractChannelILi7ELi0ELi256ELi256ELi1EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEt_1R19xf_Mat_7_256_256_1_R19xf_Mat_0_256_256_1_t, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %63

; <label>:63                                      ; preds = %62, %60
  %64 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %65 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %64, i32 0, i32 1
  %66 = load i32* %65, align 4
  %67 = icmp sle i32 %66, 256
  br i1 %67, label %68, label %74

; <label>:68                                      ; preds = %63
  %69 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %70 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %69, i32 0, i32 2
  %71 = load i32* %70, align 4
  %72 = icmp sle i32 %71, 256
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %68
  br label %76

; <label>:74                                      ; preds = %68, %63
  call void @__assert_fail(i8* getelementptr inbounds ([108 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), i32 133, i8* getelementptr inbounds ([189 x i8]* @__PRETTY_FUNCTION__._ZL107p_ZN2xf14extractChannelILi7ELi0ELi256ELi256ELi1EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEt_1R19xf_Mat_7_256_256_1_R19xf_Mat_0_256_256_1_t, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %76

; <label>:76                                      ; preds = %75, %73
  %77 = load %struct.xf_Mat_7_256_256_1_** %1, align 8
  %78 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %77, i32 0, i32 2
  %79 = load i32* %78, align 4
  %80 = ashr i32 %79, 0
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %width, align 2
  %82 = load %struct.xf_Mat_7_256_256_1_** %1, align 8
  %83 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %84 = load i16* %3, align 2
  %85 = load %struct.xf_Mat_7_256_256_1_** %1, align 8
  %86 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %85, i32 0, i32 1
  %87 = load i32* %86, align 4
  %88 = trunc i32 %87 to i16
  %89 = load i16* %width, align 2
  call void @_ZL123p_ZN2xf22xfChannelExtractKernelILi256ELi256ELi7ELi0ELi1ELi256EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEttt_1R19xf_Mat_7_256_256_1_R19xf_Mat_0_256_256_1_ttt(%struct.xf_Mat_7_256_256_1_* %82, %struct.xf_Mat_0_256_256_1_* %83, i16 zeroext %84, i16 zeroext %88, i16 zeroext %89)
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
  %in = alloca %class.ap_uint.1, align 1
  %i = alloca i32, align 4
  %4 = alloca %class.ap_uint.1, align 1
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
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1* %in)
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
  %24 = getelementptr %class.ap_uint.1* %4, i32 0, i32 0
  %25 = bitcast [1 x i8]* %24 to i8*
  store i8 %23, i8* %25, align 1
  %26 = call %class.ap_uint.1* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.1* %in, %class.ap_uint.1* %4)
  %27 = load i32* %bits_to_add, align 4
  %28 = icmp sle i32 %27, 8
  br i1 %28, label %29, label %52

; <label>:29                                      ; preds = %20
  %30 = load i32* %bits_to_add, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.1* %in, i32 %31, i32 0)
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
  %42 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.1* %in, i32 7, i32 %41)
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
  %53 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.1* %in)
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

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1*)

declare %class.ap_uint.1* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.1*, %class.ap_uint.1*)

define internal i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.1, align 1
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %6, i32 0, i32 4
  %8 = getelementptr inbounds [65536 x %class.ap_uint.1]* %7, i32 0, i64 %5
  %9 = bitcast %class.ap_uint.1* %1 to i8*
  %10 = bitcast %class.ap_uint.1* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 1, i32 1, i1 false)
  %11 = getelementptr %class.ap_uint.1* %1, i32 0, i32 0
  %12 = bitcast [1 x i8]* %11 to i8*
  %13 = load i8* %12, align 1
  ret i8 %13
}

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.1*, i32, i32)

declare i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

declare i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.1*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL123p_ZN2xf22xfChannelExtractKernelILi256ELi256ELi7ELi0ELi1ELi256EEER3MatILi7ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EEttt_1R19xf_Mat_7_256_256_1_R19xf_Mat_0_256_256_1_ttt(%struct.xf_Mat_7_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_dst_mat, i16 zeroext %_channel, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %struct.xf_Mat_7_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %noofbits = alloca i32, align 4
  %i = alloca %class.ap_uint.2, align 1
  %j = alloca %class.ap_uint.2, align 1
  %k = alloca %class.ap_uint.2, align 1
  %in_pix = alloca %class.ap_uint.0, align 1
  %out_pix = alloca %class.ap_uint.1, align 1
  %result = alloca %class.ap_uint.1, align 1
  %shift = alloca i32, align 4
  %bitdepth_src = alloca i32, align 4
  %bitdepth_dst = alloca i32, align 4
  %6 = alloca %class.ap_uint.2, align 1
  %7 = alloca %class.ap_uint.2, align 1
  %y = alloca i32, align 4
  %8 = alloca %class.ap_uint.0, align 1
  %9 = alloca %class.ap_uint.2, align 1
  %10 = alloca %class.ap_uint.2, align 1
  %11 = alloca %class.ap_int, align 1
  %12 = alloca %class.ap_uint.2, align 1
  %_in_k = alloca %class.ap_uint.2, align 1
  %13 = alloca %class.ap_uint.2, align 1
  %14 = alloca %class.ap_uint.2, align 1
  %15 = alloca %class.ap_uint.2, align 1
  %16 = alloca %class.ap_uint.2, align 1
  %17 = alloca %class.ap_uint.2, align 1
  %18 = alloca %class.ap_uint.2, align 1
  %19 = alloca %class.ap_int, align 1
  %20 = alloca %class.ap_uint.1, align 1
  %21 = alloca %class.ap_uint.2, align 1
  %22 = alloca %class.ap_uint.2, align 1
  store %struct.xf_Mat_7_256_256_1_* %_src_mat, %struct.xf_Mat_7_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i16 %_channel, i16* %3, align 2
  store i16 %height, i16* %4, align 2
  store i16 %width, i16* %5, align 2
  store i32 8, i32* %noofbits, align 4
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %i)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %j)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2* %k)
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.0* %in_pix)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1* %out_pix)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1* %result)
  store i32 0, i32* %shift, align 4
  store i32 2, i32* %bitdepth_src, align 4
  store i32 8, i32* %bitdepth_dst, align 4
  %23 = load i16* %3, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i16* %3, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %28, 4
  %30 = zext i1 %29 to i32
  %31 = or i32 %26, %30
  %32 = load i16* %3, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %33, 8
  %35 = zext i1 %34 to i32
  %36 = or i32 %31, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %0
  store i32 0, i32* %shift, align 4
  br label %88

; <label>:39                                      ; preds = %0
  %40 = load i16* %3, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %41, 1
  %43 = zext i1 %42 to i32
  %44 = load i16* %3, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %45, 5
  %47 = zext i1 %46 to i32
  %48 = or i32 %43, %47
  %49 = load i16* %3, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %50, 9
  %52 = zext i1 %51 to i32
  %53 = or i32 %48, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %39
  store i32 8, i32* %shift, align 4
  br label %87

; <label>:56                                      ; preds = %39
  %57 = load i16* %3, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp eq i32 %58, 2
  %60 = zext i1 %59 to i32
  %61 = load i16* %3, align 2
  %62 = zext i16 %61 to i32
  %63 = icmp eq i32 %62, 6
  %64 = zext i1 %63 to i32
  %65 = or i32 %60, %64
  %66 = load i16* %3, align 2
  %67 = zext i16 %66 to i32
  %68 = icmp eq i32 %67, 10
  %69 = zext i1 %68 to i32
  %70 = or i32 %65, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

; <label>:72                                      ; preds = %56
  store i32 16, i32* %shift, align 4
  br label %86

; <label>:73                                      ; preds = %56
  %74 = load i16* %3, align 2
  %75 = zext i16 %74 to i32
  %76 = icmp eq i32 %75, 3
  %77 = zext i1 %76 to i32
  %78 = load i16* %3, align 2
  %79 = zext i16 %78 to i32
  %80 = icmp eq i32 %79, 7
  %81 = zext i1 %80 to i32
  %82 = or i32 %77, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %73
  store i32 24, i32* %shift, align 4
  br label %85

; <label>:85                                      ; preds = %84, %73
  br label %86

; <label>:86                                      ; preds = %85, %72
  br label %87

; <label>:87                                      ; preds = %86, %55
  br label %88

; <label>:88                                      ; preds = %87, %38
  br label %89

; <label>:89                                      ; preds = %88
  %90 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %i, i32 0)
  br label %91

; <label>:91                                      ; preds = %204, %89
  %92 = bitcast %class.ap_uint.2* %6 to i8*
  %93 = bitcast %class.ap_uint.2* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 2, i32 1, i1 false)
  %94 = load i16* %4, align 2
  %95 = getelementptr %class.ap_uint.2* %6, i32 0, i32 0
  %96 = bitcast [2 x i8]* %95 to i16*
  %97 = load i16* %96, align 1
  %98 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %97, i16 zeroext %94)
  br i1 %98, label %99, label %208

; <label>:99                                      ; preds = %91
  br label %100

; <label>:100                                     ; preds = %99
  %101 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %j, i32 0)
  br label %102

; <label>:102                                     ; preds = %199, %100
  %103 = bitcast %class.ap_uint.2* %7 to i8*
  %104 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 2, i32 1, i1 false)
  %105 = load i16* %5, align 2
  %106 = getelementptr %class.ap_uint.2* %7, i32 0, i32 0
  %107 = bitcast [2 x i8]* %106 to i16*
  %108 = load i16* %107, align 1
  %109 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %108, i16 zeroext %105)
  br i1 %109, label %110, label %203

; <label>:110                                     ; preds = %102
  %111 = load %struct.xf_Mat_7_256_256_1_** %1, align 8
  %112 = load i16* %5, align 2
  %113 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.2* %i, i16 zeroext %112)
  %114 = getelementptr %class.ap_uint.2* %9, i32 0, i32 0
  %115 = bitcast [2 x i8]* %114 to i16*
  store i16 %113, i16* %115, align 1
  %116 = bitcast %class.ap_uint.2* %10 to i8*
  %117 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 2, i32 1, i1 false)
  %118 = getelementptr %class.ap_uint.2* %9, i32 0, i32 0
  %119 = bitcast [2 x i8]* %118 to i16*
  %120 = load i16* %119, align 1
  %121 = getelementptr %class.ap_uint.2* %10, i32 0, i32 0
  %122 = bitcast [2 x i8]* %121 to i16*
  %123 = load i16* %122, align 1
  %124 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %120, i16 %123)
  %125 = getelementptr %class.ap_int* %11, i32 0, i32 0
  %126 = bitcast [4 x i8]* %125 to i32*
  store i32 %124, i32* %126, align 1
  %127 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %11)
  %128 = trunc i64 %127 to i32
  %129 = call i32 @_ZL36p_ZN2xf16Mat_7_256_256_1_4readIEEi_1P19xf_Mat_7_256_256_1_i(%struct.xf_Mat_7_256_256_1_* %111, i32 %128)
  %130 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %131 = bitcast [4 x i8]* %130 to i32*
  store i32 %129, i32* %131, align 1
  %132 = call %class.ap_uint.0* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.0* %in_pix, %class.ap_uint.0* %8)
  br label %133

; <label>:133                                     ; preds = %110
  %134 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2* %k, i32 0)
  br label %135

; <label>:135                                     ; preds = %170, %133
  %136 = bitcast %class.ap_uint.2* %12 to i8*
  %137 = bitcast %class.ap_uint.2* %k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %137, i64 2, i32 1, i1 false)
  %138 = getelementptr %class.ap_uint.2* %12, i32 0, i32 0
  %139 = bitcast [2 x i8]* %138 to i16*
  %140 = load i16* %139, align 1
  %141 = call zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16 %140, i64 0)
  br i1 %141, label %142, label %174

; <label>:142                                     ; preds = %135
  %143 = call i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64 8, %class.ap_uint.2* %k)
  %144 = getelementptr %class.ap_uint.2* %13, i32 0, i32 0
  %145 = bitcast [2 x i8]* %144 to i16*
  store i16 %143, i16* %145, align 1
  %146 = call i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64 0, %class.ap_uint.2* %13)
  %147 = getelementptr %class.ap_uint.2* %_in_k, i32 0, i32 0
  %148 = bitcast [2 x i8]* %147 to i16*
  store i16 %146, i16* %148, align 1
  %149 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %_in_k, i32 4)
  %150 = getelementptr %class.ap_uint.2* %14, i32 0, i32 0
  %151 = bitcast [2 x i8]* %150 to i16*
  store i16 %149, i16* %151, align 1
  %152 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2* %14)
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %y, align 4
  %154 = load i32* %y, align 4
  %155 = load i32* %shift, align 4
  %156 = add nsw i32 %154, %155
  %157 = add nsw i32 %156, 8
  %158 = sub nsw i32 %157, 1
  %159 = load i32* %y, align 4
  %160 = load i32* %shift, align 4
  %161 = add nsw i32 %159, %160
  %162 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.0* %in_pix, i32 %158, i32 %161)
  %163 = load i64* %162
  %164 = call %class.ap_uint.1* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.1* %result, i64 %163)
  %165 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.1* %result)
  %166 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %_in_k, i32 7)
  %167 = getelementptr %class.ap_uint.2* %15, i32 0, i32 0
  %168 = bitcast [2 x i8]* %167 to i16*
  store i16 %166, i16* %168, align 1
  %169 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.1* %out_pix, %class.ap_uint.2* %15, %class.ap_uint.2* %_in_k)
  store i64 %165, i64* %169
  br label %170

; <label>:170                                     ; preds = %142
  %171 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %k, i32 0)
  %172 = getelementptr %class.ap_uint.2* %16, i32 0, i32 0
  %173 = bitcast [2 x i8]* %172 to i16*
  store i16 %171, i16* %173, align 1
  br label %135

; <label>:174                                     ; preds = %135
  %175 = call %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.2* %k, i64 8)
  %176 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %177 = load i16* %5, align 2
  %178 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.2* %i, i16 zeroext %177)
  %179 = getelementptr %class.ap_uint.2* %17, i32 0, i32 0
  %180 = bitcast [2 x i8]* %179 to i16*
  store i16 %178, i16* %180, align 1
  %181 = bitcast %class.ap_uint.2* %18 to i8*
  %182 = bitcast %class.ap_uint.2* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %181, i8* %182, i64 2, i32 1, i1 false)
  %183 = getelementptr %class.ap_uint.2* %17, i32 0, i32 0
  %184 = bitcast [2 x i8]* %183 to i16*
  %185 = load i16* %184, align 1
  %186 = getelementptr %class.ap_uint.2* %18, i32 0, i32 0
  %187 = bitcast [2 x i8]* %186 to i16*
  %188 = load i16* %187, align 1
  %189 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %185, i16 %188)
  %190 = getelementptr %class.ap_int* %19, i32 0, i32 0
  %191 = bitcast [4 x i8]* %190 to i32*
  store i32 %189, i32* %191, align 1
  %192 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %19)
  %193 = trunc i64 %192 to i32
  %194 = bitcast %class.ap_uint.1* %20 to i8*
  %195 = bitcast %class.ap_uint.1* %out_pix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %194, i8* %195, i64 1, i32 1, i1 false)
  %196 = getelementptr %class.ap_uint.1* %20, i32 0, i32 0
  %197 = bitcast [1 x i8]* %196 to i8*
  %198 = load i8* %197, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %176, i32 %193, i8 %198)
  br label %199

; <label>:199                                     ; preds = %174
  %200 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %j, i32 0)
  %201 = getelementptr %class.ap_uint.2* %21, i32 0, i32 0
  %202 = bitcast [2 x i8]* %201 to i16*
  store i16 %200, i16* %202, align 1
  br label %102

; <label>:203                                     ; preds = %102
  br label %204

; <label>:204                                     ; preds = %203
  %205 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2* %i, i32 0)
  %206 = getelementptr %class.ap_uint.2* %22, i32 0, i32 0
  %207 = bitcast [2 x i8]* %206 to i16*
  store i16 %205, i16* %207, align 1
  br label %91

; <label>:208                                     ; preds = %91
  ret void
}

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.2*)

declare void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.0*)

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.2*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare %class.ap_uint.0* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.0*, %class.ap_uint.0*)

define internal i32 @_ZL36p_ZN2xf16Mat_7_256_256_1_4readIEEi_1P19xf_Mat_7_256_256_1_i(%struct.xf_Mat_7_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.0, align 1
  %2 = alloca %struct.xf_Mat_7_256_256_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_7_256_256_1_* %this_, %struct.xf_Mat_7_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_7_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %6, i32 0, i32 4
  %8 = getelementptr inbounds [65536 x %class.ap_uint.0]* %7, i32 0, i64 %5
  %9 = bitcast %class.ap_uint.0* %1 to i8*
  %10 = bitcast %class.ap_uint.0* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 4, i32 1, i1 false)
  %11 = getelementptr %class.ap_uint.0* %1, i32 0, i32 0
  %12 = bitcast [4 x i8]* %11 to i32*
  %13 = load i32* %12, align 1
  ret i32 %13
}

declare i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.2*, i16 zeroext)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int*)

declare zeroext i1 @_ZleILi13EEb7ap_uintIXT_EEl(i16, i64)

declare i16 @_ZplILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.2*)

declare i16 @_ZmlILi13EE7ap_uintIXT_EElRKS1_(i64, %class.ap_uint.2*)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2*, i32)

declare i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.2*)

declare %class.ap_uint.1* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.1*, i64)

declare i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.0*, i32, i32)

declare i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint.1*, %class.ap_uint.2*, %class.ap_uint.2*)

declare i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2*, i32)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.2*, i32)

declare %class.ap_uint.2* @_ZN7ap_uintILi13EEaSEl(%class.ap_uint.2*, i64)

define internal void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %this_, i32 %index, i8 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint.1* %val, i32 0, i32 0
  %4 = bitcast [1 x i8]* %3 to i8*
  store i8 %val.coerce, i8* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.1]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint.1* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.1* %9, %class.ap_uint.1* %val)
  ret void
}

define internal void @_ZL108p_ZN2xf11accel_utils11Array2xfMatILi256ELi7ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi7ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi256EER19xf_Mat_7_256_256_1_(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %struct.xf_Mat_7_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %struct.xf_Mat_7_256_256_1_*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %class.ap_uint* %srcPtr, %class.ap_uint** %2, align 8
  store %struct.xf_Mat_7_256_256_1_* %dstMat, %struct.xf_Mat_7_256_256_1_** %3, align 8
  store i32 8, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_7_256_256_1_** %3, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_7_256_256_1_** %3, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %class.ap_uint** %2, align 8
  %12 = load i32* %rows, align 4
  %13 = load i32* %cols, align 4
  call void @_ZL122p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi4ELi8ELi8192EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1P14xf_accel_utilsP7ap_uintILi256EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %10, %class.ap_uint* %11, %"class.hls::stream"* %strm, i32 %12, i32 %13)
  %14 = load %struct.xf_accel_utils** %1, align 8
  %15 = load %struct.xf_Mat_7_256_256_1_** %3, align 8
  call void @_ZL127p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi7ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi256EEER3MatILi7ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEER19xf_Mat_7_256_256_1_(%struct.xf_accel_utils* %14, %"class.hls::stream"* %strm, %struct.xf_Mat_7_256_256_1_* %15)
  ret void
}

define internal void @_ZL122p_ZN2xf11accel_utils13Array2hlsStrmILi256ELi256ELi256ELi1ELi4ELi8ELi8192EEEP7ap_uintILi256EER6streamI7ap_uintILi256EEEii_1P14xf_accel_utilsP7ap_uintILi256EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %"class.hls::stream"* %dstStrm, i32 %rows, i32 %cols) uwtable {
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
  store i32 32, i32* %pixel_width, align 4
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

define internal void @_ZL127p_ZN2xf11accel_utils13hlsStrm2xfMatILi256ELi7ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi256EEER3MatILi7ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEER19xf_Mat_7_256_256_1_(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %struct.xf_Mat_7_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %"class.hls::stream"*, align 8
  %3 = alloca %struct.xf_Mat_7_256_256_1_*, align 8
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
  store %struct.xf_Mat_7_256_256_1_* %dstMat, %struct.xf_Mat_7_256_256_1_** %3, align 8
  %6 = load %struct.xf_Mat_7_256_256_1_** %3, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %6, i32 0, i32 1
  %8 = load i32* %7, align 4
  store i32 %8, i32* %rows, align 4
  %9 = load %struct.xf_Mat_7_256_256_1_** %3, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %9, i32 0, i32 2
  %11 = load i32* %10, align 4
  store i32 %11, i32* %cols, align 4
  %12 = load i32* %rows, align 4
  %13 = load i32* %cols, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 1
  store i32 %15, i32* %loop_count, align 4
  store i32 0, i32* %valid_bits, align 4
  store i32 32, i32* %N_size, align 4
  call void @_ZN7ap_uintILi256EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.0* %out)
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
  %23 = icmp slt i32 %22, 32
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
  %34 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.0* %out, i32 %33, i32 0)
  store i64 %31, i64* %34
  br label %35

; <label>:35                                      ; preds = %27, %24
  %36 = load %"class.hls::stream"** %2, align 8
  call void @_ZN3hls6streamI7ap_uintILi256EEE4readEv(%class.ap_uint* sret %4, %"class.hls::stream"* %36)
  %37 = call %class.ap_uint* @_ZN7ap_uintILi256EEaSERKS0_(%class.ap_uint* %r, %class.ap_uint* %4)
  %38 = load i32* %valid_bits, align 4
  %39 = sub nsw i32 32, %38
  %40 = sub nsw i32 %39, 1
  %41 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %40, i32 0)
  %42 = load i64* %41
  %43 = load i32* %valid_bits, align 4
  %44 = call i64* @_ZN7ap_uintILi32EE5rangeEii(%class.ap_uint.0* %out, i32 31, i32 %43)
  store i64 %42, i64* %44
  %45 = load i32* %valid_bits, align 4
  %46 = sub nsw i32 32, %45
  %47 = sub nsw i32 256, %46
  store i32 %47, i32* %valid_bits, align 4
  br label %60

; <label>:48                                      ; preds = %21
  %49 = load i32* %valid_bits, align 4
  %50 = sub nsw i32 256, %49
  %51 = add nsw i32 %50, 32
  %52 = sub nsw i32 %51, 1
  %53 = load i32* %valid_bits, align 4
  %54 = sub nsw i32 256, %53
  %55 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %52, i32 %54)
  %56 = load i64* %55
  %57 = call %class.ap_uint.0* @_ZN7ap_uintILi32EEaSEm(%class.ap_uint.0* %out, i64 %56)
  %58 = load i32* %valid_bits, align 4
  %59 = sub nsw i32 %58, 32
  store i32 %59, i32* %valid_bits, align 4
  br label %60

; <label>:60                                      ; preds = %48, %35
  %61 = load %struct.xf_Mat_7_256_256_1_** %3, align 8
  %62 = load i32* %i, align 4
  %63 = bitcast %class.ap_uint.0* %5 to i8*
  %64 = bitcast %class.ap_uint.0* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 4, i32 1, i1 false)
  %65 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %66 = bitcast [4 x i8]* %65 to i32*
  %67 = load i32* %66, align 1
  call void @_ZL52p_ZN2xf16Mat_7_256_256_1_5writeIEEi7ap_uintILi32EE_1P19xf_Mat_7_256_256_1_i7ap_uintILi32EE(%struct.xf_Mat_7_256_256_1_* %61, i32 %62, i32 %67)
  br label %68

; <label>:68                                      ; preds = %60
  %69 = load i32* %i, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %i, align 4
  br label %17

; <label>:71                                      ; preds = %17
  ret void
}

declare %class.ap_uint.0* @_ZN7ap_uintILi32EEaSEm(%class.ap_uint.0*, i64)

define internal void @_ZL52p_ZN2xf16Mat_7_256_256_1_5writeIEEi7ap_uintILi32EE_1P19xf_Mat_7_256_256_1_i7ap_uintILi32EE(%struct.xf_Mat_7_256_256_1_* %this_, i32 %index, i32 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_7_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.0, align 4
  store %struct.xf_Mat_7_256_256_1_* %this_, %struct.xf_Mat_7_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint.0* %val, i32 0, i32 0
  %4 = bitcast [4 x i8]* %3 to i32*
  store i32 %val.coerce, i32* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_7_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.0]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint.0* @_ZN7ap_uintILi32EEaSERKS0_(%class.ap_uint.0* %9, %class.ap_uint.0* %val)
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
  %4 = getelementptr inbounds [65536 x %class.ap_uint.1]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.1* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint.1* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.1* %7)
  %8 = getelementptr inbounds %class.ap_uint.1* %7, i64 1
  %9 = icmp eq %class.ap_uint.1* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  ret void
}

define internal void @_ZL38p_ZN2xf16Mat_7_256_256_1_4initIEEiib_1P19xf_Mat_7_256_256_1_iib(%struct.xf_Mat_7_256_256_1_* %this_, i32 %_rows, i32 %_cols, i1 zeroext %allocate) nounwind uwtable {
  %1 = alloca %struct.xf_Mat_7_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.xf_Mat_7_256_256_1_* %this_, %struct.xf_Mat_7_256_256_1_** %1, align 8
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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_7_256_256_1_4initIEEiib_1P19xf_Mat_7_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load i32* %2, align 4
  %22 = load %struct.xf_Mat_7_256_256_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32* %3, align 4
  %25 = load %struct.xf_Mat_7_256_256_1_** %1, align 8
  %26 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32* %2, align 4
  %28 = load i32* %3, align 4
  %29 = ashr i32 %28, 0
  %30 = mul nsw i32 %27, %29
  %31 = load %struct.xf_Mat_7_256_256_1_** %1, align 8
  %32 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i8* %4, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %20
  br label %36

; <label>:36                                      ; preds = %35, %20
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_7_256_256_1_C2Ev(%struct.xf_Mat_7_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_7_256_256_1_*, align 8
  store %struct.xf_Mat_7_256_256_1_* %this, %struct.xf_Mat_7_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_7_256_256_1_** %1
  %3 = getelementptr inbounds %struct.xf_Mat_7_256_256_1_* %2, i32 0, i32 4
  %4 = getelementptr inbounds [65536 x %class.ap_uint.0]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.0* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint.0* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi32EEC1Ev(%class.ap_uint.0* %7)
  %8 = getelementptr inbounds %class.ap_uint.0* %7, i64 1
  %9 = icmp eq %class.ap_uint.0* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  ret void
}

; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/minmaxloc_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [8 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%class.ap_uint.1 = type { [2 x i8] }
%class.ap_uint.2 = type { [1 x i8] }
%class.ap_uint.3 = type { [4 x i8] }
%class.ap_int = type { [4 x i8] }
%class.ap_uint.4 = type { [2 x i8] }
%class.ap_int.5 = type { [2 x i8] }
%"class.hls::stream" = type { %class.ap_uint }

@.str = private unnamed_addr constant [100 x i8] c"((_src.rows <= ROWS ) && (_src.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"xf_min_max_loc.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL81p_ZN2xf9minMaxLocILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPiPiPtPtPtPt_1R19xf_Mat_0_256_256_1_PiS1_PtS2_S2_S2_ = private unnamed_addr constant [203 x i8] c"void p_ZN2xf9minMaxLocILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPiPiPtPtPtPt_1(struct xf_Mat_0_256_256_1_ &, int *, int *, unsigned short *, unsigned short *, unsigned short *, unsigned short *)\00", align 1
@.str2 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z17min_max_loc_accelP7ap_uintILi64EEPiS2_PtS3_S3_S3_ii(%class.ap_uint* %imgInput_data, i32* %min_value, i32* %max_value, i16* %_min_locx, i16* %_min_locy, i16* %_max_locx, i16* %_max_locy, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %imgInput = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %imgInput_data, %class.ap_uint** %1, align 8
  store i32* %min_value, i32** %2, align 8
  store i32* %max_value, i32** %3, align 8
  store i16* %_min_locx, i16** %4, align 8
  store i16* %_min_locy, i16** %5, align 8
  store i16* %_max_locx, i16** %6, align 8
  store i16* %_max_locy, i16** %7, align 8
  store i32 %rows, i32* %8, align 4
  store i32 %cols, i32* %9, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %imgInput)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %imgInput)
  %10 = load i32* %8, align 4
  %11 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %imgInput, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32* %9, align 4
  %13 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %imgInput, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %class.ap_uint** %1, align 8
  call void @_ZL93p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_0_256_256_1_(%class.ap_uint* %14, %struct.xf_Mat_0_256_256_1_* %imgInput)
  %15 = load i32** %2, align 8
  %16 = load i32** %3, align 8
  %17 = load i16** %4, align 8
  %18 = load i16** %5, align 8
  %19 = load i16** %6, align 8
  %20 = load i16** %7, align 8
  call void @_ZL19minMaxLoc_wrapper_1R19xf_Mat_0_256_256_1_PiS1_PtS2_S2_S2_(%struct.xf_Mat_0_256_256_1_* %imgInput, i32* %15, i32* %16, i16* %17, i16* %18, i16* %19, i16* %20)
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

define internal void @_ZL19minMaxLoc_wrapper_1R19xf_Mat_0_256_256_1_PiS1_PtS2_S2_S2_(%struct.xf_Mat_0_256_256_1_* %imgInput, i32* %min_value, i32* %max_value, i16* %_min_locx, i16* %_min_locy, i16* %_max_locx, i16* %_max_locy) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %min_value_local = alloca i32, align 4
  %max_value_local = alloca i32, align 4
  %_min_locx_local = alloca i16, align 2
  %_min_locy_local = alloca i16, align 2
  %_max_locx_local = alloca i16, align 2
  %_max_locy_local = alloca i16, align 2
  store %struct.xf_Mat_0_256_256_1_* %imgInput, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i32* %min_value, i32** %2, align 8
  store i32* %max_value, i32** %3, align 8
  store i16* %_min_locx, i16** %4, align 8
  store i16* %_min_locy, i16** %5, align 8
  store i16* %_max_locx, i16** %6, align 8
  store i16* %_max_locy, i16** %7, align 8
  %8 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  call void @_ZL81p_ZN2xf9minMaxLocILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPiPiPtPtPtPt_1R19xf_Mat_0_256_256_1_PiS1_PtS2_S2_S2_(%struct.xf_Mat_0_256_256_1_* %8, i32* %min_value_local, i32* %max_value_local, i16* %_min_locx_local, i16* %_min_locy_local, i16* %_max_locx_local, i16* %_max_locy_local)
  %9 = load i32* %min_value_local, align 4
  %10 = load i32** %2, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32* %max_value_local, align 4
  %12 = load i32** %3, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i16* %_min_locx_local, align 2
  %14 = load i16** %4, align 8
  store i16 %13, i16* %14, align 2
  %15 = load i16* %_min_locy_local, align 2
  %16 = load i16** %5, align 8
  store i16 %15, i16* %16, align 2
  %17 = load i16* %_max_locx_local, align 2
  %18 = load i16** %6, align 8
  store i16 %17, i16* %18, align 2
  %19 = load i16* %_max_locy_local, align 2
  %20 = load i16** %7, align 8
  store i16 %19, i16* %20, align 2
  ret void
}

define internal void @_ZL81p_ZN2xf9minMaxLocILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPiPiPtPtPtPt_1R19xf_Mat_0_256_256_1_PiS1_PtS2_S2_S2_(%struct.xf_Mat_0_256_256_1_* %_src, i32* %min_value, i32* %max_value, i16* %_minlocx, i16* %_minlocy, i16* %_maxlocx, i16* %_maxlocy) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %_min_locx = alloca i16, align 2
  %_min_locy = alloca i16, align 2
  %_max_locx = alloca i16, align 2
  %_max_locy = alloca i16, align 2
  %_min_val = alloca i32, align 4
  %_max_val = alloca i32, align 4
  %height = alloca i16, align 2
  %width = alloca i16, align 2
  store %struct.xf_Mat_0_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i32* %min_value, i32** %2, align 8
  store i32* %max_value, i32** %3, align 8
  store i16* %_minlocx, i16** %4, align 8
  store i16* %_minlocy, i16** %5, align 8
  store i16* %_maxlocx, i16** %6, align 8
  store i16* %_maxlocy, i16** %7, align 8
  %8 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = icmp sle i32 %10, 256
  br i1 %11, label %12, label %18

; <label>:12                                      ; preds = %0
  %13 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %14 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %13, i32 0, i32 2
  %15 = load i32* %14, align 4
  %16 = icmp sle i32 %15, 256
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %12
  br label %20

; <label>:18                                      ; preds = %12, %0
  call void @__assert_fail(i8* getelementptr inbounds ([100 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 252, i8* getelementptr inbounds ([203 x i8]* @__PRETTY_FUNCTION__._ZL81p_ZN2xf9minMaxLocILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPiPiPtPtPtPt_1R19xf_Mat_0_256_256_1_PiS1_PtS2_S2_S2_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %22 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %21, i32 0, i32 1
  %23 = load i32* %22, align 4
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %height, align 2
  %25 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %26 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %25, i32 0, i32 2
  %27 = load i32* %26, align 4
  %28 = ashr i32 %27, 0
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %width, align 2
  %30 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %31 = load i16* %height, align 2
  %32 = load i16* %width, align 2
  call void @_ZL106p_ZN2xf17xFMinMaxLocKernelILi0ELi256ELi256ELi0ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EERiRiRtRtRtRttt_1R19xf_Mat_0_256_256_1_RiS1_RtS2_S2_S2_tt(%struct.xf_Mat_0_256_256_1_* %30, i32* %_min_val, i32* %_max_val, i16* %_min_locx, i16* %_min_locy, i16* %_max_locx, i16* %_max_locy, i16 zeroext %31, i16 zeroext %32)
  %33 = load i32* %_min_val, align 4
  %34 = load i32** %2, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32* %_max_val, align 4
  %36 = load i32** %3, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i16* %_min_locx, align 2
  %38 = load i16** %4, align 8
  store i16 %37, i16* %38, align 2
  %39 = load i16* %_min_locy, align 2
  %40 = load i16** %5, align 8
  store i16 %39, i16* %40, align 2
  %41 = load i16* %_max_locx, align 2
  %42 = load i16** %6, align 8
  store i16 %41, i16* %42, align 2
  %43 = load i16* %_max_locy, align 2
  %44 = load i16** %7, align 8
  store i16 %43, i16* %44, align 2
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL106p_ZN2xf17xFMinMaxLocKernelILi0ELi256ELi256ELi0ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EERiRiRtRtRtRttt_1R19xf_Mat_0_256_256_1_RiS1_RtS2_S2_S2_tt(%struct.xf_Mat_0_256_256_1_* %_src, i32* %_minval1, i32* %_maxval1, i16* %_minlocx, i16* %_minlocy, i16* %_maxlocx, i16* %_maxlocy, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %_minval = alloca i32, align 4
  %_maxval = alloca i32, align 4
  %i = alloca %class.ap_uint.1, align 1
  %j = alloca %class.ap_uint.1, align 1
  %k = alloca %class.ap_uint.1, align 1
  %l = alloca %class.ap_uint.1, align 1
  %col_ind = alloca %class.ap_uint.1, align 1
  %val_in = alloca %class.ap_uint.0, align 1
  %min_loc_tmp_x = alloca %class.ap_uint.1, align 1
  %min_loc_tmp_y = alloca %class.ap_uint.1, align 1
  %max_loc_tmp_x = alloca i16, align 2
  %max_loc_tmp_y = alloca i16, align 2
  %step = alloca %class.ap_uint.2, align 1
  %10 = alloca %class.ap_uint.2, align 1
  %11 = alloca %class.ap_uint.2, align 1
  %min_val_tmp = alloca [2 x i32], align 4
  %max_val_tmp = alloca [2 x i32], align 4
  %min_loc_tmp = alloca [2 x %class.ap_uint.3], align 1
  %max_loc_tmp = alloca [2 x %class.ap_uint.3], align 1
  %12 = alloca %class.ap_uint.1, align 1
  %13 = alloca %class.ap_uint.2, align 1
  %14 = alloca %class.ap_uint.2, align 1
  %15 = alloca %class.ap_uint.1, align 1
  %16 = alloca %class.ap_uint.1, align 1
  %17 = alloca %class.ap_uint.1, align 1
  %18 = alloca %class.ap_uint.0, align 1
  %19 = alloca %class.ap_uint.1, align 1
  %20 = alloca %class.ap_uint.1, align 1
  %21 = alloca %class.ap_int, align 1
  %pixel_buf = alloca [2 x %class.ap_uint.0], align 1
  %k1 = alloca %class.ap_uint.4, align 1
  %22 = alloca %class.ap_uint.1, align 1
  %23 = alloca %class.ap_uint.4, align 1
  %24 = alloca %class.ap_uint.2, align 1
  %25 = alloca %class.ap_int.5, align 1
  %26 = alloca %class.ap_uint.0, align 1
  %27 = alloca %class.ap_uint.0, align 1
  %28 = alloca %class.ap_uint.2, align 1
  %29 = alloca %class.ap_uint.1, align 1
  %30 = alloca %class.ap_uint.1, align 1
  %31 = alloca %class.ap_uint.1, align 1
  %32 = alloca %class.ap_uint.1, align 1
  %33 = alloca %class.ap_uint.1, align 1
  %34 = alloca %class.ap_uint.1, align 1
  %35 = alloca %class.ap_uint.1, align 1
  %36 = alloca %class.ap_uint.1, align 1
  %37 = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i32* %_minval1, i32** %2, align 8
  store i32* %_maxval1, i32** %3, align 8
  store i16* %_minlocx, i16** %4, align 8
  store i16* %_minlocy, i16** %5, align 8
  store i16* %_maxlocx, i16** %6, align 8
  store i16* %_maxlocy, i16** %7, align 8
  store i16 %height, i16* %8, align 2
  store i16 %width, i16* %9, align 2
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %i)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %j)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %k)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1* %l)
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.1* %col_ind, i32 0)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %val_in)
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.1* %min_loc_tmp_x, i32 0)
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.1* %min_loc_tmp_y, i32 0)
  store i16 0, i16* %max_loc_tmp_x, align 2
  store i16 0, i16* %max_loc_tmp_y, align 2
  call void @_ZN7ap_uintILi6EEC1Ei(%class.ap_uint.2* %step, i32 8)
  %38 = load i16** %4, align 8
  store i16 -1, i16* %38, align 2
  %39 = load i16** %5, align 8
  store i16 -1, i16* %39, align 2
  %40 = load i16** %6, align 8
  store i16 -1, i16* %40, align 2
  %41 = load i16** %7, align 8
  store i16 -1, i16* %41, align 2
  %42 = call i8 @_ZmiILi6EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %step, i32 1)
  %43 = getelementptr %class.ap_uint.2* %10, i32 0, i32 0
  %44 = bitcast [1 x i8]* %43 to i8*
  store i8 %42, i8* %44, align 1
  %45 = call i64 @_ZNK7ap_uintILi6EEcvmEv(%class.ap_uint.2* %10)
  %46 = trunc i64 %45 to i32
  %47 = shl i32 1, %46
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %_minval, align 4
  %49 = call i8 @_ZmiILi6EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %step, i32 1)
  %50 = getelementptr %class.ap_uint.2* %11, i32 0, i32 0
  %51 = bitcast [1 x i8]* %50 to i8*
  store i8 %49, i8* %51, align 1
  %52 = call i64 @_ZNK7ap_uintILi6EEcvmEv(%class.ap_uint.2* %11)
  %53 = trunc i64 %52 to i32
  %54 = shl i32 1, %53
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %_maxval, align 4
  %56 = getelementptr inbounds [2 x %class.ap_uint.3]* %min_loc_tmp, i32 0, i32 0
  %57 = getelementptr inbounds %class.ap_uint.3* %56, i64 2
  br label %58

; <label>:58                                      ; preds = %58, %0
  %59 = phi %class.ap_uint.3* [ %56, %0 ], [ %60, %58 ]
  call void @_ZN7ap_uintILi26EEC1Ev(%class.ap_uint.3* %59)
  %60 = getelementptr inbounds %class.ap_uint.3* %59, i64 1
  %61 = icmp eq %class.ap_uint.3* %60, %57
  br i1 %61, label %62, label %58

; <label>:62                                      ; preds = %58
  %63 = getelementptr inbounds [2 x %class.ap_uint.3]* %max_loc_tmp, i32 0, i32 0
  %64 = getelementptr inbounds %class.ap_uint.3* %63, i64 2
  br label %65

; <label>:65                                      ; preds = %65, %62
  %66 = phi %class.ap_uint.3* [ %63, %62 ], [ %67, %65 ]
  call void @_ZN7ap_uintILi26EEC1Ev(%class.ap_uint.3* %66)
  %67 = getelementptr inbounds %class.ap_uint.3* %66, i64 1
  %68 = icmp eq %class.ap_uint.3* %67, %64
  br i1 %68, label %69, label %65

; <label>:69                                      ; preds = %65
  br label %70

; <label>:70                                      ; preds = %69
  %71 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %i, i32 0)
  br label %72

; <label>:72                                      ; preds = %98, %70
  %73 = bitcast %class.ap_uint.1* %12 to i8*
  %74 = bitcast %class.ap_uint.1* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 2, i32 1, i1 false)
  %75 = getelementptr %class.ap_uint.1* %12, i32 0, i32 0
  %76 = bitcast [2 x i8]* %75 to i16*
  %77 = load i16* %76, align 1
  %78 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %77, i32 1)
  br i1 %78, label %79, label %102

; <label>:79                                      ; preds = %72
  %80 = call i8 @_ZmiILi6EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %step, i32 1)
  %81 = getelementptr %class.ap_uint.2* %13, i32 0, i32 0
  %82 = bitcast [1 x i8]* %81 to i8*
  store i8 %80, i8* %82, align 1
  %83 = call i64 @_ZNK7ap_uintILi6EEcvmEv(%class.ap_uint.2* %13)
  %84 = trunc i64 %83 to i32
  %85 = shl i32 1, %84
  %86 = sub nsw i32 %85, 1
  %87 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %i)
  %88 = getelementptr inbounds [2 x i32]* %min_val_tmp, i32 0, i64 %87
  store i32 %86, i32* %88, align 4
  %89 = call i8 @_ZmiILi6EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %step, i32 1)
  %90 = getelementptr %class.ap_uint.2* %14, i32 0, i32 0
  %91 = bitcast [1 x i8]* %90 to i8*
  store i8 %89, i8* %91, align 1
  %92 = call i64 @_ZNK7ap_uintILi6EEcvmEv(%class.ap_uint.2* %14)
  %93 = trunc i64 %92 to i32
  %94 = shl i32 1, %93
  %95 = sub nsw i32 0, %94
  %96 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %i)
  %97 = getelementptr inbounds [2 x i32]* %max_val_tmp, i32 0, i64 %96
  store i32 %95, i32* %97, align 4
  br label %98

; <label>:98                                      ; preds = %79
  %99 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %i, i32 0)
  %100 = getelementptr %class.ap_uint.1* %15, i32 0, i32 0
  %101 = bitcast [2 x i8]* %100 to i16*
  store i16 %99, i16* %101, align 1
  br label %72

; <label>:102                                     ; preds = %72
  br label %103

; <label>:103                                     ; preds = %102
  %104 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %i, i32 0)
  br label %105

; <label>:105                                     ; preds = %261, %103
  %106 = bitcast %class.ap_uint.1* %16 to i8*
  %107 = bitcast %class.ap_uint.1* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 2, i32 1, i1 false)
  %108 = load i16* %8, align 2
  %109 = getelementptr %class.ap_uint.1* %16, i32 0, i32 0
  %110 = bitcast [2 x i8]* %109 to i16*
  %111 = load i16* %110, align 1
  %112 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %111, i16 zeroext %108)
  br i1 %112, label %113, label %265

; <label>:113                                     ; preds = %105
  %114 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %col_ind, i32 0)
  br label %115

; <label>:115                                     ; preds = %113
  %116 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %j, i32 0)
  br label %117

; <label>:117                                     ; preds = %256, %115
  %118 = bitcast %class.ap_uint.1* %17 to i8*
  %119 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 2, i32 1, i1 false)
  %120 = load i16* %9, align 2
  %121 = getelementptr %class.ap_uint.1* %17, i32 0, i32 0
  %122 = bitcast [2 x i8]* %121 to i16*
  %123 = load i16* %122, align 1
  %124 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %123, i16 zeroext %120)
  br i1 %124, label %125, label %260

; <label>:125                                     ; preds = %117
  %126 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %127 = load i16* %9, align 2
  %128 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1* %i, i16 zeroext %127)
  %129 = getelementptr %class.ap_uint.1* %19, i32 0, i32 0
  %130 = bitcast [2 x i8]* %129 to i16*
  store i16 %128, i16* %130, align 1
  %131 = bitcast %class.ap_uint.1* %20 to i8*
  %132 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %131, i8* %132, i64 2, i32 1, i1 false)
  %133 = getelementptr %class.ap_uint.1* %19, i32 0, i32 0
  %134 = bitcast [2 x i8]* %133 to i16*
  %135 = load i16* %134, align 1
  %136 = getelementptr %class.ap_uint.1* %20, i32 0, i32 0
  %137 = bitcast [2 x i8]* %136 to i16*
  %138 = load i16* %137, align 1
  %139 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %135, i16 %138)
  %140 = getelementptr %class.ap_int* %21, i32 0, i32 0
  %141 = bitcast [4 x i8]* %140 to i32*
  store i32 %139, i32* %141, align 1
  %142 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %21)
  %143 = trunc i64 %142 to i32
  %144 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %126, i32 %143)
  %145 = getelementptr %class.ap_uint.0* %18, i32 0, i32 0
  %146 = bitcast [1 x i8]* %145 to i8*
  store i8 %144, i8* %146, align 1
  %147 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %val_in, %class.ap_uint.0* %18)
  %148 = getelementptr inbounds [2 x %class.ap_uint.0]* %pixel_buf, i32 0, i32 0
  %149 = getelementptr inbounds %class.ap_uint.0* %148, i64 2
  br label %150

; <label>:150                                     ; preds = %150, %125
  %151 = phi %class.ap_uint.0* [ %148, %125 ], [ %152, %150 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %151)
  %152 = getelementptr inbounds %class.ap_uint.0* %151, i64 1
  %153 = icmp eq %class.ap_uint.0* %152, %149
  br i1 %153, label %154, label %150

; <label>:154                                     ; preds = %150
  call void @_ZN7ap_uintILi9EEC1Ei(%class.ap_uint.4* %k1, i32 0)
  br label %155

; <label>:155                                     ; preds = %154
  %156 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %l, i32 0)
  br label %157

; <label>:157                                     ; preds = %251, %155
  %158 = bitcast %class.ap_uint.1* %22 to i8*
  %159 = bitcast %class.ap_uint.1* %l to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %158, i8* %159, i64 2, i32 1, i1 false)
  %160 = getelementptr %class.ap_uint.1* %22, i32 0, i32 0
  %161 = bitcast [2 x i8]* %160 to i16*
  %162 = load i16* %161, align 1
  %163 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %162, i32 1)
  br i1 %163, label %164, label %255

; <label>:164                                     ; preds = %157
  %165 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %166 = getelementptr inbounds [2 x %class.ap_uint.0]* %pixel_buf, i32 0, i64 %165
  %167 = bitcast %class.ap_uint.4* %23 to i8*
  %168 = bitcast %class.ap_uint.4* %k1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %167, i8* %168, i64 2, i32 1, i1 false)
  %169 = call i8 @_ZmiILi6EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %step, i32 1)
  %170 = getelementptr %class.ap_uint.2* %24, i32 0, i32 0
  %171 = bitcast [1 x i8]* %170 to i8*
  store i8 %169, i8* %171, align 1
  %172 = getelementptr %class.ap_uint.4* %23, i32 0, i32 0
  %173 = bitcast [2 x i8]* %172 to i16*
  %174 = load i16* %173, align 1
  %175 = getelementptr %class.ap_uint.2* %24, i32 0, i32 0
  %176 = bitcast [1 x i8]* %175 to i8*
  %177 = load i8* %176, align 1
  %178 = call i16 @_ZplILi9ELi6EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %174, i8 %177)
  %179 = getelementptr %class.ap_int.5* %25, i32 0, i32 0
  %180 = bitcast [2 x i8]* %179 to i16*
  store i16 %178, i16* %180, align 1
  %181 = call i64 @_ZNK6ap_intILi15EEcvlEv(%class.ap_int.5* %25)
  %182 = trunc i64 %181 to i32
  %183 = call i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.4* %k1)
  %184 = trunc i64 %183 to i32
  %185 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %val_in, i32 %182, i32 %184)
  %186 = load i64* %185
  %187 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %166, i64 %186)
  %188 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %189 = getelementptr inbounds [2 x %class.ap_uint.0]* %pixel_buf, i32 0, i64 %188
  %190 = bitcast %class.ap_uint.0* %26 to i8*
  %191 = bitcast %class.ap_uint.0* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %191, i64 1, i32 1, i1 false)
  %192 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %193 = getelementptr inbounds [2 x i32]* %min_val_tmp, i32 0, i64 %192
  %194 = load i32* %193, align 4
  %195 = getelementptr %class.ap_uint.0* %26, i32 0, i32 0
  %196 = bitcast [1 x i8]* %195 to i8*
  %197 = load i8* %196, align 1
  %198 = call zeroext i1 @_ZltILi8EEb7ap_uintIXT_EEi(i8 %197, i32 %194)
  br i1 %198, label %199, label %214

; <label>:199                                     ; preds = %164
  %200 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %201 = getelementptr inbounds [2 x %class.ap_uint.0]* %pixel_buf, i32 0, i64 %200
  %202 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %201)
  %203 = trunc i64 %202 to i32
  %204 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %205 = getelementptr inbounds [2 x i32]* %min_val_tmp, i32 0, i64 %204
  store i32 %203, i32* %205, align 4
  %206 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %i)
  %207 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %208 = getelementptr inbounds [2 x %class.ap_uint.3]* %min_loc_tmp, i32 0, i64 %207
  %209 = call i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3* %208, i32 12, i32 0)
  store i64 %206, i64* %209
  %210 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %col_ind)
  %211 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %212 = getelementptr inbounds [2 x %class.ap_uint.3]* %min_loc_tmp, i32 0, i64 %211
  %213 = call i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3* %212, i32 25, i32 13)
  store i64 %210, i64* %213
  br label %214

; <label>:214                                     ; preds = %199, %164
  %215 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %216 = getelementptr inbounds [2 x %class.ap_uint.0]* %pixel_buf, i32 0, i64 %215
  %217 = bitcast %class.ap_uint.0* %27 to i8*
  %218 = bitcast %class.ap_uint.0* %216 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %217, i8* %218, i64 1, i32 1, i1 false)
  %219 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %220 = getelementptr inbounds [2 x i32]* %max_val_tmp, i32 0, i64 %219
  %221 = load i32* %220, align 4
  %222 = getelementptr %class.ap_uint.0* %27, i32 0, i32 0
  %223 = bitcast [1 x i8]* %222 to i8*
  %224 = load i8* %223, align 1
  %225 = call zeroext i1 @_ZgtILi8EEb7ap_uintIXT_EEi(i8 %224, i32 %221)
  br i1 %225, label %226, label %241

; <label>:226                                     ; preds = %214
  %227 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %228 = getelementptr inbounds [2 x %class.ap_uint.0]* %pixel_buf, i32 0, i64 %227
  %229 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %228)
  %230 = trunc i64 %229 to i32
  %231 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %232 = getelementptr inbounds [2 x i32]* %max_val_tmp, i32 0, i64 %231
  store i32 %230, i32* %232, align 4
  %233 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %i)
  %234 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %235 = getelementptr inbounds [2 x %class.ap_uint.3]* %max_loc_tmp, i32 0, i64 %234
  %236 = call i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3* %235, i32 12, i32 0)
  store i64 %233, i64* %236
  %237 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %col_ind)
  %238 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %l)
  %239 = getelementptr inbounds [2 x %class.ap_uint.3]* %max_loc_tmp, i32 0, i64 %238
  %240 = call i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3* %239, i32 25, i32 13)
  store i64 %237, i64* %240
  br label %241

; <label>:241                                     ; preds = %226, %214
  %242 = bitcast %class.ap_uint.2* %28 to i8*
  %243 = bitcast %class.ap_uint.2* %step to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %242, i8* %243, i64 1, i32 1, i1 false)
  %244 = getelementptr %class.ap_uint.2* %28, i32 0, i32 0
  %245 = bitcast [1 x i8]* %244 to i8*
  %246 = load i8* %245, align 1
  %247 = call %class.ap_uint.4* @_ZpLILi9ELi6EER7ap_uintIXT_EES2_S0_IXT0_EE(%class.ap_uint.4* %k1, i8 %246)
  %248 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %col_ind, i32 0)
  %249 = getelementptr %class.ap_uint.1* %29, i32 0, i32 0
  %250 = bitcast [2 x i8]* %249 to i16*
  store i16 %248, i16* %250, align 1
  br label %251

; <label>:251                                     ; preds = %241
  %252 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %l, i32 0)
  %253 = getelementptr %class.ap_uint.1* %30, i32 0, i32 0
  %254 = bitcast [2 x i8]* %253 to i16*
  store i16 %252, i16* %254, align 1
  br label %157

; <label>:255                                     ; preds = %157
  br label %256

; <label>:256                                     ; preds = %255
  %257 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %j, i32 0)
  %258 = getelementptr %class.ap_uint.1* %31, i32 0, i32 0
  %259 = bitcast [2 x i8]* %258 to i16*
  store i16 %257, i16* %259, align 1
  br label %117

; <label>:260                                     ; preds = %117
  br label %261

; <label>:261                                     ; preds = %260
  %262 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %i, i32 0)
  %263 = getelementptr %class.ap_uint.1* %32, i32 0, i32 0
  %264 = bitcast [2 x i8]* %263 to i16*
  store i16 %262, i16* %264, align 1
  br label %105

; <label>:265                                     ; preds = %105
  br label %266

; <label>:266                                     ; preds = %265
  %267 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1* %k, i32 0)
  br label %268

; <label>:268                                     ; preds = %444, %266
  %269 = bitcast %class.ap_uint.1* %33 to i8*
  %270 = bitcast %class.ap_uint.1* %k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %269, i8* %270, i64 2, i32 1, i1 false)
  %271 = getelementptr %class.ap_uint.1* %33, i32 0, i32 0
  %272 = bitcast [2 x i8]* %271 to i16*
  %273 = load i16* %272, align 1
  %274 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %273, i32 1)
  br i1 %274, label %275, label %448

; <label>:275                                     ; preds = %268
  %276 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %277 = getelementptr inbounds [2 x i32]* %min_val_tmp, i32 0, i64 %276
  %278 = load i32* %277, align 4
  %279 = load i32* %_minval, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %297

; <label>:281                                     ; preds = %275
  %282 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %283 = getelementptr inbounds [2 x i32]* %min_val_tmp, i32 0, i64 %282
  %284 = load i32* %283, align 4
  store i32 %284, i32* %_minval, align 4
  %285 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %286 = getelementptr inbounds [2 x %class.ap_uint.3]* %min_loc_tmp, i32 0, i64 %285
  %287 = call i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3* %286, i32 12, i32 0)
  %288 = load i64* %287
  %289 = trunc i64 %288 to i16
  %290 = load i16** %5, align 8
  store i16 %289, i16* %290, align 2
  %291 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %292 = getelementptr inbounds [2 x %class.ap_uint.3]* %min_loc_tmp, i32 0, i64 %291
  %293 = call i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3* %292, i32 25, i32 13)
  %294 = load i64* %293
  %295 = trunc i64 %294 to i16
  %296 = load i16** %4, align 8
  store i16 %295, i16* %296, align 2
  br label %364

; <label>:297                                     ; preds = %275
  %298 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %299 = getelementptr inbounds [2 x i32]* %min_val_tmp, i32 0, i64 %298
  %300 = load i32* %299, align 4
  %301 = load i32* %_minval, align 4
  %302 = icmp sle i32 %300, %301
  br i1 %302, label %303, label %363

; <label>:303                                     ; preds = %297
  %304 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %305 = getelementptr inbounds [2 x %class.ap_uint.3]* %min_loc_tmp, i32 0, i64 %304
  %306 = call i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3* %305, i32 12, i32 0)
  %307 = load i64* %306
  %308 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEm(%class.ap_uint.1* %min_loc_tmp_y, i64 %307)
  %309 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %310 = getelementptr inbounds [2 x %class.ap_uint.3]* %min_loc_tmp, i32 0, i64 %309
  %311 = call i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3* %310, i32 25, i32 13)
  %312 = load i64* %311
  %313 = call %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEm(%class.ap_uint.1* %min_loc_tmp_x, i64 %312)
  %314 = bitcast %class.ap_uint.1* %34 to i8*
  %315 = bitcast %class.ap_uint.1* %min_loc_tmp_y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %314, i8* %315, i64 2, i32 1, i1 false)
  %316 = load i16** %5, align 8
  %317 = load i16* %316, align 2
  %318 = getelementptr %class.ap_uint.1* %34, i32 0, i32 0
  %319 = bitcast [2 x i8]* %318 to i16*
  %320 = load i16* %319, align 1
  %321 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %320, i16 zeroext %317)
  br i1 %321, label %322, label %332

; <label>:322                                     ; preds = %303
  %323 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %324 = getelementptr inbounds [2 x i32]* %min_val_tmp, i32 0, i64 %323
  %325 = load i32* %324, align 4
  store i32 %325, i32* %_minval, align 4
  %326 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %min_loc_tmp_x)
  %327 = trunc i64 %326 to i16
  %328 = load i16** %4, align 8
  store i16 %327, i16* %328, align 2
  %329 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %min_loc_tmp_y)
  %330 = trunc i64 %329 to i16
  %331 = load i16** %5, align 8
  store i16 %330, i16* %331, align 2
  br label %362

; <label>:332                                     ; preds = %303
  %333 = bitcast %class.ap_uint.1* %35 to i8*
  %334 = bitcast %class.ap_uint.1* %min_loc_tmp_y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %333, i8* %334, i64 2, i32 1, i1 false)
  %335 = load i16** %5, align 8
  %336 = load i16* %335, align 2
  %337 = getelementptr %class.ap_uint.1* %35, i32 0, i32 0
  %338 = bitcast [2 x i8]* %337 to i16*
  %339 = load i16* %338, align 1
  %340 = call zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEt(i16 %339, i16 zeroext %336)
  br i1 %340, label %341, label %361

; <label>:341                                     ; preds = %332
  %342 = bitcast %class.ap_uint.1* %36 to i8*
  %343 = bitcast %class.ap_uint.1* %min_loc_tmp_x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %342, i8* %343, i64 2, i32 1, i1 false)
  %344 = load i16** %4, align 8
  %345 = load i16* %344, align 2
  %346 = getelementptr %class.ap_uint.1* %36, i32 0, i32 0
  %347 = bitcast [2 x i8]* %346 to i16*
  %348 = load i16* %347, align 1
  %349 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %348, i16 zeroext %345)
  br i1 %349, label %350, label %360

; <label>:350                                     ; preds = %341
  %351 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %352 = getelementptr inbounds [2 x i32]* %min_val_tmp, i32 0, i64 %351
  %353 = load i32* %352, align 4
  store i32 %353, i32* %_minval, align 4
  %354 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %min_loc_tmp_x)
  %355 = trunc i64 %354 to i16
  %356 = load i16** %4, align 8
  store i16 %355, i16* %356, align 2
  %357 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %min_loc_tmp_y)
  %358 = trunc i64 %357 to i16
  %359 = load i16** %5, align 8
  store i16 %358, i16* %359, align 2
  br label %360

; <label>:360                                     ; preds = %350, %341
  br label %361

; <label>:361                                     ; preds = %360, %332
  br label %362

; <label>:362                                     ; preds = %361, %322
  br label %363

; <label>:363                                     ; preds = %362, %297
  br label %364

; <label>:364                                     ; preds = %363, %281
  %365 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %366 = getelementptr inbounds [2 x i32]* %max_val_tmp, i32 0, i64 %365
  %367 = load i32* %366, align 4
  %368 = load i32* %_maxval, align 4
  %369 = icmp sgt i32 %367, %368
  br i1 %369, label %370, label %386

; <label>:370                                     ; preds = %364
  %371 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %372 = getelementptr inbounds [2 x i32]* %max_val_tmp, i32 0, i64 %371
  %373 = load i32* %372, align 4
  store i32 %373, i32* %_maxval, align 4
  %374 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %375 = getelementptr inbounds [2 x %class.ap_uint.3]* %max_loc_tmp, i32 0, i64 %374
  %376 = call i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3* %375, i32 12, i32 0)
  %377 = load i64* %376
  %378 = trunc i64 %377 to i16
  %379 = load i16** %7, align 8
  store i16 %378, i16* %379, align 2
  %380 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %381 = getelementptr inbounds [2 x %class.ap_uint.3]* %max_loc_tmp, i32 0, i64 %380
  %382 = call i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3* %381, i32 25, i32 13)
  %383 = load i64* %382
  %384 = trunc i64 %383 to i16
  %385 = load i16** %6, align 8
  store i16 %384, i16* %385, align 2
  br label %443

; <label>:386                                     ; preds = %364
  %387 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %388 = getelementptr inbounds [2 x i32]* %max_val_tmp, i32 0, i64 %387
  %389 = load i32* %388, align 4
  %390 = load i32* %_maxval, align 4
  %391 = icmp sge i32 %389, %390
  br i1 %391, label %392, label %442

; <label>:392                                     ; preds = %386
  %393 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %394 = getelementptr inbounds [2 x %class.ap_uint.3]* %max_loc_tmp, i32 0, i64 %393
  %395 = call i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3* %394, i32 12, i32 0)
  %396 = load i64* %395
  %397 = trunc i64 %396 to i16
  store i16 %397, i16* %max_loc_tmp_y, align 2
  %398 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %399 = getelementptr inbounds [2 x %class.ap_uint.3]* %max_loc_tmp, i32 0, i64 %398
  %400 = call i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3* %399, i32 25, i32 13)
  %401 = load i64* %400
  %402 = trunc i64 %401 to i16
  store i16 %402, i16* %max_loc_tmp_x, align 2
  %403 = load i16* %max_loc_tmp_y, align 2
  %404 = zext i16 %403 to i32
  %405 = load i16** %7, align 8
  %406 = load i16* %405, align 2
  %407 = zext i16 %406 to i32
  %408 = icmp slt i32 %404, %407
  br i1 %408, label %409, label %417

; <label>:409                                     ; preds = %392
  %410 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %411 = getelementptr inbounds [2 x i32]* %max_val_tmp, i32 0, i64 %410
  %412 = load i32* %411, align 4
  store i32 %412, i32* %_maxval, align 4
  %413 = load i16* %max_loc_tmp_x, align 2
  %414 = load i16** %6, align 8
  store i16 %413, i16* %414, align 2
  %415 = load i16* %max_loc_tmp_y, align 2
  %416 = load i16** %7, align 8
  store i16 %415, i16* %416, align 2
  br label %441

; <label>:417                                     ; preds = %392
  %418 = load i16* %max_loc_tmp_y, align 2
  %419 = zext i16 %418 to i32
  %420 = load i16** %7, align 8
  %421 = load i16* %420, align 2
  %422 = zext i16 %421 to i32
  %423 = icmp eq i32 %419, %422
  br i1 %423, label %424, label %440

; <label>:424                                     ; preds = %417
  %425 = load i16* %max_loc_tmp_x, align 2
  %426 = zext i16 %425 to i32
  %427 = load i16** %6, align 8
  %428 = load i16* %427, align 2
  %429 = zext i16 %428 to i32
  %430 = icmp slt i32 %426, %429
  br i1 %430, label %431, label %439

; <label>:431                                     ; preds = %424
  %432 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1* %k)
  %433 = getelementptr inbounds [2 x i32]* %max_val_tmp, i32 0, i64 %432
  %434 = load i32* %433, align 4
  store i32 %434, i32* %_maxval, align 4
  %435 = load i16* %max_loc_tmp_x, align 2
  %436 = load i16** %6, align 8
  store i16 %435, i16* %436, align 2
  %437 = load i16* %max_loc_tmp_y, align 2
  %438 = load i16** %7, align 8
  store i16 %437, i16* %438, align 2
  br label %439

; <label>:439                                     ; preds = %431, %424
  br label %440

; <label>:440                                     ; preds = %439, %417
  br label %441

; <label>:441                                     ; preds = %440, %409
  br label %442

; <label>:442                                     ; preds = %441, %386
  br label %443

; <label>:443                                     ; preds = %442, %370
  br label %444

; <label>:444                                     ; preds = %443
  %445 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1* %k, i32 0)
  %446 = getelementptr %class.ap_uint.1* %37, i32 0, i32 0
  %447 = bitcast [2 x i8]* %446 to i16*
  store i16 %445, i16* %447, align 1
  br label %268

; <label>:448                                     ; preds = %268
  %449 = load i32* %_minval, align 4
  %450 = load i32** %2, align 8
  store i32 %449, i32* %450, align 4
  %451 = load i32* %_maxval, align 4
  %452 = load i32** %3, align 8
  store i32 %451, i32* %452, align 4
  ret void
}

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.1*)

declare void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.1*, i32)

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0*)

declare void @_ZN7ap_uintILi6EEC1Ei(%class.ap_uint.2*, i32)

declare i8 @_ZmiILi6EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2*, i32)

declare i64 @_ZNK7ap_uintILi6EEcvmEv(%class.ap_uint.2*)

declare void @_ZN7ap_uintILi26EEC1Ev(%class.ap_uint.3*)

declare %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16, i32)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.1*)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.1*, i32)

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

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.1*, i16 zeroext)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int*)

declare void @_ZN7ap_uintILi9EEC1Ei(%class.ap_uint.4*, i32)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0*, i64)

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0*, i32, i32)

declare i16 @_ZplILi9ELi6EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i8)

declare i64 @_ZNK6ap_intILi15EEcvlEv(%class.ap_int.5*)

declare i64 @_ZNK7ap_uintILi9EEcvmEv(%class.ap_uint.4*)

declare zeroext i1 @_ZltILi8EEb7ap_uintIXT_EEi(i8, i32)

declare i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0*)

declare i64* @_ZN7ap_uintILi26EE5rangeEii(%class.ap_uint.3*, i32, i32)

declare zeroext i1 @_ZgtILi8EEb7ap_uintIXT_EEi(i8, i32)

declare %class.ap_uint.4* @_ZpLILi9ELi6EER7ap_uintIXT_EES2_S0_IXT0_EE(%class.ap_uint.4*, i8)

declare %class.ap_uint.1* @_ZN7ap_uintILi13EEaSEm(%class.ap_uint.1*, i64)

declare zeroext i1 @_ZeqILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

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

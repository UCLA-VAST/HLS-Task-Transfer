; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/demosaicing_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_Mat_9_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.1] }
%class.ap_uint.1 = type { [3 x i8] }
%struct.xf_accel_utils = type { i8 }
%class.ap_uint.2 = type { [1 x i8] }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_int.6 = type { [3 x i8] }
%class.ap_int = type { [2 x i8] }
%class.ap_int.5 = type { [4 x i8] }
%class.ap_int.8 = type { [9 x i8] }
%class.ap_int.9 = type { [5 x i8] }
%class.ap_int.7 = type { [10 x i8] }
%class.ap_int.4 = type { [5 x i8] }
%class.ap_int.3 = type { [6 x i8] }

@.str = private unnamed_addr constant [106 x i8] c"((src_mat.rows <= ROWS ) && (src_mat.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"xf_demosaicing.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL111p_ZN2xf11demosaicingILi3ELi0ELi9ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_R19xf_Mat_9_256_256_1_ = private unnamed_addr constant [177 x i8] c"void p_ZN2xf11demosaicingILi3ELi0ELi9ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_9_256_256_1_ &)\00", align 1
@.str2 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1P19xf_Mat_9_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1(struct xf_Mat_9_256_256_1_ *, int, int, bool)\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z17demosaicing_accelP7ap_uintILi256EES1_ii(%class.ap_uint* %in_img, %class.ap_uint* %out_img, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_9_256_256_1_, align 4
  store %class.ap_uint* %in_img, %class.ap_uint** %1, align 8
  store %class.ap_uint* %out_img, %class.ap_uint** %2, align 8
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
  call void @_ZN19xf_Mat_9_256_256_1_C1Ev(%struct.xf_Mat_9_256_256_1_* %out_mat)
  call void @_ZL33p_ZN2xf16Mat_9_256_256_1_C2IEEv_1P19xf_Mat_9_256_256_1_(%struct.xf_Mat_9_256_256_1_* %out_mat)
  %9 = load i32* %3, align 4
  %10 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %out_mat, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32* %4, align 4
  %12 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %out_mat, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %13, %struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL111p_ZN2xf11demosaicingILi3ELi0ELi9ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_R19xf_Mat_9_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_9_256_256_1_* %out_mat)
  %14 = load %class.ap_uint** %2, align 8
  call void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_9_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_9_256_256_1_* %out_mat, %class.ap_uint* %14)
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

define linkonce_odr void @_ZN19xf_Mat_9_256_256_1_C1Ev(%struct.xf_Mat_9_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  store %struct.xf_Mat_9_256_256_1_* %this, %struct.xf_Mat_9_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_9_256_256_1_** %1
  call void @_ZN19xf_Mat_9_256_256_1_C2Ev(%struct.xf_Mat_9_256_256_1_* %2)
  ret void
}

define internal void @_ZL33p_ZN2xf16Mat_9_256_256_1_C2IEEv_1P19xf_Mat_9_256_256_1_(%struct.xf_Mat_9_256_256_1_* %this_) uwtable {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  store %struct.xf_Mat_9_256_256_1_* %this_, %struct.xf_Mat_9_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  call void @_ZL38p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1P19xf_Mat_9_256_256_1_iib(%struct.xf_Mat_9_256_256_1_* %2, i32 256, i32 256, i1 zeroext true)
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

define internal void @_ZL111p_ZN2xf11demosaicingILi3ELi0ELi9ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_R19xf_Mat_9_256_256_1_(%struct.xf_Mat_0_256_256_1_* %src_mat, %struct.xf_Mat_9_256_256_1_* %dst_mat) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %__BHEIGHT = alloca i32, align 4
  %__BHEIGHTMINUSONE = alloca i32, align 4
  %__BWIDTH = alloca i32, align 4
  %linebuffer = alloca [4 x [256 x %class.ap_uint.0]], align 16
  %imgblock = alloca [5 x [5 x %class.ap_uint.0]], align 16
  %pre_read_count = alloca i32, align 4
  %post_read_count = alloca i32, align 4
  %end_read_count = alloca i32, align 4
  %lineStore = alloca i32, align 4
  %read_index = alloca i32, align 4
  %write_index = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca %class.ap_uint.0, align 1
  %line0 = alloca %class.ap_uint.2, align 1
  %line1 = alloca %class.ap_uint.2, align 1
  %line2 = alloca %class.ap_uint.2, align 1
  %line3 = alloca %class.ap_uint.2, align 1
  %step = alloca i32, align 4
  %out_step = alloca i32, align 4
  %tmp1 = alloca %class.ap_uint.0, align 1
  %i2 = alloca i32, align 4
  %bram_read_count = alloca i32, align 4
  %3 = alloca %class.ap_uint.2, align 1
  %4 = alloca %class.ap_uint.2, align 1
  %5 = alloca %class.ap_uint.2, align 1
  %p = alloca i32, align 4
  %k = alloca i32, align 4
  %_l_n = alloca i32, align 4
  %_l_w = alloca i32, align 4
  %_l_v = alloca i32, align 4
  %j3 = alloca i32, align 4
  %6 = alloca %class.ap_uint.0, align 1
  %z = alloca i32, align 4
  %k4 = alloca i32, align 4
  %m = alloca i32, align 4
  %l = alloca i32, align 4
  %packed_read1 = alloca %class.ap_uint.0, align 1
  %packed_read2 = alloca %class.ap_uint.0, align 1
  %packed_read3 = alloca %class.ap_uint.0, align 1
  %packed_read4 = alloca %class.ap_uint.0, align 1
  %packed_store = alloca %class.ap_uint.0, align 1
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %r5 = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %res_pixel = alloca [1 x %class.ap_uint.1], align 1
  %loop = alloca i32, align 4
  %7 = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint.0, align 1
  %9 = alloca %class.ap_uint.0, align 1
  %packed_res_pixel = alloca %class.ap_uint.1, align 1
  %pstep = alloca i32, align 4
  %ploop = alloca i32, align 4
  %10 = alloca %class.ap_uint.1, align 1
  %11 = alloca i24
  store %struct.xf_Mat_0_256_256_1_* %src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_9_256_256_1_* %dst_mat, %struct.xf_Mat_9_256_256_1_** %2, align 8
  %12 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %13 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %12, i32 0, i32 1
  %14 = load i32* %13, align 4
  %15 = icmp sle i32 %14, 256
  br i1 %15, label %16, label %22

; <label>:16                                      ; preds = %0
  %17 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %18 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %17, i32 0, i32 2
  %19 = load i32* %18, align 4
  %20 = icmp sle i32 %19, 256
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %16
  br label %24

; <label>:22                                      ; preds = %16, %0
  call void @__assert_fail(i8* getelementptr inbounds ([106 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 244, i8* getelementptr inbounds ([177 x i8]* @__PRETTY_FUNCTION__._ZL111p_ZN2xf11demosaicingILi3ELi0ELi9ELi256ELi256ELi1ELb0EEER3MatILi0ELi256ELi256ELi1EER3MatILi9ELi256ELi256ELi1EE_1R19xf_Mat_0_256_256_1_R19xf_Mat_9_256_256_1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %24

; <label>:24                                      ; preds = %23, %21
  store i32 5, i32* %__BHEIGHT, align 4
  store i32 4, i32* %__BHEIGHTMINUSONE, align 4
  store i32 5, i32* %__BWIDTH, align 4
  %25 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i32 0, i32 0
  %26 = getelementptr inbounds %class.ap_uint.0* %25, i64 1024
  br label %27

; <label>:27                                      ; preds = %27, %24
  %28 = phi %class.ap_uint.0* [ %25, %24 ], [ %29, %27 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %28)
  %29 = getelementptr inbounds %class.ap_uint.0* %28, i64 1
  %30 = icmp eq %class.ap_uint.0* %29, %26
  br i1 %30, label %31, label %27

; <label>:31                                      ; preds = %27
  %32 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i32 0, i32 0
  %33 = getelementptr inbounds %class.ap_uint.0* %32, i64 25
  br label %34

; <label>:34                                      ; preds = %34, %31
  %35 = phi %class.ap_uint.0* [ %32, %31 ], [ %36, %34 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %35)
  %36 = getelementptr inbounds %class.ap_uint.0* %35, i64 1
  %37 = icmp eq %class.ap_uint.0* %36, %33
  br i1 %37, label %38, label %34

; <label>:38                                      ; preds = %34
  store i32 2, i32* %pre_read_count, align 4
  store i32 4, i32* %post_read_count, align 4
  store i32 2, i32* %end_read_count, align 4
  store i32 3, i32* %lineStore, align 4
  store i32 0, i32* %read_index, align 4
  store i32 0, i32* %write_index, align 4
  br label %39

; <label>:39                                      ; preds = %38
  store i32 0, i32* %i, align 4
  br label %40

; <label>:40                                      ; preds = %77, %39
  %41 = load i32* %i, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %80

; <label>:43                                      ; preds = %40
  store i32 0, i32* %j, align 4
  br label %44

; <label>:44                                      ; preds = %73, %43
  %45 = load i32* %j, align 4
  %46 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %47 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %46, i32 0, i32 2
  %48 = load i32* %47, align 4
  %49 = ashr i32 %48, 0
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %76

; <label>:51                                      ; preds = %44
  %52 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %53 = load i32* %read_index, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %read_index, align 4
  %55 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %52, i32 %53)
  %56 = getelementptr %class.ap_uint.0* %tmp, i32 0, i32 0
  %57 = bitcast [1 x i8]* %56 to i8*
  store i8 %55, i8* %57, align 1
  %58 = load i32* %j, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32* %i, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i64 %61
  %63 = getelementptr inbounds [256 x %class.ap_uint.0]* %62, i32 0, i64 %59
  %64 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %63, i32 0)
  %65 = load i32* %j, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32* %i, align 4
  %68 = add nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i64 %69
  %71 = getelementptr inbounds [256 x %class.ap_uint.0]* %70, i32 0, i64 %66
  %72 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %71, %class.ap_uint.0* %tmp)
  br label %73

; <label>:73                                      ; preds = %51
  %74 = load i32* %j, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %j, align 4
  br label %44

; <label>:76                                      ; preds = %44
  br label %77

; <label>:77                                      ; preds = %76
  %78 = load i32* %i, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %i, align 4
  br label %40

; <label>:80                                      ; preds = %40
  call void @_ZN7ap_uintILi3EEC1Ei(%class.ap_uint.2* %line0, i32 3)
  call void @_ZN7ap_uintILi3EEC1Ei(%class.ap_uint.2* %line1, i32 0)
  call void @_ZN7ap_uintILi3EEC1Ei(%class.ap_uint.2* %line2, i32 1)
  call void @_ZN7ap_uintILi3EEC1Ei(%class.ap_uint.2* %line3, i32 2)
  store i32 8, i32* %step, align 4
  store i32 8, i32* %out_step, align 4
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %tmp1)
  br label %81

; <label>:81                                      ; preds = %80
  store i32 0, i32* %i2, align 4
  br label %82

; <label>:82                                      ; preds = %689, %81
  %83 = load i32* %i2, align 4
  %84 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %85 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %84, i32 0, i32 1
  %86 = load i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %692

; <label>:88                                      ; preds = %82
  store i32 0, i32* %bram_read_count, align 4
  %89 = load i32* %lineStore, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %lineStore, align 4
  %91 = load i32* %lineStore, align 4
  %92 = icmp sgt i32 %91, 3
  br i1 %92, label %93, label %94

; <label>:93                                      ; preds = %88
  store i32 0, i32* %lineStore, align 4
  br label %94

; <label>:94                                      ; preds = %93, %88
  %95 = bitcast %class.ap_uint.2* %3 to i8*
  %96 = bitcast %class.ap_uint.2* %line0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 1, i32 1, i1 false)
  %97 = getelementptr %class.ap_uint.2* %3, i32 0, i32 0
  %98 = bitcast [1 x i8]* %97 to i8*
  %99 = load i8* %98, align 1
  %100 = call zeroext i1 @_ZeqILi3EEb7ap_uintIXT_EEi(i8 %99, i32 0)
  br i1 %100, label %101, label %106

; <label>:101                                     ; preds = %94
  %102 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line0, i32 1)
  %103 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line1, i32 2)
  %104 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line2, i32 3)
  %105 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line3, i32 0)
  br label %137

; <label>:106                                     ; preds = %94
  %107 = bitcast %class.ap_uint.2* %4 to i8*
  %108 = bitcast %class.ap_uint.2* %line0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 1, i32 1, i1 false)
  %109 = getelementptr %class.ap_uint.2* %4, i32 0, i32 0
  %110 = bitcast [1 x i8]* %109 to i8*
  %111 = load i8* %110, align 1
  %112 = call zeroext i1 @_ZeqILi3EEb7ap_uintIXT_EEi(i8 %111, i32 1)
  br i1 %112, label %113, label %118

; <label>:113                                     ; preds = %106
  %114 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line0, i32 2)
  %115 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line1, i32 3)
  %116 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line2, i32 0)
  %117 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line3, i32 1)
  br label %136

; <label>:118                                     ; preds = %106
  %119 = bitcast %class.ap_uint.2* %5 to i8*
  %120 = bitcast %class.ap_uint.2* %line0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %120, i64 1, i32 1, i1 false)
  %121 = getelementptr %class.ap_uint.2* %5, i32 0, i32 0
  %122 = bitcast [1 x i8]* %121 to i8*
  %123 = load i8* %122, align 1
  %124 = call zeroext i1 @_ZeqILi3EEb7ap_uintIXT_EEi(i8 %123, i32 2)
  br i1 %124, label %125, label %130

; <label>:125                                     ; preds = %118
  %126 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line0, i32 3)
  %127 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line1, i32 0)
  %128 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line2, i32 1)
  %129 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line3, i32 2)
  br label %135

; <label>:130                                     ; preds = %118
  %131 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line0, i32 0)
  %132 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line1, i32 1)
  %133 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line2, i32 2)
  %134 = call %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2* %line3, i32 3)
  br label %135

; <label>:135                                     ; preds = %130, %125
  br label %136

; <label>:136                                     ; preds = %135, %113
  br label %137

; <label>:137                                     ; preds = %136, %101
  br label %138

; <label>:138                                     ; preds = %137
  store i32 0, i32* %p, align 4
  br label %139

; <label>:139                                     ; preds = %158, %138
  %140 = load i32* %p, align 4
  %141 = icmp slt i32 %140, 4
  br i1 %141, label %142, label %161

; <label>:142                                     ; preds = %139
  store i32 0, i32* %k, align 4
  br label %143

; <label>:143                                     ; preds = %154, %142
  %144 = load i32* %k, align 4
  %145 = icmp slt i32 %144, 3
  br i1 %145, label %146, label %157

; <label>:146                                     ; preds = %143
  %147 = load i32* %k, align 4
  %148 = sext i32 %147 to i64
  %149 = load i32* %p, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 %150
  %152 = getelementptr inbounds [5 x %class.ap_uint.0]* %151, i32 0, i64 %148
  %153 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %152, i32 0)
  br label %154

; <label>:154                                     ; preds = %146
  %155 = load i32* %k, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %k, align 4
  br label %143

; <label>:157                                     ; preds = %143
  br label %158

; <label>:158                                     ; preds = %157
  %159 = load i32* %p, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %p, align 4
  br label %139

; <label>:161                                     ; preds = %139
  store i32 0, i32* %_l_n, align 4
  store i32 0, i32* %_l_w, align 4
  store i32 0, i32* %_l_v, align 4
  br label %162

; <label>:162                                     ; preds = %161
  store i32 0, i32* %_l_n, align 4
  br label %163

; <label>:163                                     ; preds = %261, %162
  %164 = load i32* %_l_n, align 4
  %165 = icmp sle i32 %164, 1
  br i1 %165, label %166, label %264

; <label>:166                                     ; preds = %163
  %167 = load i32* %_l_n, align 4
  %168 = add nsw i32 3, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 0
  %171 = getelementptr inbounds [5 x %class.ap_uint.0]* %170, i32 0, i64 %169
  %172 = load i32* %_l_w, align 4
  %173 = sext i32 %172 to i64
  %174 = call i64 @_ZNK7ap_uintILi3EEcvmEv(%class.ap_uint.2* %line0)
  %175 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i64 %174
  %176 = getelementptr inbounds [256 x %class.ap_uint.0]* %175, i32 0, i64 %173
  %177 = load i32* %step, align 4
  %178 = load i32* %step, align 4
  %179 = load i32* %_l_v, align 4
  %180 = mul nsw i32 %178, %179
  %181 = add nsw i32 %177, %180
  %182 = sub nsw i32 %181, 1
  %183 = load i32* %step, align 4
  %184 = load i32* %_l_v, align 4
  %185 = mul nsw i32 %183, %184
  %186 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %176, i32 %182, i32 %185)
  %187 = load i64* %186
  %188 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %171, i64 %187)
  %189 = load i32* %_l_n, align 4
  %190 = add nsw i32 3, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 1
  %193 = getelementptr inbounds [5 x %class.ap_uint.0]* %192, i32 0, i64 %191
  %194 = load i32* %_l_w, align 4
  %195 = sext i32 %194 to i64
  %196 = call i64 @_ZNK7ap_uintILi3EEcvmEv(%class.ap_uint.2* %line1)
  %197 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i64 %196
  %198 = getelementptr inbounds [256 x %class.ap_uint.0]* %197, i32 0, i64 %195
  %199 = load i32* %step, align 4
  %200 = load i32* %step, align 4
  %201 = load i32* %_l_v, align 4
  %202 = mul nsw i32 %200, %201
  %203 = add nsw i32 %199, %202
  %204 = sub nsw i32 %203, 1
  %205 = load i32* %step, align 4
  %206 = load i32* %_l_v, align 4
  %207 = mul nsw i32 %205, %206
  %208 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %198, i32 %204, i32 %207)
  %209 = load i64* %208
  %210 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %193, i64 %209)
  %211 = load i32* %_l_n, align 4
  %212 = add nsw i32 3, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 2
  %215 = getelementptr inbounds [5 x %class.ap_uint.0]* %214, i32 0, i64 %213
  %216 = load i32* %_l_w, align 4
  %217 = sext i32 %216 to i64
  %218 = call i64 @_ZNK7ap_uintILi3EEcvmEv(%class.ap_uint.2* %line2)
  %219 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i64 %218
  %220 = getelementptr inbounds [256 x %class.ap_uint.0]* %219, i32 0, i64 %217
  %221 = load i32* %step, align 4
  %222 = load i32* %step, align 4
  %223 = load i32* %_l_v, align 4
  %224 = mul nsw i32 %222, %223
  %225 = add nsw i32 %221, %224
  %226 = sub nsw i32 %225, 1
  %227 = load i32* %step, align 4
  %228 = load i32* %_l_v, align 4
  %229 = mul nsw i32 %227, %228
  %230 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %220, i32 %226, i32 %229)
  %231 = load i64* %230
  %232 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %215, i64 %231)
  %233 = load i32* %_l_n, align 4
  %234 = add nsw i32 3, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 3
  %237 = getelementptr inbounds [5 x %class.ap_uint.0]* %236, i32 0, i64 %235
  %238 = load i32* %_l_w, align 4
  %239 = sext i32 %238 to i64
  %240 = call i64 @_ZNK7ap_uintILi3EEcvmEv(%class.ap_uint.2* %line3)
  %241 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i64 %240
  %242 = getelementptr inbounds [256 x %class.ap_uint.0]* %241, i32 0, i64 %239
  %243 = load i32* %step, align 4
  %244 = load i32* %step, align 4
  %245 = load i32* %_l_v, align 4
  %246 = mul nsw i32 %244, %245
  %247 = add nsw i32 %243, %246
  %248 = sub nsw i32 %247, 1
  %249 = load i32* %step, align 4
  %250 = load i32* %_l_v, align 4
  %251 = mul nsw i32 %249, %250
  %252 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %242, i32 %248, i32 %251)
  %253 = load i64* %252
  %254 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %237, i64 %253)
  %255 = load i32* %bram_read_count, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %bram_read_count, align 4
  %257 = load i32* %_l_w, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %_l_w, align 4
  store i32 -1, i32* %_l_v, align 4
  %259 = load i32* %_l_v, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %_l_v, align 4
  br label %261

; <label>:261                                     ; preds = %166
  %262 = load i32* %_l_n, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %_l_n, align 4
  br label %163

; <label>:264                                     ; preds = %163
  %265 = load i32* %bram_read_count, align 4
  br label %266

; <label>:266                                     ; preds = %264
  store i32 0, i32* %j3, align 4
  br label %267

; <label>:267                                     ; preds = %685, %266
  %268 = load i32* %j3, align 4
  %269 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %270 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %269, i32 0, i32 2
  %271 = load i32* %270, align 4
  %272 = ashr i32 %271, 0
  %273 = icmp slt i32 %268, %272
  br i1 %273, label %274, label %688

; <label>:274                                     ; preds = %267
  %275 = load i32* %i2, align 4
  %276 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %277 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %276, i32 0, i32 1
  %278 = load i32* %277, align 4
  %279 = sub nsw i32 %278, 2
  %280 = icmp slt i32 %275, %279
  br i1 %280, label %281, label %289

; <label>:281                                     ; preds = %274
  %282 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %283 = load i32* %read_index, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %read_index, align 4
  %285 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %282, i32 %283)
  %286 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %287 = bitcast [1 x i8]* %286 to i8*
  store i8 %285, i8* %287, align 1
  %288 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %tmp1, %class.ap_uint.0* %6)
  br label %291

; <label>:289                                     ; preds = %274
  %290 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %tmp1, i32 0)
  br label %291

; <label>:291                                     ; preds = %289, %281
  store i32 0, i32* %z, align 4
  br label %292

; <label>:292                                     ; preds = %313, %291
  %293 = load i32* %z, align 4
  %294 = icmp slt i32 %293, 1
  br i1 %294, label %295, label %316

; <label>:295                                     ; preds = %292
  %296 = load i32* %z, align 4
  %297 = add nsw i32 3, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 4
  %300 = getelementptr inbounds [5 x %class.ap_uint.0]* %299, i32 0, i64 %298
  %301 = load i32* %step, align 4
  %302 = load i32* %step, align 4
  %303 = load i32* %z, align 4
  %304 = mul nsw i32 %302, %303
  %305 = add nsw i32 %301, %304
  %306 = sub nsw i32 %305, 1
  %307 = load i32* %step, align 4
  %308 = load i32* %z, align 4
  %309 = mul nsw i32 %307, %308
  %310 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %tmp1, i32 %306, i32 %309)
  %311 = load i64* %310
  %312 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %300, i64 %311)
  br label %313

; <label>:313                                     ; preds = %295
  %314 = load i32* %z, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %z, align 4
  br label %292

; <label>:316                                     ; preds = %292
  store i32 0, i32* %k4, align 4
  br label %317

; <label>:317                                     ; preds = %351, %316
  %318 = load i32* %k4, align 4
  %319 = icmp slt i32 %318, 5
  br i1 %319, label %320, label %354

; <label>:320                                     ; preds = %317
  store i32 0, i32* %m, align 4
  br label %321

; <label>:321                                     ; preds = %347, %320
  %322 = load i32* %m, align 4
  %323 = icmp slt i32 %322, 1
  br i1 %323, label %324, label %350

; <label>:324                                     ; preds = %321
  store i32 0, i32* %l, align 4
  br label %325

; <label>:325                                     ; preds = %343, %324
  %326 = load i32* %l, align 4
  %327 = icmp slt i32 %326, 4
  br i1 %327, label %328, label %346

; <label>:328                                     ; preds = %325
  %329 = load i32* %l, align 4
  %330 = sext i32 %329 to i64
  %331 = load i32* %k4, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 %332
  %334 = getelementptr inbounds [5 x %class.ap_uint.0]* %333, i32 0, i64 %330
  %335 = load i32* %l, align 4
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = load i32* %k4, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 %339
  %341 = getelementptr inbounds [5 x %class.ap_uint.0]* %340, i32 0, i64 %337
  %342 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %334, %class.ap_uint.0* %341)
  br label %343

; <label>:343                                     ; preds = %328
  %344 = load i32* %l, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %l, align 4
  br label %325

; <label>:346                                     ; preds = %325
  br label %347

; <label>:347                                     ; preds = %346
  %348 = load i32* %m, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %m, align 4
  br label %321

; <label>:350                                     ; preds = %321
  br label %351

; <label>:351                                     ; preds = %350
  %352 = load i32* %k4, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %k4, align 4
  br label %317

; <label>:354                                     ; preds = %317
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %packed_read1)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %packed_read2)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %packed_read3)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %packed_read4)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %packed_store)
  %355 = load i32* %j3, align 4
  %356 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %357 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %356, i32 0, i32 2
  %358 = load i32* %357, align 4
  %359 = ashr i32 %358, 0
  %360 = sub nsw i32 %359, 2
  %361 = icmp slt i32 %355, %360
  br i1 %361, label %362, label %503

; <label>:362                                     ; preds = %354
  %363 = load i32* %bram_read_count, align 4
  %364 = sext i32 %363 to i64
  %365 = call i64 @_ZNK7ap_uintILi3EEcvmEv(%class.ap_uint.2* %line0)
  %366 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i64 %365
  %367 = getelementptr inbounds [256 x %class.ap_uint.0]* %366, i32 0, i64 %364
  %368 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %packed_read1, %class.ap_uint.0* %367)
  %369 = load i32* %bram_read_count, align 4
  %370 = sext i32 %369 to i64
  %371 = call i64 @_ZNK7ap_uintILi3EEcvmEv(%class.ap_uint.2* %line1)
  %372 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i64 %371
  %373 = getelementptr inbounds [256 x %class.ap_uint.0]* %372, i32 0, i64 %370
  %374 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %packed_read2, %class.ap_uint.0* %373)
  %375 = load i32* %bram_read_count, align 4
  %376 = sext i32 %375 to i64
  %377 = call i64 @_ZNK7ap_uintILi3EEcvmEv(%class.ap_uint.2* %line2)
  %378 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i64 %377
  %379 = getelementptr inbounds [256 x %class.ap_uint.0]* %378, i32 0, i64 %376
  %380 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %packed_read3, %class.ap_uint.0* %379)
  %381 = load i32* %bram_read_count, align 4
  %382 = sext i32 %381 to i64
  %383 = call i64 @_ZNK7ap_uintILi3EEcvmEv(%class.ap_uint.2* %line3)
  %384 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i64 %383
  %385 = getelementptr inbounds [256 x %class.ap_uint.0]* %384, i32 0, i64 %382
  %386 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %packed_read4, %class.ap_uint.0* %385)
  store i32 0, i32* %q, align 4
  br label %387

; <label>:387                                     ; preds = %492, %362
  %388 = load i32* %q, align 4
  %389 = icmp slt i32 %388, 1
  br i1 %389, label %390, label %495

; <label>:390                                     ; preds = %387
  %391 = load i32* %q, align 4
  %392 = add nsw i32 4, %391
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 0
  %395 = getelementptr inbounds [5 x %class.ap_uint.0]* %394, i32 0, i64 %393
  %396 = load i32* %step, align 4
  %397 = load i32* %step, align 4
  %398 = load i32* %q, align 4
  %399 = mul nsw i32 %397, %398
  %400 = add nsw i32 %396, %399
  %401 = sub nsw i32 %400, 1
  %402 = load i32* %step, align 4
  %403 = load i32* %q, align 4
  %404 = mul nsw i32 %402, %403
  %405 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %packed_read1, i32 %401, i32 %404)
  %406 = load i64* %405
  %407 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %395, i64 %406)
  %408 = load i32* %q, align 4
  %409 = add nsw i32 4, %408
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 1
  %412 = getelementptr inbounds [5 x %class.ap_uint.0]* %411, i32 0, i64 %410
  %413 = load i32* %step, align 4
  %414 = load i32* %step, align 4
  %415 = load i32* %q, align 4
  %416 = mul nsw i32 %414, %415
  %417 = add nsw i32 %413, %416
  %418 = sub nsw i32 %417, 1
  %419 = load i32* %step, align 4
  %420 = load i32* %q, align 4
  %421 = mul nsw i32 %419, %420
  %422 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %packed_read2, i32 %418, i32 %421)
  %423 = load i64* %422
  %424 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %412, i64 %423)
  %425 = load i32* %q, align 4
  %426 = add nsw i32 4, %425
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 2
  %429 = getelementptr inbounds [5 x %class.ap_uint.0]* %428, i32 0, i64 %427
  %430 = load i32* %step, align 4
  %431 = load i32* %step, align 4
  %432 = load i32* %q, align 4
  %433 = mul nsw i32 %431, %432
  %434 = add nsw i32 %430, %433
  %435 = sub nsw i32 %434, 1
  %436 = load i32* %step, align 4
  %437 = load i32* %q, align 4
  %438 = mul nsw i32 %436, %437
  %439 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %packed_read3, i32 %435, i32 %438)
  %440 = load i64* %439
  %441 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %429, i64 %440)
  %442 = load i32* %q, align 4
  %443 = add nsw i32 4, %442
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 3
  %446 = getelementptr inbounds [5 x %class.ap_uint.0]* %445, i32 0, i64 %444
  %447 = load i32* %step, align 4
  %448 = load i32* %step, align 4
  %449 = load i32* %q, align 4
  %450 = mul nsw i32 %448, %449
  %451 = add nsw i32 %447, %450
  %452 = sub nsw i32 %451, 1
  %453 = load i32* %step, align 4
  %454 = load i32* %q, align 4
  %455 = mul nsw i32 %453, %454
  %456 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %packed_read4, i32 %452, i32 %455)
  %457 = load i64* %456
  %458 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %446, i64 %457)
  %459 = load i32* %q, align 4
  %460 = add nsw i32 3, %459
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 4
  %463 = getelementptr inbounds [5 x %class.ap_uint.0]* %462, i32 0, i64 %461
  %464 = load i32* %step, align 4
  %465 = load i32* %step, align 4
  %466 = load i32* %q, align 4
  %467 = mul nsw i32 %465, %466
  %468 = add nsw i32 %464, %467
  %469 = sub nsw i32 %468, 1
  %470 = load i32* %step, align 4
  %471 = load i32* %q, align 4
  %472 = mul nsw i32 %470, %471
  %473 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %tmp1, i32 %469, i32 %472)
  %474 = load i64* %473
  %475 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %463, i64 %474)
  %476 = load i32* %q, align 4
  %477 = add nsw i32 2, %476
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 4
  %480 = getelementptr inbounds [5 x %class.ap_uint.0]* %479, i32 0, i64 %478
  %481 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %480)
  %482 = load i32* %step, align 4
  %483 = load i32* %step, align 4
  %484 = load i32* %q, align 4
  %485 = mul nsw i32 %483, %484
  %486 = add nsw i32 %482, %485
  %487 = sub nsw i32 %486, 1
  %488 = load i32* %step, align 4
  %489 = load i32* %q, align 4
  %490 = mul nsw i32 %488, %489
  %491 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %packed_store, i32 %487, i32 %490)
  store i64 %481, i64* %491
  br label %492

; <label>:492                                     ; preds = %390
  %493 = load i32* %q, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %q, align 4
  br label %387

; <label>:495                                     ; preds = %387
  %496 = load i32* %j3, align 4
  %497 = sext i32 %496 to i64
  %498 = load i32* %lineStore, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i64 %499
  %501 = getelementptr inbounds [256 x %class.ap_uint.0]* %500, i32 0, i64 %497
  %502 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %501, %class.ap_uint.0* %packed_store)
  br label %582

; <label>:503                                     ; preds = %354
  store i32 0, i32* %r, align 4
  br label %504

; <label>:504                                     ; preds = %578, %503
  %505 = load i32* %r, align 4
  %506 = icmp slt i32 %505, 1
  br i1 %506, label %507, label %581

; <label>:507                                     ; preds = %504
  %508 = load i32* %r, align 4
  %509 = add nsw i32 4, %508
  %510 = sub nsw i32 %509, 1
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 4
  %513 = getelementptr inbounds [5 x %class.ap_uint.0]* %512, i32 0, i64 %511
  %514 = load i32* %step, align 4
  %515 = load i32* %step, align 4
  %516 = load i32* %r, align 4
  %517 = mul nsw i32 %515, %516
  %518 = add nsw i32 %514, %517
  %519 = sub nsw i32 %518, 1
  %520 = load i32* %step, align 4
  %521 = load i32* %r, align 4
  %522 = mul nsw i32 %520, %521
  %523 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %tmp1, i32 %519, i32 %522)
  %524 = load i64* %523
  %525 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0* %513, i64 %524)
  %526 = load i32* %r, align 4
  %527 = add nsw i32 2, %526
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 4
  %530 = getelementptr inbounds [5 x %class.ap_uint.0]* %529, i32 0, i64 %528
  %531 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %530)
  %532 = load i32* %j3, align 4
  %533 = sext i32 %532 to i64
  %534 = load i32* %lineStore, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [4 x [256 x %class.ap_uint.0]]* %linebuffer, i32 0, i64 %535
  %537 = getelementptr inbounds [256 x %class.ap_uint.0]* %536, i32 0, i64 %533
  %538 = load i32* %step, align 4
  %539 = load i32* %step, align 4
  %540 = load i32* %r, align 4
  %541 = mul nsw i32 %539, %540
  %542 = add nsw i32 %538, %541
  %543 = sub nsw i32 %542, 1
  %544 = load i32* %step, align 4
  %545 = load i32* %r, align 4
  %546 = mul nsw i32 %544, %545
  %547 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %537, i32 %543, i32 %546)
  store i64 %531, i64* %547
  %548 = load i32* %r, align 4
  %549 = add nsw i32 4, %548
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 0
  %552 = getelementptr inbounds [5 x %class.ap_uint.0]* %551, i32 0, i64 %550
  %553 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %552, i32 0)
  %554 = load i32* %r, align 4
  %555 = add nsw i32 4, %554
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 1
  %558 = getelementptr inbounds [5 x %class.ap_uint.0]* %557, i32 0, i64 %556
  %559 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %558, i32 0)
  %560 = load i32* %r, align 4
  %561 = add nsw i32 4, %560
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 2
  %564 = getelementptr inbounds [5 x %class.ap_uint.0]* %563, i32 0, i64 %562
  %565 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %564, i32 0)
  %566 = load i32* %r, align 4
  %567 = add nsw i32 4, %566
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 3
  %570 = getelementptr inbounds [5 x %class.ap_uint.0]* %569, i32 0, i64 %568
  %571 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %570, i32 0)
  %572 = load i32* %r, align 4
  %573 = add nsw i32 4, %572
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i64 4
  %576 = getelementptr inbounds [5 x %class.ap_uint.0]* %575, i32 0, i64 %574
  %577 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0* %576, i32 0)
  br label %578

; <label>:578                                     ; preds = %507
  %579 = load i32* %r, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %r, align 4
  br label %504

; <label>:581                                     ; preds = %504
  br label %582

; <label>:582                                     ; preds = %581, %495
  %583 = load i32* %bram_read_count, align 4
  %584 = add nsw i32 %583, 1
  store i32 %584, i32* %bram_read_count, align 4
  %585 = getelementptr inbounds [1 x %class.ap_uint.1]* %res_pixel, i32 0, i32 0
  %586 = getelementptr inbounds %class.ap_uint.1* %585, i64 1
  br label %587

; <label>:587                                     ; preds = %587, %582
  %588 = phi %class.ap_uint.1* [ %585, %582 ], [ %589, %587 ]
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.1* %588)
  %589 = getelementptr inbounds %class.ap_uint.1* %588, i64 1
  %590 = icmp eq %class.ap_uint.1* %589, %586
  br i1 %590, label %591, label %587

; <label>:591                                     ; preds = %587
  store i32 0, i32* %loop, align 4
  br label %592

; <label>:592                                     ; preds = %650, %591
  %593 = load i32* %loop, align 4
  %594 = icmp slt i32 %593, 1
  br i1 %594, label %595, label %653

; <label>:595                                     ; preds = %592
  %596 = getelementptr inbounds [5 x [5 x %class.ap_uint.0]]* %imgblock, i32 0, i32 0
  %597 = load i32* %i2, align 4
  %598 = load i32* %j3, align 4
  %599 = mul nsw i32 %598, 1
  %600 = load i32* %loop, align 4
  %601 = add nsw i32 %599, %600
  %602 = load i32* %loop, align 4
  call void @_ZL73p_ZN2xf12Core_ProcessILi3ELi0ELi1ELi0ELi5EEEPA5_7ap_uintILi8EERiRiRiiii_1PA5_7ap_uintILi8EERiS3_S3_iii([5 x %class.ap_uint.0]* %596, i32* %b, i32* %g, i32* %r5, i32 %597, i32 %601, i32 %602)
  %603 = load i32* %b, align 4
  %604 = call i8 @_ZL34p_Z10xf_satcastI7ap_uintILi8EEEi_1i(i32 %603)
  %605 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %606 = bitcast [1 x i8]* %605 to i8*
  store i8 %604, i8* %606, align 1
  %607 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %7)
  %608 = trunc i64 %607 to i32
  store i32 %608, i32* %b, align 4
  %609 = load i32* %g, align 4
  %610 = call i8 @_ZL34p_Z10xf_satcastI7ap_uintILi8EEEi_1i(i32 %609)
  %611 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %612 = bitcast [1 x i8]* %611 to i8*
  store i8 %610, i8* %612, align 1
  %613 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %8)
  %614 = trunc i64 %613 to i32
  store i32 %614, i32* %g, align 4
  %615 = load i32* %r5, align 4
  %616 = call i8 @_ZL34p_Z10xf_satcastI7ap_uintILi8EEEi_1i(i32 %615)
  %617 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %618 = bitcast [1 x i8]* %617 to i8*
  store i8 %616, i8* %618, align 1
  %619 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %9)
  %620 = trunc i64 %619 to i32
  store i32 %620, i32* %r5, align 4
  %621 = load i32* %r5, align 4
  %622 = sext i32 %621 to i64
  %623 = load i32* %loop, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [1 x %class.ap_uint.1]* %res_pixel, i32 0, i64 %624
  %626 = load i32* %out_step, align 4
  %627 = mul nsw i32 3, %626
  %628 = sub nsw i32 %627, 1
  %629 = load i32* %out_step, align 4
  %630 = mul nsw i32 2, %629
  %631 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.1* %625, i32 %628, i32 %630)
  store i64 %622, i64* %631
  %632 = load i32* %g, align 4
  %633 = sext i32 %632 to i64
  %634 = load i32* %loop, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds [1 x %class.ap_uint.1]* %res_pixel, i32 0, i64 %635
  %637 = load i32* %out_step, align 4
  %638 = mul nsw i32 2, %637
  %639 = sub nsw i32 %638, 1
  %640 = load i32* %out_step, align 4
  %641 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.1* %636, i32 %639, i32 %640)
  store i64 %633, i64* %641
  %642 = load i32* %b, align 4
  %643 = sext i32 %642 to i64
  %644 = load i32* %loop, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [1 x %class.ap_uint.1]* %res_pixel, i32 0, i64 %645
  %647 = load i32* %out_step, align 4
  %648 = sub nsw i32 %647, 1
  %649 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.1* %646, i32 %648, i32 0)
  store i64 %643, i64* %649
  br label %650

; <label>:650                                     ; preds = %595
  %651 = load i32* %loop, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %loop, align 4
  br label %592

; <label>:653                                     ; preds = %592
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.1* %packed_res_pixel)
  store i32 24, i32* %pstep, align 4
  store i32 0, i32* %ploop, align 4
  br label %654

; <label>:654                                     ; preds = %672, %653
  %655 = load i32* %ploop, align 4
  %656 = icmp slt i32 %655, 1
  br i1 %656, label %657, label %675

; <label>:657                                     ; preds = %654
  %658 = load i32* %ploop, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [1 x %class.ap_uint.1]* %res_pixel, i32 0, i64 %659
  %661 = call i64 @_ZNK7ap_uintILi24EEcvmEv(%class.ap_uint.1* %660)
  %662 = load i32* %pstep, align 4
  %663 = load i32* %pstep, align 4
  %664 = load i32* %ploop, align 4
  %665 = mul nsw i32 %663, %664
  %666 = add nsw i32 %662, %665
  %667 = sub nsw i32 %666, 1
  %668 = load i32* %pstep, align 4
  %669 = load i32* %ploop, align 4
  %670 = mul nsw i32 %668, %669
  %671 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.1* %packed_res_pixel, i32 %667, i32 %670)
  store i64 %661, i64* %671
  br label %672

; <label>:672                                     ; preds = %657
  %673 = load i32* %ploop, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %ploop, align 4
  br label %654

; <label>:675                                     ; preds = %654
  %676 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %677 = load i32* %write_index, align 4
  %678 = add nsw i32 %677, 1
  store i32 %678, i32* %write_index, align 4
  %679 = bitcast %class.ap_uint.1* %10 to i8*
  %680 = bitcast %class.ap_uint.1* %packed_res_pixel to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %679, i8* %680, i64 3, i32 1, i1 false)
  %681 = getelementptr %class.ap_uint.1* %10, i32 0, i32 0
  %682 = bitcast i24* %11 to [3 x i8]*
  %683 = load [3 x i8]* %681
  store [3 x i8] %683, [3 x i8]* %682, align 1
  %684 = load i24* %11
  call void @_ZL52p_ZN2xf16Mat_9_256_256_1_5writeIEEi7ap_uintILi24EE_1P19xf_Mat_9_256_256_1_i7ap_uintILi24EE(%struct.xf_Mat_9_256_256_1_* %676, i32 %677, i24 %684)
  br label %685

; <label>:685                                     ; preds = %675
  %686 = load i32* %j3, align 4
  %687 = add nsw i32 %686, 1
  store i32 %687, i32* %j3, align 4
  br label %267

; <label>:688                                     ; preds = %267
  br label %689

; <label>:689                                     ; preds = %688
  %690 = load i32* %i2, align 4
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %i2, align 4
  br label %82

; <label>:692                                     ; preds = %82
  ret void
}

define internal void @_ZL95p_ZN2xf11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1R19xf_Mat_9_256_256_1_P7ap_uintILi256EE(%struct.xf_Mat_9_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %struct.xf_Mat_9_256_256_1_* %srcMat, %struct.xf_Mat_9_256_256_1_** %1, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %2, align 8
  %3 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %4 = load %class.ap_uint** %2, align 8
  call void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1P14xf_accel_utilsR19xf_Mat_9_256_256_1_P7ap_uintILi256EE(%struct.xf_accel_utils* %au, %struct.xf_Mat_9_256_256_1_* %3, %class.ap_uint* %4)
  ret void
}

define internal void @_ZL108p_ZN2xf11accel_utils11xfMat2ArrayILi256ELi9ELi256ELi256ELi1EEER3MatILi9ELi256ELi256ELi1EEP7ap_uintILi256EE_1P14xf_accel_utilsR19xf_Mat_9_256_256_1_P7ap_uintILi256EE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_9_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %ch_width = alloca i32, align 4
  %strm = alloca %"class.hls::stream", align 1
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %struct.xf_Mat_9_256_256_1_* %srcMat, %struct.xf_Mat_9_256_256_1_** %2, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %3, align 8
  store i32 8, i32* %ch_width, align 4
  call void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"* %strm)
  %4 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  store i32 %6, i32* %rows, align 4
  %7 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %7, i32 0, i32 2
  %9 = load i32* %8, align 4
  store i32 %9, i32* %cols, align 4
  %10 = load %struct.xf_accel_utils** %1, align 8
  %11 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  call void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi9ELi256ELi256ELi1ELi65536EEER3MatILi9ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1P14xf_accel_utilsR19xf_Mat_9_256_256_1_RN3hls6streamI7ap_uintILi256EEEE(%struct.xf_accel_utils* %10, %struct.xf_Mat_9_256_256_1_* %11, %"class.hls::stream"* %strm)
  %12 = load %struct.xf_accel_utils** %1, align 8
  %13 = load %class.ap_uint** %3, align 8
  %14 = load i32* %rows, align 4
  %15 = load i32* %cols, align 4
  call void @_ZL122p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi3ELi8ELi6144EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEEPS4_ii(%struct.xf_accel_utils* %12, %"class.hls::stream"* %strm, %class.ap_uint* %13, i32 %14, i32 %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"*)

define internal void @_ZL127p_ZN2xf11accel_utils13xfMat2hlsStrmILi256ELi9ELi256ELi256ELi1ELi65536EEER3MatILi9ELi256ELi256ELi1EER6streamI7ap_uintILi256EEE_1P14xf_accel_utilsR19xf_Mat_9_256_256_1_RN3hls6streamI7ap_uintILi256EEEE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_9_256_256_1_* %srcMat, %"class.hls::stream"* %dstStrm) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
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
  %5 = alloca i24
  store %struct.xf_accel_utils* %this_, %struct.xf_accel_utils** %1, align 8
  store %struct.xf_Mat_9_256_256_1_* %srcMat, %struct.xf_Mat_9_256_256_1_** %2, align 8
  store %"class.hls::stream"* %dstStrm, %"class.hls::stream"** %3, align 8
  %6 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %6, i32 0, i32 1
  %8 = load i32* %7, align 4
  store i32 %8, i32* %rows, align 4
  %9 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %9, i32 0, i32 2
  %11 = load i32* %10, align 4
  store i32 %11, i32* %cols, align 4
  %12 = load i32* %rows, align 4
  %13 = load i32* %cols, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 1
  store i32 %15, i32* %loop_count, align 4
  store i32 256, i32* %bits_to_add, align 4
  store i32 24, i32* %N_size, align 4
  call void @_ZN7ap_uintILi256EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.1* %in)
  br label %16

; <label>:16                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %66, %16
  %18 = load i32* %i, align 4
  %19 = load i32* %loop_count, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %69

; <label>:21                                      ; preds = %17
  %22 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %23 = load i32* %i, align 4
  %24 = call i24 @_ZL36p_ZN2xf16Mat_9_256_256_1_4readIEEi_1P19xf_Mat_9_256_256_1_i(%struct.xf_Mat_9_256_256_1_* %22, i32 %23)
  %25 = getelementptr %class.ap_uint.1* %4, i32 0, i32 0
  store i24 %24, i24* %5
  %26 = bitcast i24* %5 to [3 x i8]*
  %27 = load [3 x i8]* %26, align 1
  store [3 x i8] %27, [3 x i8]* %25
  %28 = call %class.ap_uint.1* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.1* %in, %class.ap_uint.1* %4)
  %29 = load i32* %bits_to_add, align 4
  %30 = icmp sle i32 %29, 24
  br i1 %30, label %31, label %54

; <label>:31                                      ; preds = %21
  %32 = load i32* %bits_to_add, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.1* %in, i32 %33, i32 0)
  %35 = load i64* %34
  %36 = load i32* %bits_to_add, align 4
  %37 = sub nsw i32 256, %36
  %38 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 255, i32 %37)
  store i64 %35, i64* %38
  %39 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"* %39, %class.ap_uint* %r)
  %40 = load i32* %bits_to_add, align 4
  %41 = icmp ne i32 %40, 24
  br i1 %41, label %42, label %50

; <label>:42                                      ; preds = %31
  %43 = load i32* %bits_to_add, align 4
  %44 = call i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.1* %in, i32 23, i32 %43)
  %45 = load i64* %44
  %46 = load i32* %bits_to_add, align 4
  %47 = sub nsw i32 24, %46
  %48 = sub nsw i32 %47, 1
  %49 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %48, i32 0)
  store i64 %45, i64* %49
  br label %50

; <label>:50                                      ; preds = %42, %31
  %51 = load i32* %bits_to_add, align 4
  %52 = sub nsw i32 24, %51
  %53 = sub nsw i32 256, %52
  store i32 %53, i32* %bits_to_add, align 4
  br label %65

; <label>:54                                      ; preds = %21
  %55 = call i64 @_ZNK7ap_uintILi24EEcvmEv(%class.ap_uint.1* %in)
  %56 = load i32* %bits_to_add, align 4
  %57 = sub nsw i32 256, %56
  %58 = add nsw i32 %57, 24
  %59 = sub nsw i32 %58, 1
  %60 = load i32* %bits_to_add, align 4
  %61 = sub nsw i32 256, %60
  %62 = call i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint* %r, i32 %59, i32 %61)
  store i64 %55, i64* %62
  %63 = load i32* %bits_to_add, align 4
  %64 = sub nsw i32 %63, 24
  store i32 %64, i32* %bits_to_add, align 4
  br label %65

; <label>:65                                      ; preds = %54, %50
  br label %66

; <label>:66                                      ; preds = %65
  %67 = load i32* %i, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %i, align 4
  br label %17

; <label>:69                                      ; preds = %17
  %70 = load i32* %bits_to_add, align 4
  %71 = icmp ne i32 %70, 256
  br i1 %71, label %72, label %74

; <label>:72                                      ; preds = %69
  %73 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"* %73, %class.ap_uint* %r)
  br label %74

; <label>:74                                      ; preds = %72, %69
  ret void
}

define internal void @_ZL122p_ZN2xf11accel_utils13hlsStrm2ArrayILi256ELi256ELi256ELi1ELi3ELi8ELi6144EEER6streamI7ap_uintILi256EEEP7ap_uintILi256EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi256EEEEPS4_ii(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %class.ap_uint* %dstPtr, i32 %rows, i32 %cols) uwtable {
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
  store i32 24, i32* %pixel_width, align 4
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

declare void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.1*)

declare %class.ap_uint.1* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.1*, %class.ap_uint.1*)

define internal i24 @_ZL36p_ZN2xf16Mat_9_256_256_1_4readIEEi_1P19xf_Mat_9_256_256_1_i(%struct.xf_Mat_9_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint.1, align 1
  %2 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i24
  store %struct.xf_Mat_9_256_256_1_* %this_, %struct.xf_Mat_9_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %5 = load i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_9_256_256_1_** %2, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint.1]* %8, i32 0, i64 %6
  %10 = bitcast %class.ap_uint.1* %1 to i8*
  %11 = bitcast %class.ap_uint.1* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 3, i32 1, i1 false)
  %12 = getelementptr %class.ap_uint.1* %1, i32 0, i32 0
  %13 = bitcast i24* %4 to [3 x i8]*
  %14 = load [3 x i8]* %12
  store [3 x i8] %14, [3 x i8]* %13, align 1
  %15 = load i24* %4
  ret i24 %15
}

declare i64* @_ZN7ap_uintILi24EE5rangeEii(%class.ap_uint.1*, i32, i32)

declare i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

declare i64 @_ZNK7ap_uintILi24EEcvmEv(%class.ap_uint.1*)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0*)

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

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint.0*, i32)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0*, %class.ap_uint.0*)

declare void @_ZN7ap_uintILi3EEC1Ei(%class.ap_uint.2*, i32)

declare zeroext i1 @_ZeqILi3EEb7ap_uintIXT_EEi(i8, i32)

declare %class.ap_uint.2* @_ZN7ap_uintILi3EEaSEi(%class.ap_uint.2*, i32)

declare %class.ap_uint.0* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint.0*, i64)

declare i64 @_ZNK7ap_uintILi3EEcvmEv(%class.ap_uint.2*)

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0*, i32, i32)

declare i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0*)

define internal void @_ZL73p_ZN2xf12Core_ProcessILi3ELi0ELi1ELi0ELi5EEEPA5_7ap_uintILi8EERiRiRiiii_1PA5_7ap_uintILi8EERiS3_S3_iii([5 x %class.ap_uint.0]* %imgblock, i32* %b, i32* %g, i32* %r, i32 %row, i32 %col, i32 %loop) uwtable {
  %1 = alloca [5 x %class.ap_uint.0]*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store [5 x %class.ap_uint.0]* %imgblock, [5 x %class.ap_uint.0]** %1, align 8
  store i32* %b, i32** %2, align 8
  store i32* %g, i32** %3, align 8
  store i32* %r, i32** %4, align 8
  store i32 %row, i32* %5, align 4
  store i32 %col, i32* %6, align 4
  store i32 %loop, i32* %7, align 4
  %8 = load i32* %5, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %52

; <label>:11                                      ; preds = %0
  %12 = load i32* %6, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

; <label>:15                                      ; preds = %11
  %16 = load [5 x %class.ap_uint.0]** %1, align 8
  %17 = load i32* %7, align 4
  %18 = call i32 @_ZL59p_ZN2xf9rb_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1PA5_7ap_uintILi8EEi([5 x %class.ap_uint.0]* %16, i32 %17)
  %19 = load i32** %2, align 8
  store i32 %18, i32* %19, align 4
  %20 = load [5 x %class.ap_uint.0]** %1, align 8
  %21 = load i32* %7, align 4
  %22 = call i32 @_ZL58p_ZN2xf8g_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1PA5_7ap_uintILi8EEi([5 x %class.ap_uint.0]* %20, i32 %21)
  %23 = load i32** %3, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32* %7, align 4
  %25 = add nsw i32 2, %24
  %26 = sext i32 %25 to i64
  %27 = load [5 x %class.ap_uint.0]** %1, align 8
  %28 = getelementptr inbounds [5 x %class.ap_uint.0]* %27, i64 2
  %29 = getelementptr inbounds [5 x %class.ap_uint.0]* %28, i32 0, i64 %26
  %30 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %29)
  %31 = trunc i64 %30 to i32
  %32 = load i32** %4, align 8
  store i32 %31, i32* %32, align 4
  br label %51

; <label>:33                                      ; preds = %11
  %34 = load [5 x %class.ap_uint.0]** %1, align 8
  %35 = load i32* %7, align 4
  %36 = call i32 @_ZL65p_ZN2xf14rgb_bgr_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1PA5_7ap_uintILi8EEi([5 x %class.ap_uint.0]* %34, i32 %35)
  %37 = load i32** %2, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32* %7, align 4
  %39 = add nsw i32 2, %38
  %40 = sext i32 %39 to i64
  %41 = load [5 x %class.ap_uint.0]** %1, align 8
  %42 = getelementptr inbounds [5 x %class.ap_uint.0]* %41, i64 2
  %43 = getelementptr inbounds [5 x %class.ap_uint.0]* %42, i32 0, i64 %40
  %44 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %43)
  %45 = trunc i64 %44 to i32
  %46 = load i32** %3, align 8
  store i32 %45, i32* %46, align 4
  %47 = load [5 x %class.ap_uint.0]** %1, align 8
  %48 = load i32* %7, align 4
  %49 = call i32 @_ZL65p_ZN2xf14rgr_bgb_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1PA5_7ap_uintILi8EEi([5 x %class.ap_uint.0]* %47, i32 %48)
  %50 = load i32** %4, align 8
  store i32 %49, i32* %50, align 4
  br label %51

; <label>:51                                      ; preds = %33, %15
  br label %93

; <label>:52                                      ; preds = %0
  %53 = load i32* %6, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %74

; <label>:56                                      ; preds = %52
  %57 = load [5 x %class.ap_uint.0]** %1, align 8
  %58 = load i32* %7, align 4
  %59 = call i32 @_ZL65p_ZN2xf14rgr_bgb_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1PA5_7ap_uintILi8EEi([5 x %class.ap_uint.0]* %57, i32 %58)
  %60 = load i32** %2, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32* %7, align 4
  %62 = add nsw i32 2, %61
  %63 = sext i32 %62 to i64
  %64 = load [5 x %class.ap_uint.0]** %1, align 8
  %65 = getelementptr inbounds [5 x %class.ap_uint.0]* %64, i64 2
  %66 = getelementptr inbounds [5 x %class.ap_uint.0]* %65, i32 0, i64 %63
  %67 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %66)
  %68 = trunc i64 %67 to i32
  %69 = load i32** %3, align 8
  store i32 %68, i32* %69, align 4
  %70 = load [5 x %class.ap_uint.0]** %1, align 8
  %71 = load i32* %7, align 4
  %72 = call i32 @_ZL65p_ZN2xf14rgb_bgr_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1PA5_7ap_uintILi8EEi([5 x %class.ap_uint.0]* %70, i32 %71)
  %73 = load i32** %4, align 8
  store i32 %72, i32* %73, align 4
  br label %92

; <label>:74                                      ; preds = %52
  %75 = load i32* %7, align 4
  %76 = add nsw i32 2, %75
  %77 = sext i32 %76 to i64
  %78 = load [5 x %class.ap_uint.0]** %1, align 8
  %79 = getelementptr inbounds [5 x %class.ap_uint.0]* %78, i64 2
  %80 = getelementptr inbounds [5 x %class.ap_uint.0]* %79, i32 0, i64 %77
  %81 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %80)
  %82 = trunc i64 %81 to i32
  %83 = load i32** %2, align 8
  store i32 %82, i32* %83, align 4
  %84 = load [5 x %class.ap_uint.0]** %1, align 8
  %85 = load i32* %7, align 4
  %86 = call i32 @_ZL58p_ZN2xf8g_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1PA5_7ap_uintILi8EEi([5 x %class.ap_uint.0]* %84, i32 %85)
  %87 = load i32** %3, align 8
  store i32 %86, i32* %87, align 4
  %88 = load [5 x %class.ap_uint.0]** %1, align 8
  %89 = load i32* %7, align 4
  %90 = call i32 @_ZL59p_ZN2xf9rb_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1PA5_7ap_uintILi8EEi([5 x %class.ap_uint.0]* %88, i32 %89)
  %91 = load i32** %4, align 8
  store i32 %90, i32* %91, align 4
  br label %92

; <label>:92                                      ; preds = %74, %56
  br label %93

; <label>:93                                      ; preds = %92, %51
  ret void
}

define internal i8 @_ZL34p_Z10xf_satcastI7ap_uintILi8EEEi_1i(i32 %v) uwtable {
  %1 = alloca %class.ap_uint.0, align 1
  %2 = alloca i32, align 4
  store i32 %v, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp sgt i32 %3, 255
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %8

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  br label %8

; <label>:8                                       ; preds = %6, %5
  %9 = phi i32 [ 255, %5 ], [ %7, %6 ]
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %1, i32 %9)
  %10 = getelementptr %class.ap_uint.0* %1, i32 0, i32 0
  %11 = bitcast [1 x i8]* %10 to i8*
  %12 = load i8* %11, align 1
  ret i8 %12
}

define internal void @_ZL52p_ZN2xf16Mat_9_256_256_1_5writeIEEi7ap_uintILi24EE_1P19xf_Mat_9_256_256_1_i7ap_uintILi24EE(%struct.xf_Mat_9_256_256_1_* %this_, i32 %index, i24 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint.1, align 4
  %3 = alloca i24
  store %struct.xf_Mat_9_256_256_1_* %this_, %struct.xf_Mat_9_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %4 = getelementptr %class.ap_uint.1* %val, i32 0, i32 0
  store i24 %val.coerce, i24* %3
  %5 = bitcast i24* %3 to [3 x i8]*
  %6 = load [3 x i8]* %5, align 1
  store [3 x i8] %6, [3 x i8]* %4
  %7 = load i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %9, i32 0, i32 4
  %11 = getelementptr inbounds [65536 x %class.ap_uint.1]* %10, i32 0, i64 %8
  %12 = call %class.ap_uint.1* @_ZN7ap_uintILi24EEaSERKS0_(%class.ap_uint.1* %11, %class.ap_uint.1* %val)
  ret void
}

declare void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0*, i32)

define internal i32 @_ZL59p_ZN2xf9rb_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1PA5_7ap_uintILi8EEi([5 x %class.ap_uint.0]* %imgblock, i32 %loop) uwtable {
  %1 = alloca i32, align 4
  %2 = alloca [5 x %class.ap_uint.0]*, align 8
  %3 = alloca i32, align 4
  %t1 = alloca i16, align 2
  %4 = alloca %class.ap_int.6, align 1
  %5 = alloca %class.ap_int, align 1
  %6 = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint.0, align 1
  %9 = alloca i24
  %10 = alloca %class.ap_uint.0, align 1
  %11 = alloca i24
  %12 = alloca %class.ap_int.5, align 1
  %t2 = alloca i16, align 2
  %13 = alloca %class.ap_int.6, align 1
  %14 = alloca %class.ap_int, align 1
  %15 = alloca %class.ap_uint.0, align 1
  %16 = alloca %class.ap_uint.0, align 1
  %17 = alloca %class.ap_uint.0, align 1
  %18 = alloca i24
  %19 = alloca %class.ap_uint.0, align 1
  %20 = alloca i24
  %21 = alloca %class.ap_int.5, align 1
  %t3 = alloca i16, align 2
  %22 = alloca %class.ap_uint.0, align 1
  %res = alloca i32, align 4
  store [5 x %class.ap_uint.0]* %imgblock, [5 x %class.ap_uint.0]** %2, align 8
  store i32 %loop, i32* %3, align 4
  %23 = load i32* %3, align 4
  %24 = add nsw i32 2, %23
  %25 = sext i32 %24 to i64
  %26 = load [5 x %class.ap_uint.0]** %2, align 8
  %27 = getelementptr inbounds [5 x %class.ap_uint.0]* %26, i64 0
  %28 = getelementptr inbounds [5 x %class.ap_uint.0]* %27, i32 0, i64 %25
  %29 = bitcast %class.ap_uint.0* %6 to i8*
  %30 = bitcast %class.ap_uint.0* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 1, i32 1, i1 false)
  %31 = load i32* %3, align 4
  %32 = add nsw i32 0, %31
  %33 = sext i32 %32 to i64
  %34 = load [5 x %class.ap_uint.0]** %2, align 8
  %35 = getelementptr inbounds [5 x %class.ap_uint.0]* %34, i64 2
  %36 = getelementptr inbounds [5 x %class.ap_uint.0]* %35, i32 0, i64 %33
  %37 = bitcast %class.ap_uint.0* %7 to i8*
  %38 = bitcast %class.ap_uint.0* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 1, i32 1, i1 false)
  %39 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %40 = bitcast [1 x i8]* %39 to i8*
  %41 = load i8* %40, align 1
  %42 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %43 = bitcast [1 x i8]* %42 to i8*
  %44 = load i8* %43, align 1
  %45 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %41, i8 %44)
  %46 = getelementptr %class.ap_int* %5, i32 0, i32 0
  %47 = bitcast [2 x i8]* %46 to i16*
  store i16 %45, i16* %47, align 1
  %48 = load i32* %3, align 4
  %49 = add nsw i32 4, %48
  %50 = sext i32 %49 to i64
  %51 = load [5 x %class.ap_uint.0]** %2, align 8
  %52 = getelementptr inbounds [5 x %class.ap_uint.0]* %51, i64 2
  %53 = getelementptr inbounds [5 x %class.ap_uint.0]* %52, i32 0, i64 %50
  %54 = bitcast %class.ap_uint.0* %8 to i8*
  %55 = bitcast %class.ap_uint.0* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 1, i32 1, i1 false)
  %56 = getelementptr %class.ap_int* %5, i32 0, i32 0
  %57 = bitcast [2 x i8]* %56 to i16*
  %58 = load i16* %57, align 1
  %59 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %60 = bitcast [1 x i8]* %59 to i8*
  %61 = load i8* %60, align 1
  %62 = call i24 @_ZplILi16ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i16 %58, i8 %61)
  %63 = getelementptr %class.ap_int.6* %4, i32 0, i32 0
  store i24 %62, i24* %9
  %64 = bitcast i24* %9 to [3 x i8]*
  %65 = load [3 x i8]* %64, align 1
  store [3 x i8] %65, [3 x i8]* %63
  %66 = load i32* %3, align 4
  %67 = add nsw i32 2, %66
  %68 = sext i32 %67 to i64
  %69 = load [5 x %class.ap_uint.0]** %2, align 8
  %70 = getelementptr inbounds [5 x %class.ap_uint.0]* %69, i64 4
  %71 = getelementptr inbounds [5 x %class.ap_uint.0]* %70, i32 0, i64 %68
  %72 = bitcast %class.ap_uint.0* %10 to i8*
  %73 = bitcast %class.ap_uint.0* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 1, i32 1, i1 false)
  %74 = getelementptr %class.ap_int.6* %4, i32 0, i32 0
  %75 = bitcast i24* %11 to [3 x i8]*
  %76 = load [3 x i8]* %74
  store [3 x i8] %76, [3 x i8]* %75, align 1
  %77 = load i24* %11
  %78 = getelementptr %class.ap_uint.0* %10, i32 0, i32 0
  %79 = bitcast [1 x i8]* %78 to i8*
  %80 = load i8* %79, align 1
  %81 = call i32 @_ZplILi24ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i24 %77, i8 %80)
  %82 = getelementptr %class.ap_int.5* %12, i32 0, i32 0
  %83 = bitcast [4 x i8]* %82 to i32*
  store i32 %81, i32* %83, align 1
  %84 = call i64 @_ZNK6ap_intILi32EEcvlEv(%class.ap_int.5* %12)
  %85 = trunc i64 %84 to i16
  store i16 %85, i16* %t1, align 2
  %86 = load i16* %t1, align 2
  %87 = sext i16 %86 to i32
  %88 = mul nsw i32 %87, 3
  %89 = sdiv i32 %88, 2
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %t1, align 2
  %91 = load i32* %3, align 4
  %92 = add nsw i32 1, %91
  %93 = sext i32 %92 to i64
  %94 = load [5 x %class.ap_uint.0]** %2, align 8
  %95 = getelementptr inbounds [5 x %class.ap_uint.0]* %94, i64 1
  %96 = getelementptr inbounds [5 x %class.ap_uint.0]* %95, i32 0, i64 %93
  %97 = bitcast %class.ap_uint.0* %15 to i8*
  %98 = bitcast %class.ap_uint.0* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 1, i32 1, i1 false)
  %99 = load i32* %3, align 4
  %100 = add nsw i32 3, %99
  %101 = sext i32 %100 to i64
  %102 = load [5 x %class.ap_uint.0]** %2, align 8
  %103 = getelementptr inbounds [5 x %class.ap_uint.0]* %102, i64 1
  %104 = getelementptr inbounds [5 x %class.ap_uint.0]* %103, i32 0, i64 %101
  %105 = bitcast %class.ap_uint.0* %16 to i8*
  %106 = bitcast %class.ap_uint.0* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 1, i32 1, i1 false)
  %107 = getelementptr %class.ap_uint.0* %15, i32 0, i32 0
  %108 = bitcast [1 x i8]* %107 to i8*
  %109 = load i8* %108, align 1
  %110 = getelementptr %class.ap_uint.0* %16, i32 0, i32 0
  %111 = bitcast [1 x i8]* %110 to i8*
  %112 = load i8* %111, align 1
  %113 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %109, i8 %112)
  %114 = getelementptr %class.ap_int* %14, i32 0, i32 0
  %115 = bitcast [2 x i8]* %114 to i16*
  store i16 %113, i16* %115, align 1
  %116 = load i32* %3, align 4
  %117 = add nsw i32 1, %116
  %118 = sext i32 %117 to i64
  %119 = load [5 x %class.ap_uint.0]** %2, align 8
  %120 = getelementptr inbounds [5 x %class.ap_uint.0]* %119, i64 3
  %121 = getelementptr inbounds [5 x %class.ap_uint.0]* %120, i32 0, i64 %118
  %122 = bitcast %class.ap_uint.0* %17 to i8*
  %123 = bitcast %class.ap_uint.0* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 1, i32 1, i1 false)
  %124 = getelementptr %class.ap_int* %14, i32 0, i32 0
  %125 = bitcast [2 x i8]* %124 to i16*
  %126 = load i16* %125, align 1
  %127 = getelementptr %class.ap_uint.0* %17, i32 0, i32 0
  %128 = bitcast [1 x i8]* %127 to i8*
  %129 = load i8* %128, align 1
  %130 = call i24 @_ZplILi16ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i16 %126, i8 %129)
  %131 = getelementptr %class.ap_int.6* %13, i32 0, i32 0
  store i24 %130, i24* %18
  %132 = bitcast i24* %18 to [3 x i8]*
  %133 = load [3 x i8]* %132, align 1
  store [3 x i8] %133, [3 x i8]* %131
  %134 = load i32* %3, align 4
  %135 = add nsw i32 3, %134
  %136 = sext i32 %135 to i64
  %137 = load [5 x %class.ap_uint.0]** %2, align 8
  %138 = getelementptr inbounds [5 x %class.ap_uint.0]* %137, i64 3
  %139 = getelementptr inbounds [5 x %class.ap_uint.0]* %138, i32 0, i64 %136
  %140 = bitcast %class.ap_uint.0* %19 to i8*
  %141 = bitcast %class.ap_uint.0* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %141, i64 1, i32 1, i1 false)
  %142 = getelementptr %class.ap_int.6* %13, i32 0, i32 0
  %143 = bitcast i24* %20 to [3 x i8]*
  %144 = load [3 x i8]* %142
  store [3 x i8] %144, [3 x i8]* %143, align 1
  %145 = load i24* %20
  %146 = getelementptr %class.ap_uint.0* %19, i32 0, i32 0
  %147 = bitcast [1 x i8]* %146 to i8*
  %148 = load i8* %147, align 1
  %149 = call i32 @_ZplILi24ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i24 %145, i8 %148)
  %150 = getelementptr %class.ap_int.5* %21, i32 0, i32 0
  %151 = bitcast [4 x i8]* %150 to i32*
  store i32 %149, i32* %151, align 1
  %152 = call i64 @_ZNK6ap_intILi32EEcvlEv(%class.ap_int.5* %21)
  %153 = trunc i64 %152 to i16
  store i16 %153, i16* %t2, align 2
  %154 = load i16* %t2, align 2
  %155 = sext i16 %154 to i32
  %156 = mul nsw i32 %155, 2
  %157 = trunc i32 %156 to i16
  store i16 %157, i16* %t2, align 2
  %158 = load i32* %3, align 4
  %159 = add nsw i32 2, %158
  %160 = sext i32 %159 to i64
  %161 = load [5 x %class.ap_uint.0]** %2, align 8
  %162 = getelementptr inbounds [5 x %class.ap_uint.0]* %161, i64 2
  %163 = getelementptr inbounds [5 x %class.ap_uint.0]* %162, i32 0, i64 %160
  %164 = call i8 @_ZmlILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %163, i32 6)
  %165 = getelementptr %class.ap_uint.0* %22, i32 0, i32 0
  %166 = bitcast [1 x i8]* %165 to i8*
  store i8 %164, i8* %166, align 1
  %167 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %22)
  %168 = trunc i64 %167 to i16
  store i16 %168, i16* %t3, align 2
  %169 = load i16* %t1, align 2
  %170 = sext i16 %169 to i32
  %171 = sub nsw i32 0, %170
  %172 = load i16* %t2, align 2
  %173 = sext i16 %172 to i32
  %174 = add nsw i32 %171, %173
  %175 = load i16* %t3, align 2
  %176 = sext i16 %175 to i32
  %177 = add nsw i32 %174, %176
  store i32 %177, i32* %res, align 4
  %178 = load i32* %res, align 4
  %179 = sdiv i32 %178, 8
  store i32 %179, i32* %res, align 4
  %180 = load i32* %res, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

; <label>:182                                     ; preds = %0
  store i32 0, i32* %1
  br label %185

; <label>:183                                     ; preds = %0
  %184 = load i32* %res, align 4
  store i32 %184, i32* %1
  br label %185

; <label>:185                                     ; preds = %183, %182
  %186 = load i32* %1
  ret i32 %186
}

define internal i32 @_ZL58p_ZN2xf8g_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1PA5_7ap_uintILi8EEi([5 x %class.ap_uint.0]* %imgblock, i32 %loop) uwtable {
  %1 = alloca i32, align 4
  %2 = alloca [5 x %class.ap_uint.0]*, align 8
  %3 = alloca i32, align 4
  %res = alloca i32, align 4
  %4 = alloca %class.ap_int.8, align 1
  %5 = alloca %class.ap_int.9, align 1
  %6 = alloca %class.ap_int.6, align 1
  %7 = alloca %class.ap_int, align 1
  %8 = alloca %class.ap_uint.0, align 1
  %9 = alloca %class.ap_uint.0, align 1
  %10 = alloca %class.ap_uint.0, align 1
  %11 = alloca i24
  %12 = alloca %class.ap_uint.0, align 1
  %13 = alloca i24
  %14 = alloca %class.ap_int.5, align 1
  %15 = alloca i40
  %16 = alloca %class.ap_int.5, align 1
  %17 = alloca %class.ap_int.5, align 1
  %18 = alloca %class.ap_int.6, align 1
  %19 = alloca %class.ap_int, align 1
  %20 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.0, align 1
  %22 = alloca %class.ap_uint.0, align 1
  %23 = alloca i24
  %24 = alloca %class.ap_uint.0, align 1
  %25 = alloca i24
  %26 = alloca i40
  %27 = alloca { i64, i8 }
  %28 = alloca %class.ap_uint.0, align 1
  %29 = alloca { i64, i8 }
  %30 = alloca %class.ap_int.7, align 1
  %31 = alloca { i64, i16 }
  store [5 x %class.ap_uint.0]* %imgblock, [5 x %class.ap_uint.0]** %2, align 8
  store i32 %loop, i32* %3, align 4
  %32 = load i32* %3, align 4
  %33 = add nsw i32 2, %32
  %34 = sext i32 %33 to i64
  %35 = load [5 x %class.ap_uint.0]** %2, align 8
  %36 = getelementptr inbounds [5 x %class.ap_uint.0]* %35, i64 0
  %37 = getelementptr inbounds [5 x %class.ap_uint.0]* %36, i32 0, i64 %34
  %38 = bitcast %class.ap_uint.0* %8 to i8*
  %39 = bitcast %class.ap_uint.0* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 1, i32 1, i1 false)
  %40 = load i32* %3, align 4
  %41 = add nsw i32 0, %40
  %42 = sext i32 %41 to i64
  %43 = load [5 x %class.ap_uint.0]** %2, align 8
  %44 = getelementptr inbounds [5 x %class.ap_uint.0]* %43, i64 2
  %45 = getelementptr inbounds [5 x %class.ap_uint.0]* %44, i32 0, i64 %42
  %46 = bitcast %class.ap_uint.0* %9 to i8*
  %47 = bitcast %class.ap_uint.0* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 1, i32 1, i1 false)
  %48 = getelementptr %class.ap_uint.0* %8, i32 0, i32 0
  %49 = bitcast [1 x i8]* %48 to i8*
  %50 = load i8* %49, align 1
  %51 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %52 = bitcast [1 x i8]* %51 to i8*
  %53 = load i8* %52, align 1
  %54 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %50, i8 %53)
  %55 = getelementptr %class.ap_int* %7, i32 0, i32 0
  %56 = bitcast [2 x i8]* %55 to i16*
  store i16 %54, i16* %56, align 1
  %57 = load i32* %3, align 4
  %58 = add nsw i32 4, %57
  %59 = sext i32 %58 to i64
  %60 = load [5 x %class.ap_uint.0]** %2, align 8
  %61 = getelementptr inbounds [5 x %class.ap_uint.0]* %60, i64 2
  %62 = getelementptr inbounds [5 x %class.ap_uint.0]* %61, i32 0, i64 %59
  %63 = bitcast %class.ap_uint.0* %10 to i8*
  %64 = bitcast %class.ap_uint.0* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 1, i32 1, i1 false)
  %65 = getelementptr %class.ap_int* %7, i32 0, i32 0
  %66 = bitcast [2 x i8]* %65 to i16*
  %67 = load i16* %66, align 1
  %68 = getelementptr %class.ap_uint.0* %10, i32 0, i32 0
  %69 = bitcast [1 x i8]* %68 to i8*
  %70 = load i8* %69, align 1
  %71 = call i24 @_ZplILi16ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i16 %67, i8 %70)
  %72 = getelementptr %class.ap_int.6* %6, i32 0, i32 0
  store i24 %71, i24* %11
  %73 = bitcast i24* %11 to [3 x i8]*
  %74 = load [3 x i8]* %73, align 1
  store [3 x i8] %74, [3 x i8]* %72
  %75 = load i32* %3, align 4
  %76 = add nsw i32 2, %75
  %77 = sext i32 %76 to i64
  %78 = load [5 x %class.ap_uint.0]** %2, align 8
  %79 = getelementptr inbounds [5 x %class.ap_uint.0]* %78, i64 4
  %80 = getelementptr inbounds [5 x %class.ap_uint.0]* %79, i32 0, i64 %77
  %81 = bitcast %class.ap_uint.0* %12 to i8*
  %82 = bitcast %class.ap_uint.0* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 1, i32 1, i1 false)
  %83 = getelementptr %class.ap_int.6* %6, i32 0, i32 0
  %84 = bitcast i24* %13 to [3 x i8]*
  %85 = load [3 x i8]* %83
  store [3 x i8] %85, [3 x i8]* %84, align 1
  %86 = load i24* %13
  %87 = getelementptr %class.ap_uint.0* %12, i32 0, i32 0
  %88 = bitcast [1 x i8]* %87 to i8*
  %89 = load i8* %88, align 1
  %90 = call i32 @_ZplILi24ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i24 %86, i8 %89)
  %91 = getelementptr %class.ap_int.5* %14, i32 0, i32 0
  %92 = bitcast [4 x i8]* %91 to i32*
  store i32 %90, i32* %92, align 1
  %93 = call i40 @_ZNK6ap_intILi32EEngEv(%class.ap_int.5* %14)
  %94 = getelementptr %class.ap_int.9* %5, i32 0, i32 0
  store i40 %93, i40* %15
  %95 = bitcast i40* %15 to [5 x i8]*
  %96 = load [5 x i8]* %95, align 1
  store [5 x i8] %96, [5 x i8]* %94
  %97 = load i32* %3, align 4
  %98 = add nsw i32 2, %97
  %99 = sext i32 %98 to i64
  %100 = load [5 x %class.ap_uint.0]** %2, align 8
  %101 = getelementptr inbounds [5 x %class.ap_uint.0]* %100, i64 1
  %102 = getelementptr inbounds [5 x %class.ap_uint.0]* %101, i32 0, i64 %99
  %103 = bitcast %class.ap_uint.0* %20 to i8*
  %104 = bitcast %class.ap_uint.0* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 1, i32 1, i1 false)
  %105 = load i32* %3, align 4
  %106 = add nsw i32 1, %105
  %107 = sext i32 %106 to i64
  %108 = load [5 x %class.ap_uint.0]** %2, align 8
  %109 = getelementptr inbounds [5 x %class.ap_uint.0]* %108, i64 2
  %110 = getelementptr inbounds [5 x %class.ap_uint.0]* %109, i32 0, i64 %107
  %111 = bitcast %class.ap_uint.0* %21 to i8*
  %112 = bitcast %class.ap_uint.0* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 1, i32 1, i1 false)
  %113 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %114 = bitcast [1 x i8]* %113 to i8*
  %115 = load i8* %114, align 1
  %116 = getelementptr %class.ap_uint.0* %21, i32 0, i32 0
  %117 = bitcast [1 x i8]* %116 to i8*
  %118 = load i8* %117, align 1
  %119 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %115, i8 %118)
  %120 = getelementptr %class.ap_int* %19, i32 0, i32 0
  %121 = bitcast [2 x i8]* %120 to i16*
  store i16 %119, i16* %121, align 1
  %122 = load i32* %3, align 4
  %123 = add nsw i32 3, %122
  %124 = sext i32 %123 to i64
  %125 = load [5 x %class.ap_uint.0]** %2, align 8
  %126 = getelementptr inbounds [5 x %class.ap_uint.0]* %125, i64 2
  %127 = getelementptr inbounds [5 x %class.ap_uint.0]* %126, i32 0, i64 %124
  %128 = bitcast %class.ap_uint.0* %22 to i8*
  %129 = bitcast %class.ap_uint.0* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 1, i32 1, i1 false)
  %130 = getelementptr %class.ap_int* %19, i32 0, i32 0
  %131 = bitcast [2 x i8]* %130 to i16*
  %132 = load i16* %131, align 1
  %133 = getelementptr %class.ap_uint.0* %22, i32 0, i32 0
  %134 = bitcast [1 x i8]* %133 to i8*
  %135 = load i8* %134, align 1
  %136 = call i24 @_ZplILi16ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i16 %132, i8 %135)
  %137 = getelementptr %class.ap_int.6* %18, i32 0, i32 0
  store i24 %136, i24* %23
  %138 = bitcast i24* %23 to [3 x i8]*
  %139 = load [3 x i8]* %138, align 1
  store [3 x i8] %139, [3 x i8]* %137
  %140 = load i32* %3, align 4
  %141 = add nsw i32 2, %140
  %142 = sext i32 %141 to i64
  %143 = load [5 x %class.ap_uint.0]** %2, align 8
  %144 = getelementptr inbounds [5 x %class.ap_uint.0]* %143, i64 3
  %145 = getelementptr inbounds [5 x %class.ap_uint.0]* %144, i32 0, i64 %142
  %146 = bitcast %class.ap_uint.0* %24 to i8*
  %147 = bitcast %class.ap_uint.0* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %146, i8* %147, i64 1, i32 1, i1 false)
  %148 = getelementptr %class.ap_int.6* %18, i32 0, i32 0
  %149 = bitcast i24* %25 to [3 x i8]*
  %150 = load [3 x i8]* %148
  store [3 x i8] %150, [3 x i8]* %149, align 1
  %151 = load i24* %25
  %152 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %153 = bitcast [1 x i8]* %152 to i8*
  %154 = load i8* %153, align 1
  %155 = call i32 @_ZplILi24ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i24 %151, i8 %154)
  %156 = getelementptr %class.ap_int.5* %17, i32 0, i32 0
  %157 = bitcast [4 x i8]* %156 to i32*
  store i32 %155, i32* %157, align 1
  %158 = call i32 @_ZmlILi32EE6ap_intIXT_EERKS1_i(%class.ap_int.5* %17, i32 2)
  %159 = getelementptr %class.ap_int.5* %16, i32 0, i32 0
  %160 = bitcast [4 x i8]* %159 to i32*
  store i32 %158, i32* %160, align 1
  %161 = getelementptr %class.ap_int.9* %5, i32 0, i32 0
  %162 = bitcast i40* %26 to [5 x i8]*
  %163 = load [5 x i8]* %161
  store [5 x i8] %163, [5 x i8]* %162, align 1
  %164 = load i40* %26
  %165 = getelementptr %class.ap_int.5* %16, i32 0, i32 0
  %166 = bitcast [4 x i8]* %165 to i32*
  %167 = load i32* %166, align 1
  %168 = call { i64, i8 } @_ZplILi33ELi32EE6ap_intIXplT_T0_EES0_IXT_EES0_IXT0_EE(i40 %164, i32 %167)
  %169 = getelementptr %class.ap_int.8* %4, i32 0, i32 0
  store { i64, i8 } %168, { i64, i8 }* %27
  %170 = bitcast { i64, i8 }* %27 to [9 x i8]*
  %171 = load [9 x i8]* %170, align 1
  store [9 x i8] %171, [9 x i8]* %169
  %172 = load i32* %3, align 4
  %173 = add nsw i32 2, %172
  %174 = sext i32 %173 to i64
  %175 = load [5 x %class.ap_uint.0]** %2, align 8
  %176 = getelementptr inbounds [5 x %class.ap_uint.0]* %175, i64 2
  %177 = getelementptr inbounds [5 x %class.ap_uint.0]* %176, i32 0, i64 %174
  %178 = call i8 @_ZmlILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %177, i32 4)
  %179 = getelementptr %class.ap_uint.0* %28, i32 0, i32 0
  %180 = bitcast [1 x i8]* %179 to i8*
  store i8 %178, i8* %180, align 1
  %181 = bitcast { i64, i8 }* %29 to i8*
  %182 = bitcast %class.ap_int.8* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %181, i8* %182, i64 9, i32 0, i1 false)
  %183 = getelementptr { i64, i8 }* %29, i32 0, i32 0
  %184 = load i64* %183, align 1
  %185 = getelementptr { i64, i8 }* %29, i32 0, i32 1
  %186 = load i8* %185, align 1
  %187 = getelementptr %class.ap_uint.0* %28, i32 0, i32 0
  %188 = bitcast [1 x i8]* %187 to i8*
  %189 = load i8* %188, align 1
  %190 = call { i64, i16 } @_ZplILi65ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i64 %184, i8 %186, i8 %189)
  %191 = getelementptr %class.ap_int.7* %30, i32 0, i32 0
  store { i64, i16 } %190, { i64, i16 }* %31
  %192 = bitcast { i64, i16 }* %31 to [10 x i8]*
  %193 = load [10 x i8]* %192, align 1
  store [10 x i8] %193, [10 x i8]* %191
  %194 = call i64 @_ZNK6ap_intILi73EEcvlEv(%class.ap_int.7* %30)
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %res, align 4
  %196 = load i32* %res, align 4
  %197 = sdiv i32 %196, 8
  store i32 %197, i32* %res, align 4
  %198 = load i32* %res, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

; <label>:200                                     ; preds = %0
  store i32 0, i32* %1
  br label %203

; <label>:201                                     ; preds = %0
  %202 = load i32* %res, align 4
  store i32 %202, i32* %1
  br label %203

; <label>:203                                     ; preds = %201, %200
  %204 = load i32* %1
  ret i32 %204
}

define internal i32 @_ZL65p_ZN2xf14rgb_bgr_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1PA5_7ap_uintILi8EEi([5 x %class.ap_uint.0]* %imgblock, i32 %loop) uwtable {
  %1 = alloca i32, align 4
  %2 = alloca [5 x %class.ap_uint.0]*, align 8
  %3 = alloca i32, align 4
  %t1 = alloca i16, align 2
  %4 = alloca %class.ap_uint.0, align 1
  %5 = alloca %class.ap_uint.0, align 1
  %6 = alloca %class.ap_int, align 1
  %t2 = alloca i16, align 2
  %7 = alloca %class.ap_int.4, align 1
  %8 = alloca %class.ap_int.5, align 1
  %9 = alloca %class.ap_int.6, align 1
  %10 = alloca %class.ap_int, align 1
  %11 = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.0, align 1
  %13 = alloca %class.ap_uint.0, align 1
  %14 = alloca i24
  %15 = alloca %class.ap_uint.0, align 1
  %16 = alloca i24
  %17 = alloca %class.ap_uint.0, align 1
  %18 = alloca i40
  %19 = alloca %class.ap_uint.0, align 1
  %20 = alloca i40
  %21 = alloca %class.ap_int.3, align 1
  %22 = alloca i48
  %t3 = alloca i16, align 2
  %23 = alloca %class.ap_uint.0, align 1
  %24 = alloca %class.ap_uint.0, align 1
  %25 = alloca %class.ap_int, align 1
  %t4 = alloca i16, align 2
  %26 = alloca %class.ap_uint.0, align 1
  %res = alloca i32, align 4
  store [5 x %class.ap_uint.0]* %imgblock, [5 x %class.ap_uint.0]** %2, align 8
  store i32 %loop, i32* %3, align 4
  %27 = load i32* %3, align 4
  %28 = add nsw i32 0, %27
  %29 = sext i32 %28 to i64
  %30 = load [5 x %class.ap_uint.0]** %2, align 8
  %31 = getelementptr inbounds [5 x %class.ap_uint.0]* %30, i64 2
  %32 = getelementptr inbounds [5 x %class.ap_uint.0]* %31, i32 0, i64 %29
  %33 = bitcast %class.ap_uint.0* %4 to i8*
  %34 = bitcast %class.ap_uint.0* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 1, i32 1, i1 false)
  %35 = load i32* %3, align 4
  %36 = add nsw i32 4, %35
  %37 = sext i32 %36 to i64
  %38 = load [5 x %class.ap_uint.0]** %2, align 8
  %39 = getelementptr inbounds [5 x %class.ap_uint.0]* %38, i64 2
  %40 = getelementptr inbounds [5 x %class.ap_uint.0]* %39, i32 0, i64 %37
  %41 = bitcast %class.ap_uint.0* %5 to i8*
  %42 = bitcast %class.ap_uint.0* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 1, i32 1, i1 false)
  %43 = getelementptr %class.ap_uint.0* %4, i32 0, i32 0
  %44 = bitcast [1 x i8]* %43 to i8*
  %45 = load i8* %44, align 1
  %46 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %47 = bitcast [1 x i8]* %46 to i8*
  %48 = load i8* %47, align 1
  %49 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %45, i8 %48)
  %50 = getelementptr %class.ap_int* %6, i32 0, i32 0
  %51 = bitcast [2 x i8]* %50 to i16*
  store i16 %49, i16* %51, align 1
  %52 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int* %6)
  %53 = trunc i64 %52 to i16
  store i16 %53, i16* %t1, align 2
  %54 = load i16* %t1, align 2
  %55 = sext i16 %54 to i32
  %56 = sdiv i32 %55, 2
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %t1, align 2
  %58 = load i32* %3, align 4
  %59 = add nsw i32 2, %58
  %60 = sext i32 %59 to i64
  %61 = load [5 x %class.ap_uint.0]** %2, align 8
  %62 = getelementptr inbounds [5 x %class.ap_uint.0]* %61, i64 0
  %63 = getelementptr inbounds [5 x %class.ap_uint.0]* %62, i32 0, i64 %60
  %64 = bitcast %class.ap_uint.0* %11 to i8*
  %65 = bitcast %class.ap_uint.0* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 1, i32 1, i1 false)
  %66 = load i32* %3, align 4
  %67 = add nsw i32 1, %66
  %68 = sext i32 %67 to i64
  %69 = load [5 x %class.ap_uint.0]** %2, align 8
  %70 = getelementptr inbounds [5 x %class.ap_uint.0]* %69, i64 1
  %71 = getelementptr inbounds [5 x %class.ap_uint.0]* %70, i32 0, i64 %68
  %72 = bitcast %class.ap_uint.0* %12 to i8*
  %73 = bitcast %class.ap_uint.0* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 1, i32 1, i1 false)
  %74 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %75 = bitcast [1 x i8]* %74 to i8*
  %76 = load i8* %75, align 1
  %77 = getelementptr %class.ap_uint.0* %12, i32 0, i32 0
  %78 = bitcast [1 x i8]* %77 to i8*
  %79 = load i8* %78, align 1
  %80 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %76, i8 %79)
  %81 = getelementptr %class.ap_int* %10, i32 0, i32 0
  %82 = bitcast [2 x i8]* %81 to i16*
  store i16 %80, i16* %82, align 1
  %83 = load i32* %3, align 4
  %84 = add nsw i32 3, %83
  %85 = sext i32 %84 to i64
  %86 = load [5 x %class.ap_uint.0]** %2, align 8
  %87 = getelementptr inbounds [5 x %class.ap_uint.0]* %86, i64 1
  %88 = getelementptr inbounds [5 x %class.ap_uint.0]* %87, i32 0, i64 %85
  %89 = bitcast %class.ap_uint.0* %13 to i8*
  %90 = bitcast %class.ap_uint.0* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 1, i32 1, i1 false)
  %91 = getelementptr %class.ap_int* %10, i32 0, i32 0
  %92 = bitcast [2 x i8]* %91 to i16*
  %93 = load i16* %92, align 1
  %94 = getelementptr %class.ap_uint.0* %13, i32 0, i32 0
  %95 = bitcast [1 x i8]* %94 to i8*
  %96 = load i8* %95, align 1
  %97 = call i24 @_ZplILi16ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i16 %93, i8 %96)
  %98 = getelementptr %class.ap_int.6* %9, i32 0, i32 0
  store i24 %97, i24* %14
  %99 = bitcast i24* %14 to [3 x i8]*
  %100 = load [3 x i8]* %99, align 1
  store [3 x i8] %100, [3 x i8]* %98
  %101 = load i32* %3, align 4
  %102 = add nsw i32 1, %101
  %103 = sext i32 %102 to i64
  %104 = load [5 x %class.ap_uint.0]** %2, align 8
  %105 = getelementptr inbounds [5 x %class.ap_uint.0]* %104, i64 3
  %106 = getelementptr inbounds [5 x %class.ap_uint.0]* %105, i32 0, i64 %103
  %107 = bitcast %class.ap_uint.0* %15 to i8*
  %108 = bitcast %class.ap_uint.0* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 1, i32 1, i1 false)
  %109 = getelementptr %class.ap_int.6* %9, i32 0, i32 0
  %110 = bitcast i24* %16 to [3 x i8]*
  %111 = load [3 x i8]* %109
  store [3 x i8] %111, [3 x i8]* %110, align 1
  %112 = load i24* %16
  %113 = getelementptr %class.ap_uint.0* %15, i32 0, i32 0
  %114 = bitcast [1 x i8]* %113 to i8*
  %115 = load i8* %114, align 1
  %116 = call i32 @_ZplILi24ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i24 %112, i8 %115)
  %117 = getelementptr %class.ap_int.5* %8, i32 0, i32 0
  %118 = bitcast [4 x i8]* %117 to i32*
  store i32 %116, i32* %118, align 1
  %119 = load i32* %3, align 4
  %120 = add nsw i32 3, %119
  %121 = sext i32 %120 to i64
  %122 = load [5 x %class.ap_uint.0]** %2, align 8
  %123 = getelementptr inbounds [5 x %class.ap_uint.0]* %122, i64 3
  %124 = getelementptr inbounds [5 x %class.ap_uint.0]* %123, i32 0, i64 %121
  %125 = bitcast %class.ap_uint.0* %17 to i8*
  %126 = bitcast %class.ap_uint.0* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %126, i64 1, i32 1, i1 false)
  %127 = getelementptr %class.ap_int.5* %8, i32 0, i32 0
  %128 = bitcast [4 x i8]* %127 to i32*
  %129 = load i32* %128, align 1
  %130 = getelementptr %class.ap_uint.0* %17, i32 0, i32 0
  %131 = bitcast [1 x i8]* %130 to i8*
  %132 = load i8* %131, align 1
  %133 = call i40 @_ZplILi32ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i32 %129, i8 %132)
  %134 = getelementptr %class.ap_int.4* %7, i32 0, i32 0
  store i40 %133, i40* %18
  %135 = bitcast i40* %18 to [5 x i8]*
  %136 = load [5 x i8]* %135, align 1
  store [5 x i8] %136, [5 x i8]* %134
  %137 = load i32* %3, align 4
  %138 = add nsw i32 2, %137
  %139 = sext i32 %138 to i64
  %140 = load [5 x %class.ap_uint.0]** %2, align 8
  %141 = getelementptr inbounds [5 x %class.ap_uint.0]* %140, i64 4
  %142 = getelementptr inbounds [5 x %class.ap_uint.0]* %141, i32 0, i64 %139
  %143 = bitcast %class.ap_uint.0* %19 to i8*
  %144 = bitcast %class.ap_uint.0* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %143, i8* %144, i64 1, i32 1, i1 false)
  %145 = getelementptr %class.ap_int.4* %7, i32 0, i32 0
  %146 = bitcast i40* %20 to [5 x i8]*
  %147 = load [5 x i8]* %145
  store [5 x i8] %147, [5 x i8]* %146, align 1
  %148 = load i40* %20
  %149 = getelementptr %class.ap_uint.0* %19, i32 0, i32 0
  %150 = bitcast [1 x i8]* %149 to i8*
  %151 = load i8* %150, align 1
  %152 = call i48 @_ZplILi40ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i40 %148, i8 %151)
  %153 = getelementptr %class.ap_int.3* %21, i32 0, i32 0
  store i48 %152, i48* %22
  %154 = bitcast i48* %22 to [6 x i8]*
  %155 = load [6 x i8]* %154, align 1
  store [6 x i8] %155, [6 x i8]* %153
  %156 = call i64 @_ZNK6ap_intILi48EEcvlEv(%class.ap_int.3* %21)
  %157 = trunc i64 %156 to i16
  store i16 %157, i16* %t2, align 2
  %158 = load i32* %3, align 4
  %159 = add nsw i32 2, %158
  %160 = sext i32 %159 to i64
  %161 = load [5 x %class.ap_uint.0]** %2, align 8
  %162 = getelementptr inbounds [5 x %class.ap_uint.0]* %161, i64 1
  %163 = getelementptr inbounds [5 x %class.ap_uint.0]* %162, i32 0, i64 %160
  %164 = bitcast %class.ap_uint.0* %23 to i8*
  %165 = bitcast %class.ap_uint.0* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* %165, i64 1, i32 1, i1 false)
  %166 = load i32* %3, align 4
  %167 = add nsw i32 2, %166
  %168 = sext i32 %167 to i64
  %169 = load [5 x %class.ap_uint.0]** %2, align 8
  %170 = getelementptr inbounds [5 x %class.ap_uint.0]* %169, i64 3
  %171 = getelementptr inbounds [5 x %class.ap_uint.0]* %170, i32 0, i64 %168
  %172 = bitcast %class.ap_uint.0* %24 to i8*
  %173 = bitcast %class.ap_uint.0* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %172, i8* %173, i64 1, i32 1, i1 false)
  %174 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %175 = bitcast [1 x i8]* %174 to i8*
  %176 = load i8* %175, align 1
  %177 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %178 = bitcast [1 x i8]* %177 to i8*
  %179 = load i8* %178, align 1
  %180 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %176, i8 %179)
  %181 = getelementptr %class.ap_int* %25, i32 0, i32 0
  %182 = bitcast [2 x i8]* %181 to i16*
  store i16 %180, i16* %182, align 1
  %183 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int* %25)
  %184 = trunc i64 %183 to i16
  store i16 %184, i16* %t3, align 2
  %185 = load i16* %t3, align 2
  %186 = sext i16 %185 to i32
  %187 = mul nsw i32 %186, 4
  %188 = trunc i32 %187 to i16
  store i16 %188, i16* %t3, align 2
  %189 = load i32* %3, align 4
  %190 = add nsw i32 2, %189
  %191 = sext i32 %190 to i64
  %192 = load [5 x %class.ap_uint.0]** %2, align 8
  %193 = getelementptr inbounds [5 x %class.ap_uint.0]* %192, i64 2
  %194 = getelementptr inbounds [5 x %class.ap_uint.0]* %193, i32 0, i64 %191
  %195 = call i8 @_ZmlILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %194, i32 5)
  %196 = getelementptr %class.ap_uint.0* %26, i32 0, i32 0
  %197 = bitcast [1 x i8]* %196 to i8*
  store i8 %195, i8* %197, align 1
  %198 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %26)
  %199 = trunc i64 %198 to i16
  store i16 %199, i16* %t4, align 2
  %200 = load i16* %t1, align 2
  %201 = sext i16 %200 to i32
  %202 = load i16* %t2, align 2
  %203 = sext i16 %202 to i32
  %204 = sub nsw i32 %201, %203
  %205 = load i16* %t3, align 2
  %206 = sext i16 %205 to i32
  %207 = add nsw i32 %204, %206
  %208 = load i16* %t4, align 2
  %209 = sext i16 %208 to i32
  %210 = add nsw i32 %207, %209
  store i32 %210, i32* %res, align 4
  %211 = load i32* %res, align 4
  %212 = sdiv i32 %211, 8
  store i32 %212, i32* %res, align 4
  %213 = load i32* %res, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %216

; <label>:215                                     ; preds = %0
  store i32 0, i32* %1
  br label %218

; <label>:216                                     ; preds = %0
  %217 = load i32* %res, align 4
  store i32 %217, i32* %1
  br label %218

; <label>:218                                     ; preds = %216, %215
  %219 = load i32* %1
  ret i32 %219
}

define internal i32 @_ZL65p_ZN2xf14rgr_bgb_kernelI7ap_uintILi8EELi5EEEPA5_7ap_uintILi8EEi_1PA5_7ap_uintILi8EEi([5 x %class.ap_uint.0]* %imgblock, i32 %loop) uwtable {
  %1 = alloca i32, align 4
  %2 = alloca [5 x %class.ap_uint.0]*, align 8
  %3 = alloca i32, align 4
  %t1 = alloca i16, align 2
  %4 = alloca %class.ap_uint.0, align 1
  %5 = alloca %class.ap_uint.0, align 1
  %6 = alloca %class.ap_int, align 1
  %t2 = alloca i16, align 2
  %7 = alloca %class.ap_int.4, align 1
  %8 = alloca %class.ap_int.5, align 1
  %9 = alloca %class.ap_int.6, align 1
  %10 = alloca %class.ap_int, align 1
  %11 = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.0, align 1
  %13 = alloca %class.ap_uint.0, align 1
  %14 = alloca i24
  %15 = alloca %class.ap_uint.0, align 1
  %16 = alloca i24
  %17 = alloca %class.ap_uint.0, align 1
  %18 = alloca i40
  %19 = alloca %class.ap_uint.0, align 1
  %20 = alloca i40
  %21 = alloca %class.ap_int.3, align 1
  %22 = alloca i48
  %t3 = alloca i16, align 2
  %23 = alloca %class.ap_uint.0, align 1
  %24 = alloca %class.ap_uint.0, align 1
  %25 = alloca %class.ap_int, align 1
  %t4 = alloca i16, align 2
  %26 = alloca %class.ap_uint.0, align 1
  %res = alloca i32, align 4
  store [5 x %class.ap_uint.0]* %imgblock, [5 x %class.ap_uint.0]** %2, align 8
  store i32 %loop, i32* %3, align 4
  %27 = load i32* %3, align 4
  %28 = add nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = load [5 x %class.ap_uint.0]** %2, align 8
  %31 = getelementptr inbounds [5 x %class.ap_uint.0]* %30, i64 0
  %32 = getelementptr inbounds [5 x %class.ap_uint.0]* %31, i32 0, i64 %29
  %33 = bitcast %class.ap_uint.0* %4 to i8*
  %34 = bitcast %class.ap_uint.0* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 1, i32 1, i1 false)
  %35 = load i32* %3, align 4
  %36 = add nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = load [5 x %class.ap_uint.0]** %2, align 8
  %39 = getelementptr inbounds [5 x %class.ap_uint.0]* %38, i64 4
  %40 = getelementptr inbounds [5 x %class.ap_uint.0]* %39, i32 0, i64 %37
  %41 = bitcast %class.ap_uint.0* %5 to i8*
  %42 = bitcast %class.ap_uint.0* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 1, i32 1, i1 false)
  %43 = getelementptr %class.ap_uint.0* %4, i32 0, i32 0
  %44 = bitcast [1 x i8]* %43 to i8*
  %45 = load i8* %44, align 1
  %46 = getelementptr %class.ap_uint.0* %5, i32 0, i32 0
  %47 = bitcast [1 x i8]* %46 to i8*
  %48 = load i8* %47, align 1
  %49 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %45, i8 %48)
  %50 = getelementptr %class.ap_int* %6, i32 0, i32 0
  %51 = bitcast [2 x i8]* %50 to i16*
  store i16 %49, i16* %51, align 1
  %52 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int* %6)
  %53 = trunc i64 %52 to i16
  store i16 %53, i16* %t1, align 2
  %54 = load i32* %3, align 4
  %55 = add nsw i32 1, %54
  %56 = sext i32 %55 to i64
  %57 = load [5 x %class.ap_uint.0]** %2, align 8
  %58 = getelementptr inbounds [5 x %class.ap_uint.0]* %57, i64 1
  %59 = getelementptr inbounds [5 x %class.ap_uint.0]* %58, i32 0, i64 %56
  %60 = bitcast %class.ap_uint.0* %11 to i8*
  %61 = bitcast %class.ap_uint.0* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 1, i32 1, i1 false)
  %62 = load i32* %3, align 4
  %63 = add nsw i32 3, %62
  %64 = sext i32 %63 to i64
  %65 = load [5 x %class.ap_uint.0]** %2, align 8
  %66 = getelementptr inbounds [5 x %class.ap_uint.0]* %65, i64 1
  %67 = getelementptr inbounds [5 x %class.ap_uint.0]* %66, i32 0, i64 %64
  %68 = bitcast %class.ap_uint.0* %12 to i8*
  %69 = bitcast %class.ap_uint.0* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 1, i32 1, i1 false)
  %70 = getelementptr %class.ap_uint.0* %11, i32 0, i32 0
  %71 = bitcast [1 x i8]* %70 to i8*
  %72 = load i8* %71, align 1
  %73 = getelementptr %class.ap_uint.0* %12, i32 0, i32 0
  %74 = bitcast [1 x i8]* %73 to i8*
  %75 = load i8* %74, align 1
  %76 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %72, i8 %75)
  %77 = getelementptr %class.ap_int* %10, i32 0, i32 0
  %78 = bitcast [2 x i8]* %77 to i16*
  store i16 %76, i16* %78, align 1
  %79 = load i32* %3, align 4
  %80 = add nsw i32 0, %79
  %81 = sext i32 %80 to i64
  %82 = load [5 x %class.ap_uint.0]** %2, align 8
  %83 = getelementptr inbounds [5 x %class.ap_uint.0]* %82, i64 2
  %84 = getelementptr inbounds [5 x %class.ap_uint.0]* %83, i32 0, i64 %81
  %85 = bitcast %class.ap_uint.0* %13 to i8*
  %86 = bitcast %class.ap_uint.0* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 1, i32 1, i1 false)
  %87 = getelementptr %class.ap_int* %10, i32 0, i32 0
  %88 = bitcast [2 x i8]* %87 to i16*
  %89 = load i16* %88, align 1
  %90 = getelementptr %class.ap_uint.0* %13, i32 0, i32 0
  %91 = bitcast [1 x i8]* %90 to i8*
  %92 = load i8* %91, align 1
  %93 = call i24 @_ZplILi16ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i16 %89, i8 %92)
  %94 = getelementptr %class.ap_int.6* %9, i32 0, i32 0
  store i24 %93, i24* %14
  %95 = bitcast i24* %14 to [3 x i8]*
  %96 = load [3 x i8]* %95, align 1
  store [3 x i8] %96, [3 x i8]* %94
  %97 = load i32* %3, align 4
  %98 = add nsw i32 4, %97
  %99 = sext i32 %98 to i64
  %100 = load [5 x %class.ap_uint.0]** %2, align 8
  %101 = getelementptr inbounds [5 x %class.ap_uint.0]* %100, i64 2
  %102 = getelementptr inbounds [5 x %class.ap_uint.0]* %101, i32 0, i64 %99
  %103 = bitcast %class.ap_uint.0* %15 to i8*
  %104 = bitcast %class.ap_uint.0* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 1, i32 1, i1 false)
  %105 = getelementptr %class.ap_int.6* %9, i32 0, i32 0
  %106 = bitcast i24* %16 to [3 x i8]*
  %107 = load [3 x i8]* %105
  store [3 x i8] %107, [3 x i8]* %106, align 1
  %108 = load i24* %16
  %109 = getelementptr %class.ap_uint.0* %15, i32 0, i32 0
  %110 = bitcast [1 x i8]* %109 to i8*
  %111 = load i8* %110, align 1
  %112 = call i32 @_ZplILi24ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i24 %108, i8 %111)
  %113 = getelementptr %class.ap_int.5* %8, i32 0, i32 0
  %114 = bitcast [4 x i8]* %113 to i32*
  store i32 %112, i32* %114, align 1
  %115 = load i32* %3, align 4
  %116 = add nsw i32 1, %115
  %117 = sext i32 %116 to i64
  %118 = load [5 x %class.ap_uint.0]** %2, align 8
  %119 = getelementptr inbounds [5 x %class.ap_uint.0]* %118, i64 3
  %120 = getelementptr inbounds [5 x %class.ap_uint.0]* %119, i32 0, i64 %117
  %121 = bitcast %class.ap_uint.0* %17 to i8*
  %122 = bitcast %class.ap_uint.0* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 1, i32 1, i1 false)
  %123 = getelementptr %class.ap_int.5* %8, i32 0, i32 0
  %124 = bitcast [4 x i8]* %123 to i32*
  %125 = load i32* %124, align 1
  %126 = getelementptr %class.ap_uint.0* %17, i32 0, i32 0
  %127 = bitcast [1 x i8]* %126 to i8*
  %128 = load i8* %127, align 1
  %129 = call i40 @_ZplILi32ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i32 %125, i8 %128)
  %130 = getelementptr %class.ap_int.4* %7, i32 0, i32 0
  store i40 %129, i40* %18
  %131 = bitcast i40* %18 to [5 x i8]*
  %132 = load [5 x i8]* %131, align 1
  store [5 x i8] %132, [5 x i8]* %130
  %133 = load i32* %3, align 4
  %134 = add nsw i32 3, %133
  %135 = sext i32 %134 to i64
  %136 = load [5 x %class.ap_uint.0]** %2, align 8
  %137 = getelementptr inbounds [5 x %class.ap_uint.0]* %136, i64 3
  %138 = getelementptr inbounds [5 x %class.ap_uint.0]* %137, i32 0, i64 %135
  %139 = bitcast %class.ap_uint.0* %19 to i8*
  %140 = bitcast %class.ap_uint.0* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %139, i8* %140, i64 1, i32 1, i1 false)
  %141 = getelementptr %class.ap_int.4* %7, i32 0, i32 0
  %142 = bitcast i40* %20 to [5 x i8]*
  %143 = load [5 x i8]* %141
  store [5 x i8] %143, [5 x i8]* %142, align 1
  %144 = load i40* %20
  %145 = getelementptr %class.ap_uint.0* %19, i32 0, i32 0
  %146 = bitcast [1 x i8]* %145 to i8*
  %147 = load i8* %146, align 1
  %148 = call i48 @_ZplILi40ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i40 %144, i8 %147)
  %149 = getelementptr %class.ap_int.3* %21, i32 0, i32 0
  store i48 %148, i48* %22
  %150 = bitcast i48* %22 to [6 x i8]*
  %151 = load [6 x i8]* %150, align 1
  store [6 x i8] %151, [6 x i8]* %149
  %152 = call i64 @_ZNK6ap_intILi48EEcvlEv(%class.ap_int.3* %21)
  %153 = trunc i64 %152 to i16
  store i16 %153, i16* %t2, align 2
  %154 = load i32* %3, align 4
  %155 = add nsw i32 1, %154
  %156 = sext i32 %155 to i64
  %157 = load [5 x %class.ap_uint.0]** %2, align 8
  %158 = getelementptr inbounds [5 x %class.ap_uint.0]* %157, i64 2
  %159 = getelementptr inbounds [5 x %class.ap_uint.0]* %158, i32 0, i64 %156
  %160 = bitcast %class.ap_uint.0* %23 to i8*
  %161 = bitcast %class.ap_uint.0* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %160, i8* %161, i64 1, i32 1, i1 false)
  %162 = load i32* %3, align 4
  %163 = add nsw i32 3, %162
  %164 = sext i32 %163 to i64
  %165 = load [5 x %class.ap_uint.0]** %2, align 8
  %166 = getelementptr inbounds [5 x %class.ap_uint.0]* %165, i64 2
  %167 = getelementptr inbounds [5 x %class.ap_uint.0]* %166, i32 0, i64 %164
  %168 = bitcast %class.ap_uint.0* %24 to i8*
  %169 = bitcast %class.ap_uint.0* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %168, i8* %169, i64 1, i32 1, i1 false)
  %170 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %171 = bitcast [1 x i8]* %170 to i8*
  %172 = load i8* %171, align 1
  %173 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %174 = bitcast [1 x i8]* %173 to i8*
  %175 = load i8* %174, align 1
  %176 = call i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8 %172, i8 %175)
  %177 = getelementptr %class.ap_int* %25, i32 0, i32 0
  %178 = bitcast [2 x i8]* %177 to i16*
  store i16 %176, i16* %178, align 1
  %179 = call i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int* %25)
  %180 = trunc i64 %179 to i16
  store i16 %180, i16* %t3, align 2
  %181 = load i16* %t3, align 2
  %182 = sext i16 %181 to i32
  %183 = mul nsw i32 %182, 4
  %184 = trunc i32 %183 to i16
  store i16 %184, i16* %t3, align 2
  %185 = load i32* %3, align 4
  %186 = add nsw i32 2, %185
  %187 = sext i32 %186 to i64
  %188 = load [5 x %class.ap_uint.0]** %2, align 8
  %189 = getelementptr inbounds [5 x %class.ap_uint.0]* %188, i64 2
  %190 = getelementptr inbounds [5 x %class.ap_uint.0]* %189, i32 0, i64 %187
  %191 = call i8 @_ZmlILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %190, i32 5)
  %192 = getelementptr %class.ap_uint.0* %26, i32 0, i32 0
  %193 = bitcast [1 x i8]* %192 to i8*
  store i8 %191, i8* %193, align 1
  %194 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %26)
  %195 = trunc i64 %194 to i16
  store i16 %195, i16* %t4, align 2
  %196 = load i16* %t1, align 2
  %197 = sext i16 %196 to i32
  %198 = ashr i32 %197, 1
  %199 = load i16* %t2, align 2
  %200 = sext i16 %199 to i32
  %201 = sub nsw i32 %198, %200
  %202 = load i16* %t3, align 2
  %203 = sext i16 %202 to i32
  %204 = add nsw i32 %201, %203
  %205 = load i16* %t4, align 2
  %206 = sext i16 %205 to i32
  %207 = add nsw i32 %204, %206
  store i32 %207, i32* %res, align 4
  %208 = load i32* %res, align 4
  %209 = sdiv i32 %208, 8
  store i32 %209, i32* %res, align 4
  %210 = load i32* %res, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %213

; <label>:212                                     ; preds = %0
  store i32 0, i32* %1
  br label %215

; <label>:213                                     ; preds = %0
  %214 = load i32* %res, align 4
  store i32 %214, i32* %1
  br label %215

; <label>:215                                     ; preds = %213, %212
  %216 = load i32* %1
  ret i32 %216
}

declare i16 @_ZplILi8ELi8EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i8, i8)

declare i64 @_ZNK6ap_intILi16EEcvlEv(%class.ap_int*)

declare i48 @_ZplILi40ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i40, i8)

declare i40 @_ZplILi32ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i32, i8)

declare i32 @_ZplILi24ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i24, i8)

declare i24 @_ZplILi16ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i16, i8)

declare i64 @_ZNK6ap_intILi48EEcvlEv(%class.ap_int.3*)

declare i8 @_ZmlILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0*, i32)

declare { i64, i16 } @_ZplILi65ELi8EE6ap_intIXplT_T0_EES0_IXT_EE7ap_uintIXT0_EE(i64, i8, i8)

declare { i64, i8 } @_ZplILi33ELi32EE6ap_intIXplT_T0_EES0_IXT_EES0_IXT0_EE(i40, i32)

declare i40 @_ZNK6ap_intILi32EEngEv(%class.ap_int.5*)

declare i32 @_ZmlILi32EE6ap_intIXT_EERKS1_i(%class.ap_int.5*, i32)

declare i64 @_ZNK6ap_intILi73EEcvlEv(%class.ap_int.7*)

declare i64 @_ZNK6ap_intILi32EEcvlEv(%class.ap_int.5*)

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

define internal void @_ZL38p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1P19xf_Mat_9_256_256_1_iib(%struct.xf_Mat_9_256_256_1_* %this_, i32 %_rows, i32 %_cols, i1 zeroext %allocate) nounwind uwtable {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.xf_Mat_9_256_256_1_* %this_, %struct.xf_Mat_9_256_256_1_** %1, align 8
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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_9_256_256_1_4initIEEiib_1P19xf_Mat_9_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load i32* %2, align 4
  %22 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32* %3, align 4
  %25 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %26 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32* %2, align 4
  %28 = load i32* %3, align 4
  %29 = ashr i32 %28, 0
  %30 = mul nsw i32 %27, %29
  %31 = load %struct.xf_Mat_9_256_256_1_** %1, align 8
  %32 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i8* %4, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %20
  br label %36

; <label>:36                                      ; preds = %35, %20
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_9_256_256_1_C2Ev(%struct.xf_Mat_9_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_9_256_256_1_*, align 8
  store %struct.xf_Mat_9_256_256_1_* %this, %struct.xf_Mat_9_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_9_256_256_1_** %1
  %3 = getelementptr inbounds %struct.xf_Mat_9_256_256_1_* %2, i32 0, i32 4
  %4 = getelementptr inbounds [65536 x %class.ap_uint.1]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint.1* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint.1* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi24EEC1Ev(%class.ap_uint.1* %7)
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

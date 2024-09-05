; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/meanstddev_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [8 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%class.ap_uint.1 = type { [1 x i8] }
%class.ap_uint.2 = type { [6 x i8] }
%class.ap_uint.3 = type { [2 x i8] }
%class.ap_int = type { [16 x i8] }
%class.ap_uint.4 = type { [2 x i8] }
%class.ap_uint.5 = type { [4 x i8] }
%"class.hls::stream" = type { %class.ap_uint }

@.str = private unnamed_addr constant [100 x i8] c"((_src.rows <= ROWS ) && (_src.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"xf_mean_stddev.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL75p_ZN2xf10meanStdDevILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPtPt_1R19xf_Mat_0_256_256_1_PtS1_ = private unnamed_addr constant [147 x i8] c"void p_ZN2xf10meanStdDevILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPtPt_1(struct xf_Mat_0_256_256_1_ &, unsigned short *, unsigned short *)\00", align 1
@.str2 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z17mean_stddev_accelP7ap_uintILi64EEPtS2_ii(%class.ap_uint* %imgInput_data, i16* %mean, i16* %stddev, i32 %rows, i32 %cols) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca i16*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %imgInput = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %imgInput_data, %class.ap_uint** %1, align 8
  store i16* %mean, i16** %2, align 8
  store i16* %stddev, i16** %3, align 8
  store i32 %rows, i32* %4, align 4
  store i32 %cols, i32* %5, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %imgInput)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %imgInput)
  %6 = load i32* %4, align 4
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %imgInput, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32* %5, align 4
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %imgInput, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load %class.ap_uint** %1, align 8
  call void @_ZL93p_ZN2xf11Array2xfMatILi64ELi0ELi256ELi256ELi1EEEP7ap_uintILi64EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi64EER19xf_Mat_0_256_256_1_(%class.ap_uint* %10, %struct.xf_Mat_0_256_256_1_* %imgInput)
  %11 = load i16** %2, align 8
  %12 = load i16** %3, align 8
  call void @_ZL75p_ZN2xf10meanStdDevILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPtPt_1R19xf_Mat_0_256_256_1_PtS1_(%struct.xf_Mat_0_256_256_1_* %imgInput, i16* %11, i16* %12)
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

define internal void @_ZL75p_ZN2xf10meanStdDevILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPtPt_1R19xf_Mat_0_256_256_1_PtS1_(%struct.xf_Mat_0_256_256_1_* %_src, i16* %_mean, i16* %_stddev) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i16*, align 8
  %3 = alloca i16*, align 8
  store %struct.xf_Mat_0_256_256_1_* %_src, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i16* %_mean, i16** %2, align 8
  store i16* %_stddev, i16** %3, align 8
  %4 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %4, i32 0, i32 1
  %6 = load i32* %5, align 4
  %7 = icmp sle i32 %6, 256
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %0
  %9 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %10 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %9, i32 0, i32 2
  %11 = load i32* %10, align 4
  %12 = icmp sle i32 %11, 256
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %8
  br label %16

; <label>:14                                      ; preds = %8, %0
  call void @__assert_fail(i8* getelementptr inbounds ([100 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 183, i8* getelementptr inbounds ([147 x i8]* @__PRETTY_FUNCTION__._ZL75p_ZN2xf10meanStdDevILi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPtPt_1R19xf_Mat_0_256_256_1_PtS1_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %18 = load i16** %2, align 8
  %19 = load i16** %3, align 8
  %20 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %21 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %20, i32 0, i32 1
  %22 = load i32* %21, align 4
  %23 = trunc i32 %22 to i16
  %24 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %25 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %24, i32 0, i32 2
  %26 = load i32* %25, align 4
  %27 = trunc i32 %26 to i16
  call void @_ZL85p_ZN2xf14xFStddevkernelILi0ELi256ELi256ELi1ELi1EEER3MatILi0ELi256ELi256ELi1EEPtPttt_1R19xf_Mat_0_256_256_1_PtS1_tt(%struct.xf_Mat_0_256_256_1_* %17, i16* %18, i16* %19, i16 zeroext %23, i16 zeroext %27)
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL85p_ZN2xf14xFStddevkernelILi0ELi256ELi256ELi1ELi1EEER3MatILi0ELi256ELi256ELi1EEPtPttt_1R19xf_Mat_0_256_256_1_PtS1_tt(%struct.xf_Mat_0_256_256_1_* %_src_mat1, i16* %_mean, i16* %_dst_stddev, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i16*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %j = alloca %class.ap_uint.1, align 1
  %tmp_var_vals = alloca [1 x %class.ap_uint.2], align 1
  %var = alloca [1 x %class.ap_uint], align 1
  %tmp_sum_vals = alloca [1 x i32], align 4
  %sum = alloca [1 x i64], align 8
  %6 = alloca %class.ap_uint.1, align 1
  %7 = alloca %class.ap_uint.1, align 1
  %8 = alloca %class.ap_uint.1, align 1
  %9 = alloca %class.ap_uint.1, align 1
  %p = alloca i32, align 4
  %read_index = alloca i32, align 4
  %row = alloca %class.ap_uint.3, align 1
  %col = alloca %class.ap_uint.3, align 1
  %10 = alloca %class.ap_uint.3, align 1
  %11 = alloca %class.ap_uint.3, align 1
  %in_buf = alloca %class.ap_uint.0, align 1
  %12 = alloca %class.ap_uint.0, align 1
  %p1 = alloca i32, align 4
  %val = alloca %class.ap_uint.0, align 1
  %13 = alloca %class.ap_uint.0, align 1
  %temp = alloca i16, align 2
  %14 = alloca %class.ap_uint.3, align 1
  %15 = alloca %class.ap_uint.3, align 1
  %c = alloca i32, align 4
  %16 = alloca %class.ap_uint.1, align 1
  %17 = alloca %class.ap_uint.1, align 1
  %18 = alloca %class.ap_uint.1, align 1
  %19 = alloca %class.ap_uint, align 1
  %20 = alloca %class.ap_int, align 1
  %21 = alloca %class.ap_uint, align 1
  %22 = alloca %class.ap_uint, align 1
  %23 = alloca %class.ap_uint.1, align 1
  %24 = alloca %class.ap_uint.1, align 1
  %25 = alloca %class.ap_uint.1, align 1
  %mean_acc = alloca %class.ap_uint.4, align 1
  %stddev_acc = alloca %class.ap_uint.4, align 1
  %c2 = alloca i32, align 4
  %tempmean = alloca i32, align 4
  %26 = alloca %class.ap_uint, align 1
  %27 = alloca %class.ap_uint, align 1
  %28 = alloca %class.ap_uint, align 1
  %temp3 = alloca i32, align 4
  %29 = alloca %class.ap_uint.5, align 1
  %30 = alloca %class.ap_uint, align 1
  %31 = alloca %class.ap_uint, align 1
  %Varstddev = alloca i32, align 4
  %t1 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.xf_Mat_0_256_256_1_* %_src_mat1, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i16* %_mean, i16** %2, align 8
  store i16* %_dst_stddev, i16** %3, align 8
  store i16 %height, i16* %4, align 2
  store i16 %width, i16* %5, align 2
  call void @_ZN7ap_uintILi4EEC1Ev(%class.ap_uint.1* %j)
  %32 = getelementptr inbounds [1 x %class.ap_uint.2]* %tmp_var_vals, i32 0, i32 0
  %33 = getelementptr inbounds %class.ap_uint.2* %32, i64 1
  br label %34

; <label>:34                                      ; preds = %34, %0
  %35 = phi %class.ap_uint.2* [ %32, %0 ], [ %36, %34 ]
  call void @_ZN7ap_uintILi45EEC1Ev(%class.ap_uint.2* %35)
  %36 = getelementptr inbounds %class.ap_uint.2* %35, i64 1
  %37 = icmp eq %class.ap_uint.2* %36, %33
  br i1 %37, label %38, label %34

; <label>:38                                      ; preds = %34
  %39 = getelementptr inbounds [1 x %class.ap_uint]* %var, i32 0, i32 0
  %40 = getelementptr inbounds %class.ap_uint* %39, i64 1
  br label %41

; <label>:41                                      ; preds = %41, %38
  %42 = phi %class.ap_uint* [ %39, %38 ], [ %43, %41 ]
  call void @_ZN7ap_uintILi64EEC1Ev(%class.ap_uint* %42)
  %43 = getelementptr inbounds %class.ap_uint* %42, i64 1
  %44 = icmp eq %class.ap_uint* %43, %40
  br i1 %44, label %45, label %41

; <label>:45                                      ; preds = %41
  %46 = call %class.ap_uint.1* @_ZN7ap_uintILi4EEaSEi(%class.ap_uint.1* %j, i32 0)
  br label %47

; <label>:47                                      ; preds = %60, %45
  %48 = bitcast %class.ap_uint.1* %6 to i8*
  %49 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 1, i32 1, i1 false)
  %50 = getelementptr %class.ap_uint.1* %6, i32 0, i32 0
  %51 = bitcast [1 x i8]* %50 to i8*
  %52 = load i8* %51, align 1
  %53 = call zeroext i1 @_ZltILi4EEb7ap_uintIXT_EEi(i8 %52, i32 1)
  br i1 %53, label %54, label %64

; <label>:54                                      ; preds = %47
  %55 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.1* %j)
  %56 = getelementptr inbounds [1 x %class.ap_uint.2]* %tmp_var_vals, i32 0, i64 %55
  %57 = call %class.ap_uint.2* @_ZN7ap_uintILi45EEaSEi(%class.ap_uint.2* %56, i32 0)
  %58 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.1* %j)
  %59 = getelementptr inbounds [1 x i32]* %tmp_sum_vals, i32 0, i64 %58
  store i32 0, i32* %59, align 4
  br label %60

; <label>:60                                      ; preds = %54
  %61 = call i8 @_ZN7ap_uintILi4EEppEi(%class.ap_uint.1* %j, i32 0)
  %62 = getelementptr %class.ap_uint.1* %7, i32 0, i32 0
  %63 = bitcast [1 x i8]* %62 to i8*
  store i8 %61, i8* %63, align 1
  br label %47

; <label>:64                                      ; preds = %47
  %65 = call %class.ap_uint.1* @_ZN7ap_uintILi4EEaSEi(%class.ap_uint.1* %j, i32 0)
  br label %66

; <label>:66                                      ; preds = %79, %64
  %67 = bitcast %class.ap_uint.1* %8 to i8*
  %68 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 1, i32 1, i1 false)
  %69 = getelementptr %class.ap_uint.1* %8, i32 0, i32 0
  %70 = bitcast [1 x i8]* %69 to i8*
  %71 = load i8* %70, align 1
  %72 = call zeroext i1 @_ZltILi4EEb7ap_uintIXT_EEi(i8 %71, i32 1)
  br i1 %72, label %73, label %83

; <label>:73                                      ; preds = %66
  %74 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.1* %j)
  %75 = getelementptr inbounds [1 x i64]* %sum, i32 0, i64 %74
  store i64 0, i64* %75, align 8
  %76 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.1* %j)
  %77 = getelementptr inbounds [1 x %class.ap_uint]* %var, i32 0, i64 %76
  %78 = call %class.ap_uint* @_ZN7ap_uintILi64EEaSEi(%class.ap_uint* %77, i32 0)
  br label %79

; <label>:79                                      ; preds = %73
  %80 = call i8 @_ZN7ap_uintILi4EEppEi(%class.ap_uint.1* %j, i32 0)
  %81 = getelementptr %class.ap_uint.1* %9, i32 0, i32 0
  %82 = bitcast [1 x i8]* %81 to i8*
  store i8 %80, i8* %82, align 1
  br label %66

; <label>:83                                      ; preds = %66
  store i32 0, i32* %p, align 4
  store i32 0, i32* %read_index, align 4
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3* %row)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3* %col)
  br label %84

; <label>:84                                      ; preds = %83
  %85 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3* %row, i32 0)
  br label %86

; <label>:86                                      ; preds = %161, %84
  %87 = bitcast %class.ap_uint.3* %10 to i8*
  %88 = bitcast %class.ap_uint.3* %row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 2, i32 1, i1 false)
  %89 = load i16* %4, align 2
  %90 = getelementptr %class.ap_uint.3* %10, i32 0, i32 0
  %91 = bitcast [2 x i8]* %90 to i16*
  %92 = load i16* %91, align 1
  %93 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %92, i16 zeroext %89)
  br i1 %93, label %94, label %165

; <label>:94                                      ; preds = %86
  br label %95

; <label>:95                                      ; preds = %94
  %96 = call %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3* %col, i32 0)
  br label %97

; <label>:97                                      ; preds = %156, %95
  %98 = bitcast %class.ap_uint.3* %11 to i8*
  %99 = bitcast %class.ap_uint.3* %col to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 2, i32 1, i1 false)
  %100 = load i16* %5, align 2
  %101 = zext i16 %100 to i32
  %102 = ashr i32 %101, 0
  %103 = getelementptr %class.ap_uint.3* %11, i32 0, i32 0
  %104 = bitcast [2 x i8]* %103 to i16*
  %105 = load i16* %104, align 1
  %106 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %105, i32 %102)
  br i1 %106, label %107, label %160

; <label>:107                                     ; preds = %97
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %in_buf)
  %108 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %109 = load i32* %read_index, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %read_index, align 4
  %111 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %108, i32 %109)
  %112 = getelementptr %class.ap_uint.0* %12, i32 0, i32 0
  %113 = bitcast [1 x i8]* %112 to i8*
  store i8 %111, i8* %113, align 1
  %114 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %in_buf, %class.ap_uint.0* %12)
  br label %115

; <label>:115                                     ; preds = %107
  store i32 0, i32* %p1, align 4
  br label %116

; <label>:116                                     ; preds = %152, %115
  %117 = load i32* %p1, align 4
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %119, label %155

; <label>:119                                     ; preds = %116
  %120 = load i32* %p1, align 4
  %121 = mul nsw i32 %120, 8
  %122 = add nsw i32 %121, 7
  %123 = load i32* %p1, align 4
  %124 = mul nsw i32 %123, 8
  %125 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0* %in_buf, i32 %122, i32 %124)
  %126 = load i64* %125
  call void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0* %val, i64 %126)
  %127 = load i32* %p1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [1 x i32]* %tmp_sum_vals, i32 0, i64 %128
  %130 = load i32* %129, align 4
  %131 = call i8 @_ZplILi8EE7ap_uintIXT_EEjRKS1_(i32 %130, %class.ap_uint.0* %val)
  %132 = getelementptr %class.ap_uint.0* %13, i32 0, i32 0
  %133 = bitcast [1 x i8]* %132 to i8*
  store i8 %131, i8* %133, align 1
  %134 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %13)
  %135 = trunc i64 %134 to i32
  %136 = load i32* %p1, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [1 x i32]* %tmp_sum_vals, i32 0, i64 %137
  store i32 %135, i32* %138, align 4
  %139 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %val)
  %140 = trunc i64 %139 to i16
  %141 = zext i16 %140 to i32
  %142 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0* %val)
  %143 = trunc i64 %142 to i16
  %144 = zext i16 %143 to i32
  %145 = mul nsw i32 %141, %144
  %146 = trunc i32 %145 to i16
  store i16 %146, i16* %temp, align 2
  %147 = load i32* %p1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [1 x %class.ap_uint.2]* %tmp_var_vals, i32 0, i64 %148
  %150 = load i16* %temp, align 2
  %151 = call %class.ap_uint.2* @_ZpLILi45EER7ap_uintIXT_EES2_t(%class.ap_uint.2* %149, i16 zeroext %150)
  br label %152

; <label>:152                                     ; preds = %119
  %153 = load i32* %p1, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %p1, align 4
  br label %116

; <label>:155                                     ; preds = %116
  br label %156

; <label>:156                                     ; preds = %155
  %157 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %col, i32 0)
  %158 = getelementptr %class.ap_uint.3* %14, i32 0, i32 0
  %159 = bitcast [2 x i8]* %158 to i16*
  store i16 %157, i16* %159, align 1
  br label %97

; <label>:160                                     ; preds = %97
  br label %161

; <label>:161                                     ; preds = %160
  %162 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3* %row, i32 0)
  %163 = getelementptr %class.ap_uint.3* %15, i32 0, i32 0
  %164 = bitcast [2 x i8]* %163 to i16*
  store i16 %162, i16* %164, align 1
  br label %86

; <label>:165                                     ; preds = %86
  store i32 0, i32* %c, align 4
  br label %166

; <label>:166                                     ; preds = %234, %165
  %167 = load i32* %c, align 4
  %168 = icmp slt i32 %167, 1
  br i1 %168, label %169, label %237

; <label>:169                                     ; preds = %166
  %170 = call %class.ap_uint.1* @_ZN7ap_uintILi4EEaSEi(%class.ap_uint.1* %j, i32 0)
  br label %171

; <label>:171                                     ; preds = %229, %169
  %172 = bitcast %class.ap_uint.1* %16 to i8*
  %173 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %172, i8* %173, i64 1, i32 1, i1 false)
  %174 = getelementptr %class.ap_uint.1* %16, i32 0, i32 0
  %175 = bitcast [1 x i8]* %174 to i8*
  %176 = load i8* %175, align 1
  %177 = call zeroext i1 @_ZltILi4EEb7ap_uintIXT_EEi(i8 %176, i32 1)
  br i1 %177, label %178, label %233

; <label>:178                                     ; preds = %171
  %179 = load i32* %c, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [1 x i64]* %sum, i32 0, i64 %180
  %182 = load i64* %181, align 8
  %183 = call i8 @_ZmlILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %j, i32 1)
  %184 = getelementptr %class.ap_uint.1* %17, i32 0, i32 0
  %185 = bitcast [1 x i8]* %184 to i8*
  store i8 %183, i8* %185, align 1
  %186 = load i32* %c, align 4
  %187 = call i8 @_ZplILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %17, i32 %186)
  %188 = getelementptr %class.ap_uint.1* %18, i32 0, i32 0
  %189 = bitcast [1 x i8]* %188 to i8*
  store i8 %187, i8* %189, align 1
  %190 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.1* %18)
  %191 = getelementptr inbounds [1 x i32]* %tmp_sum_vals, i32 0, i64 %190
  %192 = load i32* %191, align 4
  %193 = zext i32 %192 to i64
  %194 = add i64 %182, %193
  %195 = load i32* %c, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [1 x i64]* %sum, i32 0, i64 %196
  store i64 %194, i64* %197, align 8
  %198 = load i32* %c, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [1 x %class.ap_uint]* %var, i32 0, i64 %199
  %201 = load i32* %c, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [1 x %class.ap_uint]* %var, i32 0, i64 %202
  %204 = bitcast %class.ap_uint* %21 to i8*
  %205 = bitcast %class.ap_uint* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %204, i8* %205, i64 8, i32 1, i1 false)
  %206 = call i8 @_ZmlILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %j, i32 1)
  %207 = getelementptr %class.ap_uint.1* %23, i32 0, i32 0
  %208 = bitcast [1 x i8]* %207 to i8*
  store i8 %206, i8* %208, align 1
  %209 = load i32* %c, align 4
  %210 = call i8 @_ZplILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %23, i32 %209)
  %211 = getelementptr %class.ap_uint.1* %24, i32 0, i32 0
  %212 = bitcast [1 x i8]* %211 to i8*
  store i8 %210, i8* %212, align 1
  %213 = call i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.1* %24)
  %214 = getelementptr inbounds [1 x %class.ap_uint.2]* %tmp_var_vals, i32 0, i64 %213
  call void @_ZN7ap_uintILi64EEC1ILi45EEERKS_IXT_EE(%class.ap_uint* %22, %class.ap_uint.2* %214)
  %215 = getelementptr %class.ap_uint* %21, i32 0, i32 0
  %216 = bitcast [8 x i8]* %215 to i64*
  %217 = load i64* %216, align 1
  %218 = getelementptr %class.ap_uint* %22, i32 0, i32 0
  %219 = bitcast [8 x i8]* %218 to i64*
  %220 = load i64* %219, align 1
  %221 = call { i64, i64 } @_ZplILi64ELi64EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i64 %217, i64 %220)
  %222 = getelementptr %class.ap_int* %20, i32 0, i32 0
  %223 = bitcast [16 x i8]* %222 to { i64, i64 }*
  %224 = getelementptr { i64, i64 }* %223, i32 0, i32 0
  %225 = extractvalue { i64, i64 } %221, 0
  store i64 %225, i64* %224, align 1
  %226 = getelementptr { i64, i64 }* %223, i32 0, i32 1
  %227 = extractvalue { i64, i64 } %221, 1
  store i64 %227, i64* %226, align 1
  call void @_ZN7ap_uintILi64EEC1ILi128EEERK6ap_intIXT_EE(%class.ap_uint* %19, %class.ap_int* %20)
  %228 = call %class.ap_uint* @_ZN7ap_uintILi64EEaSERKS0_(%class.ap_uint* %200, %class.ap_uint* %19)
  br label %229

; <label>:229                                     ; preds = %178
  %230 = call i8 @_ZN7ap_uintILi4EEppEi(%class.ap_uint.1* %j, i32 0)
  %231 = getelementptr %class.ap_uint.1* %25, i32 0, i32 0
  %232 = bitcast [1 x i8]* %231 to i8*
  store i8 %230, i8* %232, align 1
  br label %171

; <label>:233                                     ; preds = %171
  br label %234

; <label>:234                                     ; preds = %233
  %235 = load i32* %c, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %c, align 4
  br label %166

; <label>:237                                     ; preds = %166
  call void @_ZN7ap_uintILi16EEC1Ei(%class.ap_uint.4* %mean_acc, i32 0)
  call void @_ZN7ap_uintILi16EEC1Ei(%class.ap_uint.4* %stddev_acc, i32 0)
  store i32 0, i32* %c2, align 4
  br label %238

; <label>:238                                     ; preds = %302, %237
  %239 = load i32* %c2, align 4
  %240 = icmp slt i32 %239, 1
  br i1 %240, label %241, label %305

; <label>:241                                     ; preds = %238
  store i32 0, i32* %tempmean, align 4
  %242 = load i32* %c2, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [1 x i64]* %sum, i32 0, i64 %243
  %245 = load i64* %244, align 8
  call void @_ZN7ap_uintILi64EEC1Em(%class.ap_uint* %27, i64 %245)
  %246 = call i64 @_ZmlILi64EE7ap_uintIXT_EEiRKS1_(i32 256, %class.ap_uint* %27)
  %247 = getelementptr %class.ap_uint* %26, i32 0, i32 0
  %248 = bitcast [8 x i8]* %247 to i64*
  store i64 %246, i64* %248, align 1
  %249 = load i16* %5, align 2
  %250 = zext i16 %249 to i32
  %251 = load i16* %4, align 2
  %252 = zext i16 %251 to i32
  %253 = mul nsw i32 %250, %252
  %254 = call i64 @_ZdvILi64EE7ap_uintIXT_EERKS1_i(%class.ap_uint* %26, i32 %253)
  %255 = getelementptr %class.ap_uint* %28, i32 0, i32 0
  %256 = bitcast [8 x i8]* %255 to i64*
  store i64 %254, i64* %256, align 1
  %257 = call i64 @_ZNK7ap_uintILi64EEcvmEv(%class.ap_uint* %28)
  %258 = trunc i64 %257 to i16
  %259 = zext i16 %258 to i32
  store i32 %259, i32* %tempmean, align 4
  %260 = load i32* %tempmean, align 4
  %261 = zext i32 %260 to i64
  %262 = load i32* %c2, align 4
  %263 = mul nsw i32 %262, 16
  %264 = add nsw i32 %263, 15
  %265 = load i32* %c2, align 4
  %266 = mul nsw i32 %265, 16
  %267 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.4* %mean_acc, i32 %264, i32 %266)
  store i64 %261, i64* %267
  %268 = load i32* %c2, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [1 x %class.ap_uint]* %var, i32 0, i64 %269
  %271 = call i64 @_ZmlILi64EE7ap_uintIXT_EEiRKS1_(i32 65536, %class.ap_uint* %270)
  %272 = getelementptr %class.ap_uint* %31, i32 0, i32 0
  %273 = bitcast [8 x i8]* %272 to i64*
  store i64 %271, i64* %273, align 1
  %274 = load i16* %5, align 2
  %275 = zext i16 %274 to i32
  %276 = load i16* %4, align 2
  %277 = zext i16 %276 to i32
  %278 = mul nsw i32 %275, %277
  %279 = call i64 @_ZdvILi64EE7ap_uintIXT_EERKS1_i(%class.ap_uint* %31, i32 %278)
  %280 = getelementptr %class.ap_uint* %30, i32 0, i32 0
  %281 = bitcast [8 x i8]* %280 to i64*
  store i64 %279, i64* %281, align 1
  call void @_ZN7ap_uintILi32EEC1ILi64EEERKS_IXT_EE(%class.ap_uint.5* %29, %class.ap_uint* %30)
  %282 = call i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.5* %29)
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %temp3, align 4
  %284 = load i32* %temp3, align 4
  %285 = load i32* %tempmean, align 4
  %286 = load i32* %tempmean, align 4
  %287 = mul i32 %285, %286
  %288 = sub i32 %284, %287
  store i32 %288, i32* %Varstddev, align 4
  %289 = load i32* %Varstddev, align 4
  %290 = lshr i32 %289, 16
  %291 = shl i32 %290, 16
  store i32 %291, i32* %t1, align 4
  %292 = load i32* %t1, align 4
  %293 = call i32 @_ZL14p_ZN2xf4SqrtEjj(i32 %292)
  %294 = trunc i32 %293 to i16
  %295 = zext i16 %294 to i64
  %296 = load i32* %c2, align 4
  %297 = mul nsw i32 %296, 16
  %298 = add nsw i32 %297, 15
  %299 = load i32* %c2, align 4
  %300 = mul nsw i32 %299, 16
  %301 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.4* %stddev_acc, i32 %298, i32 %300)
  store i64 %295, i64* %301
  br label %302

; <label>:302                                     ; preds = %241
  %303 = load i32* %c2, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %c2, align 4
  br label %238

; <label>:305                                     ; preds = %238
  store i32 0, i32* %i, align 4
  br label %306

; <label>:306                                     ; preds = %334, %305
  %307 = load i32* %i, align 4
  %308 = icmp slt i32 %307, 1
  br i1 %308, label %309, label %337

; <label>:309                                     ; preds = %306
  %310 = load i32* %i, align 4
  %311 = mul nsw i32 %310, 16
  %312 = add nsw i32 %311, 15
  %313 = load i32* %i, align 4
  %314 = mul nsw i32 %313, 16
  %315 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.4* %mean_acc, i32 %312, i32 %314)
  %316 = load i64* %315
  %317 = trunc i64 %316 to i16
  %318 = load i32* %i, align 4
  %319 = sext i32 %318 to i64
  %320 = load i16** %2, align 8
  %321 = getelementptr inbounds i16* %320, i64 %319
  store i16 %317, i16* %321, align 2
  %322 = load i32* %i, align 4
  %323 = mul nsw i32 %322, 16
  %324 = add nsw i32 %323, 15
  %325 = load i32* %i, align 4
  %326 = mul nsw i32 %325, 16
  %327 = call i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.4* %stddev_acc, i32 %324, i32 %326)
  %328 = load i64* %327
  %329 = trunc i64 %328 to i16
  %330 = load i32* %i, align 4
  %331 = sext i32 %330 to i64
  %332 = load i16** %3, align 8
  %333 = getelementptr inbounds i16* %332, i64 %331
  store i16 %329, i16* %333, align 2
  br label %334

; <label>:334                                     ; preds = %309
  %335 = load i32* %i, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %i, align 4
  br label %306

; <label>:337                                     ; preds = %306
  ret void
}

declare void @_ZN7ap_uintILi4EEC1Ev(%class.ap_uint.1*)

declare void @_ZN7ap_uintILi45EEC1Ev(%class.ap_uint.2*)

declare void @_ZN7ap_uintILi64EEC1Ev(%class.ap_uint*)

declare %class.ap_uint.1* @_ZN7ap_uintILi4EEaSEi(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZltILi4EEb7ap_uintIXT_EEi(i8, i32)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare i64 @_ZNK7ap_uintILi4EEcvmEv(%class.ap_uint.1*)

declare %class.ap_uint.2* @_ZN7ap_uintILi45EEaSEi(%class.ap_uint.2*, i32)

declare i8 @_ZN7ap_uintILi4EEppEi(%class.ap_uint.1*, i32)

declare %class.ap_uint* @_ZN7ap_uintILi64EEaSEi(%class.ap_uint*, i32)

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.3*)

declare %class.ap_uint.3* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.3*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16, i32)

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

declare void @_ZN7ap_uintILi8EEC1Em(%class.ap_uint.0*, i64)

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0*, i32, i32)

declare i8 @_ZplILi8EE7ap_uintIXT_EEjRKS1_(i32, %class.ap_uint.0*)

declare i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint.0*)

declare %class.ap_uint.2* @_ZpLILi45EER7ap_uintIXT_EES2_t(%class.ap_uint.2*, i16 zeroext)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.3*, i32)

declare i8 @_ZplILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1*, i32)

declare i8 @_ZmlILi4EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1*, i32)

declare %class.ap_uint* @_ZN7ap_uintILi64EEaSERKS0_(%class.ap_uint*, %class.ap_uint*)

declare void @_ZN7ap_uintILi64EEC1ILi128EEERK6ap_intIXT_EE(%class.ap_uint*, %class.ap_int*)

declare { i64, i64 } @_ZplILi64ELi64EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i64, i64)

declare void @_ZN7ap_uintILi64EEC1ILi45EEERKS_IXT_EE(%class.ap_uint*, %class.ap_uint.2*)

declare void @_ZN7ap_uintILi16EEC1Ei(%class.ap_uint.4*, i32)

declare i64 @_ZdvILi64EE7ap_uintIXT_EERKS1_i(%class.ap_uint*, i32)

declare i64 @_ZmlILi64EE7ap_uintIXT_EEiRKS1_(i32, %class.ap_uint*)

declare void @_ZN7ap_uintILi64EEC1Em(%class.ap_uint*, i64)

declare i64 @_ZNK7ap_uintILi64EEcvmEv(%class.ap_uint*)

declare i64* @_ZN7ap_uintILi16EE5rangeEii(%class.ap_uint.4*, i32, i32)

declare void @_ZN7ap_uintILi32EEC1ILi64EEERKS_IXT_EE(%class.ap_uint.5*, %class.ap_uint*)

declare i64 @_ZNK7ap_uintILi32EEcvmEv(%class.ap_uint.5*)

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

declare i64* @_ZN7ap_uintILi64EE5rangeEii(%class.ap_uint*, i32, i32)

declare i64 @_ZN3hls6streamI7ap_uintILi64EEE4readEv(%"class.hls::stream"*)

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

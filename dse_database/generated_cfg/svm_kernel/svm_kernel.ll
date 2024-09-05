; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/svm_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_int = type { [4 x i8] }
%struct.xf_Mat_2_1_200_1_ = type { i8, i32, i32, i32, %class.ap_uint* }
%class.ap_uint = type { [2 x i8] }

@.str = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL36p_ZN2xf14Mat_2_1_200_1_4initIEEiib_1P17xf_Mat_2_1_200_1_iib = private unnamed_addr constant [86 x i8] c"void p_ZN2xf14Mat_2_1_200_1_4initIEEiib_1(struct xf_Mat_2_1_200_1_ *, int, int, bool)\00", align 1

define void @_Z9svm_accelP6ap_intILi32EES1_iitttttPhS1_(%class.ap_int* %img_inp1, %class.ap_int* %img_inp2, i32 %rows, i32 %cols, i16 zeroext %ind1, i16 zeroext %ind2, i16 zeroext %frac1, i16 zeroext %frac2, i16 zeroext %n, i8* %out_frac, %class.ap_int* %resultFIX) uwtable {
  %1 = alloca %class.ap_int*, align 8
  %2 = alloca %class.ap_int*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca %class.ap_int*, align 8
  %Input1 = alloca %struct.xf_Mat_2_1_200_1_, align 8
  %Input2 = alloca %struct.xf_Mat_2_1_200_1_, align 8
  %out_frac_tmp = alloca i8, align 1
  %resultFIX_tmp = alloca %class.ap_int, align 1
  store %class.ap_int* %img_inp1, %class.ap_int** %1, align 8
  store %class.ap_int* %img_inp2, %class.ap_int** %2, align 8
  store i32 %rows, i32* %3, align 4
  store i32 %cols, i32* %4, align 4
  store i16 %ind1, i16* %5, align 2
  store i16 %ind2, i16* %6, align 2
  store i16 %frac1, i16* %7, align 2
  store i16 %frac2, i16* %8, align 2
  store i16 %n, i16* %9, align 2
  store i8* %out_frac, i8** %10, align 8
  store %class.ap_int* %resultFIX, %class.ap_int** %11, align 8
  %12 = load i32* %3, align 4
  %13 = load i32* %4, align 4
  %14 = load %class.ap_int** %1, align 8
  %15 = bitcast %class.ap_int* %14 to i8*
  call void @_ZL34p_ZN2xf14Mat_2_1_200_1_C2IEEiiPv_1P17xf_Mat_2_1_200_1_iiPv(%struct.xf_Mat_2_1_200_1_* %Input1, i32 %12, i32 %13, i8* %15)
  %16 = load i32* %3, align 4
  %17 = load i32* %4, align 4
  %18 = load %class.ap_int** %2, align 8
  %19 = bitcast %class.ap_int* %18 to i8*
  call void @_ZL34p_ZN2xf14Mat_2_1_200_1_C2IEEiiPv_1P17xf_Mat_2_1_200_1_iiPv(%struct.xf_Mat_2_1_200_1_* %Input2, i32 %16, i32 %17, i8* %19)
  call void @_ZN6ap_intILi32EEC1Ev(%class.ap_int* %resultFIX_tmp)
  %20 = load i16* %5, align 2
  %21 = load i16* %6, align 2
  %22 = load i16* %7, align 2
  %23 = trunc i16 %22 to i8
  %24 = load i16* %8, align 2
  %25 = trunc i16 %24 to i8
  %26 = load i16* %9, align 2
  call void @_ZL130p_ZN2xf3SVMILi2ELi2ELi5ELi1ELi200ELi1ELi200ELi1ELi200EEER3MatILi2ELi1ELi200ELi1EER3MatILi2ELi1ELi200ELi1EEtthhtPhP6ap_intILi32EE_1R17xf_Mat_2_1_200_1_S0_tthhtPhP6ap_intILi32EE(%struct.xf_Mat_2_1_200_1_* %Input1, %struct.xf_Mat_2_1_200_1_* %Input2, i16 zeroext %20, i16 zeroext %21, i8 zeroext %23, i8 zeroext %25, i16 zeroext %26, i8* %out_frac_tmp, %class.ap_int* %resultFIX_tmp)
  %27 = load i8* %out_frac_tmp, align 1
  %28 = load i8** %10, align 8
  %29 = getelementptr inbounds i8* %28, i64 0
  store i8 %27, i8* %29, align 1
  %30 = load %class.ap_int** %11, align 8
  %31 = getelementptr inbounds %class.ap_int* %30, i64 0
  %32 = call %class.ap_int* @_ZN6ap_intILi32EEaSERKS0_(%class.ap_int* %31, %class.ap_int* %resultFIX_tmp)
  ret void
}

define internal void @_ZL34p_ZN2xf14Mat_2_1_200_1_C2IEEiiPv_1P17xf_Mat_2_1_200_1_iiPv(%struct.xf_Mat_2_1_200_1_* %this_, i32 %_rows, i32 %_cols, i8* %_data) uwtable {
  %1 = alloca %struct.xf_Mat_2_1_200_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.xf_Mat_2_1_200_1_* %this_, %struct.xf_Mat_2_1_200_1_** %1, align 8
  store i32 %_rows, i32* %2, align 4
  store i32 %_cols, i32* %3, align 4
  store i8* %_data, i8** %4, align 8
  %5 = load %struct.xf_Mat_2_1_200_1_** %1, align 8
  %6 = load i32* %2, align 4
  %7 = load i32* %3, align 4
  call void @_ZL36p_ZN2xf14Mat_2_1_200_1_4initIEEiib_1P17xf_Mat_2_1_200_1_iib(%struct.xf_Mat_2_1_200_1_* %5, i32 %6, i32 %7, i1 zeroext true)
  %8 = load i8** %4, align 8
  %9 = bitcast i8* %8 to %class.ap_uint*
  %10 = load %struct.xf_Mat_2_1_200_1_** %1, align 8
  %11 = getelementptr inbounds %struct.xf_Mat_2_1_200_1_* %10, i32 0, i32 4
  store %class.ap_uint* %9, %class.ap_uint** %11, align 8
  ret void
}

declare void @_ZN6ap_intILi32EEC1Ev(%class.ap_int*)

define internal void @_ZL130p_ZN2xf3SVMILi2ELi2ELi5ELi1ELi200ELi1ELi200ELi1ELi200EEER3MatILi2ELi1ELi200ELi1EER3MatILi2ELi1ELi200ELi1EEtthhtPhP6ap_intILi32EE_1R17xf_Mat_2_1_200_1_S0_tthhtPhP6ap_intILi32EE(%struct.xf_Mat_2_1_200_1_* %in_1, %struct.xf_Mat_2_1_200_1_* %in_2, i16 zeroext %idx1, i16 zeroext %idx2, i8 zeroext %frac1, i8 zeroext %frac2, i16 zeroext %n, i8* %out_frac, %class.ap_int* %result) uwtable {
  %1 = alloca %struct.xf_Mat_2_1_200_1_*, align 8
  %2 = alloca %struct.xf_Mat_2_1_200_1_*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i8*, align 8
  %9 = alloca %class.ap_int*, align 8
  %svm_res = alloca %class.ap_int, align 1
  store %struct.xf_Mat_2_1_200_1_* %in_1, %struct.xf_Mat_2_1_200_1_** %1, align 8
  store %struct.xf_Mat_2_1_200_1_* %in_2, %struct.xf_Mat_2_1_200_1_** %2, align 8
  store i16 %idx1, i16* %3, align 2
  store i16 %idx2, i16* %4, align 2
  store i8 %frac1, i8* %5, align 1
  store i8 %frac2, i8* %6, align 1
  store i16 %n, i16* %7, align 2
  store i8* %out_frac, i8** %8, align 8
  store %class.ap_int* %result, %class.ap_int** %9, align 8
  %10 = load %struct.xf_Mat_2_1_200_1_** %1, align 8
  %11 = load %struct.xf_Mat_2_1_200_1_** %2, align 8
  %12 = load i16* %3, align 2
  %13 = load i16* %4, align 2
  %14 = load i8* %5, align 1
  %15 = load i8* %6, align 1
  %16 = load i16* %7, align 2
  %17 = load i8** %8, align 8
  %18 = call i32 @_ZL117p_ZN2xf5xfSVMILi2ELi2ELi5ELi1ELi200ELi1ELi200ELi1ELi200EEER3MatILi2ELi1ELi200ELi1EER3MatILi2ELi1ELi200ELi1EEtthhtPh_1R17xf_Mat_2_1_200_1_S0_tthhtPh(%struct.xf_Mat_2_1_200_1_* %10, %struct.xf_Mat_2_1_200_1_* %11, i16 zeroext %12, i16 zeroext %13, i8 zeroext %14, i8 zeroext %15, i16 zeroext %16, i8* %17)
  %19 = getelementptr %class.ap_int* %svm_res, i32 0, i32 0
  %20 = bitcast [4 x i8]* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = load %class.ap_int** %9, align 8
  %22 = call %class.ap_int* @_ZN6ap_intILi32EEaSERKS0_(%class.ap_int* %21, %class.ap_int* %svm_res)
  ret void
}

declare %class.ap_int* @_ZN6ap_intILi32EEaSERKS0_(%class.ap_int*, %class.ap_int*)

define internal i32 @_ZL117p_ZN2xf5xfSVMILi2ELi2ELi5ELi1ELi200ELi1ELi200ELi1ELi200EEER3MatILi2ELi1ELi200ELi1EER3MatILi2ELi1ELi200ELi1EEtthhtPh_1R17xf_Mat_2_1_200_1_S0_tthhtPh(%struct.xf_Mat_2_1_200_1_* %in_1, %struct.xf_Mat_2_1_200_1_* %in_2, i16 zeroext %idx1, i16 zeroext %idx2, i8 zeroext %frac1, i8 zeroext %frac2, i16 zeroext %n, i8* %out_frac) uwtable {
  %1 = alloca %class.ap_int, align 1
  %2 = alloca %struct.xf_Mat_2_1_200_1_*, align 8
  %3 = alloca %struct.xf_Mat_2_1_200_1_*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %i = alloca i32, align 4
  %tmp_svm = alloca %class.ap_int, align 1
  %10 = alloca %class.ap_uint, align 1
  %11 = alloca %class.ap_uint, align 1
  %12 = alloca %class.ap_int, align 1
  store %struct.xf_Mat_2_1_200_1_* %in_1, %struct.xf_Mat_2_1_200_1_** %2, align 8
  store %struct.xf_Mat_2_1_200_1_* %in_2, %struct.xf_Mat_2_1_200_1_** %3, align 8
  store i16 %idx1, i16* %4, align 2
  store i16 %idx2, i16* %5, align 2
  store i8 %frac1, i8* %6, align 1
  store i8 %frac2, i8* %7, align 1
  store i16 %n, i16* %8, align 2
  store i8* %out_frac, i8** %9, align 8
  call void @_ZN6ap_intILi32EEC1Ei(%class.ap_int* %1, i32 0)
  br label %13

; <label>:13                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %51, %13
  %15 = load i32* %i, align 4
  %16 = load i16* %8, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %54

; <label>:19                                      ; preds = %14
  %20 = load %struct.xf_Mat_2_1_200_1_** %2, align 8
  %21 = load i16* %4, align 2
  %22 = zext i16 %21 to i32
  %23 = load i32* %i, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i16 @_ZL34p_ZN2xf14Mat_2_1_200_1_4readIEEi_1P17xf_Mat_2_1_200_1_i(%struct.xf_Mat_2_1_200_1_* %20, i32 %24)
  %26 = getelementptr %class.ap_uint* %10, i32 0, i32 0
  %27 = bitcast [2 x i8]* %26 to i16*
  store i16 %25, i16* %27, align 1
  %28 = load %struct.xf_Mat_2_1_200_1_** %3, align 8
  %29 = load i16* %5, align 2
  %30 = zext i16 %29 to i32
  %31 = load i32* %i, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i16 @_ZL34p_ZN2xf14Mat_2_1_200_1_4readIEEi_1P17xf_Mat_2_1_200_1_i(%struct.xf_Mat_2_1_200_1_* %28, i32 %32)
  %34 = getelementptr %class.ap_uint* %11, i32 0, i32 0
  %35 = bitcast [2 x i8]* %34 to i16*
  store i16 %33, i16* %35, align 1
  %36 = getelementptr %class.ap_uint* %10, i32 0, i32 0
  %37 = bitcast [2 x i8]* %36 to i16*
  %38 = load i16* %37, align 1
  %39 = getelementptr %class.ap_uint* %11, i32 0, i32 0
  %40 = bitcast [2 x i8]* %39 to i16*
  %41 = load i16* %40, align 1
  %42 = call i32 @_ZmlILi16ELi16EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %38, i16 %41)
  %43 = getelementptr %class.ap_int* %tmp_svm, i32 0, i32 0
  %44 = bitcast [4 x i8]* %43 to i32*
  store i32 %42, i32* %44, align 1
  %45 = bitcast %class.ap_int* %12 to i8*
  %46 = bitcast %class.ap_int* %tmp_svm to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 4, i32 1, i1 false)
  %47 = getelementptr %class.ap_int* %12, i32 0, i32 0
  %48 = bitcast [4 x i8]* %47 to i32*
  %49 = load i32* %48, align 1
  %50 = call %class.ap_int* @_ZpLILi32ELi32EER6ap_intIXT_EES2_S0_IXT0_EE(%class.ap_int* %1, i32 %49)
  br label %51

; <label>:51                                      ; preds = %19
  %52 = load i32* %i, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %i, align 4
  br label %14

; <label>:54                                      ; preds = %14
  %55 = load i8* %6, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8* %7, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %56, %58
  %60 = trunc i32 %59 to i8
  %61 = load i8** %9, align 8
  store i8 %60, i8* %61, align 1
  %62 = getelementptr %class.ap_int* %1, i32 0, i32 0
  %63 = bitcast [4 x i8]* %62 to i32*
  %64 = load i32* %63, align 1
  ret i32 %64
}

declare void @_ZN6ap_intILi32EEC1Ei(%class.ap_int*, i32)

declare i32 @_ZmlILi16ELi16EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

define internal i16 @_ZL34p_ZN2xf14Mat_2_1_200_1_4readIEEi_1P17xf_Mat_2_1_200_1_i(%struct.xf_Mat_2_1_200_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint, align 1
  %2 = alloca %struct.xf_Mat_2_1_200_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_2_1_200_1_* %this_, %struct.xf_Mat_2_1_200_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_2_1_200_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_2_1_200_1_* %6, i32 0, i32 4
  %8 = load %class.ap_uint** %7, align 8
  %9 = getelementptr inbounds %class.ap_uint* %8, i64 %5
  %10 = bitcast %class.ap_uint* %1 to i8*
  %11 = bitcast %class.ap_uint* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 2, i32 1, i1 false)
  %12 = getelementptr %class.ap_uint* %1, i32 0, i32 0
  %13 = bitcast [2 x i8]* %12 to i16*
  %14 = load i16* %13, align 1
  ret i16 %14
}

declare %class.ap_int* @_ZpLILi32ELi32EER6ap_intIXT_EES2_S0_IXT0_EE(%class.ap_int*, i32)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define internal void @_ZL36p_ZN2xf14Mat_2_1_200_1_4initIEEiib_1P17xf_Mat_2_1_200_1_iib(%struct.xf_Mat_2_1_200_1_* %this_, i32 %_rows, i32 %_cols, i1 zeroext %allocate) nounwind uwtable {
  %1 = alloca %struct.xf_Mat_2_1_200_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.xf_Mat_2_1_200_1_* %this_, %struct.xf_Mat_2_1_200_1_** %1, align 8
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
  %16 = icmp sle i32 %15, 200
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %14
  br label %20

; <label>:18                                      ; preds = %14, %11, %8, %0
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([86 x i8]* @__PRETTY_FUNCTION__._ZL36p_ZN2xf14Mat_2_1_200_1_4initIEEiib_1P17xf_Mat_2_1_200_1_iib, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load i32* %2, align 4
  %22 = load %struct.xf_Mat_2_1_200_1_** %1, align 8
  %23 = getelementptr inbounds %struct.xf_Mat_2_1_200_1_* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32* %3, align 4
  %25 = load %struct.xf_Mat_2_1_200_1_** %1, align 8
  %26 = getelementptr inbounds %struct.xf_Mat_2_1_200_1_* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32* %2, align 4
  %28 = load i32* %3, align 4
  %29 = ashr i32 %28, 0
  %30 = mul nsw i32 %27, %29
  %31 = load %struct.xf_Mat_2_1_200_1_** %1, align 8
  %32 = getelementptr inbounds %struct.xf_Mat_2_1_200_1_* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i8* %4, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %20
  br label %36

; <label>:36                                      ; preds = %35, %20
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

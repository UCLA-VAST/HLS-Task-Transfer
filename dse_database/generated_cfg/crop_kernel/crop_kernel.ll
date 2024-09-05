; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/crop_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_uint = type { [1 x i8] }
%struct.xf_Rect_unsigned_int_ = type { i32, i32, i32, i32 }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint] }
%struct.xf_accel_utils = type { i8 }
%"class.hls::stream" = type { %class.ap_uint }
%class.ap_uint.0 = type { [2 x i8] }
%class.ap_int = type { [4 x i8] }

@.str = private unnamed_addr constant [32 x i8] c"started loading rect execution\0A\00", align 1
@.str1 = private unnamed_addr constant [93 x i8] c"((height <= ROWS ) && (width <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"xf_crop.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL105p_ZN2xf4cropILi0ELi256ELi256ELi0ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjE_1R19xf_Mat_0_256_256_1_S0_R21xf_Rect_unsigned_int_ = private unnamed_addr constant [203 x i8] c"void p_ZN2xf4cropILi0ELi256ELi256ELi0ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjE_1(struct xf_Mat_0_256_256_1_ &, struct xf_Mat_0_256_256_1_ &, struct xf_Rect_unsigned_int_ &)\00", align 1
@.str3 = private unnamed_addr constant [116 x i8] c"((roi.height <= height ) && (roi.width <= width)) && \22ROI dimensions should be smaller or equal to the input image\22\00", align 1
@.str4 = private unnamed_addr constant [84 x i8] c"((roi.height > 0 ) && (roi.width > 0)) && \22ROI dimensions should be greater than 0\22\00", align 1
@.str5 = private unnamed_addr constant [109 x i8] c"((roi.height + roi.y <= height ) && (roi.width + roi.x <= width)) && \22ROI area exceeds the input image area\22\00", align 1
@.str6 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1

define void @_Z10crop_accelP7ap_uintILi8EES1_S1_S1_Piii(%class.ap_uint* %img_in, %class.ap_uint* %_dst, %class.ap_uint* %_dst1, %class.ap_uint* %_dst2, i32* %roi, i32 %height, i32 %width) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %3 = alloca %class.ap_uint*, align 8
  %4 = alloca %class.ap_uint*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %temp = alloca %struct.xf_Rect_unsigned_int_, align 4
  %_roi = alloca [3 x %struct.xf_Rect_unsigned_int_], align 16
  %_i0 = alloca i32, align 4
  %_l_i = alloca i32, align 4
  %_l_j = alloca i32, align 4
  %_in_l_j = alloca i32, align 4
  %data0 = alloca %struct.xf_Rect_unsigned_int_, align 4
  %data1 = alloca %struct.xf_Rect_unsigned_int_, align 4
  %data2 = alloca %struct.xf_Rect_unsigned_int_, align 4
  %temp_0 = alloca %struct.xf_Rect_unsigned_int_, align 4
  %8 = alloca %struct.xf_Rect_unsigned_int_, align 4
  %temp_1 = alloca %struct.xf_Rect_unsigned_int_, align 4
  %9 = alloca %struct.xf_Rect_unsigned_int_, align 4
  %temp_2 = alloca %struct.xf_Rect_unsigned_int_, align 4
  %10 = alloca %struct.xf_Rect_unsigned_int_, align 4
  store %class.ap_uint* %img_in, %class.ap_uint** %1, align 8
  store %class.ap_uint* %_dst, %class.ap_uint** %2, align 8
  store %class.ap_uint* %_dst1, %class.ap_uint** %3, align 8
  store %class.ap_uint* %_dst2, %class.ap_uint** %4, align 8
  store i32* %roi, i32** %5, align 8
  store i32 %height, i32* %6, align 4
  store i32 %width, i32* %7, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str, i32 0, i32 0))
  call void @_ZL35p_ZN2xf18Rect_unsigned_int_C2IEEv_1P21xf_Rect_unsigned_int_(%struct.xf_Rect_unsigned_int_* %temp)
  store i32 0, i32* %_i0, align 4
  br label %12

; <label>:12                                      ; preds = %22, %0
  %13 = load i32* %_i0, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ule i64 %14, 2
  br i1 %15, label %16, label %25

; <label>:16                                      ; preds = %12
  %17 = load i32* %_i0, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x %struct.xf_Rect_unsigned_int_]* %_roi, i32 0, i64 %18
  %20 = bitcast %struct.xf_Rect_unsigned_int_* %19 to i8*
  %21 = bitcast %struct.xf_Rect_unsigned_int_* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 4, i1 false)
  br label %22

; <label>:22                                      ; preds = %16
  %23 = load i32* %_i0, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %_i0, align 4
  br label %12

; <label>:25                                      ; preds = %12
  store i32 0, i32* %_l_i, align 4
  store i32 0, i32* %_l_j, align 4
  store i32 0, i32* %_l_j, align 4
  br label %26

; <label>:26                                      ; preds = %76, %25
  %27 = load i32* %_l_j, align 4
  %28 = icmp sle i32 %27, 2
  br i1 %28, label %29, label %79

; <label>:29                                      ; preds = %26
  %30 = load i32* %_l_j, align 4
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 4, %31
  %33 = add nsw i64 0, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %_in_l_j, align 4
  %35 = load i32* %_in_l_j, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32** %5, align 8
  %38 = getelementptr inbounds i32* %37, i64 %36
  %39 = load i32* %38, align 4
  %40 = load i32* %_l_i, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x %struct.xf_Rect_unsigned_int_]* %_roi, i32 0, i64 %41
  %43 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load i32* %_in_l_j, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = load i32** %5, align 8
  %48 = getelementptr inbounds i32* %47, i64 %46
  %49 = load i32* %48, align 4
  %50 = load i32* %_l_i, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x %struct.xf_Rect_unsigned_int_]* %_roi, i32 0, i64 %51
  %53 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load i32* %_in_l_j, align 4
  %55 = add nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = load i32** %5, align 8
  %58 = getelementptr inbounds i32* %57, i64 %56
  %59 = load i32* %58, align 4
  %60 = load i32* %_l_i, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x %struct.xf_Rect_unsigned_int_]* %_roi, i32 0, i64 %61
  %63 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %62, i32 0, i32 3
  store i32 %59, i32* %63, align 4
  %64 = load i32* %_in_l_j, align 4
  %65 = add nsw i32 %64, 3
  %66 = sext i32 %65 to i64
  %67 = load i32** %5, align 8
  %68 = getelementptr inbounds i32* %67, i64 %66
  %69 = load i32* %68, align 4
  %70 = load i32* %_l_i, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x %struct.xf_Rect_unsigned_int_]* %_roi, i32 0, i64 %71
  %73 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %72, i32 0, i32 2
  store i32 %69, i32* %73, align 4
  %74 = load i32* %_l_i, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %_l_i, align 4
  br label %76

; <label>:76                                      ; preds = %29
  %77 = load i32* %_l_j, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %_l_j, align 4
  br label %26

; <label>:79                                      ; preds = %26
  store i32 12, i32* %_l_j, align 4
  %80 = getelementptr inbounds [3 x %struct.xf_Rect_unsigned_int_]* %_roi, i32 0, i64 0
  call void @_ZL45p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1P21xf_Rect_unsigned_int_RKS_(%struct.xf_Rect_unsigned_int_* %data0, %struct.xf_Rect_unsigned_int_* %80)
  %81 = getelementptr inbounds [3 x %struct.xf_Rect_unsigned_int_]* %_roi, i32 0, i64 1
  call void @_ZL45p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1P21xf_Rect_unsigned_int_RKS_(%struct.xf_Rect_unsigned_int_* %data1, %struct.xf_Rect_unsigned_int_* %81)
  %82 = getelementptr inbounds [3 x %struct.xf_Rect_unsigned_int_]* %_roi, i32 0, i64 2
  call void @_ZL45p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1P21xf_Rect_unsigned_int_RKS_(%struct.xf_Rect_unsigned_int_* %data2, %struct.xf_Rect_unsigned_int_* %82)
  call void @_ZL45p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1P21xf_Rect_unsigned_int_RKS_(%struct.xf_Rect_unsigned_int_* %temp_0, %struct.xf_Rect_unsigned_int_* %data0)
  %83 = load %class.ap_uint** %1, align 8
  %84 = load %class.ap_uint** %2, align 8
  %85 = bitcast %struct.xf_Rect_unsigned_int_* %8 to i8*
  %86 = bitcast %struct.xf_Rect_unsigned_int_* %temp_0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 16, i32 4, i1 false)
  %87 = load i32* %6, align 4
  %88 = load i32* %7, align 4
  %89 = bitcast %struct.xf_Rect_unsigned_int_* %8 to { i64, i64 }*
  %90 = getelementptr { i64, i64 }* %89, i32 0, i32 0
  %91 = load i64* %90, align 1
  %92 = getelementptr { i64, i64 }* %89, i32 0, i32 1
  %93 = load i64* %92, align 1
  call void @_ZL17crop_one_stream_1P7ap_uintILi8EES1_21xf_Rect_unsigned_int_ii(%class.ap_uint* %83, %class.ap_uint* %84, i64 %91, i64 %93, i32 %87, i32 %88)
  call void @_ZL45p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1P21xf_Rect_unsigned_int_RKS_(%struct.xf_Rect_unsigned_int_* %temp_1, %struct.xf_Rect_unsigned_int_* %data1)
  %94 = load %class.ap_uint** %1, align 8
  %95 = load %class.ap_uint** %3, align 8
  %96 = bitcast %struct.xf_Rect_unsigned_int_* %9 to i8*
  %97 = bitcast %struct.xf_Rect_unsigned_int_* %temp_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 16, i32 4, i1 false)
  %98 = load i32* %6, align 4
  %99 = load i32* %7, align 4
  %100 = bitcast %struct.xf_Rect_unsigned_int_* %9 to { i64, i64 }*
  %101 = getelementptr { i64, i64 }* %100, i32 0, i32 0
  %102 = load i64* %101, align 1
  %103 = getelementptr { i64, i64 }* %100, i32 0, i32 1
  %104 = load i64* %103, align 1
  call void @_ZL17crop_one_stream_1P7ap_uintILi8EES1_21xf_Rect_unsigned_int_ii(%class.ap_uint* %94, %class.ap_uint* %95, i64 %102, i64 %104, i32 %98, i32 %99)
  call void @_ZL45p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1P21xf_Rect_unsigned_int_RKS_(%struct.xf_Rect_unsigned_int_* %temp_2, %struct.xf_Rect_unsigned_int_* %data2)
  %105 = load %class.ap_uint** %1, align 8
  %106 = load %class.ap_uint** %4, align 8
  %107 = bitcast %struct.xf_Rect_unsigned_int_* %10 to i8*
  %108 = bitcast %struct.xf_Rect_unsigned_int_* %temp_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 16, i32 4, i1 false)
  %109 = load i32* %6, align 4
  %110 = load i32* %7, align 4
  %111 = bitcast %struct.xf_Rect_unsigned_int_* %10 to { i64, i64 }*
  %112 = getelementptr { i64, i64 }* %111, i32 0, i32 0
  %113 = load i64* %112, align 1
  %114 = getelementptr { i64, i64 }* %111, i32 0, i32 1
  %115 = load i64* %114, align 1
  call void @_ZL17crop_one_stream_1P7ap_uintILi8EES1_21xf_Rect_unsigned_int_ii(%class.ap_uint* %105, %class.ap_uint* %106, i64 %113, i64 %115, i32 %109, i32 %110)
  ret void
}

declare i32 @printf(i8*, ...)

define internal void @_ZL35p_ZN2xf18Rect_unsigned_int_C2IEEv_1P21xf_Rect_unsigned_int_(%struct.xf_Rect_unsigned_int_* %this_) nounwind uwtable {
  %1 = alloca %struct.xf_Rect_unsigned_int_*, align 8
  store %struct.xf_Rect_unsigned_int_* %this_, %struct.xf_Rect_unsigned_int_** %1, align 8
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define internal void @_ZL45p_ZN2xf18Rect_unsigned_int_C2IEERK5Rect_IjE_1P21xf_Rect_unsigned_int_RKS_(%struct.xf_Rect_unsigned_int_* %this_, %struct.xf_Rect_unsigned_int_* %rect) nounwind uwtable {
  %1 = alloca %struct.xf_Rect_unsigned_int_*, align 8
  %2 = alloca %struct.xf_Rect_unsigned_int_*, align 8
  store %struct.xf_Rect_unsigned_int_* %this_, %struct.xf_Rect_unsigned_int_** %1, align 8
  store %struct.xf_Rect_unsigned_int_* %rect, %struct.xf_Rect_unsigned_int_** %2, align 8
  %3 = load %struct.xf_Rect_unsigned_int_** %2, align 8
  %4 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = load %struct.xf_Rect_unsigned_int_** %1, align 8
  %7 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.xf_Rect_unsigned_int_** %2, align 8
  %9 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = load %struct.xf_Rect_unsigned_int_** %1, align 8
  %12 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.xf_Rect_unsigned_int_** %2, align 8
  %14 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %13, i32 0, i32 2
  %15 = load i32* %14, align 4
  %16 = load %struct.xf_Rect_unsigned_int_** %1, align 8
  %17 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.xf_Rect_unsigned_int_** %2, align 8
  %19 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %18, i32 0, i32 3
  %20 = load i32* %19, align 4
  %21 = load %struct.xf_Rect_unsigned_int_** %1, align 8
  %22 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  ret void
}

define internal void @_ZL17crop_one_stream_1P7ap_uintILi8EES1_21xf_Rect_unsigned_int_ii(%class.ap_uint* %img_in, %class.ap_uint* %_dst, i64 %roi.coerce0, i64 %roi.coerce1, i32 %height, i32 %width) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %roi = alloca %struct.xf_Rect_unsigned_int_, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  %out_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_in, %class.ap_uint** %1, align 8
  store %class.ap_uint* %_dst, %class.ap_uint** %2, align 8
  %5 = bitcast %struct.xf_Rect_unsigned_int_* %roi to { i64, i64 }*
  %6 = getelementptr { i64, i64 }* %5, i32 0, i32 0
  store i64 %roi.coerce0, i64* %6
  %7 = getelementptr { i64, i64 }* %5, i32 0, i32 1
  store i64 %roi.coerce1, i64* %7
  store i32 %height, i32* %3, align 4
  store i32 %width, i32* %4, align 4
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %in_mat)
  %8 = load i32* %3, align 4
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32* %4, align 4
  %11 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %in_mat, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %out_mat)
  call void @_ZL33p_ZN2xf16Mat_0_256_256_1_C2IEEv_1P19xf_Mat_0_256_256_1_(%struct.xf_Mat_0_256_256_1_* %out_mat)
  %12 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %roi, i32 0, i32 3
  %13 = load i32* %12, align 4
  %14 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %roi, i32 0, i32 2
  %16 = load i32* %15, align 4
  %17 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %out_mat, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load %class.ap_uint** %1, align 8
  call void @_ZL91p_ZN2xf11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi8EER19xf_Mat_0_256_256_1_(%class.ap_uint* %18, %struct.xf_Mat_0_256_256_1_* %in_mat)
  call void @_ZL105p_ZN2xf4cropILi0ELi256ELi256ELi0ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjE_1R19xf_Mat_0_256_256_1_S0_R21xf_Rect_unsigned_int_(%struct.xf_Mat_0_256_256_1_* %in_mat, %struct.xf_Mat_0_256_256_1_* %out_mat, %struct.xf_Rect_unsigned_int_* %roi)
  %19 = load %class.ap_uint** %2, align 8
  call void @_ZL91p_ZN2xf11xfMat2ArrayILi8ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi8EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %out_mat, %class.ap_uint* %19)
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

define internal void @_ZL91p_ZN2xf11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi8EER19xf_Mat_0_256_256_1_(%class.ap_uint* %srcPtr, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %class.ap_uint* %srcPtr, %class.ap_uint** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %dstMat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  %3 = load %class.ap_uint** %1, align 8
  %4 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  call void @_ZL104p_ZN2xf11accel_utils11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi8EER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %au, %class.ap_uint* %3, %struct.xf_Mat_0_256_256_1_* %4)
  ret void
}

define internal void @_ZL105p_ZN2xf4cropILi0ELi256ELi256ELi0ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjE_1R19xf_Mat_0_256_256_1_S0_R21xf_Rect_unsigned_int_(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Rect_unsigned_int_* %roi) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Rect_unsigned_int_*, align 8
  %width = alloca i16, align 2
  %height = alloca i16, align 2
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Rect_unsigned_int_* %roi, %struct.xf_Rect_unsigned_int_** %3, align 8
  %4 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %5 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %4, i32 0, i32 2
  %6 = load i32* %5, align 4
  %7 = trunc i32 %6 to i16
  store i16 %7, i16* %width, align 2
  %8 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %9 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %height, align 2
  %12 = load i16* %height, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp sle i32 %13, 256
  br i1 %14, label %15, label %20

; <label>:15                                      ; preds = %0
  %16 = load i16* %width, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp sle i32 %17, 256
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %15
  br label %22

; <label>:20                                      ; preds = %15, %0
  call void @__assert_fail(i8* getelementptr inbounds ([93 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0), i32 311, i8* getelementptr inbounds ([203 x i8]* @__PRETTY_FUNCTION__._ZL105p_ZN2xf4cropILi0ELi256ELi256ELi0ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjE_1R19xf_Mat_0_256_256_1_S0_R21xf_Rect_unsigned_int_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %24 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %23, i32 0, i32 3
  %25 = load i32* %24, align 4
  %26 = load i16* %height, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ule i32 %25, %27
  br i1 %28, label %29, label %37

; <label>:29                                      ; preds = %22
  %30 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %31 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %30, i32 0, i32 2
  %32 = load i32* %31, align 4
  %33 = load i16* %width, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp ule i32 %32, %34
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %29
  br label %39

; <label>:37                                      ; preds = %29, %22
  call void @__assert_fail(i8* getelementptr inbounds ([116 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0), i32 312, i8* getelementptr inbounds ([203 x i8]* @__PRETTY_FUNCTION__._ZL105p_ZN2xf4cropILi0ELi256ELi256ELi0ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjE_1R19xf_Mat_0_256_256_1_S0_R21xf_Rect_unsigned_int_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %39

; <label>:39                                      ; preds = %38, %36
  %40 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %41 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %40, i32 0, i32 3
  %42 = load i32* %41, align 4
  %43 = icmp ugt i32 %42, 0
  br i1 %43, label %44, label %50

; <label>:44                                      ; preds = %39
  %45 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %46 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %45, i32 0, i32 2
  %47 = load i32* %46, align 4
  %48 = icmp ugt i32 %47, 0
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %44
  br label %52

; <label>:50                                      ; preds = %44, %39
  call void @__assert_fail(i8* getelementptr inbounds ([84 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0), i32 313, i8* getelementptr inbounds ([203 x i8]* @__PRETTY_FUNCTION__._ZL105p_ZN2xf4cropILi0ELi256ELi256ELi0ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjE_1R19xf_Mat_0_256_256_1_S0_R21xf_Rect_unsigned_int_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %52

; <label>:52                                      ; preds = %51, %49
  %53 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %54 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %53, i32 0, i32 3
  %55 = load i32* %54, align 4
  %56 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %57 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %56, i32 0, i32 1
  %58 = load i32* %57, align 4
  %59 = add i32 %55, %58
  %60 = load i16* %height, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp ule i32 %59, %61
  br i1 %62, label %63, label %75

; <label>:63                                      ; preds = %52
  %64 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %65 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %64, i32 0, i32 2
  %66 = load i32* %65, align 4
  %67 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %68 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %67, i32 0, i32 0
  %69 = load i32* %68, align 4
  %70 = add i32 %66, %69
  %71 = load i16* %width, align 2
  %72 = zext i16 %71 to i32
  %73 = icmp ule i32 %70, %72
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %63
  br label %77

; <label>:75                                      ; preds = %63, %52
  call void @__assert_fail(i8* getelementptr inbounds ([109 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0), i32 314, i8* getelementptr inbounds ([203 x i8]* @__PRETTY_FUNCTION__._ZL105p_ZN2xf4cropILi0ELi256ELi256ELi0ELi1EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjE_1R19xf_Mat_0_256_256_1_S0_R21xf_Rect_unsigned_int_, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %77

; <label>:77                                      ; preds = %76, %74
  %78 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %79 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %78, i32 0, i32 2
  %80 = load i32* %79, align 4
  %81 = ashr i32 %80, 0
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %width, align 2
  %83 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %84 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %85 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %86 = load i16* %height, align 2
  %87 = load i16* %width, align 2
  call void @_ZL137p_ZN2xf19xFcropkernel_streamILi0ELi256ELi256ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjEtt_1R19xf_Mat_0_256_256_1_S0_R21xf_Rect_unsigned_int_tt(%struct.xf_Mat_0_256_256_1_* %83, %struct.xf_Mat_0_256_256_1_* %84, %struct.xf_Rect_unsigned_int_* %85, i16 zeroext %86, i16 zeroext %87)
  ret void
}

define internal void @_ZL91p_ZN2xf11xfMat2ArrayILi8ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi8EE_1R19xf_Mat_0_256_256_1_P7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %class.ap_uint*, align 8
  %au = alloca %struct.xf_accel_utils, align 1
  store %struct.xf_Mat_0_256_256_1_* %srcMat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %class.ap_uint* %dstPtr, %class.ap_uint** %2, align 8
  %3 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %4 = load %class.ap_uint** %2, align 8
  call void @_ZL104p_ZN2xf11accel_utils11xfMat2ArrayILi8ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi8EE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_P7ap_uintILi8EE(%struct.xf_accel_utils* %au, %struct.xf_Mat_0_256_256_1_* %3, %class.ap_uint* %4)
  ret void
}

define internal void @_ZL104p_ZN2xf11accel_utils11xfMat2ArrayILi8ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEP7ap_uintILi8EE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_P7ap_uintILi8EE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_0_256_256_1_* %srcMat, %class.ap_uint* %dstPtr) uwtable {
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
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream"* %strm)
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
  call void @_ZL123p_ZN2xf11accel_utils13xfMat2hlsStrmILi8ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi8EEE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_RN3hls6streamI7ap_uintILi8EEEE(%struct.xf_accel_utils* %10, %struct.xf_Mat_0_256_256_1_* %11, %"class.hls::stream"* %strm)
  %12 = load %struct.xf_accel_utils** %1, align 8
  %13 = load %class.ap_uint** %3, align 8
  %14 = load i32* %rows, align 4
  %15 = load i32* %cols, align 4
  call void @_ZL117p_ZN2xf11accel_utils13hlsStrm2ArrayILi8ELi256ELi256ELi1ELi1ELi8ELi65536EEER6streamI7ap_uintILi8EEEP7ap_uintILi8EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi8EEEEPS4_ii(%struct.xf_accel_utils* %12, %"class.hls::stream"* %strm, %class.ap_uint* %13, i32 %14, i32 %15)
  ret void
}

declare void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream"*)

define internal void @_ZL123p_ZN2xf11accel_utils13xfMat2hlsStrmILi8ELi0ELi256ELi256ELi1ELi65536EEER3MatILi0ELi256ELi256ELi1EER6streamI7ap_uintILi8EEE_1P14xf_accel_utilsR19xf_Mat_0_256_256_1_RN3hls6streamI7ap_uintILi8EEEE(%struct.xf_accel_utils* %this_, %struct.xf_Mat_0_256_256_1_* %srcMat, %"class.hls::stream"* %dstStrm) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %"class.hls::stream"*, align 8
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %bits_to_add = alloca i32, align 4
  %N_size = alloca i32, align 4
  %r = alloca %class.ap_uint, align 1
  %in = alloca %class.ap_uint, align 1
  %i = alloca i32, align 4
  %4 = alloca %class.ap_uint, align 1
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
  store i32 8, i32* %bits_to_add, align 4
  store i32 8, i32* %N_size, align 4
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint* %in)
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
  %24 = getelementptr %class.ap_uint* %4, i32 0, i32 0
  %25 = bitcast [1 x i8]* %24 to i8*
  store i8 %23, i8* %25, align 1
  %26 = call %class.ap_uint* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint* %in, %class.ap_uint* %4)
  %27 = load i32* %bits_to_add, align 4
  %28 = icmp sle i32 %27, 8
  br i1 %28, label %29, label %52

; <label>:29                                      ; preds = %20
  %30 = load i32* %bits_to_add, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %in, i32 %31, i32 0)
  %33 = load i64* %32
  %34 = load i32* %bits_to_add, align 4
  %35 = sub nsw i32 8, %34
  %36 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %r, i32 7, i32 %35)
  store i64 %33, i64* %36
  %37 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream"* %37, %class.ap_uint* %r)
  %38 = load i32* %bits_to_add, align 4
  %39 = icmp ne i32 %38, 8
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %29
  %41 = load i32* %bits_to_add, align 4
  %42 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %in, i32 7, i32 %41)
  %43 = load i64* %42
  %44 = load i32* %bits_to_add, align 4
  %45 = sub nsw i32 8, %44
  %46 = sub nsw i32 %45, 1
  %47 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %r, i32 %46, i32 0)
  store i64 %43, i64* %47
  br label %48

; <label>:48                                      ; preds = %40, %29
  %49 = load i32* %bits_to_add, align 4
  %50 = sub nsw i32 8, %49
  %51 = sub nsw i32 8, %50
  store i32 %51, i32* %bits_to_add, align 4
  br label %63

; <label>:52                                      ; preds = %20
  %53 = call i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint* %in)
  %54 = load i32* %bits_to_add, align 4
  %55 = sub nsw i32 8, %54
  %56 = add nsw i32 %55, 8
  %57 = sub nsw i32 %56, 1
  %58 = load i32* %bits_to_add, align 4
  %59 = sub nsw i32 8, %58
  %60 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %r, i32 %57, i32 %59)
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
  %69 = icmp ne i32 %68, 8
  br i1 %69, label %70, label %72

; <label>:70                                      ; preds = %67
  %71 = load %"class.hls::stream"** %3, align 8
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream"* %71, %class.ap_uint* %r)
  br label %72

; <label>:72                                      ; preds = %70, %67
  ret void
}

define internal void @_ZL117p_ZN2xf11accel_utils13hlsStrm2ArrayILi8ELi256ELi256ELi1ELi1ELi8ELi65536EEER6streamI7ap_uintILi8EEEP7ap_uintILi8EEii_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi8EEEEPS4_ii(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %class.ap_uint* %dstPtr, i32 %rows, i32 %cols) uwtable {
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
  %12 = add nsw i32 %11, 8
  %13 = sub nsw i32 %12, 1
  %14 = sdiv i32 %13, 8
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
  %25 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream"* %24)
  %26 = getelementptr %class.ap_uint* %6, i32 0, i32 0
  %27 = bitcast [1 x i8]* %26 to i8*
  store i8 %25, i8* %27, align 1
  %28 = call %class.ap_uint* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint* %23, %class.ap_uint* %6)
  br label %29

; <label>:29                                      ; preds = %19
  %30 = load i32* %i, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %i, align 4
  br label %15

; <label>:32                                      ; preds = %15
  ret void
}

declare %class.ap_uint* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint*, %class.ap_uint*)

declare i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream"*)

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint*)

define internal i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %this_, i32 %index) nounwind uwtable {
  %1 = alloca %class.ap_uint, align 1
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca i32, align 4
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store i32 %index, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %7 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %6, i32 0, i32 4
  %8 = getelementptr inbounds [65536 x %class.ap_uint]* %7, i32 0, i64 %5
  %9 = bitcast %class.ap_uint* %1 to i8*
  %10 = bitcast %class.ap_uint* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 1, i32 1, i1 false)
  %11 = getelementptr %class.ap_uint* %1, i32 0, i32 0
  %12 = bitcast [1 x i8]* %11 to i8*
  %13 = load i8* %12, align 1
  ret i8 %13
}

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint*, i32, i32)

declare void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

declare i64 @_ZNK7ap_uintILi8EEcvmEv(%class.ap_uint*)

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL137p_ZN2xf19xFcropkernel_streamILi0ELi256ELi256ELi0ELi1ELi1ELi1ELi256EEER3MatILi0ELi256ELi256ELi1EER3MatILi0ELi256ELi256ELi1EER5Rect_IjEtt_1R19xf_Mat_0_256_256_1_S0_R21xf_Rect_unsigned_int_tt(%struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Rect_unsigned_int_* %roi, i16 zeroext %height, i16 zeroext %width) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %3 = alloca %struct.xf_Rect_unsigned_int_*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %val_src = alloca %class.ap_uint, align 1
  %val_dst = alloca %class.ap_uint, align 1
  %pix_pos = alloca %class.ap_uint, align 1
  %r = alloca %class.ap_uint.0, align 1
  %r_new = alloca %class.ap_uint.0, align 1
  %c = alloca %class.ap_uint.0, align 1
  %c_new = alloca %class.ap_uint.0, align 1
  %i = alloca %class.ap_uint.0, align 1
  %j = alloca %class.ap_uint.0, align 1
  %k = alloca %class.ap_uint.0, align 1
  %idx = alloca i64, align 8
  %6 = alloca %class.ap_uint.0, align 1
  %7 = alloca %class.ap_uint.0, align 1
  %8 = alloca %class.ap_uint, align 1
  %9 = alloca %class.ap_uint.0, align 1
  %10 = alloca %class.ap_uint.0, align 1
  %11 = alloca %class.ap_int, align 1
  %12 = alloca %class.ap_uint.0, align 1
  %col = alloca i32, align 4
  %13 = alloca %class.ap_uint.0, align 1
  %14 = alloca %class.ap_uint.0, align 1
  %15 = alloca %class.ap_int, align 1
  %16 = alloca %class.ap_uint.0, align 1
  %17 = alloca %class.ap_uint.0, align 1
  %18 = alloca %class.ap_uint.0, align 1
  %19 = alloca %class.ap_uint.0, align 1
  %20 = alloca %class.ap_uint.0, align 1
  %21 = alloca %class.ap_uint.0, align 1
  %22 = alloca %class.ap_uint.0, align 1
  %23 = alloca %class.ap_uint.0, align 1
  %24 = alloca %class.ap_uint.0, align 1
  %25 = alloca %class.ap_uint.0, align 1
  %26 = alloca %class.ap_uint, align 1
  %27 = alloca %class.ap_uint, align 1
  %28 = alloca %class.ap_uint, align 1
  %29 = alloca %class.ap_uint, align 1
  %30 = alloca %class.ap_uint, align 1
  %31 = alloca %class.ap_uint, align 1
  %32 = alloca %class.ap_uint.0, align 1
  %33 = alloca %class.ap_uint.0, align 1
  %34 = alloca %class.ap_uint.0, align 1
  %35 = alloca %class.ap_uint, align 1
  %36 = alloca %class.ap_uint, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store %struct.xf_Mat_0_256_256_1_* %_dst_mat, %struct.xf_Mat_0_256_256_1_** %2, align 8
  store %struct.xf_Rect_unsigned_int_* %roi, %struct.xf_Rect_unsigned_int_** %3, align 8
  store i16 %height, i16* %4, align 2
  store i16 %width, i16* %5, align 2
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint* %val_src, i32 0)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint* %val_dst, i32 0)
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint* %pix_pos, i32 0)
  %37 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %38 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %37, i32 0, i32 0
  %39 = load i32* %38, align 4
  call void @_ZN7ap_uintILi13EEC1Ej(%class.ap_uint.0* %r, i32 %39)
  %40 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %41 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %40, i32 0, i32 0
  %42 = load i32* %41, align 4
  %43 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %44 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %43, i32 0, i32 3
  %45 = load i32* %44, align 4
  %46 = add i32 %42, %45
  call void @_ZN7ap_uintILi13EEC1Ej(%class.ap_uint.0* %r_new, i32 %46)
  %47 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %48 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %47, i32 0, i32 1
  %49 = load i32* %48, align 4
  call void @_ZN7ap_uintILi13EEC1Ej(%class.ap_uint.0* %c, i32 %49)
  %50 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %51 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %50, i32 0, i32 1
  %52 = load i32* %51, align 4
  %53 = load %struct.xf_Rect_unsigned_int_** %3, align 8
  %54 = getelementptr inbounds %struct.xf_Rect_unsigned_int_* %53, i32 0, i32 2
  %55 = load i32* %54, align 4
  %56 = add i32 %52, %55
  call void @_ZN7ap_uintILi13EEC1Ej(%class.ap_uint.0* %c_new, i32 %56)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.0* %i)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.0* %j)
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.0* %k)
  store i64 0, i64* %idx, align 8
  br label %57

; <label>:57                                      ; preds = %0
  %58 = call %class.ap_uint.0* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.0* %i, i32 0)
  br label %59

; <label>:59                                      ; preds = %222, %57
  %60 = bitcast %class.ap_uint.0* %6 to i8*
  %61 = bitcast %class.ap_uint.0* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 2, i32 1, i1 false)
  %62 = load i16* %4, align 2
  %63 = getelementptr %class.ap_uint.0* %6, i32 0, i32 0
  %64 = bitcast [2 x i8]* %63 to i16*
  %65 = load i16* %64, align 1
  %66 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %65, i16 zeroext %62)
  br i1 %66, label %67, label %226

; <label>:67                                      ; preds = %59
  br label %68

; <label>:68                                      ; preds = %67
  %69 = call %class.ap_uint.0* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.0* %j, i32 0)
  br label %70

; <label>:70                                      ; preds = %217, %68
  %71 = bitcast %class.ap_uint.0* %7 to i8*
  %72 = bitcast %class.ap_uint.0* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 2, i32 1, i1 false)
  %73 = load i16* %5, align 2
  %74 = getelementptr %class.ap_uint.0* %7, i32 0, i32 0
  %75 = bitcast [2 x i8]* %74 to i16*
  %76 = load i16* %75, align 1
  %77 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16 %76, i16 zeroext %73)
  br i1 %77, label %78, label %221

; <label>:78                                      ; preds = %70
  %79 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %80 = load i16* %5, align 2
  %81 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.0* %i, i16 zeroext %80)
  %82 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %83 = bitcast [2 x i8]* %82 to i16*
  store i16 %81, i16* %83, align 1
  %84 = bitcast %class.ap_uint.0* %10 to i8*
  %85 = bitcast %class.ap_uint.0* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 2, i32 1, i1 false)
  %86 = getelementptr %class.ap_uint.0* %9, i32 0, i32 0
  %87 = bitcast [2 x i8]* %86 to i16*
  %88 = load i16* %87, align 1
  %89 = getelementptr %class.ap_uint.0* %10, i32 0, i32 0
  %90 = bitcast [2 x i8]* %89 to i16*
  %91 = load i16* %90, align 1
  %92 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %88, i16 %91)
  %93 = getelementptr %class.ap_int* %11, i32 0, i32 0
  %94 = bitcast [4 x i8]* %93 to i32*
  store i32 %92, i32* %94, align 1
  %95 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %11)
  %96 = trunc i64 %95 to i32
  %97 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %79, i32 %96)
  %98 = getelementptr %class.ap_uint* %8, i32 0, i32 0
  %99 = bitcast [1 x i8]* %98 to i8*
  store i8 %97, i8* %99, align 1
  %100 = call %class.ap_uint* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint* %val_src, %class.ap_uint* %8)
  %101 = call %class.ap_uint.0* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.0* %k, i32 0)
  br label %102

; <label>:102                                     ; preds = %212, %78
  %103 = bitcast %class.ap_uint.0* %12 to i8*
  %104 = bitcast %class.ap_uint.0* %k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 2, i32 1, i1 false)
  %105 = getelementptr %class.ap_uint.0* %12, i32 0, i32 0
  %106 = bitcast [2 x i8]* %105 to i16*
  %107 = load i16* %106, align 1
  %108 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %107, i32 1)
  br i1 %108, label %109, label %216

; <label>:109                                     ; preds = %102
  %110 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %j, i32 1)
  %111 = getelementptr %class.ap_uint.0* %13, i32 0, i32 0
  %112 = bitcast [2 x i8]* %111 to i16*
  store i16 %110, i16* %112, align 1
  %113 = bitcast %class.ap_uint.0* %14 to i8*
  %114 = bitcast %class.ap_uint.0* %k to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %114, i64 2, i32 1, i1 false)
  %115 = getelementptr %class.ap_uint.0* %13, i32 0, i32 0
  %116 = bitcast [2 x i8]* %115 to i16*
  %117 = load i16* %116, align 1
  %118 = getelementptr %class.ap_uint.0* %14, i32 0, i32 0
  %119 = bitcast [2 x i8]* %118 to i16*
  %120 = load i16* %119, align 1
  %121 = call i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16 %117, i16 %120)
  %122 = getelementptr %class.ap_int* %15, i32 0, i32 0
  %123 = bitcast [4 x i8]* %122 to i32*
  store i32 %121, i32* %123, align 1
  %124 = call i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int* %15)
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %col, align 4
  %126 = bitcast %class.ap_uint.0* %16 to i8*
  %127 = bitcast %class.ap_uint.0* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 2, i32 1, i1 false)
  %128 = bitcast %class.ap_uint.0* %17 to i8*
  %129 = bitcast %class.ap_uint.0* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 2, i32 1, i1 false)
  %130 = getelementptr %class.ap_uint.0* %16, i32 0, i32 0
  %131 = bitcast [2 x i8]* %130 to i16*
  %132 = load i16* %131, align 1
  %133 = getelementptr %class.ap_uint.0* %17, i32 0, i32 0
  %134 = bitcast [2 x i8]* %133 to i16*
  %135 = load i16* %134, align 1
  %136 = call zeroext i1 @_ZgeILi13ELi13EEb7ap_uintIXT_EES0_IXT0_EE(i16 %132, i16 %135)
  br i1 %136, label %137, label %211

; <label>:137                                     ; preds = %109
  %138 = bitcast %class.ap_uint.0* %18 to i8*
  %139 = bitcast %class.ap_uint.0* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %139, i64 2, i32 1, i1 false)
  %140 = bitcast %class.ap_uint.0* %19 to i8*
  %141 = bitcast %class.ap_uint.0* %r_new to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %141, i64 2, i32 1, i1 false)
  %142 = getelementptr %class.ap_uint.0* %18, i32 0, i32 0
  %143 = bitcast [2 x i8]* %142 to i16*
  %144 = load i16* %143, align 1
  %145 = getelementptr %class.ap_uint.0* %19, i32 0, i32 0
  %146 = bitcast [2 x i8]* %145 to i16*
  %147 = load i16* %146, align 1
  %148 = call zeroext i1 @_ZltILi13ELi13EEb7ap_uintIXT_EES0_IXT0_EE(i16 %144, i16 %147)
  br i1 %148, label %149, label %211

; <label>:149                                     ; preds = %137
  %150 = load i32* %col, align 4
  %151 = bitcast %class.ap_uint.0* %20 to i8*
  %152 = bitcast %class.ap_uint.0* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 2, i32 1, i1 false)
  %153 = getelementptr %class.ap_uint.0* %20, i32 0, i32 0
  %154 = bitcast [2 x i8]* %153 to i16*
  %155 = load i16* %154, align 1
  %156 = call zeroext i1 @_ZgeILi13EEbi7ap_uintIXT_EE(i32 %150, i16 %155)
  br i1 %156, label %157, label %211

; <label>:157                                     ; preds = %149
  %158 = load i32* %col, align 4
  %159 = bitcast %class.ap_uint.0* %21 to i8*
  %160 = bitcast %class.ap_uint.0* %c_new to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %159, i8* %160, i64 2, i32 1, i1 false)
  %161 = getelementptr %class.ap_uint.0* %21, i32 0, i32 0
  %162 = bitcast [2 x i8]* %161 to i16*
  %163 = load i16* %162, align 1
  %164 = call zeroext i1 @_ZltILi13EEbi7ap_uintIXT_EE(i32 %158, i16 %163)
  br i1 %164, label %165, label %211

; <label>:165                                     ; preds = %157
  %166 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %k, i32 8)
  %167 = getelementptr %class.ap_uint.0* %24, i32 0, i32 0
  %168 = bitcast [2 x i8]* %167 to i16*
  store i16 %166, i16* %168, align 1
  %169 = call i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %24, i32 8)
  %170 = getelementptr %class.ap_uint.0* %23, i32 0, i32 0
  %171 = bitcast [2 x i8]* %170 to i16*
  store i16 %169, i16* %171, align 1
  %172 = call i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %23, i32 1)
  %173 = getelementptr %class.ap_uint.0* %22, i32 0, i32 0
  %174 = bitcast [2 x i8]* %173 to i16*
  store i16 %172, i16* %174, align 1
  %175 = call i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0* %k, i32 8)
  %176 = getelementptr %class.ap_uint.0* %25, i32 0, i32 0
  %177 = bitcast [2 x i8]* %176 to i16*
  store i16 %175, i16* %177, align 1
  %178 = call i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint* %val_src, %class.ap_uint.0* %22, %class.ap_uint.0* %25)
  %179 = load i64* %178
  %180 = call i8 @_ZmlILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint* %pix_pos, i32 8)
  %181 = getelementptr %class.ap_uint* %27, i32 0, i32 0
  %182 = bitcast [1 x i8]* %181 to i8*
  store i8 %180, i8* %182, align 1
  %183 = call i8 @_ZplILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint* %27, i32 7)
  %184 = getelementptr %class.ap_uint* %26, i32 0, i32 0
  %185 = bitcast [1 x i8]* %184 to i8*
  store i8 %183, i8* %185, align 1
  %186 = call i8 @_ZmlILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint* %pix_pos, i32 8)
  %187 = getelementptr %class.ap_uint* %28, i32 0, i32 0
  %188 = bitcast [1 x i8]* %187 to i8*
  store i8 %186, i8* %188, align 1
  %189 = call i64* @_ZN7ap_uintILi8EE5rangeILi8ELi8EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint* %val_dst, %class.ap_uint* %26, %class.ap_uint* %28)
  store i64 %179, i64* %189
  %190 = call i8 @_ZN7ap_uintILi8EEppEi(%class.ap_uint* %pix_pos, i32 0)
  %191 = getelementptr %class.ap_uint* %29, i32 0, i32 0
  %192 = bitcast [1 x i8]* %191 to i8*
  store i8 %190, i8* %192, align 1
  %193 = bitcast %class.ap_uint* %30 to i8*
  %194 = bitcast %class.ap_uint* %pix_pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %193, i8* %194, i64 1, i32 1, i1 false)
  %195 = getelementptr %class.ap_uint* %30, i32 0, i32 0
  %196 = bitcast [1 x i8]* %195 to i8*
  %197 = load i8* %196, align 1
  %198 = call zeroext i1 @_ZeqILi8EEb7ap_uintIXT_EEi(i8 %197, i32 1)
  br i1 %198, label %199, label %210

; <label>:199                                     ; preds = %165
  %200 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %201 = load i64* %idx, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %idx, align 8
  %203 = trunc i64 %201 to i32
  %204 = bitcast %class.ap_uint* %31 to i8*
  %205 = bitcast %class.ap_uint* %val_dst to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %204, i8* %205, i64 1, i32 1, i1 false)
  %206 = getelementptr %class.ap_uint* %31, i32 0, i32 0
  %207 = bitcast [1 x i8]* %206 to i8*
  %208 = load i8* %207, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %200, i32 %203, i8 %208)
  %209 = call %class.ap_uint* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint* %pix_pos, i32 0)
  br label %210

; <label>:210                                     ; preds = %199, %165
  br label %211

; <label>:211                                     ; preds = %210, %157, %149, %137, %109
  br label %212

; <label>:212                                     ; preds = %211
  %213 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.0* %k, i32 0)
  %214 = getelementptr %class.ap_uint.0* %32, i32 0, i32 0
  %215 = bitcast [2 x i8]* %214 to i16*
  store i16 %213, i16* %215, align 1
  br label %102

; <label>:216                                     ; preds = %102
  br label %217

; <label>:217                                     ; preds = %216
  %218 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.0* %j, i32 0)
  %219 = getelementptr %class.ap_uint.0* %33, i32 0, i32 0
  %220 = bitcast [2 x i8]* %219 to i16*
  store i16 %218, i16* %220, align 1
  br label %70

; <label>:221                                     ; preds = %70
  br label %222

; <label>:222                                     ; preds = %221
  %223 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.0* %i, i32 0)
  %224 = getelementptr %class.ap_uint.0* %34, i32 0, i32 0
  %225 = bitcast [2 x i8]* %224 to i16*
  store i16 %223, i16* %225, align 1
  br label %59

; <label>:226                                     ; preds = %59
  %227 = bitcast %class.ap_uint* %35 to i8*
  %228 = bitcast %class.ap_uint* %pix_pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %227, i8* %228, i64 1, i32 1, i1 false)
  %229 = getelementptr %class.ap_uint* %35, i32 0, i32 0
  %230 = bitcast [1 x i8]* %229 to i8*
  %231 = load i8* %230, align 1
  %232 = call zeroext i1 @_ZneILi8EEb7ap_uintIXT_EEi(i8 %231, i32 0)
  br i1 %232, label %233, label %243

; <label>:233                                     ; preds = %226
  %234 = load %struct.xf_Mat_0_256_256_1_** %2, align 8
  %235 = load i64* %idx, align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* %idx, align 8
  %237 = trunc i64 %235 to i32
  %238 = bitcast %class.ap_uint* %36 to i8*
  %239 = bitcast %class.ap_uint* %val_dst to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %238, i8* %239, i64 1, i32 1, i1 false)
  %240 = getelementptr %class.ap_uint* %36, i32 0, i32 0
  %241 = bitcast [1 x i8]* %240 to i8*
  %242 = load i8* %241, align 1
  call void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %234, i32 %237, i8 %242)
  br label %243

; <label>:243                                     ; preds = %233, %226
  ret void
}

declare void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint*, i32)

declare void @_ZN7ap_uintILi13EEC1Ej(%class.ap_uint.0*, i32)

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.0*)

declare %class.ap_uint.0* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.0*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEt(i16, i16 zeroext)

declare i32 @_ZplILi13ELi13EE6ap_intIXplT_T0_EE7ap_uintIXT_EES2_IXT0_EE(i16, i16)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_t(%class.ap_uint.0*, i16 zeroext)

declare i64 @_ZNK6ap_intILi26EEcvlEv(%class.ap_int*)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16, i32)

declare i16 @_ZmlILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0*, i32)

declare zeroext i1 @_ZgeILi13ELi13EEb7ap_uintIXT_EES0_IXT0_EE(i16, i16)

declare zeroext i1 @_ZltILi13ELi13EEb7ap_uintIXT_EES0_IXT0_EE(i16, i16)

declare zeroext i1 @_ZgeILi13EEbi7ap_uintIXT_EE(i32, i16)

declare zeroext i1 @_ZltILi13EEbi7ap_uintIXT_EE(i32, i16)

declare i64* @_ZN7ap_uintILi8EE5rangeILi13ELi13EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint*, %class.ap_uint.0*, %class.ap_uint.0*)

declare i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0*, i32)

declare i16 @_ZplILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.0*, i32)

declare i64* @_ZN7ap_uintILi8EE5rangeILi8ELi8EEERmRKS_IXT_EERKS_IXT0_EE(%class.ap_uint*, %class.ap_uint*, %class.ap_uint*)

declare i8 @_ZplILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint*, i32)

declare i8 @_ZmlILi8EE7ap_uintIXT_EERKS1_i(%class.ap_uint*, i32)

declare i8 @_ZN7ap_uintILi8EEppEi(%class.ap_uint*, i32)

declare zeroext i1 @_ZeqILi8EEb7ap_uintIXT_EEi(i8, i32)

define internal void @_ZL51p_ZN2xf16Mat_0_256_256_1_5writeIEEi7ap_uintILi8EE_1P19xf_Mat_0_256_256_1_i7ap_uintILi8EE(%struct.xf_Mat_0_256_256_1_* %this_, i32 %index, i8 %val.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %val = alloca %class.ap_uint, align 1
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = getelementptr %class.ap_uint* %val, i32 0, i32 0
  %4 = bitcast [1 x i8]* %3 to i8*
  store i8 %val.coerce, i8* %4, align 1
  %5 = load i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %8 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %7, i32 0, i32 4
  %9 = getelementptr inbounds [65536 x %class.ap_uint]* %8, i32 0, i64 %6
  %10 = call %class.ap_uint* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint* %9, %class.ap_uint* %val)
  ret void
}

declare %class.ap_uint* @_ZN7ap_uintILi8EEaSEi(%class.ap_uint*, i32)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.0*, i32)

declare zeroext i1 @_ZneILi8EEb7ap_uintIXT_EEi(i8, i32)

define internal void @_ZL104p_ZN2xf11accel_utils11Array2xfMatILi8ELi0ELi256ELi256ELi1EEEP7ap_uintILi8EER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsP7ap_uintILi8EER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
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
  call void @_ZN3hls6streamI7ap_uintILi8EEEC1Ev(%"class.hls::stream"* %strm)
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
  call void @_ZL117p_ZN2xf11accel_utils13Array2hlsStrmILi8ELi256ELi256ELi1ELi1ELi8ELi65536EEEP7ap_uintILi8EER6streamI7ap_uintILi8EEEii_1P14xf_accel_utilsP7ap_uintILi8EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %10, %class.ap_uint* %11, %"class.hls::stream"* %strm, i32 %12, i32 %13)
  %14 = load %struct.xf_accel_utils** %1, align 8
  %15 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  call void @_ZL123p_ZN2xf11accel_utils13hlsStrm2xfMatILi8ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi8EEER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi8EEEER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %14, %"class.hls::stream"* %strm, %struct.xf_Mat_0_256_256_1_* %15)
  ret void
}

define internal void @_ZL117p_ZN2xf11accel_utils13Array2hlsStrmILi8ELi256ELi256ELi1ELi1ELi8ELi65536EEEP7ap_uintILi8EER6streamI7ap_uintILi8EEEii_1P14xf_accel_utilsP7ap_uintILi8EERN3hls6streamIS2_EEii(%struct.xf_accel_utils* %this_, %class.ap_uint* %srcPtr, %"class.hls::stream"* %dstStrm, i32 %rows, i32 %cols) uwtable {
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
  %11 = add nsw i32 %10, 8
  %12 = sub nsw i32 %11, 1
  %13 = sdiv i32 %12, 8
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
  call void @_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_(%"class.hls::stream"* %19, %class.ap_uint* %23)
  br label %24

; <label>:24                                      ; preds = %18
  %25 = load i32* %i, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %14

; <label>:27                                      ; preds = %14
  ret void
}

define internal void @_ZL123p_ZN2xf11accel_utils13hlsStrm2xfMatILi8ELi0ELi256ELi256ELi1ELi65536EEER6streamI7ap_uintILi8EEER3MatILi0ELi256ELi256ELi1EE_1P14xf_accel_utilsRN3hls6streamI7ap_uintILi8EEEER19xf_Mat_0_256_256_1_(%struct.xf_accel_utils* %this_, %"class.hls::stream"* %srcStrm, %struct.xf_Mat_0_256_256_1_* %dstMat) uwtable {
  %1 = alloca %struct.xf_accel_utils*, align 8
  %2 = alloca %"class.hls::stream"*, align 8
  %3 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %loop_count = alloca i32, align 4
  %valid_bits = alloca i32, align 4
  %N_size = alloca i32, align 4
  %r = alloca %class.ap_uint, align 1
  %out = alloca %class.ap_uint, align 1
  %i = alloca i32, align 4
  %4 = alloca %class.ap_uint, align 1
  %5 = alloca %class.ap_uint, align 1
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
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint* %r)
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint* %out)
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
  %29 = sub nsw i32 8, %28
  %30 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %r, i32 7, i32 %29)
  %31 = load i64* %30
  %32 = load i32* %valid_bits, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %out, i32 %33, i32 0)
  store i64 %31, i64* %34
  br label %35

; <label>:35                                      ; preds = %27, %24
  %36 = load %"class.hls::stream"** %2, align 8
  %37 = call i8 @_ZN3hls6streamI7ap_uintILi8EEE4readEv(%"class.hls::stream"* %36)
  %38 = getelementptr %class.ap_uint* %4, i32 0, i32 0
  %39 = bitcast [1 x i8]* %38 to i8*
  store i8 %37, i8* %39, align 1
  %40 = call %class.ap_uint* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint* %r, %class.ap_uint* %4)
  %41 = load i32* %valid_bits, align 4
  %42 = sub nsw i32 8, %41
  %43 = sub nsw i32 %42, 1
  %44 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %r, i32 %43, i32 0)
  %45 = load i64* %44
  %46 = load i32* %valid_bits, align 4
  %47 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %out, i32 7, i32 %46)
  store i64 %45, i64* %47
  %48 = load i32* %valid_bits, align 4
  %49 = sub nsw i32 8, %48
  %50 = sub nsw i32 8, %49
  store i32 %50, i32* %valid_bits, align 4
  br label %63

; <label>:51                                      ; preds = %21
  %52 = load i32* %valid_bits, align 4
  %53 = sub nsw i32 8, %52
  %54 = add nsw i32 %53, 8
  %55 = sub nsw i32 %54, 1
  %56 = load i32* %valid_bits, align 4
  %57 = sub nsw i32 8, %56
  %58 = call i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint* %r, i32 %55, i32 %57)
  %59 = load i64* %58
  %60 = call %class.ap_uint* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint* %out, i64 %59)
  %61 = load i32* %valid_bits, align 4
  %62 = sub nsw i32 %61, 8
  store i32 %62, i32* %valid_bits, align 4
  br label %63

; <label>:63                                      ; preds = %51, %35
  %64 = load %struct.xf_Mat_0_256_256_1_** %3, align 8
  %65 = load i32* %i, align 4
  %66 = bitcast %class.ap_uint* %5 to i8*
  %67 = bitcast %class.ap_uint* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 1, i32 1, i1 false)
  %68 = getelementptr %class.ap_uint* %5, i32 0, i32 0
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

declare %class.ap_uint* @_ZN7ap_uintILi8EEaSEm(%class.ap_uint*, i64)

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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
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
  %4 = getelementptr inbounds [65536 x %class.ap_uint]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %class.ap_uint* %4, i64 65536
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.ap_uint* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint* %7)
  %8 = getelementptr inbounds %class.ap_uint* %7, i64 1
  %9 = icmp eq %class.ap_uint* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  ret void
}

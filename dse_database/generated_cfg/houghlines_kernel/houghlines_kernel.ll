; ModuleID = '/home/vagrant/software-gnn/dse_database/ast_kernels/houghlines_kernel.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.ap_fixed = type { [2 x i8] }
%class.ap_uint = type { [32 x i8] }
%struct.xf_Mat_0_256_256_1_ = type { i8, i32, i32, i32, [65536 x %class.ap_uint.0] }
%class.ap_uint.0 = type { [1 x i8] }
%struct.xf_accel_utils = type { i8 }
%class.ap_uint.1 = type { [2 x i8] }
%class.ap_uint.5 = type { [2 x i8] }
%class.ap_uint.2 = type { [2 x i8] }
%class.ap_fixed.6 = type { [2 x i8] }
%class.ap_fixed.7 = type { [2 x i8] }
%class.ap_fixed.8 = type { [4 x i8] }
%class.ap_fixed.3 = type { [2 x i8] }
%class.ap_fixed.9 = type { [8 x i8] }
%class.ap_fixed.10 = type { [4 x i8] }
%class.ap_int = type { [2 x i8] }
%class.ap_uint.11 = type { [3 x i8] }
%class.ap_fixed.12 = type { [6 x i8] }
%class.ap_fixed.4 = type { [4 x i8] }
%"class.hls::stream" = type { %class.ap_uint }

@_ZL6sinval = internal global [360 x %class.ap_fixed] zeroinitializer, align 16
@_ZL6cosval = internal global [360 x %class.ap_fixed] zeroinitializer, align 16
@.str = private unnamed_addr constant [108 x i8] c"((_src_mat.rows <= ROWS ) && (_src_mat.cols <= COLS)) && \22ROWS and COLS should be greater than input image\22\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c"xf_houghlines.hpp\00", align 1
@__PRETTY_FUNCTION__._ZL108p_ZN2xf10HoughLinesILj1ELj2ELi512ELi2203ELi0ELi180ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPfPfss_1R19xf_Mat_0_256_256_1_PfS1_ss = private unnamed_addr constant [176 x i8] c"void p_ZN2xf10HoughLinesILj1ELj2ELi512ELi2203ELi0ELi180ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPfPfss_1(struct xf_Mat_0_256_256_1_ &, float *, float *, short, short)\00", align 1
@.str3 = private unnamed_addr constant [143 x i8] c"(_rows > 0) && (_rows <= ROWS) && (_cols > 0) && (_cols <= COLS) && \22The number of rows and columns must be less than the template arguments.\22\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"xf_structs.h\00", align 1
@__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib = private unnamed_addr constant [90 x i8] c"void p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1(struct xf_Mat_0_256_256_1_ *, int, int, bool)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define internal void @__cxx_global_var_init() section ".text.startup" {
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 0), double 0.000000e+00)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 1), double 8.727000e-03)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 2), double 1.745200e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 3), double 2.617700e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 4), double 3.489900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 5), double 4.361900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 6), double 5.233600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 7), double 6.104900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 8), double 6.975600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 9), double 7.845900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 10), double 8.715600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 11), double 9.584600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 12), double 1.045280e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 13), double 1.132030e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 14), double 1.218690e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 15), double 1.305260e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 16), double 1.391730e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 17), double 1.478090e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 18), double 1.564340e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 19), double 1.650480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 20), double 1.736480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 21), double 1.822360e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 22), double 1.908090e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 23), double 1.993680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 24), double 2.079120e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 25), double 2.164400e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 26), double 2.249510e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 27), double 2.334450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 28), double 2.419220e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 29), double 2.503800e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 30), double 2.588190e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 31), double 2.672380e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 32), double 2.756370e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 33), double 2.840150e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 34), double 2.923720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 35), double 3.007060e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 36), double 3.090170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 37), double 3.173050e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 38), double 3.255680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 39), double 3.338070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 40), double 3.420200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 41), double 3.502070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 42), double 3.583680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 43), double 3.665010e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 44), double 3.746070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 45), double 3.826840e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 46), double 3.907310e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 47), double 3.987490e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 48), double 4.067370e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 49), double 4.146930e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 50), double 4.226180e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 51), double 4.305110e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 52), double 4.383710e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 53), double 4.461980e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 54), double 4.539910e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 55), double 4.617490e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 56), double 4.694720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 57), double 4.771590e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 58), double 4.848100e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 59), double 4.924240e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 60), double 4.999800e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 61), double 5.075390e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 62), double 5.150380e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 63), double 5.224990e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 64), double 5.299200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 65), double 5.373000e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 66), double 5.446390e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 67), double 5.519370e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 68), double 5.591930e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 69), double 5.664070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 70), double 5.735770e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 71), double 5.807030e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 72), double 5.877860e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 73), double 5.948230e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 74), double 6.018150e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 75), double 6.087620e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 76), double 6.156620e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 77), double 6.225150e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 78), double 6.293210e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 79), double 6.360790e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 80), double 6.427880e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 81), double 6.494480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 82), double 6.560590e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 83), double 6.626200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 84), double 6.691310e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 85), double 6.755910e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 86), double 6.819990e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 87), double 6.883550e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 88), double 6.946590e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 89), double 7.009100e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 90), double 7.071070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 91), double 7.132510e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 92), double 7.193400e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 93), double 7.253750e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 94), double 7.313540e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 95), double 7.372780e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 96), double 7.431450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 97), double 7.489560e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 98), double 7.547100e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 99), double 7.604060e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 100), double 7.660450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 101), double 7.716250e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 102), double 7.771460e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 103), double 7.826090e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 104), double 7.880110e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 105), double 7.933540e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 106), double 7.986360e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 107), double 8.038570e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 108), double 8.090170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 109), double 8.141160e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 110), double 8.191520e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 111), double 8.241270e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 112), double 8.290380e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 113), double 8.338860e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 114), double 8.386710e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 115), double 8.433920e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 116), double 8.480480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 117), double 8.526410e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 118), double 8.571680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 119), double 8.616290e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 120), double 8.660260e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 121), double 8.703560e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 122), double 8.746200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 123), double 8.788170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 124), double 8.829480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 125), double 8.870110e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 126), double 8.910070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 127), double 8.949340e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 128), double 8.987940e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 129), double 9.025850e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 130), double 9.063080e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 131), double 9.099610e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 132), double 9.135450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 133), double 9.170600e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 134), double 9.205050e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 135), double 9.238790e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 136), double 9.271840e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 137), double 9.304170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 138), double 9.335800e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 139), double 9.366720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 140), double 9.396920e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 141), double 9.426410e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 142), double 9.455180e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 143), double 9.483230e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 144), double 9.510560e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 145), double 9.537170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 146), double 9.563050e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 147), double 9.588200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 148), double 9.612610e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 149), double 9.636300e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 150), double 9.659260e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 151), double 9.681470e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 152), double 9.702950e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 153), double 9.723700e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 154), double 9.743700e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 155), double 9.762960e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 156), double 9.781470e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 157), double 9.799240e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 158), double 9.816270e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 159), double 9.832550e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 160), double 9.848070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 161), double 9.862850e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 162), double 9.876880e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 163), double 9.890160e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 164), double 9.902680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 165), double 9.914450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 166), double 9.925460e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 167), double 9.935720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 168), double 9.945220e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 169), double 9.953960e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 170), double 9.961950e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 171), double 9.969170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 172), double 9.975640e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 173), double 9.981350e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 174), double 9.986290e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 175), double 9.990480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 176), double 9.993910e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 177), double 9.996570e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 178), double 9.998480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 179), double 9.999620e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 180), double 9.999800e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 181), double 9.999620e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 182), double 9.998480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 183), double 9.996570e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 184), double 9.993910e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 185), double 9.990480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 186), double 9.986290e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 187), double 9.981350e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 188), double 9.975640e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 189), double 9.969170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 190), double 9.961950e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 191), double 9.953960e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 192), double 9.945220e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 193), double 9.935720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 194), double 9.925460e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 195), double 9.914450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 196), double 9.902680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 197), double 9.890160e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 198), double 9.876880e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 199), double 9.862850e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 200), double 9.848070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 201), double 9.832550e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 202), double 9.816270e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 203), double 9.799240e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 204), double 9.781470e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 205), double 9.762960e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 206), double 9.743700e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 207), double 9.723700e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 208), double 9.702950e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 209), double 9.681470e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 210), double 9.659260e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 211), double 9.636300e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 212), double 9.612610e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 213), double 9.588200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 214), double 9.563050e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 215), double 9.537170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 216), double 9.510560e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 217), double 9.483230e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 218), double 9.455180e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 219), double 9.426410e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 220), double 9.396920e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 221), double 9.366720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 222), double 9.335800e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 223), double 9.304170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 224), double 9.271840e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 225), double 9.238790e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 226), double 9.205050e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 227), double 9.170600e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 228), double 9.135450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 229), double 9.099610e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 230), double 9.063080e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 231), double 9.025850e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 232), double 8.987940e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 233), double 8.949340e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 234), double 8.910070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 235), double 8.870110e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 236), double 8.829480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 237), double 8.788170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 238), double 8.746200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 239), double 8.703560e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 240), double 8.660260e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 241), double 8.616290e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 242), double 8.571680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 243), double 8.526410e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 244), double 8.480480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 245), double 8.433920e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 246), double 8.386710e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 247), double 8.338860e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 248), double 8.290380e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 249), double 8.241270e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 250), double 8.191520e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 251), double 8.141160e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 252), double 8.090170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 253), double 8.038570e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 254), double 7.986360e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 255), double 7.933540e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 256), double 7.880110e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 257), double 7.826090e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 258), double 7.771460e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 259), double 7.716250e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 260), double 7.660450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 261), double 7.604060e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 262), double 7.547100e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 263), double 7.489560e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 264), double 7.431450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 265), double 7.372780e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 266), double 7.313540e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 267), double 7.253750e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 268), double 7.193400e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 269), double 7.132510e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 270), double 7.071070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 271), double 7.009100e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 272), double 6.946590e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 273), double 6.883550e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 274), double 6.819990e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 275), double 6.755910e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 276), double 6.691310e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 277), double 6.626200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 278), double 6.560590e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 279), double 6.494480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 280), double 6.427880e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 281), double 6.360790e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 282), double 6.293210e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 283), double 6.225150e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 284), double 6.156620e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 285), double 6.087620e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 286), double 6.018150e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 287), double 5.948230e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 288), double 5.877860e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 289), double 5.807030e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 290), double 5.735770e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 291), double 5.664070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 292), double 5.591930e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 293), double 5.519370e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 294), double 5.446390e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 295), double 5.373000e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 296), double 5.299200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 297), double 5.224990e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 298), double 5.150380e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 299), double 5.075390e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 300), double 5.000000e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 301), double 4.924240e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 302), double 4.848100e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 303), double 4.771590e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 304), double 4.694720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 305), double 4.617490e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 306), double 4.539910e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 307), double 4.461980e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 308), double 4.383710e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 309), double 4.305110e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 310), double 4.226180e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 311), double 4.146930e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 312), double 4.067370e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 313), double 3.987490e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 314), double 3.907310e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 315), double 3.826840e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 316), double 3.746070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 317), double 3.665010e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 318), double 3.583680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 319), double 3.502070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 320), double 3.420200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 321), double 3.338070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 322), double 3.255680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 323), double 3.173050e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 324), double 3.090170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 325), double 3.007060e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 326), double 2.923720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 327), double 2.840150e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 328), double 2.756370e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 329), double 2.672380e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 330), double 2.588190e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 331), double 2.503800e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 332), double 2.419220e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 333), double 2.334450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 334), double 2.249510e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 335), double 2.164400e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 336), double 2.079120e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 337), double 1.993680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 338), double 1.908090e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 339), double 1.822360e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 340), double 1.736480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 341), double 1.650480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 342), double 1.564340e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 343), double 1.478090e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 344), double 1.391730e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 345), double 1.305260e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 346), double 1.218690e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 347), double 1.132030e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 348), double 1.045280e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 349), double 9.584600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 350), double 8.715600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 351), double 7.845900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 352), double 6.975600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 353), double 6.104900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 354), double 5.233600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 355), double 4.361900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 356), double 3.489900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 357), double 2.617700e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 358), double 1.745200e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6sinval, i64 0, i64 359), double 8.727000e-03)
  ret void
}

declare void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed*, double)

define internal void @__cxx_global_var_init1() section ".text.startup" {
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 0), double 9.999800e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 1), double 9.999620e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 2), double 9.998480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 3), double 9.996570e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 4), double 9.993910e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 5), double 9.990480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 6), double 9.986290e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 7), double 9.981350e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 8), double 9.975640e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 9), double 9.969170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 10), double 9.961950e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 11), double 9.953960e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 12), double 9.945220e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 13), double 9.935720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 14), double 9.925460e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 15), double 9.914450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 16), double 9.902680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 17), double 9.890160e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 18), double 9.876880e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 19), double 9.862850e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 20), double 9.848070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 21), double 9.832550e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 22), double 9.816270e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 23), double 9.799240e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 24), double 9.781470e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 25), double 9.762960e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 26), double 9.743700e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 27), double 9.723700e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 28), double 9.702950e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 29), double 9.681470e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 30), double 9.659260e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 31), double 9.636300e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 32), double 9.612610e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 33), double 9.588200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 34), double 9.563050e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 35), double 9.537170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 36), double 9.510560e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 37), double 9.483230e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 38), double 9.455180e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 39), double 9.426410e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 40), double 9.396920e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 41), double 9.366720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 42), double 9.335800e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 43), double 9.304170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 44), double 9.271840e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 45), double 9.238790e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 46), double 9.205050e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 47), double 9.170600e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 48), double 9.135450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 49), double 9.099610e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 50), double 9.063080e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 51), double 9.025850e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 52), double 8.987940e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 53), double 8.949340e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 54), double 8.910070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 55), double 8.870110e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 56), double 8.829480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 57), double 8.788170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 58), double 8.746200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 59), double 8.703560e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 60), double 8.660260e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 61), double 8.616290e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 62), double 8.571680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 63), double 8.526410e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 64), double 8.480480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 65), double 8.433920e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 66), double 8.386710e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 67), double 8.338860e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 68), double 8.290380e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 69), double 8.241270e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 70), double 8.191520e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 71), double 8.141160e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 72), double 8.090170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 73), double 8.038570e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 74), double 7.986360e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 75), double 7.933540e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 76), double 7.880110e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 77), double 7.826090e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 78), double 7.771460e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 79), double 7.716250e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 80), double 7.660450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 81), double 7.604060e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 82), double 7.547100e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 83), double 7.489560e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 84), double 7.431450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 85), double 7.372780e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 86), double 7.313540e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 87), double 7.253750e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 88), double 7.193400e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 89), double 7.132510e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 90), double 7.071070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 91), double 7.009100e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 92), double 6.946590e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 93), double 6.883550e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 94), double 6.819990e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 95), double 6.755910e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 96), double 6.691310e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 97), double 6.626200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 98), double 6.560590e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 99), double 6.494480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 100), double 6.427880e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 101), double 6.360790e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 102), double 6.293210e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 103), double 6.225150e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 104), double 6.156620e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 105), double 6.087620e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 106), double 6.018150e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 107), double 5.948230e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 108), double 5.877860e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 109), double 5.807030e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 110), double 5.735770e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 111), double 5.664070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 112), double 5.591930e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 113), double 5.519370e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 114), double 5.446390e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 115), double 5.373000e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 116), double 5.299200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 117), double 5.224990e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 118), double 5.150380e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 119), double 5.075390e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 120), double 5.000000e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 121), double 4.924240e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 122), double 4.848100e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 123), double 4.771590e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 124), double 4.694720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 125), double 4.617490e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 126), double 4.539910e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 127), double 4.461980e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 128), double 4.383710e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 129), double 4.305110e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 130), double 4.226180e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 131), double 4.146930e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 132), double 4.067370e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 133), double 3.987490e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 134), double 3.907310e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 135), double 3.826840e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 136), double 3.746070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 137), double 3.665010e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 138), double 3.583680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 139), double 3.502070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 140), double 3.420200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 141), double 3.338070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 142), double 3.255680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 143), double 3.173050e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 144), double 3.090170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 145), double 3.007060e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 146), double 2.923720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 147), double 2.840150e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 148), double 2.756370e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 149), double 2.672380e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 150), double 2.588190e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 151), double 2.503800e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 152), double 2.419220e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 153), double 2.334450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 154), double 2.249510e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 155), double 2.164400e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 156), double 2.079120e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 157), double 1.993680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 158), double 1.908090e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 159), double 1.822360e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 160), double 1.736480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 161), double 1.650480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 162), double 1.564340e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 163), double 1.478090e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 164), double 1.391730e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 165), double 1.305260e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 166), double 1.218690e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 167), double 1.132030e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 168), double 1.045280e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 169), double 9.584600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 170), double 8.715600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 171), double 7.845900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 172), double 6.975600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 173), double 6.104900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 174), double 5.233600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 175), double 4.361900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 176), double 3.489900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 177), double 2.617700e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 178), double 1.745200e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 179), double 8.727000e-03)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 180), double 0.000000e+00)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 181), double -8.727000e-03)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 182), double -1.745200e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 183), double -2.617700e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 184), double -3.489900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 185), double -4.361900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 186), double -5.233600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 187), double -6.104900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 188), double -6.975600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 189), double -7.845900e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 190), double -8.715600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 191), double -9.584600e-02)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 192), double -1.045280e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 193), double -1.132030e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 194), double -1.218690e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 195), double -1.305260e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 196), double -1.391730e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 197), double -1.478090e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 198), double -1.564340e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 199), double -1.650480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 200), double -1.736480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 201), double -1.822360e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 202), double -1.908090e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 203), double -1.993680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 204), double -2.079120e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 205), double -2.164400e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 206), double -2.249510e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 207), double -2.334450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 208), double -2.419220e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 209), double -2.503800e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 210), double -2.588190e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 211), double -2.672380e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 212), double -2.756370e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 213), double -2.840150e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 214), double -2.923720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 215), double -3.007060e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 216), double -3.090170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 217), double -3.173050e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 218), double -3.255680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 219), double -3.338070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 220), double -3.420200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 221), double -3.502070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 222), double -3.583680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 223), double -3.665010e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 224), double -3.746070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 225), double -3.826840e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 226), double -3.907310e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 227), double -3.987490e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 228), double -4.067370e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 229), double -4.146930e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 230), double -4.226180e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 231), double -4.305110e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 232), double -4.383710e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 233), double -4.461980e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 234), double -4.539910e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 235), double -4.617490e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 236), double -4.694720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 237), double -4.771590e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 238), double -4.848100e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 239), double -4.924240e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 240), double -4.999800e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 241), double -5.075390e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 242), double -5.150380e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 243), double -5.224990e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 244), double -5.299200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 245), double -5.373000e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 246), double -5.446390e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 247), double -5.519370e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 248), double -5.591930e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 249), double -5.664070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 250), double -5.735770e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 251), double -5.807030e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 252), double -5.877860e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 253), double -5.948230e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 254), double -6.018150e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 255), double -6.087620e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 256), double -6.156620e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 257), double -6.225150e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 258), double -6.293210e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 259), double -6.360790e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 260), double -6.427880e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 261), double -6.494480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 262), double -6.560590e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 263), double -6.626200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 264), double -6.691310e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 265), double -6.755910e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 266), double -6.819990e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 267), double -6.883550e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 268), double -6.946590e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 269), double -7.009100e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 270), double -7.071070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 271), double -7.132510e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 272), double -7.193400e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 273), double -7.253750e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 274), double -7.313540e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 275), double -7.372780e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 276), double -7.431450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 277), double -7.489560e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 278), double -7.547100e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 279), double -7.604060e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 280), double -7.660450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 281), double -7.716250e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 282), double -7.771460e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 283), double -7.826090e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 284), double -7.880110e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 285), double -7.933540e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 286), double -7.986360e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 287), double -8.038570e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 288), double -8.090170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 289), double -8.141160e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 290), double -8.191520e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 291), double -8.241270e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 292), double -8.290380e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 293), double -8.338860e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 294), double -8.386710e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 295), double -8.433920e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 296), double -8.480480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 297), double -8.526410e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 298), double -8.571680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 299), double -8.616290e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 300), double -8.660260e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 301), double -8.703560e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 302), double -8.746200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 303), double -8.788170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 304), double -8.829480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 305), double -8.870110e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 306), double -8.910070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 307), double -8.949340e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 308), double -8.987940e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 309), double -9.025850e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 310), double -9.063080e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 311), double -9.099610e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 312), double -9.135450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 313), double -9.170600e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 314), double -9.205050e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 315), double -9.238790e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 316), double -9.271840e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 317), double -9.304170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 318), double -9.335800e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 319), double -9.366720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 320), double -9.396920e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 321), double -9.426410e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 322), double -9.455180e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 323), double -9.483230e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 324), double -9.510560e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 325), double -9.537170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 326), double -9.563050e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 327), double -9.588200e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 328), double -9.612610e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 329), double -9.636300e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 330), double -9.659260e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 331), double -9.681470e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 332), double -9.702950e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 333), double -9.723700e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 334), double -9.743700e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 335), double -9.762960e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 336), double -9.781470e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 337), double -9.799240e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 338), double -9.816270e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 339), double -9.832550e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 340), double -9.848070e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 341), double -9.862850e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 342), double -9.876880e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 343), double -9.890160e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 344), double -9.902680e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 345), double -9.914450e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 346), double -9.925460e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 347), double -9.935720e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 348), double -9.945220e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 349), double -9.953960e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 350), double -9.961950e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 351), double -9.969170e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 352), double -9.975640e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 353), double -9.981350e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 354), double -9.986290e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 355), double -9.990480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 356), double -9.993910e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 357), double -9.996570e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 358), double -9.998480e-01)
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed* getelementptr inbounds ([360 x %class.ap_fixed]* @_ZL6cosval, i64 0, i64 359), double -9.999620e-01)
  ret void
}

define void @_Z16houghlines_accelP7ap_uintILi256EEiiPfS2_ss(%class.ap_uint* %img_inp, i32 %rows, i32 %cols, float* %arrayy, float* %arrayx, i16 signext %threshold, i16 signext %maxlines) uwtable {
  %1 = alloca %class.ap_uint*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %pROWS = alloca i32, align 4
  %pCOLS = alloca i32, align 4
  %pNPC1 = alloca i32, align 4
  %in_mat = alloca %struct.xf_Mat_0_256_256_1_, align 4
  store %class.ap_uint* %img_inp, %class.ap_uint** %1, align 8
  store i32 %rows, i32* %2, align 4
  store i32 %cols, i32* %3, align 4
  store float* %arrayy, float** %4, align 8
  store float* %arrayx, float** %5, align 8
  store i16 %threshold, i16* %6, align 2
  store i16 %maxlines, i16* %7, align 2
  store i32 256, i32* %pROWS, align 4
  store i32 256, i32* %pCOLS, align 4
  store i32 1, i32* %pNPC1, align 4
  call void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %in_mat)
  %8 = load i32* %2, align 4
  %9 = load i32* %3, align 4
  call void @_ZL34p_ZN2xf16Mat_0_256_256_1_C2IEEii_1P19xf_Mat_0_256_256_1_ii(%struct.xf_Mat_0_256_256_1_* %in_mat, i32 %8, i32 %9)
  %10 = load %class.ap_uint** %1, align 8
  call void @_ZL95p_ZN2xf11Array2xfMatILi256ELi0ELi256ELi256ELi1EEEP7ap_uintILi256EER3MatILi0ELi256ELi256ELi1EE_1P7ap_uintILi256EER19xf_Mat_0_256_256_1_(%class.ap_uint* %10, %struct.xf_Mat_0_256_256_1_* %in_mat)
  %11 = load float** %4, align 8
  %12 = load float** %5, align 8
  %13 = load i16* %6, align 2
  %14 = load i16* %7, align 2
  call void @_ZL108p_ZN2xf10HoughLinesILj1ELj2ELi512ELi2203ELi0ELi180ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPfPfss_1R19xf_Mat_0_256_256_1_PfS1_ss(%struct.xf_Mat_0_256_256_1_* %in_mat, float* %11, float* %12, i16 signext %13, i16 signext %14)
  ret void
}

define linkonce_odr void @_ZN19xf_Mat_0_256_256_1_C1Ev(%struct.xf_Mat_0_256_256_1_* %this) unnamed_addr uwtable inlinehint align 2 {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  store %struct.xf_Mat_0_256_256_1_* %this, %struct.xf_Mat_0_256_256_1_** %1, align 8
  %2 = load %struct.xf_Mat_0_256_256_1_** %1
  call void @_ZN19xf_Mat_0_256_256_1_C2Ev(%struct.xf_Mat_0_256_256_1_* %2)
  ret void
}

define internal void @_ZL34p_ZN2xf16Mat_0_256_256_1_C2IEEii_1P19xf_Mat_0_256_256_1_ii(%struct.xf_Mat_0_256_256_1_* %this_, i32 %_rows, i32 %_cols) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.xf_Mat_0_256_256_1_* %this_, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store i32 %_rows, i32* %2, align 4
  store i32 %_cols, i32* %3, align 4
  %4 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %5 = load i32* %2, align 4
  %6 = load i32* %3, align 4
  call void @_ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib(%struct.xf_Mat_0_256_256_1_* %4, i32 %5, i32 %6, i1 zeroext true)
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

define internal void @_ZL108p_ZN2xf10HoughLinesILj1ELj2ELi512ELi2203ELi0ELi180ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPfPfss_1R19xf_Mat_0_256_256_1_PfS1_ss(%struct.xf_Mat_0_256_256_1_* %_src_mat, float* %outputrho, float* %outputtheta, i16 signext %threshold, i16 signext %linesmax) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca %class.ap_uint.1, align 1
  %7 = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store float* %outputrho, float** %2, align 8
  store float* %outputtheta, float** %3, align 8
  store i16 %threshold, i16* %4, align 2
  store i16 %linesmax, i16* %5, align 2
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
  call void @__assert_fail(i8* getelementptr inbounds ([108 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str2, i32 0, i32 0), i32 674, i8* getelementptr inbounds ([176 x i8]* @__PRETTY_FUNCTION__._ZL108p_ZN2xf10HoughLinesILj1ELj2ELi512ELi2203ELi0ELi180ELi0ELi256ELi256ELi1EEER3MatILi0ELi256ELi256ELi1EEPfPfss_1R19xf_Mat_0_256_256_1_PfS1_ss, i32 0, i32 0)) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  br label %20

; <label>:20                                      ; preds = %19, %17
  %21 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %22 = load float** %2, align 8
  %23 = load float** %3, align 8
  %24 = load i16* %4, align 2
  %25 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %26 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %25, i32 0, i32 1
  %27 = load i32* %26, align 4
  call void @_ZN7ap_uintILi12EEC1Ei(%class.ap_uint.1* %6, i32 %27)
  %28 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %29 = getelementptr inbounds %struct.xf_Mat_0_256_256_1_* %28, i32 0, i32 2
  %30 = load i32* %29, align 4
  call void @_ZN7ap_uintILi12EEC1Ei(%class.ap_uint.1* %7, i32 %30)
  %31 = load i16* %5, align 2
  %32 = getelementptr %class.ap_uint.1* %6, i32 0, i32 0
  %33 = bitcast [2 x i8]* %32 to i16*
  %34 = load i16* %33, align 1
  %35 = getelementptr %class.ap_uint.1* %7, i32 0, i32 0
  %36 = bitcast [2 x i8]* %35 to i16*
  %37 = load i16* %36, align 1
  call void @_ZL148p_ZN2xf12xfHoughLinesILi0ELi256ELi256ELi0ELi1ELi1ELj2ELj1ELi512ELi2203ELi0ELi180EEER3MatILi0ELi256ELi256ELi1EEPfPfs7ap_uintILi12EE7ap_uintILi12EEs_1R19xf_Mat_0_256_256_1_PfS1_s7ap_uintILi12EES3_s(%struct.xf_Mat_0_256_256_1_* %21, float* %22, float* %23, i16 signext %24, i16 %34, i16 %37, i16 signext %31)
  ret void
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define internal void @_ZL148p_ZN2xf12xfHoughLinesILi0ELi256ELi256ELi0ELi1ELi1ELj2ELj1ELi512ELi2203ELi0ELi180EEER3MatILi0ELi256ELi256ELi1EEPfPfs7ap_uintILi12EE7ap_uintILi12EEs_1R19xf_Mat_0_256_256_1_PfS1_s7ap_uintILi12EES3_s(%struct.xf_Mat_0_256_256_1_* %_src_mat, float* %outputrho, float* %outputtheta, i16 signext %_threshold, i16 %height.coerce, i16 %width.coerce, i16 signext %linesmax) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  %4 = alloca i16, align 2
  %height = alloca %class.ap_uint.1, align 2
  %width = alloca %class.ap_uint.1, align 2
  %5 = alloca i16, align 2
  %accum = alloca [181 x [2204 x %class.ap_uint.1]], align 16
  %6 = alloca %class.ap_uint.1, align 1
  %7 = alloca %class.ap_uint.1, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store float* %outputrho, float** %2, align 8
  store float* %outputtheta, float** %3, align 8
  store i16 %_threshold, i16* %4, align 2
  %8 = getelementptr %class.ap_uint.1* %height, i32 0, i32 0
  %9 = bitcast [2 x i8]* %8 to i16*
  store i16 %height.coerce, i16* %9, align 1
  %10 = getelementptr %class.ap_uint.1* %width, i32 0, i32 0
  %11 = bitcast [2 x i8]* %10 to i16*
  store i16 %width.coerce, i16* %11, align 1
  store i16 %linesmax, i16* %5, align 2
  %12 = getelementptr inbounds [181 x [2204 x %class.ap_uint.1]]* %accum, i32 0, i32 0, i32 0
  %13 = getelementptr inbounds %class.ap_uint.1* %12, i64 398924
  br label %14

; <label>:14                                      ; preds = %14, %0
  %15 = phi %class.ap_uint.1* [ %12, %0 ], [ %16, %14 ]
  call void @_ZN7ap_uintILi12EEC1Ev(%class.ap_uint.1* %15)
  %16 = getelementptr inbounds %class.ap_uint.1* %15, i64 1
  %17 = icmp eq %class.ap_uint.1* %16, %13
  br i1 %17, label %18, label %14

; <label>:18                                      ; preds = %14
  %19 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %20 = getelementptr inbounds [181 x [2204 x %class.ap_uint.1]]* %accum, i32 0, i32 0
  %21 = bitcast %class.ap_uint.1* %6 to i8*
  %22 = bitcast %class.ap_uint.1* %height to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 2, i32 1, i1 false)
  %23 = bitcast %class.ap_uint.1* %7 to i8*
  %24 = bitcast %class.ap_uint.1* %width to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 2, i32 1, i1 false)
  %25 = getelementptr %class.ap_uint.1* %6, i32 0, i32 0
  %26 = bitcast [2 x i8]* %25 to i16*
  %27 = load i16* %26, align 1
  %28 = getelementptr %class.ap_uint.1* %7, i32 0, i32 0
  %29 = bitcast [2 x i8]* %28 to i16*
  %30 = load i16* %29, align 1
  call void @_ZL153p_ZN2xf8xfVotingILi0ELi256ELi256ELi0ELi1ELi1ELj2ELj1ELi180ELi2203ELi0EEER3MatILi0ELi256ELi256ELi1EEPA2204_7ap_uintILi12EE7ap_uintILi12EE7ap_uintILi12EE_1R19xf_Mat_0_256_256_1_PA2204_7ap_uintILi12EES2_S2_(%struct.xf_Mat_0_256_256_1_* %19, [2204 x %class.ap_uint.1]* %20, i16 %27, i16 %30)
  %31 = getelementptr inbounds [181 x [2204 x %class.ap_uint.1]]* %accum, i32 0, i32 0
  %32 = load i16* %4, align 2
  call void @_ZL84p_ZN2xf10xfThinningILi256ELi256ELi0ELi1ELi1ELj180ELi2203EEEPA2204_7ap_uintILi12EEs_1PA2204_7ap_uintILi12EEs([2204 x %class.ap_uint.1]* %31, i16 signext %32)
  %33 = getelementptr inbounds [181 x [2204 x %class.ap_uint.1]]* %accum, i32 0, i32 0
  %34 = load float** %2, align 8
  %35 = load float** %3, align 8
  %36 = load i16* %5, align 2
  call void @_ZL104p_ZN2xf9xfSortingILi256ELi256ELi0ELi1ELi1ELj2ELj1ELi180ELi2203ELi512ELi0EEEPA2204_7ap_uintILi12EEPfPfs_1PA2204_7ap_uintILi12EEPfS3_s([2204 x %class.ap_uint.1]* %33, float* %34, float* %35, i16 signext %36)
  ret void
}

declare void @_ZN7ap_uintILi12EEC1Ei(%class.ap_uint.1*, i32)

declare void @_ZN7ap_uintILi12EEC1Ev(%class.ap_uint.1*)

define internal void @_ZL153p_ZN2xf8xfVotingILi0ELi256ELi256ELi0ELi1ELi1ELj2ELj1ELi180ELi2203ELi0EEER3MatILi0ELi256ELi256ELi1EEPA2204_7ap_uintILi12EE7ap_uintILi12EE7ap_uintILi12EE_1R19xf_Mat_0_256_256_1_PA2204_7ap_uintILi12EES2_S2_(%struct.xf_Mat_0_256_256_1_* %_src_mat, [2204 x %class.ap_uint.1]* %accum, i16 %height.coerce, i16 %width.coerce) uwtable {
  %1 = alloca %struct.xf_Mat_0_256_256_1_*, align 8
  %2 = alloca [2204 x %class.ap_uint.1]*, align 8
  %height = alloca %class.ap_uint.1, align 2
  %width = alloca %class.ap_uint.1, align 2
  %r = alloca %class.ap_uint.5, align 1
  %3 = alloca %class.ap_uint.5, align 1
  %n = alloca %class.ap_uint.5, align 1
  %4 = alloca %class.ap_uint.5, align 1
  %5 = alloca %class.ap_uint.5, align 1
  %6 = alloca %class.ap_uint.5, align 1
  %sinvals = alloca [180 x %class.ap_fixed], align 16
  %cosvals = alloca [180 x %class.ap_fixed], align 16
  %rhoval = alloca i8, align 1
  %_l_n = alloca %class.ap_uint.2, align 1
  %_l_ang = alloca %class.ap_uint.2, align 1
  %7 = alloca %class.ap_uint.2, align 1
  %8 = alloca %class.ap_fixed, align 1
  %9 = alloca %class.ap_fixed, align 1
  %10 = alloca %class.ap_uint.2, align 1
  %11 = alloca %class.ap_uint.2, align 1
  %rho_prev_set1 = alloca [180 x %class.ap_uint.5], align 16
  %rho_stg3 = alloca %class.ap_uint.5, align 1
  %rho_stg3_reg = alloca [180 x %class.ap_uint.5], align 16
  %rho_set2_reg = alloca %class.ap_uint.5, align 1
  %rho_stg3_apfixedp1 = alloca %class.ap_fixed.6, align 1
  %rho_stg3_apfixedp0 = alloca %class.ap_fixed.7, align 1
  %rho_stg1_sin = alloca [180 x %class.ap_fixed.8], align 16
  %rho_stg1_cos = alloca [180 x %class.ap_fixed.8], align 16
  %rho_stg1_sin_wire = alloca [180 x %class.ap_fixed.8], align 16
  %rho_stg2 = alloca [180 x %class.ap_fixed.8], align 16
  %accval_reg_set1 = alloca [180 x %class.ap_uint.1], align 16
  %diag_offset = alloca %class.ap_fixed.3, align 1
  %roundval = alloca %class.ap_fixed.3, align 1
  %rnd_Const_m0p5 = alloca %class.ap_fixed.3, align 1
  %12 = alloca %class.ap_fixed.8, align 1
  %13 = alloca %class.ap_fixed.3, align 1
  %14 = alloca %class.ap_fixed.3, align 1
  %rnd_Const_p0p5 = alloca %class.ap_fixed.3, align 1
  %15 = alloca %class.ap_fixed.8, align 1
  %16 = alloca %class.ap_fixed.3, align 1
  %17 = alloca %class.ap_fixed.3, align 1
  %hei = alloca %class.ap_uint.5, align 1
  %18 = alloca %class.ap_uint.1, align 1
  %wdt = alloca %class.ap_uint.5, align 1
  %19 = alloca %class.ap_uint.1, align 1
  %rho_stg1_sin_sin = alloca %class.ap_fixed.8, align 1
  %rho_stg1_sin_cos = alloca %class.ap_fixed.8, align 1
  %ki = alloca %class.ap_uint.2, align 1
  %20 = alloca %class.ap_uint.2, align 1
  %21 = alloca %class.ap_fixed.9, align 1
  %22 = alloca %class.ap_fixed.10, align 1
  %23 = alloca %class.ap_int, align 1
  %24 = alloca %class.ap_fixed, align 1
  %25 = alloca %class.ap_fixed.10, align 1
  %26 = alloca %class.ap_int, align 1
  %27 = alloca %class.ap_fixed, align 1
  %28 = alloca %class.ap_uint.2, align 1
  %rho_offset = alloca %class.ap_fixed.3, align 1
  %rho_stg2_rsh = alloca %class.ap_fixed.3, align 1
  %acc_val_set1 = alloca %class.ap_uint.1, align 1
  %upd_accval_set1 = alloca %class.ap_uint.1, align 1
  %row_index = alloca %class.ap_uint.11, align 1
  %rho_stg2_lsbs = alloca i8, align 1
  %j_eq_width = alloca i8, align 1
  %j_eq_0 = alloca i8, align 1
  %delay_1edge = alloca i8, align 1
  %img_pixel_val_reg = alloca %class.ap_uint.0, align 1
  %i = alloca %class.ap_uint.5, align 1
  %29 = alloca %class.ap_uint.5, align 1
  %30 = alloca %class.ap_uint.1, align 1
  %img_pixel_val = alloca %class.ap_uint.0, align 1
  %j = alloca %class.ap_uint.1, align 1
  %31 = alloca %class.ap_uint.1, align 1
  %32 = alloca %class.ap_uint.1, align 1
  %33 = alloca %class.ap_uint.0, align 1
  %34 = alloca %class.ap_uint.1, align 1
  %35 = alloca %class.ap_uint.1, align 1
  %36 = alloca %class.ap_uint.1, align 1
  %n1 = alloca %class.ap_uint.2, align 1
  %37 = alloca %class.ap_uint.2, align 1
  %38 = alloca %class.ap_fixed.12, align 1
  %39 = alloca %class.ap_fixed.8, align 1
  %40 = alloca %class.ap_fixed, align 1
  %41 = alloca i48
  %42 = alloca %class.ap_fixed.12, align 1
  %43 = alloca %class.ap_fixed.8, align 1
  %44 = alloca %class.ap_fixed, align 1
  %45 = alloca i48
  %46 = alloca %class.ap_fixed.8, align 1
  %47 = alloca %class.ap_fixed.3, align 1
  %48 = alloca %class.ap_fixed.3, align 1
  %49 = alloca %class.ap_fixed.7, align 1
  %50 = alloca %class.ap_uint.0, align 1
  %51 = alloca %class.ap_uint.1, align 1
  %52 = alloca %class.ap_uint.5, align 1
  %53 = alloca %class.ap_uint.5, align 1
  %54 = alloca %class.ap_uint.2, align 1
  %55 = alloca %class.ap_uint.0, align 1
  %56 = alloca %class.ap_uint.11, align 1
  %57 = alloca i24
  %58 = alloca %class.ap_uint.1, align 1
  %59 = alloca %class.ap_uint.5, align 1
  %n2 = alloca %class.ap_uint.2, align 1
  %60 = alloca %class.ap_uint.2, align 1
  %61 = alloca %class.ap_uint.1, align 1
  %62 = alloca %class.ap_uint.2, align 1
  store %struct.xf_Mat_0_256_256_1_* %_src_mat, %struct.xf_Mat_0_256_256_1_** %1, align 8
  store [2204 x %class.ap_uint.1]* %accum, [2204 x %class.ap_uint.1]** %2, align 8
  %63 = getelementptr %class.ap_uint.1* %height, i32 0, i32 0
  %64 = bitcast [2 x i8]* %63 to i16*
  store i16 %height.coerce, i16* %64, align 1
  %65 = getelementptr %class.ap_uint.1* %width, i32 0, i32 0
  %66 = bitcast [2 x i8]* %65 to i16*
  store i16 %width.coerce, i16* %66, align 1
  br label %67

; <label>:67                                      ; preds = %0
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.5* %r, i32 0)
  br label %68

; <label>:68                                      ; preds = %96, %67
  %69 = bitcast %class.ap_uint.5* %3 to i8*
  %70 = bitcast %class.ap_uint.5* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 2, i32 1, i1 false)
  %71 = getelementptr %class.ap_uint.5* %3, i32 0, i32 0
  %72 = bitcast [2 x i8]* %71 to i16*
  %73 = load i16* %72, align 1
  %74 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %73, i32 2204)
  br i1 %74, label %75, label %100

; <label>:75                                      ; preds = %68
  br label %76

; <label>:76                                      ; preds = %75
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.5* %n, i32 0)
  br label %77

; <label>:77                                      ; preds = %91, %76
  %78 = bitcast %class.ap_uint.5* %4 to i8*
  %79 = bitcast %class.ap_uint.5* %n to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 2, i32 1, i1 false)
  %80 = getelementptr %class.ap_uint.5* %4, i32 0, i32 0
  %81 = bitcast [2 x i8]* %80 to i16*
  %82 = load i16* %81, align 1
  %83 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %82, i32 181)
  br i1 %83, label %84, label %95

; <label>:84                                      ; preds = %77
  %85 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.5* %r)
  %86 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.5* %n)
  %87 = load [2204 x %class.ap_uint.1]** %2, align 8
  %88 = getelementptr inbounds [2204 x %class.ap_uint.1]* %87, i64 %86
  %89 = getelementptr inbounds [2204 x %class.ap_uint.1]* %88, i32 0, i64 %85
  %90 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSEi(%class.ap_uint.1* %89, i32 0)
  br label %91

; <label>:91                                      ; preds = %84
  %92 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.5* %n, i32 0)
  %93 = getelementptr %class.ap_uint.5* %5, i32 0, i32 0
  %94 = bitcast [2 x i8]* %93 to i16*
  store i16 %92, i16* %94, align 1
  br label %77

; <label>:95                                      ; preds = %77
  br label %96

; <label>:96                                      ; preds = %95
  %97 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.5* %r, i32 0)
  %98 = getelementptr %class.ap_uint.5* %6, i32 0, i32 0
  %99 = bitcast [2 x i8]* %98 to i16*
  store i16 %97, i16* %99, align 1
  br label %68

; <label>:100                                     ; preds = %68
  %101 = getelementptr inbounds [180 x %class.ap_fixed]* %sinvals, i32 0, i32 0
  %102 = getelementptr inbounds %class.ap_fixed* %101, i64 180
  br label %103

; <label>:103                                     ; preds = %103, %100
  %104 = phi %class.ap_fixed* [ %101, %100 ], [ %105, %103 ]
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed* %104)
  %105 = getelementptr inbounds %class.ap_fixed* %104, i64 1
  %106 = icmp eq %class.ap_fixed* %105, %102
  br i1 %106, label %107, label %103

; <label>:107                                     ; preds = %103
  %108 = getelementptr inbounds [180 x %class.ap_fixed]* %cosvals, i32 0, i32 0
  %109 = getelementptr inbounds %class.ap_fixed* %108, i64 180
  br label %110

; <label>:110                                     ; preds = %110, %107
  %111 = phi %class.ap_fixed* [ %108, %107 ], [ %112, %110 ]
  call void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed* %111)
  %112 = getelementptr inbounds %class.ap_fixed* %111, i64 1
  %113 = icmp eq %class.ap_fixed* %112, %109
  br i1 %113, label %114, label %110

; <label>:114                                     ; preds = %110
  store i8 1, i8* %rhoval, align 1
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %_l_n, i32 0)
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %_l_ang, i32 0)
  br label %115

; <label>:115                                     ; preds = %114
  %116 = call %class.ap_uint.2* @_ZN7ap_uintILi10EEaSEi(%class.ap_uint.2* %_l_n, i32 0)
  br label %117

; <label>:117                                     ; preds = %147, %115
  %118 = bitcast %class.ap_uint.2* %7 to i8*
  %119 = bitcast %class.ap_uint.2* %_l_n to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 2, i32 1, i1 false)
  %120 = getelementptr %class.ap_uint.2* %7, i32 0, i32 0
  %121 = bitcast [2 x i8]* %120 to i16*
  %122 = load i16* %121, align 1
  %123 = call zeroext i1 @_ZleILi10EEb7ap_uintIXT_EEi(i16 %122, i32 179)
  br i1 %123, label %124, label %151

; <label>:124                                     ; preds = %117
  %125 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %_l_n)
  %126 = getelementptr inbounds [180 x %class.ap_fixed]* %sinvals, i32 0, i64 %125
  %127 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %_l_ang)
  %128 = getelementptr inbounds [360 x %class.ap_fixed]* @_ZL6sinval, i32 0, i64 %127
  %129 = load i8* %rhoval, align 1
  %130 = call i16 @_ZdvILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EE8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EERKS3_h(%class.ap_fixed* %128, i8 zeroext %129)
  %131 = getelementptr %class.ap_fixed* %8, i32 0, i32 0
  %132 = bitcast [2 x i8]* %131 to i16*
  store i16 %130, i16* %132, align 1
  %133 = call %class.ap_fixed* @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSERKS2_(%class.ap_fixed* %126, %class.ap_fixed* %8)
  %134 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %_l_n)
  %135 = getelementptr inbounds [180 x %class.ap_fixed]* %cosvals, i32 0, i64 %134
  %136 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %_l_ang)
  %137 = getelementptr inbounds [360 x %class.ap_fixed]* @_ZL6cosval, i32 0, i64 %136
  %138 = load i8* %rhoval, align 1
  %139 = call i16 @_ZdvILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EE8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EERKS3_h(%class.ap_fixed* %137, i8 zeroext %138)
  %140 = getelementptr %class.ap_fixed* %9, i32 0, i32 0
  %141 = bitcast [2 x i8]* %140 to i16*
  store i16 %139, i16* %141, align 1
  %142 = call %class.ap_fixed* @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSERKS2_(%class.ap_fixed* %135, %class.ap_fixed* %9)
  %143 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %_l_ang, i32 2)
  %144 = getelementptr %class.ap_uint.2* %10, i32 0, i32 0
  %145 = bitcast [2 x i8]* %144 to i16*
  store i16 %143, i16* %145, align 1
  %146 = call %class.ap_uint.2* @_ZN7ap_uintILi10EEaSERKS0_(%class.ap_uint.2* %_l_ang, %class.ap_uint.2* %10)
  br label %147

; <label>:147                                     ; preds = %124
  %148 = call i16 @_ZN7ap_uintILi10EEppEv(%class.ap_uint.2* %_l_n)
  %149 = getelementptr %class.ap_uint.2* %11, i32 0, i32 0
  %150 = bitcast [2 x i8]* %149 to i16*
  store i16 %148, i16* %150, align 1
  br label %117

; <label>:151                                     ; preds = %117
  %152 = getelementptr inbounds [180 x %class.ap_uint.5]* %rho_prev_set1, i32 0, i32 0
  %153 = getelementptr inbounds %class.ap_uint.5* %152, i64 180
  br label %154

; <label>:154                                     ; preds = %154, %151
  %155 = phi %class.ap_uint.5* [ %152, %151 ], [ %156, %154 ]
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.5* %155)
  %156 = getelementptr inbounds %class.ap_uint.5* %155, i64 1
  %157 = icmp eq %class.ap_uint.5* %156, %153
  br i1 %157, label %158, label %154

; <label>:158                                     ; preds = %154
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.5* %rho_stg3)
  %159 = getelementptr inbounds [180 x %class.ap_uint.5]* %rho_stg3_reg, i32 0, i32 0
  %160 = getelementptr inbounds %class.ap_uint.5* %159, i64 180
  br label %161

; <label>:161                                     ; preds = %161, %158
  %162 = phi %class.ap_uint.5* [ %159, %158 ], [ %163, %161 ]
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.5* %162)
  %163 = getelementptr inbounds %class.ap_uint.5* %162, i64 1
  %164 = icmp eq %class.ap_uint.5* %163, %160
  br i1 %164, label %165, label %161

; <label>:165                                     ; preds = %161
  call void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.5* %rho_set2_reg)
  call void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.6* %rho_stg3_apfixedp1)
  call void @_ZN8ap_fixedILi13ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.7* %rho_stg3_apfixedp0)
  %166 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg1_sin, i32 0, i32 0
  %167 = getelementptr inbounds %class.ap_fixed.8* %166, i64 180
  br label %168

; <label>:168                                     ; preds = %168, %165
  %169 = phi %class.ap_fixed.8* [ %166, %165 ], [ %170, %168 ]
  call void @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.8* %169)
  %170 = getelementptr inbounds %class.ap_fixed.8* %169, i64 1
  %171 = icmp eq %class.ap_fixed.8* %170, %167
  br i1 %171, label %172, label %168

; <label>:172                                     ; preds = %168
  %173 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg1_cos, i32 0, i32 0
  %174 = getelementptr inbounds %class.ap_fixed.8* %173, i64 180
  br label %175

; <label>:175                                     ; preds = %175, %172
  %176 = phi %class.ap_fixed.8* [ %173, %172 ], [ %177, %175 ]
  call void @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.8* %176)
  %177 = getelementptr inbounds %class.ap_fixed.8* %176, i64 1
  %178 = icmp eq %class.ap_fixed.8* %177, %174
  br i1 %178, label %179, label %175

; <label>:179                                     ; preds = %175
  %180 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg1_sin_wire, i32 0, i32 0
  %181 = getelementptr inbounds %class.ap_fixed.8* %180, i64 180
  br label %182

; <label>:182                                     ; preds = %182, %179
  %183 = phi %class.ap_fixed.8* [ %180, %179 ], [ %184, %182 ]
  call void @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.8* %183)
  %184 = getelementptr inbounds %class.ap_fixed.8* %183, i64 1
  %185 = icmp eq %class.ap_fixed.8* %184, %181
  br i1 %185, label %186, label %182

; <label>:186                                     ; preds = %182
  %187 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg2, i32 0, i32 0
  %188 = getelementptr inbounds %class.ap_fixed.8* %187, i64 180
  br label %189

; <label>:189                                     ; preds = %189, %186
  %190 = phi %class.ap_fixed.8* [ %187, %186 ], [ %191, %189 ]
  call void @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.8* %190)
  %191 = getelementptr inbounds %class.ap_fixed.8* %190, i64 1
  %192 = icmp eq %class.ap_fixed.8* %191, %188
  br i1 %192, label %193, label %189

; <label>:193                                     ; preds = %189
  %194 = getelementptr inbounds [180 x %class.ap_uint.1]* %accval_reg_set1, i32 0, i32 0
  %195 = getelementptr inbounds %class.ap_uint.1* %194, i64 180
  br label %196

; <label>:196                                     ; preds = %196, %193
  %197 = phi %class.ap_uint.1* [ %194, %193 ], [ %198, %196 ]
  call void @_ZN7ap_uintILi12EEC1Ev(%class.ap_uint.1* %197)
  %198 = getelementptr inbounds %class.ap_uint.1* %197, i64 1
  %199 = icmp eq %class.ap_uint.1* %198, %195
  br i1 %199, label %200, label %196

; <label>:200                                     ; preds = %196
  call void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ei(%class.ap_fixed.3* %diag_offset, i32 1101)
  call void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed.3* %roundval, double 5.000000e-01)
  %201 = bitcast %class.ap_fixed.3* %13 to i8*
  %202 = bitcast %class.ap_fixed.3* %diag_offset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* %202, i64 2, i32 1, i1 false)
  %203 = bitcast %class.ap_fixed.3* %14 to i8*
  %204 = bitcast %class.ap_fixed.3* %roundval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %203, i8* %204, i64 2, i32 1, i1 false)
  %205 = getelementptr %class.ap_fixed.3* %13, i32 0, i32 0
  %206 = bitcast [2 x i8]* %205 to i16*
  %207 = load i16* %206, align 1
  %208 = getelementptr %class.ap_fixed.3* %14, i32 0, i32 0
  %209 = bitcast [2 x i8]* %208 to i16*
  %210 = load i16* %209, align 1
  %211 = call i32 @_ZmiILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0ELi14ELi13ELS0_0ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i16 %207, i16 %210)
  %212 = getelementptr %class.ap_fixed.8* %12, i32 0, i32 0
  %213 = bitcast [4 x i8]* %212 to i32*
  store i32 %211, i32* %213, align 1
  call void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1ILi28ELi13ELS0_0ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_fixed.3* %rnd_Const_m0p5, %class.ap_fixed.8* %12)
  %214 = bitcast %class.ap_fixed.3* %16 to i8*
  %215 = bitcast %class.ap_fixed.3* %diag_offset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %214, i8* %215, i64 2, i32 1, i1 false)
  %216 = bitcast %class.ap_fixed.3* %17 to i8*
  %217 = bitcast %class.ap_fixed.3* %roundval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %216, i8* %217, i64 2, i32 1, i1 false)
  %218 = getelementptr %class.ap_fixed.3* %16, i32 0, i32 0
  %219 = bitcast [2 x i8]* %218 to i16*
  %220 = load i16* %219, align 1
  %221 = getelementptr %class.ap_fixed.3* %17, i32 0, i32 0
  %222 = bitcast [2 x i8]* %221 to i16*
  %223 = load i16* %222, align 1
  %224 = call i32 @_ZplILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0ELi14ELi13ELS0_0ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i16 %220, i16 %223)
  %225 = getelementptr %class.ap_fixed.8* %15, i32 0, i32 0
  %226 = bitcast [4 x i8]* %225 to i32*
  store i32 %224, i32* %226, align 1
  call void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1ILi28ELi13ELS0_0ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_fixed.3* %rnd_Const_p0p5, %class.ap_fixed.8* %15)
  %227 = call i16 @_ZdvILi12EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %height, i32 2)
  %228 = getelementptr %class.ap_uint.1* %18, i32 0, i32 0
  %229 = bitcast [2 x i8]* %228 to i16*
  store i16 %227, i16* %229, align 1
  call void @_ZN7ap_uintILi13EEC1ILi12EEERKS_IXT_EE(%class.ap_uint.5* %hei, %class.ap_uint.1* %18)
  %230 = call i16 @_ZdvILi12EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %width, i32 2)
  %231 = getelementptr %class.ap_uint.1* %19, i32 0, i32 0
  %232 = bitcast [2 x i8]* %231 to i16*
  store i16 %230, i16* %232, align 1
  call void @_ZN7ap_uintILi13EEC1ILi12EEERKS_IXT_EE(%class.ap_uint.5* %wdt, %class.ap_uint.1* %19)
  call void @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.8* %rho_stg1_sin_sin)
  call void @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.8* %rho_stg1_sin_cos)
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %ki, i32 0)
  br label %233

; <label>:233                                     ; preds = %294, %200
  %234 = bitcast %class.ap_uint.2* %20 to i8*
  %235 = bitcast %class.ap_uint.2* %ki to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %234, i8* %235, i64 2, i32 1, i1 false)
  %236 = getelementptr %class.ap_uint.2* %20, i32 0, i32 0
  %237 = bitcast [2 x i8]* %236 to i16*
  %238 = load i16* %237, align 1
  %239 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16 %238, i32 180)
  br i1 %239, label %240, label %298

; <label>:240                                     ; preds = %233
  %241 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %ki)
  %242 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg1_sin, i32 0, i64 %241
  %243 = call i16 @_ZNK7ap_uintILi13EEngEv(%class.ap_uint.5* %wdt)
  %244 = getelementptr %class.ap_int* %23, i32 0, i32 0
  %245 = bitcast [2 x i8]* %244 to i16*
  store i16 %243, i16* %245, align 1
  %246 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %ki)
  %247 = getelementptr inbounds [180 x %class.ap_fixed]* %cosvals, i32 0, i64 %246
  %248 = bitcast %class.ap_fixed* %24 to i8*
  %249 = bitcast %class.ap_fixed* %247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %248, i8* %249, i64 2, i32 1, i1 false)
  %250 = getelementptr %class.ap_int* %23, i32 0, i32 0
  %251 = bitcast [2 x i8]* %250 to i16*
  %252 = load i16* %251, align 1
  %253 = getelementptr %class.ap_fixed* %24, i32 0, i32 0
  %254 = bitcast [2 x i8]* %253 to i16*
  %255 = load i16* %254, align 1
  %256 = call i32 @_ZmlILi14ELi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EE8ap_fixedIXplT_T0_EXT1_EXT2_EXT3_EXT4_EE6ap_intIXT_EES2_IXT0_EXT1_EXT2_EXT3_EXT4_EE(i16 %252, i16 %255)
  %257 = getelementptr %class.ap_fixed.10* %22, i32 0, i32 0
  %258 = bitcast [4 x i8]* %257 to i32*
  store i32 %256, i32* %258, align 1
  %259 = call i16 @_ZNK7ap_uintILi13EEngEv(%class.ap_uint.5* %hei)
  %260 = getelementptr %class.ap_int* %26, i32 0, i32 0
  %261 = bitcast [2 x i8]* %260 to i16*
  store i16 %259, i16* %261, align 1
  %262 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %ki)
  %263 = getelementptr inbounds [180 x %class.ap_fixed]* %sinvals, i32 0, i64 %262
  %264 = bitcast %class.ap_fixed* %27 to i8*
  %265 = bitcast %class.ap_fixed* %263 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %264, i8* %265, i64 2, i32 1, i1 false)
  %266 = getelementptr %class.ap_int* %26, i32 0, i32 0
  %267 = bitcast [2 x i8]* %266 to i16*
  %268 = load i16* %267, align 1
  %269 = getelementptr %class.ap_fixed* %27, i32 0, i32 0
  %270 = bitcast [2 x i8]* %269 to i16*
  %271 = load i16* %270, align 1
  %272 = call i32 @_ZmlILi14ELi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EE8ap_fixedIXplT_T0_EXT1_EXT2_EXT3_EXT4_EE6ap_intIXT_EES2_IXT0_EXT1_EXT2_EXT3_EXT4_EE(i16 %268, i16 %271)
  %273 = getelementptr %class.ap_fixed.10* %25, i32 0, i32 0
  %274 = bitcast [4 x i8]* %273 to i32*
  store i32 %272, i32* %274, align 1
  %275 = getelementptr %class.ap_fixed.10* %22, i32 0, i32 0
  %276 = bitcast [4 x i8]* %275 to i32*
  %277 = load i32* %276, align 1
  %278 = getelementptr %class.ap_fixed.10* %25, i32 0, i32 0
  %279 = bitcast [4 x i8]* %278 to i32*
  %280 = load i32* %279, align 1
  %281 = call i64 @_ZplILi30ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0ELi30ELi1ELS0_0ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i32 %277, i32 %280)
  %282 = getelementptr %class.ap_fixed.9* %21, i32 0, i32 0
  %283 = bitcast [8 x i8]* %282 to i64*
  store i64 %281, i64* %283, align 1
  %284 = call %class.ap_fixed.8* @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSILi60ELi1ELS0_0ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_fixed.8* %242, %class.ap_fixed.9* %21)
  %285 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %ki)
  %286 = getelementptr inbounds [180 x %class.ap_uint.5]* %rho_prev_set1, i32 0, i64 %285
  %287 = call %class.ap_uint.5* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.5* %286, i32 0)
  %288 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %ki)
  %289 = getelementptr inbounds [180 x %class.ap_uint.1]* %accval_reg_set1, i32 0, i64 %288
  %290 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSEi(%class.ap_uint.1* %289, i32 0)
  %291 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %ki)
  %292 = getelementptr inbounds [180 x %class.ap_uint.5]* %rho_stg3_reg, i32 0, i64 %291
  %293 = call %class.ap_uint.5* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.5* %292, i32 0)
  br label %294

; <label>:294                                     ; preds = %240
  %295 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.2* %ki, i32 0)
  %296 = getelementptr %class.ap_uint.2* %28, i32 0, i32 0
  %297 = bitcast [2 x i8]* %296 to i16*
  store i16 %295, i16* %297, align 1
  br label %233

; <label>:298                                     ; preds = %233
  call void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.3* %rho_offset)
  call void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.3* %rho_stg2_rsh)
  call void @_ZN7ap_uintILi12EEC1Ev(%class.ap_uint.1* %acc_val_set1)
  call void @_ZN7ap_uintILi12EEC1Ei(%class.ap_uint.1* %upd_accval_set1, i32 0)
  call void @_ZN7ap_uintILi23EEC1Ei(%class.ap_uint.11* %row_index, i32 0)
  store i8 0, i8* %delay_1edge, align 1
  call void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0* %img_pixel_val_reg, i32 0)
  br label %299

; <label>:299                                     ; preds = %298
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.5* %i, i32 0)
  br label %300

; <label>:300                                     ; preds = %556, %299
  %301 = bitcast %class.ap_uint.5* %29 to i8*
  %302 = bitcast %class.ap_uint.5* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %301, i8* %302, i64 2, i32 1, i1 false)
  %303 = bitcast %class.ap_uint.1* %30 to i8*
  %304 = bitcast %class.ap_uint.1* %height to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %303, i8* %304, i64 2, i32 1, i1 false)
  %305 = getelementptr %class.ap_uint.5* %29, i32 0, i32 0
  %306 = bitcast [2 x i8]* %305 to i16*
  %307 = load i16* %306, align 1
  %308 = getelementptr %class.ap_uint.1* %30, i32 0, i32 0
  %309 = bitcast [2 x i8]* %308 to i16*
  %310 = load i16* %309, align 1
  %311 = call zeroext i1 @_ZltILi13ELi12EEb7ap_uintIXT_EES0_IXT0_EE(i16 %307, i16 %310)
  br i1 %311, label %312, label %560

; <label>:312                                     ; preds = %300
  call void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0* %img_pixel_val)
  br label %313

; <label>:313                                     ; preds = %312
  call void @_ZN7ap_uintILi12EEC1Ei(%class.ap_uint.1* %j, i32 0)
  br label %314

; <label>:314                                     ; preds = %551, %313
  %315 = bitcast %class.ap_uint.1* %31 to i8*
  %316 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %315, i8* %316, i64 2, i32 1, i1 false)
  %317 = bitcast %class.ap_uint.1* %32 to i8*
  %318 = bitcast %class.ap_uint.1* %width to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %317, i8* %318, i64 2, i32 1, i1 false)
  %319 = getelementptr %class.ap_uint.1* %31, i32 0, i32 0
  %320 = bitcast [2 x i8]* %319 to i16*
  %321 = load i16* %320, align 1
  %322 = getelementptr %class.ap_uint.1* %32, i32 0, i32 0
  %323 = bitcast [2 x i8]* %322 to i16*
  %324 = load i16* %323, align 1
  %325 = call zeroext i1 @_ZltILi12ELi12EEb7ap_uintIXT_EES0_IXT0_EE(i16 %321, i16 %324)
  br i1 %325, label %326, label %555

; <label>:326                                     ; preds = %314
  %327 = load %struct.xf_Mat_0_256_256_1_** %1, align 8
  %328 = call i64 @_ZNK7ap_uintILi23EEcvmEv(%class.ap_uint.11* %row_index)
  %329 = trunc i64 %328 to i32
  %330 = call i8 @_ZL36p_ZN2xf16Mat_0_256_256_1_4readIEEi_1P19xf_Mat_0_256_256_1_i(%struct.xf_Mat_0_256_256_1_* %327, i32 %329)
  %331 = getelementptr %class.ap_uint.0* %33, i32 0, i32 0
  %332 = bitcast [1 x i8]* %331 to i8*
  store i8 %330, i8* %332, align 1
  %333 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %img_pixel_val, %class.ap_uint.0* %33)
  %334 = bitcast %class.ap_uint.1* %34 to i8*
  %335 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %334, i8* %335, i64 2, i32 1, i1 false)
  %336 = call i16 @_ZmiILi12EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %width, i32 1)
  %337 = getelementptr %class.ap_uint.1* %35, i32 0, i32 0
  %338 = bitcast [2 x i8]* %337 to i16*
  store i16 %336, i16* %338, align 1
  %339 = getelementptr %class.ap_uint.1* %34, i32 0, i32 0
  %340 = bitcast [2 x i8]* %339 to i16*
  %341 = load i16* %340, align 1
  %342 = getelementptr %class.ap_uint.1* %35, i32 0, i32 0
  %343 = bitcast [2 x i8]* %342 to i16*
  %344 = load i16* %343, align 1
  %345 = call zeroext i1 @_ZeqILi12ELi12EEb7ap_uintIXT_EES0_IXT0_EE(i16 %341, i16 %344)
  %346 = select i1 %345, i32 1, i32 0
  %347 = icmp ne i32 %346, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %j_eq_width, align 1
  %349 = bitcast %class.ap_uint.1* %36 to i8*
  %350 = bitcast %class.ap_uint.1* %j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %349, i8* %350, i64 2, i32 1, i1 false)
  %351 = getelementptr %class.ap_uint.1* %36, i32 0, i32 0
  %352 = bitcast [2 x i8]* %351 to i16*
  %353 = load i16* %352, align 1
  %354 = call zeroext i1 @_ZeqILi12EEb7ap_uintIXT_EEi(i16 %353, i32 0)
  %355 = select i1 %354, i32 1, i32 0
  %356 = icmp ne i32 %355, 0
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %j_eq_0, align 1
  br label %358

; <label>:358                                     ; preds = %326
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %n1, i32 0)
  br label %359

; <label>:359                                     ; preds = %532, %358
  %360 = bitcast %class.ap_uint.2* %37 to i8*
  %361 = bitcast %class.ap_uint.2* %n1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %360, i8* %361, i64 2, i32 1, i1 false)
  %362 = getelementptr %class.ap_uint.2* %37, i32 0, i32 0
  %363 = bitcast [2 x i8]* %362 to i16*
  %364 = load i16* %363, align 1
  %365 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16 %364, i32 180)
  br i1 %365, label %366, label %536

; <label>:366                                     ; preds = %359
  %367 = load i8* %j_eq_0, align 1
  %368 = trunc i8 %367 to i1
  br i1 %368, label %369, label %375

; <label>:369                                     ; preds = %366
  %370 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %371 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg2, i32 0, i64 %370
  %372 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %373 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg1_sin, i32 0, i64 %372
  %374 = call %class.ap_fixed.8* @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSERKS2_(%class.ap_fixed.8* %371, %class.ap_fixed.8* %373)
  br label %381

; <label>:375                                     ; preds = %366
  %376 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %377 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg2, i32 0, i64 %376
  %378 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %379 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg1_cos, i32 0, i64 %378
  %380 = call %class.ap_fixed.8* @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSERKS2_(%class.ap_fixed.8* %377, %class.ap_fixed.8* %379)
  br label %381

; <label>:381                                     ; preds = %375, %369
  %382 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %383 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg1_cos, i32 0, i64 %382
  %384 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %385 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg2, i32 0, i64 %384
  %386 = bitcast %class.ap_fixed.8* %39 to i8*
  %387 = bitcast %class.ap_fixed.8* %385 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %386, i8* %387, i64 4, i32 1, i1 false)
  %388 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %389 = getelementptr inbounds [180 x %class.ap_fixed]* %cosvals, i32 0, i64 %388
  %390 = bitcast %class.ap_fixed* %40 to i8*
  %391 = bitcast %class.ap_fixed* %389 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %390, i8* %391, i64 2, i32 1, i1 false)
  %392 = getelementptr %class.ap_fixed.8* %39, i32 0, i32 0
  %393 = bitcast [4 x i8]* %392 to i32*
  %394 = load i32* %393, align 1
  %395 = getelementptr %class.ap_fixed* %40, i32 0, i32 0
  %396 = bitcast [2 x i8]* %395 to i16*
  %397 = load i16* %396, align 1
  %398 = call i48 @_ZplILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0ELi16ELi1ELS0_0ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i32 %394, i16 %397)
  %399 = getelementptr %class.ap_fixed.12* %38, i32 0, i32 0
  store i48 %398, i48* %41
  %400 = bitcast i48* %41 to [6 x i8]*
  %401 = load [6 x i8]* %400, align 1
  store [6 x i8] %401, [6 x i8]* %399
  %402 = call %class.ap_fixed.8* @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSILi44ELi1ELS0_0ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_fixed.8* %383, %class.ap_fixed.12* %38)
  %403 = load i8* %j_eq_width, align 1
  %404 = trunc i8 %403 to i1
  br i1 %404, label %405, label %427

; <label>:405                                     ; preds = %381
  %406 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %407 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg1_sin, i32 0, i64 %406
  %408 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %409 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg1_sin, i32 0, i64 %408
  %410 = bitcast %class.ap_fixed.8* %43 to i8*
  %411 = bitcast %class.ap_fixed.8* %409 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %410, i8* %411, i64 4, i32 1, i1 false)
  %412 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %413 = getelementptr inbounds [180 x %class.ap_fixed]* %sinvals, i32 0, i64 %412
  %414 = bitcast %class.ap_fixed* %44 to i8*
  %415 = bitcast %class.ap_fixed* %413 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %414, i8* %415, i64 2, i32 1, i1 false)
  %416 = getelementptr %class.ap_fixed.8* %43, i32 0, i32 0
  %417 = bitcast [4 x i8]* %416 to i32*
  %418 = load i32* %417, align 1
  %419 = getelementptr %class.ap_fixed* %44, i32 0, i32 0
  %420 = bitcast [2 x i8]* %419 to i16*
  %421 = load i16* %420, align 1
  %422 = call i48 @_ZplILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0ELi16ELi1ELS0_0ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i32 %418, i16 %421)
  %423 = getelementptr %class.ap_fixed.12* %42, i32 0, i32 0
  store i48 %422, i48* %45
  %424 = bitcast i48* %45 to [6 x i8]*
  %425 = load [6 x i8]* %424, align 1
  store [6 x i8] %425, [6 x i8]* %423
  %426 = call %class.ap_fixed.8* @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSILi44ELi1ELS0_0ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_fixed.8* %407, %class.ap_fixed.12* %42)
  br label %427

; <label>:427                                     ; preds = %405, %381
  %428 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %429 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg2, i32 0, i64 %428
  %430 = call i64* @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EE5rangeEii(%class.ap_fixed.8* %429, i32 15, i32 0)
  %431 = load i64* %430
  %432 = icmp eq i64 %431, 16384
  %433 = select i1 %432, i32 1, i32 0
  %434 = icmp ne i32 %433, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %rho_stg2_lsbs, align 1
  %436 = load i8* %rho_stg2_lsbs, align 1
  %437 = trunc i8 %436 to i1
  br i1 %437, label %438, label %439

; <label>:438                                     ; preds = %427
  br label %440

; <label>:439                                     ; preds = %427
  br label %440

; <label>:440                                     ; preds = %439, %438
  %441 = phi %class.ap_fixed.3* [ %rnd_Const_m0p5, %438 ], [ %rnd_Const_p0p5, %439 ]
  %442 = call %class.ap_fixed.3* @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSERKS2_(%class.ap_fixed.3* %rho_offset, %class.ap_fixed.3* %441)
  %443 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %444 = getelementptr inbounds [180 x %class.ap_fixed.8]* %rho_stg2, i32 0, i64 %443
  %445 = call i64* @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EE5rangeEii(%class.ap_fixed.8* %444, i32 27, i32 14)
  %446 = load i64* %445
  %447 = call i64* @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EE5rangeEii(%class.ap_fixed.3* %rho_stg2_rsh, i32 13, i32 0)
  store i64 %446, i64* %447
  %448 = bitcast %class.ap_fixed.3* %47 to i8*
  %449 = bitcast %class.ap_fixed.3* %rho_stg2_rsh to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %448, i8* %449, i64 2, i32 1, i1 false)
  %450 = bitcast %class.ap_fixed.3* %48 to i8*
  %451 = bitcast %class.ap_fixed.3* %rho_offset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %450, i8* %451, i64 2, i32 1, i1 false)
  %452 = getelementptr %class.ap_fixed.3* %47, i32 0, i32 0
  %453 = bitcast [2 x i8]* %452 to i16*
  %454 = load i16* %453, align 1
  %455 = getelementptr %class.ap_fixed.3* %48, i32 0, i32 0
  %456 = bitcast [2 x i8]* %455 to i16*
  %457 = load i16* %456, align 1
  %458 = call i32 @_ZplILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0ELi14ELi13ELS0_0ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i16 %454, i16 %457)
  %459 = getelementptr %class.ap_fixed.8* %46, i32 0, i32 0
  %460 = bitcast [4 x i8]* %459 to i32*
  store i32 %458, i32* %460, align 1
  %461 = call %class.ap_fixed.6* @_ZN8ap_fixedILi14ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSILi28ELi13ELS0_0ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_fixed.6* %rho_stg3_apfixedp1, %class.ap_fixed.8* %46)
  %462 = call i64* @_ZN8ap_fixedILi14ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii(%class.ap_fixed.6* %rho_stg3_apfixedp1, i32 13, i32 1)
  %463 = load i64* %462
  call void @_ZN8ap_fixedILi13ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1El(%class.ap_fixed.7* %49, i64 %463)
  %464 = call %class.ap_fixed.7* @_ZN8ap_fixedILi13ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_(%class.ap_fixed.7* %rho_stg3_apfixedp0, %class.ap_fixed.7* %49)
  %465 = call %class.ap_uint.5* @_ZN7ap_uintILi13EEaSILi13ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EEERS0_RK8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_uint.5* %rho_stg3, %class.ap_fixed.7* %rho_stg3_apfixedp0)
  %466 = bitcast %class.ap_uint.0* %50 to i8*
  %467 = bitcast %class.ap_uint.0* %img_pixel_val_reg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %466, i8* %467, i64 1, i32 1, i1 false)
  %468 = getelementptr %class.ap_uint.0* %50, i32 0, i32 0
  %469 = bitcast [1 x i8]* %468 to i8*
  %470 = load i8* %469, align 1
  %471 = call zeroext i1 @_ZneILi8EEb7ap_uintIXT_EEi(i8 %470, i32 0)
  br i1 %471, label %472, label %528

; <label>:472                                     ; preds = %440
  %473 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %474 = getelementptr inbounds [180 x %class.ap_uint.5]* %rho_stg3_reg, i32 0, i64 %473
  %475 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.5* %474)
  %476 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %477 = load [2204 x %class.ap_uint.1]** %2, align 8
  %478 = getelementptr inbounds [2204 x %class.ap_uint.1]* %477, i64 %476
  %479 = getelementptr inbounds [2204 x %class.ap_uint.1]* %478, i32 0, i64 %475
  %480 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %acc_val_set1, %class.ap_uint.1* %479)
  %481 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %482 = getelementptr inbounds [180 x %class.ap_uint.1]* %accval_reg_set1, i32 0, i64 %481
  %483 = call i16 @_ZplILi12EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %482, i32 1)
  %484 = getelementptr %class.ap_uint.1* %51, i32 0, i32 0
  %485 = bitcast [2 x i8]* %484 to i16*
  store i16 %483, i16* %485, align 1
  %486 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %upd_accval_set1, %class.ap_uint.1* %51)
  %487 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %488 = getelementptr inbounds [180 x %class.ap_uint.5]* %rho_stg3_reg, i32 0, i64 %487
  %489 = bitcast %class.ap_uint.5* %52 to i8*
  %490 = bitcast %class.ap_uint.5* %488 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %489, i8* %490, i64 2, i32 1, i1 false)
  %491 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %492 = getelementptr inbounds [180 x %class.ap_uint.5]* %rho_prev_set1, i32 0, i64 %491
  %493 = bitcast %class.ap_uint.5* %53 to i8*
  %494 = bitcast %class.ap_uint.5* %492 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %493, i8* %494, i64 2, i32 1, i1 false)
  %495 = getelementptr %class.ap_uint.5* %52, i32 0, i32 0
  %496 = bitcast [2 x i8]* %495 to i16*
  %497 = load i16* %496, align 1
  %498 = getelementptr %class.ap_uint.5* %53, i32 0, i32 0
  %499 = bitcast [2 x i8]* %498 to i16*
  %500 = load i16* %499, align 1
  %501 = call zeroext i1 @_ZeqILi13ELi13EEb7ap_uintIXT_EES0_IXT0_EE(i16 %497, i16 %500)
  br i1 %501, label %502, label %506

; <label>:502                                     ; preds = %472
  %503 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %504 = getelementptr inbounds [180 x %class.ap_uint.1]* %accval_reg_set1, i32 0, i64 %503
  %505 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %504, %class.ap_uint.1* %upd_accval_set1)
  br label %510

; <label>:506                                     ; preds = %472
  %507 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %508 = getelementptr inbounds [180 x %class.ap_uint.1]* %accval_reg_set1, i32 0, i64 %507
  %509 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %508, %class.ap_uint.1* %acc_val_set1)
  br label %510

; <label>:510                                     ; preds = %506, %502
  %511 = load i8* %delay_1edge, align 1
  %512 = trunc i8 %511 to i1
  br i1 %512, label %513, label %522

; <label>:513                                     ; preds = %510
  %514 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %515 = getelementptr inbounds [180 x %class.ap_uint.5]* %rho_prev_set1, i32 0, i64 %514
  %516 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.5* %515)
  %517 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %518 = load [2204 x %class.ap_uint.1]** %2, align 8
  %519 = getelementptr inbounds [2204 x %class.ap_uint.1]* %518, i64 %517
  %520 = getelementptr inbounds [2204 x %class.ap_uint.1]* %519, i32 0, i64 %516
  %521 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %520, %class.ap_uint.1* %upd_accval_set1)
  br label %522

; <label>:522                                     ; preds = %513, %510
  %523 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %524 = getelementptr inbounds [180 x %class.ap_uint.5]* %rho_prev_set1, i32 0, i64 %523
  %525 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %526 = getelementptr inbounds [180 x %class.ap_uint.5]* %rho_stg3_reg, i32 0, i64 %525
  %527 = call %class.ap_uint.5* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.5* %524, %class.ap_uint.5* %526)
  br label %528

; <label>:528                                     ; preds = %522, %440
  %529 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %530 = getelementptr inbounds [180 x %class.ap_uint.5]* %rho_stg3_reg, i32 0, i64 %529
  %531 = call %class.ap_uint.5* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.5* %530, %class.ap_uint.5* %rho_stg3)
  br label %532

; <label>:532                                     ; preds = %528
  %533 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.2* %n1, i32 0)
  %534 = getelementptr %class.ap_uint.2* %54, i32 0, i32 0
  %535 = bitcast [2 x i8]* %534 to i16*
  store i16 %533, i16* %535, align 1
  br label %359

; <label>:536                                     ; preds = %359
  %537 = bitcast %class.ap_uint.0* %55 to i8*
  %538 = bitcast %class.ap_uint.0* %img_pixel_val_reg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %537, i8* %538, i64 1, i32 1, i1 false)
  %539 = getelementptr %class.ap_uint.0* %55, i32 0, i32 0
  %540 = bitcast [1 x i8]* %539 to i8*
  %541 = load i8* %540, align 1
  %542 = call zeroext i1 @_ZneILi8EEb7ap_uintIXT_EEi(i8 %541, i32 0)
  br i1 %542, label %543, label %544

; <label>:543                                     ; preds = %536
  store i8 1, i8* %delay_1edge, align 1
  br label %544

; <label>:544                                     ; preds = %543, %536
  %545 = call i24 @_ZplILi23EE7ap_uintIXT_EERKS1_i(%class.ap_uint.11* %row_index, i32 1)
  %546 = getelementptr %class.ap_uint.11* %56, i32 0, i32 0
  store i24 %545, i24* %57
  %547 = bitcast i24* %57 to [3 x i8]*
  %548 = load [3 x i8]* %547, align 1
  store [3 x i8] %548, [3 x i8]* %546
  %549 = call %class.ap_uint.11* @_ZN7ap_uintILi23EEaSERKS0_(%class.ap_uint.11* %row_index, %class.ap_uint.11* %56)
  %550 = call %class.ap_uint.0* @_ZN7ap_uintILi8EEaSERKS0_(%class.ap_uint.0* %img_pixel_val_reg, %class.ap_uint.0* %img_pixel_val)
  br label %551

; <label>:551                                     ; preds = %544
  %552 = call i16 @_ZN7ap_uintILi12EEppEi(%class.ap_uint.1* %j, i32 0)
  %553 = getelementptr %class.ap_uint.1* %58, i32 0, i32 0
  %554 = bitcast [2 x i8]* %553 to i16*
  store i16 %552, i16* %554, align 1
  br label %314

; <label>:555                                     ; preds = %314
  br label %556

; <label>:556                                     ; preds = %555
  %557 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.5* %i, i32 0)
  %558 = getelementptr %class.ap_uint.5* %59, i32 0, i32 0
  %559 = bitcast [2 x i8]* %558 to i16*
  store i16 %557, i16* %559, align 1
  br label %300

; <label>:560                                     ; preds = %300
  br label %561

; <label>:561                                     ; preds = %560
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %n2, i32 0)
  br label %562

; <label>:562                                     ; preds = %584, %561
  %563 = bitcast %class.ap_uint.2* %60 to i8*
  %564 = bitcast %class.ap_uint.2* %n2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %563, i8* %564, i64 2, i32 1, i1 false)
  %565 = getelementptr %class.ap_uint.2* %60, i32 0, i32 0
  %566 = bitcast [2 x i8]* %565 to i16*
  %567 = load i16* %566, align 1
  %568 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16 %567, i32 180)
  br i1 %568, label %569, label %588

; <label>:569                                     ; preds = %562
  %570 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n2)
  %571 = getelementptr inbounds [180 x %class.ap_uint.1]* %accval_reg_set1, i32 0, i64 %570
  %572 = call i16 @_ZplILi12EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1* %571, i32 1)
  %573 = getelementptr %class.ap_uint.1* %61, i32 0, i32 0
  %574 = bitcast [2 x i8]* %573 to i16*
  store i16 %572, i16* %574, align 1
  %575 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %upd_accval_set1, %class.ap_uint.1* %61)
  %576 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n2)
  %577 = getelementptr inbounds [180 x %class.ap_uint.5]* %rho_prev_set1, i32 0, i64 %576
  %578 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.5* %577)
  %579 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n2)
  %580 = load [2204 x %class.ap_uint.1]** %2, align 8
  %581 = getelementptr inbounds [2204 x %class.ap_uint.1]* %580, i64 %579
  %582 = getelementptr inbounds [2204 x %class.ap_uint.1]* %581, i32 0, i64 %578
  %583 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %582, %class.ap_uint.1* %upd_accval_set1)
  br label %584

; <label>:584                                     ; preds = %569
  %585 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.2* %n2, i32 0)
  %586 = getelementptr %class.ap_uint.2* %62, i32 0, i32 0
  %587 = bitcast [2 x i8]* %586 to i16*
  store i16 %585, i16* %587, align 1
  br label %562

; <label>:588                                     ; preds = %562
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define internal void @_ZL84p_ZN2xf10xfThinningILi256ELi256ELi0ELi1ELi1ELj180ELi2203EEEPA2204_7ap_uintILi12EEs_1PA2204_7ap_uintILi12EEs([2204 x %class.ap_uint.1]* %accumulator, i16 signext %threshold) uwtable {
  %1 = alloca [2204 x %class.ap_uint.1]*, align 8
  %2 = alloca i16, align 2
  %vote_at_rho_theta = alloca [182 x %class.ap_uint.1], align 16
  %vote_at_rho_theta_reg = alloca [182 x %class.ap_uint.1], align 16
  %cond1 = alloca i8, align 1
  %cond2 = alloca [181 x i8], align 16
  %cond3 = alloca i8, align 1
  %cond4 = alloca i8, align 1
  %four_conds = alloca [181 x i8], align 16
  %four_conds_reg = alloca [181 x i8], align 16
  %four_conds_reg_2 = alloca [181 x i8], align 16
  %ang1 = alloca %class.ap_uint.2, align 1
  %3 = alloca %class.ap_uint.2, align 1
  %4 = alloca %class.ap_uint.2, align 1
  %r = alloca %class.ap_uint.5, align 1
  %5 = alloca %class.ap_uint.5, align 1
  %ang11 = alloca %class.ap_uint.2, align 1
  %6 = alloca %class.ap_uint.2, align 1
  %7 = alloca %class.ap_uint.2, align 1
  %8 = alloca %class.ap_uint.2, align 1
  %ang3 = alloca %class.ap_uint.2, align 1
  %9 = alloca %class.ap_uint.2, align 1
  %10 = alloca %class.ap_uint.2, align 1
  %11 = alloca %class.ap_uint.5, align 1
  %12 = alloca %class.ap_uint.5, align 1
  %13 = alloca %class.ap_uint.2, align 1
  %14 = alloca %class.ap_uint.2, align 1
  %15 = alloca %class.ap_uint.2, align 1
  %16 = alloca %class.ap_uint.2, align 1
  %17 = alloca %class.ap_uint.2, align 1
  %18 = alloca %class.ap_uint.2, align 1
  %19 = alloca %class.ap_uint.2, align 1
  %20 = alloca %class.ap_uint.2, align 1
  %21 = alloca %class.ap_uint.5, align 1
  store [2204 x %class.ap_uint.1]* %accumulator, [2204 x %class.ap_uint.1]** %1, align 8
  store i16 %threshold, i16* %2, align 2
  %22 = getelementptr inbounds [182 x %class.ap_uint.1]* %vote_at_rho_theta, i32 0, i32 0
  %23 = getelementptr inbounds %class.ap_uint.1* %22, i64 182
  br label %24

; <label>:24                                      ; preds = %24, %0
  %25 = phi %class.ap_uint.1* [ %22, %0 ], [ %26, %24 ]
  call void @_ZN7ap_uintILi12EEC1Ev(%class.ap_uint.1* %25)
  %26 = getelementptr inbounds %class.ap_uint.1* %25, i64 1
  %27 = icmp eq %class.ap_uint.1* %26, %23
  br i1 %27, label %28, label %24

; <label>:28                                      ; preds = %24
  %29 = getelementptr inbounds [182 x %class.ap_uint.1]* %vote_at_rho_theta_reg, i32 0, i32 0
  %30 = getelementptr inbounds %class.ap_uint.1* %29, i64 182
  br label %31

; <label>:31                                      ; preds = %31, %28
  %32 = phi %class.ap_uint.1* [ %29, %28 ], [ %33, %31 ]
  call void @_ZN7ap_uintILi12EEC1Ev(%class.ap_uint.1* %32)
  %33 = getelementptr inbounds %class.ap_uint.1* %32, i64 1
  %34 = icmp eq %class.ap_uint.1* %33, %30
  br i1 %34, label %35, label %31

; <label>:35                                      ; preds = %31
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %ang1, i32 0)
  br label %36

; <label>:36                                      ; preds = %51, %35
  %37 = bitcast %class.ap_uint.2* %3 to i8*
  %38 = bitcast %class.ap_uint.2* %ang1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 2, i32 1, i1 false)
  %39 = getelementptr %class.ap_uint.2* %3, i32 0, i32 0
  %40 = bitcast [2 x i8]* %39 to i16*
  %41 = load i16* %40, align 1
  %42 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEj(i16 %41, i32 181)
  br i1 %42, label %43, label %55

; <label>:43                                      ; preds = %36
  %44 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %ang1)
  %45 = getelementptr inbounds [182 x %class.ap_uint.1]* %vote_at_rho_theta_reg, i32 0, i64 %44
  %46 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSEi(%class.ap_uint.1* %45, i32 0)
  %47 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %ang1)
  %48 = getelementptr inbounds [181 x i8]* %four_conds_reg, i32 0, i64 %47
  store i8 0, i8* %48, align 1
  %49 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %ang1)
  %50 = getelementptr inbounds [181 x i8]* %four_conds_reg_2, i32 0, i64 %49
  store i8 1, i8* %50, align 1
  br label %51

; <label>:51                                      ; preds = %43
  %52 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.2* %ang1, i32 0)
  %53 = getelementptr %class.ap_uint.2* %4, i32 0, i32 0
  %54 = bitcast [2 x i8]* %53 to i16*
  store i16 %52, i16* %54, align 1
  br label %36

; <label>:55                                      ; preds = %36
  %56 = getelementptr inbounds [182 x %class.ap_uint.1]* %vote_at_rho_theta, i32 0, i64 0
  %57 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSEi(%class.ap_uint.1* %56, i32 0)
  %58 = getelementptr inbounds [182 x %class.ap_uint.1]* %vote_at_rho_theta, i32 0, i64 181
  %59 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSEi(%class.ap_uint.1* %58, i32 0)
  br label %60

; <label>:60                                      ; preds = %55
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.5* %r, i32 0)
  br label %61

; <label>:61                                      ; preds = %193, %60
  %62 = bitcast %class.ap_uint.5* %5 to i8*
  %63 = bitcast %class.ap_uint.5* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 2, i32 1, i1 false)
  %64 = getelementptr %class.ap_uint.5* %5, i32 0, i32 0
  %65 = bitcast [2 x i8]* %64 to i16*
  %66 = load i16* %65, align 1
  %67 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %66, i32 2204)
  br i1 %67, label %68, label %197

; <label>:68                                      ; preds = %61
  br label %69

; <label>:69                                      ; preds = %68
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %ang11, i32 0)
  br label %70

; <label>:70                                      ; preds = %89, %69
  %71 = bitcast %class.ap_uint.2* %6 to i8*
  %72 = bitcast %class.ap_uint.2* %ang11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 2, i32 1, i1 false)
  %73 = getelementptr %class.ap_uint.2* %6, i32 0, i32 0
  %74 = bitcast [2 x i8]* %73 to i16*
  %75 = load i16* %74, align 1
  %76 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEj(i16 %75, i32 180)
  br i1 %76, label %77, label %93

; <label>:77                                      ; preds = %70
  %78 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang11, i32 1)
  %79 = getelementptr %class.ap_uint.2* %7, i32 0, i32 0
  %80 = bitcast [2 x i8]* %79 to i16*
  store i16 %78, i16* %80, align 1
  %81 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %7)
  %82 = getelementptr inbounds [182 x %class.ap_uint.1]* %vote_at_rho_theta, i32 0, i64 %81
  %83 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.5* %r)
  %84 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %ang11)
  %85 = load [2204 x %class.ap_uint.1]** %1, align 8
  %86 = getelementptr inbounds [2204 x %class.ap_uint.1]* %85, i64 %84
  %87 = getelementptr inbounds [2204 x %class.ap_uint.1]* %86, i32 0, i64 %83
  %88 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %82, %class.ap_uint.1* %87)
  br label %89

; <label>:89                                      ; preds = %77
  %90 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.2* %ang11, i32 0)
  %91 = getelementptr %class.ap_uint.2* %8, i32 0, i32 0
  %92 = bitcast [2 x i8]* %91 to i16*
  store i16 %90, i16* %92, align 1
  br label %70

; <label>:93                                      ; preds = %70
  %94 = getelementptr inbounds [182 x %class.ap_uint.1]* %vote_at_rho_theta, i32 0, i32 0
  %95 = getelementptr inbounds [182 x %class.ap_uint.1]* %vote_at_rho_theta_reg, i32 0, i32 0
  %96 = load i8* %cond1, align 1
  %97 = trunc i8 %96 to i1
  %98 = getelementptr inbounds [181 x i8]* %cond2, i32 0, i32 0
  %99 = load i8* %cond3, align 1
  %100 = trunc i8 %99 to i1
  %101 = load i8* %cond4, align 1
  %102 = trunc i8 %101 to i1
  %103 = getelementptr inbounds [181 x i8]* %four_conds, i32 0, i32 0
  %104 = load i16* %2, align 2
  call void @_ZL75p_ZN2xf15thinningCompareILi180EEEP7ap_uintILi12EEP7ap_uintILi12EEbPbbbPbs_1P7ap_uintILi12EES1_bPbbbS2_s(%class.ap_uint.1* %94, %class.ap_uint.1* %95, i1 zeroext %97, i8* %98, i1 zeroext %100, i1 zeroext %102, i8* %103, i16 signext %104)
  br label %105

; <label>:105                                     ; preds = %93
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %ang3, i32 0)
  br label %106

; <label>:106                                     ; preds = %188, %105
  %107 = bitcast %class.ap_uint.2* %9 to i8*
  %108 = bitcast %class.ap_uint.2* %ang3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 2, i32 1, i1 false)
  %109 = getelementptr %class.ap_uint.2* %9, i32 0, i32 0
  %110 = bitcast [2 x i8]* %109 to i16*
  %111 = load i16* %110, align 1
  %112 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEj(i16 %111, i32 180)
  br i1 %112, label %113, label %192

; <label>:113                                     ; preds = %106
  %114 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang3, i32 1)
  %115 = getelementptr %class.ap_uint.2* %10, i32 0, i32 0
  %116 = bitcast [2 x i8]* %115 to i16*
  store i16 %114, i16* %116, align 1
  %117 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %10)
  %118 = getelementptr inbounds [181 x i8]* %four_conds_reg_2, i32 0, i64 %117
  %119 = load i8* %118, align 1
  %120 = trunc i8 %119 to i1
  br i1 %120, label %121, label %138

; <label>:121                                     ; preds = %113
  %122 = bitcast %class.ap_uint.5* %11 to i8*
  %123 = bitcast %class.ap_uint.5* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 2, i32 1, i1 false)
  %124 = getelementptr %class.ap_uint.5* %11, i32 0, i32 0
  %125 = bitcast [2 x i8]* %124 to i16*
  %126 = load i16* %125, align 1
  %127 = call zeroext i1 @_ZgtILi13EEb7ap_uintIXT_EEi(i16 %126, i32 1)
  br i1 %127, label %128, label %138

; <label>:128                                     ; preds = %121
  %129 = call i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5* %r, i32 2)
  %130 = getelementptr %class.ap_uint.5* %12, i32 0, i32 0
  %131 = bitcast [2 x i8]* %130 to i16*
  store i16 %129, i16* %131, align 1
  %132 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.5* %12)
  %133 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %ang3)
  %134 = load [2204 x %class.ap_uint.1]** %1, align 8
  %135 = getelementptr inbounds [2204 x %class.ap_uint.1]* %134, i64 %133
  %136 = getelementptr inbounds [2204 x %class.ap_uint.1]* %135, i32 0, i64 %132
  %137 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSEi(%class.ap_uint.1* %136, i32 0)
  br label %138

; <label>:138                                     ; preds = %128, %121, %113
  %139 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang3, i32 1)
  %140 = getelementptr %class.ap_uint.2* %13, i32 0, i32 0
  %141 = bitcast [2 x i8]* %140 to i16*
  store i16 %139, i16* %141, align 1
  %142 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %13)
  %143 = getelementptr inbounds [182 x %class.ap_uint.1]* %vote_at_rho_theta_reg, i32 0, i64 %142
  %144 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang3, i32 1)
  %145 = getelementptr %class.ap_uint.2* %14, i32 0, i32 0
  %146 = bitcast [2 x i8]* %145 to i16*
  store i16 %144, i16* %146, align 1
  %147 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %14)
  %148 = getelementptr inbounds [182 x %class.ap_uint.1]* %vote_at_rho_theta, i32 0, i64 %147
  %149 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %143, %class.ap_uint.1* %148)
  %150 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang3, i32 1)
  %151 = getelementptr %class.ap_uint.2* %15, i32 0, i32 0
  %152 = bitcast [2 x i8]* %151 to i16*
  store i16 %150, i16* %152, align 1
  %153 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %15)
  %154 = getelementptr inbounds [181 x i8]* %four_conds_reg, i32 0, i64 %153
  %155 = load i8* %154, align 1
  %156 = trunc i8 %155 to i1
  br i1 %156, label %157, label %165

; <label>:157                                     ; preds = %138
  %158 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang3, i32 1)
  %159 = getelementptr %class.ap_uint.2* %16, i32 0, i32 0
  %160 = bitcast [2 x i8]* %159 to i16*
  store i16 %158, i16* %160, align 1
  %161 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %16)
  %162 = getelementptr inbounds [181 x i8]* %cond2, i32 0, i64 %161
  %163 = load i8* %162, align 1
  %164 = trunc i8 %163 to i1
  br label %165

; <label>:165                                     ; preds = %157, %138
  %166 = phi i1 [ true, %138 ], [ %164, %157 ]
  %167 = select i1 %166, i32 1, i32 0
  %168 = icmp ne i32 %167, 0
  %169 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang3, i32 1)
  %170 = getelementptr %class.ap_uint.2* %17, i32 0, i32 0
  %171 = bitcast [2 x i8]* %170 to i16*
  store i16 %169, i16* %171, align 1
  %172 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %17)
  %173 = getelementptr inbounds [181 x i8]* %four_conds_reg_2, i32 0, i64 %172
  %174 = zext i1 %168 to i8
  store i8 %174, i8* %173, align 1
  %175 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang3, i32 1)
  %176 = getelementptr %class.ap_uint.2* %18, i32 0, i32 0
  %177 = bitcast [2 x i8]* %176 to i16*
  store i16 %175, i16* %177, align 1
  %178 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %18)
  %179 = getelementptr inbounds [181 x i8]* %four_conds, i32 0, i64 %178
  %180 = load i8* %179, align 1
  %181 = trunc i8 %180 to i1
  %182 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang3, i32 1)
  %183 = getelementptr %class.ap_uint.2* %19, i32 0, i32 0
  %184 = bitcast [2 x i8]* %183 to i16*
  store i16 %182, i16* %184, align 1
  %185 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %19)
  %186 = getelementptr inbounds [181 x i8]* %four_conds_reg, i32 0, i64 %185
  %187 = zext i1 %181 to i8
  store i8 %187, i8* %186, align 1
  br label %188

; <label>:188                                     ; preds = %165
  %189 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.2* %ang3, i32 0)
  %190 = getelementptr %class.ap_uint.2* %20, i32 0, i32 0
  %191 = bitcast [2 x i8]* %190 to i16*
  store i16 %189, i16* %191, align 1
  br label %106

; <label>:192                                     ; preds = %106
  br label %193

; <label>:193                                     ; preds = %192
  %194 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.5* %r, i32 0)
  %195 = getelementptr %class.ap_uint.5* %21, i32 0, i32 0
  %196 = bitcast [2 x i8]* %195 to i16*
  store i16 %194, i16* %196, align 1
  br label %61

; <label>:197                                     ; preds = %61
  ret void
}

define internal void @_ZL104p_ZN2xf9xfSortingILi256ELi256ELi0ELi1ELi1ELj2ELj1ELi180ELi2203ELi512ELi0EEEPA2204_7ap_uintILi12EEPfPfs_1PA2204_7ap_uintILi12EEPfS3_s([2204 x %class.ap_uint.1]* %accumulator, float* %linesrho, float* %linestheta, i16 signext %linesmax) uwtable {
  %1 = alloca [2204 x %class.ap_uint.1]*, align 8
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  %4 = alloca i16, align 2
  %local_max = alloca [180 x %class.ap_uint.1], align 16
  %local_max_rho = alloca [180 x %class.ap_uint.1], align 16
  %maxrho = alloca %class.ap_uint.1, align 1
  %maxangle = alloca %class.ap_uint.2, align 1
  %i = alloca %class.ap_uint.2, align 1
  %5 = alloca %class.ap_uint.2, align 1
  %6 = alloca %class.ap_uint.2, align 1
  %diag_offset = alloca %class.ap_fixed.3, align 1
  %li = alloca %class.ap_uint.1, align 1
  %7 = alloca %class.ap_uint.1, align 1
  %n = alloca %class.ap_uint.2, align 1
  %8 = alloca %class.ap_uint.2, align 1
  %9 = alloca %class.ap_uint.2, align 1
  %maxfinal = alloca %class.ap_uint.1, align 1
  %n1 = alloca %class.ap_uint.2, align 1
  %10 = alloca %class.ap_uint.2, align 1
  %11 = alloca %class.ap_uint.1, align 1
  %12 = alloca %class.ap_uint.1, align 1
  %13 = alloca %class.ap_uint.2, align 1
  %mintheta_radn = alloca float, align 4
  %ang_temp = alloca float, align 4
  %angle_radn = alloca float, align 4
  %_rho = alloca float, align 4
  %14 = alloca %class.ap_fixed.4, align 1
  %15 = alloca %class.ap_uint.1, align 1
  %16 = alloca %class.ap_fixed.3, align 1
  %17 = alloca %class.ap_fixed.4, align 1
  %_angle = alloca float, align 4
  %18 = alloca %class.ap_uint.1, align 1
  store [2204 x %class.ap_uint.1]* %accumulator, [2204 x %class.ap_uint.1]** %1, align 8
  store float* %linesrho, float** %2, align 8
  store float* %linestheta, float** %3, align 8
  store i16 %linesmax, i16* %4, align 2
  %19 = getelementptr inbounds [180 x %class.ap_uint.1]* %local_max, i32 0, i32 0
  %20 = getelementptr inbounds %class.ap_uint.1* %19, i64 180
  br label %21

; <label>:21                                      ; preds = %21, %0
  %22 = phi %class.ap_uint.1* [ %19, %0 ], [ %23, %21 ]
  call void @_ZN7ap_uintILi12EEC1Ev(%class.ap_uint.1* %22)
  %23 = getelementptr inbounds %class.ap_uint.1* %22, i64 1
  %24 = icmp eq %class.ap_uint.1* %23, %20
  br i1 %24, label %25, label %21

; <label>:25                                      ; preds = %21
  %26 = getelementptr inbounds [180 x %class.ap_uint.1]* %local_max_rho, i32 0, i32 0
  %27 = getelementptr inbounds %class.ap_uint.1* %26, i64 180
  br label %28

; <label>:28                                      ; preds = %28, %25
  %29 = phi %class.ap_uint.1* [ %26, %25 ], [ %30, %28 ]
  call void @_ZN7ap_uintILi12EEC1Ev(%class.ap_uint.1* %29)
  %30 = getelementptr inbounds %class.ap_uint.1* %29, i64 1
  %31 = icmp eq %class.ap_uint.1* %30, %27
  br i1 %31, label %32, label %28

; <label>:32                                      ; preds = %28
  call void @_ZN7ap_uintILi12EEC1Ei(%class.ap_uint.1* %maxrho, i32 0)
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %maxangle, i32 0)
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %i, i32 0)
  br label %33

; <label>:33                                      ; preds = %44, %32
  %34 = bitcast %class.ap_uint.2* %5 to i8*
  %35 = bitcast %class.ap_uint.2* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 2, i32 1, i1 false)
  %36 = getelementptr %class.ap_uint.2* %5, i32 0, i32 0
  %37 = bitcast [2 x i8]* %36 to i16*
  %38 = load i16* %37, align 1
  %39 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16 %38, i32 180)
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %33
  %41 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %i)
  %42 = getelementptr inbounds [180 x %class.ap_uint.1]* %local_max, i32 0, i64 %41
  %43 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSEi(%class.ap_uint.1* %42, i32 0)
  br label %44

; <label>:44                                      ; preds = %40
  %45 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.2* %i, i32 0)
  %46 = getelementptr %class.ap_uint.2* %6, i32 0, i32 0
  %47 = bitcast [2 x i8]* %46 to i16*
  store i16 %45, i16* %47, align 1
  br label %33

; <label>:48                                      ; preds = %33
  call void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed.3* %diag_offset, double 1.101500e+03)
  br label %49

; <label>:49                                      ; preds = %48
  call void @_ZN7ap_uintILi12EEC1Ei(%class.ap_uint.1* %li, i32 0)
  br label %50

; <label>:50                                      ; preds = %152, %49
  %51 = bitcast %class.ap_uint.1* %7 to i8*
  %52 = bitcast %class.ap_uint.1* %li to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 2, i32 1, i1 false)
  %53 = load i16* %4, align 2
  %54 = getelementptr %class.ap_uint.1* %7, i32 0, i32 0
  %55 = bitcast [2 x i8]* %54 to i16*
  %56 = load i16* %55, align 1
  %57 = call zeroext i1 @_ZltILi12EEb7ap_uintIXT_EEs(i16 %56, i16 signext %53)
  br i1 %57, label %58, label %156

; <label>:58                                      ; preds = %50
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %n, i32 0)
  br label %59

; <label>:59                                      ; preds = %75, %58
  %60 = bitcast %class.ap_uint.2* %8 to i8*
  %61 = bitcast %class.ap_uint.2* %n to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 2, i32 1, i1 false)
  %62 = getelementptr %class.ap_uint.2* %8, i32 0, i32 0
  %63 = bitcast [2 x i8]* %62 to i16*
  %64 = load i16* %63, align 1
  %65 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16 %64, i32 180)
  br i1 %65, label %66, label %79

; <label>:66                                      ; preds = %59
  %67 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n)
  %68 = load [2204 x %class.ap_uint.1]** %1, align 8
  %69 = getelementptr inbounds [2204 x %class.ap_uint.1]* %68, i64 %67
  %70 = getelementptr inbounds [2204 x %class.ap_uint.1]* %69, i32 0, i32 0
  %71 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n)
  %72 = getelementptr inbounds [180 x %class.ap_uint.1]* %local_max, i32 0, i64 %71
  %73 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n)
  %74 = getelementptr inbounds [180 x %class.ap_uint.1]* %local_max_rho, i32 0, i64 %73
  call void @_ZL85p_ZN2xf16get_maxval_indexILi2203EEEP7ap_uintILi12EER7ap_uintILi12EER7ap_uintILi12EE_1P7ap_uintILi12EERS0_S2_(%class.ap_uint.1* %70, %class.ap_uint.1* %72, %class.ap_uint.1* %74)
  br label %75

; <label>:75                                      ; preds = %66
  %76 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.2* %n, i32 0)
  %77 = getelementptr %class.ap_uint.2* %9, i32 0, i32 0
  %78 = bitcast [2 x i8]* %77 to i16*
  store i16 %76, i16* %78, align 1
  br label %59

; <label>:79                                      ; preds = %59
  call void @_ZN7ap_uintILi12EEC1Ei(%class.ap_uint.1* %maxfinal, i32 0)
  br label %80

; <label>:80                                      ; preds = %79
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %n1, i32 0)
  br label %81

; <label>:81                                      ; preds = %111, %80
  %82 = bitcast %class.ap_uint.2* %10 to i8*
  %83 = bitcast %class.ap_uint.2* %n1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 2, i32 1, i1 false)
  %84 = getelementptr %class.ap_uint.2* %10, i32 0, i32 0
  %85 = bitcast [2 x i8]* %84 to i16*
  %86 = load i16* %85, align 1
  %87 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16 %86, i32 180)
  br i1 %87, label %88, label %115

; <label>:88                                      ; preds = %81
  %89 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %90 = getelementptr inbounds [180 x %class.ap_uint.1]* %local_max, i32 0, i64 %89
  %91 = bitcast %class.ap_uint.1* %11 to i8*
  %92 = bitcast %class.ap_uint.1* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 2, i32 1, i1 false)
  %93 = bitcast %class.ap_uint.1* %12 to i8*
  %94 = bitcast %class.ap_uint.1* %maxfinal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 2, i32 1, i1 false)
  %95 = getelementptr %class.ap_uint.1* %11, i32 0, i32 0
  %96 = bitcast [2 x i8]* %95 to i16*
  %97 = load i16* %96, align 1
  %98 = getelementptr %class.ap_uint.1* %12, i32 0, i32 0
  %99 = bitcast [2 x i8]* %98 to i16*
  %100 = load i16* %99, align 1
  %101 = call zeroext i1 @_ZgtILi12ELi12EEb7ap_uintIXT_EES0_IXT0_EE(i16 %97, i16 %100)
  br i1 %101, label %102, label %110

; <label>:102                                     ; preds = %88
  %103 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %104 = getelementptr inbounds [180 x %class.ap_uint.1]* %local_max, i32 0, i64 %103
  %105 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %maxfinal, %class.ap_uint.1* %104)
  %106 = call %class.ap_uint.2* @_ZN7ap_uintILi10EEaSERKS0_(%class.ap_uint.2* %maxangle, %class.ap_uint.2* %n1)
  %107 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %n1)
  %108 = getelementptr inbounds [180 x %class.ap_uint.1]* %local_max_rho, i32 0, i64 %107
  %109 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %maxrho, %class.ap_uint.1* %108)
  br label %110

; <label>:110                                     ; preds = %102, %88
  br label %111

; <label>:111                                     ; preds = %110
  %112 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.2* %n1, i32 0)
  %113 = getelementptr %class.ap_uint.2* %13, i32 0, i32 0
  %114 = bitcast [2 x i8]* %113 to i16*
  store i16 %112, i16* %114, align 1
  br label %81

; <label>:115                                     ; preds = %81
  %116 = call i64 @_ZNK7ap_uintILi12EEcvmEv(%class.ap_uint.1* %maxrho)
  %117 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %maxangle)
  %118 = load [2204 x %class.ap_uint.1]** %1, align 8
  %119 = getelementptr inbounds [2204 x %class.ap_uint.1]* %118, i64 %117
  %120 = getelementptr inbounds [2204 x %class.ap_uint.1]* %119, i32 0, i64 %116
  %121 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSEi(%class.ap_uint.1* %120, i32 0)
  store float 0.000000e+00, float* %mintheta_radn, align 4
  store float 0x3F91DEEFE0000000, float* %ang_temp, align 4
  %122 = load float* %ang_temp, align 4
  %123 = call float @_ZmlILi10EEfRK7ap_uintIXT_EEf(%class.ap_uint.2* %maxangle, float %122)
  store float %123, float* %angle_radn, align 4
  %124 = bitcast %class.ap_uint.1* %15 to i8*
  %125 = bitcast %class.ap_uint.1* %maxrho to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %125, i64 2, i32 1, i1 false)
  %126 = bitcast %class.ap_fixed.3* %16 to i8*
  %127 = bitcast %class.ap_fixed.3* %diag_offset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 2, i32 1, i1 false)
  %128 = getelementptr %class.ap_uint.1* %15, i32 0, i32 0
  %129 = bitcast [2 x i8]* %128 to i16*
  %130 = load i16* %129, align 1
  %131 = getelementptr %class.ap_fixed.3* %16, i32 0, i32 0
  %132 = bitcast [2 x i8]* %131 to i16*
  %133 = load i16* %132, align 1
  %134 = call i32 @_ZmiILi12ELi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EE8ap_fixedIXplT_T0_EXT1_EXT2_EXT3_EXT4_EE7ap_uintIXT_EES2_IXT0_EXT1_EXT2_EXT3_EXT4_EE(i16 %130, i16 %133)
  %135 = getelementptr %class.ap_fixed.4* %14, i32 0, i32 0
  %136 = bitcast [4 x i8]* %135 to i32*
  store i32 %134, i32* %136, align 1
  %137 = call i32 @_ZmlILi26ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EE8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EERKS3_i(%class.ap_fixed.4* %14, i32 1)
  %138 = getelementptr %class.ap_fixed.4* %17, i32 0, i32 0
  %139 = bitcast [4 x i8]* %138 to i32*
  store i32 %137, i32* %139, align 1
  %140 = call float @_ZNK8ap_fixedILi26ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEcvfEv(%class.ap_fixed.4* %17)
  store float %140, float* %_rho, align 4
  %141 = load float* %angle_radn, align 4
  %142 = load float* %mintheta_radn, align 4
  %143 = fadd float %141, %142
  store float %143, float* %_angle, align 4
  %144 = load float* %_rho, align 4
  %145 = call i64 @_ZNK7ap_uintILi12EEcvmEv(%class.ap_uint.1* %li)
  %146 = load float** %2, align 8
  %147 = getelementptr inbounds float* %146, i64 %145
  store float %144, float* %147, align 4
  %148 = load float* %_angle, align 4
  %149 = call i64 @_ZNK7ap_uintILi12EEcvmEv(%class.ap_uint.1* %li)
  %150 = load float** %3, align 8
  %151 = getelementptr inbounds float* %150, i64 %149
  store float %148, float* %151, align 4
  br label %152

; <label>:152                                     ; preds = %115
  %153 = call i16 @_ZN7ap_uintILi12EEppEi(%class.ap_uint.1* %li, i32 0)
  %154 = getelementptr %class.ap_uint.1* %18, i32 0, i32 0
  %155 = bitcast [2 x i8]* %154 to i16*
  store i16 %153, i16* %155, align 1
  br label %50

; <label>:156                                     ; preds = %50
  ret void
}

declare void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2*, i32)

declare zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16, i32)

declare i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2*)

declare %class.ap_uint.1* @_ZN7ap_uintILi12EEaSEi(%class.ap_uint.1*, i32)

declare i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.2*, i32)

declare void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ed(%class.ap_fixed.3*, double)

declare zeroext i1 @_ZltILi12EEb7ap_uintIXT_EEs(i16, i16 signext)

define internal void @_ZL85p_ZN2xf16get_maxval_indexILi2203EEEP7ap_uintILi12EER7ap_uintILi12EER7ap_uintILi12EE_1P7ap_uintILi12EERS0_S2_(%class.ap_uint.1* %input_array, %class.ap_uint.1* %maxval, %class.ap_uint.1* %max_index) uwtable {
  %1 = alloca %class.ap_uint.1*, align 8
  %2 = alloca %class.ap_uint.1*, align 8
  %3 = alloca %class.ap_uint.1*, align 8
  %local_max = alloca %class.ap_uint.1, align 1
  %input_array_reg = alloca %class.ap_uint.1, align 1
  %r = alloca %class.ap_uint.5, align 1
  %4 = alloca %class.ap_uint.5, align 1
  %5 = alloca %class.ap_uint.1, align 1
  %6 = alloca %class.ap_uint.1, align 1
  %7 = alloca %class.ap_uint.5, align 1
  store %class.ap_uint.1* %input_array, %class.ap_uint.1** %1, align 8
  store %class.ap_uint.1* %maxval, %class.ap_uint.1** %2, align 8
  store %class.ap_uint.1* %max_index, %class.ap_uint.1** %3, align 8
  call void @_ZN7ap_uintILi12EEC1Ei(%class.ap_uint.1* %local_max, i32 0)
  call void @_ZN7ap_uintILi12EEC1Ei(%class.ap_uint.1* %input_array_reg, i32 0)
  br label %8

; <label>:8                                       ; preds = %0
  call void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.5* %r, i32 0)
  br label %9

; <label>:9                                       ; preds = %37, %8
  %10 = bitcast %class.ap_uint.5* %4 to i8*
  %11 = bitcast %class.ap_uint.5* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 2, i32 1, i1 false)
  %12 = getelementptr %class.ap_uint.5* %4, i32 0, i32 0
  %13 = bitcast [2 x i8]* %12 to i16*
  %14 = load i16* %13, align 1
  %15 = call zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16 %14, i32 2203)
  br i1 %15, label %16, label %41

; <label>:16                                      ; preds = %9
  %17 = call i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.5* %r)
  %18 = load %class.ap_uint.1** %1, align 8
  %19 = getelementptr inbounds %class.ap_uint.1* %18, i64 %17
  %20 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %input_array_reg, %class.ap_uint.1* %19)
  %21 = bitcast %class.ap_uint.1* %5 to i8*
  %22 = bitcast %class.ap_uint.1* %input_array_reg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 2, i32 1, i1 false)
  %23 = bitcast %class.ap_uint.1* %6 to i8*
  %24 = bitcast %class.ap_uint.1* %local_max to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 2, i32 1, i1 false)
  %25 = getelementptr %class.ap_uint.1* %5, i32 0, i32 0
  %26 = bitcast [2 x i8]* %25 to i16*
  %27 = load i16* %26, align 1
  %28 = getelementptr %class.ap_uint.1* %6, i32 0, i32 0
  %29 = bitcast [2 x i8]* %28 to i16*
  %30 = load i16* %29, align 1
  %31 = call zeroext i1 @_ZgtILi12ELi12EEb7ap_uintIXT_EES0_IXT0_EE(i16 %27, i16 %30)
  br i1 %31, label %32, label %36

; <label>:32                                      ; preds = %16
  %33 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %local_max, %class.ap_uint.1* %input_array_reg)
  %34 = load %class.ap_uint.1** %3, align 8
  %35 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSILi13EEERS0_RKS_IXT_EE(%class.ap_uint.1* %34, %class.ap_uint.5* %r)
  br label %36

; <label>:36                                      ; preds = %32, %16
  br label %37

; <label>:37                                      ; preds = %36
  %38 = call i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.5* %r, i32 0)
  %39 = getelementptr %class.ap_uint.5* %7, i32 0, i32 0
  %40 = bitcast [2 x i8]* %39 to i16*
  store i16 %38, i16* %40, align 1
  br label %9

; <label>:41                                      ; preds = %9
  %42 = load %class.ap_uint.1** %2, align 8
  %43 = call %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1* %42, %class.ap_uint.1* %local_max)
  ret void
}

declare zeroext i1 @_ZgtILi12ELi12EEb7ap_uintIXT_EES0_IXT0_EE(i16, i16)

declare %class.ap_uint.1* @_ZN7ap_uintILi12EEaSERKS0_(%class.ap_uint.1*, %class.ap_uint.1*)

declare %class.ap_uint.2* @_ZN7ap_uintILi10EEaSERKS0_(%class.ap_uint.2*, %class.ap_uint.2*)

declare i64 @_ZNK7ap_uintILi12EEcvmEv(%class.ap_uint.1*)

declare float @_ZmlILi10EEfRK7ap_uintIXT_EEf(%class.ap_uint.2*, float)

declare i32 @_ZmlILi26ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EE8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EERKS3_i(%class.ap_fixed.4*, i32)

declare i32 @_ZmiILi12ELi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EE8ap_fixedIXplT_T0_EXT1_EXT2_EXT3_EXT4_EE7ap_uintIXT_EES2_IXT0_EXT1_EXT2_EXT3_EXT4_EE(i16, i16)

declare float @_ZNK8ap_fixedILi26ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEcvfEv(%class.ap_fixed.4*)

declare i16 @_ZN7ap_uintILi12EEppEi(%class.ap_uint.1*, i32)

declare void @_ZN7ap_uintILi13EEC1Ei(%class.ap_uint.5*, i32)

declare zeroext i1 @_ZltILi13EEb7ap_uintIXT_EEi(i16, i32)

declare i64 @_ZNK7ap_uintILi13EEcvmEv(%class.ap_uint.5*)

declare %class.ap_uint.1* @_ZN7ap_uintILi12EEaSILi13EEERS0_RKS_IXT_EE(%class.ap_uint.1*, %class.ap_uint.5*)

declare i16 @_ZN7ap_uintILi13EEppEi(%class.ap_uint.5*, i32)

declare zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEj(i16, i32)

declare i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2*, i32)

define internal void @_ZL75p_ZN2xf15thinningCompareILi180EEEP7ap_uintILi12EEP7ap_uintILi12EEbPbbbPbs_1P7ap_uintILi12EES1_bPbbbS2_s(%class.ap_uint.1* %vote_at_rho_theta, %class.ap_uint.1* %vote_at_rho_theta_reg, i1 zeroext %cond1, i8* %cond2, i1 zeroext %cond3, i1 zeroext %cond4, i8* %four_conds, i16 signext %threshold) uwtable {
  %1 = alloca %class.ap_uint.1*, align 8
  %2 = alloca %class.ap_uint.1*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %ang2 = alloca %class.ap_uint.2, align 1
  %9 = alloca %class.ap_uint.2, align 1
  %10 = alloca %class.ap_uint.1, align 1
  %11 = alloca %class.ap_uint.2, align 1
  %12 = alloca %class.ap_uint.1, align 1
  %13 = alloca %class.ap_uint.1, align 1
  %14 = alloca %class.ap_uint.2, align 1
  %15 = alloca %class.ap_uint.1, align 1
  %16 = alloca %class.ap_uint.2, align 1
  %17 = alloca %class.ap_uint.2, align 1
  %18 = alloca %class.ap_uint.1, align 1
  %19 = alloca %class.ap_uint.2, align 1
  %20 = alloca %class.ap_uint.1, align 1
  %21 = alloca %class.ap_uint.2, align 1
  %22 = alloca %class.ap_uint.1, align 1
  %23 = alloca %class.ap_uint.2, align 1
  %24 = alloca %class.ap_uint.2, align 1
  %25 = alloca %class.ap_uint.2, align 1
  %26 = alloca %class.ap_uint.2, align 1
  store %class.ap_uint.1* %vote_at_rho_theta, %class.ap_uint.1** %1, align 8
  store %class.ap_uint.1* %vote_at_rho_theta_reg, %class.ap_uint.1** %2, align 8
  %27 = zext i1 %cond1 to i8
  store i8 %27, i8* %3, align 1
  store i8* %cond2, i8** %4, align 8
  %28 = zext i1 %cond3 to i8
  store i8 %28, i8* %5, align 1
  %29 = zext i1 %cond4 to i8
  store i8 %29, i8* %6, align 1
  store i8* %four_conds, i8** %7, align 8
  store i16 %threshold, i16* %8, align 2
  br label %30

; <label>:30                                      ; preds = %0
  call void @_ZN7ap_uintILi10EEC1Ei(%class.ap_uint.2* %ang2, i32 0)
  br label %31

; <label>:31                                      ; preds = %164, %30
  %32 = bitcast %class.ap_uint.2* %9 to i8*
  %33 = bitcast %class.ap_uint.2* %ang2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 2, i32 1, i1 false)
  %34 = getelementptr %class.ap_uint.2* %9, i32 0, i32 0
  %35 = bitcast [2 x i8]* %34 to i16*
  %36 = load i16* %35, align 1
  %37 = call zeroext i1 @_ZltILi10EEb7ap_uintIXT_EEi(i16 %36, i32 180)
  br i1 %37, label %38, label %168

; <label>:38                                      ; preds = %31
  %39 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang2, i32 1)
  %40 = getelementptr %class.ap_uint.2* %11, i32 0, i32 0
  %41 = bitcast [2 x i8]* %40 to i16*
  store i16 %39, i16* %41, align 1
  %42 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %11)
  %43 = load %class.ap_uint.1** %1, align 8
  %44 = getelementptr inbounds %class.ap_uint.1* %43, i64 %42
  %45 = bitcast %class.ap_uint.1* %10 to i8*
  %46 = bitcast %class.ap_uint.1* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 2, i32 1, i1 false)
  %47 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %ang2)
  %48 = load %class.ap_uint.1** %1, align 8
  %49 = getelementptr inbounds %class.ap_uint.1* %48, i64 %47
  %50 = bitcast %class.ap_uint.1* %12 to i8*
  %51 = bitcast %class.ap_uint.1* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 2, i32 1, i1 false)
  %52 = getelementptr %class.ap_uint.1* %10, i32 0, i32 0
  %53 = bitcast [2 x i8]* %52 to i16*
  %54 = load i16* %53, align 1
  %55 = getelementptr %class.ap_uint.1* %12, i32 0, i32 0
  %56 = bitcast [2 x i8]* %55 to i16*
  %57 = load i16* %56, align 1
  %58 = call zeroext i1 @_ZgtILi12ELi12EEb7ap_uintIXT_EES0_IXT0_EE(i16 %54, i16 %57)
  %59 = select i1 %58, i32 1, i32 0
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %3, align 1
  %62 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang2, i32 1)
  %63 = getelementptr %class.ap_uint.2* %14, i32 0, i32 0
  %64 = bitcast [2 x i8]* %63 to i16*
  store i16 %62, i16* %64, align 1
  %65 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %14)
  %66 = load %class.ap_uint.1** %1, align 8
  %67 = getelementptr inbounds %class.ap_uint.1* %66, i64 %65
  %68 = bitcast %class.ap_uint.1* %13 to i8*
  %69 = bitcast %class.ap_uint.1* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 2, i32 1, i1 false)
  %70 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang2, i32 1)
  %71 = getelementptr %class.ap_uint.2* %16, i32 0, i32 0
  %72 = bitcast [2 x i8]* %71 to i16*
  store i16 %70, i16* %72, align 1
  %73 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %16)
  %74 = load %class.ap_uint.1** %2, align 8
  %75 = getelementptr inbounds %class.ap_uint.1* %74, i64 %73
  %76 = bitcast %class.ap_uint.1* %15 to i8*
  %77 = bitcast %class.ap_uint.1* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 2, i32 1, i1 false)
  %78 = getelementptr %class.ap_uint.1* %13, i32 0, i32 0
  %79 = bitcast [2 x i8]* %78 to i16*
  %80 = load i16* %79, align 1
  %81 = getelementptr %class.ap_uint.1* %15, i32 0, i32 0
  %82 = bitcast [2 x i8]* %81 to i16*
  %83 = load i16* %82, align 1
  %84 = call zeroext i1 @_ZgtILi12ELi12EEb7ap_uintIXT_EES0_IXT0_EE(i16 %80, i16 %83)
  %85 = select i1 %84, i32 1, i32 0
  %86 = icmp ne i32 %85, 0
  %87 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang2, i32 1)
  %88 = getelementptr %class.ap_uint.2* %17, i32 0, i32 0
  %89 = bitcast [2 x i8]* %88 to i16*
  store i16 %87, i16* %89, align 1
  %90 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %17)
  %91 = load i8** %4, align 8
  %92 = getelementptr inbounds i8* %91, i64 %90
  %93 = zext i1 %86 to i8
  store i8 %93, i8* %92, align 1
  %94 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang2, i32 1)
  %95 = getelementptr %class.ap_uint.2* %19, i32 0, i32 0
  %96 = bitcast [2 x i8]* %95 to i16*
  store i16 %94, i16* %96, align 1
  %97 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %19)
  %98 = load %class.ap_uint.1** %1, align 8
  %99 = getelementptr inbounds %class.ap_uint.1* %98, i64 %97
  %100 = bitcast %class.ap_uint.1* %18 to i8*
  %101 = bitcast %class.ap_uint.1* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 2, i32 1, i1 false)
  %102 = load i16* %8, align 2
  %103 = getelementptr %class.ap_uint.1* %18, i32 0, i32 0
  %104 = bitcast [2 x i8]* %103 to i16*
  %105 = load i16* %104, align 1
  %106 = call zeroext i1 @_ZgtILi12EEb7ap_uintIXT_EEs(i16 %105, i16 signext %102)
  %107 = select i1 %106, i32 1, i32 0
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %5, align 1
  %110 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang2, i32 2)
  %111 = getelementptr %class.ap_uint.2* %21, i32 0, i32 0
  %112 = bitcast [2 x i8]* %111 to i16*
  store i16 %110, i16* %112, align 1
  %113 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %21)
  %114 = load %class.ap_uint.1** %1, align 8
  %115 = getelementptr inbounds %class.ap_uint.1* %114, i64 %113
  %116 = bitcast %class.ap_uint.1* %20 to i8*
  %117 = bitcast %class.ap_uint.1* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 2, i32 1, i1 false)
  %118 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang2, i32 1)
  %119 = getelementptr %class.ap_uint.2* %23, i32 0, i32 0
  %120 = bitcast [2 x i8]* %119 to i16*
  store i16 %118, i16* %120, align 1
  %121 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %23)
  %122 = load %class.ap_uint.1** %1, align 8
  %123 = getelementptr inbounds %class.ap_uint.1* %122, i64 %121
  %124 = bitcast %class.ap_uint.1* %22 to i8*
  %125 = bitcast %class.ap_uint.1* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %125, i64 2, i32 1, i1 false)
  %126 = getelementptr %class.ap_uint.1* %20, i32 0, i32 0
  %127 = bitcast [2 x i8]* %126 to i16*
  %128 = load i16* %127, align 1
  %129 = getelementptr %class.ap_uint.1* %22, i32 0, i32 0
  %130 = bitcast [2 x i8]* %129 to i16*
  %131 = load i16* %130, align 1
  %132 = call zeroext i1 @_ZgtILi12ELi12EEb7ap_uintIXT_EES0_IXT0_EE(i16 %128, i16 %131)
  %133 = select i1 %132, i32 0, i32 1
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %6, align 1
  %136 = load i8* %3, align 1
  %137 = trunc i8 %136 to i1
  br i1 %137, label %138, label %153

; <label>:138                                     ; preds = %38
  %139 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang2, i32 1)
  %140 = getelementptr %class.ap_uint.2* %24, i32 0, i32 0
  %141 = bitcast [2 x i8]* %140 to i16*
  store i16 %139, i16* %141, align 1
  %142 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %24)
  %143 = load i8** %4, align 8
  %144 = getelementptr inbounds i8* %143, i64 %142
  %145 = load i8* %144, align 1
  %146 = trunc i8 %145 to i1
  br i1 %146, label %147, label %153

; <label>:147                                     ; preds = %138
  %148 = load i8* %5, align 1
  %149 = trunc i8 %148 to i1
  br i1 %149, label %150, label %153

; <label>:150                                     ; preds = %147
  %151 = load i8* %6, align 1
  %152 = trunc i8 %151 to i1
  br label %153

; <label>:153                                     ; preds = %150, %147, %138, %38
  %154 = phi i1 [ false, %147 ], [ false, %138 ], [ false, %38 ], [ %152, %150 ]
  %155 = select i1 %154, i32 1, i32 0
  %156 = icmp ne i32 %155, 0
  %157 = call i16 @_ZplILi10EE7ap_uintIXT_EERKS1_i(%class.ap_uint.2* %ang2, i32 1)
  %158 = getelementptr %class.ap_uint.2* %25, i32 0, i32 0
  %159 = bitcast [2 x i8]* %158 to i16*
  store i16 %157, i16* %159, align 1
  %160 = call i64 @_ZNK7ap_uintILi10EEcvmEv(%class.ap_uint.2* %25)
  %161 = load i8** %7, align 8
  %162 = getelementptr inbounds i8* %161, i64 %160
  %163 = zext i1 %156 to i8
  store i8 %163, i8* %162, align 1
  br label %164

; <label>:164                                     ; preds = %153
  %165 = call i16 @_ZN7ap_uintILi10EEppEi(%class.ap_uint.2* %ang2, i32 0)
  %166 = getelementptr %class.ap_uint.2* %26, i32 0, i32 0
  %167 = bitcast [2 x i8]* %166 to i16*
  store i16 %165, i16* %167, align 1
  br label %31

; <label>:168                                     ; preds = %31
  ret void
}

declare zeroext i1 @_ZgtILi13EEb7ap_uintIXT_EEi(i16, i32)

declare i16 @_ZmiILi13EE7ap_uintIXT_EERKS1_i(%class.ap_uint.5*, i32)

declare zeroext i1 @_ZgtILi12EEb7ap_uintIXT_EEs(i16, i16 signext)

declare void @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed*)

declare %class.ap_uint.2* @_ZN7ap_uintILi10EEaSEi(%class.ap_uint.2*, i32)

declare zeroext i1 @_ZleILi10EEb7ap_uintIXT_EEi(i16, i32)

declare %class.ap_fixed* @_ZN8ap_fixedILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSERKS2_(%class.ap_fixed*, %class.ap_fixed*)

declare i16 @_ZdvILi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EE8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EERKS3_h(%class.ap_fixed*, i8 zeroext)

declare i16 @_ZN7ap_uintILi10EEppEv(%class.ap_uint.2*)

declare void @_ZN7ap_uintILi13EEC1Ev(%class.ap_uint.5*)

declare void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.6*)

declare void @_ZN8ap_fixedILi13ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.7*)

declare void @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.8*)

declare void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ei(%class.ap_fixed.3*, i32)

declare void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1ILi28ELi13ELS0_0ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_fixed.3*, %class.ap_fixed.8*)

declare i32 @_ZmiILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0ELi14ELi13ELS0_0ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i16, i16)

declare i32 @_ZplILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0ELi14ELi13ELS0_0ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i16, i16)

declare void @_ZN7ap_uintILi13EEC1ILi12EEERKS_IXT_EE(%class.ap_uint.5*, %class.ap_uint.1*)

declare i16 @_ZdvILi12EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1*, i32)

declare %class.ap_fixed.8* @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSILi60ELi1ELS0_0ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_fixed.8*, %class.ap_fixed.9*)

declare i64 @_ZplILi30ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0ELi30ELi1ELS0_0ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i32, i32)

declare i32 @_ZmlILi14ELi16ELi1EL9ap_q_mode0EL9ap_o_mode3ELi0EE8ap_fixedIXplT_T0_EXT1_EXT2_EXT3_EXT4_EE6ap_intIXT_EES2_IXT0_EXT1_EXT2_EXT3_EXT4_EE(i16, i16)

declare i16 @_ZNK7ap_uintILi13EEngEv(%class.ap_uint.5*)

declare %class.ap_uint.5* @_ZN7ap_uintILi13EEaSEi(%class.ap_uint.5*, i32)

declare void @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEC1Ev(%class.ap_fixed.3*)

declare void @_ZN7ap_uintILi23EEC1Ei(%class.ap_uint.11*, i32)

declare void @_ZN7ap_uintILi8EEC1Ei(%class.ap_uint.0*, i32)

declare zeroext i1 @_ZltILi13ELi12EEb7ap_uintIXT_EES0_IXT0_EE(i16, i16)

declare void @_ZN7ap_uintILi8EEC1Ev(%class.ap_uint.0*)

declare zeroext i1 @_ZltILi12ELi12EEb7ap_uintIXT_EES0_IXT0_EE(i16, i16)

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

declare i64 @_ZNK7ap_uintILi23EEcvmEv(%class.ap_uint.11*)

declare zeroext i1 @_ZeqILi12ELi12EEb7ap_uintIXT_EES0_IXT0_EE(i16, i16)

declare i16 @_ZmiILi12EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZeqILi12EEb7ap_uintIXT_EEi(i16, i32)

declare %class.ap_fixed.8* @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSERKS2_(%class.ap_fixed.8*, %class.ap_fixed.8*)

declare %class.ap_fixed.8* @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSILi44ELi1ELS0_0ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_fixed.8*, %class.ap_fixed.12*)

declare i48 @_ZplILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0ELi16ELi1ELS0_0ELS1_3ELi0EE8ap_fixedIXplT_T4_EXT5_EXT1_EXT2_EXT3_EES2_IXT_EXT0_EXT1_EXT2_EXT3_EES2_IXT4_EXT5_EXT6_EXT7_EXT8_EE(i32, i16)

declare i64* @_ZN8ap_fixedILi28ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EE5rangeEii(%class.ap_fixed.8*, i32, i32)

declare %class.ap_fixed.3* @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EEaSERKS2_(%class.ap_fixed.3*, %class.ap_fixed.3*)

declare i64* @_ZN8ap_fixedILi14ELi13EL9ap_q_mode0EL9ap_o_mode3ELi0EE5rangeEii(%class.ap_fixed.3*, i32, i32)

declare %class.ap_fixed.6* @_ZN8ap_fixedILi14ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSILi28ELi13ELS0_0ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_fixed.6*, %class.ap_fixed.8*)

declare %class.ap_fixed.7* @_ZN8ap_fixedILi13ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_(%class.ap_fixed.7*, %class.ap_fixed.7*)

declare void @_ZN8ap_fixedILi13ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1El(%class.ap_fixed.7*, i64)

declare i64* @_ZN8ap_fixedILi14ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii(%class.ap_fixed.6*, i32, i32)

declare %class.ap_uint.5* @_ZN7ap_uintILi13EEaSILi13ELi13EL9ap_q_mode5EL9ap_o_mode3ELi0EEERS0_RK8ap_fixedIXT_EXT0_EXT1_EXT2_EXT3_EE(%class.ap_uint.5*, %class.ap_fixed.7*)

declare zeroext i1 @_ZneILi8EEb7ap_uintIXT_EEi(i8, i32)

declare i16 @_ZplILi12EE7ap_uintIXT_EERKS1_i(%class.ap_uint.1*, i32)

declare zeroext i1 @_ZeqILi13ELi13EEb7ap_uintIXT_EES0_IXT0_EE(i16, i16)

declare %class.ap_uint.5* @_ZN7ap_uintILi13EEaSERKS0_(%class.ap_uint.5*, %class.ap_uint.5*)

declare %class.ap_uint.11* @_ZN7ap_uintILi23EEaSERKS0_(%class.ap_uint.11*, %class.ap_uint.11*)

declare i24 @_ZplILi23EE7ap_uintIXT_EERKS1_i(%class.ap_uint.11*, i32)

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

declare void @_ZN3hls6streamI7ap_uintILi256EEEC1Ev(%"class.hls::stream"*)

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

declare void @_ZN7ap_uintILi256EEC1Ev(%class.ap_uint*)

declare i64* @_ZN7ap_uintILi256EE5rangeEii(%class.ap_uint*, i32, i32)

declare i64* @_ZN7ap_uintILi8EE5rangeEii(%class.ap_uint.0*, i32, i32)

declare %class.ap_uint* @_ZN7ap_uintILi256EEaSERKS0_(%class.ap_uint*, %class.ap_uint*)

declare void @_ZN3hls6streamI7ap_uintILi256EEE4readEv(%class.ap_uint* sret, %"class.hls::stream"*)

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

declare void @_ZN3hls6streamI7ap_uintILi256EEE5writeERKS2_(%"class.hls::stream"*, %class.ap_uint*)

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
  call void @__assert_fail(i8* getelementptr inbounds ([143 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([90 x i8]* @__PRETTY_FUNCTION__._ZL38p_ZN2xf16Mat_0_256_256_1_4initIEEiib_1P19xf_Mat_0_256_256_1_iib, i32 0, i32 0)) noreturn nounwind
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

define internal void @_GLOBAL__I_a() section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init1()
  ret void
}

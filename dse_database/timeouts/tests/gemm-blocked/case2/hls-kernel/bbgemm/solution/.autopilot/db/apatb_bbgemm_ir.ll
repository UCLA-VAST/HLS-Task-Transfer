; ModuleID = '/home/atefehSZ/RL/original-software-gnn/software-gnn/dse_database/timeouts/tests/gemm-blocked/case2/hls-kernel/bbgemm/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.merlin_uint_512 = type { [64 x i8] }

; Function Attrs: noinline
define void @apatb_bbgemm_ir(%struct.merlin_uint_512* %m1, %struct.merlin_uint_512* %m2, %struct.merlin_uint_512* %prod) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 32768)
  %m1_copy = bitcast i8* %malloccall to [512 x i512]*
  %malloccall1 = call i8* @malloc(i64 32768)
  %m2_copy = bitcast i8* %malloccall1 to [512 x i512]*
  %malloccall2 = call i8* @malloc(i64 32768)
  %prod_copy = bitcast i8* %malloccall2 to [512 x i512]*
  %0 = bitcast %struct.merlin_uint_512* %m1 to [512 x %struct.merlin_uint_512]*
  %1 = bitcast %struct.merlin_uint_512* %m2 to [512 x %struct.merlin_uint_512]*
  %2 = bitcast %struct.merlin_uint_512* %prod to [512 x %struct.merlin_uint_512]*
  call fastcc void @copy_in([512 x %struct.merlin_uint_512]* %0, [512 x i512]* %m1_copy, [512 x %struct.merlin_uint_512]* %1, [512 x i512]* %m2_copy, [512 x %struct.merlin_uint_512]* %2, [512 x i512]* %prod_copy)
  %3 = getelementptr [512 x i512], [512 x i512]* %m1_copy, i32 0, i32 0
  %4 = getelementptr [512 x i512], [512 x i512]* %m2_copy, i32 0, i32 0
  %5 = getelementptr [512 x i512], [512 x i512]* %prod_copy, i32 0, i32 0
  call void @apatb_bbgemm_hw(i512* %3, i512* %4, i512* %5)
  call fastcc void @copy_out([512 x %struct.merlin_uint_512]* %0, [512 x i512]* %m1_copy, [512 x %struct.merlin_uint_512]* %1, [512 x i512]* %m2_copy, [512 x %struct.merlin_uint_512]* %2, [512 x i512]* %prod_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([512 x %struct.merlin_uint_512]* readonly, [512 x i512]* noalias, [512 x %struct.merlin_uint_512]* readonly, [512 x i512]* noalias, [512 x %struct.merlin_uint_512]* readonly, [512 x i512]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a512struct.merlin_uint_512([512 x i512]* %1, [512 x %struct.merlin_uint_512]* %0)
  call fastcc void @onebyonecpy_hls.p0a512struct.merlin_uint_512([512 x i512]* %3, [512 x %struct.merlin_uint_512]* %2)
  call fastcc void @onebyonecpy_hls.p0a512struct.merlin_uint_512([512 x i512]* %5, [512 x %struct.merlin_uint_512]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([512 x %struct.merlin_uint_512]*, [512 x i512]* noalias readonly, [512 x %struct.merlin_uint_512]*, [512 x i512]* noalias readonly, [512 x %struct.merlin_uint_512]*, [512 x i512]* noalias readonly) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a512struct.merlin_uint_512.5([512 x %struct.merlin_uint_512]* %0, [512 x i512]* %1)
  call fastcc void @onebyonecpy_hls.p0a512struct.merlin_uint_512.5([512 x %struct.merlin_uint_512]* %2, [512 x i512]* %3)
  call fastcc void @onebyonecpy_hls.p0a512struct.merlin_uint_512.5([512 x %struct.merlin_uint_512]* %4, [512 x i512]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a512struct.merlin_uint_512.5([512 x %struct.merlin_uint_512]* noalias, [512 x i512]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [512 x %struct.merlin_uint_512]* %0, null
  %3 = icmp eq [512 x i512]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx12 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [512 x i512], [512 x i512]* %1, i64 0, i64 %for.loop.idx12
  %6 = load i512, i512* %5, align 1
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx311 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr59 = getelementptr [512 x %struct.merlin_uint_512], [512 x %struct.merlin_uint_512]* %0, i64 0, i64 %for.loop.idx12, i32 0, i64 %for.loop.idx311
  %7 = mul nuw nsw i64 8, %for.loop.idx311
  %.end = or i64 %7, 7
  %8 = zext i64 %7 to i512
  %9 = zext i64 %.end to i512
  %10 = add nuw nsw i512 %9, 1
  %11 = shl i512 1, %10
  %12 = icmp uge i512 %10, 512
  %13 = select i1 %12, i512 0, i512 %11
  %14 = shl i512 1, %8
  %15 = sub i512 %13, %14
  %16 = and i512 %6, %15
  %17 = lshr i512 %16, %8
  %.partselect = trunc i512 %17 to i8
  store i8 %.partselect, i8* %dst.addr59, align 1
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx311, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 64
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx12, 1
  %exitcond13 = icmp ne i64 %for.loop.idx.next, 512
  br i1 %exitcond13, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a512struct.merlin_uint_512([512 x i512]* noalias, [512 x %struct.merlin_uint_512]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [512 x i512]* %0, null
  %3 = icmp eq [512 x %struct.merlin_uint_512]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx12 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %5 = getelementptr [512 x i512], [512 x i512]* %0, i64 0, i64 %for.loop.idx12
  %.promoted = load i512, i512* %5, align 1
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %.partset1 = phi i512 [ %.promoted, %for.loop ], [ %.partset, %for.loop2 ]
  %for.loop.idx311 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %6 = mul nuw nsw i64 8, %for.loop.idx311
  %src.addr610 = getelementptr [512 x %struct.merlin_uint_512], [512 x %struct.merlin_uint_512]* %1, i64 0, i64 %for.loop.idx12, i32 0, i64 %for.loop.idx311
  %7 = load i8, i8* %src.addr610, align 1
  %.end = or i64 %6, 7
  %8 = zext i64 %6 to i512
  %9 = zext i8 %7 to i512
  %10 = shl i512 %9, %8
  %11 = zext i64 %.end to i512
  %12 = add nuw nsw i512 %11, 1
  %13 = shl i512 1, %12
  %14 = icmp uge i512 %12, 512
  %15 = select i1 %14, i512 0, i512 %13
  %16 = shl i512 1, %8
  %17 = sub i512 %15, %16
  %18 = xor i512 %17, -1
  %19 = and i512 %.partset1, %18
  %.partset = or i512 %19, %10
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx311, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 64
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  store i512 %.partset, i512* %5, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx12, 1
  %exitcond13 = icmp ne i64 %for.loop.idx.next, 512
  br i1 %exitcond13, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_bbgemm_hw(i512*, i512*, i512*)

define void @bbgemm_hw_stub_wrapper(i512*, i512*, i512*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 32768)
  %3 = bitcast i8* %malloccall to [512 x %struct.merlin_uint_512]*
  %malloccall1 = tail call i8* @malloc(i64 32768)
  %4 = bitcast i8* %malloccall1 to [512 x %struct.merlin_uint_512]*
  %malloccall2 = tail call i8* @malloc(i64 32768)
  %5 = bitcast i8* %malloccall2 to [512 x %struct.merlin_uint_512]*
  %6 = bitcast i512* %0 to [512 x i512]*
  %7 = bitcast i512* %1 to [512 x i512]*
  %8 = bitcast i512* %2 to [512 x i512]*
  call void @copy_out([512 x %struct.merlin_uint_512]* %3, [512 x i512]* %6, [512 x %struct.merlin_uint_512]* %4, [512 x i512]* %7, [512 x %struct.merlin_uint_512]* %5, [512 x i512]* %8)
  %9 = bitcast [512 x %struct.merlin_uint_512]* %3 to %struct.merlin_uint_512*
  %10 = bitcast [512 x %struct.merlin_uint_512]* %4 to %struct.merlin_uint_512*
  %11 = bitcast [512 x %struct.merlin_uint_512]* %5 to %struct.merlin_uint_512*
  call void @bbgemm_hw_stub(%struct.merlin_uint_512* %9, %struct.merlin_uint_512* %10, %struct.merlin_uint_512* %11)
  call void @copy_in([512 x %struct.merlin_uint_512]* %3, [512 x i512]* %6, [512 x %struct.merlin_uint_512]* %4, [512 x i512]* %7, [512 x %struct.merlin_uint_512]* %5, [512 x i512]* %8)
  ret void
}

declare void @bbgemm_hw_stub(%struct.merlin_uint_512*, %struct.merlin_uint_512*, %struct.merlin_uint_512*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}

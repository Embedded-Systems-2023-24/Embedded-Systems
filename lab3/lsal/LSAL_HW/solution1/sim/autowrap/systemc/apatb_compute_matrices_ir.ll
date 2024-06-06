; ModuleID = '/home/inf2021/iathanasi/embedded/Embedded-Systems/lab3/lsal/LSAL_HW/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_compute_matrices_ir(i8* %string1, i8* %string2, i32* %max_index, i32* %similarity_matrix, i16* %direction_matrix, i32 %N, i32 %M) local_unnamed_addr #0 {
entry:
  %string1_copy = alloca [256 x i8], align 512
  %string2_copy = alloca [2048 x i8], align 512
  %max_index_copy = alloca i32, align 512
  %malloccall = tail call i8* @malloc(i64 2097152)
  %similarity_matrix_copy = bitcast i8* %malloccall to [524288 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 1048576)
  %direction_matrix_copy = bitcast i8* %malloccall1 to [524288 x i16]*
  %0 = bitcast i8* %string1 to [256 x i8]*
  %1 = bitcast i8* %string2 to [2048 x i8]*
  %2 = bitcast i32* %similarity_matrix to [524288 x i32]*
  %3 = bitcast i16* %direction_matrix to [524288 x i16]*
  call fastcc void @copy_in([256 x i8]* %0, [256 x i8]* nonnull align 512 %string1_copy, [2048 x i8]* %1, [2048 x i8]* nonnull align 512 %string2_copy, i32* %max_index, i32* nonnull align 512 %max_index_copy, [524288 x i32]* %2, [524288 x i32]* %similarity_matrix_copy, [524288 x i16]* %3, [524288 x i16]* %direction_matrix_copy)
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %string1_copy, i32 0, i32 0
  %5 = getelementptr inbounds [2048 x i8], [2048 x i8]* %string2_copy, i32 0, i32 0
  %6 = getelementptr inbounds [524288 x i32], [524288 x i32]* %similarity_matrix_copy, i32 0, i32 0
  %7 = getelementptr inbounds [524288 x i16], [524288 x i16]* %direction_matrix_copy, i32 0, i32 0
  call void @apatb_compute_matrices_hw(i8* %4, i8* %5, i32* %max_index_copy, i32* %6, i16* %7, i32 %N, i32 %M)
  call fastcc void @copy_out([256 x i8]* %0, [256 x i8]* nonnull align 512 %string1_copy, [2048 x i8]* %1, [2048 x i8]* nonnull align 512 %string2_copy, i32* %max_index, i32* nonnull align 512 %max_index_copy, [524288 x i32]* %2, [524288 x i32]* %similarity_matrix_copy, [524288 x i16]* %3, [524288 x i16]* %direction_matrix_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([256 x i8]* readonly, [256 x i8]* noalias align 512, [2048 x i8]* readonly, [2048 x i8]* noalias align 512, i32* readonly, i32* noalias align 512, [524288 x i32]* readonly, [524288 x i32]* noalias, [524288 x i16]* readonly, [524288 x i16]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256i8([256 x i8]* align 512 %1, [256 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a2048i8([2048 x i8]* align 512 %3, [2048 x i8]* %2)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %5, i32* %4)
  call fastcc void @onebyonecpy_hls.p0a524288i32([524288 x i32]* %7, [524288 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a524288i16([524288 x i16]* %9, [524288 x i16]* %8)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a256i8([256 x i8]* noalias align 512, [256 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [256 x i8]* %0, null
  %3 = icmp eq [256 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [256 x i8], [256 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [256 x i8], [256 x i8]* %1, i64 0, i64 %for.loop.idx1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr, i64 1, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a2048i8([2048 x i8]* noalias align 512, [2048 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2048 x i8]* %0, null
  %3 = icmp eq [2048 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2048 x i8], [2048 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2048 x i8], [2048 x i8]* %1, i64 0, i64 %for.loop.idx1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr, i64 1, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2048
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i32* %0 to i8*
  %6 = bitcast i32* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a524288i32([524288 x i32]* noalias, [524288 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [524288 x i32]* %0, null
  %3 = icmp eq [524288 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [524288 x i32], [524288 x i32]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i32* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [524288 x i32], [524288 x i32]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i32* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 524288
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a524288i16([524288 x i16]* noalias, [524288 x i16]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [524288 x i16]* %0, null
  %3 = icmp eq [524288 x i16]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr.gep1 = getelementptr [524288 x i16], [524288 x i16]* %0, i64 0, i64 %for.loop.idx3
  %5 = bitcast i16* %dst.addr.gep1 to i8*
  %src.addr.gep2 = getelementptr [524288 x i16], [524288 x i16]* %1, i64 0, i64 %for.loop.idx3
  %6 = bitcast i16* %src.addr.gep2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 2, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 524288
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([256 x i8]*, [256 x i8]* noalias readonly align 512, [2048 x i8]*, [2048 x i8]* noalias readonly align 512, i32*, i32* noalias readonly align 512, [524288 x i32]*, [524288 x i32]* noalias readonly, [524288 x i16]*, [524288 x i16]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a256i8([256 x i8]* %0, [256 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a2048i8([2048 x i8]* %2, [2048 x i8]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %4, i32* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a524288i32([524288 x i32]* %6, [524288 x i32]* %7)
  call fastcc void @onebyonecpy_hls.p0a524288i16([524288 x i16]* %8, [524288 x i16]* %9)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_compute_matrices_hw(i8*, i8*, i32*, i32*, i16*, i32, i32)

define void @compute_matrices_hw_stub_wrapper(i8*, i8*, i32*, i32*, i16*, i32, i32) #5 {
entry:
  %7 = bitcast i8* %0 to [256 x i8]*
  %8 = bitcast i8* %1 to [2048 x i8]*
  %9 = bitcast i32* %3 to [524288 x i32]*
  %10 = bitcast i16* %4 to [524288 x i16]*
  call void @copy_out([256 x i8]* null, [256 x i8]* %7, [2048 x i8]* null, [2048 x i8]* %8, i32* null, i32* %2, [524288 x i32]* null, [524288 x i32]* %9, [524288 x i16]* null, [524288 x i16]* %10)
  %11 = bitcast [256 x i8]* %7 to i8*
  %12 = bitcast [2048 x i8]* %8 to i8*
  %13 = bitcast [524288 x i32]* %9 to i32*
  %14 = bitcast [524288 x i16]* %10 to i16*
  call void @compute_matrices_hw_stub(i8* %11, i8* %12, i32* %2, i32* %13, i16* %14, i32 %5, i32 %6)
  call void @copy_in([256 x i8]* null, [256 x i8]* %7, [2048 x i8]* null, [2048 x i8]* %8, i32* null, i32* %2, [524288 x i32]* null, [524288 x i32]* %9, [524288 x i16]* null, [524288 x i16]* %10)
  ret void
}

declare void @compute_matrices_hw_stub(i8*, i8*, i32*, i32*, i16*, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}

package stdgo.internal.goarch;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// package goarch contains GOARCH-specific constants.
**/
private var __go2hxdoc__package:Bool;

final amd64:ArchFamilyType = ((0 : GoInt) : ArchFamilyType);
final arm:ArchFamilyType = ((0 : GoInt) : ArchFamilyType);
final arm64:ArchFamilyType = ((0 : GoInt) : ArchFamilyType);
final i386:ArchFamilyType = ((0 : GoInt) : ArchFamilyType);
final loong64:ArchFamilyType = ((0 : GoInt) : ArchFamilyType);
final mips:ArchFamilyType = ((0 : GoInt) : ArchFamilyType);
final mips64:ArchFamilyType = ((0 : GoInt) : ArchFamilyType);
final ppc64:ArchFamilyType = ((0 : GoInt) : ArchFamilyType);
final riscv64:ArchFamilyType = ((0 : GoInt) : ArchFamilyType);
final s390x:ArchFamilyType = ((0 : GoInt) : ArchFamilyType);
final wasm:ArchFamilyType = ((0 : GoInt) : ArchFamilyType);

/**
	// PtrSize is the size of a pointer in bytes - unsafe.Sizeof(uintptr(0)) but as an ideal constant.
	// It is also the size of the machine's native word size (that is, 4 on 32-bit systems, 8 on 64-bit).
**/
final ptrSize:GoUInt64 = (0 : GoUInt64);

/**
	// ArchFamily is the architecture family (AMD64, ARM, ...)
**/
final archFamily:ArchFamilyType = ((0 : GoInt) : ArchFamilyType);

/**
	// BigEndian reports whether the architecture is big-endian.
**/
final bigEndian:InvalidType = null;

/**
	// DefaultPhysPageSize is the default physical page size.
**/
final defaultPhysPageSize:GoUInt64 = (0 : GoUInt64);

/**
	// PCQuantum is the minimal unit for a program counter (1 on x86, 4 on most other systems).
	// The various PC tables record PC deltas pre-divided by PCQuantum.
**/
final pcquantum:GoUInt64 = (0 : GoUInt64);

/**
	// Int64Align is the required alignment for a 64-bit integer (4 on 32-bit systems, 8 on 64-bit).
**/
final int64Align:GoUInt64 = (0 : GoUInt64);

/**
	// MinFrameSize is the size of the system-reserved words at the bottom
	// of a frame (just above the architectural stack pointer).
	// It is zero on x86 and PtrSize on most non-x86 (LR-based) systems.
	// On PowerPC it is larger, to cover three more reserved words:
	// the compiler word, the link editor word, and the TOC save word.
**/
final minFrameSize:GoUInt64 = (0 : GoUInt64);

/**
	// StackAlign is the required alignment of the SP register.
	// The stack must be at least word aligned, but some architectures require more.
**/
final stackAlign:GoUInt64 = (0 : GoUInt64);

final goarch:GoString = ("" : GoString);
final is386:GoUInt64 = (0 : GoUInt64);
final isAmd64:GoUInt64 = (0 : GoUInt64);
final isAmd64p32:GoUInt64 = (0 : GoUInt64);
final isArm:GoUInt64 = (0 : GoUInt64);
final isArmbe:GoUInt64 = (0 : GoUInt64);
final isArm64:GoUInt64 = (0 : GoUInt64);
final isArm64be:GoUInt64 = (0 : GoUInt64);
final isLoong64:GoUInt64 = (0 : GoUInt64);
final isMips:GoUInt64 = (0 : GoUInt64);
final isMipsle:GoUInt64 = (0 : GoUInt64);
final isMips64:GoUInt64 = (0 : GoUInt64);
final isMips64le:GoUInt64 = (0 : GoUInt64);
final isMips64p32:GoUInt64 = (0 : GoUInt64);
final isMips64p32le:GoUInt64 = (0 : GoUInt64);
final isPpc:GoUInt64 = (0 : GoUInt64);
final isPpc64:GoUInt64 = (0 : GoUInt64);
final isPpc64le:GoUInt64 = (0 : GoUInt64);
final isRiscv:GoUInt64 = (0 : GoUInt64);
final isRiscv64:GoUInt64 = (0 : GoUInt64);
final isS390:GoUInt64 = (0 : GoUInt64);
final isS390x:GoUInt64 = (0 : GoUInt64);
final isSparc:GoUInt64 = (0 : GoUInt64);
final isSparc64:GoUInt64 = (0 : GoUInt64);
final isWasm:GoUInt64 = (0 : GoUInt64);
@:named typedef ArchFamilyType = GoInt;

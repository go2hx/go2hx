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
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
final amd64 : ArchFamilyType = ((0 : GoInt) : ArchFamilyType);
/**
    
    
    
**/
final arm = ((0 : GoInt) : ArchFamilyType);
/**
    
    
    
**/
final arm64 = ((0 : GoInt) : ArchFamilyType);
/**
    
    
    
**/
final i386 = ((0 : GoInt) : ArchFamilyType);
/**
    
    
    
**/
final loong64 = ((0 : GoInt) : ArchFamilyType);
/**
    
    
    
**/
final mips = ((0 : GoInt) : ArchFamilyType);
/**
    
    
    
**/
final mips64 = ((0 : GoInt) : ArchFamilyType);
/**
    
    
    
**/
final ppc64 = ((0 : GoInt) : ArchFamilyType);
/**
    
    
    
**/
final riscv64 = ((0 : GoInt) : ArchFamilyType);
/**
    
    
    
**/
final s390x = ((0 : GoInt) : ArchFamilyType);
/**
    
    
    
**/
final wasm = ((0 : GoInt) : ArchFamilyType);
/**
    // PtrSize is the size of a pointer in bytes - unsafe.Sizeof(uintptr(0)) but as an ideal constant.
    // It is also the size of the machine's native word size (that is, 4 on 32-bit systems, 8 on 64-bit).
    
    
**/
final ptrSize = (0 : GoUInt64);
/**
    // ArchFamily is the architecture family (AMD64, ARM, ...)
    
    
**/
final archFamily : ArchFamilyType = ((0 : GoInt) : ArchFamilyType);
/**
    // BigEndian reports whether the architecture is big-endian.
    
    
**/
final bigEndian = null;
/**
    // DefaultPhysPageSize is the default physical page size.
    
    
**/
final defaultPhysPageSize = (0 : GoUInt64);
/**
    // PCQuantum is the minimal unit for a program counter (1 on x86, 4 on most other systems).
    // The various PC tables record PC deltas pre-divided by PCQuantum.
    
    
**/
final pcquantum = (0 : GoUInt64);
/**
    // Int64Align is the required alignment for a 64-bit integer (4 on 32-bit systems, 8 on 64-bit).
    
    
**/
final int64Align = (0 : GoUInt64);
/**
    // MinFrameSize is the size of the system-reserved words at the bottom
    // of a frame (just above the architectural stack pointer).
    // It is zero on x86 and PtrSize on most non-x86 (LR-based) systems.
    // On PowerPC it is larger, to cover three more reserved words:
    // the compiler word, the link editor word, and the TOC save word.
    
    
**/
final minFrameSize = (0 : GoUInt64);
/**
    // StackAlign is the required alignment of the SP register.
    // The stack must be at least word aligned, but some architectures require more.
    
    
**/
final stackAlign = (0 : GoUInt64);
/**
    
    
    
**/
final goarch = ("" : GoString);
/**
    
    
    
**/
final is386 = (0 : GoUInt64);
/**
    
    
    
**/
final isAmd64 = (0 : GoUInt64);
/**
    
    
    
**/
final isAmd64p32 = (0 : GoUInt64);
/**
    
    
    
**/
final isArm = (0 : GoUInt64);
/**
    
    
    
**/
final isArmbe = (0 : GoUInt64);
/**
    
    
    
**/
final isArm64 = (0 : GoUInt64);
/**
    
    
    
**/
final isArm64be = (0 : GoUInt64);
/**
    
    
    
**/
final isLoong64 = (0 : GoUInt64);
/**
    
    
    
**/
final isMips = (0 : GoUInt64);
/**
    
    
    
**/
final isMipsle = (0 : GoUInt64);
/**
    
    
    
**/
final isMips64 = (0 : GoUInt64);
/**
    
    
    
**/
final isMips64le = (0 : GoUInt64);
/**
    
    
    
**/
final isMips64p32 = (0 : GoUInt64);
/**
    
    
    
**/
final isMips64p32le = (0 : GoUInt64);
/**
    
    
    
**/
final isPpc = (0 : GoUInt64);
/**
    
    
    
**/
final isPpc64 = (0 : GoUInt64);
/**
    
    
    
**/
final isPpc64le = (0 : GoUInt64);
/**
    
    
    
**/
final isRiscv = (0 : GoUInt64);
/**
    
    
    
**/
final isRiscv64 = (0 : GoUInt64);
/**
    
    
    
**/
final isS390 = (0 : GoUInt64);
/**
    
    
    
**/
final isS390x = (0 : GoUInt64);
/**
    
    
    
**/
final isSparc = (0 : GoUInt64);
/**
    
    
    
**/
final isSparc64 = (0 : GoUInt64);
/**
    
    
    
**/
final isWasm = (0 : GoUInt64);
@:named typedef ArchFamilyType = GoInt;

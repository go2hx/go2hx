package stdgo.internal.abi;
/**
    
    
    
**/
var _kindNames : stdgo.Slice<stdgo.GoString> = {
        var s = new stdgo.Slice<stdgo.GoString>(27, 0).__setString__();
        s[0] = ("invalid" : stdgo.GoString);
        s[1] = ("bool" : stdgo.GoString);
        s[2] = ("int" : stdgo.GoString);
        s[3] = ("int8" : stdgo.GoString);
        s[4] = ("int16" : stdgo.GoString);
        s[5] = ("int32" : stdgo.GoString);
        s[6] = ("int64" : stdgo.GoString);
        s[7] = ("uint" : stdgo.GoString);
        s[8] = ("uint8" : stdgo.GoString);
        s[9] = ("uint16" : stdgo.GoString);
        s[10] = ("uint32" : stdgo.GoString);
        s[11] = ("uint64" : stdgo.GoString);
        s[12] = ("uintptr" : stdgo.GoString);
        s[13] = ("float32" : stdgo.GoString);
        s[14] = ("float64" : stdgo.GoString);
        s[15] = ("complex64" : stdgo.GoString);
        s[16] = ("complex128" : stdgo.GoString);
        s[17] = ("array" : stdgo.GoString);
        s[18] = ("chan" : stdgo.GoString);
        s[19] = ("func" : stdgo.GoString);
        s[20] = ("interface" : stdgo.GoString);
        s[21] = ("map" : stdgo.GoString);
        s[22] = ("ptr" : stdgo.GoString);
        s[23] = ("slice" : stdgo.GoString);
        s[24] = ("string" : stdgo.GoString);
        s[25] = ("struct" : stdgo.GoString);
        s[26] = ("unsafe.Pointer" : stdgo.GoString);
        s;
    };
/**
    // IntArgRegs is the number of registers dedicated
    // to passing integer argument values. Result registers are identical
    // to argument registers, so this number is used for those too.
    
    
**/
final intArgRegs : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // FloatArgRegs is the number of registers dedicated
    // to passing floating-point argument values. Result registers are
    // identical to argument registers, so this number is used for
    // those too.
    
    
**/
final floatArgRegs : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // EffectiveFloatRegSize describes the width of floating point
    // registers on the current platform from the ABI's perspective.
    //
    // Since Go only supports 32-bit and 64-bit floating point primitives,
    // this number should be either 0, 4, or 8. 0 indicates no floating
    // point registers for the ABI or that floating point values will be
    // passed via the softfloat ABI.
    //
    // For platforms that support larger floating point register widths,
    // such as x87's 80-bit "registers" (not that we support x87 currently),
    // use 8.
    
    
**/
final effectiveFloatRegSize : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Map constants common to several packages
    // runtime/runtime-gdb.py:MapTypePrinter contains its own copy
    
    // log2 of number of elements in a bucket.
**/
final mapBucketCountBits : stdgo.StdGoTypes.GoUInt64 = (3i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Map constants common to several packages
    // runtime/runtime-gdb.py:MapTypePrinter contains its own copy
    
    
**/
final mapBucketCount : stdgo.StdGoTypes.GoUInt64 = (8i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Map constants common to several packages
    // runtime/runtime-gdb.py:MapTypePrinter contains its own copy
    
    // Must fit in a uint8.
**/
final mapMaxKeyBytes : stdgo.StdGoTypes.GoUInt64 = (128i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Map constants common to several packages
    // runtime/runtime-gdb.py:MapTypePrinter contains its own copy
    
    // Must fit in a uint8.
**/
final mapMaxElemBytes : stdgo.StdGoTypes.GoUInt64 = (128i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // StackNosplitBase is the base maximum number of bytes that a chain of
    // NOSPLIT functions can use.
    //
    // This value must be multiplied by the stack guard multiplier, so do not
    // use it directly. See runtime/stack.go:stackNosplit and
    // cmd/internal/objabi/stack.go:StackNosplit.
    
    
**/
final stackNosplitBase : stdgo.StdGoTypes.GoUInt64 = (800i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // After a stack split check the SP is allowed to be StackSmall bytes below
    // the stack guard.
    //
    // Functions that need frames <= StackSmall can perform the stack check
    // using a single comparison directly between the stack guard and the SP
    // because we ensure that StackSmall bytes of stack space are available
    // beyond the stack guard.
    
    
**/
final stackSmall : stdgo.StdGoTypes.GoUInt64 = (128i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Functions that need frames <= StackBig can assume that neither
    // SP-framesize nor stackGuard-StackSmall will underflow, and thus use a
    // more efficient check. In order to ensure this, StackBig must be <= the
    // size of the unmapped space at zero.
    
    
**/
final stackBig : stdgo.StdGoTypes.GoUInt64 = (4096i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // FuncFlagTopFrame indicates a function that appears at the top of its stack.
    // The traceback routine stop at such a function and consider that a
    // successful, complete traversal of the stack.
    // Examples of TopFrame functions include goexit, which appears
    // at the top of a user goroutine stack, and mstart, which appears
    // at the top of a system goroutine stack.
    
    
**/
final funcFlagTopFrame : stdgo.internal.abi.Abi.FuncFlag = (4 : stdgo.internal.abi.Abi.FuncFlag);
/**
    // FuncFlagSPWrite indicates a function that writes an arbitrary value to SP
    // (any write other than adding or subtracting a constant amount).
    // The traceback routines cannot encode such changes into the
    // pcsp tables, so the function traceback cannot safely unwind past
    // SPWrite functions. Stopping at an SPWrite function is considered
    // to be an incomplete unwinding of the stack. In certain contexts
    // (in particular garbage collector stack scans) that is a fatal error.
    
    
**/
final funcFlagSPWrite = (4 : stdgo.internal.abi.Abi.FuncFlag);
/**
    // FuncFlagAsm indicates that a function was implemented in assembly.
    
    
**/
final funcFlagAsm = (4 : stdgo.internal.abi.Abi.FuncFlag);
/**
    
    
    // not a special function
**/
final funcIDNormal : stdgo.internal.abi.Abi.FuncID = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_abort = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_asmcgocall = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_asyncPreempt = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_cgocallback = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_debugCallV2 = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_gcBgMarkWorker = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_goexit = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_gogo = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_gopanic = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_handleAsyncEvent = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_mcall = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_morestack = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_mstart = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_panicwrap = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_rt0_go = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_runfinq = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_runtime_main = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_sigpanic = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_systemstack = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    
**/
final funcID_systemstack_switch = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    
    
    // any autogenerated code (hash/eq algorithms, method wrappers, etc.)
**/
final funcIDWrapper = (21 : stdgo.internal.abi.Abi.FuncID);
/**
    // ArgsSizeUnknown is set in Func.argsize to mark all functions
    // whose argument size is unknown (C vararg functions, and
    // assembly code without an explicit specification).
    // This value is generated by the compiler, assembler, or linker.
    
    
**/
final argsSizeUnknown : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IDs for PCDATA and FUNCDATA tables in Go binaries.
    //
    // These must agree with ../../../runtime/funcdata.h.
    
    
**/
final pcdata_UnsafePoint : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IDs for PCDATA and FUNCDATA tables in Go binaries.
    //
    // These must agree with ../../../runtime/funcdata.h.
    
    
**/
final pcdata_StackMapIndex : stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IDs for PCDATA and FUNCDATA tables in Go binaries.
    //
    // These must agree with ../../../runtime/funcdata.h.
    
    
**/
final pcdata_InlTreeIndex : stdgo.StdGoTypes.GoUInt64 = (2i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IDs for PCDATA and FUNCDATA tables in Go binaries.
    //
    // These must agree with ../../../runtime/funcdata.h.
    
    
**/
final pcdata_ArgLiveIndex : stdgo.StdGoTypes.GoUInt64 = (3i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IDs for PCDATA and FUNCDATA tables in Go binaries.
    //
    // These must agree with ../../../runtime/funcdata.h.
    
    
**/
final funcdata_ArgsPointerMaps : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IDs for PCDATA and FUNCDATA tables in Go binaries.
    //
    // These must agree with ../../../runtime/funcdata.h.
    
    
**/
final funcdata_LocalsPointerMaps : stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IDs for PCDATA and FUNCDATA tables in Go binaries.
    //
    // These must agree with ../../../runtime/funcdata.h.
    
    
**/
final funcdata_StackObjects : stdgo.StdGoTypes.GoUInt64 = (2i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IDs for PCDATA and FUNCDATA tables in Go binaries.
    //
    // These must agree with ../../../runtime/funcdata.h.
    
    
**/
final funcdata_InlTree : stdgo.StdGoTypes.GoUInt64 = (3i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IDs for PCDATA and FUNCDATA tables in Go binaries.
    //
    // These must agree with ../../../runtime/funcdata.h.
    
    
**/
final funcdata_OpenCodedDeferInfo : stdgo.StdGoTypes.GoUInt64 = (4i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IDs for PCDATA and FUNCDATA tables in Go binaries.
    //
    // These must agree with ../../../runtime/funcdata.h.
    
    
**/
final funcdata_ArgInfo : stdgo.StdGoTypes.GoUInt64 = (5i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IDs for PCDATA and FUNCDATA tables in Go binaries.
    //
    // These must agree with ../../../runtime/funcdata.h.
    
    
**/
final funcdata_ArgLiveInfo : stdgo.StdGoTypes.GoUInt64 = (6i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // IDs for PCDATA and FUNCDATA tables in Go binaries.
    //
    // These must agree with ../../../runtime/funcdata.h.
    
    
**/
final funcdata_WrapInfo : stdgo.StdGoTypes.GoUInt64 = (7i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Special values for the PCDATA_UnsafePoint table.
    
    // Safe for async preemption
**/
final unsafePointSafe : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Special values for the PCDATA_UnsafePoint table.
    
    // Unsafe for async preemption
**/
final unsafePointUnsafe : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // UnsafePointRestart1(2) apply on a sequence of instructions, within
    // which if an async preemption happens, we should back off the PC
    // to the start of the sequence when resuming.
    // We need two so we can distinguish the start/end of the sequence
    // in case that two sequences are next to each other.
    
    
**/
final unsafePointRestart1 : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Special values for the PCDATA_UnsafePoint table.
    
    
**/
final unsafePointRestart2 : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Like UnsafePointRestart1, but back to function entry if async preempted.
    
    
**/
final unsafePointRestartAtEntry : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final invalid : stdgo.internal.abi.Abi.Kind = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final bool_ = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final int_ = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final int8 = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final int16 = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final int32 = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final int64 = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final uint = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final uint8 = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final uint16 = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final uint32 = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final uint64 = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final uintptr = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final float32 = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final float64 = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final complex64 = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final complex128 = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final array = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final chan = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final func = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final interface_ = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final map = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final pointer = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final slice = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final string = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final struct_ = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    
    
    
**/
final unsafePointer = (26u32 : stdgo.internal.abi.Abi.Kind);
/**
    // TODO (khr, drchase) why aren't these in TFlag?  Investigate, fix if possible.
    
    
**/
final kindDirectIface : stdgo.StdGoTypes.GoUInt64 = (32i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    // Type.gc points to GC program
**/
final kindGCProg : stdgo.StdGoTypes.GoUInt64 = (64i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final kindMask : stdgo.StdGoTypes.GoUInt64 = (31i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // TFlagUncommon means that there is a data with a type, UncommonType,
    // just beyond the shared-per-type common data.  That is, the data
    // for struct types will store their UncommonType at one offset, the
    // data for interface types will store their UncommonType at a different
    // offset.  UncommonType is always accessed via a pointer that is computed
    // using trust-us-we-are-the-implementors pointer arithmetic.
    //
    // For example, if t.Kind() == Struct and t.tflag&TFlagUncommon != 0,
    // then t has UncommonType data and it can be accessed as:
    //
    //	type structTypeUncommon struct {
    //		structType
    //		u UncommonType
    //	}
    //	u := &(*structTypeUncommon)(unsafe.Pointer(t)).u
    
    
**/
final tflagUncommon : stdgo.internal.abi.Abi.TFlag = (1 : stdgo.internal.abi.Abi.TFlag);
/**
    // TFlagExtraStar means the name in the str field has an
    // extraneous '*' prefix. This is because for most types T in
    // a program, the type *T also exists and reusing the str data
    // saves binary size.
    
    
**/
final tflagExtraStar : stdgo.internal.abi.Abi.TFlag = (2 : stdgo.internal.abi.Abi.TFlag);
/**
    // TFlagNamed means the type has a name.
    
    
**/
final tflagNamed : stdgo.internal.abi.Abi.TFlag = (4 : stdgo.internal.abi.Abi.TFlag);
/**
    // TFlagRegularMemory means that equal and hash functions can treat
    // this type as a single region of t.size bytes.
    
    
**/
final tflagRegularMemory : stdgo.internal.abi.Abi.TFlag = (8 : stdgo.internal.abi.Abi.TFlag);
/**
    
    
    // <-chan
**/
final recvDir : stdgo.internal.abi.Abi.ChanDir = (2 : stdgo.internal.abi.Abi.ChanDir);
/**
    
    
    // chan<-
**/
final sendDir = (2 : stdgo.internal.abi.Abi.ChanDir);
/**
    
    
    // chan
**/
final bothDir : stdgo.internal.abi.Abi.ChanDir = (3 : stdgo.internal.abi.Abi.ChanDir);
/**
    
    
    
**/
final invalidDir : stdgo.internal.abi.Abi.ChanDir = (0 : stdgo.internal.abi.Abi.ChanDir);
/**
    // RegArgs is a struct that has space for each argument
    // and return value register on the current architecture.
    //
    // Assembly code knows the layout of the first two fields
    // of RegArgs.
    //
    // RegArgs also contains additional space to hold pointers
    // when it may not be safe to keep them only in the integer
    // register space otherwise.
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.RegArgs_static_extension) class RegArgs {
    /**
        // Values in these slots should be precisely the bit-by-bit
        // representation of how they would appear in a register.
        //
        // This means that on big endian arches, integer values should
        // be in the top bits of the slot. Floats are usually just
        // directly represented, but some architectures treat narrow
        // width floating point values specially (e.g. they're promoted
        // first, or they need to be NaN-boxed).
    **/
    public var ints : stdgo.GoArray<stdgo.StdGoTypes.GoUIntptr> = new stdgo.GoArray<stdgo.StdGoTypes.GoUIntptr>(...[for (i in 0 ... 0) (0 : stdgo.StdGoTypes.GoUIntptr)]);
    public var floats : stdgo.GoArray<stdgo.StdGoTypes.GoUInt64> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt64>(...[for (i in 0 ... 0) (0 : stdgo.StdGoTypes.GoUInt64)]);
    /**
        // Ptrs is a space that duplicates Ints but with pointer type,
        // used to make pointers passed or returned  in registers
        // visible to the GC by making the type unsafe.Pointer.
    **/
    public var ptrs : stdgo.GoArray<stdgo.unsafe.Unsafe.UnsafePointer> = new stdgo.GoArray<stdgo.unsafe.Unsafe.UnsafePointer>(...[for (i in 0 ... 0) @:default_value null]);
    /**
        // ReturnIsPtr is a bitmap that indicates which registers
        // contain or will contain pointers on the return path from
        // a reflectcall. The i'th bit indicates whether the i'th
        // register contains or will contain a valid Go pointer.
    **/
    public var returnIsPtr : stdgo.internal.abi.Abi.IntArgRegBitmap = new stdgo.internal.abi.Abi.IntArgRegBitmap(...[for (i in 0 ... 0) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public function new(?ints:stdgo.GoArray<stdgo.StdGoTypes.GoUIntptr>, ?floats:stdgo.GoArray<stdgo.StdGoTypes.GoUInt64>, ?ptrs:stdgo.GoArray<stdgo.unsafe.Unsafe.UnsafePointer>, ?returnIsPtr:stdgo.internal.abi.Abi.IntArgRegBitmap) {
        if (ints != null) this.ints = ints;
        if (floats != null) this.floats = floats;
        if (ptrs != null) this.ptrs = ptrs;
        if (returnIsPtr != null) this.returnIsPtr = returnIsPtr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RegArgs(ints, floats, ptrs, returnIsPtr);
    }
}
/**
    // Offset is for computing offsets of type data structures at compile/link time;
    // the target platform may not be the host platform.  Its state includes the
    // current offset, necessary alignment for the sequence of types, and the size
    // of pointers and alignment of slices, interfaces, and strings (this is for tearing-
    // resistant access to these types, if/when that is supported).
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.Offset_static_extension) class Offset {
    public var _off : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _align : stdgo.StdGoTypes.GoUInt8 = 0;
    public var _ptrSize : stdgo.StdGoTypes.GoUInt8 = 0;
    public var _sliceAlign : stdgo.StdGoTypes.GoUInt8 = 0;
    public function new(?_off:stdgo.StdGoTypes.GoUInt64, ?_align:stdgo.StdGoTypes.GoUInt8, ?_ptrSize:stdgo.StdGoTypes.GoUInt8, ?_sliceAlign:stdgo.StdGoTypes.GoUInt8) {
        if (_off != null) this._off = _off;
        if (_align != null) this._align = _align;
        if (_ptrSize != null) this._ptrSize = _ptrSize;
        if (_sliceAlign != null) this._sliceAlign = _sliceAlign;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Offset(_off, _align, _ptrSize, _sliceAlign);
    }
}
/**
    // Type is the runtime representation of a Go type.
    //
    // Type is also referenced implicitly
    // (in the form of expressions involving constants and arch.PtrSize)
    // in cmd/compile/internal/reflectdata/reflect.go
    // and cmd/link/internal/ld/decodesym.go
    // (e.g. data[2*arch.PtrSize+4] references the TFlag field)
    // unsafe.OffsetOf(Type{}.TFlag) cannot be used directly in those
    // places because it varies with cross compilation and experiments.
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.Type_static_extension) class Type {
    public var size_ : stdgo.StdGoTypes.GoUIntptr = 0;
    public var ptrBytes : stdgo.StdGoTypes.GoUIntptr = 0;
    public var hash : stdgo.StdGoTypes.GoUInt32 = 0;
    public var tflag : stdgo.internal.abi.Abi.TFlag = ((0 : stdgo.StdGoTypes.GoUInt8) : stdgo.internal.abi.Abi.TFlag);
    public var align_ : stdgo.StdGoTypes.GoUInt8 = 0;
    public var fieldAlign_ : stdgo.StdGoTypes.GoUInt8 = 0;
    public var kind_ : stdgo.StdGoTypes.GoUInt8 = 0;
    /**
        // function for comparing objects of this type
        // (ptr to object A, ptr to object B) -> ==?
    **/
    public var equal : (stdgo.unsafe.Unsafe.UnsafePointer, stdgo.unsafe.Unsafe.UnsafePointer) -> Bool = null;
    /**
        // GCData stores the GC type data for the garbage collector.
        // If the KindGCProg bit is set in kind, GCData is a GC program.
        // Otherwise it is a ptrmask bitmap. See mbitmap.go for details.
    **/
    public var gcdata : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>);
    public var str : stdgo.internal.abi.Abi.NameOff = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.internal.abi.Abi.NameOff);
    public var ptrToThis : stdgo.internal.abi.Abi.TypeOff = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.internal.abi.Abi.TypeOff);
    public function new(?size_:stdgo.StdGoTypes.GoUIntptr, ?ptrBytes:stdgo.StdGoTypes.GoUIntptr, ?hash:stdgo.StdGoTypes.GoUInt32, ?tflag:stdgo.internal.abi.Abi.TFlag, ?align_:stdgo.StdGoTypes.GoUInt8, ?fieldAlign_:stdgo.StdGoTypes.GoUInt8, ?kind_:stdgo.StdGoTypes.GoUInt8, ?equal:(stdgo.unsafe.Unsafe.UnsafePointer, stdgo.unsafe.Unsafe.UnsafePointer) -> Bool, ?gcdata:stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>, ?str:stdgo.internal.abi.Abi.NameOff, ?ptrToThis:stdgo.internal.abi.Abi.TypeOff) {
        if (size_ != null) this.size_ = size_;
        if (ptrBytes != null) this.ptrBytes = ptrBytes;
        if (hash != null) this.hash = hash;
        if (tflag != null) this.tflag = tflag;
        if (align_ != null) this.align_ = align_;
        if (fieldAlign_ != null) this.fieldAlign_ = fieldAlign_;
        if (kind_ != null) this.kind_ = kind_;
        if (equal != null) this.equal = equal;
        if (gcdata != null) this.gcdata = gcdata;
        if (str != null) this.str = str;
        if (ptrToThis != null) this.ptrToThis = ptrToThis;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Type(
size_,
ptrBytes,
hash,
tflag,
align_,
fieldAlign_,
kind_,
equal,
gcdata,
str,
ptrToThis);
    }
}
/**
    // Method on non-interface type
    
    
**/
@:structInit class Method {
    public var name : stdgo.internal.abi.Abi.NameOff = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.internal.abi.Abi.NameOff);
    public var mtyp : stdgo.internal.abi.Abi.TypeOff = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.internal.abi.Abi.TypeOff);
    public var ifn : stdgo.internal.abi.Abi.TextOff = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.internal.abi.Abi.TextOff);
    public var tfn : stdgo.internal.abi.Abi.TextOff = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.internal.abi.Abi.TextOff);
    public function new(?name:stdgo.internal.abi.Abi.NameOff, ?mtyp:stdgo.internal.abi.Abi.TypeOff, ?ifn:stdgo.internal.abi.Abi.TextOff, ?tfn:stdgo.internal.abi.Abi.TextOff) {
        if (name != null) this.name = name;
        if (mtyp != null) this.mtyp = mtyp;
        if (ifn != null) this.ifn = ifn;
        if (tfn != null) this.tfn = tfn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Method(name, mtyp, ifn, tfn);
    }
}
/**
    // UncommonType is present only for defined types or types with methods
    // (if T is a defined type, the uncommonTypes for T and *T have methods).
    // Using a pointer to this struct reduces the overall size required
    // to describe a non-defined type with no methods.
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.UncommonType_static_extension) class UncommonType {
    public var pkgPath : stdgo.internal.abi.Abi.NameOff = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.internal.abi.Abi.NameOff);
    public var mcount : stdgo.StdGoTypes.GoUInt16 = 0;
    public var xcount : stdgo.StdGoTypes.GoUInt16 = 0;
    public var moff : stdgo.StdGoTypes.GoUInt32 = 0;
    @:optional
    public var __1 : stdgo.StdGoTypes.GoUInt32 = 0;
    public function new(?pkgPath:stdgo.internal.abi.Abi.NameOff, ?mcount:stdgo.StdGoTypes.GoUInt16, ?xcount:stdgo.StdGoTypes.GoUInt16, ?moff:stdgo.StdGoTypes.GoUInt32, ?__1:stdgo.StdGoTypes.GoUInt32) {
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (mcount != null) this.mcount = mcount;
        if (xcount != null) this.xcount = xcount;
        if (moff != null) this.moff = moff;
        if (__1 != null) this.__1 = __1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UncommonType(pkgPath, mcount, xcount, moff, __1);
    }
}
/**
    // Imethod represents a method on an interface type
    
    
**/
@:structInit class Imethod {
    public var name : stdgo.internal.abi.Abi.NameOff = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.internal.abi.Abi.NameOff);
    public var typ : stdgo.internal.abi.Abi.TypeOff = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.internal.abi.Abi.TypeOff);
    public function new(?name:stdgo.internal.abi.Abi.NameOff, ?typ:stdgo.internal.abi.Abi.TypeOff) {
        if (name != null) this.name = name;
        if (typ != null) this.typ = typ;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Imethod(name, typ);
    }
}
/**
    // ArrayType represents a fixed array type.
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.ArrayType_static_extension) class ArrayType {
    @:embedded
    public var type : stdgo.internal.abi.Abi.Type = ({} : stdgo.internal.abi.Abi.Type);
    public var elem : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> = (null : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>);
    public var slice : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> = (null : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>);
    public var len : stdgo.StdGoTypes.GoUIntptr = 0;
    public function new(?type:stdgo.internal.abi.Abi.Type, ?elem:stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>, ?slice:stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>, ?len:stdgo.StdGoTypes.GoUIntptr) {
        if (type != null) this.type = type;
        if (elem != null) this.elem = elem;
        if (slice != null) this.slice = slice;
        if (len != null) this.len = len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new ArrayType(type, elem, slice, len);
    }
}
/**
    // ChanType represents a channel type
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.ChanType_static_extension) class ChanType {
    @:embedded
    public var type : stdgo.internal.abi.Abi.Type = ({} : stdgo.internal.abi.Abi.Type);
    public var elem : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> = (null : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>);
    public var dir : stdgo.internal.abi.Abi.ChanDir = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.internal.abi.Abi.ChanDir);
    public function new(?type:stdgo.internal.abi.Abi.Type, ?elem:stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>, ?dir:stdgo.internal.abi.Abi.ChanDir) {
        if (type != null) this.type = type;
        if (elem != null) this.elem = elem;
        if (dir != null) this.dir = dir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new ChanType(type, elem, dir);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.internal.abi.Abi.T_structTypeUncommon_static_extension) class T_structTypeUncommon {
    @:embedded
    public var structType : stdgo.internal.abi.Abi.StructType = ({} : stdgo.internal.abi.Abi.StructType);
    public var _u : stdgo.internal.abi.Abi.UncommonType = ({} : stdgo.internal.abi.Abi.UncommonType);
    public function new(?structType:stdgo.internal.abi.Abi.StructType, ?_u:stdgo.internal.abi.Abi.UncommonType) {
        if (structType != null) this.structType = structType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return structType.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return structType.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return structType.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return structType.common();
    @:embedded
    public function elem():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return structType.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return structType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return structType.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return structType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return structType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return structType.hasName();
    @:embedded
    public function ifaceIndir():Bool return structType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return structType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return structType.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return structType.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return structType.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return structType.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return structType.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return structType.numMethod();
    @:embedded
    public function pointers():Bool return structType.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return structType.size();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return structType.uncommon();
    public function __copy__() {
        return new T_structTypeUncommon(structType, _u);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.InterfaceType_static_extension) class InterfaceType {
    @:embedded
    public var type : stdgo.internal.abi.Abi.Type = ({} : stdgo.internal.abi.Abi.Type);
    public var pkgPath : stdgo.internal.abi.Abi.Name = ({} : stdgo.internal.abi.Abi.Name);
    public var methods : stdgo.Slice<stdgo.internal.abi.Abi.Imethod> = (null : stdgo.Slice<stdgo.internal.abi.Abi.Imethod>);
    public function new(?type:stdgo.internal.abi.Abi.Type, ?pkgPath:stdgo.internal.abi.Abi.Name, ?methods:stdgo.Slice<stdgo.internal.abi.Abi.Imethod>) {
        if (type != null) this.type = type;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (methods != null) this.methods = methods;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.common();
    @:embedded
    public function elem():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new InterfaceType(type, pkgPath, methods);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.MapType_static_extension) class MapType {
    @:embedded
    public var type : stdgo.internal.abi.Abi.Type = ({} : stdgo.internal.abi.Abi.Type);
    public var key : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> = (null : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>);
    public var elem : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> = (null : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>);
    public var bucket : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> = (null : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>);
    /**
        // function for hashing keys (ptr to key, seed) -> hash
    **/
    public var hasher : (stdgo.unsafe.Unsafe.UnsafePointer, stdgo.StdGoTypes.GoUIntptr) -> stdgo.StdGoTypes.GoUIntptr = null;
    public var keySize : stdgo.StdGoTypes.GoUInt8 = 0;
    public var valueSize : stdgo.StdGoTypes.GoUInt8 = 0;
    public var bucketSize : stdgo.StdGoTypes.GoUInt16 = 0;
    public var flags : stdgo.StdGoTypes.GoUInt32 = 0;
    public function new(?type:stdgo.internal.abi.Abi.Type, ?key:stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>, ?elem:stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>, ?bucket:stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>, ?hasher:(stdgo.unsafe.Unsafe.UnsafePointer, stdgo.StdGoTypes.GoUIntptr) -> stdgo.StdGoTypes.GoUIntptr, ?keySize:stdgo.StdGoTypes.GoUInt8, ?valueSize:stdgo.StdGoTypes.GoUInt8, ?bucketSize:stdgo.StdGoTypes.GoUInt16, ?flags:stdgo.StdGoTypes.GoUInt32) {
        if (type != null) this.type = type;
        if (key != null) this.key = key;
        if (elem != null) this.elem = elem;
        if (bucket != null) this.bucket = bucket;
        if (hasher != null) this.hasher = hasher;
        if (keySize != null) this.keySize = keySize;
        if (valueSize != null) this.valueSize = valueSize;
        if (bucketSize != null) this.bucketSize = bucketSize;
        if (flags != null) this.flags = flags;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new MapType(type, key, elem, bucket, hasher, keySize, valueSize, bucketSize, flags);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.SliceType_static_extension) class SliceType {
    @:embedded
    public var type : stdgo.internal.abi.Abi.Type = ({} : stdgo.internal.abi.Abi.Type);
    public var elem : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> = (null : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>);
    public function new(?type:stdgo.internal.abi.Abi.Type, ?elem:stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>) {
        if (type != null) this.type = type;
        if (elem != null) this.elem = elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new SliceType(type, elem);
    }
}
/**
    // funcType represents a function type.
    //
    // A *Type for each in and out parameter is stored in an array that
    // directly follows the funcType (and possibly its uncommonType). So
    // a function type with one method, one input, and one output is:
    //
    //	struct {
    //		funcType
    //		uncommonType
    //		[2]*rtype    // [0] is in, [1] is out
    //	}
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.FuncType_static_extension) class FuncType {
    @:embedded
    public var type : stdgo.internal.abi.Abi.Type = ({} : stdgo.internal.abi.Abi.Type);
    public var inCount : stdgo.StdGoTypes.GoUInt16 = 0;
    public var outCount : stdgo.StdGoTypes.GoUInt16 = 0;
    public function new(?type:stdgo.internal.abi.Abi.Type, ?inCount:stdgo.StdGoTypes.GoUInt16, ?outCount:stdgo.StdGoTypes.GoUInt16) {
        if (type != null) this.type = type;
        if (inCount != null) this.inCount = inCount;
        if (outCount != null) this.outCount = outCount;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.common();
    @:embedded
    public function elem():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new FuncType(type, inCount, outCount);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.PtrType_static_extension) class PtrType {
    @:embedded
    public var type : stdgo.internal.abi.Abi.Type = ({} : stdgo.internal.abi.Abi.Type);
    public var elem : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> = (null : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>);
    public function new(?type:stdgo.internal.abi.Abi.Type, ?elem:stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>) {
        if (type != null) this.type = type;
        if (elem != null) this.elem = elem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new PtrType(type, elem);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.StructField_static_extension) class StructField {
    public var name : stdgo.internal.abi.Abi.Name = ({} : stdgo.internal.abi.Abi.Name);
    public var typ : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> = (null : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>);
    public var offset : stdgo.StdGoTypes.GoUIntptr = 0;
    public function new(?name:stdgo.internal.abi.Abi.Name, ?typ:stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>, ?offset:stdgo.StdGoTypes.GoUIntptr) {
        if (name != null) this.name = name;
        if (typ != null) this.typ = typ;
        if (offset != null) this.offset = offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StructField(name, typ, offset);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.StructType_static_extension) class StructType {
    @:embedded
    public var type : stdgo.internal.abi.Abi.Type = ({} : stdgo.internal.abi.Abi.Type);
    public var pkgPath : stdgo.internal.abi.Abi.Name = ({} : stdgo.internal.abi.Abi.Name);
    public var fields : stdgo.Slice<stdgo.internal.abi.Abi.StructField> = (null : stdgo.Slice<stdgo.internal.abi.Abi.StructField>);
    public function new(?type:stdgo.internal.abi.Abi.Type, ?pkgPath:stdgo.internal.abi.Abi.Name, ?fields:stdgo.Slice<stdgo.internal.abi.Abi.StructField>) {
        if (type != null) this.type = type;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (fields != null) this.fields = fields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.common();
    @:embedded
    public function elem():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new StructType(type, pkgPath, fields);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.internal.abi.Abi.Name_static_extension) class Name {
    public var bytes : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>);
    public function new(?bytes:stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>) {
        if (bytes != null) this.bytes = bytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Name(bytes);
    }
}
/**
    // IntArgRegBitmap is a bitmap large enough to hold one bit per
    // integer argument/return register.
**/
@:named @:using(stdgo.internal.abi.Abi.IntArgRegBitmap_static_extension) typedef IntArgRegBitmap = stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>;
/**
    // A FuncFlag records bits about a function, passed to the runtime.
**/
@:named typedef FuncFlag = stdgo.StdGoTypes.GoUInt8;
/**
    // A FuncID identifies particular functions that need to be treated
    // specially by the runtime.
    // Note that in some situations involving plugins, there may be multiple
    // copies of a particular special runtime function.
**/
@:named typedef FuncID = stdgo.StdGoTypes.GoUInt8;
/**
    // A Kind represents the specific kind of type that a Type represents.
    // The zero Kind is not a valid kind.
**/
@:named @:using(stdgo.internal.abi.Abi.Kind_static_extension) typedef Kind = stdgo.StdGoTypes.GoUInt;
/**
    // TFlag is used by a Type to signal what extra type information is
    // available in the memory directly following the Type value.
**/
@:named typedef TFlag = stdgo.StdGoTypes.GoUInt8;
/**
    // NameOff is the offset to a name from moduledata.types.  See resolveNameOff in runtime.
**/
@:named typedef NameOff = stdgo.StdGoTypes.GoInt32;
/**
    // TypeOff is the offset to a type from moduledata.types.  See resolveTypeOff in runtime.
**/
@:named typedef TypeOff = stdgo.StdGoTypes.GoInt32;
/**
    // TextOff is an offset from the top of a text section.  See (rtype).textOff in runtime.
**/
@:named typedef TextOff = stdgo.StdGoTypes.GoInt32;
@:named typedef ChanDir = stdgo.StdGoTypes.GoInt;
/**
    // CommonSize returns sizeof(Type) for a compilation target with a given ptrSize
**/
function commonSize(_ptrSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        return (((4 : stdgo.StdGoTypes.GoInt) * _ptrSize) + (8 : stdgo.StdGoTypes.GoInt)) + (8 : stdgo.StdGoTypes.GoInt);
    }
/**
    // StructFieldSize returns sizeof(StructField) for a compilation target with a given ptrSize
**/
function structFieldSize(_ptrSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        return (3 : stdgo.StdGoTypes.GoInt) * _ptrSize;
    }
/**
    // UncommonSize returns sizeof(UncommonType).  This currently does not depend on ptrSize.
    // This exported function is in an internal package, so it may change to depend on ptrSize in the future.
**/
function uncommonSize():stdgo.StdGoTypes.GoUInt64 {
        return (16i64 : stdgo.StdGoTypes.GoUInt64);
    }
/**
    // IMethodSize returns sizeof(IMethod) for a compilation target with a given ptrSize
**/
function imethodSize(_ptrSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        return (8 : stdgo.StdGoTypes.GoInt);
    }
/**
    // KindOff returns the offset of Type.Kind_ for a compilation target with a given ptrSize
**/
function kindOff(_ptrSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        return ((2 : stdgo.StdGoTypes.GoInt) * _ptrSize) + (7 : stdgo.StdGoTypes.GoInt);
    }
/**
    // SizeOff returns the offset of Type.Size_ for a compilation target with a given ptrSize
**/
function sizeOff(_ptrSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        return (0 : stdgo.StdGoTypes.GoInt);
    }
/**
    // PtrBytes returns the offset of Type.PtrBytes for a compilation target with a given ptrSize
**/
function ptrBytesOff(_ptrSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        return _ptrSize;
    }
/**
    // TFlagOff returns the offset of Type.TFlag for a compilation target with a given ptrSize
**/
function tflagOff(_ptrSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        return ((2 : stdgo.StdGoTypes.GoInt) * _ptrSize) + (4 : stdgo.StdGoTypes.GoInt);
    }
/**
    // NewOffset returns a new Offset with offset 0 and alignment 1.
**/
function newOffset(_ptrSize:stdgo.StdGoTypes.GoUInt8, _twoWordAlignSlices:Bool):Offset {
        if (_twoWordAlignSlices) {
            return ({ _off : (0i64 : stdgo.StdGoTypes.GoUInt64), _align : (1 : stdgo.StdGoTypes.GoUInt8), _ptrSize : _ptrSize, _sliceAlign : (2 : stdgo.StdGoTypes.GoUInt8) * _ptrSize } : stdgo.internal.abi.Abi.Offset);
        };
        return ({ _off : (0i64 : stdgo.StdGoTypes.GoUInt64), _align : (1 : stdgo.StdGoTypes.GoUInt8), _ptrSize : _ptrSize, _sliceAlign : _ptrSize } : stdgo.internal.abi.Abi.Offset);
    }
function _assertIsAPowerOfTwo(_x:stdgo.StdGoTypes.GoUInt8):Void {
        if (_x == ((0 : stdgo.StdGoTypes.GoUInt8))) {
            throw stdgo.Go.toInterface(("Zero is not a power of two" : stdgo.GoString));
        };
        if (_x & -_x == (_x)) {
            return;
        };
        throw stdgo.Go.toInterface(("Not a power of two" : stdgo.GoString));
    }
/**
    // InitializedOffset returns a new Offset with specified offset, alignment, pointer size, and slice alignment.
**/
function initializedOffset(_off:stdgo.StdGoTypes.GoInt, _align:stdgo.StdGoTypes.GoUInt8, _ptrSize:stdgo.StdGoTypes.GoUInt8, _twoWordAlignSlices:Bool):Offset {
        _assertIsAPowerOfTwo(_align);
        var _o0:stdgo.internal.abi.Abi.Offset = newOffset(_ptrSize, _twoWordAlignSlices)?.__copy__();
        _o0._off = (_off : stdgo.StdGoTypes.GoUInt64);
        _o0._align = _align;
        return _o0?.__copy__();
    }
/**
    // CommonOffset returns the Offset to the data after the common portion of type data structures.
**/
function commonOffset(_ptrSize:stdgo.StdGoTypes.GoInt, _twoWordAlignSlices:Bool):Offset {
        return initializedOffset(commonSize(_ptrSize), (_ptrSize : stdgo.StdGoTypes.GoUInt8), (_ptrSize : stdgo.StdGoTypes.GoUInt8), _twoWordAlignSlices)?.__copy__();
    }
/**
    // FuncPCABI0 returns the entry PC of the function f, which must be a
    // direct reference of a function defined as ABI0. Otherwise it is a
    // compile-time error.
    //
    // Implemented as a compile intrinsic.
**/
function funcPCABI0(_f:stdgo.StdGoTypes.AnyInterface):stdgo.StdGoTypes.GoUIntptr {
        trace("funclit");
        throw "not implemented: funcPCABI0";
    }
/**
    // FuncPCABIInternal returns the entry PC of the function f. If f is a
    // direct reference of a function, it must be defined as ABIInternal.
    // Otherwise it is a compile-time error. If f is not a direct reference
    // of a defined function, it assumes that f is a func value. Otherwise
    // the behavior is undefined.
    //
    // Implemented as a compile intrinsic.
**/
function funcPCABIInternal(_f:stdgo.StdGoTypes.AnyInterface):stdgo.StdGoTypes.GoUIntptr {
        trace("funclit");
        throw "not implemented: funcPCABIInternal";
    }
/**
    // addChecked returns p+x.
    //
    // The whySafe string is ignored, so that the function still inlines
    // as efficiently as p+x, but all call sites should use the string to
    // record why the addition is safe, which is to say why the addition
    // does not cause x to advance to the very end of p's allocation
    // and therefore point incorrectly at the next block in memory.
**/
function _addChecked(_p:stdgo.unsafe.Unsafe.UnsafePointer, _x:stdgo.StdGoTypes.GoUIntptr, _whySafe:stdgo.GoString):stdgo.unsafe.Unsafe.UnsafePointer {
        return (stdgo.Go.toInterface(((_p.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) + _x)) : stdgo.unsafe.Unsafe.UnsafePointer);
    }
/**
    // writeVarint writes n to buf in varint form. Returns the
    // number of bytes written. n must be nonnegative.
    // Writes at most 10 bytes.
**/
function _writeVarint(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(true, _i++, {
                var _b:stdgo.StdGoTypes.GoUInt8 = (_n & (127 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoByte);
                _n = _n >> ((7i64 : stdgo.StdGoTypes.GoUInt64));
                if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _buf[(_i : stdgo.StdGoTypes.GoInt)] = _b;
                    return _i + (1 : stdgo.StdGoTypes.GoInt);
                };
                _buf[(_i : stdgo.StdGoTypes.GoInt)] = _b | (128 : stdgo.StdGoTypes.GoUInt8);
            });
        };
    }
function newName(_n:stdgo.GoString, _tag:stdgo.GoString, _exported:Bool, _embedded:Bool):Name {
        if ((_n.length) >= (536870912 : stdgo.StdGoTypes.GoInt)) {
            throw stdgo.Go.toInterface(("abi.NewName: name too long: " : stdgo.GoString) + (_n.__slice__(0, (1024 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__() + ("..." : stdgo.GoString)?.__copy__());
        };
        if ((_tag.length) >= (536870912 : stdgo.StdGoTypes.GoInt)) {
            throw stdgo.Go.toInterface(("abi.NewName: tag too long: " : stdgo.GoString) + (_tag.__slice__(0, (1024 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__() + ("..." : stdgo.GoString)?.__copy__());
        };
        var _nameLen:stdgo.GoArray<stdgo.StdGoTypes.GoByte> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 10) (0 : stdgo.StdGoTypes.GoUInt8)]);
        var _tagLen:stdgo.GoArray<stdgo.StdGoTypes.GoByte> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 10) (0 : stdgo.StdGoTypes.GoUInt8)]);
        var _nameLenLen:stdgo.StdGoTypes.GoInt = _writeVarint((_nameLen.__slice__(0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_n.length));
        var _tagLenLen:stdgo.StdGoTypes.GoInt = _writeVarint((_tagLen.__slice__(0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_tag.length));
        var _bits:stdgo.StdGoTypes.GoByte = (0 : stdgo.StdGoTypes.GoUInt8);
        var _l:stdgo.StdGoTypes.GoInt = ((1 : stdgo.StdGoTypes.GoInt) + _nameLenLen) + (_n.length);
        if (_exported) {
            _bits = _bits | ((1 : stdgo.StdGoTypes.GoUInt8));
        };
        if ((_tag.length) > (0 : stdgo.StdGoTypes.GoInt)) {
            _l = _l + (_tagLenLen + _tag.length);
            _bits = _bits | ((2 : stdgo.StdGoTypes.GoUInt8));
        };
        if (_embedded) {
            _bits = _bits | ((8 : stdgo.StdGoTypes.GoUInt8));
        };
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_l : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        _b[(0 : stdgo.StdGoTypes.GoInt)] = _bits;
        stdgo.Go.copySlice((_b.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_nameLen.__slice__(0, _nameLenLen) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        stdgo.Go.copySlice((_b.__slice__((1 : stdgo.StdGoTypes.GoInt) + _nameLenLen) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _n);
        if ((_tag.length) > (0 : stdgo.StdGoTypes.GoInt)) {
            var _tb = (_b.__slice__(((1 : stdgo.StdGoTypes.GoInt) + _nameLenLen) + (_n.length)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            stdgo.Go.copySlice(_tb, (_tagLen.__slice__(0, _tagLenLen) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
            stdgo.Go.copySlice((_tb.__slice__(_tagLenLen) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _tag);
        };
        return ({ bytes : stdgo.Go.pointer(_b[(0 : stdgo.StdGoTypes.GoInt)]) } : stdgo.internal.abi.Abi.Name);
    }
function _unsafeStringFor(_b:stdgo.Pointer<stdgo.StdGoTypes.GoByte>, _l:stdgo.StdGoTypes.GoInt):stdgo.GoString {
        return (stdgo.unsafe.Unsafe.string(_b, _l) : stdgo.GoString)?.__copy__();
    }
function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.StdGoTypes.GoByte>, _l:stdgo.StdGoTypes.GoInt):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        return stdgo.unsafe.Unsafe.slice(_b, _l);
    }
class RegArgs_asInterface {
    /**
        // IntRegArgAddr returns a pointer inside of r.Ints[reg] that is appropriately
        // offset for an argument of size argSize.
        //
        // argSize must be non-zero, fit in a register, and a power-of-two.
        //
        // This method is a helper for dealing with the endianness of different CPU
        // architectures, since sub-word-sized arguments in big endian architectures
        // need to be "aligned" to the upper edge of the register to be interpreted
        // by the CPU correctly.
    **/
    @:keep
    public dynamic function intRegArgAddr(_reg:stdgo.StdGoTypes.GoInt, _argSize:stdgo.StdGoTypes.GoUIntptr):stdgo.unsafe.Unsafe.UnsafePointer return __self__.value.intRegArgAddr(_reg, _argSize);
    @:keep
    public dynamic function dump():Void __self__.value.dump();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RegArgs>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.RegArgs_asInterface) class RegArgs_static_extension {
    /**
        // IntRegArgAddr returns a pointer inside of r.Ints[reg] that is appropriately
        // offset for an argument of size argSize.
        //
        // argSize must be non-zero, fit in a register, and a power-of-two.
        //
        // This method is a helper for dealing with the endianness of different CPU
        // architectures, since sub-word-sized arguments in big endian architectures
        // need to be "aligned" to the upper edge of the register to be interpreted
        // by the CPU correctly.
    **/
    @:keep
    static public function intRegArgAddr( _r:stdgo.StdGoTypes.Ref<RegArgs>, _reg:stdgo.StdGoTypes.GoInt, _argSize:stdgo.StdGoTypes.GoUIntptr):stdgo.unsafe.Unsafe.UnsafePointer {
        @:recv var _r:stdgo.StdGoTypes.Ref<RegArgs> = _r;
        if (((_argSize > (4 : stdgo.StdGoTypes.GoUIntptr)) || (_argSize == (0 : stdgo.StdGoTypes.GoUIntptr))) || ((_argSize & (_argSize - (1 : stdgo.StdGoTypes.GoUIntptr))) != (0 : stdgo.StdGoTypes.GoUIntptr))) {
            throw stdgo.Go.toInterface(("invalid argSize" : stdgo.GoString));
        };
        var _offset:stdgo.StdGoTypes.GoUIntptr = (0 : stdgo.StdGoTypes.GoUIntptr);
        if (false) {
            _offset = (4 : stdgo.StdGoTypes.GoUIntptr) - _argSize;
        };
        return (stdgo.Go.toInterface((((stdgo.Go.toInterface(stdgo.Go.pointer(_r.ints[(_reg : stdgo.StdGoTypes.GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) + _offset)) : stdgo.unsafe.Unsafe.UnsafePointer);
    }
    @:keep
    static public function dump( _r:stdgo.StdGoTypes.Ref<RegArgs>):Void {
        @:recv var _r:stdgo.StdGoTypes.Ref<RegArgs> = _r;
        trace(("Ints:" : stdgo.GoString));
        for (__0 => _x in _r.ints) {
            trace((" " : stdgo.GoString), _x);
        };
        trace("");
        trace(("Floats:" : stdgo.GoString));
        for (__1 => _x in _r.floats) {
            trace((" " : stdgo.GoString), _x);
        };
        trace("");
        trace(("Ptrs:" : stdgo.GoString));
        for (__2 => _x in _r.ptrs) {
            trace((" " : stdgo.GoString), _x);
        };
        trace("");
    }
}
class Offset_asInterface {
    @:keep
    public dynamic function plusUncommon():Offset return __self__.value.plusUncommon();
    /**
        // Offset returns the struct-aligned offset (size) of o.
        // This is at least as large as the current internal offset; it may be larger.
    **/
    @:keep
    public dynamic function offset():stdgo.StdGoTypes.GoUInt64 return __self__.value.offset();
    /**
        // Interface returns the offset obtained by appending an interface field to o.
    **/
    @:keep
    public dynamic function interface_():Offset return __self__.value.interface_();
    /**
        // String returns the offset obtained by appending a string field to o.
    **/
    @:keep
    public dynamic function string():Offset return __self__.value.string();
    /**
        // Slice returns the offset obtained by appending a slice field to o.
    **/
    @:keep
    public dynamic function slice():Offset return __self__.value.slice();
    /**
        // D64 returns the offset obtained by appending a pointer field to o.
    **/
    @:keep
    public dynamic function p():Offset return __self__.value.p();
    /**
        // D64 returns the offset obtained by appending a 64-bit field to o.
    **/
    @:keep
    public dynamic function d64():Offset return __self__.value.d64();
    /**
        // D32 returns the offset obtained by appending a 32-bit field to o.
    **/
    @:keep
    public dynamic function d32():Offset return __self__.value.d32();
    /**
        // D16 returns the offset obtained by appending a 16-bit field to o.
    **/
    @:keep
    public dynamic function d16():Offset return __self__.value.d16();
    /**
        // D8 returns the offset obtained by appending an 8-bit field to o.
    **/
    @:keep
    public dynamic function d8():Offset return __self__.value.d8();
    /**
        // plus returns the offset obtained by appending a power-of-2-sized-and-aligned object to o.
    **/
    @:keep
    public dynamic function _plus(_x:stdgo.StdGoTypes.GoUInt64):Offset return __self__.value._plus(_x);
    /**
        // Align returns the offset obtained by aligning offset to a multiple of a.
        // a must be a power of two.
    **/
    @:keep
    public dynamic function align(_a:stdgo.StdGoTypes.GoUInt8):Offset return __self__.value.align(_a);
    @:keep
    public dynamic function _align_(_a:stdgo.StdGoTypes.GoUInt8):Offset return __self__.value._align_(_a);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Offset>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.Offset_asInterface) class Offset_static_extension {
    @:keep
    static public function plusUncommon( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _o._off = _o._off + (uncommonSize());
        return _o?.__copy__();
    }
    /**
        // Offset returns the struct-aligned offset (size) of o.
        // This is at least as large as the current internal offset; it may be larger.
    **/
    @:keep
    static public function offset( _o:Offset):stdgo.StdGoTypes.GoUInt64 {
        @:recv var _o:Offset = _o?.__copy__();
        return _o.align(_o._align)._off;
    }
    /**
        // Interface returns the offset obtained by appending an interface field to o.
    **/
    @:keep
    static public function interface_( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _o = _o._align_(_o._sliceAlign)?.__copy__();
        _o._off = _o._off + ((2i64 : stdgo.StdGoTypes.GoUInt64) * (_o._ptrSize : stdgo.StdGoTypes.GoUInt64));
        return _o?.__copy__();
    }
    /**
        // String returns the offset obtained by appending a string field to o.
    **/
    @:keep
    static public function string( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _o = _o._align_(_o._sliceAlign)?.__copy__();
        _o._off = _o._off + ((2i64 : stdgo.StdGoTypes.GoUInt64) * (_o._ptrSize : stdgo.StdGoTypes.GoUInt64));
        return _o?.__copy__();
    }
    /**
        // Slice returns the offset obtained by appending a slice field to o.
    **/
    @:keep
    static public function slice( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _o = _o._align_(_o._sliceAlign)?.__copy__();
        _o._off = _o._off + ((3i64 : stdgo.StdGoTypes.GoUInt64) * (_o._ptrSize : stdgo.StdGoTypes.GoUInt64));
        return _o.align(_o._sliceAlign)?.__copy__();
    }
    /**
        // D64 returns the offset obtained by appending a pointer field to o.
    **/
    @:keep
    static public function p( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        if (_o._ptrSize == ((0 : stdgo.StdGoTypes.GoUInt8))) {
            throw stdgo.Go.toInterface(("This offset has no defined pointer size" : stdgo.GoString));
        };
        return _o._plus((_o._ptrSize : stdgo.StdGoTypes.GoUInt64))?.__copy__();
    }
    /**
        // D64 returns the offset obtained by appending a 64-bit field to o.
    **/
    @:keep
    static public function d64( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        return _o._plus((8i64 : stdgo.StdGoTypes.GoUInt64))?.__copy__();
    }
    /**
        // D32 returns the offset obtained by appending a 32-bit field to o.
    **/
    @:keep
    static public function d32( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        return _o._plus((4i64 : stdgo.StdGoTypes.GoUInt64))?.__copy__();
    }
    /**
        // D16 returns the offset obtained by appending a 16-bit field to o.
    **/
    @:keep
    static public function d16( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        return _o._plus((2i64 : stdgo.StdGoTypes.GoUInt64))?.__copy__();
    }
    /**
        // D8 returns the offset obtained by appending an 8-bit field to o.
    **/
    @:keep
    static public function d8( _o:Offset):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        return _o._plus((1i64 : stdgo.StdGoTypes.GoUInt64))?.__copy__();
    }
    /**
        // plus returns the offset obtained by appending a power-of-2-sized-and-aligned object to o.
    **/
    @:keep
    static public function _plus( _o:Offset, _x:stdgo.StdGoTypes.GoUInt64):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _o = _o._align_((_x : stdgo.StdGoTypes.GoUInt8))?.__copy__();
        _o._off = _o._off + (_x);
        return _o?.__copy__();
    }
    /**
        // Align returns the offset obtained by aligning offset to a multiple of a.
        // a must be a power of two.
    **/
    @:keep
    static public function align( _o:Offset, _a:stdgo.StdGoTypes.GoUInt8):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _assertIsAPowerOfTwo(_a);
        return _o._align_(_a)?.__copy__();
    }
    @:keep
    static public function _align_( _o:Offset, _a:stdgo.StdGoTypes.GoUInt8):Offset {
        @:recv var _o:Offset = _o?.__copy__();
        _o._off = ((_o._off + (_a : stdgo.StdGoTypes.GoUInt64)) - (1i64 : stdgo.StdGoTypes.GoUInt64)) & (-1 ^ ((_a : stdgo.StdGoTypes.GoUInt64) - (1i64 : stdgo.StdGoTypes.GoUInt64)));
        if (_o._align < _a) {
            _o._align = _a;
        };
        return _o?.__copy__();
    }
}
class Type_asInterface {
    @:keep
    public dynamic function key():stdgo.StdGoTypes.Ref<Type> return __self__.value.key();
    @:keep
    public dynamic function numMethod():stdgo.StdGoTypes.GoInt return __self__.value.numMethod();
    @:keep
    public dynamic function exportedMethods():stdgo.Slice<Method> return __self__.value.exportedMethods();
    @:keep
    public dynamic function fieldAlign():stdgo.StdGoTypes.GoInt return __self__.value.fieldAlign();
    /**
        // Align returns the alignment of data with type t.
    **/
    @:keep
    public dynamic function align():stdgo.StdGoTypes.GoInt return __self__.value.align();
    /**
        // Size returns the size of data with type t.
    **/
    @:keep
    public dynamic function size():stdgo.StdGoTypes.GoUIntptr return __self__.value.size();
    /**
        // InterfaceType returns t cast to a *InterfaceType, or nil if its tag does not match.
    **/
    @:keep
    public dynamic function interfaceType():stdgo.StdGoTypes.Ref<InterfaceType> return __self__.value.interfaceType();
    /**
        // FuncType returns t cast to a *FuncType, or nil if its tag does not match.
    **/
    @:keep
    public dynamic function funcType():stdgo.StdGoTypes.Ref<FuncType> return __self__.value.funcType();
    /**
        // ArrayType returns t cast to a *ArrayType, or nil if its tag does not match.
    **/
    @:keep
    public dynamic function arrayType():stdgo.StdGoTypes.Ref<ArrayType> return __self__.value.arrayType();
    /**
        // MapType returns t cast to a *MapType, or nil if its tag does not match.
    **/
    @:keep
    public dynamic function mapType():stdgo.StdGoTypes.Ref<MapType> return __self__.value.mapType();
    /**
        // StructType returns t cast to a *StructType, or nil if its tag does not match.
    **/
    @:keep
    public dynamic function structType():stdgo.StdGoTypes.Ref<StructType> return __self__.value.structType();
    /**
        // Elem returns the element type for t if t is an array, channel, map, pointer, or slice, otherwise nil.
    **/
    @:keep
    public dynamic function elem():stdgo.StdGoTypes.Ref<Type> return __self__.value.elem();
    /**
        // Uncommon returns a pointer to T's "uncommon" data if there is any, otherwise nil
    **/
    @:keep
    public dynamic function uncommon():stdgo.StdGoTypes.Ref<UncommonType> return __self__.value.uncommon();
    /**
        // ChanDir returns the direction of t if t is a channel type, otherwise InvalidDir (0).
    **/
    @:keep
    public dynamic function chanDir():ChanDir return __self__.value.chanDir();
    @:keep
    public dynamic function common():stdgo.StdGoTypes.Ref<Type> return __self__.value.common();
    /**
        // Len returns the length of t if t is an array type, otherwise 0
    **/
    @:keep
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:keep
    public dynamic function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value.gcSlice(_begin, _end);
    /**
        // isDirectIface reports whether t is stored directly in an interface value.
    **/
    @:keep
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    /**
        // IfaceIndir reports whether t is stored indirectly in an interface value.
    **/
    @:keep
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:keep
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:keep
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Type>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.Type_asInterface) class Type_static_extension {
    @:keep
    static public function key( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.Ref<Type> {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        if (_t.kind() == ((21u32 : stdgo.internal.abi.Abi.Kind))) {
            return ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.MapType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "key", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "bucket", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "hasher", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false }, { name : "keySize", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "valueSize", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "bucketSize", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "flags", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<MapType>).key;
        };
        return null;
    }
    @:keep
    static public function numMethod( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.GoInt {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        if (_t.kind() == ((20u32 : stdgo.internal.abi.Abi.Kind))) {
            var _tt = ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.InterfaceType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Name", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "methods", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Imethod", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "typ", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<InterfaceType>);
            return _tt.numMethod();
        };
        return (_t.exportedMethods().length);
    }
    @:keep
    static public function exportedMethods( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.Slice<Method> {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        var _ut = _t.uncommon();
        if (_ut == null || (_ut : Dynamic).__nil__) {
            return (null : stdgo.Slice<stdgo.internal.abi.Abi.Method>);
        };
        return _ut.exportedMethods();
    }
    @:keep
    static public function fieldAlign( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.GoInt {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        return (_t.fieldAlign_ : stdgo.StdGoTypes.GoInt);
    }
    /**
        // Align returns the alignment of data with type t.
    **/
    @:keep
    static public function align( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.GoInt {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        return (_t.align_ : stdgo.StdGoTypes.GoInt);
    }
    /**
        // Size returns the size of data with type t.
    **/
    @:keep
    static public function size( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.GoUIntptr {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        return _t.size_;
    }
    /**
        // InterfaceType returns t cast to a *InterfaceType, or nil if its tag does not match.
    **/
    @:keep
    static public function interfaceType( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.Ref<InterfaceType> {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        if (_t.kind() != ((20u32 : stdgo.internal.abi.Abi.Kind))) {
            return null;
        };
        return ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.InterfaceType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Name", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "methods", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Imethod", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "typ", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<InterfaceType>);
    }
    /**
        // FuncType returns t cast to a *FuncType, or nil if its tag does not match.
    **/
    @:keep
    static public function funcType( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.Ref<FuncType> {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        if (_t.kind() != ((19u32 : stdgo.internal.abi.Abi.Kind))) {
            return null;
        };
        return ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.FuncType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "inCount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "outCount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<FuncType>);
    }
    /**
        // ArrayType returns t cast to a *ArrayType, or nil if its tag does not match.
    **/
    @:keep
    static public function arrayType( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.Ref<ArrayType> {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        if (_t.kind() != ((17u32 : stdgo.internal.abi.Abi.Kind))) {
            return null;
        };
        return ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.ArrayType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "slice", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<ArrayType>);
    }
    /**
        // MapType returns t cast to a *MapType, or nil if its tag does not match.
    **/
    @:keep
    static public function mapType( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.Ref<MapType> {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        if (_t.kind() != ((21u32 : stdgo.internal.abi.Abi.Kind))) {
            return null;
        };
        return ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.MapType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "key", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "bucket", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "hasher", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false }, { name : "keySize", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "valueSize", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "bucketSize", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "flags", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<MapType>);
    }
    /**
        // StructType returns t cast to a *StructType, or nil if its tag does not match.
    **/
    @:keep
    static public function structType( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.Ref<StructType> {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        if (_t.kind() != ((25u32 : stdgo.internal.abi.Abi.Kind))) {
            return null;
        };
        return ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.StructType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Name", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "fields", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.StructField", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Name", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "typ", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "offset", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<StructType>);
    }
    /**
        // Elem returns the element type for t if t is an array, channel, map, pointer, or slice, otherwise nil.
    **/
    @:keep
    static public function elem( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.Ref<Type> {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        {
            final __value__ = _t.kind();
            if (__value__ == ((17u32 : stdgo.internal.abi.Abi.Kind))) {
                var _tt = ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.ArrayType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "slice", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<ArrayType>);
                return _tt.elem;
            } else if (__value__ == ((18u32 : stdgo.internal.abi.Abi.Kind))) {
                var _tt = ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.ChanType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "dir", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.ChanDir", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<ChanType>);
                return _tt.elem;
            } else if (__value__ == ((21u32 : stdgo.internal.abi.Abi.Kind))) {
                var _tt = ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.MapType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "key", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "bucket", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "hasher", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false }, { name : "keySize", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "valueSize", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "bucketSize", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "flags", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<MapType>);
                return _tt.elem;
            } else if (__value__ == ((22u32 : stdgo.internal.abi.Abi.Kind))) {
                var _tt = ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.PtrType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<PtrType>);
                return _tt.elem;
            } else if (__value__ == ((23u32 : stdgo.internal.abi.Abi.Kind))) {
                var _tt = ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.SliceType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<SliceType>);
                return _tt.elem;
            };
        };
        return null;
    }
    /**
        // Uncommon returns a pointer to T's "uncommon" data if there is any, otherwise nil
    **/
    @:keep
    static public function uncommon( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.Ref<UncommonType> {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        if (_t.tflag & (1 : stdgo.internal.abi.Abi.TFlag) == ((0 : stdgo.internal.abi.Abi.TFlag))) {
            return null;
        };
        {
            final __value__ = _t.kind();
            if (__value__ == ((25u32 : stdgo.internal.abi.Abi.Kind))) {
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.T_structTypeUncommon", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "structType", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.StructType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Name", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "fields", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.StructField", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Name", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "typ", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "offset", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.UncommonType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<T_structTypeUncommon>)._u) : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((22u32 : stdgo.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.T_uncommon_39___localname___u", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "ptrType", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.PtrType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.UncommonType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__12", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<T_uncommon_39___localname___u>)._u) : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((19u32 : stdgo.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.T_uncommon_40___localname___u", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "funcType", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.FuncType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "inCount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "outCount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.UncommonType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__22", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<T_uncommon_40___localname___u>)._u) : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((23u32 : stdgo.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.T_uncommon_41___localname___u", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "sliceType", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.SliceType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.UncommonType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__32", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<T_uncommon_41___localname___u>)._u) : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((17u32 : stdgo.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.T_uncommon_42___localname___u", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "arrayType", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.ArrayType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "slice", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.UncommonType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__42", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<T_uncommon_42___localname___u>)._u) : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((18u32 : stdgo.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.T_uncommon_43___localname___u", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "chanType", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.ChanType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "dir", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.ChanDir", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.UncommonType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__52", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<T_uncommon_43___localname___u>)._u) : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((21u32 : stdgo.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.T_uncommon_44___localname___u", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "mapType", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.MapType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "key", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "bucket", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "hasher", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false }, { name : "keySize", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "valueSize", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "bucketSize", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "flags", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.UncommonType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__62", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<T_uncommon_44___localname___u>)._u) : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType>);
            } else if (__value__ == ((20u32 : stdgo.internal.abi.Abi.Kind))) {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.T_uncommon_45___localname___u", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "interfaceType", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.InterfaceType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Name", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "bytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "methods", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Imethod", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "typ", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.UncommonType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__72", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<T_uncommon_45___localname___u>)._u) : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType>);
            } else {
                {};
                return (stdgo.Go.setRef(((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.T_uncommon_46___localname___u", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.UncommonType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__82", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<T_uncommon_46___localname___u>)._u) : stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType>);
            };
        };
    }
    /**
        // ChanDir returns the direction of t if t is a channel type, otherwise InvalidDir (0).
    **/
    @:keep
    static public function chanDir( _t:stdgo.StdGoTypes.Ref<Type>):ChanDir {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        if (_t.kind() == ((18u32 : stdgo.internal.abi.Abi.Kind))) {
            var _ch = ((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.ChanType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "dir", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.ChanDir", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<ChanType>);
            return _ch.dir;
        };
        return (0 : stdgo.internal.abi.Abi.ChanDir);
    }
    @:keep
    static public function common( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.Ref<Type> {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        return _t;
    }
    /**
        // Len returns the length of t if t is an array type, otherwise 0
    **/
    @:keep
    static public function len( _t:stdgo.StdGoTypes.Ref<Type>):stdgo.StdGoTypes.GoInt {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        if (_t.kind() == ((17u32 : stdgo.internal.abi.Abi.Kind))) {
            return (((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.ArrayType", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "type", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "elem", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "slice", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<ArrayType>).len : stdgo.StdGoTypes.GoInt);
        };
        return (0 : stdgo.StdGoTypes.GoInt);
    }
    @:keep
    static public function gcSlice( _t:stdgo.StdGoTypes.Ref<Type>, _begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        return (_unsafeSliceFor(_t.gcdata, (_end : stdgo.StdGoTypes.GoInt)).__slice__(_begin) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    }
    /**
        // isDirectIface reports whether t is stored directly in an interface value.
    **/
    @:keep
    static public function isDirectIface( _t:stdgo.StdGoTypes.Ref<Type>):Bool {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        return _t.kind_ & (32 : stdgo.StdGoTypes.GoUInt8) != ((0 : stdgo.StdGoTypes.GoUInt8));
    }
    /**
        // IfaceIndir reports whether t is stored indirectly in an interface value.
    **/
    @:keep
    static public function ifaceIndir( _t:stdgo.StdGoTypes.Ref<Type>):Bool {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        return _t.kind_ & (32 : stdgo.StdGoTypes.GoUInt8) == ((0 : stdgo.StdGoTypes.GoUInt8));
    }
    @:keep
    static public function pointers( _t:stdgo.StdGoTypes.Ref<Type>):Bool {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        return _t.ptrBytes != ((0 : stdgo.StdGoTypes.GoUIntptr));
    }
    @:keep
    static public function hasName( _t:stdgo.StdGoTypes.Ref<Type>):Bool {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        return _t.tflag & (4 : stdgo.internal.abi.Abi.TFlag) != ((0 : stdgo.internal.abi.Abi.TFlag));
    }
    @:keep
    static public function kind( _t:stdgo.StdGoTypes.Ref<Type>):Kind {
        @:recv var _t:stdgo.StdGoTypes.Ref<Type> = _t;
        return (_t.kind_ & (31 : stdgo.StdGoTypes.GoUInt8) : Kind);
    }
}
/**
    
    
    
**/
@:structInit class T_uncommon_39___localname___u {
    @:embedded
    public var ptrType : stdgo.internal.abi.Abi.PtrType = ({} : stdgo.internal.abi.Abi.PtrType);
    public var _u : stdgo.internal.abi.Abi.UncommonType = ({} : stdgo.internal.abi.Abi.UncommonType);
    public function new(?ptrType:stdgo.internal.abi.Abi.PtrType, ?_u:stdgo.internal.abi.Abi.UncommonType) {
        if (ptrType != null) this.ptrType = ptrType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return ptrType.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return ptrType.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return ptrType.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return ptrType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return ptrType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return ptrType.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return ptrType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return ptrType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return ptrType.hasName();
    @:embedded
    public function ifaceIndir():Bool return ptrType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return ptrType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return ptrType.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return ptrType.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return ptrType.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return ptrType.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return ptrType.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return ptrType.numMethod();
    @:embedded
    public function pointers():Bool return ptrType.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return ptrType.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return ptrType.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return ptrType.uncommon();
    public function __copy__() {
        return new T_uncommon_39___localname___u(ptrType, _u);
    }
}
/**
    
    
    
**/
@:structInit class T_uncommon_40___localname___u {
    @:embedded
    public var funcType : stdgo.internal.abi.Abi.FuncType = ({} : stdgo.internal.abi.Abi.FuncType);
    public var _u : stdgo.internal.abi.Abi.UncommonType = ({} : stdgo.internal.abi.Abi.UncommonType);
    public function new(?funcType:stdgo.internal.abi.Abi.FuncType, ?_u:stdgo.internal.abi.Abi.UncommonType) {
        if (funcType != null) this.funcType = funcType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return funcType.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return funcType.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return funcType.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return funcType.common();
    @:embedded
    public function elem():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return funcType.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return funcType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return funcType.fieldAlign();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return funcType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return funcType.hasName();
    @:embedded
    public function ifaceIndir():Bool return funcType.ifaceIndir();
    @:embedded
    public function in_(_i:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return funcType.in_(_i);
    @:embedded
    public function inSlice():stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>> return funcType.inSlice();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return funcType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return funcType.isDirectIface();
    @:embedded
    public function isVariadic():Bool return funcType.isVariadic();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return funcType.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return funcType.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return funcType.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return funcType.mapType();
    @:embedded
    public function numIn():stdgo.StdGoTypes.GoInt return funcType.numIn();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return funcType.numMethod();
    @:embedded
    public function numOut():stdgo.StdGoTypes.GoInt return funcType.numOut();
    @:embedded
    public function out(_i:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return funcType.out(_i);
    @:embedded
    public function outSlice():stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>> return funcType.outSlice();
    @:embedded
    public function pointers():Bool return funcType.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return funcType.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return funcType.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return funcType.uncommon();
    public function __copy__() {
        return new T_uncommon_40___localname___u(funcType, _u);
    }
}
/**
    
    
    
**/
@:structInit class T_uncommon_41___localname___u {
    @:embedded
    public var sliceType : stdgo.internal.abi.Abi.SliceType = ({} : stdgo.internal.abi.Abi.SliceType);
    public var _u : stdgo.internal.abi.Abi.UncommonType = ({} : stdgo.internal.abi.Abi.UncommonType);
    public function new(?sliceType:stdgo.internal.abi.Abi.SliceType, ?_u:stdgo.internal.abi.Abi.UncommonType) {
        if (sliceType != null) this.sliceType = sliceType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return sliceType.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return sliceType.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return sliceType.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return sliceType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return sliceType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return sliceType.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return sliceType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return sliceType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return sliceType.hasName();
    @:embedded
    public function ifaceIndir():Bool return sliceType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return sliceType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return sliceType.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return sliceType.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return sliceType.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return sliceType.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return sliceType.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return sliceType.numMethod();
    @:embedded
    public function pointers():Bool return sliceType.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return sliceType.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return sliceType.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return sliceType.uncommon();
    public function __copy__() {
        return new T_uncommon_41___localname___u(sliceType, _u);
    }
}
/**
    
    
    
**/
@:structInit class T_uncommon_42___localname___u {
    @:embedded
    public var arrayType : stdgo.internal.abi.Abi.ArrayType = ({} : stdgo.internal.abi.Abi.ArrayType);
    public var _u : stdgo.internal.abi.Abi.UncommonType = ({} : stdgo.internal.abi.Abi.UncommonType);
    public function new(?arrayType:stdgo.internal.abi.Abi.ArrayType, ?_u:stdgo.internal.abi.Abi.UncommonType) {
        if (arrayType != null) this.arrayType = arrayType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return arrayType.align();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return arrayType.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return arrayType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return arrayType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return arrayType.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return arrayType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return arrayType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return arrayType.hasName();
    @:embedded
    public function ifaceIndir():Bool return arrayType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return arrayType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return arrayType.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return arrayType.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return arrayType.kind();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return arrayType.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return arrayType.numMethod();
    @:embedded
    public function pointers():Bool return arrayType.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return arrayType.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return arrayType.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return arrayType.uncommon();
    public function __copy__() {
        return new T_uncommon_42___localname___u(arrayType, _u);
    }
}
/**
    
    
    
**/
@:structInit class T_uncommon_43___localname___u {
    @:embedded
    public var chanType : stdgo.internal.abi.Abi.ChanType = ({} : stdgo.internal.abi.Abi.ChanType);
    public var _u : stdgo.internal.abi.Abi.UncommonType = ({} : stdgo.internal.abi.Abi.UncommonType);
    public function new(?chanType:stdgo.internal.abi.Abi.ChanType, ?_u:stdgo.internal.abi.Abi.UncommonType) {
        if (chanType != null) this.chanType = chanType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return chanType.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return chanType.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return chanType.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return chanType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return chanType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return chanType.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return chanType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return chanType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return chanType.hasName();
    @:embedded
    public function ifaceIndir():Bool return chanType.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return chanType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return chanType.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return chanType.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return chanType.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return chanType.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return chanType.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return chanType.numMethod();
    @:embedded
    public function pointers():Bool return chanType.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return chanType.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return chanType.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return chanType.uncommon();
    public function __copy__() {
        return new T_uncommon_43___localname___u(chanType, _u);
    }
}
/**
    
    
    
**/
@:structInit class T_uncommon_44___localname___u {
    @:embedded
    public var mapType : stdgo.internal.abi.Abi.MapType = ({} : stdgo.internal.abi.Abi.MapType);
    public var _u : stdgo.internal.abi.Abi.UncommonType = ({} : stdgo.internal.abi.Abi.UncommonType);
    public function new(?mapType:stdgo.internal.abi.Abi.MapType, ?_u:stdgo.internal.abi.Abi.UncommonType) {
        if (mapType != null) this.mapType = mapType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return mapType.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return mapType.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return mapType.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return mapType.common();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return mapType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return mapType.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return mapType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return mapType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return mapType.hasName();
    @:embedded
    public function hashMightPanic():Bool return mapType.hashMightPanic();
    @:embedded
    public function ifaceIndir():Bool return mapType.ifaceIndir();
    @:embedded
    public function indirectElem():Bool return mapType.indirectElem();
    @:embedded
    public function indirectKey():Bool return mapType.indirectKey();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return mapType.interfaceType();
    @:embedded
    public function isDirectIface():Bool return mapType.isDirectIface();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return mapType.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return mapType.len();
    @:embedded
    public function needKeyUpdate():Bool return mapType.needKeyUpdate();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return mapType.numMethod();
    @:embedded
    public function pointers():Bool return mapType.pointers();
    @:embedded
    public function reflexiveKey():Bool return mapType.reflexiveKey();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return mapType.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return mapType.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return mapType.uncommon();
    public function __copy__() {
        return new T_uncommon_44___localname___u(mapType, _u);
    }
}
/**
    
    
    
**/
@:structInit class T_uncommon_45___localname___u {
    @:embedded
    public var interfaceType : stdgo.internal.abi.Abi.InterfaceType = ({} : stdgo.internal.abi.Abi.InterfaceType);
    public var _u : stdgo.internal.abi.Abi.UncommonType = ({} : stdgo.internal.abi.Abi.UncommonType);
    public function new(?interfaceType:stdgo.internal.abi.Abi.InterfaceType, ?_u:stdgo.internal.abi.Abi.UncommonType) {
        if (interfaceType != null) this.interfaceType = interfaceType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return interfaceType.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return interfaceType.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return interfaceType.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return interfaceType.common();
    @:embedded
    public function elem():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return interfaceType.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return interfaceType.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return interfaceType.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return interfaceType.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return interfaceType.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return interfaceType.hasName();
    @:embedded
    public function ifaceIndir():Bool return interfaceType.ifaceIndir();
    @:embedded
    public function isDirectIface():Bool return interfaceType.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return interfaceType.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return interfaceType.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return interfaceType.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return interfaceType.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return interfaceType.numMethod();
    @:embedded
    public function pointers():Bool return interfaceType.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return interfaceType.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return interfaceType.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return interfaceType.uncommon();
    public function __copy__() {
        return new T_uncommon_45___localname___u(interfaceType, _u);
    }
}
/**
    
    
    
**/
@:structInit class T_uncommon_46___localname___u {
    @:embedded
    public var type : stdgo.internal.abi.Abi.Type = ({} : stdgo.internal.abi.Abi.Type);
    public var _u : stdgo.internal.abi.Abi.UncommonType = ({} : stdgo.internal.abi.Abi.UncommonType);
    public function new(?type:stdgo.internal.abi.Abi.Type, ?_u:stdgo.internal.abi.Abi.UncommonType) {
        if (type != null) this.type = type;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function align():stdgo.StdGoTypes.GoInt return type.align();
    @:embedded
    public function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return type.arrayType();
    @:embedded
    public function chanDir():stdgo.internal.abi.Abi.ChanDir return type.chanDir();
    @:embedded
    public function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.common();
    @:embedded
    public function elem():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.elem();
    @:embedded
    public function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return type.exportedMethods();
    @:embedded
    public function fieldAlign():stdgo.StdGoTypes.GoInt return type.fieldAlign();
    @:embedded
    public function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return type.funcType();
    @:embedded
    public function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return type.gcSlice(_begin, _end);
    @:embedded
    public function hasName():Bool return type.hasName();
    @:embedded
    public function ifaceIndir():Bool return type.ifaceIndir();
    @:embedded
    public function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return type.interfaceType();
    @:embedded
    public function isDirectIface():Bool return type.isDirectIface();
    @:embedded
    public function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return type.key();
    @:embedded
    public function kind():stdgo.internal.abi.Abi.Kind return type.kind();
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return type.len();
    @:embedded
    public function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return type.mapType();
    @:embedded
    public function numMethod():stdgo.StdGoTypes.GoInt return type.numMethod();
    @:embedded
    public function pointers():Bool return type.pointers();
    @:embedded
    public function size():stdgo.StdGoTypes.GoUIntptr return type.size();
    @:embedded
    public function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return type.structType();
    @:embedded
    public function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return type.uncommon();
    public function __copy__() {
        return new T_uncommon_46___localname___u(type, _u);
    }
}
class UncommonType_asInterface {
    @:keep
    public dynamic function exportedMethods():stdgo.Slice<Method> return __self__.value.exportedMethods();
    @:keep
    public dynamic function methods():stdgo.Slice<Method> return __self__.value.methods();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<UncommonType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.UncommonType_asInterface) class UncommonType_static_extension {
    @:keep
    static public function exportedMethods( _t:stdgo.StdGoTypes.Ref<UncommonType>):stdgo.Slice<Method> {
        @:recv var _t:stdgo.StdGoTypes.Ref<UncommonType> = _t;
        if (_t.xcount == ((0 : stdgo.StdGoTypes.GoUInt16))) {
            return (null : stdgo.Slice<stdgo.internal.abi.Abi.Method>);
        };
        return ((_addChecked((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer), (_t.moff : stdgo.StdGoTypes.GoUIntptr), ("t.xcount > 0" : stdgo.GoString)).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Method", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mtyp", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "ifn", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TextOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "tfn", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TextOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, 65536) })) : stdgo.StdGoTypes.Ref<stdgo.GoArray<Method>>).__slice__(0, _t.xcount, _t.xcount) : stdgo.Slice<stdgo.internal.abi.Abi.Method>);
    }
    @:keep
    static public function methods( _t:stdgo.StdGoTypes.Ref<UncommonType>):stdgo.Slice<Method> {
        @:recv var _t:stdgo.StdGoTypes.Ref<UncommonType> = _t;
        if (_t.mcount == ((0 : stdgo.StdGoTypes.GoUInt16))) {
            return (null : stdgo.Slice<stdgo.internal.abi.Abi.Method>);
        };
        return ((_addChecked((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer), (_t.moff : stdgo.StdGoTypes.GoUIntptr), ("t.mcount > 0" : stdgo.GoString)).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Method", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mtyp", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "ifn", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TextOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "tfn", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TextOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, 65536) })) : stdgo.StdGoTypes.Ref<stdgo.GoArray<Method>>).__slice__(0, _t.mcount, _t.mcount) : stdgo.Slice<stdgo.internal.abi.Abi.Method>);
    }
}
class ArrayType_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.StdGoTypes.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.StdGoTypes.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function kind():stdgo.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.StdGoTypes.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.StdGoTypes.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ArrayType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.ArrayType_asInterface) class ArrayType_static_extension {
    @:embedded
    public static function uncommon( __self__:ArrayType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:ArrayType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:ArrayType):stdgo.StdGoTypes.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:ArrayType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:ArrayType):stdgo.StdGoTypes.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:ArrayType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function kind( __self__:ArrayType):stdgo.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:ArrayType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:ArrayType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:ArrayType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:ArrayType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:ArrayType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:ArrayType, _begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:ArrayType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:ArrayType):stdgo.StdGoTypes.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:ArrayType):stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function common( __self__:ArrayType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.common();
    @:embedded
    public static function chanDir( __self__:ArrayType):stdgo.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:ArrayType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:ArrayType):stdgo.StdGoTypes.GoInt return __self__.align();
}
class ChanType_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.StdGoTypes.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.StdGoTypes.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.StdGoTypes.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.StdGoTypes.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ChanType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.ChanType_asInterface) class ChanType_static_extension {
    @:embedded
    public static function uncommon( __self__:ChanType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:ChanType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:ChanType):stdgo.StdGoTypes.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:ChanType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:ChanType):stdgo.StdGoTypes.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:ChanType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:ChanType):stdgo.StdGoTypes.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:ChanType):stdgo.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:ChanType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:ChanType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:ChanType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:ChanType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:ChanType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:ChanType, _begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:ChanType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:ChanType):stdgo.StdGoTypes.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:ChanType):stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function common( __self__:ChanType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.common();
    @:embedded
    public static function chanDir( __self__:ChanType):stdgo.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:ChanType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:ChanType):stdgo.StdGoTypes.GoInt return __self__.align();
}
class T_structTypeUncommon_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function size():stdgo.StdGoTypes.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.StdGoTypes.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.StdGoTypes.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function elem():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.elem();
    @:embedded
    public dynamic function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.StdGoTypes.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_structTypeUncommon>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.T_structTypeUncommon_asInterface) class T_structTypeUncommon_static_extension {
    @:embedded
    public static function uncommon( __self__:T_structTypeUncommon):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function size( __self__:T_structTypeUncommon):stdgo.StdGoTypes.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:T_structTypeUncommon):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:T_structTypeUncommon):stdgo.StdGoTypes.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:T_structTypeUncommon):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:T_structTypeUncommon):stdgo.StdGoTypes.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:T_structTypeUncommon):stdgo.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:T_structTypeUncommon):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:T_structTypeUncommon):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:T_structTypeUncommon):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:T_structTypeUncommon):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:T_structTypeUncommon):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:T_structTypeUncommon, _begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:T_structTypeUncommon):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:T_structTypeUncommon):stdgo.StdGoTypes.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:T_structTypeUncommon):stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function elem( __self__:T_structTypeUncommon):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.elem();
    @:embedded
    public static function common( __self__:T_structTypeUncommon):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.common();
    @:embedded
    public static function chanDir( __self__:T_structTypeUncommon):stdgo.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:T_structTypeUncommon):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:T_structTypeUncommon):stdgo.StdGoTypes.GoInt return __self__.align();
}
class InterfaceType_asInterface {
    /**
        // NumMethod returns the number of interface methods in the type's method set.
    **/
    @:keep
    public dynamic function numMethod():stdgo.StdGoTypes.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.StdGoTypes.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.StdGoTypes.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function elem():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.elem();
    @:embedded
    public dynamic function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.StdGoTypes.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<InterfaceType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.InterfaceType_asInterface) class InterfaceType_static_extension {
    /**
        // NumMethod returns the number of interface methods in the type's method set.
    **/
    @:keep
    static public function numMethod( _t:stdgo.StdGoTypes.Ref<InterfaceType>):stdgo.StdGoTypes.GoInt {
        @:recv var _t:stdgo.StdGoTypes.Ref<InterfaceType> = _t;
        return (_t.methods.length);
    }
    @:embedded
    public static function uncommon( __self__:InterfaceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:InterfaceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:InterfaceType):stdgo.StdGoTypes.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:InterfaceType):Bool return __self__.pointers();
    @:embedded
    public static function mapType( __self__:InterfaceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:InterfaceType):stdgo.StdGoTypes.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:InterfaceType):stdgo.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:InterfaceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:InterfaceType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:InterfaceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:InterfaceType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:InterfaceType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:InterfaceType, _begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:InterfaceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:InterfaceType):stdgo.StdGoTypes.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:InterfaceType):stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function elem( __self__:InterfaceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.elem();
    @:embedded
    public static function common( __self__:InterfaceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.common();
    @:embedded
    public static function chanDir( __self__:InterfaceType):stdgo.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:InterfaceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:InterfaceType):stdgo.StdGoTypes.GoInt return __self__.align();
}
class MapType_asInterface {
    @:keep
    public dynamic function hashMightPanic():Bool return __self__.value.hashMightPanic();
    @:keep
    public dynamic function needKeyUpdate():Bool return __self__.value.needKeyUpdate();
    @:keep
    public dynamic function reflexiveKey():Bool return __self__.value.reflexiveKey();
    @:keep
    public dynamic function indirectElem():Bool return __self__.value.indirectElem();
    /**
        // Note: flag values must match those used in the TMAP case
        // in ../cmd/compile/internal/reflectdata/reflect.go:writeType.
    **/
    @:keep
    public dynamic function indirectKey():Bool return __self__.value.indirectKey();
    @:embedded
    public dynamic function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.StdGoTypes.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.StdGoTypes.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.StdGoTypes.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.StdGoTypes.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<MapType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.MapType_asInterface) class MapType_static_extension {
    @:keep
    static public function hashMightPanic( _mt:stdgo.StdGoTypes.Ref<MapType>):Bool {
        @:recv var _mt:stdgo.StdGoTypes.Ref<MapType> = _mt;
        return _mt.flags & (16u32 : stdgo.StdGoTypes.GoUInt32) != ((0u32 : stdgo.StdGoTypes.GoUInt32));
    }
    @:keep
    static public function needKeyUpdate( _mt:stdgo.StdGoTypes.Ref<MapType>):Bool {
        @:recv var _mt:stdgo.StdGoTypes.Ref<MapType> = _mt;
        return _mt.flags & (8u32 : stdgo.StdGoTypes.GoUInt32) != ((0u32 : stdgo.StdGoTypes.GoUInt32));
    }
    @:keep
    static public function reflexiveKey( _mt:stdgo.StdGoTypes.Ref<MapType>):Bool {
        @:recv var _mt:stdgo.StdGoTypes.Ref<MapType> = _mt;
        return _mt.flags & (4u32 : stdgo.StdGoTypes.GoUInt32) != ((0u32 : stdgo.StdGoTypes.GoUInt32));
    }
    @:keep
    static public function indirectElem( _mt:stdgo.StdGoTypes.Ref<MapType>):Bool {
        @:recv var _mt:stdgo.StdGoTypes.Ref<MapType> = _mt;
        return _mt.flags & (2u32 : stdgo.StdGoTypes.GoUInt32) != ((0u32 : stdgo.StdGoTypes.GoUInt32));
    }
    /**
        // Note: flag values must match those used in the TMAP case
        // in ../cmd/compile/internal/reflectdata/reflect.go:writeType.
    **/
    @:keep
    static public function indirectKey( _mt:stdgo.StdGoTypes.Ref<MapType>):Bool {
        @:recv var _mt:stdgo.StdGoTypes.Ref<MapType> = _mt;
        return _mt.flags & (1u32 : stdgo.StdGoTypes.GoUInt32) != ((0u32 : stdgo.StdGoTypes.GoUInt32));
    }
    @:embedded
    public static function uncommon( __self__:MapType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:MapType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:MapType):stdgo.StdGoTypes.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:MapType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:MapType):stdgo.StdGoTypes.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:MapType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:MapType):stdgo.StdGoTypes.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:MapType):stdgo.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function isDirectIface( __self__:MapType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:MapType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:MapType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:MapType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:MapType, _begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:MapType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:MapType):stdgo.StdGoTypes.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:MapType):stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function common( __self__:MapType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.common();
    @:embedded
    public static function chanDir( __self__:MapType):stdgo.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:MapType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:MapType):stdgo.StdGoTypes.GoInt return __self__.align();
}
class SliceType_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.StdGoTypes.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.StdGoTypes.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.StdGoTypes.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.StdGoTypes.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SliceType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.SliceType_asInterface) class SliceType_static_extension {
    @:embedded
    public static function uncommon( __self__:SliceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:SliceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:SliceType):stdgo.StdGoTypes.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:SliceType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:SliceType):stdgo.StdGoTypes.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:SliceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:SliceType):stdgo.StdGoTypes.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:SliceType):stdgo.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:SliceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:SliceType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:SliceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:SliceType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:SliceType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:SliceType, _begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:SliceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:SliceType):stdgo.StdGoTypes.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:SliceType):stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function common( __self__:SliceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.common();
    @:embedded
    public static function chanDir( __self__:SliceType):stdgo.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:SliceType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:SliceType):stdgo.StdGoTypes.GoInt return __self__.align();
}
class FuncType_asInterface {
    @:keep
    public dynamic function isVariadic():Bool return __self__.value.isVariadic();
    @:keep
    public dynamic function outSlice():stdgo.Slice<stdgo.StdGoTypes.Ref<Type>> return __self__.value.outSlice();
    @:keep
    public dynamic function inSlice():stdgo.Slice<stdgo.StdGoTypes.Ref<Type>> return __self__.value.inSlice();
    @:keep
    public dynamic function out(_i:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<Type> return __self__.value.out(_i);
    @:keep
    public dynamic function numOut():stdgo.StdGoTypes.GoInt return __self__.value.numOut();
    @:keep
    public dynamic function numIn():stdgo.StdGoTypes.GoInt return __self__.value.numIn();
    @:keep
    public dynamic function in_(_i:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<Type> return __self__.value.in_(_i);
    @:embedded
    public dynamic function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.StdGoTypes.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.StdGoTypes.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.StdGoTypes.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function elem():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.elem();
    @:embedded
    public dynamic function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.StdGoTypes.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FuncType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.FuncType_asInterface) class FuncType_static_extension {
    @:keep
    static public function isVariadic( _t:stdgo.StdGoTypes.Ref<FuncType>):Bool {
        @:recv var _t:stdgo.StdGoTypes.Ref<FuncType> = _t;
        return _t.outCount & (32768 : stdgo.StdGoTypes.GoUInt16) != ((0 : stdgo.StdGoTypes.GoUInt16));
    }
    @:keep
    static public function outSlice( _t:stdgo.StdGoTypes.Ref<FuncType>):stdgo.Slice<stdgo.StdGoTypes.Ref<Type>> {
        @:recv var _t:stdgo.StdGoTypes.Ref<FuncType> = _t;
        var _outCount:stdgo.StdGoTypes.GoUInt16 = (_t.numOut() : stdgo.StdGoTypes.GoUInt16);
        if (_outCount == ((0 : stdgo.StdGoTypes.GoUInt16))) {
            return (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>>);
        };
        var _uadd:stdgo.StdGoTypes.GoUIntptr = stdgo.unsafe.Unsafe.sizeof(stdgo.Go.toInterface((_t : stdgo.internal.abi.Abi.FuncType)));
        if (_t.type.tflag & (1 : stdgo.internal.abi.Abi.TFlag) != ((0 : stdgo.internal.abi.Abi.TFlag))) {
            _uadd = _uadd + (stdgo.unsafe.Unsafe.sizeof(stdgo.Go.toInterface((new stdgo.internal.abi.Abi.UncommonType() : stdgo.internal.abi.Abi.UncommonType))));
        };
        return ((_addChecked((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer), _uadd, ("outCount > 0" : stdgo.GoString)).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, 131072) })) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.Ref<Type>>>).__slice__(_t.inCount, _t.inCount + _outCount, _t.inCount + _outCount) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>>);
    }
    @:keep
    static public function inSlice( _t:stdgo.StdGoTypes.Ref<FuncType>):stdgo.Slice<stdgo.StdGoTypes.Ref<Type>> {
        @:recv var _t:stdgo.StdGoTypes.Ref<FuncType> = _t;
        var _uadd:stdgo.StdGoTypes.GoUIntptr = stdgo.unsafe.Unsafe.sizeof(stdgo.Go.toInterface((_t : stdgo.internal.abi.Abi.FuncType)));
        if (_t.type.tflag & (1 : stdgo.internal.abi.Abi.TFlag) != ((0 : stdgo.internal.abi.Abi.TFlag))) {
            _uadd = _uadd + (stdgo.unsafe.Unsafe.sizeof(stdgo.Go.toInterface((new stdgo.internal.abi.Abi.UncommonType() : stdgo.internal.abi.Abi.UncommonType))));
        };
        if (_t.inCount == ((0 : stdgo.StdGoTypes.GoUInt16))) {
            return (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>>);
        };
        return ((_addChecked((stdgo.Go.toInterface(_t) : stdgo.unsafe.Unsafe.UnsafePointer), _uadd, ("t.inCount > 0" : stdgo.GoString)).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.Type", [], stdgo.internal.reflect.Reflect.GoType.structType([
{ name : "size_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "ptrBytes", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false },
{ name : "hash", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "tflag", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TFlag", [], stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind), false, { get : () -> null }) }, optional : false },
{ name : "align_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "fieldAlign_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "kind_", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "equal", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.signature(false, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind), stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind)] }, { get : () -> [stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo.internal.reflect.Reflect.GoType.invalidType }) }, optional : false },
{ name : "gcdata", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "str", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.NameOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false },
{ name : "ptrToThis", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.internal.abi.Abi.TypeOff", [], stdgo.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }) }, 65536) })) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.Ref<Type>>>).__slice__(0, _t.inCount, _t.inCount) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type>>);
    }
    @:keep
    static public function out( _t:stdgo.StdGoTypes.Ref<FuncType>, _i:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<Type> {
        @:recv var _t:stdgo.StdGoTypes.Ref<FuncType> = _t;
        return (_t.outSlice()[(_i : stdgo.StdGoTypes.GoInt)]);
    }
    @:keep
    static public function numOut( _t:stdgo.StdGoTypes.Ref<FuncType>):stdgo.StdGoTypes.GoInt {
        @:recv var _t:stdgo.StdGoTypes.Ref<FuncType> = _t;
        return (_t.outCount & (32767 : stdgo.StdGoTypes.GoUInt16) : stdgo.StdGoTypes.GoInt);
    }
    @:keep
    static public function numIn( _t:stdgo.StdGoTypes.Ref<FuncType>):stdgo.StdGoTypes.GoInt {
        @:recv var _t:stdgo.StdGoTypes.Ref<FuncType> = _t;
        return (_t.inCount : stdgo.StdGoTypes.GoInt);
    }
    @:keep
    static public function in_( _t:stdgo.StdGoTypes.Ref<FuncType>, _i:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<Type> {
        @:recv var _t:stdgo.StdGoTypes.Ref<FuncType> = _t;
        return _t.inSlice()[(_i : stdgo.StdGoTypes.GoInt)];
    }
    @:embedded
    public static function uncommon( __self__:FuncType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:FuncType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:FuncType):stdgo.StdGoTypes.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:FuncType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:FuncType):stdgo.StdGoTypes.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:FuncType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:FuncType):stdgo.StdGoTypes.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:FuncType):stdgo.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:FuncType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:FuncType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:FuncType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:FuncType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:FuncType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:FuncType, _begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:FuncType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:FuncType):stdgo.StdGoTypes.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:FuncType):stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function elem( __self__:FuncType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.elem();
    @:embedded
    public static function common( __self__:FuncType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.common();
    @:embedded
    public static function chanDir( __self__:FuncType):stdgo.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:FuncType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:FuncType):stdgo.StdGoTypes.GoInt return __self__.align();
}
class PtrType_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.StdGoTypes.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.StdGoTypes.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.StdGoTypes.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.StdGoTypes.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<PtrType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.PtrType_asInterface) class PtrType_static_extension {
    @:embedded
    public static function uncommon( __self__:PtrType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:PtrType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:PtrType):stdgo.StdGoTypes.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:PtrType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:PtrType):stdgo.StdGoTypes.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:PtrType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:PtrType):stdgo.StdGoTypes.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:PtrType):stdgo.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:PtrType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:PtrType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:PtrType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:PtrType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:PtrType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:PtrType, _begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:PtrType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:PtrType):stdgo.StdGoTypes.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:PtrType):stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function common( __self__:PtrType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.common();
    @:embedded
    public static function chanDir( __self__:PtrType):stdgo.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:PtrType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:PtrType):stdgo.StdGoTypes.GoInt return __self__.align();
}
class StructField_asInterface {
    @:keep
    public dynamic function embedded():Bool return __self__.value.embedded();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StructField>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.StructField_asInterface) class StructField_static_extension {
    @:keep
    static public function embedded( _f:stdgo.StdGoTypes.Ref<StructField>):Bool {
        @:recv var _f:stdgo.StdGoTypes.Ref<StructField> = _f;
        return _f.name.isEmbedded();
    }
}
class StructType_asInterface {
    @:embedded
    public dynamic function uncommon():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.value.uncommon();
    @:embedded
    public dynamic function structType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.value.structType();
    @:embedded
    public dynamic function size():stdgo.StdGoTypes.GoUIntptr return __self__.value.size();
    @:embedded
    public dynamic function pointers():Bool return __self__.value.pointers();
    @:embedded
    public dynamic function numMethod():stdgo.StdGoTypes.GoInt return __self__.value.numMethod();
    @:embedded
    public dynamic function mapType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.value.mapType();
    @:embedded
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:embedded
    public dynamic function kind():stdgo.internal.abi.Abi.Kind return __self__.value.kind();
    @:embedded
    public dynamic function key():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.key();
    @:embedded
    public dynamic function isDirectIface():Bool return __self__.value.isDirectIface();
    @:embedded
    public dynamic function interfaceType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.value.interfaceType();
    @:embedded
    public dynamic function ifaceIndir():Bool return __self__.value.ifaceIndir();
    @:embedded
    public dynamic function hasName():Bool return __self__.value.hasName();
    @:embedded
    public dynamic function gcSlice(_begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.gcSlice(_begin, _end);
    @:embedded
    public dynamic function funcType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.value.funcType();
    @:embedded
    public dynamic function fieldAlign():stdgo.StdGoTypes.GoInt return __self__.value.fieldAlign();
    @:embedded
    public dynamic function exportedMethods():stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.value.exportedMethods();
    @:embedded
    public dynamic function elem():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.elem();
    @:embedded
    public dynamic function common():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.value.common();
    @:embedded
    public dynamic function chanDir():stdgo.internal.abi.Abi.ChanDir return __self__.value.chanDir();
    @:embedded
    public dynamic function arrayType():stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.value.arrayType();
    @:embedded
    public dynamic function align():stdgo.StdGoTypes.GoInt return __self__.value.align();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StructType>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.StructType_asInterface) class StructType_static_extension {
    @:embedded
    public static function uncommon( __self__:StructType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.UncommonType> return __self__.uncommon();
    @:embedded
    public static function structType( __self__:StructType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.StructType> return __self__.structType();
    @:embedded
    public static function size( __self__:StructType):stdgo.StdGoTypes.GoUIntptr return __self__.size();
    @:embedded
    public static function pointers( __self__:StructType):Bool return __self__.pointers();
    @:embedded
    public static function numMethod( __self__:StructType):stdgo.StdGoTypes.GoInt return __self__.numMethod();
    @:embedded
    public static function mapType( __self__:StructType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.MapType> return __self__.mapType();
    @:embedded
    public static function len( __self__:StructType):stdgo.StdGoTypes.GoInt return __self__.len();
    @:embedded
    public static function kind( __self__:StructType):stdgo.internal.abi.Abi.Kind return __self__.kind();
    @:embedded
    public static function key( __self__:StructType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.key();
    @:embedded
    public static function isDirectIface( __self__:StructType):Bool return __self__.isDirectIface();
    @:embedded
    public static function interfaceType( __self__:StructType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.InterfaceType> return __self__.interfaceType();
    @:embedded
    public static function ifaceIndir( __self__:StructType):Bool return __self__.ifaceIndir();
    @:embedded
    public static function hasName( __self__:StructType):Bool return __self__.hasName();
    @:embedded
    public static function gcSlice( __self__:StructType, _begin:stdgo.StdGoTypes.GoUIntptr, _end:stdgo.StdGoTypes.GoUIntptr):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.gcSlice(_begin, _end);
    @:embedded
    public static function funcType( __self__:StructType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.FuncType> return __self__.funcType();
    @:embedded
    public static function fieldAlign( __self__:StructType):stdgo.StdGoTypes.GoInt return __self__.fieldAlign();
    @:embedded
    public static function exportedMethods( __self__:StructType):stdgo.Slice<stdgo.internal.abi.Abi.Method> return __self__.exportedMethods();
    @:embedded
    public static function elem( __self__:StructType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.elem();
    @:embedded
    public static function common( __self__:StructType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.Type> return __self__.common();
    @:embedded
    public static function chanDir( __self__:StructType):stdgo.internal.abi.Abi.ChanDir return __self__.chanDir();
    @:embedded
    public static function arrayType( __self__:StructType):stdgo.StdGoTypes.Ref<stdgo.internal.abi.Abi.ArrayType> return __self__.arrayType();
    @:embedded
    public static function align( __self__:StructType):stdgo.StdGoTypes.GoInt return __self__.align();
}
class Name_asInterface {
    /**
        // Tag returns the tag string for n, or empty if there is none.
    **/
    @:keep
    public dynamic function tag():stdgo.GoString return __self__.value.tag();
    /**
        // Name returns the tag string for n, or empty if there is none.
    **/
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    /**
        // IsBlank indicates whether n is "_".
    **/
    @:keep
    public dynamic function isBlank():Bool return __self__.value.isBlank();
    /**
        // ReadVarint parses a varint as encoded by encoding/binary.
        // It returns the number of encoded bytes and the encoded value.
    **/
    @:keep
    public dynamic function readVarint(_off:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; } return __self__.value.readVarint(_off);
    /**
        // IsEmbedded returns true iff n is embedded (an anonymous field).
    **/
    @:keep
    public dynamic function isEmbedded():Bool return __self__.value.isEmbedded();
    /**
        // HasTag returns true iff there is tag data following this name
    **/
    @:keep
    public dynamic function hasTag():Bool return __self__.value.hasTag();
    /**
        // IsExported returns "is n exported?"
    **/
    @:keep
    public dynamic function isExported():Bool return __self__.value.isExported();
    /**
        // Data does pointer arithmetic on n's Bytes, and that arithmetic is asserted to
        // be safe because the runtime made the call (other packages use DataChecked)
    **/
    @:keep
    public dynamic function data(_off:stdgo.StdGoTypes.GoInt):stdgo.Pointer<stdgo.StdGoTypes.GoByte> return __self__.value.data(_off);
    /**
        // DataChecked does pointer arithmetic on n's Bytes, and that arithmetic is asserted to
        // be safe for the reason in whySafe (which can appear in a backtrace, etc.)
    **/
    @:keep
    public dynamic function dataChecked(_off:stdgo.StdGoTypes.GoInt, _whySafe:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoByte> return __self__.value.dataChecked(_off, _whySafe);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Name>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.Name_asInterface) class Name_static_extension {
    /**
        // Tag returns the tag string for n, or empty if there is none.
    **/
    @:keep
    static public function tag( _n:Name):stdgo.GoString {
        @:recv var _n:Name = _n?.__copy__();
        if (!_n.hasTag()) {
            return stdgo.Go.str()?.__copy__();
        };
        var __tmp__ = _n.readVarint((1 : stdgo.StdGoTypes.GoInt)), _i:stdgo.StdGoTypes.GoInt = __tmp__._0, _l:stdgo.StdGoTypes.GoInt = __tmp__._1;
        var __tmp__ = _n.readVarint(((1 : stdgo.StdGoTypes.GoInt) + _i) + _l), _i2:stdgo.StdGoTypes.GoInt = __tmp__._0, _l2:stdgo.StdGoTypes.GoInt = __tmp__._1;
        return _unsafeStringFor(_n.dataChecked((((1 : stdgo.StdGoTypes.GoInt) + _i) + _l) + _i2, ("non-empty string" : stdgo.GoString)), _l2)?.__copy__();
    }
    /**
        // Name returns the tag string for n, or empty if there is none.
    **/
    @:keep
    static public function name( _n:Name):stdgo.GoString {
        @:recv var _n:Name = _n?.__copy__();
        if (_n.bytes == null) {
            return stdgo.Go.str()?.__copy__();
        };
        var __tmp__ = _n.readVarint((1 : stdgo.StdGoTypes.GoInt)), _i:stdgo.StdGoTypes.GoInt = __tmp__._0, _l:stdgo.StdGoTypes.GoInt = __tmp__._1;
        return _unsafeStringFor(_n.dataChecked((1 : stdgo.StdGoTypes.GoInt) + _i, ("non-empty string" : stdgo.GoString)), _l)?.__copy__();
    }
    /**
        // IsBlank indicates whether n is "_".
    **/
    @:keep
    static public function isBlank( _n:Name):Bool {
        @:recv var _n:Name = _n?.__copy__();
        if (_n.bytes == null) {
            return false;
        };
        var __tmp__ = _n.readVarint((1 : stdgo.StdGoTypes.GoInt)), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _l:stdgo.StdGoTypes.GoInt = __tmp__._1;
        return (_l == (1 : stdgo.StdGoTypes.GoInt)) && (_n.data((2 : stdgo.StdGoTypes.GoInt)).value == (95 : stdgo.StdGoTypes.GoUInt8));
    }
    /**
        // ReadVarint parses a varint as encoded by encoding/binary.
        // It returns the number of encoded bytes and the encoded value.
    **/
    @:keep
    static public function readVarint( _n:Name, _off:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; } {
        @:recv var _n:Name = _n?.__copy__();
        var _v:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(true, _i++, {
                var _x:stdgo.StdGoTypes.GoUInt8 = _n.dataChecked(_off + _i, ("read varint" : stdgo.GoString)).value;
                _v = _v + ((_x & (127 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoInt) << ((7 : stdgo.StdGoTypes.GoInt) * _i));
                if (_x & (128 : stdgo.StdGoTypes.GoUInt8) == ((0 : stdgo.StdGoTypes.GoUInt8))) {
                    return { _0 : _i + (1 : stdgo.StdGoTypes.GoInt), _1 : _v };
                };
            });
        };
    }
    /**
        // IsEmbedded returns true iff n is embedded (an anonymous field).
    **/
    @:keep
    static public function isEmbedded( _n:Name):Bool {
        @:recv var _n:Name = _n?.__copy__();
        return (_n.bytes.value) & (8 : stdgo.StdGoTypes.GoUInt8) != ((0 : stdgo.StdGoTypes.GoUInt8));
    }
    /**
        // HasTag returns true iff there is tag data following this name
    **/
    @:keep
    static public function hasTag( _n:Name):Bool {
        @:recv var _n:Name = _n?.__copy__();
        return (_n.bytes.value) & (2 : stdgo.StdGoTypes.GoUInt8) != ((0 : stdgo.StdGoTypes.GoUInt8));
    }
    /**
        // IsExported returns "is n exported?"
    **/
    @:keep
    static public function isExported( _n:Name):Bool {
        @:recv var _n:Name = _n?.__copy__();
        return (_n.bytes.value) & (1 : stdgo.StdGoTypes.GoUInt8) != ((0 : stdgo.StdGoTypes.GoUInt8));
    }
    /**
        // Data does pointer arithmetic on n's Bytes, and that arithmetic is asserted to
        // be safe because the runtime made the call (other packages use DataChecked)
    **/
    @:keep
    static public function data( _n:Name, _off:stdgo.StdGoTypes.GoInt):stdgo.Pointer<stdgo.StdGoTypes.GoByte> {
        @:recv var _n:Name = _n?.__copy__();
        return (_addChecked((stdgo.Go.toInterface(_n.bytes) : stdgo.unsafe.Unsafe.UnsafePointer), (_off : stdgo.StdGoTypes.GoUIntptr), ("the runtime doesn\'t need to give you a reason" : stdgo.GoString)).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoByte>);
    }
    /**
        // DataChecked does pointer arithmetic on n's Bytes, and that arithmetic is asserted to
        // be safe for the reason in whySafe (which can appear in a backtrace, etc.)
    **/
    @:keep
    static public function dataChecked( _n:Name, _off:stdgo.StdGoTypes.GoInt, _whySafe:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoByte> {
        @:recv var _n:Name = _n?.__copy__();
        return (_addChecked((stdgo.Go.toInterface(_n.bytes) : stdgo.unsafe.Unsafe.UnsafePointer), (_off : stdgo.StdGoTypes.GoUIntptr), _whySafe?.__copy__()).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoByte>);
    }
}
class IntArgRegBitmap_asInterface {
    /**
        // Get returns whether the i'th bit of the bitmap is set.
        //
        // nosplit because it's called in extremely sensitive contexts, like
        // on the reflectcall return path.
        //
        //go:nosplit
    **/
    @:keep
    public dynamic function get(_i:stdgo.StdGoTypes.GoInt):Bool return __self__.value.get(_i);
    /**
        // Set sets the i'th bit of the bitmap to 1.
    **/
    @:keep
    public dynamic function set(_i:stdgo.StdGoTypes.GoInt):Void __self__.value.set(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<IntArgRegBitmap>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.IntArgRegBitmap_asInterface) class IntArgRegBitmap_static_extension {
    /**
        // Get returns whether the i'th bit of the bitmap is set.
        //
        // nosplit because it's called in extremely sensitive contexts, like
        // on the reflectcall return path.
        //
        //go:nosplit
    **/
    @:keep
    static public function get( _b:stdgo.StdGoTypes.Ref<IntArgRegBitmap>, _i:stdgo.StdGoTypes.GoInt):Bool {
        @:recv var _b:stdgo.StdGoTypes.Ref<IntArgRegBitmap> = _b;
        return _b[(_i / (8 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] & (((1 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoUInt8) << (_i % (8 : stdgo.StdGoTypes.GoInt))) != ((0 : stdgo.StdGoTypes.GoUInt8));
    }
    /**
        // Set sets the i'th bit of the bitmap to 1.
    **/
    @:keep
    static public function set( _b:stdgo.StdGoTypes.Ref<IntArgRegBitmap>, _i:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _b:stdgo.StdGoTypes.Ref<IntArgRegBitmap> = _b;
        _b[(_i / (8 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _b[(_i / (8 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] | (((1 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoUInt8) << (_i % (8 : stdgo.StdGoTypes.GoInt)));
    }
}
class Kind_asInterface {
    /**
        // String returns the name of k.
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Kind>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.abi.Abi.Kind_asInterface) class Kind_static_extension {
    /**
        // String returns the name of k.
    **/
    @:keep
    static public function string( _k:Kind):stdgo.GoString {
        @:recv var _k:Kind = _k;
        if ((_k : stdgo.StdGoTypes.GoInt) < (_kindNames.length)) {
            return _kindNames[(_k : stdgo.StdGoTypes.GoInt)]?.__copy__();
        };
        return _kindNames[(0 : stdgo.StdGoTypes.GoInt)]?.__copy__();
    }
}

package atomic_;
typedef Int32 = _internal.runtime.internal.atomic_.Atomic__int32.Int32;
typedef Int64_ = _internal.runtime.internal.atomic_.Atomic__int64_.Int64_;
typedef Uint8 = _internal.runtime.internal.atomic_.Atomic__uint8.Uint8;
typedef Bool_ = _internal.runtime.internal.atomic_.Atomic__bool_.Bool_;
typedef Uint32 = _internal.runtime.internal.atomic_.Atomic__uint32.Uint32;
typedef Uint64 = _internal.runtime.internal.atomic_.Atomic__uint64.Uint64;
typedef Uintptr = _internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr;
typedef Float64 = _internal.runtime.internal.atomic_.Atomic__float64.Float64;
typedef UnsafePointer = _internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer;
typedef Pointer_ = _internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_;
typedef Int32Pointer = _internal.runtime.internal.atomic_.Atomic__int32pointer.Int32Pointer;
typedef Int64_Pointer = _internal.runtime.internal.atomic_.Atomic__int64_pointer.Int64_Pointer;
typedef Uint8Pointer = _internal.runtime.internal.atomic_.Atomic__uint8pointer.Uint8Pointer;
typedef Bool_Pointer = _internal.runtime.internal.atomic_.Atomic__bool_pointer.Bool_Pointer;
typedef Uint32Pointer = _internal.runtime.internal.atomic_.Atomic__uint32pointer.Uint32Pointer;
typedef Uint64Pointer = _internal.runtime.internal.atomic_.Atomic__uint64pointer.Uint64Pointer;
typedef UintptrPointer = _internal.runtime.internal.atomic_.Atomic__uintptrpointer.UintptrPointer;
typedef Float64Pointer = _internal.runtime.internal.atomic_.Atomic__float64pointer.Float64Pointer;
typedef UnsafePointerPointer = _internal.runtime.internal.atomic_.Atomic__unsafepointerpointer.UnsafePointerPointer;
typedef Pointer_Pointer = _internal.runtime.internal.atomic_.Atomic__pointer_pointer.Pointer_Pointer;
/**
    * 
    * Package atomic provides atomic operations, independent of sync/atomic,
    * to the runtime.
    * 
    * On most platforms, the compiler is aware of the functions defined
    * in this package, and they're replaced with platform-specific intrinsics.
    * On other platforms, generic implementations are made available.
    * 
    * Unless otherwise noted, operations defined in this package are sequentially
    * consistent across threads with respect to the values they manipulate. More
    * specifically, operations that happen in a specific order on one thread,
    * will always be observed to happen in exactly that order by another thread.
    * 
**/
class Atomic_ {
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function load(_ptr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.GoUInt32 return _internal.runtime.internal.atomic_.Atomic__load.load(_ptr);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loadp(_ptr:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer return _internal.runtime.internal.atomic_.Atomic__loadp.loadp(_ptr);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loadAcq(_ptr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.GoUInt32 return _internal.runtime.internal.atomic_.Atomic__loadacq.loadAcq(_ptr);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loadAcq64(_ptr:stdgo.Pointer<stdgo.GoUInt64>):stdgo.GoUInt64 return _internal.runtime.internal.atomic_.Atomic__loadacq64.loadAcq64(_ptr);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loadAcquintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr return _internal.runtime.internal.atomic_.Atomic__loadacquintptr.loadAcquintptr(_ptr);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function load8(_ptr:stdgo.Pointer<stdgo.GoUInt8>):stdgo.GoUInt8 return _internal.runtime.internal.atomic_.Atomic__load8.load8(_ptr);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function load64(_ptr:stdgo.Pointer<stdgo.GoUInt64>):stdgo.GoUInt64 return _internal.runtime.internal.atomic_.Atomic__load64.load64(_ptr);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xadd(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _delta:stdgo.GoInt32):stdgo.GoUInt32 return _internal.runtime.internal.atomic_.Atomic__xadd.xadd(_ptr, _delta);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xadd64(_ptr:stdgo.Pointer<stdgo.GoUInt64>, _delta:stdgo.GoInt64):stdgo.GoUInt64 return _internal.runtime.internal.atomic_.Atomic__xadd64.xadd64(_ptr, _delta);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xadduintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr return _internal.runtime.internal.atomic_.Atomic__xadduintptr.xadduintptr(_ptr, _delta);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xchg(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _new_:stdgo.GoUInt32):stdgo.GoUInt32 return _internal.runtime.internal.atomic_.Atomic__xchg.xchg(_ptr, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xchg64(_ptr:stdgo.Pointer<stdgo.GoUInt64>, _new_:stdgo.GoUInt64):stdgo.GoUInt64 return _internal.runtime.internal.atomic_.Atomic__xchg64.xchg64(_ptr, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xchgint32(_ptr:stdgo.Pointer<stdgo.GoInt32>, _new_:stdgo.GoInt32):stdgo.GoInt32 return _internal.runtime.internal.atomic_.Atomic__xchgint32.xchgint32(_ptr, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xchgint64(_ptr:stdgo.Pointer<stdgo.GoInt64>, _new_:stdgo.GoInt64):stdgo.GoInt64 return _internal.runtime.internal.atomic_.Atomic__xchgint64.xchgint64(_ptr, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xchguintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _new_:stdgo.GoUIntptr):stdgo.GoUIntptr return _internal.runtime.internal.atomic_.Atomic__xchguintptr.xchguintptr(_ptr, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function and8(_ptr:stdgo.Pointer<stdgo.GoUInt8>, _val:stdgo.GoUInt8):Void _internal.runtime.internal.atomic_.Atomic__and8.and8(_ptr, _val);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function or8(_ptr:stdgo.Pointer<stdgo.GoUInt8>, _val:stdgo.GoUInt8):Void _internal.runtime.internal.atomic_.Atomic__or8.or8(_ptr, _val);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function and(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void _internal.runtime.internal.atomic_.Atomic__and.and(_ptr, _val);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function or(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void _internal.runtime.internal.atomic_.Atomic__or.or(_ptr, _val);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function cas64(_ptr:stdgo.Pointer<stdgo.GoUInt64>, _old:stdgo.GoUInt64, _new_:stdgo.GoUInt64):Bool return _internal.runtime.internal.atomic_.Atomic__cas64.cas64(_ptr, _old, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function store(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void _internal.runtime.internal.atomic_.Atomic__store.store(_ptr, _val);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function storeRel(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void _internal.runtime.internal.atomic_.Atomic__storerel.storeRel(_ptr, _val);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function storeRel64(_ptr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void _internal.runtime.internal.atomic_.Atomic__storerel64.storeRel64(_ptr, _val);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function storeReluintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void _internal.runtime.internal.atomic_.Atomic__storereluintptr.storeReluintptr(_ptr, _val);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function store8(_ptr:stdgo.Pointer<stdgo.GoUInt8>, _val:stdgo.GoUInt8):Void _internal.runtime.internal.atomic_.Atomic__store8.store8(_ptr, _val);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function store64(_ptr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void _internal.runtime.internal.atomic_.Atomic__store64.store64(_ptr, _val);
    /**
        * StorepNoWB performs *ptr = val atomically and without a write
        * barrier.
        * 
        * NO go:noescape annotation; see atomic_pointer.go.
    **/
    static public inline function storepNoWB(_ptr:stdgo._internal.unsafe.Unsafe.UnsafePointer, _val:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void _internal.runtime.internal.atomic_.Atomic__storepnowb.storepNoWB(_ptr, _val);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function casint32(_ptr:stdgo.Pointer<stdgo.GoInt32>, _old:stdgo.GoInt32, _new_:stdgo.GoInt32):Bool return _internal.runtime.internal.atomic_.Atomic__casint32.casint32(_ptr, _old, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function casint64(_ptr:stdgo.Pointer<stdgo.GoInt64>, _old:stdgo.GoInt64, _new_:stdgo.GoInt64):Bool return _internal.runtime.internal.atomic_.Atomic__casint64.casint64(_ptr, _old, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function cas(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new_:stdgo.GoUInt32):Bool return _internal.runtime.internal.atomic_.Atomic__cas.cas(_ptr, _old, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function casp1(_ptr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new_:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool return _internal.runtime.internal.atomic_.Atomic__casp1.casp1(_ptr, _old, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function casuintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new_:stdgo.GoUIntptr):Bool return _internal.runtime.internal.atomic_.Atomic__casuintptr.casuintptr(_ptr, _old, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function casRel(_ptr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new_:stdgo.GoUInt32):Bool return _internal.runtime.internal.atomic_.Atomic__casrel.casRel(_ptr, _old, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function storeint32(_ptr:stdgo.Pointer<stdgo.GoInt32>, _new_:stdgo.GoInt32):Void _internal.runtime.internal.atomic_.Atomic__storeint32.storeint32(_ptr, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function storeint64(_ptr:stdgo.Pointer<stdgo.GoInt64>, _new_:stdgo.GoInt64):Void _internal.runtime.internal.atomic_.Atomic__storeint64.storeint64(_ptr, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function storeuintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _new_:stdgo.GoUIntptr):Void _internal.runtime.internal.atomic_.Atomic__storeuintptr.storeuintptr(_ptr, _new_);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loaduintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr return _internal.runtime.internal.atomic_.Atomic__loaduintptr.loaduintptr(_ptr);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loaduint(_ptr:stdgo.Pointer<stdgo.GoUInt>):stdgo.GoUInt return _internal.runtime.internal.atomic_.Atomic__loaduint.loaduint(_ptr);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loadint32(_ptr:stdgo.Pointer<stdgo.GoInt32>):stdgo.GoInt32 return _internal.runtime.internal.atomic_.Atomic__loadint32.loadint32(_ptr);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loadint64(_ptr:stdgo.Pointer<stdgo.GoInt64>):stdgo.GoInt64 return _internal.runtime.internal.atomic_.Atomic__loadint64.loadint64(_ptr);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xaddint32(_ptr:stdgo.Pointer<stdgo.GoInt32>, _delta:stdgo.GoInt32):stdgo.GoInt32 return _internal.runtime.internal.atomic_.Atomic__xaddint32.xaddint32(_ptr, _delta);
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xaddint64(_ptr:stdgo.Pointer<stdgo.GoInt64>, _delta:stdgo.GoInt64):stdgo.GoInt64 return _internal.runtime.internal.atomic_.Atomic__xaddint64.xaddint64(_ptr, _delta);
}

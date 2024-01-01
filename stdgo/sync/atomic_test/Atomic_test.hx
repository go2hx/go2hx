package stdgo.sync.atomic_test;
import stdgo.sync.atomic_.Atomic_;
import stdgo.sync.atomic_.Atomic_;
import stdgo.sync.atomic_.Atomic_;
/**
    
    
    
**/
var _hammer32 : stdgo.GoMap<stdgo.GoString, (stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, stdgo.StdGoTypes.GoInt) -> Void> = ({
        final x = new stdgo.GoMap.GoStringMap<(stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, stdgo.StdGoTypes.GoInt) -> Void>();
        x.__defaultValue__ = () -> null;
        @:mergeBlock {
            x.set(("SwapInt32" : stdgo.GoString), _hammerSwapInt32);
            x.set(("SwapUint32" : stdgo.GoString), _hammerSwapUint32);
            x.set(("SwapUintptr" : stdgo.GoString), _hammerSwapUintptr32);
            x.set(("AddInt32" : stdgo.GoString), _hammerAddInt32);
            x.set(("AddUint32" : stdgo.GoString), _hammerAddUint32);
            x.set(("AddUintptr" : stdgo.GoString), _hammerAddUintptr32);
            x.set(("CompareAndSwapInt32" : stdgo.GoString), _hammerCompareAndSwapInt32);
            x.set(("CompareAndSwapUint32" : stdgo.GoString), _hammerCompareAndSwapUint32);
            x.set(("CompareAndSwapUintptr" : stdgo.GoString), _hammerCompareAndSwapUintptr32);
            x.set(("SwapInt32Method" : stdgo.GoString), _hammerSwapInt32Method);
            x.set(("SwapUint32Method" : stdgo.GoString), _hammerSwapUint32Method);
            x.set(("SwapUintptrMethod" : stdgo.GoString), _hammerSwapUintptr32Method);
            x.set(("AddInt32Method" : stdgo.GoString), _hammerAddInt32Method);
            x.set(("AddUint32Method" : stdgo.GoString), _hammerAddUint32Method);
            x.set(("AddUintptrMethod" : stdgo.GoString), _hammerAddUintptr32Method);
            x.set(("CompareAndSwapInt32Method" : stdgo.GoString), _hammerCompareAndSwapInt32Method);
            x.set(("CompareAndSwapUint32Method" : stdgo.GoString), _hammerCompareAndSwapUint32Method);
            x.set(("CompareAndSwapUintptrMethod" : stdgo.GoString), _hammerCompareAndSwapUintptr32Method);
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, (stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, stdgo.StdGoTypes.GoInt) -> Void>);
/**
    
    
    
**/
var _hammer64 : stdgo.GoMap<stdgo.GoString, (stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, stdgo.StdGoTypes.GoInt) -> Void> = ({
        final x = new stdgo.GoMap.GoStringMap<(stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, stdgo.StdGoTypes.GoInt) -> Void>();
        x.__defaultValue__ = () -> null;
        @:mergeBlock {
            x.set(("SwapInt64" : stdgo.GoString), _hammerSwapInt64);
            x.set(("SwapUint64" : stdgo.GoString), _hammerSwapUint64);
            x.set(("SwapUintptr" : stdgo.GoString), _hammerSwapUintptr64);
            x.set(("AddInt64" : stdgo.GoString), _hammerAddInt64);
            x.set(("AddUint64" : stdgo.GoString), _hammerAddUint64);
            x.set(("AddUintptr" : stdgo.GoString), _hammerAddUintptr64);
            x.set(("CompareAndSwapInt64" : stdgo.GoString), _hammerCompareAndSwapInt64);
            x.set(("CompareAndSwapUint64" : stdgo.GoString), _hammerCompareAndSwapUint64);
            x.set(("CompareAndSwapUintptr" : stdgo.GoString), _hammerCompareAndSwapUintptr64);
            x.set(("SwapInt64Method" : stdgo.GoString), _hammerSwapInt64Method);
            x.set(("SwapUint64Method" : stdgo.GoString), _hammerSwapUint64Method);
            x.set(("SwapUintptrMethod" : stdgo.GoString), _hammerSwapUintptr64Method);
            x.set(("AddInt64Method" : stdgo.GoString), _hammerAddInt64Method);
            x.set(("AddUint64Method" : stdgo.GoString), _hammerAddUint64Method);
            x.set(("AddUintptrMethod" : stdgo.GoString), _hammerAddUintptr64Method);
            x.set(("CompareAndSwapInt64Method" : stdgo.GoString), _hammerCompareAndSwapInt64Method);
            x.set(("CompareAndSwapUint64Method" : stdgo.GoString), _hammerCompareAndSwapUint64Method);
            x.set(("CompareAndSwapUintptrMethod" : stdgo.GoString), _hammerCompareAndSwapUintptr64Method);
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, (stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, stdgo.StdGoTypes.GoInt) -> Void>);
/**
    
    
    
**/
var value_SwapTests : stdgo.Slice<T__struct_14> = (new stdgo.Slice<T__struct_14>(4, 4, ({ _init : (null : stdgo.StdGoTypes.AnyInterface), _new : (null : stdgo.StdGoTypes.AnyInterface), _want : (null : stdgo.StdGoTypes.AnyInterface), _err : stdgo.Go.toInterface(("sync/atomic: swap of nil value into Value" : stdgo.GoString)) } : T__struct_14), ({ _init : (null : stdgo.StdGoTypes.AnyInterface), _new : stdgo.Go.toInterface(true), _want : (null : stdgo.StdGoTypes.AnyInterface), _err : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_14), ({ _init : stdgo.Go.toInterface(true), _new : stdgo.Go.toInterface(stdgo.Go.str()), _want : (null : stdgo.StdGoTypes.AnyInterface), _err : stdgo.Go.toInterface(("sync/atomic: swap of inconsistently typed value into Value" : stdgo.GoString)) } : T__struct_14), ({ _init : stdgo.Go.toInterface(true), _new : stdgo.Go.toInterface(false), _want : stdgo.Go.toInterface(true), _err : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_14)) : stdgo.Slice<T__struct_14>);
/**
    
    
    
**/
var _heapA : T__struct_15 = ({ _uint : (0u32 : stdgo.StdGoTypes.GoUInt) } : T__struct_15);
/**
    
    
    
**/
var _heapB : T__struct_15 = ({ _uint : (0u32 : stdgo.StdGoTypes.GoUInt) } : T__struct_15);
/**
    
    
    
**/
var value_CompareAndSwapTests : stdgo.Slice<T__struct_16> = (new stdgo.Slice<T__struct_16>(8, 8, ({ _init : (null : stdgo.StdGoTypes.AnyInterface), _new : (null : stdgo.StdGoTypes.AnyInterface), _old : (null : stdgo.StdGoTypes.AnyInterface), _want : false, _err : stdgo.Go.toInterface(("sync/atomic: compare and swap of nil value into Value" : stdgo.GoString)) } : T__struct_16), ({ _init : (null : stdgo.StdGoTypes.AnyInterface), _new : stdgo.Go.toInterface(true), _old : stdgo.Go.toInterface(stdgo.Go.str()), _want : false, _err : stdgo.Go.toInterface(("sync/atomic: compare and swap of inconsistently typed values into Value" : stdgo.GoString)) } : T__struct_16), ({ _init : (null : stdgo.StdGoTypes.AnyInterface), _new : stdgo.Go.toInterface(true), _old : stdgo.Go.toInterface(true), _want : false, _err : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_16), ({ _init : (null : stdgo.StdGoTypes.AnyInterface), _new : stdgo.Go.toInterface(true), _old : (null : stdgo.StdGoTypes.AnyInterface), _want : true, _err : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_16), ({ _init : stdgo.Go.toInterface(true), _new : stdgo.Go.toInterface(stdgo.Go.str()), _old : (null : stdgo.StdGoTypes.AnyInterface), _want : false, _err : stdgo.Go.toInterface(("sync/atomic: compare and swap of inconsistently typed value into Value" : stdgo.GoString)) } : T__struct_16), ({ _init : stdgo.Go.toInterface(true), _new : stdgo.Go.toInterface(true), _old : stdgo.Go.toInterface(false), _want : false, _err : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_16), ({ _init : stdgo.Go.toInterface(true), _new : stdgo.Go.toInterface(true), _old : stdgo.Go.toInterface(true), _want : true, _err : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_16), ({ _init : stdgo.Go.toInterface(stdgo.Go.asInterface(_heapA)), _new : stdgo.Go.toInterface(stdgo.Go.asInterface(({ _uint : (1u32 : stdgo.StdGoTypes.GoUInt) } : T__struct_15))), _old : stdgo.Go.toInterface(stdgo.Go.asInterface(_heapB)), _want : true, _err : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_16)) : stdgo.Slice<T__struct_16>);
/**
    
    
    
**/
final _magic32 : stdgo.StdGoTypes.GoUInt64 = (233684719i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _magic64 : stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
var _global = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 1024) (0 : stdgo.StdGoTypes.GoUInt8)]);
/**
    
    
    
**/
final _arch32 : Bool = true;
/**
    // Test that this compiles.
    // When atomic.Pointer used _ [0]T, it did not.
    
    
**/
@:structInit class List {
    public var next : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.sync.atomic_test.Atomic_test.List> = ({} : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.sync.atomic_test.Atomic_test.List>);
    public function new(?next:stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.sync.atomic_test.Atomic_test.List>) {
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new List(next);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _before : stdgo.StdGoTypes.GoInt32;
    public var _i : stdgo.StdGoTypes.GoInt32;
    public var _after : stdgo.StdGoTypes.GoInt32;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _before : stdgo.StdGoTypes.GoInt32;
    public var _i : stdgo.sync.atomic_.Atomic_.Int32;
    public var _after : stdgo.StdGoTypes.GoInt32;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _before : stdgo.StdGoTypes.GoUInt32;
    public var _i : stdgo.StdGoTypes.GoUInt32;
    public var _after : stdgo.StdGoTypes.GoUInt32;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _before : stdgo.StdGoTypes.GoUInt32;
    public var _i : stdgo.sync.atomic_.Atomic_.Uint32;
    public var _after : stdgo.StdGoTypes.GoUInt32;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _before : stdgo.StdGoTypes.GoInt64;
    public var _i : stdgo.StdGoTypes.GoInt64;
    public var _after : stdgo.StdGoTypes.GoInt64;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _before : stdgo.StdGoTypes.GoInt64;
    public var _i : stdgo.sync.atomic_.Atomic_.Int64_;
    public var _after : stdgo.StdGoTypes.GoInt64;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _before : stdgo.StdGoTypes.GoUInt64;
    public var _i : stdgo.StdGoTypes.GoUInt64;
    public var _after : stdgo.StdGoTypes.GoUInt64;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _before : stdgo.StdGoTypes.GoUInt64;
    public var _i : stdgo.sync.atomic_.Atomic_.Uint64;
    public var _after : stdgo.StdGoTypes.GoUInt64;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _before : stdgo.StdGoTypes.GoUIntptr;
    public var _i : stdgo.StdGoTypes.GoUIntptr;
    public var _after : stdgo.StdGoTypes.GoUIntptr;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_9>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_9_static_extension) typedef T__struct_9 = {
    public var _before : stdgo.StdGoTypes.GoUIntptr;
    public var _i : stdgo.sync.atomic_.Atomic_.Uintptr;
    public var _after : stdgo.StdGoTypes.GoUIntptr;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_10>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _before : stdgo.StdGoTypes.GoUIntptr;
    public var _i : stdgo.unsafe.Unsafe.UnsafePointer;
    public var _after : stdgo.StdGoTypes.GoUIntptr;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_11>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _before : stdgo.StdGoTypes.GoUIntptr;
    public var _i : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.GoUInt8>;
    public var _after : stdgo.StdGoTypes.GoUIntptr;
};
class T__struct_12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_12>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_12_static_extension) typedef T__struct_12 = {
    @:optional
    public var __25 : stdgo.StdGoTypes.GoUInt32;
    public var _i : stdgo.sync.atomic_.Atomic_.Int64_;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_13>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_13_static_extension) typedef T__struct_13 = {
    @:optional
    public var __31 : stdgo.StdGoTypes.GoUInt32;
    public var _i : stdgo.sync.atomic_.Atomic_.Uint64;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_14>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_14_static_extension) typedef T__struct_14 = {
    public var _init : stdgo.StdGoTypes.AnyInterface;
    public var _new : stdgo.StdGoTypes.AnyInterface;
    public var _want : stdgo.StdGoTypes.AnyInterface;
    public var _err : stdgo.StdGoTypes.AnyInterface;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_15>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_15_static_extension) typedef T__struct_15 = {
    @:embedded
    public var _uint : stdgo.StdGoTypes.GoUInt;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.atomic_test.Atomic_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo.sync.atomic_test.Atomic_test.T__struct_16_static_extension) typedef T__struct_16 = {
    public var _init : stdgo.StdGoTypes.AnyInterface;
    public var _new : stdgo.StdGoTypes.AnyInterface;
    public var _old : stdgo.StdGoTypes.AnyInterface;
    public var _want : Bool;
    public var _err : stdgo.StdGoTypes.AnyInterface;
};
function testSwapInt32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_0 = ({ _before : (0 : stdgo.StdGoTypes.GoInt32), _i : (0 : stdgo.StdGoTypes.GoInt32), _after : (0 : stdgo.StdGoTypes.GoInt32) } : T__struct_0);
        _x._before = (233684719 : stdgo.StdGoTypes.GoInt32);
        _x._after = (233684719 : stdgo.StdGoTypes.GoInt32);
        var _j:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
        {
            var _delta:stdgo.StdGoTypes.GoInt32 = (1 : stdgo.StdGoTypes.GoInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoInt32 = swapInt32(stdgo.Go.pointer(_x._i), _delta);
                if ((_x._i != _delta) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if ((_x._before != (233684719 : stdgo.StdGoTypes.GoInt32)) || (_x._after != (233684719 : stdgo.StdGoTypes.GoInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testSwapInt32Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_1 = ({ _before : (0 : stdgo.StdGoTypes.GoInt32), _i : ({} : stdgo.sync.atomic_.Atomic_.Int32), _after : (0 : stdgo.StdGoTypes.GoInt32) } : T__struct_1);
        _x._before = (233684719 : stdgo.StdGoTypes.GoInt32);
        _x._after = (233684719 : stdgo.StdGoTypes.GoInt32);
        var _j:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
        {
            var _delta:stdgo.StdGoTypes.GoInt32 = (1 : stdgo.StdGoTypes.GoInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoInt32 = _x._i.swap(_delta);
                if ((_x._i.load() != _delta) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if ((_x._before != (233684719 : stdgo.StdGoTypes.GoInt32)) || (_x._after != (233684719 : stdgo.StdGoTypes.GoInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testSwapUint32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_2 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt32), _i : (0 : stdgo.StdGoTypes.GoUInt32), _after : (0 : stdgo.StdGoTypes.GoUInt32) } : T__struct_2);
        _x._before = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        _x._after = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        var _j:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        {
            var _delta:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUInt32 = swapUint32(stdgo.Go.pointer(_x._i), _delta);
                if ((_x._i != _delta) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if ((_x._before != (233684719u32 : stdgo.StdGoTypes.GoUInt32)) || (_x._after != (233684719u32 : stdgo.StdGoTypes.GoUInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testSwapUint32Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_3 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt32), _i : ({} : stdgo.sync.atomic_.Atomic_.Uint32), _after : (0 : stdgo.StdGoTypes.GoUInt32) } : T__struct_3);
        _x._before = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        _x._after = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        var _j:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        {
            var _delta:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUInt32 = _x._i.swap(_delta);
                if ((_x._i.load() != _delta) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if ((_x._before != (233684719u32 : stdgo.StdGoTypes.GoUInt32)) || (_x._after != (233684719u32 : stdgo.StdGoTypes.GoUInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testSwapInt64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_4 = ({ _before : (0 : stdgo.StdGoTypes.GoInt64), _i : (0 : stdgo.StdGoTypes.GoInt64), _after : (0 : stdgo.StdGoTypes.GoInt64) } : T__struct_4);
        var _magic64:stdgo.StdGoTypes.GoInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64);
        {
            var _delta:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoInt64 = swapInt64(stdgo.Go.pointer(_x._i), _delta);
                if ((_x._i != _delta) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testSwapInt64Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_5 = ({ _before : (0 : stdgo.StdGoTypes.GoInt64), _i : ({} : stdgo.sync.atomic_.Atomic_.Int64_), _after : (0 : stdgo.StdGoTypes.GoInt64) } : T__struct_5);
        var _magic64:stdgo.StdGoTypes.GoInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64);
        {
            var _delta:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoInt64 = _x._i.swap(_delta);
                if ((_x._i.load() != _delta) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testSwapUint64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_6 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt64), _i : (0 : stdgo.StdGoTypes.GoUInt64), _after : (0 : stdgo.StdGoTypes.GoUInt64) } : T__struct_6);
        var _magic64:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
        {
            var _delta:stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUInt64 = swapUint64(stdgo.Go.pointer(_x._i), _delta);
                if ((_x._i != _delta) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testSwapUint64Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_7 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt64), _i : ({} : stdgo.sync.atomic_.Atomic_.Uint64), _after : (0 : stdgo.StdGoTypes.GoUInt64) } : T__struct_7);
        var _magic64:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
        {
            var _delta:stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUInt64 = _x._i.swap(_delta);
                if ((_x._i.load() != _delta) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testSwapUintptr(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_8 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : (0 : stdgo.StdGoTypes.GoUIntptr), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_8);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.StdGoTypes.GoUIntptr = (0 : stdgo.StdGoTypes.GoUIntptr);
        {
            var _delta:stdgo.StdGoTypes.GoUIntptr = (1 : stdgo.StdGoTypes.GoUIntptr);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUIntptr = swapUintptr(stdgo.Go.pointer(_x._i), _delta);
                if ((_x._i != _delta) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testSwapUintptrMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_9 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : ({} : stdgo.sync.atomic_.Atomic_.Uintptr), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_9);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.StdGoTypes.GoUIntptr = (0 : stdgo.StdGoTypes.GoUIntptr);
        {
            var _delta:stdgo.StdGoTypes.GoUIntptr = (1 : stdgo.StdGoTypes.GoUIntptr);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUIntptr = _x._i.swap(_delta);
                if ((_x._i.load() != _delta) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function _testPointers():stdgo.Slice<stdgo.unsafe.Unsafe.UnsafePointer> {
        var _pointers:stdgo.Slice<stdgo.unsafe.Unsafe.UnsafePointer> = (null : stdgo.Slice<stdgo.unsafe.Unsafe.UnsafePointer>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                _pointers = (_pointers.__append__((stdgo.Go.toInterface(stdgo.Go.pointer(_global[(((1 : stdgo.StdGoTypes.GoInt) << _i) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer)));
            });
        };
        _pointers = (_pointers.__append__((stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoUInt8))) : stdgo.unsafe.Unsafe.UnsafePointer)));
        _pointers = (_pointers.__append__(@:default_value null));
        return _pointers;
    }
function testSwapPointer(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_10 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : @:default_value null, _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_10);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.unsafe.Unsafe.UnsafePointer = @:default_value null;
        for (__0 => _p in _testPointers()) {
            var _k:stdgo.unsafe.Unsafe.UnsafePointer = swapPointer(stdgo.Go.pointer(_x._i), _p);
            if ((_x._i != _p) || (_k != _j)) {
                _t.fatalf(("p=%p i=%p j=%p k=%p" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
            };
            _j = _p;
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testSwapPointerMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_11 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : ({} : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.GoUInt8>), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_11);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.Pointer<stdgo.StdGoTypes.GoByte> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>);
        for (__0 => _p in _testPointers()) {
            var _p = (_p.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoByte>);
            var _k = _x._i.swap((0 : stdgo.StdGoTypes.GoUInt8), _p);
            if ((_x._i.load((0 : stdgo.StdGoTypes.GoUInt8)) != _p) || (_k != _j)) {
                _t.fatalf(("p=%p i=%p j=%p k=%p" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_x._i.load((0 : stdgo.StdGoTypes.GoUInt8))), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
            };
            _j = _p;
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testAddInt32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_0 = ({ _before : (0 : stdgo.StdGoTypes.GoInt32), _i : (0 : stdgo.StdGoTypes.GoInt32), _after : (0 : stdgo.StdGoTypes.GoInt32) } : T__struct_0);
        _x._before = (233684719 : stdgo.StdGoTypes.GoInt32);
        _x._after = (233684719 : stdgo.StdGoTypes.GoInt32);
        var _j:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
        {
            var _delta:stdgo.StdGoTypes.GoInt32 = (1 : stdgo.StdGoTypes.GoInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoInt32 = addInt32(stdgo.Go.pointer(_x._i), _delta);
                _j = _j + (_delta);
                if ((_x._i != _j) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if ((_x._before != (233684719 : stdgo.StdGoTypes.GoInt32)) || (_x._after != (233684719 : stdgo.StdGoTypes.GoInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testAddInt32Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_1 = ({ _before : (0 : stdgo.StdGoTypes.GoInt32), _i : ({} : stdgo.sync.atomic_.Atomic_.Int32), _after : (0 : stdgo.StdGoTypes.GoInt32) } : T__struct_1);
        _x._before = (233684719 : stdgo.StdGoTypes.GoInt32);
        _x._after = (233684719 : stdgo.StdGoTypes.GoInt32);
        var _j:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
        {
            var _delta:stdgo.StdGoTypes.GoInt32 = (1 : stdgo.StdGoTypes.GoInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoInt32 = _x._i.add(_delta);
                _j = _j + (_delta);
                if ((_x._i.load() != _j) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if ((_x._before != (233684719 : stdgo.StdGoTypes.GoInt32)) || (_x._after != (233684719 : stdgo.StdGoTypes.GoInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testAddUint32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_2 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt32), _i : (0 : stdgo.StdGoTypes.GoUInt32), _after : (0 : stdgo.StdGoTypes.GoUInt32) } : T__struct_2);
        _x._before = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        _x._after = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        var _j:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        {
            var _delta:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUInt32 = addUint32(stdgo.Go.pointer(_x._i), _delta);
                _j = _j + (_delta);
                if ((_x._i != _j) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if ((_x._before != (233684719u32 : stdgo.StdGoTypes.GoUInt32)) || (_x._after != (233684719u32 : stdgo.StdGoTypes.GoUInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testAddUint32Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_3 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt32), _i : ({} : stdgo.sync.atomic_.Atomic_.Uint32), _after : (0 : stdgo.StdGoTypes.GoUInt32) } : T__struct_3);
        _x._before = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        _x._after = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        var _j:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        {
            var _delta:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUInt32 = _x._i.add(_delta);
                _j = _j + (_delta);
                if ((_x._i.load() != _j) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if ((_x._before != (233684719u32 : stdgo.StdGoTypes.GoUInt32)) || (_x._after != (233684719u32 : stdgo.StdGoTypes.GoUInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testAddInt64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_4 = ({ _before : (0 : stdgo.StdGoTypes.GoInt64), _i : (0 : stdgo.StdGoTypes.GoInt64), _after : (0 : stdgo.StdGoTypes.GoInt64) } : T__struct_4);
        var _magic64:stdgo.StdGoTypes.GoInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64);
        {
            var _delta:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoInt64 = addInt64(stdgo.Go.pointer(_x._i), _delta);
                _j = _j + (_delta);
                if ((_x._i != _j) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testAddInt64Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_5 = ({ _before : (0 : stdgo.StdGoTypes.GoInt64), _i : ({} : stdgo.sync.atomic_.Atomic_.Int64_), _after : (0 : stdgo.StdGoTypes.GoInt64) } : T__struct_5);
        var _magic64:stdgo.StdGoTypes.GoInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64);
        {
            var _delta:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoInt64 = _x._i.add(_delta);
                _j = _j + (_delta);
                if ((_x._i.load() != _j) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testAddUint64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_6 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt64), _i : (0 : stdgo.StdGoTypes.GoUInt64), _after : (0 : stdgo.StdGoTypes.GoUInt64) } : T__struct_6);
        var _magic64:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
        {
            var _delta:stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUInt64 = addUint64(stdgo.Go.pointer(_x._i), _delta);
                _j = _j + (_delta);
                if ((_x._i != _j) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testAddUint64Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_7 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt64), _i : ({} : stdgo.sync.atomic_.Atomic_.Uint64), _after : (0 : stdgo.StdGoTypes.GoUInt64) } : T__struct_7);
        var _magic64:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
        {
            var _delta:stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUInt64 = _x._i.add(_delta);
                _j = _j + (_delta);
                if ((_x._i.load() != _j) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testAddUintptr(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_8 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : (0 : stdgo.StdGoTypes.GoUIntptr), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_8);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.StdGoTypes.GoUIntptr = (0 : stdgo.StdGoTypes.GoUIntptr);
        {
            var _delta:stdgo.StdGoTypes.GoUIntptr = (1 : stdgo.StdGoTypes.GoUIntptr);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUIntptr = addUintptr(stdgo.Go.pointer(_x._i), _delta);
                _j = _j + (_delta);
                if ((_x._i != _j) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testAddUintptrMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_9 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : ({} : stdgo.sync.atomic_.Atomic_.Uintptr), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_9);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.StdGoTypes.GoUIntptr = (0 : stdgo.StdGoTypes.GoUIntptr);
        {
            var _delta:stdgo.StdGoTypes.GoUIntptr = (1 : stdgo.StdGoTypes.GoUIntptr);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUIntptr = _x._i.add(_delta);
                _j = _j + (_delta);
                if ((_x._i.load() != _j) || (_k != _j)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testCompareAndSwapInt32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_0 = ({ _before : (0 : stdgo.StdGoTypes.GoInt32), _i : (0 : stdgo.StdGoTypes.GoInt32), _after : (0 : stdgo.StdGoTypes.GoInt32) } : T__struct_0);
        _x._before = (233684719 : stdgo.StdGoTypes.GoInt32);
        _x._after = (233684719 : stdgo.StdGoTypes.GoInt32);
        {
            var _val:stdgo.StdGoTypes.GoInt32 = (1 : stdgo.StdGoTypes.GoInt32);
            stdgo.Go.cfor((_val + _val) > _val, _val = _val + (_val), {
                _x._i = _val;
                if (!compareAndSwapInt32(stdgo.Go.pointer(_x._i), _val, _val + (1 : stdgo.StdGoTypes.GoInt32))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (1 : stdgo.StdGoTypes.GoInt32)));
                };
                if (_x._i != (_val + (1 : stdgo.StdGoTypes.GoInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_val + (1 : stdgo.StdGoTypes.GoInt32)));
                };
                _x._i = _val + (1 : stdgo.StdGoTypes.GoInt32);
                if (compareAndSwapInt32(stdgo.Go.pointer(_x._i), _val, _val + (2 : stdgo.StdGoTypes.GoInt32))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (2 : stdgo.StdGoTypes.GoInt32)));
                };
                if (_x._i != (_val + (1 : stdgo.StdGoTypes.GoInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_val + (1 : stdgo.StdGoTypes.GoInt32)));
                };
            });
        };
        if ((_x._before != (233684719 : stdgo.StdGoTypes.GoInt32)) || (_x._after != (233684719 : stdgo.StdGoTypes.GoInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testCompareAndSwapInt32Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_1 = ({ _before : (0 : stdgo.StdGoTypes.GoInt32), _i : ({} : stdgo.sync.atomic_.Atomic_.Int32), _after : (0 : stdgo.StdGoTypes.GoInt32) } : T__struct_1);
        _x._before = (233684719 : stdgo.StdGoTypes.GoInt32);
        _x._after = (233684719 : stdgo.StdGoTypes.GoInt32);
        {
            var _val:stdgo.StdGoTypes.GoInt32 = (1 : stdgo.StdGoTypes.GoInt32);
            stdgo.Go.cfor((_val + _val) > _val, _val = _val + (_val), {
                _x._i.store(_val);
                if (!_x._i.compareAndSwap(_val, _val + (1 : stdgo.StdGoTypes.GoInt32))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (1 : stdgo.StdGoTypes.GoInt32)));
                };
                if (_x._i.load() != (_val + (1 : stdgo.StdGoTypes.GoInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_val + (1 : stdgo.StdGoTypes.GoInt32)));
                };
                _x._i.store(_val + (1 : stdgo.StdGoTypes.GoInt32));
                if (_x._i.compareAndSwap(_val, _val + (2 : stdgo.StdGoTypes.GoInt32))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (2 : stdgo.StdGoTypes.GoInt32)));
                };
                if (_x._i.load() != (_val + (1 : stdgo.StdGoTypes.GoInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_val + (1 : stdgo.StdGoTypes.GoInt32)));
                };
            });
        };
        if ((_x._before != (233684719 : stdgo.StdGoTypes.GoInt32)) || (_x._after != (233684719 : stdgo.StdGoTypes.GoInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testCompareAndSwapUint32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_2 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt32), _i : (0 : stdgo.StdGoTypes.GoUInt32), _after : (0 : stdgo.StdGoTypes.GoUInt32) } : T__struct_2);
        _x._before = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        _x._after = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        {
            var _val:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32);
            stdgo.Go.cfor((_val + _val) > _val, _val = _val + (_val), {
                _x._i = _val;
                if (!compareAndSwapUint32(stdgo.Go.pointer(_x._i), _val, _val + (1u32 : stdgo.StdGoTypes.GoUInt32))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (1u32 : stdgo.StdGoTypes.GoUInt32)));
                };
                if (_x._i != (_val + (1u32 : stdgo.StdGoTypes.GoUInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_val + (1u32 : stdgo.StdGoTypes.GoUInt32)));
                };
                _x._i = _val + (1u32 : stdgo.StdGoTypes.GoUInt32);
                if (compareAndSwapUint32(stdgo.Go.pointer(_x._i), _val, _val + (2u32 : stdgo.StdGoTypes.GoUInt32))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (2u32 : stdgo.StdGoTypes.GoUInt32)));
                };
                if (_x._i != (_val + (1u32 : stdgo.StdGoTypes.GoUInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_val + (1u32 : stdgo.StdGoTypes.GoUInt32)));
                };
            });
        };
        if ((_x._before != (233684719u32 : stdgo.StdGoTypes.GoUInt32)) || (_x._after != (233684719u32 : stdgo.StdGoTypes.GoUInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testCompareAndSwapUint32Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_3 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt32), _i : ({} : stdgo.sync.atomic_.Atomic_.Uint32), _after : (0 : stdgo.StdGoTypes.GoUInt32) } : T__struct_3);
        _x._before = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        _x._after = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        {
            var _val:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32);
            stdgo.Go.cfor((_val + _val) > _val, _val = _val + (_val), {
                _x._i.store(_val);
                if (!_x._i.compareAndSwap(_val, _val + (1u32 : stdgo.StdGoTypes.GoUInt32))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (1u32 : stdgo.StdGoTypes.GoUInt32)));
                };
                if (_x._i.load() != (_val + (1u32 : stdgo.StdGoTypes.GoUInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_val + (1u32 : stdgo.StdGoTypes.GoUInt32)));
                };
                _x._i.store(_val + (1u32 : stdgo.StdGoTypes.GoUInt32));
                if (_x._i.compareAndSwap(_val, _val + (2u32 : stdgo.StdGoTypes.GoUInt32))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (2u32 : stdgo.StdGoTypes.GoUInt32)));
                };
                if (_x._i.load() != (_val + (1u32 : stdgo.StdGoTypes.GoUInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_val + (1u32 : stdgo.StdGoTypes.GoUInt32)));
                };
            });
        };
        if ((_x._before != (233684719u32 : stdgo.StdGoTypes.GoUInt32)) || (_x._after != (233684719u32 : stdgo.StdGoTypes.GoUInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testCompareAndSwapInt64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_4 = ({ _before : (0 : stdgo.StdGoTypes.GoInt64), _i : (0 : stdgo.StdGoTypes.GoInt64), _after : (0 : stdgo.StdGoTypes.GoInt64) } : T__struct_4);
        var _magic64:stdgo.StdGoTypes.GoInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _val:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
            stdgo.Go.cfor((_val + _val) > _val, _val = _val + (_val), {
                _x._i = _val;
                if (!compareAndSwapInt64(stdgo.Go.pointer(_x._i), _val, _val + (1i64 : stdgo.StdGoTypes.GoInt64))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (1i64 : stdgo.StdGoTypes.GoInt64)));
                };
                if (_x._i != (_val + (1i64 : stdgo.StdGoTypes.GoInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_val + (1i64 : stdgo.StdGoTypes.GoInt64)));
                };
                _x._i = _val + (1i64 : stdgo.StdGoTypes.GoInt64);
                if (compareAndSwapInt64(stdgo.Go.pointer(_x._i), _val, _val + (2i64 : stdgo.StdGoTypes.GoInt64))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (2i64 : stdgo.StdGoTypes.GoInt64)));
                };
                if (_x._i != (_val + (1i64 : stdgo.StdGoTypes.GoInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_val + (1i64 : stdgo.StdGoTypes.GoInt64)));
                };
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testCompareAndSwapInt64Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_5 = ({ _before : (0 : stdgo.StdGoTypes.GoInt64), _i : ({} : stdgo.sync.atomic_.Atomic_.Int64_), _after : (0 : stdgo.StdGoTypes.GoInt64) } : T__struct_5);
        var _magic64:stdgo.StdGoTypes.GoInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _val:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
            stdgo.Go.cfor((_val + _val) > _val, _val = _val + (_val), {
                _x._i.store(_val);
                if (!_x._i.compareAndSwap(_val, _val + (1i64 : stdgo.StdGoTypes.GoInt64))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (1i64 : stdgo.StdGoTypes.GoInt64)));
                };
                if (_x._i.load() != (_val + (1i64 : stdgo.StdGoTypes.GoInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_val + (1i64 : stdgo.StdGoTypes.GoInt64)));
                };
                _x._i.store(_val + (1i64 : stdgo.StdGoTypes.GoInt64));
                if (_x._i.compareAndSwap(_val, _val + (2i64 : stdgo.StdGoTypes.GoInt64))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (2i64 : stdgo.StdGoTypes.GoInt64)));
                };
                if (_x._i.load() != (_val + (1i64 : stdgo.StdGoTypes.GoInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_val + (1i64 : stdgo.StdGoTypes.GoInt64)));
                };
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function _testCompareAndSwapUint64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _cas:(stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, stdgo.StdGoTypes.GoUInt64, stdgo.StdGoTypes.GoUInt64) -> Bool):Void {
        var _x:T__struct_6 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt64), _i : (0 : stdgo.StdGoTypes.GoUInt64), _after : (0 : stdgo.StdGoTypes.GoUInt64) } : T__struct_6);
        var _magic64:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _val:stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor((_val + _val) > _val, _val = _val + (_val), {
                _x._i = _val;
                if (!_cas(stdgo.Go.pointer(_x._i), _val, _val + (1i64 : stdgo.StdGoTypes.GoUInt64))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (1i64 : stdgo.StdGoTypes.GoUInt64)));
                };
                if (_x._i != (_val + (1i64 : stdgo.StdGoTypes.GoUInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_val + (1i64 : stdgo.StdGoTypes.GoUInt64)));
                };
                _x._i = _val + (1i64 : stdgo.StdGoTypes.GoUInt64);
                if (_cas(stdgo.Go.pointer(_x._i), _val, _val + (2i64 : stdgo.StdGoTypes.GoUInt64))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (2i64 : stdgo.StdGoTypes.GoUInt64)));
                };
                if (_x._i != (_val + (1i64 : stdgo.StdGoTypes.GoUInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_val + (1i64 : stdgo.StdGoTypes.GoUInt64)));
                };
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testCompareAndSwapUint64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testCompareAndSwapUint64(_t, compareAndSwapUint64);
    }
function testCompareAndSwapUint64Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_7 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt64), _i : ({} : stdgo.sync.atomic_.Atomic_.Uint64), _after : (0 : stdgo.StdGoTypes.GoUInt64) } : T__struct_7);
        var _magic64:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _val:stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor((_val + _val) > _val, _val = _val + (_val), {
                _x._i.store(_val);
                if (!_x._i.compareAndSwap(_val, _val + (1i64 : stdgo.StdGoTypes.GoUInt64))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (1i64 : stdgo.StdGoTypes.GoUInt64)));
                };
                if (_x._i.load() != (_val + (1i64 : stdgo.StdGoTypes.GoUInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_val + (1i64 : stdgo.StdGoTypes.GoUInt64)));
                };
                _x._i.store(_val + (1i64 : stdgo.StdGoTypes.GoUInt64));
                if (_x._i.compareAndSwap(_val, _val + (2i64 : stdgo.StdGoTypes.GoUInt64))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (2i64 : stdgo.StdGoTypes.GoUInt64)));
                };
                if (_x._i.load() != (_val + (1i64 : stdgo.StdGoTypes.GoUInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_val + (1i64 : stdgo.StdGoTypes.GoUInt64)));
                };
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testCompareAndSwapUintptr(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_8 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : (0 : stdgo.StdGoTypes.GoUIntptr), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_8);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        {
            var _val:stdgo.StdGoTypes.GoUIntptr = (1 : stdgo.StdGoTypes.GoUIntptr);
            stdgo.Go.cfor((_val + _val) > _val, _val = _val + (_val), {
                _x._i = _val;
                if (!compareAndSwapUintptr(stdgo.Go.pointer(_x._i), _val, _val + (1 : stdgo.StdGoTypes.GoUIntptr))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (1 : stdgo.StdGoTypes.GoUIntptr)));
                };
                if (_x._i != (_val + (1 : stdgo.StdGoTypes.GoUIntptr))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_val + (1 : stdgo.StdGoTypes.GoUIntptr)));
                };
                _x._i = _val + (1 : stdgo.StdGoTypes.GoUIntptr);
                if (compareAndSwapUintptr(stdgo.Go.pointer(_x._i), _val, _val + (2 : stdgo.StdGoTypes.GoUIntptr))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (2 : stdgo.StdGoTypes.GoUIntptr)));
                };
                if (_x._i != (_val + (1 : stdgo.StdGoTypes.GoUIntptr))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_val + (1 : stdgo.StdGoTypes.GoUIntptr)));
                };
            });
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testCompareAndSwapUintptrMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_9 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : ({} : stdgo.sync.atomic_.Atomic_.Uintptr), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_9);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        {
            var _val:stdgo.StdGoTypes.GoUIntptr = (1 : stdgo.StdGoTypes.GoUIntptr);
            stdgo.Go.cfor((_val + _val) > _val, _val = _val + (_val), {
                _x._i.store(_val);
                if (!_x._i.compareAndSwap(_val, _val + (1 : stdgo.StdGoTypes.GoUIntptr))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (1 : stdgo.StdGoTypes.GoUIntptr)));
                };
                if (_x._i.load() != (_val + (1 : stdgo.StdGoTypes.GoUIntptr))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_val + (1 : stdgo.StdGoTypes.GoUIntptr)));
                };
                _x._i.store(_val + (1 : stdgo.StdGoTypes.GoUIntptr));
                if (_x._i.compareAndSwap(_val, _val + (2 : stdgo.StdGoTypes.GoUIntptr))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_val + (2 : stdgo.StdGoTypes.GoUIntptr)));
                };
                if (_x._i.load() != (_val + (1 : stdgo.StdGoTypes.GoUIntptr))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_val + (1 : stdgo.StdGoTypes.GoUIntptr)));
                };
            });
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((_magicptr : stdgo.StdGoTypes.GoUIntptr)), stdgo.Go.toInterface((_magicptr : stdgo.StdGoTypes.GoUIntptr)));
        };
    }
function testCompareAndSwapPointer(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_10 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : @:default_value null, _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_10);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _q:stdgo.unsafe.Unsafe.UnsafePointer = (stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoUInt8))) : stdgo.unsafe.Unsafe.UnsafePointer);
        for (__0 => _p in _testPointers()) {
            _x._i = _p;
            if (!compareAndSwapPointer(stdgo.Go.pointer(_x._i), _p, _q)) {
                _t.fatalf(("should have swapped %p %p" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_q));
            };
            if (_x._i != (_q)) {
                _t.fatalf(("wrong x.i after swap: x.i=%p want %p" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_q));
            };
            if (compareAndSwapPointer(stdgo.Go.pointer(_x._i), _p, @:default_value null)) {
                _t.fatalf(("should not have swapped %p nil" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
            if (_x._i != (_q)) {
                _t.fatalf(("wrong x.i after swap: x.i=%p want %p" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_q));
            };
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testCompareAndSwapPointerMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_11 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : ({} : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.GoUInt8>), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_11);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _q = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoUInt8));
        for (__0 => _p in _testPointers()) {
            var _p = (_p.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoByte>);
            _x._i.store((0 : stdgo.StdGoTypes.GoUInt8), _p);
            if (!_x._i.compareAndSwap((0 : stdgo.StdGoTypes.GoUInt8), _p, _q)) {
                _t.fatalf(("should have swapped %p %p" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_q));
            };
            if (_x._i.load((0 : stdgo.StdGoTypes.GoUInt8)) != (_q)) {
                _t.fatalf(("wrong x.i after swap: x.i=%p want %p" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load((0 : stdgo.StdGoTypes.GoUInt8))), stdgo.Go.toInterface(_q));
            };
            if (_x._i.compareAndSwap((0 : stdgo.StdGoTypes.GoUInt8), _p, (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>))) {
                _t.fatalf(("should not have swapped %p nil" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
            if (_x._i.load((0 : stdgo.StdGoTypes.GoUInt8)) != (_q)) {
                _t.fatalf(("wrong x.i after swap: x.i=%p want %p" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load((0 : stdgo.StdGoTypes.GoUInt8))), stdgo.Go.toInterface(_q));
            };
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testLoadInt32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_0 = ({ _before : (0 : stdgo.StdGoTypes.GoInt32), _i : (0 : stdgo.StdGoTypes.GoInt32), _after : (0 : stdgo.StdGoTypes.GoInt32) } : T__struct_0);
        _x._before = (233684719 : stdgo.StdGoTypes.GoInt32);
        _x._after = (233684719 : stdgo.StdGoTypes.GoInt32);
        {
            var _delta:stdgo.StdGoTypes.GoInt32 = (1 : stdgo.StdGoTypes.GoInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoInt32 = loadInt32(stdgo.Go.pointer(_x._i));
                if (_k != (_x._i)) {
                    _t.fatalf(("delta=%d i=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_k));
                };
                _x._i = _x._i + (_delta);
            });
        };
        if ((_x._before != (233684719 : stdgo.StdGoTypes.GoInt32)) || (_x._after != (233684719 : stdgo.StdGoTypes.GoInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testLoadInt32Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_1 = ({ _before : (0 : stdgo.StdGoTypes.GoInt32), _i : ({} : stdgo.sync.atomic_.Atomic_.Int32), _after : (0 : stdgo.StdGoTypes.GoInt32) } : T__struct_1);
        _x._before = (233684719 : stdgo.StdGoTypes.GoInt32);
        _x._after = (233684719 : stdgo.StdGoTypes.GoInt32);
        var _want:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
        {
            var _delta:stdgo.StdGoTypes.GoInt32 = (1 : stdgo.StdGoTypes.GoInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoInt32 = _x._i.load();
                if (_k != (_want)) {
                    _t.fatalf(("delta=%d i=%d k=%d want=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_want));
                };
                _x._i.store(_k + _delta);
                _want = _k + _delta;
            });
        };
        if ((_x._before != (233684719 : stdgo.StdGoTypes.GoInt32)) || (_x._after != (233684719 : stdgo.StdGoTypes.GoInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testLoadUint32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_2 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt32), _i : (0 : stdgo.StdGoTypes.GoUInt32), _after : (0 : stdgo.StdGoTypes.GoUInt32) } : T__struct_2);
        _x._before = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        _x._after = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        {
            var _delta:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUInt32 = loadUint32(stdgo.Go.pointer(_x._i));
                if (_k != (_x._i)) {
                    _t.fatalf(("delta=%d i=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_k));
                };
                _x._i = _x._i + (_delta);
            });
        };
        if ((_x._before != (233684719u32 : stdgo.StdGoTypes.GoUInt32)) || (_x._after != (233684719u32 : stdgo.StdGoTypes.GoUInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testLoadUint32Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_3 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt32), _i : ({} : stdgo.sync.atomic_.Atomic_.Uint32), _after : (0 : stdgo.StdGoTypes.GoUInt32) } : T__struct_3);
        _x._before = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        _x._after = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        var _want:stdgo.StdGoTypes.GoUInt32 = (0u32 : stdgo.StdGoTypes.GoUInt32);
        {
            var _delta:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUInt32 = _x._i.load();
                if (_k != (_want)) {
                    _t.fatalf(("delta=%d i=%d k=%d want=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_want));
                };
                _x._i.store(_k + _delta);
                _want = _k + _delta;
            });
        };
        if ((_x._before != (233684719u32 : stdgo.StdGoTypes.GoUInt32)) || (_x._after != (233684719u32 : stdgo.StdGoTypes.GoUInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testLoadInt64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_4 = ({ _before : (0 : stdgo.StdGoTypes.GoInt64), _i : (0 : stdgo.StdGoTypes.GoInt64), _after : (0 : stdgo.StdGoTypes.GoInt64) } : T__struct_4);
        var _magic64:stdgo.StdGoTypes.GoInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _delta:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoInt64 = loadInt64(stdgo.Go.pointer(_x._i));
                if (_k != (_x._i)) {
                    _t.fatalf(("delta=%d i=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_k));
                };
                _x._i = _x._i + (_delta);
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testLoadInt64Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_5 = ({ _before : (0 : stdgo.StdGoTypes.GoInt64), _i : ({} : stdgo.sync.atomic_.Atomic_.Int64_), _after : (0 : stdgo.StdGoTypes.GoInt64) } : T__struct_5);
        var _magic64:stdgo.StdGoTypes.GoInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _want:stdgo.StdGoTypes.GoInt64 = (0i64 : stdgo.StdGoTypes.GoInt64);
        {
            var _delta:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoInt64 = _x._i.load();
                if (_k != (_want)) {
                    _t.fatalf(("delta=%d i=%d k=%d want=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_want));
                };
                _x._i.store(_k + _delta);
                _want = _k + _delta;
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testLoadUint64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_6 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt64), _i : (0 : stdgo.StdGoTypes.GoUInt64), _after : (0 : stdgo.StdGoTypes.GoUInt64) } : T__struct_6);
        var _magic64:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _delta:stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUInt64 = loadUint64(stdgo.Go.pointer(_x._i));
                if (_k != (_x._i)) {
                    _t.fatalf(("delta=%d i=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_k));
                };
                _x._i = _x._i + (_delta);
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testLoadUint64Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_7 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt64), _i : ({} : stdgo.sync.atomic_.Atomic_.Uint64), _after : (0 : stdgo.StdGoTypes.GoUInt64) } : T__struct_7);
        var _magic64:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _want:stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
        {
            var _delta:stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUInt64 = _x._i.load();
                if (_k != (_want)) {
                    _t.fatalf(("delta=%d i=%d k=%d want=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_want));
                };
                _x._i.store(_k + _delta);
                _want = _k + _delta;
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testLoadUintptr(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_8 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : (0 : stdgo.StdGoTypes.GoUIntptr), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_8);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        {
            var _delta:stdgo.StdGoTypes.GoUIntptr = (1 : stdgo.StdGoTypes.GoUIntptr);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUIntptr = loadUintptr(stdgo.Go.pointer(_x._i));
                if (_k != (_x._i)) {
                    _t.fatalf(("delta=%d i=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_k));
                };
                _x._i = _x._i + (_delta);
            });
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testLoadUintptrMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_9 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : ({} : stdgo.sync.atomic_.Atomic_.Uintptr), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_9);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _want:stdgo.StdGoTypes.GoUIntptr = (0 : stdgo.StdGoTypes.GoUIntptr);
        {
            var _delta:stdgo.StdGoTypes.GoUIntptr = (1 : stdgo.StdGoTypes.GoUIntptr);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                var _k:stdgo.StdGoTypes.GoUIntptr = _x._i.load();
                if (_k != (_want)) {
                    _t.fatalf(("delta=%d i=%d k=%d want=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_want));
                };
                _x._i.store(_k + _delta);
                _want = _k + _delta;
            });
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testLoadPointer(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_10 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : @:default_value null, _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_10);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        for (__0 => _p in _testPointers()) {
            _x._i = _p;
            var _k:stdgo.unsafe.Unsafe.UnsafePointer = loadPointer(stdgo.Go.pointer(_x._i));
            if (_k != (_p)) {
                _t.fatalf(("p=%x k=%x" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_k));
            };
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testLoadPointerMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_11 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : ({} : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.GoUInt8>), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_11);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        for (__0 => _p in _testPointers()) {
            var _p = (_p.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoByte>);
            _x._i.store((0 : stdgo.StdGoTypes.GoUInt8), _p);
            var _k = _x._i.load((0 : stdgo.StdGoTypes.GoUInt8));
            if (_k != (_p)) {
                _t.fatalf(("p=%x k=%x" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_k));
            };
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testStoreInt32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_0 = ({ _before : (0 : stdgo.StdGoTypes.GoInt32), _i : (0 : stdgo.StdGoTypes.GoInt32), _after : (0 : stdgo.StdGoTypes.GoInt32) } : T__struct_0);
        _x._before = (233684719 : stdgo.StdGoTypes.GoInt32);
        _x._after = (233684719 : stdgo.StdGoTypes.GoInt32);
        var _v:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
        {
            var _delta:stdgo.StdGoTypes.GoInt32 = (1 : stdgo.StdGoTypes.GoInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                storeInt32(stdgo.Go.pointer(_x._i), _v);
                if (_x._i != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_v));
                };
                _v = _v + (_delta);
            });
        };
        if ((_x._before != (233684719 : stdgo.StdGoTypes.GoInt32)) || (_x._after != (233684719 : stdgo.StdGoTypes.GoInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testStoreInt32Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_1 = ({ _before : (0 : stdgo.StdGoTypes.GoInt32), _i : ({} : stdgo.sync.atomic_.Atomic_.Int32), _after : (0 : stdgo.StdGoTypes.GoInt32) } : T__struct_1);
        _x._before = (233684719 : stdgo.StdGoTypes.GoInt32);
        _x._after = (233684719 : stdgo.StdGoTypes.GoInt32);
        var _v:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
        {
            var _delta:stdgo.StdGoTypes.GoInt32 = (1 : stdgo.StdGoTypes.GoInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                _x._i.store(_v);
                if (_x._i.load() != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_v));
                };
                _v = _v + (_delta);
            });
        };
        if ((_x._before != (233684719 : stdgo.StdGoTypes.GoInt32)) || (_x._after != (233684719 : stdgo.StdGoTypes.GoInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testStoreUint32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_2 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt32), _i : (0 : stdgo.StdGoTypes.GoUInt32), _after : (0 : stdgo.StdGoTypes.GoUInt32) } : T__struct_2);
        _x._before = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        _x._after = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        var _v:stdgo.StdGoTypes.GoUInt32 = (0u32 : stdgo.StdGoTypes.GoUInt32);
        {
            var _delta:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                storeUint32(stdgo.Go.pointer(_x._i), _v);
                if (_x._i != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_v));
                };
                _v = _v + (_delta);
            });
        };
        if ((_x._before != (233684719u32 : stdgo.StdGoTypes.GoUInt32)) || (_x._after != (233684719u32 : stdgo.StdGoTypes.GoUInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testStoreUint32Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_3 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt32), _i : ({} : stdgo.sync.atomic_.Atomic_.Uint32), _after : (0 : stdgo.StdGoTypes.GoUInt32) } : T__struct_3);
        _x._before = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        _x._after = (233684719u32 : stdgo.StdGoTypes.GoUInt32);
        var _v:stdgo.StdGoTypes.GoUInt32 = (0u32 : stdgo.StdGoTypes.GoUInt32);
        {
            var _delta:stdgo.StdGoTypes.GoUInt32 = (1u32 : stdgo.StdGoTypes.GoUInt32);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                _x._i.store(_v);
                if (_x._i.load() != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_v));
                };
                _v = _v + (_delta);
            });
        };
        if ((_x._before != (233684719u32 : stdgo.StdGoTypes.GoUInt32)) || (_x._after != (233684719u32 : stdgo.StdGoTypes.GoUInt32))) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testStoreInt64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_4 = ({ _before : (0 : stdgo.StdGoTypes.GoInt64), _i : (0 : stdgo.StdGoTypes.GoInt64), _after : (0 : stdgo.StdGoTypes.GoInt64) } : T__struct_4);
        var _magic64:stdgo.StdGoTypes.GoInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _v:stdgo.StdGoTypes.GoInt64 = (0i64 : stdgo.StdGoTypes.GoInt64);
        {
            var _delta:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                storeInt64(stdgo.Go.pointer(_x._i), _v);
                if (_x._i != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_v));
                };
                _v = _v + (_delta);
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testStoreInt64Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_5 = ({ _before : (0 : stdgo.StdGoTypes.GoInt64), _i : ({} : stdgo.sync.atomic_.Atomic_.Int64_), _after : (0 : stdgo.StdGoTypes.GoInt64) } : T__struct_5);
        var _magic64:stdgo.StdGoTypes.GoInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _v:stdgo.StdGoTypes.GoInt64 = (0i64 : stdgo.StdGoTypes.GoInt64);
        {
            var _delta:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                _x._i.store(_v);
                if (_x._i.load() != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_v));
                };
                _v = _v + (_delta);
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testStoreUint64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_6 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt64), _i : (0 : stdgo.StdGoTypes.GoUInt64), _after : (0 : stdgo.StdGoTypes.GoUInt64) } : T__struct_6);
        var _magic64:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _v:stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
        {
            var _delta:stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                storeUint64(stdgo.Go.pointer(_x._i), _v);
                if (_x._i != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_v));
                };
                _v = _v + (_delta);
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testStoreUint64Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_7 = ({ _before : (0 : stdgo.StdGoTypes.GoUInt64), _i : ({} : stdgo.sync.atomic_.Atomic_.Uint64), _after : (0 : stdgo.StdGoTypes.GoUInt64) } : T__struct_7);
        var _magic64:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _v:stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
        {
            var _delta:stdgo.StdGoTypes.GoUInt64 = (1i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                _x._i.store(_v);
                if (_x._i.load() != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_v));
                };
                _v = _v + (_delta);
            });
        };
        if ((_x._before != _magic64) || (_x._after != _magic64)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testStoreUintptr(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_8 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : (0 : stdgo.StdGoTypes.GoUIntptr), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_8);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _v:stdgo.StdGoTypes.GoUIntptr = (0 : stdgo.StdGoTypes.GoUIntptr);
        {
            var _delta:stdgo.StdGoTypes.GoUIntptr = (1 : stdgo.StdGoTypes.GoUIntptr);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                storeUintptr(stdgo.Go.pointer(_x._i), _v);
                if (_x._i != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_v));
                };
                _v = _v + (_delta);
            });
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testStoreUintptrMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_9 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : ({} : stdgo.sync.atomic_.Atomic_.Uintptr), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_9);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _v:stdgo.StdGoTypes.GoUIntptr = (0 : stdgo.StdGoTypes.GoUIntptr);
        {
            var _delta:stdgo.StdGoTypes.GoUIntptr = (1 : stdgo.StdGoTypes.GoUIntptr);
            stdgo.Go.cfor((_delta + _delta) > _delta, _delta = _delta + (_delta), {
                _x._i.store(_v);
                if (_x._i.load() != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_v));
                };
                _v = _v + (_delta);
            });
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testStorePointer(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_10 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : @:default_value null, _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_10);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        for (__0 => _p in _testPointers()) {
            storePointer(stdgo.Go.pointer(_x._i), _p);
            if (_x._i != (_p)) {
                _t.fatalf(("x.i=%p p=%p" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_p));
            };
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testStorePointerMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _x:T__struct_11 = ({ _before : (0 : stdgo.StdGoTypes.GoUIntptr), _i : ({} : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.GoUInt8>), _after : (0 : stdgo.StdGoTypes.GoUIntptr) } : T__struct_11);
        var _m:stdgo.StdGoTypes.GoUInt64 = (1003703129787580143i64 : stdgo.StdGoTypes.GoUInt64);
        var _magicptr:stdgo.StdGoTypes.GoUIntptr = (_m : stdgo.StdGoTypes.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        for (__0 => _p in _testPointers()) {
            var _p = (_p.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoByte>);
            _x._i.store((0 : stdgo.StdGoTypes.GoUInt8), _p);
            if (_x._i.load((0 : stdgo.StdGoTypes.GoUInt8)) != (_p)) {
                _t.fatalf(("x.i=%p p=%p" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load((0 : stdgo.StdGoTypes.GoUInt8))), stdgo.Go.toInterface(_p));
            };
        };
        if ((_x._before != _magicptr) || (_x._after != _magicptr)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function _hammerSwapInt32(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int32_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>);
        var _seed:stdgo.StdGoTypes.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                var _new:stdgo.StdGoTypes.GoUInt32 = ((_seed + _i : stdgo.StdGoTypes.GoUInt32) << (16i64 : stdgo.StdGoTypes.GoUInt64)) | (((_seed + _i : stdgo.StdGoTypes.GoUInt32) << (16i64 : stdgo.StdGoTypes.GoUInt64)) >> (16i64 : stdgo.StdGoTypes.GoUInt64));
                var _old:stdgo.StdGoTypes.GoUInt32 = (swapInt32(_addr, (_new : stdgo.StdGoTypes.GoInt32)) : stdgo.StdGoTypes.GoUInt32);
                if (_old >> (16i64 : stdgo.StdGoTypes.GoUInt64) != (_old << (16i64 : stdgo.StdGoTypes.GoUInt64) >> (16i64 : stdgo.StdGoTypes.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("SwapInt32 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapInt32Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Int32", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Int32>);
        var _seed:stdgo.StdGoTypes.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                var _new:stdgo.StdGoTypes.GoUInt32 = ((_seed + _i : stdgo.StdGoTypes.GoUInt32) << (16i64 : stdgo.StdGoTypes.GoUInt64)) | (((_seed + _i : stdgo.StdGoTypes.GoUInt32) << (16i64 : stdgo.StdGoTypes.GoUInt64)) >> (16i64 : stdgo.StdGoTypes.GoUInt64));
                var _old:stdgo.StdGoTypes.GoUInt32 = (_addr.swap((_new : stdgo.StdGoTypes.GoInt32)) : stdgo.StdGoTypes.GoUInt32);
                if (_old >> (16i64 : stdgo.StdGoTypes.GoUInt64) != (_old << (16i64 : stdgo.StdGoTypes.GoUInt64) >> (16i64 : stdgo.StdGoTypes.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("SwapInt32 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUint32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _seed:stdgo.StdGoTypes.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                var _new:stdgo.StdGoTypes.GoUInt32 = ((_seed + _i : stdgo.StdGoTypes.GoUInt32) << (16i64 : stdgo.StdGoTypes.GoUInt64)) | (((_seed + _i : stdgo.StdGoTypes.GoUInt32) << (16i64 : stdgo.StdGoTypes.GoUInt64)) >> (16i64 : stdgo.StdGoTypes.GoUInt64));
                var _old:stdgo.StdGoTypes.GoUInt32 = swapUint32(_addr, _new);
                if (_old >> (16i64 : stdgo.StdGoTypes.GoUInt64) != (_old << (16i64 : stdgo.StdGoTypes.GoUInt64) >> (16i64 : stdgo.StdGoTypes.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("SwapUint32 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUint32Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uint32", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uint32>);
        var _seed:stdgo.StdGoTypes.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                var _new:stdgo.StdGoTypes.GoUInt32 = ((_seed + _i : stdgo.StdGoTypes.GoUInt32) << (16i64 : stdgo.StdGoTypes.GoUInt64)) | (((_seed + _i : stdgo.StdGoTypes.GoUInt32) << (16i64 : stdgo.StdGoTypes.GoUInt64)) >> (16i64 : stdgo.StdGoTypes.GoUInt64));
                var _old:stdgo.StdGoTypes.GoUInt32 = _addr.swap(_new);
                if (_old >> (16i64 : stdgo.StdGoTypes.GoUInt64) != (_old << (16i64 : stdgo.StdGoTypes.GoUInt64) >> (16i64 : stdgo.StdGoTypes.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("SwapUint32 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUintptr32(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>);
        var _seed:stdgo.StdGoTypes.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                var _new:stdgo.StdGoTypes.GoUIntptr = ((_seed + _i : stdgo.StdGoTypes.GoUIntptr) << (16i64 : stdgo.StdGoTypes.GoUInt64)) | (((_seed + _i : stdgo.StdGoTypes.GoUIntptr) << (16i64 : stdgo.StdGoTypes.GoUInt64)) >> (16i64 : stdgo.StdGoTypes.GoUInt64));
                var _old:stdgo.StdGoTypes.GoUIntptr = swapUintptr(_addr, _new);
                if (_old >> (16i64 : stdgo.StdGoTypes.GoUInt64) != (_old << (16i64 : stdgo.StdGoTypes.GoUInt64) >> (16i64 : stdgo.StdGoTypes.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("SwapUintptr is not atomic: %#08x" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUintptr32Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uintptr", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uintptr>);
        var _seed:stdgo.StdGoTypes.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                var _new:stdgo.StdGoTypes.GoUIntptr = ((_seed + _i : stdgo.StdGoTypes.GoUIntptr) << (16i64 : stdgo.StdGoTypes.GoUInt64)) | (((_seed + _i : stdgo.StdGoTypes.GoUIntptr) << (16i64 : stdgo.StdGoTypes.GoUInt64)) >> (16i64 : stdgo.StdGoTypes.GoUInt64));
                var _old:stdgo.StdGoTypes.GoUIntptr = _addr.swap(_new);
                if (_old >> (16i64 : stdgo.StdGoTypes.GoUInt64) != (_old << (16i64 : stdgo.StdGoTypes.GoUInt64) >> (16i64 : stdgo.StdGoTypes.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("Uintptr.Swap is not atomic: %#08x" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerAddInt32(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int32_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                addInt32(_addr, (1 : stdgo.StdGoTypes.GoInt32));
            });
        };
    }
function _hammerAddInt32Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Int32", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Int32>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                _addr.add((1 : stdgo.StdGoTypes.GoInt32));
            });
        };
    }
function _hammerAddUint32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                addUint32(_addr, (1u32 : stdgo.StdGoTypes.GoUInt32));
            });
        };
    }
function _hammerAddUint32Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uint32", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uint32>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                _addr.add((1u32 : stdgo.StdGoTypes.GoUInt32));
            });
        };
    }
function _hammerAddUintptr32(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                addUintptr(_addr, (1 : stdgo.StdGoTypes.GoUIntptr));
            });
        };
    }
function _hammerAddUintptr32Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uintptr", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uintptr>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                _addr.add((1 : stdgo.StdGoTypes.GoUIntptr));
            });
        };
    }
function _hammerCompareAndSwapInt32(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int32_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                while (true) {
                    var _v:stdgo.StdGoTypes.GoInt32 = loadInt32(_addr);
                    if (compareAndSwapInt32(_addr, _v, _v + (1 : stdgo.StdGoTypes.GoInt32))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapInt32Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Int32", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Int32>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                while (true) {
                    var _v:stdgo.StdGoTypes.GoInt32 = _addr.load();
                    if (_addr.compareAndSwap(_v, _v + (1 : stdgo.StdGoTypes.GoInt32))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUint32(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                while (true) {
                    var _v:stdgo.StdGoTypes.GoUInt32 = loadUint32(_addr);
                    if (compareAndSwapUint32(_addr, _v, _v + (1u32 : stdgo.StdGoTypes.GoUInt32))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUint32Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uint32", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uint32>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                while (true) {
                    var _v:stdgo.StdGoTypes.GoUInt32 = _addr.load();
                    if (_addr.compareAndSwap(_v, _v + (1u32 : stdgo.StdGoTypes.GoUInt32))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUintptr32(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                while (true) {
                    var _v:stdgo.StdGoTypes.GoUIntptr = loadUintptr(_addr);
                    if (compareAndSwapUintptr(_addr, _v, _v + (1 : stdgo.StdGoTypes.GoUIntptr))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUintptr32Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uintptr", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uintptr>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                while (true) {
                    var _v:stdgo.StdGoTypes.GoUIntptr = _addr.load();
                    if (_addr.compareAndSwap(_v, _v + (1 : stdgo.StdGoTypes.GoUIntptr))) {
                        break;
                    };
                };
            });
        };
    }
function testHammer32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _n:stdgo.StdGoTypes.GoInt = (100000 : stdgo.StdGoTypes.GoInt);
            if (stdgo.testing.Testing.short()) {
                _n = (1000 : stdgo.StdGoTypes.GoInt);
            };
            {
                var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
            };
            for (_name => _testf in _hammer32) {
                var _c = new stdgo.Chan<stdgo.StdGoTypes.GoInt>(0, () -> (0 : stdgo.StdGoTypes.GoInt));
                var _val:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (4 : stdgo.StdGoTypes.GoInt), _i++, {
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> {
                                        var a = function():Void {
                                            {
                                                var _err:stdgo.StdGoTypes.AnyInterface = ({
                                                    final r = stdgo.Go.recover_exception;
                                                    stdgo.Go.recover_exception = null;
                                                    r;
                                                });
                                                if (_err != null) {
                                                    _t.error(stdgo.Go.toInterface((stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString)));
                                                };
                                            };
                                            _c.__send__((1 : stdgo.StdGoTypes.GoInt));
                                        };
                                        a();
                                    });
                                    _testf(stdgo.Go.pointer(_val), _n);
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a();
                        });
                    });
                };
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (4 : stdgo.StdGoTypes.GoInt), _i++, {
                        _c.__get__();
                    });
                };
                if (!stdgo.strings.Strings.hasPrefix(_name?.__copy__(), ("Swap" : stdgo.GoString)) && (_val != ((_n : stdgo.StdGoTypes.GoUInt32) * (4u32 : stdgo.StdGoTypes.GoUInt32)))) {
                    _t.fatalf(("%s: val=%d want %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_n * (4 : stdgo.StdGoTypes.GoInt)));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _hammerSwapInt64(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int64_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>);
        var _seed:stdgo.StdGoTypes.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                var _new:stdgo.StdGoTypes.GoUInt64 = ((_seed + _i : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64)) | (((_seed + _i : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64)) >> (32i64 : stdgo.StdGoTypes.GoUInt64));
                var _old:stdgo.StdGoTypes.GoUInt64 = (swapInt64(_addr, (_new : stdgo.StdGoTypes.GoInt64)) : stdgo.StdGoTypes.GoUInt64);
                if (_old >> (32i64 : stdgo.StdGoTypes.GoUInt64) != (_old << (32i64 : stdgo.StdGoTypes.GoUInt64) >> (32i64 : stdgo.StdGoTypes.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("SwapInt64 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapInt64Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Int64_", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__4", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__5", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Int64_>);
        var _seed:stdgo.StdGoTypes.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                var _new:stdgo.StdGoTypes.GoUInt64 = ((_seed + _i : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64)) | (((_seed + _i : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64)) >> (32i64 : stdgo.StdGoTypes.GoUInt64));
                var _old:stdgo.StdGoTypes.GoUInt64 = (_addr.swap((_new : stdgo.StdGoTypes.GoInt64)) : stdgo.StdGoTypes.GoUInt64);
                if (_old >> (32i64 : stdgo.StdGoTypes.GoUInt64) != (_old << (32i64 : stdgo.StdGoTypes.GoUInt64) >> (32i64 : stdgo.StdGoTypes.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("SwapInt64 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUint64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _seed:stdgo.StdGoTypes.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                var _new:stdgo.StdGoTypes.GoUInt64 = ((_seed + _i : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64)) | (((_seed + _i : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64)) >> (32i64 : stdgo.StdGoTypes.GoUInt64));
                var _old:stdgo.StdGoTypes.GoUInt64 = swapUint64(_addr, _new);
                if (_old >> (32i64 : stdgo.StdGoTypes.GoUInt64) != (_old << (32i64 : stdgo.StdGoTypes.GoUInt64) >> (32i64 : stdgo.StdGoTypes.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("SwapUint64 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUint64Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uint64", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__4", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__5", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uint64>);
        var _seed:stdgo.StdGoTypes.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                var _new:stdgo.StdGoTypes.GoUInt64 = ((_seed + _i : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64)) | (((_seed + _i : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64)) >> (32i64 : stdgo.StdGoTypes.GoUInt64));
                var _old:stdgo.StdGoTypes.GoUInt64 = _addr.swap(_new);
                if (_old >> (32i64 : stdgo.StdGoTypes.GoUInt64) != (_old << (32i64 : stdgo.StdGoTypes.GoUInt64) >> (32i64 : stdgo.StdGoTypes.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("SwapUint64 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUintptr64(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        if (false) {
            var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>);
            var _seed:stdgo.StdGoTypes.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoInt);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _count, _i++, {
                    var _new:stdgo.StdGoTypes.GoUIntptr = ((_seed + _i : stdgo.StdGoTypes.GoUIntptr) << (32i64 : stdgo.StdGoTypes.GoUInt64)) | (((_seed + _i : stdgo.StdGoTypes.GoUIntptr) << (32i64 : stdgo.StdGoTypes.GoUInt64)) >> (32i64 : stdgo.StdGoTypes.GoUInt64));
                    var _old:stdgo.StdGoTypes.GoUIntptr = swapUintptr(_addr, _new);
                    if (_old >> (32i64 : stdgo.StdGoTypes.GoUInt64) != (_old << (32i64 : stdgo.StdGoTypes.GoUInt64) >> (32i64 : stdgo.StdGoTypes.GoUInt64))) {
                        throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("SwapUintptr is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                    };
                });
            };
        };
    }
function _hammerSwapUintptr64Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        if (false) {
            var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uintptr", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uintptr>);
            var _seed:stdgo.StdGoTypes.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) : stdgo.StdGoTypes.GoInt);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _count, _i++, {
                    var _new:stdgo.StdGoTypes.GoUIntptr = ((_seed + _i : stdgo.StdGoTypes.GoUIntptr) << (32i64 : stdgo.StdGoTypes.GoUInt64)) | (((_seed + _i : stdgo.StdGoTypes.GoUIntptr) << (32i64 : stdgo.StdGoTypes.GoUInt64)) >> (32i64 : stdgo.StdGoTypes.GoUInt64));
                    var _old:stdgo.StdGoTypes.GoUIntptr = _addr.swap(_new);
                    if (_old >> (32i64 : stdgo.StdGoTypes.GoUInt64) != (_old << (32i64 : stdgo.StdGoTypes.GoUInt64) >> (32i64 : stdgo.StdGoTypes.GoUInt64))) {
                        throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("SwapUintptr is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                    };
                });
            };
        };
    }
function _hammerAddInt64(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int64_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                addInt64(_addr, (1i64 : stdgo.StdGoTypes.GoInt64));
            });
        };
    }
function _hammerAddInt64Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Int64_", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__4", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__5", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Int64_>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                _addr.add((1i64 : stdgo.StdGoTypes.GoInt64));
            });
        };
    }
function _hammerAddUint64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                addUint64(_addr, (1i64 : stdgo.StdGoTypes.GoUInt64));
            });
        };
    }
function _hammerAddUint64Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uint64", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__4", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__5", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uint64>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                _addr.add((1i64 : stdgo.StdGoTypes.GoUInt64));
            });
        };
    }
function _hammerAddUintptr64(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                addUintptr(_addr, (1 : stdgo.StdGoTypes.GoUIntptr));
            });
        };
    }
function _hammerAddUintptr64Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uintptr", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uintptr>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                _addr.add((1 : stdgo.StdGoTypes.GoUIntptr));
            });
        };
    }
function _hammerCompareAndSwapInt64(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int64_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                while (true) {
                    var _v:stdgo.StdGoTypes.GoInt64 = loadInt64(_addr);
                    if (compareAndSwapInt64(_addr, _v, _v + (1i64 : stdgo.StdGoTypes.GoInt64))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapInt64Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Int64_", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__4", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__5", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Int64_>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                while (true) {
                    var _v:stdgo.StdGoTypes.GoInt64 = _addr.load();
                    if (_addr.compareAndSwap(_v, _v + (1i64 : stdgo.StdGoTypes.GoInt64))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUint64(_addr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                while (true) {
                    var _v:stdgo.StdGoTypes.GoUInt64 = loadUint64(_addr);
                    if (compareAndSwapUint64(_addr, _v, _v + (1i64 : stdgo.StdGoTypes.GoUInt64))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUint64Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uint64", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__4", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__5", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uint64>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                while (true) {
                    var _v:stdgo.StdGoTypes.GoUInt64 = _addr.load();
                    if (_addr.compareAndSwap(_v, _v + (1i64 : stdgo.StdGoTypes.GoUInt64))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUintptr64(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                while (true) {
                    var _v:stdgo.StdGoTypes.GoUIntptr = loadUintptr(_addr);
                    if (compareAndSwapUintptr(_addr, _v, _v + (1 : stdgo.StdGoTypes.GoUIntptr))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUintptr64Method(_uaddr:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _count:stdgo.StdGoTypes.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uintptr", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uintptr>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _count, _i++, {
                while (true) {
                    var _v:stdgo.StdGoTypes.GoUIntptr = _addr.load();
                    if (_addr.compareAndSwap(_v, _v + (1 : stdgo.StdGoTypes.GoUIntptr))) {
                        break;
                    };
                };
            });
        };
    }
function testHammer64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _n:stdgo.StdGoTypes.GoInt = (100000 : stdgo.StdGoTypes.GoInt);
            if (stdgo.testing.Testing.short()) {
                _n = (1000 : stdgo.StdGoTypes.GoInt);
            };
            {
                var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
            };
            for (_name => _testf in _hammer64) {
                var _c = new stdgo.Chan<stdgo.StdGoTypes.GoInt>(0, () -> (0 : stdgo.StdGoTypes.GoInt));
                var _val:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (4 : stdgo.StdGoTypes.GoInt), _i++, {
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> {
                                        var a = function():Void {
                                            {
                                                var _err:stdgo.StdGoTypes.AnyInterface = ({
                                                    final r = stdgo.Go.recover_exception;
                                                    stdgo.Go.recover_exception = null;
                                                    r;
                                                });
                                                if (_err != null) {
                                                    _t.error(stdgo.Go.toInterface((stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString)));
                                                };
                                            };
                                            _c.__send__((1 : stdgo.StdGoTypes.GoInt));
                                        };
                                        a();
                                    });
                                    _testf(stdgo.Go.pointer(_val), _n);
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a();
                        });
                    });
                };
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (4 : stdgo.StdGoTypes.GoInt), _i++, {
                        _c.__get__();
                    });
                };
                if (!stdgo.strings.Strings.hasPrefix(_name?.__copy__(), ("Swap" : stdgo.GoString)) && (_val != ((_n : stdgo.StdGoTypes.GoUInt64) * (4i64 : stdgo.StdGoTypes.GoUInt64)))) {
                    _t.fatalf(("%s: val=%d want %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_n * (4 : stdgo.StdGoTypes.GoInt)));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _hammerStoreLoadInt32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int32_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>);
        var _v:stdgo.StdGoTypes.GoInt32 = loadInt32(_addr);
        var _vlo:stdgo.StdGoTypes.GoInt32 = _v & (65535 : stdgo.StdGoTypes.GoInt32);
        var _vhi:stdgo.StdGoTypes.GoInt32 = _v >> (16i64 : stdgo.StdGoTypes.GoUInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Int32: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.StdGoTypes.GoInt32 = (_v + (1 : stdgo.StdGoTypes.GoInt32)) + (65536 : stdgo.StdGoTypes.GoInt32);
        if (_vlo == ((10000 : stdgo.StdGoTypes.GoInt32))) {
            _new = (0 : stdgo.StdGoTypes.GoInt32);
        };
        storeInt32(_addr, _new);
    }
function _hammerStoreLoadInt32Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int32_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>);
        var _v:stdgo.StdGoTypes.GoInt32 = loadInt32(_addr);
        var _vlo:stdgo.StdGoTypes.GoInt32 = _v & (65535 : stdgo.StdGoTypes.GoInt32);
        var _vhi:stdgo.StdGoTypes.GoInt32 = _v >> (16i64 : stdgo.StdGoTypes.GoUInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Int32: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.StdGoTypes.GoInt32 = (_v + (1 : stdgo.StdGoTypes.GoInt32)) + (65536 : stdgo.StdGoTypes.GoInt32);
        if (_vlo == ((10000 : stdgo.StdGoTypes.GoInt32))) {
            _new = (0 : stdgo.StdGoTypes.GoInt32);
        };
        storeInt32(_addr, _new);
    }
function _hammerStoreLoadUint32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>);
        var _v:stdgo.StdGoTypes.GoUInt32 = loadUint32(_addr);
        var _vlo:stdgo.StdGoTypes.GoUInt32 = _v & (65535u32 : stdgo.StdGoTypes.GoUInt32);
        var _vhi:stdgo.StdGoTypes.GoUInt32 = _v >> (16i64 : stdgo.StdGoTypes.GoUInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Uint32: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.StdGoTypes.GoUInt32 = (_v + (1u32 : stdgo.StdGoTypes.GoUInt32)) + (65536u32 : stdgo.StdGoTypes.GoUInt32);
        if (_vlo == ((10000u32 : stdgo.StdGoTypes.GoUInt32))) {
            _new = (0u32 : stdgo.StdGoTypes.GoUInt32);
        };
        storeUint32(_addr, _new);
    }
function _hammerStoreLoadUint32Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uint32", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uint32>);
        var _v:stdgo.StdGoTypes.GoUInt32 = _addr.load();
        var _vlo:stdgo.StdGoTypes.GoUInt32 = _v & (65535u32 : stdgo.StdGoTypes.GoUInt32);
        var _vhi:stdgo.StdGoTypes.GoUInt32 = _v >> (16i64 : stdgo.StdGoTypes.GoUInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Uint32: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.StdGoTypes.GoUInt32 = (_v + (1u32 : stdgo.StdGoTypes.GoUInt32)) + (65536u32 : stdgo.StdGoTypes.GoUInt32);
        if (_vlo == ((10000u32 : stdgo.StdGoTypes.GoUInt32))) {
            _new = (0u32 : stdgo.StdGoTypes.GoUInt32);
        };
        _addr.store(_new);
    }
function _hammerStoreLoadInt64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int64_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>);
        var _v:stdgo.StdGoTypes.GoInt64 = loadInt64(_addr);
        var _vlo:stdgo.StdGoTypes.GoInt64 = _v & (4294967295i64 : stdgo.StdGoTypes.GoInt64);
        var _vhi:stdgo.StdGoTypes.GoInt64 = _v >> (32i64 : stdgo.StdGoTypes.GoUInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Int64: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.StdGoTypes.GoInt64 = (_v + (1i64 : stdgo.StdGoTypes.GoInt64)) + (4294967296i64 : stdgo.StdGoTypes.GoInt64);
        storeInt64(_addr, _new);
    }
function _hammerStoreLoadInt64Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Int64_", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__4", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__5", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Int64_>);
        var _v:stdgo.StdGoTypes.GoInt64 = _addr.load();
        var _vlo:stdgo.StdGoTypes.GoInt64 = _v & (4294967295i64 : stdgo.StdGoTypes.GoInt64);
        var _vhi:stdgo.StdGoTypes.GoInt64 = _v >> (32i64 : stdgo.StdGoTypes.GoUInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Int64: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.StdGoTypes.GoInt64 = (_v + (1i64 : stdgo.StdGoTypes.GoInt64)) + (4294967296i64 : stdgo.StdGoTypes.GoInt64);
        _addr.store(_new);
    }
function _hammerStoreLoadUint64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>);
        var _v:stdgo.StdGoTypes.GoUInt64 = loadUint64(_addr);
        var _vlo:stdgo.StdGoTypes.GoUInt64 = _v & (4294967295i64 : stdgo.StdGoTypes.GoUInt64);
        var _vhi:stdgo.StdGoTypes.GoUInt64 = _v >> (32i64 : stdgo.StdGoTypes.GoUInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Uint64: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.StdGoTypes.GoUInt64 = (_v + (1i64 : stdgo.StdGoTypes.GoUInt64)) + (4294967296i64 : stdgo.StdGoTypes.GoUInt64);
        storeUint64(_addr, _new);
    }
function _hammerStoreLoadUint64Method(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uint64", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__4", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__5", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uint64>);
        var _v:stdgo.StdGoTypes.GoUInt64 = _addr.load();
        var _vlo:stdgo.StdGoTypes.GoUInt64 = _v & (4294967295i64 : stdgo.StdGoTypes.GoUInt64);
        var _vhi:stdgo.StdGoTypes.GoUInt64 = _v >> (32i64 : stdgo.StdGoTypes.GoUInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Uint64: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.StdGoTypes.GoUInt64 = (_v + (1i64 : stdgo.StdGoTypes.GoUInt64)) + (4294967296i64 : stdgo.StdGoTypes.GoUInt64);
        _addr.store(_new);
    }
function _hammerStoreLoadUintptr(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>);
        var _v:stdgo.StdGoTypes.GoUIntptr = loadUintptr(_addr);
        var _new:stdgo.StdGoTypes.GoUIntptr = _v;
        if (true) {
            var _vlo:stdgo.StdGoTypes.GoUIntptr = _v & (65535 : stdgo.StdGoTypes.GoUIntptr);
            var _vhi:stdgo.StdGoTypes.GoUIntptr = _v >> (16i64 : stdgo.StdGoTypes.GoUInt64);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Uintptr: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            _new = (_v + (1 : stdgo.StdGoTypes.GoUIntptr)) + (65536 : stdgo.StdGoTypes.GoUIntptr);
            if (_vlo == ((10000 : stdgo.StdGoTypes.GoUIntptr))) {
                _new = (0 : stdgo.StdGoTypes.GoUIntptr);
            };
        } else {
            var _vlo:stdgo.StdGoTypes.GoUIntptr = _v & (4294967295 : stdgo.StdGoTypes.GoUIntptr);
            var _vhi:stdgo.StdGoTypes.GoUIntptr = _v >> (32i64 : stdgo.StdGoTypes.GoUInt64);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Uintptr: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            var _inc:stdgo.StdGoTypes.GoUInt64 = (4294967297i64 : stdgo.StdGoTypes.GoUInt64);
            _new = _v + (_inc : stdgo.StdGoTypes.GoUIntptr);
        };
        storeUintptr(_addr, _new);
    }
/**
    //go:nocheckptr
**/
function _hammerStoreLoadUintptrMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uintptr", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__2", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uintptr>);
        var _v:stdgo.StdGoTypes.GoUIntptr = _addr.load();
        var _new:stdgo.StdGoTypes.GoUIntptr = _v;
        if (true) {
            var _vlo:stdgo.StdGoTypes.GoUIntptr = _v & (65535 : stdgo.StdGoTypes.GoUIntptr);
            var _vhi:stdgo.StdGoTypes.GoUIntptr = _v >> (16i64 : stdgo.StdGoTypes.GoUInt64);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Uintptr: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            _new = (_v + (1 : stdgo.StdGoTypes.GoUIntptr)) + (65536 : stdgo.StdGoTypes.GoUIntptr);
            if (_vlo == ((10000 : stdgo.StdGoTypes.GoUIntptr))) {
                _new = (0 : stdgo.StdGoTypes.GoUIntptr);
            };
        } else {
            var _vlo:stdgo.StdGoTypes.GoUIntptr = _v & (4294967295 : stdgo.StdGoTypes.GoUIntptr);
            var _vhi:stdgo.StdGoTypes.GoUIntptr = _v >> (32i64 : stdgo.StdGoTypes.GoUInt64);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Uintptr: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            var _inc:stdgo.StdGoTypes.GoUInt64 = (4294967297i64 : stdgo.StdGoTypes.GoUInt64);
            _new = _v + (_inc : stdgo.StdGoTypes.GoUIntptr);
        };
        _addr.store(_new);
    }
/**
    // This code is just testing that LoadPointer/StorePointer operate
    // atomically; it's not actually calculating pointers.
    //
    //go:nocheckptr
**/
function _hammerStoreLoadPointer(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) })) : stdgo.Pointer<stdgo.unsafe.Unsafe.UnsafePointer>);
        var _v:stdgo.StdGoTypes.GoUIntptr = (loadPointer(_addr).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr);
        var _new:stdgo.StdGoTypes.GoUIntptr = _v;
        if (true) {
            var _vlo:stdgo.StdGoTypes.GoUIntptr = _v & (65535 : stdgo.StdGoTypes.GoUIntptr);
            var _vhi:stdgo.StdGoTypes.GoUIntptr = _v >> (16i64 : stdgo.StdGoTypes.GoUInt64);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Pointer: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            _new = (_v + (1 : stdgo.StdGoTypes.GoUIntptr)) + (65536 : stdgo.StdGoTypes.GoUIntptr);
            if (_vlo == ((10000 : stdgo.StdGoTypes.GoUIntptr))) {
                _new = (0 : stdgo.StdGoTypes.GoUIntptr);
            };
        } else {
            var _vlo:stdgo.StdGoTypes.GoUIntptr = _v & (4294967295 : stdgo.StdGoTypes.GoUIntptr);
            var _vhi:stdgo.StdGoTypes.GoUIntptr = _v >> (32i64 : stdgo.StdGoTypes.GoUInt64);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Pointer: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            var _inc:stdgo.StdGoTypes.GoUInt64 = (4294967297i64 : stdgo.StdGoTypes.GoUInt64);
            _new = _v + (_inc : stdgo.StdGoTypes.GoUIntptr);
        };
        storePointer(_addr, (stdgo.Go.toInterface(_new) : stdgo.unsafe.Unsafe.UnsafePointer));
    }
/**
    // This code is just testing that LoadPointer/StorePointer operate
    // atomically; it's not actually calculating pointers.
    //
    //go:nocheckptr
**/
function _hammerStoreLoadPointerMethod(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _paddr:stdgo.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Pointer_", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__4", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, 0) }, optional : false }, { name : "__5", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Pointer_<stdgo.StdGoTypes.GoByte>>);
        var _v:stdgo.StdGoTypes.GoUIntptr = ((stdgo.Go.toInterface(_addr.load()) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr);
        var _new:stdgo.StdGoTypes.GoUIntptr = _v;
        if (true) {
            var _vlo:stdgo.StdGoTypes.GoUIntptr = _v & (65535 : stdgo.StdGoTypes.GoUIntptr);
            var _vhi:stdgo.StdGoTypes.GoUIntptr = _v >> (16i64 : stdgo.StdGoTypes.GoUInt64);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Pointer: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            _new = (_v + (1 : stdgo.StdGoTypes.GoUIntptr)) + (65536 : stdgo.StdGoTypes.GoUIntptr);
            if (_vlo == ((10000 : stdgo.StdGoTypes.GoUIntptr))) {
                _new = (0 : stdgo.StdGoTypes.GoUIntptr);
            };
        } else {
            var _vlo:stdgo.StdGoTypes.GoUIntptr = _v & (4294967295 : stdgo.StdGoTypes.GoUIntptr);
            var _vhi:stdgo.StdGoTypes.GoUIntptr = _v >> (32i64 : stdgo.StdGoTypes.GoUInt64);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Pointer: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            var _inc:stdgo.StdGoTypes.GoUInt64 = (4294967297i64 : stdgo.StdGoTypes.GoUInt64);
            _new = _v + (_inc : stdgo.StdGoTypes.GoUIntptr);
        };
        _addr.store(((stdgo.Go.toInterface(_new) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoByte>));
    }
function testHammerStoreLoad(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tests = (new stdgo.Slice<(stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, stdgo.unsafe.Unsafe.UnsafePointer) -> Void>(
12,
12,
_hammerStoreLoadInt32,
_hammerStoreLoadUint32,
_hammerStoreLoadUintptr,
_hammerStoreLoadPointer,
_hammerStoreLoadInt32Method,
_hammerStoreLoadUint32Method,
_hammerStoreLoadUintptrMethod,
_hammerStoreLoadPointerMethod,
_hammerStoreLoadInt64,
_hammerStoreLoadUint64,
_hammerStoreLoadInt64Method,
_hammerStoreLoadUint64Method) : stdgo.Slice<(stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, stdgo.unsafe.Unsafe.UnsafePointer) -> Void>);
            var _n:stdgo.StdGoTypes.GoInt = (1000000 : stdgo.StdGoTypes.GoInt);
            if (stdgo.testing.Testing.short()) {
                _n = (10000 : stdgo.StdGoTypes.GoInt);
            };
            {};
            {
                var _a0 = stdgo.runtime.Runtime.gomaxprocs((8 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
            };
            {
                var _a0 = stdgo.runtime.debug.Debug.setGCPercent((-1 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
            };
            stdgo.runtime.Runtime.gc();
            for (__0 => _tt in _tests) {
                var _c = new stdgo.Chan<stdgo.StdGoTypes.GoInt>(0, () -> (0 : stdgo.StdGoTypes.GoInt));
                var _val:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
                {
                    var _p:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_p < (8 : stdgo.StdGoTypes.GoInt), _p++, {
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                {
                                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                    stdgo.Go.cfor(_i < _n, _i++, {
                                        _tt(_t, (stdgo.Go.toInterface(stdgo.Go.pointer(_val)) : stdgo.unsafe.Unsafe.UnsafePointer));
                                    });
                                };
                                _c.__send__((1 : stdgo.StdGoTypes.GoInt));
                            };
                            a();
                        });
                    });
                };
                {
                    var _p:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_p < (8 : stdgo.StdGoTypes.GoInt), _p++, {
                        _c.__get__();
                    });
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testStoreLoadSeqCst32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo.runtime.Runtime.numCPU() == ((1 : stdgo.StdGoTypes.GoInt))) {
                _t.skipf(("Skipping test on %v processor machine" : stdgo.GoString), stdgo.Go.toInterface(stdgo.runtime.Runtime.numCPU()));
            };
            {
                var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
            };
            var n:stdgo.StdGoTypes.GoInt32 = (1000 : stdgo.StdGoTypes.GoInt32);
            if (stdgo.testing.Testing.short()) {
                n = (100 : stdgo.StdGoTypes.GoInt32);
            };
            var _c = new stdgo.Chan<Bool>((2 : stdgo.StdGoTypes.GoInt).toBasic(), () -> false);
            var x = (new stdgo.GoArray<stdgo.StdGoTypes.GoInt32>(...([].concat([for (i in 0 ... 2) (0 : stdgo.StdGoTypes.GoInt32)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoInt32>);
            var _ack = (new stdgo.GoArray<stdgo.GoArray<stdgo.StdGoTypes.GoInt32>>((new stdgo.GoArray<stdgo.StdGoTypes.GoInt32>((-1 : stdgo.StdGoTypes.GoInt32), (-1 : stdgo.StdGoTypes.GoInt32), (-1 : stdgo.StdGoTypes.GoInt32)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt32>), (new stdgo.GoArray<stdgo.StdGoTypes.GoInt32>((-1 : stdgo.StdGoTypes.GoInt32), (-1 : stdgo.StdGoTypes.GoInt32), (-1 : stdgo.StdGoTypes.GoInt32)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt32>)) : stdgo.GoArray<stdgo.GoArray<stdgo.StdGoTypes.GoInt32>>);
            {
                var _p:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_p < (2 : stdgo.StdGoTypes.GoInt), _p++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_me:stdgo.StdGoTypes.GoInt):Void {
                            var _he:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt) - _me;
                            {
                                var _i:stdgo.StdGoTypes.GoInt32 = (1 : stdgo.StdGoTypes.GoInt32);
                                stdgo.Go.cfor(_i < n, _i++, {
                                    storeInt32(stdgo.Go.pointer(x[(_me : stdgo.StdGoTypes.GoInt)]), _i);
                                    var _my:stdgo.StdGoTypes.GoInt32 = loadInt32(stdgo.Go.pointer(x[(_he : stdgo.StdGoTypes.GoInt)]));
                                    storeInt32(stdgo.Go.pointer(_ack[(_me : stdgo.StdGoTypes.GoInt)][(_i % (3 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoInt)]), _my);
                                    {
                                        var _w:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                                        stdgo.Go.cfor(loadInt32(stdgo.Go.pointer(_ack[(_he : stdgo.StdGoTypes.GoInt)][(_i % (3 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoInt)])) == ((-1 : stdgo.StdGoTypes.GoInt32)), _w++, {
                                            if (_w % (1000 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
                                                stdgo.runtime.Runtime.gosched();
                                            };
                                        });
                                    };
                                    var _his:stdgo.StdGoTypes.GoInt32 = loadInt32(stdgo.Go.pointer(_ack[(_he : stdgo.StdGoTypes.GoInt)][(_i % (3 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoInt)]));
                                    if (((_my != _i) && (_my != (_i - (1 : stdgo.StdGoTypes.GoInt32)))) || ((_his != _i) && (_his != (_i - (1 : stdgo.StdGoTypes.GoInt32))))) {
                                        _t.errorf(("invalid values: %d/%d (%d)" : stdgo.GoString), stdgo.Go.toInterface(_my), stdgo.Go.toInterface(_his), stdgo.Go.toInterface(_i));
                                        break;
                                    };
                                    if ((_my != _i) && (_his != _i)) {
                                        _t.errorf(("store/load are not sequentially consistent: %d/%d (%d)" : stdgo.GoString), stdgo.Go.toInterface(_my), stdgo.Go.toInterface(_his), stdgo.Go.toInterface(_i));
                                        break;
                                    };
                                    storeInt32(stdgo.Go.pointer(_ack[(_me : stdgo.StdGoTypes.GoInt)][((_i - (1 : stdgo.StdGoTypes.GoInt32)) % (3 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoInt)]), (-1 : stdgo.StdGoTypes.GoInt32));
                                });
                            };
                            _c.__send__(true);
                        };
                        a(_p);
                    });
                });
            };
            _c.__get__();
            _c.__get__();
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testStoreLoadSeqCst64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo.runtime.Runtime.numCPU() == ((1 : stdgo.StdGoTypes.GoInt))) {
                _t.skipf(("Skipping test on %v processor machine" : stdgo.GoString), stdgo.Go.toInterface(stdgo.runtime.Runtime.numCPU()));
            };
            {
                var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
            };
            var n:stdgo.StdGoTypes.GoInt64 = (1000i64 : stdgo.StdGoTypes.GoInt64);
            if (stdgo.testing.Testing.short()) {
                n = (100i64 : stdgo.StdGoTypes.GoInt64);
            };
            var _c = new stdgo.Chan<Bool>((2 : stdgo.StdGoTypes.GoInt).toBasic(), () -> false);
            var x = (new stdgo.GoArray<stdgo.StdGoTypes.GoInt64>(...([].concat([for (i in 0 ... 2) (0 : stdgo.StdGoTypes.GoInt64)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoInt64>);
            var _ack = (new stdgo.GoArray<stdgo.GoArray<stdgo.StdGoTypes.GoInt64>>((new stdgo.GoArray<stdgo.StdGoTypes.GoInt64>((-1i64 : stdgo.StdGoTypes.GoInt64), (-1i64 : stdgo.StdGoTypes.GoInt64), (-1i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt64>), (new stdgo.GoArray<stdgo.StdGoTypes.GoInt64>((-1i64 : stdgo.StdGoTypes.GoInt64), (-1i64 : stdgo.StdGoTypes.GoInt64), (-1i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt64>)) : stdgo.GoArray<stdgo.GoArray<stdgo.StdGoTypes.GoInt64>>);
            {
                var _p:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_p < (2 : stdgo.StdGoTypes.GoInt), _p++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_me:stdgo.StdGoTypes.GoInt):Void {
                            var _he:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt) - _me;
                            {
                                var _i:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
                                stdgo.Go.cfor(_i < n, _i++, {
                                    storeInt64(stdgo.Go.pointer(x[(_me : stdgo.StdGoTypes.GoInt)]), _i);
                                    var _my:stdgo.StdGoTypes.GoInt64 = loadInt64(stdgo.Go.pointer(x[(_he : stdgo.StdGoTypes.GoInt)]));
                                    storeInt64(stdgo.Go.pointer(_ack[(_me : stdgo.StdGoTypes.GoInt)][(_i % (3i64 : stdgo.StdGoTypes.GoInt64) : stdgo.StdGoTypes.GoInt)]), _my);
                                    {
                                        var _w:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                                        stdgo.Go.cfor(loadInt64(stdgo.Go.pointer(_ack[(_he : stdgo.StdGoTypes.GoInt)][(_i % (3i64 : stdgo.StdGoTypes.GoInt64) : stdgo.StdGoTypes.GoInt)])) == ((-1i64 : stdgo.StdGoTypes.GoInt64)), _w++, {
                                            if (_w % (1000 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
                                                stdgo.runtime.Runtime.gosched();
                                            };
                                        });
                                    };
                                    var _his:stdgo.StdGoTypes.GoInt64 = loadInt64(stdgo.Go.pointer(_ack[(_he : stdgo.StdGoTypes.GoInt)][(_i % (3i64 : stdgo.StdGoTypes.GoInt64) : stdgo.StdGoTypes.GoInt)]));
                                    if (((_my != _i) && (_my != (_i - (1i64 : stdgo.StdGoTypes.GoInt64)))) || ((_his != _i) && (_his != (_i - (1i64 : stdgo.StdGoTypes.GoInt64))))) {
                                        _t.errorf(("invalid values: %d/%d (%d)" : stdgo.GoString), stdgo.Go.toInterface(_my), stdgo.Go.toInterface(_his), stdgo.Go.toInterface(_i));
                                        break;
                                    };
                                    if ((_my != _i) && (_his != _i)) {
                                        _t.errorf(("store/load are not sequentially consistent: %d/%d (%d)" : stdgo.GoString), stdgo.Go.toInterface(_my), stdgo.Go.toInterface(_his), stdgo.Go.toInterface(_i));
                                        break;
                                    };
                                    storeInt64(stdgo.Go.pointer(_ack[(_me : stdgo.StdGoTypes.GoInt)][((_i - (1i64 : stdgo.StdGoTypes.GoInt64)) % (3i64 : stdgo.StdGoTypes.GoInt64) : stdgo.StdGoTypes.GoInt)]), (-1i64 : stdgo.StdGoTypes.GoInt64));
                                });
                            };
                            _c.__send__(true);
                        };
                        a(_p);
                    });
                });
            };
            _c.__get__();
            _c.__get__();
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
/**
    
    
    
**/
@:structInit class T_testStoreLoadRelAcq32_15___localname___Data {
    public var _signal : stdgo.StdGoTypes.GoInt32 = 0;
    public var _pad1 : stdgo.GoArray<stdgo.StdGoTypes.GoInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt8>(...[for (i in 0 ... 128) (0 : stdgo.StdGoTypes.GoInt8)]);
    public var _data1 : stdgo.StdGoTypes.GoInt32 = 0;
    public var _pad2 : stdgo.GoArray<stdgo.StdGoTypes.GoInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt8>(...[for (i in 0 ... 128) (0 : stdgo.StdGoTypes.GoInt8)]);
    public var _data2 : stdgo.StdGoTypes.GoFloat32 = 0;
    public function new(?_signal:stdgo.StdGoTypes.GoInt32, ?_pad1:stdgo.GoArray<stdgo.StdGoTypes.GoInt8>, ?_data1:stdgo.StdGoTypes.GoInt32, ?_pad2:stdgo.GoArray<stdgo.StdGoTypes.GoInt8>, ?_data2:stdgo.StdGoTypes.GoFloat32) {
        if (_signal != null) this._signal = _signal;
        if (_pad1 != null) this._pad1 = _pad1;
        if (_data1 != null) this._data1 = _data1;
        if (_pad2 != null) this._pad2 = _pad2;
        if (_data2 != null) this._data2 = _data2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStoreLoadRelAcq32_15___localname___Data(_signal, _pad1, _data1, _pad2, _data2);
    }
}
function testStoreLoadRelAcq32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo.runtime.Runtime.numCPU() == ((1 : stdgo.StdGoTypes.GoInt))) {
                _t.skipf(("Skipping test on %v processor machine" : stdgo.GoString), stdgo.Go.toInterface(stdgo.runtime.Runtime.numCPU()));
            };
            {
                var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
            };
            var n:stdgo.StdGoTypes.GoInt32 = (1000 : stdgo.StdGoTypes.GoInt32);
            if (stdgo.testing.Testing.short()) {
                n = (100 : stdgo.StdGoTypes.GoInt32);
            };
            var _c = new stdgo.Chan<Bool>((2 : stdgo.StdGoTypes.GoInt).toBasic(), () -> false);
            {};
            var x:T_testStoreLoadRelAcq32_15___localname___Data = ({} : stdgo.sync.atomic_test.Atomic_test.T_testStoreLoadRelAcq32_15___localname___Data);
            {
                var _p:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
                stdgo.Go.cfor(_p < (2 : stdgo.StdGoTypes.GoInt32), _p++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_p:stdgo.StdGoTypes.GoInt32):Void {
                            {
                                var _i:stdgo.StdGoTypes.GoInt32 = (1 : stdgo.StdGoTypes.GoInt32);
                                stdgo.Go.cfor(_i < n, _i++, {
                                    if ((_i + _p) % (2 : stdgo.StdGoTypes.GoInt32) == ((0 : stdgo.StdGoTypes.GoInt32))) {
                                        x._data1 = _i;
                                        x._data2 = (_i : stdgo.StdGoTypes.GoFloat32);
                                        storeInt32(stdgo.Go.pointer(x._signal), _i);
                                    } else {
                                        {
                                            var _w:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                                            stdgo.Go.cfor(loadInt32(stdgo.Go.pointer(x._signal)) != (_i), _w++, {
                                                if (_w % (1000 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
                                                    stdgo.runtime.Runtime.gosched();
                                                };
                                            });
                                        };
                                        var _d1:stdgo.StdGoTypes.GoInt32 = x._data1;
                                        var _d2:stdgo.StdGoTypes.GoFloat32 = x._data2;
                                        if ((_d1 != _i) || (_d2 != (_i : stdgo.StdGoTypes.GoFloat32))) {
                                            _t.errorf(("incorrect data: %d/%g (%d)" : stdgo.GoString), stdgo.Go.toInterface(_d1), stdgo.Go.toInterface(_d2), stdgo.Go.toInterface(_i));
                                            break;
                                        };
                                    };
                                });
                            };
                            _c.__send__(true);
                        };
                        a(_p);
                    });
                });
            };
            _c.__get__();
            _c.__get__();
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
/**
    
    
    
**/
@:structInit class T_testStoreLoadRelAcq64_16___localname___Data {
    public var _signal : stdgo.StdGoTypes.GoInt64 = 0;
    public var _pad1 : stdgo.GoArray<stdgo.StdGoTypes.GoInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt8>(...[for (i in 0 ... 128) (0 : stdgo.StdGoTypes.GoInt8)]);
    public var _data1 : stdgo.StdGoTypes.GoInt64 = 0;
    public var _pad2 : stdgo.GoArray<stdgo.StdGoTypes.GoInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt8>(...[for (i in 0 ... 128) (0 : stdgo.StdGoTypes.GoInt8)]);
    public var _data2 : stdgo.StdGoTypes.GoFloat64 = 0;
    public function new(?_signal:stdgo.StdGoTypes.GoInt64, ?_pad1:stdgo.GoArray<stdgo.StdGoTypes.GoInt8>, ?_data1:stdgo.StdGoTypes.GoInt64, ?_pad2:stdgo.GoArray<stdgo.StdGoTypes.GoInt8>, ?_data2:stdgo.StdGoTypes.GoFloat64) {
        if (_signal != null) this._signal = _signal;
        if (_pad1 != null) this._pad1 = _pad1;
        if (_data1 != null) this._data1 = _data1;
        if (_pad2 != null) this._pad2 = _pad2;
        if (_data2 != null) this._data2 = _data2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStoreLoadRelAcq64_16___localname___Data(_signal, _pad1, _data1, _pad2, _data2);
    }
}
function testStoreLoadRelAcq64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo.runtime.Runtime.numCPU() == ((1 : stdgo.StdGoTypes.GoInt))) {
                _t.skipf(("Skipping test on %v processor machine" : stdgo.GoString), stdgo.Go.toInterface(stdgo.runtime.Runtime.numCPU()));
            };
            {
                var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
            };
            var n:stdgo.StdGoTypes.GoInt64 = (1000i64 : stdgo.StdGoTypes.GoInt64);
            if (stdgo.testing.Testing.short()) {
                n = (100i64 : stdgo.StdGoTypes.GoInt64);
            };
            var _c = new stdgo.Chan<Bool>((2 : stdgo.StdGoTypes.GoInt).toBasic(), () -> false);
            {};
            var x:T_testStoreLoadRelAcq64_16___localname___Data = ({} : stdgo.sync.atomic_test.Atomic_test.T_testStoreLoadRelAcq64_16___localname___Data);
            {
                var _p:stdgo.StdGoTypes.GoInt64 = (0i64 : stdgo.StdGoTypes.GoInt64);
                stdgo.Go.cfor(_p < (2i64 : stdgo.StdGoTypes.GoInt64), _p++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_p:stdgo.StdGoTypes.GoInt64):Void {
                            {
                                var _i:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
                                stdgo.Go.cfor(_i < n, _i++, {
                                    if ((_i + _p) % (2i64 : stdgo.StdGoTypes.GoInt64) == ((0i64 : stdgo.StdGoTypes.GoInt64))) {
                                        x._data1 = _i;
                                        x._data2 = (_i : stdgo.StdGoTypes.GoFloat64);
                                        storeInt64(stdgo.Go.pointer(x._signal), _i);
                                    } else {
                                        {
                                            var _w:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                                            stdgo.Go.cfor(loadInt64(stdgo.Go.pointer(x._signal)) != (_i), _w++, {
                                                if (_w % (1000 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
                                                    stdgo.runtime.Runtime.gosched();
                                                };
                                            });
                                        };
                                        var _d1:stdgo.StdGoTypes.GoInt64 = x._data1;
                                        var _d2:stdgo.StdGoTypes.GoFloat64 = x._data2;
                                        if ((_d1 != _i) || (_d2 != (_i : stdgo.StdGoTypes.GoFloat64))) {
                                            _t.errorf(("incorrect data: %d/%g (%d)" : stdgo.GoString), stdgo.Go.toInterface(_d1), stdgo.Go.toInterface(_d2), stdgo.Go.toInterface(_i));
                                            break;
                                        };
                                    };
                                });
                            };
                            _c.__send__(true);
                        };
                        a(_p);
                    });
                });
            };
            _c.__get__();
            _c.__get__();
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _shouldPanic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _name:stdgo.GoString, _f:() -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo.runtime.Runtime.gc();
                    var _err:stdgo.StdGoTypes.AnyInterface = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    });
                    var _want:stdgo.GoString = ("unaligned 64-bit atomic operation" : stdgo.GoString);
                    if (_err == null) {
                        _t.errorf(("%s did not panic" : stdgo.GoString), stdgo.Go.toInterface(_name));
                    } else {
                        var __tmp__ = try {
                            { value : (stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString), ok : true };
                        } catch(_) {
                            { value : ("" : stdgo.GoString), ok : false };
                        }, _s = __tmp__.value, __0 = __tmp__.ok;
                        if (_s != (_want)) {
                            _t.errorf(("%s: wanted panic %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_want), _err);
                        };
                    };
                };
                a();
            });
            _f();
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testUnaligned64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("test only runs on 32-bit systems" : stdgo.GoString)));
        };
        var _x = new stdgo.Slice<stdgo.StdGoTypes.GoUInt32>((4 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _p = ((stdgo.Go.toInterface(stdgo.Go.pointer(_x[(1 : stdgo.StdGoTypes.GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>);
        _shouldPanic(_t, ("LoadUint64" : stdgo.GoString), function():Void {
            loadUint64(_p);
        });
        _shouldPanic(_t, ("LoadUint64Method" : stdgo.GoString), function():Void {
            ((stdgo.Go.toInterface(_p) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uint64", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__8", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__9", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uint64>).load();
        });
        _shouldPanic(_t, ("StoreUint64" : stdgo.GoString), function():Void {
            storeUint64(_p, (1i64 : stdgo.StdGoTypes.GoUInt64));
        });
        _shouldPanic(_t, ("StoreUint64Method" : stdgo.GoString), function():Void {
            ((stdgo.Go.toInterface(_p) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uint64", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__8", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__9", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uint64>).store((1i64 : stdgo.StdGoTypes.GoUInt64));
        });
        _shouldPanic(_t, ("CompareAndSwapUint64" : stdgo.GoString), function():Void {
            compareAndSwapUint64(_p, (1i64 : stdgo.StdGoTypes.GoUInt64), (2i64 : stdgo.StdGoTypes.GoUInt64));
        });
        _shouldPanic(_t, ("CompareAndSwapUint64Method" : stdgo.GoString), function():Void {
            ((stdgo.Go.toInterface(_p) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uint64", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__8", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__9", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uint64>).compareAndSwap((1i64 : stdgo.StdGoTypes.GoUInt64), (2i64 : stdgo.StdGoTypes.GoUInt64));
        });
        _shouldPanic(_t, ("AddUint64" : stdgo.GoString), function():Void {
            addUint64(_p, (3i64 : stdgo.StdGoTypes.GoUInt64));
        });
        _shouldPanic(_t, ("AddUint64Method" : stdgo.GoString), function():Void {
            ((stdgo.Go.toInterface(_p) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.Uint64", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "__8", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_noCopy", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__9", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.atomic_.Atomic_.T_align64", [], stdgo.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<Uint64>).add((3i64 : stdgo.StdGoTypes.GoUInt64));
        });
    }
function testAutoAligned64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _signed:T__struct_12 = ({ _i : ({} : stdgo.sync.atomic_.Atomic_.Int64_) } : T__struct_12);
        {
            var _o:stdgo.StdGoTypes.GoUIntptr = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_signed) : stdgo.StdGoTypes.Ref<T__struct_12>)))).elem().field((1 : stdgo.StdGoTypes.GoInt)).offset;
            if (_o != ((8 : stdgo.StdGoTypes.GoUIntptr))) {
                _t.fatalf(("Int64 offset = %d, want 8" : stdgo.GoString), stdgo.Go.toInterface(_o));
            };
        };
        {
            var _p:stdgo.StdGoTypes.GoUIntptr = stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_signed) : stdgo.StdGoTypes.Ref<T__struct_12>)))).elem().field((1 : stdgo.StdGoTypes.GoInt)).addr().pointer();
            if (_p & (7 : stdgo.StdGoTypes.GoUIntptr) != ((0 : stdgo.StdGoTypes.GoUIntptr))) {
                _t.fatalf(("Int64 pointer = %#x, want 8-aligned" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
        };
        var _unsigned:T__struct_13 = ({ _i : ({} : stdgo.sync.atomic_.Atomic_.Uint64) } : T__struct_13);
        {
            var _o:stdgo.StdGoTypes.GoUIntptr = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_unsigned) : stdgo.StdGoTypes.Ref<T__struct_13>)))).elem().field((1 : stdgo.StdGoTypes.GoInt)).offset;
            if (_o != ((8 : stdgo.StdGoTypes.GoUIntptr))) {
                _t.fatalf(("Uint64 offset = %d, want 8" : stdgo.GoString), stdgo.Go.toInterface(_o));
            };
        };
        {
            var _p:stdgo.StdGoTypes.GoUIntptr = stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_unsigned) : stdgo.StdGoTypes.Ref<T__struct_13>)))).elem().field((1 : stdgo.StdGoTypes.GoInt)).addr().pointer();
            if (_p & (7 : stdgo.StdGoTypes.GoUIntptr) != ((0 : stdgo.StdGoTypes.GoUIntptr))) {
                _t.fatalf(("Int64 pointer = %#x, want 8-aligned" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
        };
    }
function testNilDeref(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _funcs = (new stdgo.GoArray<() -> Void>(
function():Void {
            compareAndSwapInt32((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>), (0 : stdgo.StdGoTypes.GoInt32), (0 : stdgo.StdGoTypes.GoInt32));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Int32>) : stdgo.StdGoTypes.Ref<Int32>).compareAndSwap((0 : stdgo.StdGoTypes.GoInt32), (0 : stdgo.StdGoTypes.GoInt32));
        },
function():Void {
            compareAndSwapInt64((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>), (0i64 : stdgo.StdGoTypes.GoInt64), (0i64 : stdgo.StdGoTypes.GoInt64));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Int64_>) : stdgo.StdGoTypes.Ref<Int64_>).compareAndSwap((0i64 : stdgo.StdGoTypes.GoInt64), (0i64 : stdgo.StdGoTypes.GoInt64));
        },
function():Void {
            compareAndSwapUint32((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>), (0u32 : stdgo.StdGoTypes.GoUInt32), (0u32 : stdgo.StdGoTypes.GoUInt32));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uint32>) : stdgo.StdGoTypes.Ref<Uint32>).compareAndSwap((0u32 : stdgo.StdGoTypes.GoUInt32), (0u32 : stdgo.StdGoTypes.GoUInt32));
        },
function():Void {
            compareAndSwapUint64((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>), (0i64 : stdgo.StdGoTypes.GoUInt64), (0i64 : stdgo.StdGoTypes.GoUInt64));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uint64>) : stdgo.StdGoTypes.Ref<Uint64>).compareAndSwap((0i64 : stdgo.StdGoTypes.GoUInt64), (0i64 : stdgo.StdGoTypes.GoUInt64));
        },
function():Void {
            compareAndSwapUintptr((null : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>), (0 : stdgo.StdGoTypes.GoUIntptr), (0 : stdgo.StdGoTypes.GoUIntptr));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uintptr>) : stdgo.StdGoTypes.Ref<Uintptr>).compareAndSwap((0 : stdgo.StdGoTypes.GoUIntptr), (0 : stdgo.StdGoTypes.GoUIntptr));
        },
function():Void {
            compareAndSwapPointer((null : stdgo.Pointer<stdgo.unsafe.Unsafe.UnsafePointer>), @:default_value null, @:default_value null);
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.GoUInt8>>) : stdgo.StdGoTypes.Ref<Pointer_<stdgo.StdGoTypes.GoByte>>).compareAndSwap((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>), (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>));
        },
function():Void {
            swapInt32((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>), (0 : stdgo.StdGoTypes.GoInt32));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Int32>) : stdgo.StdGoTypes.Ref<Int32>).swap((0 : stdgo.StdGoTypes.GoInt32));
        },
function():Void {
            swapUint32((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>), (0u32 : stdgo.StdGoTypes.GoUInt32));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uint32>) : stdgo.StdGoTypes.Ref<Uint32>).swap((0u32 : stdgo.StdGoTypes.GoUInt32));
        },
function():Void {
            swapInt64((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>), (0i64 : stdgo.StdGoTypes.GoInt64));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Int64_>) : stdgo.StdGoTypes.Ref<Int64_>).swap((0i64 : stdgo.StdGoTypes.GoInt64));
        },
function():Void {
            swapUint64((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>), (0i64 : stdgo.StdGoTypes.GoUInt64));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uint64>) : stdgo.StdGoTypes.Ref<Uint64>).swap((0i64 : stdgo.StdGoTypes.GoUInt64));
        },
function():Void {
            swapUintptr((null : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>), (0 : stdgo.StdGoTypes.GoUIntptr));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uintptr>) : stdgo.StdGoTypes.Ref<Uintptr>).swap((0 : stdgo.StdGoTypes.GoUIntptr));
        },
function():Void {
            swapPointer((null : stdgo.Pointer<stdgo.unsafe.Unsafe.UnsafePointer>), @:default_value null);
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.GoUInt8>>) : stdgo.StdGoTypes.Ref<Pointer_<stdgo.StdGoTypes.GoByte>>).swap((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>));
        },
function():Void {
            addInt32((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>), (0 : stdgo.StdGoTypes.GoInt32));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Int32>) : stdgo.StdGoTypes.Ref<Int32>).add((0 : stdgo.StdGoTypes.GoInt32));
        },
function():Void {
            addUint32((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>), (0u32 : stdgo.StdGoTypes.GoUInt32));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uint32>) : stdgo.StdGoTypes.Ref<Uint32>).add((0u32 : stdgo.StdGoTypes.GoUInt32));
        },
function():Void {
            addInt64((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>), (0i64 : stdgo.StdGoTypes.GoInt64));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Int64_>) : stdgo.StdGoTypes.Ref<Int64_>).add((0i64 : stdgo.StdGoTypes.GoInt64));
        },
function():Void {
            addUint64((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>), (0i64 : stdgo.StdGoTypes.GoUInt64));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uint64>) : stdgo.StdGoTypes.Ref<Uint64>).add((0i64 : stdgo.StdGoTypes.GoUInt64));
        },
function():Void {
            addUintptr((null : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>), (0 : stdgo.StdGoTypes.GoUIntptr));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uintptr>) : stdgo.StdGoTypes.Ref<Uintptr>).add((0 : stdgo.StdGoTypes.GoUIntptr));
        },
function():Void {
            loadInt32((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Int32>) : stdgo.StdGoTypes.Ref<Int32>).load();
        },
function():Void {
            loadInt64((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Int64_>) : stdgo.StdGoTypes.Ref<Int64_>).load();
        },
function():Void {
            loadUint32((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uint32>) : stdgo.StdGoTypes.Ref<Uint32>).load();
        },
function():Void {
            loadUint64((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uint64>) : stdgo.StdGoTypes.Ref<Uint64>).load();
        },
function():Void {
            loadUintptr((null : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uintptr>) : stdgo.StdGoTypes.Ref<Uintptr>).load();
        },
function():Void {
            loadPointer((null : stdgo.Pointer<stdgo.unsafe.Unsafe.UnsafePointer>));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.GoUInt8>>) : stdgo.StdGoTypes.Ref<Pointer_<stdgo.StdGoTypes.GoByte>>).load();
        },
function():Void {
            storeInt32((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>), (0 : stdgo.StdGoTypes.GoInt32));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Int32>) : stdgo.StdGoTypes.Ref<Int32>).store((0 : stdgo.StdGoTypes.GoInt32));
        },
function():Void {
            storeInt64((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>), (0i64 : stdgo.StdGoTypes.GoInt64));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Int64_>) : stdgo.StdGoTypes.Ref<Int64_>).store((0i64 : stdgo.StdGoTypes.GoInt64));
        },
function():Void {
            storeUint32((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>), (0u32 : stdgo.StdGoTypes.GoUInt32));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uint32>) : stdgo.StdGoTypes.Ref<Uint32>).store((0u32 : stdgo.StdGoTypes.GoUInt32));
        },
function():Void {
            storeUint64((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>), (0i64 : stdgo.StdGoTypes.GoUInt64));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uint64>) : stdgo.StdGoTypes.Ref<Uint64>).store((0i64 : stdgo.StdGoTypes.GoUInt64));
        },
function():Void {
            storeUintptr((null : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>), (0 : stdgo.StdGoTypes.GoUIntptr));
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Uintptr>) : stdgo.StdGoTypes.Ref<Uintptr>).store((0 : stdgo.StdGoTypes.GoUIntptr));
        },
function():Void {
            storePointer((null : stdgo.Pointer<stdgo.unsafe.Unsafe.UnsafePointer>), @:default_value null);
        },
function():Void {
            ((null : stdgo.StdGoTypes.Ref<stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.GoUInt8>>) : stdgo.StdGoTypes.Ref<Pointer_<stdgo.StdGoTypes.GoByte>>).store((null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>));
        }) : stdgo.GoArray<() -> Void>);
        for (__0 => _f in _funcs) {
            {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                stdgo.runtime.Runtime.gc();
                                ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                            };
                            a();
                        });
                        _f();
                        for (defer in __deferstack__) {
                            defer();
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            };
        };
    }
function _loadConfig():stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        return ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    }
function _requests():stdgo.Chan<stdgo.StdGoTypes.GoInt> {
        return new stdgo.Chan<stdgo.StdGoTypes.GoInt>(0, () -> (0 : stdgo.StdGoTypes.GoInt));
    }
/**
    // The following example shows how to use Value for periodic program config updates
    // and propagation of the changes to worker goroutines.
**/
function exampleValue_config():Void {
        var _config:stdgo.sync.atomic_.Atomic_.Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
        _config.store(stdgo.Go.toInterface(_loadConfig()));
        stdgo.Go.routine(() -> {
            var a = function():Void {
                while (true) {
                    stdgo.time.Time.sleep((10000000000i64 : stdgo.time.Time.Duration));
                    _config.store(stdgo.Go.toInterface(_loadConfig()));
                };
            };
            a();
        });
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        for (_r => _ in _requests()) {
                            var _c:stdgo.StdGoTypes.AnyInterface = _config.load();
                            {
                                _r;
                                _c;
                            };
                        };
                    };
                    a();
                });
            });
        };
    }
@:named typedef T_exampleValue_readMostly_17___localname___Map = stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
/**
    // The following example shows how to maintain a scalable frequently read,
    // but infrequently updated data structure using copy-on-write idiom.
**/
function exampleValue_readMostly():Void {
        {};
        var _m:stdgo.sync.atomic_.Atomic_.Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
        _m.store(stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)));
        var _mu:stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
        var _read:stdgo.GoString -> stdgo.GoString = function(_key:stdgo.GoString):stdgo.GoString {
            var _val:stdgo.GoString = ("" : stdgo.GoString);
            var _m1:stdgo.sync.atomic_test.Atomic_test.T_exampleValue_readMostly_17___localname___Map = (stdgo.Go.typeAssert((_m.load() : T_exampleValue_readMostly_17___localname___Map)) : T_exampleValue_readMostly_17___localname___Map);
            return (_m1[_key] ?? ("" : stdgo.GoString))?.__copy__();
        };
        var _insert:(stdgo.GoString, stdgo.GoString) -> Void = function(_key:stdgo.GoString, _val:stdgo.GoString):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                _mu.lock();
                __deferstack__.unshift(() -> _mu.unlock());
                var _m1:stdgo.sync.atomic_test.Atomic_test.T_exampleValue_readMostly_17___localname___Map = (stdgo.Go.typeAssert((_m.load() : T_exampleValue_readMostly_17___localname___Map)) : T_exampleValue_readMostly_17___localname___Map);
                var _m2:stdgo.sync.atomic_test.Atomic_test.T_exampleValue_readMostly_17___localname___Map = ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                    x.__defaultValue__ = () -> ("" : stdgo.GoString);
                    @:mergeBlock {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                for (_k => _v in _m1) {
                    _m2[_k] = _v?.__copy__();
                };
                _m2[_key] = _val?.__copy__();
                _m.store(stdgo.Go.toInterface(_m2));
                for (defer in __deferstack__) {
                    defer();
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        };
        {
            _read;
            _insert;
        };
    }
function testValue(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _v:Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
        if (_v.load() != null) {
            _t.fatal(stdgo.Go.toInterface(("initial Value is not nil" : stdgo.GoString)));
        };
        _v.store(stdgo.Go.toInterface((42 : stdgo.StdGoTypes.GoInt)));
        var _x:stdgo.StdGoTypes.AnyInterface = _v.load();
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((_x : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt), ok : true };
            } catch(_) {
                { value : (0 : stdgo.StdGoTypes.GoInt), ok : false };
            }, _xx = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || (_xx != (42 : stdgo.StdGoTypes.GoInt))) {
                _t.fatalf(("wrong value: got %+v, want 42" : stdgo.GoString), _x);
            };
        };
        _v.store(stdgo.Go.toInterface((84 : stdgo.StdGoTypes.GoInt)));
        _x = _v.load();
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((_x : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt), ok : true };
            } catch(_) {
                { value : (0 : stdgo.StdGoTypes.GoInt), ok : false };
            }, _xx = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || (_xx != (84 : stdgo.StdGoTypes.GoInt))) {
                _t.fatalf(("wrong value: got %+v, want 84" : stdgo.GoString), _x);
            };
        };
    }
function testValueLarge(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _v:Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
        _v.store(stdgo.Go.toInterface(("foo" : stdgo.GoString)));
        var _x:stdgo.StdGoTypes.AnyInterface = _v.load();
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((_x : stdgo.GoString)) : stdgo.GoString), ok : true };
            } catch(_) {
                { value : ("" : stdgo.GoString), ok : false };
            }, _xx = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || (_xx != ("foo" : stdgo.GoString))) {
                _t.fatalf(("wrong value: got %+v, want foo" : stdgo.GoString), _x);
            };
        };
        _v.store(stdgo.Go.toInterface(("barbaz" : stdgo.GoString)));
        _x = _v.load();
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((_x : stdgo.GoString)) : stdgo.GoString), ok : true };
            } catch(_) {
                { value : ("" : stdgo.GoString), ok : false };
            }, _xx = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || (_xx != ("barbaz" : stdgo.GoString))) {
                _t.fatalf(("wrong value: got %+v, want barbaz" : stdgo.GoString), _x);
            };
        };
    }
function testValuePanic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        var _v:Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
        {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var _err:stdgo.StdGoTypes.AnyInterface = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            if (_err != (stdgo.Go.toInterface(("sync/atomic: store of nil value into Value" : stdgo.GoString)))) {
                                _t.fatalf(("inconsistent store panic: got \'%v\', want \'%v\'" : stdgo.GoString), _err, stdgo.Go.toInterface(("sync/atomic: store of nil value into Value" : stdgo.GoString)));
                            };
                        };
                        a();
                    });
                    _v.store((null : stdgo.StdGoTypes.AnyInterface));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            };
            a();
        };
        _v.store(stdgo.Go.toInterface((42 : stdgo.StdGoTypes.GoInt)));
        {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var _err:stdgo.StdGoTypes.AnyInterface = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            if (_err != (stdgo.Go.toInterface(("sync/atomic: store of inconsistently typed value into Value" : stdgo.GoString)))) {
                                _t.fatalf(("inconsistent store panic: got \'%v\', want \'%v\'" : stdgo.GoString), _err, stdgo.Go.toInterface(("sync/atomic: store of inconsistently typed value into Value" : stdgo.GoString)));
                            };
                        };
                        a();
                    });
                    _v.store(stdgo.Go.toInterface(("foo" : stdgo.GoString)));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            };
            a();
        };
        {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var _err:stdgo.StdGoTypes.AnyInterface = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            if (_err != (stdgo.Go.toInterface(("sync/atomic: store of nil value into Value" : stdgo.GoString)))) {
                                _t.fatalf(("inconsistent store panic: got \'%v\', want \'%v\'" : stdgo.GoString), _err, stdgo.Go.toInterface(("sync/atomic: store of nil value into Value" : stdgo.GoString)));
                            };
                        };
                        a();
                    });
                    _v.store((null : stdgo.StdGoTypes.AnyInterface));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            };
            a();
        };
    }
function testValueConcurrent(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>(4, 4, (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(4, 4, stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoUInt16)), stdgo.Go.toInterface((65535 : stdgo.StdGoTypes.GoUInt16)), stdgo.Go.toInterface((513 : stdgo.StdGoTypes.GoUInt16)), stdgo.Go.toInterface((1027 : stdgo.StdGoTypes.GoUInt16))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>), (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(4, 4, stdgo.Go.toInterface((0u32 : stdgo.StdGoTypes.GoUInt32)), stdgo.Go.toInterface((-1u32 : stdgo.StdGoTypes.GoUInt32)), stdgo.Go.toInterface((131073u32 : stdgo.StdGoTypes.GoUInt32)), stdgo.Go.toInterface((262147u32 : stdgo.StdGoTypes.GoUInt32))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>), (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(4, 4, stdgo.Go.toInterface((0i64 : stdgo.StdGoTypes.GoUInt64)), stdgo.Go.toInterface((-1i64 : stdgo.StdGoTypes.GoUInt64)), stdgo.Go.toInterface((8589934593i64 : stdgo.StdGoTypes.GoUInt64)), stdgo.Go.toInterface((17179869187i64 : stdgo.StdGoTypes.GoUInt64))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>), (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(4, 4, stdgo.Go.toInterface(new stdgo.StdGoTypes.GoComplex128((0i64 : stdgo.StdGoTypes.GoUInt64), (0i64 : stdgo.StdGoTypes.GoUInt64))), stdgo.Go.toInterface(new stdgo.StdGoTypes.GoComplex128((1i64 : stdgo.StdGoTypes.GoUInt64), (2i64 : stdgo.StdGoTypes.GoUInt64))), stdgo.Go.toInterface(new stdgo.StdGoTypes.GoComplex128((3i64 : stdgo.StdGoTypes.GoUInt64), (4i64 : stdgo.StdGoTypes.GoUInt64))), stdgo.Go.toInterface(new stdgo.StdGoTypes.GoComplex128((5i64 : stdgo.StdGoTypes.GoUInt64), (6i64 : stdgo.StdGoTypes.GoUInt64)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) : stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>);
        var _p:stdgo.StdGoTypes.GoInt = (4 : stdgo.StdGoTypes.GoInt) * stdgo.runtime.Runtime.gomaxprocs((0 : stdgo.StdGoTypes.GoInt));
        var n:stdgo.StdGoTypes.GoInt = (100000 : stdgo.StdGoTypes.GoInt);
        if (stdgo.testing.Testing.short()) {
            _p = _p / ((2 : stdgo.StdGoTypes.GoInt));
            n = (1000 : stdgo.StdGoTypes.GoInt);
        };
        for (__0 => _test in _tests) {
            var _v:Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
            var _done = new stdgo.Chan<Bool>((_p : stdgo.StdGoTypes.GoInt).toBasic(), () -> false);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _p, _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(stdgo.math.rand.Rand.int63()));
                            var _expected:Bool = true;
                            @:label("loop") {
                                var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_j < n, _j++, {
                                    var _x:stdgo.StdGoTypes.AnyInterface = _test[(_r.intn((_test.length)) : stdgo.StdGoTypes.GoInt)];
                                    _v.store(_x);
                                    _x = _v.load();
                                    for (__0 => _x1 in _test) {
                                        if (_x == (_x1)) {
                                            @:jump("loop") continue;
                                        };
                                    };
                                    _t.logf(("loaded unexpected value %+v, want %+v" : stdgo.GoString), _x, stdgo.Go.toInterface(_test));
                                    _expected = false;
                                    break;
                                });
                            };
                            _done.__send__(_expected);
                        };
                        a();
                    });
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _p, _i++, {
                    if (!_done.__get__()) {
                        _t.failNow();
                    };
                });
            };
        };
    }
function benchmarkValueRead(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _v:Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
        _v.store(stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt))));
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var _x = (stdgo.Go.typeAssert((_v.load() : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)) : stdgo.Pointer<stdgo.StdGoTypes.GoInt>);
                if (_x.value != ((0 : stdgo.StdGoTypes.GoInt))) {
                    _b.fatalf(("wrong value: got %v, want 0" : stdgo.GoString), stdgo.Go.toInterface(_x.value));
                };
            };
        });
    }
function testValue_Swap(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _tt in value_SwapTests) {
            _t.run(stdgo.strconv.Strconv.itoa(_i)?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _v:Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
                    if (_tt._init != null) {
                        _v.store(_tt._init);
                    };
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var _err:stdgo.StdGoTypes.AnyInterface = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            if ((_tt._err == null) && (_err != null)) {
                                _t.errorf(("should not panic, got %v" : stdgo.GoString), _err);
                            } else if ((_tt._err != null) && (_err == null)) {
                                _t.errorf(("should panic %v, got <nil>" : stdgo.GoString), _tt._err);
                            };
                        };
                        a();
                    });
                    {
                        var _got:stdgo.StdGoTypes.AnyInterface = _v.swap(_tt._new);
                        if (_got != (_tt._want)) {
                            _t.errorf(("got %v, want %v" : stdgo.GoString), _got, _tt._want);
                        };
                    };
                    {
                        var _got:stdgo.StdGoTypes.AnyInterface = _v.load();
                        if (_got != (_tt._new)) {
                            _t.errorf(("got %v, want %v" : stdgo.GoString), _got, _tt._new);
                        };
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            });
        };
    }
function testValueSwapConcurrent(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _v:Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
        var _count:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
        var _g:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        var __0:stdgo.StdGoTypes.GoUInt64 = (10000i64 : stdgo.StdGoTypes.GoUInt64), __1:stdgo.StdGoTypes.GoUInt64 = (10000i64 : stdgo.StdGoTypes.GoUInt64), _n:stdgo.StdGoTypes.GoUInt64 = __1, _m:stdgo.StdGoTypes.GoUInt64 = __0;
        if (stdgo.testing.Testing.short()) {
            _m = (1000i64 : stdgo.StdGoTypes.GoUInt64);
            _n = (1000i64 : stdgo.StdGoTypes.GoUInt64);
        };
        {
            var _i:stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor(_i < (_m * _n), _i = _i + (_n), {
                var _i:stdgo.StdGoTypes.GoUInt64 = _i;
                _g.add((1 : stdgo.StdGoTypes.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _c:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
                        {
                            var _new:stdgo.StdGoTypes.GoUInt64 = _i;
                            stdgo.Go.cfor(_new < (_i + _n), _new++, {
                                {
                                    var _old:stdgo.StdGoTypes.AnyInterface = _v.swap(stdgo.Go.toInterface(_new));
                                    if (_old != null) {
                                        _c = _c + ((stdgo.Go.typeAssert((_old : stdgo.StdGoTypes.GoUInt64)) : stdgo.StdGoTypes.GoUInt64));
                                    };
                                };
                            });
                        };
                        stdgo.sync.atomic_.Atomic_.addUint64(stdgo.Go.pointer(_count), _c);
                        _g.done();
                    };
                    a();
                });
            });
        };
        _g.wait_();
        {
            var __0:stdgo.StdGoTypes.GoUInt64 = (((_m * _n) - (1i64 : stdgo.StdGoTypes.GoUInt64)) * (_m * _n)) / (2i64 : stdgo.StdGoTypes.GoUInt64), __1:stdgo.StdGoTypes.GoUInt64 = _count + (stdgo.Go.typeAssert((_v.load() : stdgo.StdGoTypes.GoUInt64)) : stdgo.StdGoTypes.GoUInt64), _got:stdgo.StdGoTypes.GoUInt64 = __1, _want:stdgo.StdGoTypes.GoUInt64 = __0;
            if (_got != (_want)) {
                _t.errorf(("sum from 0 to %d was %d, want %v" : stdgo.GoString), stdgo.Go.toInterface((_m * _n) - (1i64 : stdgo.StdGoTypes.GoUInt64)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testValue_CompareAndSwap(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _tt in value_CompareAndSwapTests) {
            _t.run(stdgo.strconv.Strconv.itoa(_i)?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _v:Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
                    if (_tt._init != null) {
                        _v.store(_tt._init);
                    };
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var _err:stdgo.StdGoTypes.AnyInterface = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            if ((_tt._err == null) && (_err != null)) {
                                _t.errorf(("got %v, wanted no panic" : stdgo.GoString), _err);
                            } else if ((_tt._err != null) && (_err == null)) {
                                _t.errorf(("did not panic, want %v" : stdgo.GoString), _tt._err);
                            };
                        };
                        a();
                    });
                    {
                        var _got:Bool = _v.compareAndSwap(_tt._old, _tt._new);
                        if (_got != (_tt._want)) {
                            _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                        };
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            });
        };
    }
function testValueCompareAndSwapConcurrent(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _v:Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
        var _w:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        _v.store(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
        var __0:stdgo.StdGoTypes.GoInt = (1000 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = (100 : stdgo.StdGoTypes.GoInt), _n:stdgo.StdGoTypes.GoInt = __1, _m:stdgo.StdGoTypes.GoInt = __0;
        if (stdgo.testing.Testing.short()) {
            _m = (100 : stdgo.StdGoTypes.GoInt);
            _n = (100 : stdgo.StdGoTypes.GoInt);
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _m, _i++, {
                var _i:stdgo.StdGoTypes.GoInt = _i;
                _w.add((1 : stdgo.StdGoTypes.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _j:stdgo.StdGoTypes.GoInt = _i;
                            stdgo.Go.cfor(_j < (_m * _n), stdgo.runtime.Runtime.gosched(), {
                                if (_v.compareAndSwap(stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_j + (1 : stdgo.StdGoTypes.GoInt)))) {
                                    _j = _j + (_m);
                                };
                            });
                        };
                        _w.done();
                    };
                    a();
                });
            });
        };
        _w.wait_();
        {
            var _stop:stdgo.StdGoTypes.GoInt = (stdgo.Go.typeAssert((_v.load() : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt);
            if (_stop != (_m * _n)) {
                _t.errorf(("did not get to %v, stopped at %v" : stdgo.GoString), stdgo.Go.toInterface(_m * _n), stdgo.Go.toInterface(_stop));
            };
        };
    }
@:keep var _ = {
        try {
            var _v:stdgo.StdGoTypes.GoUInt64 = (1125899906842624i64 : stdgo.StdGoTypes.GoUInt64);
            if ((_v : stdgo.StdGoTypes.GoUIntptr) != ((0 : stdgo.StdGoTypes.GoUIntptr))) {
                if (_hammer32 != null) _hammer32.remove(("SwapUintptr" : stdgo.GoString));
                if (_hammer32 != null) _hammer32.remove(("AddUintptr" : stdgo.GoString));
                if (_hammer32 != null) _hammer32.remove(("CompareAndSwapUintptr" : stdgo.GoString));
                if (_hammer32 != null) _hammer32.remove(("SwapUintptrMethod" : stdgo.GoString));
                if (_hammer32 != null) _hammer32.remove(("AddUintptrMethod" : stdgo.GoString));
                if (_hammer32 != null) _hammer32.remove(("CompareAndSwapUintptrMethod" : stdgo.GoString));
            };
            var _v:stdgo.StdGoTypes.GoUInt64 = (1125899906842624i64 : stdgo.StdGoTypes.GoUInt64);
            if ((_v : stdgo.StdGoTypes.GoUIntptr) == ((0 : stdgo.StdGoTypes.GoUIntptr))) {
                if (_hammer64 != null) _hammer64.remove(("SwapUintptr" : stdgo.GoString));
                if (_hammer64 != null) _hammer64.remove(("SwapUintptrMethod" : stdgo.GoString));
                if (_hammer64 != null) _hammer64.remove(("AddUintptr" : stdgo.GoString));
                if (_hammer64 != null) _hammer64.remove(("AddUintptrMethod" : stdgo.GoString));
                if (_hammer64 != null) _hammer64.remove(("CompareAndSwapUintptr" : stdgo.GoString));
                if (_hammer64 != null) _hammer64.remove(("CompareAndSwapUintptrMethod" : stdgo.GoString));
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

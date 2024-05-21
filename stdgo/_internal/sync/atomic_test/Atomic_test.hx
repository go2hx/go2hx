package stdgo._internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
final _magic32 : stdgo.GoUInt64 = (233684719i64 : stdgo.GoUInt64);
final _magic64 : stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
var _global : stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
final _arch32 : Bool = true;
var _hammer32 : stdgo.GoMap<stdgo.GoString, (stdgo.Pointer<stdgo.GoUInt32>, stdgo.GoInt) -> Void> = ({
        final x = new stdgo.GoMap.GoStringMap<(stdgo.Pointer<stdgo.GoUInt32>, stdgo.GoInt) -> Void>();
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
    } : stdgo.GoMap<stdgo.GoString, (stdgo.Pointer<stdgo.GoUInt32>, stdgo.GoInt) -> Void>);
var _hammer64 : stdgo.GoMap<stdgo.GoString, (stdgo.Pointer<stdgo.GoUInt64>, stdgo.GoInt) -> Void> = ({
        final x = new stdgo.GoMap.GoStringMap<(stdgo.Pointer<stdgo.GoUInt64>, stdgo.GoInt) -> Void>();
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
    } : stdgo.GoMap<stdgo.GoString, (stdgo.Pointer<stdgo.GoUInt64>, stdgo.GoInt) -> Void>);
var value_SwapTests : stdgo.Slice<T__struct_14> = (new stdgo.Slice<T__struct_14>(4, 4, ...[({ _init : (null : stdgo.AnyInterface), _new : (null : stdgo.AnyInterface), _err : stdgo.Go.toInterface(("sync/atomic: swap of nil value into Value" : stdgo.GoString)), _want : (null : stdgo.AnyInterface) } : T__struct_14), ({ _init : (null : stdgo.AnyInterface), _new : stdgo.Go.toInterface(true), _want : (null : stdgo.AnyInterface), _err : (null : stdgo.AnyInterface) } : T__struct_14), ({ _init : stdgo.Go.toInterface(true), _new : stdgo.Go.toInterface(stdgo.Go.str()), _err : stdgo.Go.toInterface(("sync/atomic: swap of inconsistently typed value into Value" : stdgo.GoString)), _want : (null : stdgo.AnyInterface) } : T__struct_14), ({ _init : stdgo.Go.toInterface(true), _new : stdgo.Go.toInterface(false), _want : stdgo.Go.toInterface(true), _err : (null : stdgo.AnyInterface) } : T__struct_14)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _init : (null : stdgo.AnyInterface), _new : (null : stdgo.AnyInterface), _want : (null : stdgo.AnyInterface), _err : (null : stdgo.AnyInterface) } : T__struct_14)])) : stdgo.Slice<T__struct_14>);
var _heapA : T__struct_15 = ({ _uint : (0u32 : stdgo.GoUInt) } : T__struct_15);
var _heapB : T__struct_15 = ({ _uint : (0u32 : stdgo.GoUInt) } : T__struct_15);
var value_CompareAndSwapTests : stdgo.Slice<T__struct_16> = (new stdgo.Slice<T__struct_16>(8, 8, ...[({ _init : (null : stdgo.AnyInterface), _new : (null : stdgo.AnyInterface), _old : (null : stdgo.AnyInterface), _err : stdgo.Go.toInterface(("sync/atomic: compare and swap of nil value into Value" : stdgo.GoString)), _want : false } : T__struct_16), ({ _init : (null : stdgo.AnyInterface), _new : stdgo.Go.toInterface(true), _old : stdgo.Go.toInterface(stdgo.Go.str()), _err : stdgo.Go.toInterface(("sync/atomic: compare and swap of inconsistently typed values into Value" : stdgo.GoString)), _want : false } : T__struct_16), ({ _init : (null : stdgo.AnyInterface), _new : stdgo.Go.toInterface(true), _old : stdgo.Go.toInterface(true), _want : false, _err : (null : stdgo.AnyInterface) } : T__struct_16), ({ _init : (null : stdgo.AnyInterface), _new : stdgo.Go.toInterface(true), _old : (null : stdgo.AnyInterface), _want : true, _err : (null : stdgo.AnyInterface) } : T__struct_16), ({ _init : stdgo.Go.toInterface(true), _new : stdgo.Go.toInterface(stdgo.Go.str()), _err : stdgo.Go.toInterface(("sync/atomic: compare and swap of inconsistently typed value into Value" : stdgo.GoString)), _old : (null : stdgo.AnyInterface), _want : false } : T__struct_16), ({ _init : stdgo.Go.toInterface(true), _new : stdgo.Go.toInterface(true), _old : stdgo.Go.toInterface(false), _want : false, _err : (null : stdgo.AnyInterface) } : T__struct_16), ({ _init : stdgo.Go.toInterface(true), _new : stdgo.Go.toInterface(true), _old : stdgo.Go.toInterface(true), _want : true, _err : (null : stdgo.AnyInterface) } : T__struct_16), ({ _init : stdgo.Go.toInterface(stdgo.Go.asInterface(_heapA)), _new : stdgo.Go.toInterface(stdgo.Go.asInterface(({ _uint : (1u32 : stdgo.GoUInt) } : T__struct_15))), _old : stdgo.Go.toInterface(stdgo.Go.asInterface(_heapB)), _want : true, _err : (null : stdgo.AnyInterface) } : T__struct_16)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _init : (null : stdgo.AnyInterface), _new : (null : stdgo.AnyInterface), _old : (null : stdgo.AnyInterface), _want : false, _err : (null : stdgo.AnyInterface) } : T__struct_16)])) : stdgo.Slice<T__struct_16>);
@:structInit class List {
    public var next : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.sync.atomic_test.Atomic_test.List> = ({} : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.sync.atomic_test.Atomic_test.List>);
    public function new(?next:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.sync.atomic_test.Atomic_test.List>) {
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _before : stdgo.GoInt32;
    public var _i : stdgo.GoInt32;
    public var _after : stdgo.GoInt32;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _before : stdgo.GoInt32;
    public var _i : stdgo._internal.sync.atomic_.Atomic_.Int32;
    public var _after : stdgo.GoInt32;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _before : stdgo.GoUInt32;
    public var _i : stdgo.GoUInt32;
    public var _after : stdgo.GoUInt32;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _before : stdgo.GoUInt32;
    public var _i : stdgo._internal.sync.atomic_.Atomic_.Uint32;
    public var _after : stdgo.GoUInt32;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _before : stdgo.GoInt64;
    public var _i : stdgo.GoInt64;
    public var _after : stdgo.GoInt64;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _before : stdgo.GoInt64;
    public var _i : stdgo._internal.sync.atomic_.Atomic_.Int64_;
    public var _after : stdgo.GoInt64;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _before : stdgo.GoUInt64;
    public var _i : stdgo.GoUInt64;
    public var _after : stdgo.GoUInt64;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _before : stdgo.GoUInt64;
    public var _i : stdgo._internal.sync.atomic_.Atomic_.Uint64;
    public var _after : stdgo.GoUInt64;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _before : stdgo.GoUIntptr;
    public var _i : stdgo.GoUIntptr;
    public var _after : stdgo.GoUIntptr;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_9>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_9_static_extension) typedef T__struct_9 = {
    public var _before : stdgo.GoUIntptr;
    public var _i : stdgo._internal.sync.atomic_.Atomic_.Uintptr;
    public var _after : stdgo.GoUIntptr;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_10>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _before : stdgo.GoUIntptr;
    public var _i : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    public var _after : stdgo.GoUIntptr;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_11>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _before : stdgo.GoUIntptr;
    public var _i : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoUInt8>;
    public var _after : stdgo.GoUIntptr;
};
class T__struct_12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_12>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_12_static_extension) typedef T__struct_12 = {
    @:optional
    public var __25 : stdgo.GoUInt32;
    public var _i : stdgo._internal.sync.atomic_.Atomic_.Int64_;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_13>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_13_static_extension) typedef T__struct_13 = {
    @:optional
    public var __31 : stdgo.GoUInt32;
    public var _i : stdgo._internal.sync.atomic_.Atomic_.Uint64;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_14>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_14_static_extension) typedef T__struct_14 = {
    public var _init : stdgo.AnyInterface;
    public var _new : stdgo.AnyInterface;
    public var _want : stdgo.AnyInterface;
    public var _err : stdgo.AnyInterface;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_15>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_15_static_extension) typedef T__struct_15 = {
    @:embedded
    public var _uint : stdgo.GoUInt;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_16>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo._internal.sync.atomic_test.Atomic_test.T__struct_16_static_extension) typedef T__struct_16 = {
    public var _init : stdgo.AnyInterface;
    public var _new : stdgo.AnyInterface;
    public var _old : stdgo.AnyInterface;
    public var _want : Bool;
    public var _err : stdgo.AnyInterface;
};
function testSwapInt32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_0 = ({ _before : (0 : stdgo.GoInt32), _i : (0 : stdgo.GoInt32), _after : (0 : stdgo.GoInt32) } : T__struct_0);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        var _j:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _delta:stdgo.GoInt32 = (1 : stdgo.GoInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt32), {
                var _k:stdgo.GoInt32 = swapInt32(stdgo.Go.pointer(_x._i), _delta);
                if (((_x._i != _delta) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testSwapInt32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_1 = ({ _before : (0 : stdgo.GoInt32), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Int32), _after : (0 : stdgo.GoInt32) } : T__struct_1);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        var _j:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _delta:stdgo.GoInt32 = (1 : stdgo.GoInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt32), {
                var _k:stdgo.GoInt32 = _x._i.swap(_delta);
                if (((_x._i.load() != _delta) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testSwapUint32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_2 = ({ _before : (0 : stdgo.GoUInt32), _i : (0 : stdgo.GoUInt32), _after : (0 : stdgo.GoUInt32) } : T__struct_2);
        _x._before = (233684719u32 : stdgo.GoUInt32);
        _x._after = (233684719u32 : stdgo.GoUInt32);
        var _j:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _delta:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt32), {
                var _k:stdgo.GoUInt32 = swapUint32(stdgo.Go.pointer(_x._i), _delta);
                if (((_x._i != _delta) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if (((_x._before != (233684719u32 : stdgo.GoUInt32)) || (_x._after != (233684719u32 : stdgo.GoUInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testSwapUint32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_3 = ({ _before : (0 : stdgo.GoUInt32), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uint32), _after : (0 : stdgo.GoUInt32) } : T__struct_3);
        _x._before = (233684719u32 : stdgo.GoUInt32);
        _x._after = (233684719u32 : stdgo.GoUInt32);
        var _j:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _delta:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt32), {
                var _k:stdgo.GoUInt32 = _x._i.swap(_delta);
                if (((_x._i.load() != _delta) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if (((_x._before != (233684719u32 : stdgo.GoUInt32)) || (_x._after != (233684719u32 : stdgo.GoUInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testSwapInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_4 = ({ _before : (0 : stdgo.GoInt64), _i : (0 : stdgo.GoInt64), _after : (0 : stdgo.GoInt64) } : T__struct_4);
        var _magic64:stdgo.GoInt64 = (1003703129787580143i64 : stdgo.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var _delta:stdgo.GoInt64 = (1i64 : stdgo.GoInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt64), {
                var _k:stdgo.GoInt64 = swapInt64(stdgo.Go.pointer(_x._i), _delta);
                if (((_x._i != _delta) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testSwapInt64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_5 = ({ _before : (0 : stdgo.GoInt64), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Int64_), _after : (0 : stdgo.GoInt64) } : T__struct_5);
        var _magic64:stdgo.GoInt64 = (1003703129787580143i64 : stdgo.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var _delta:stdgo.GoInt64 = (1i64 : stdgo.GoInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt64), {
                var _k:stdgo.GoInt64 = _x._i.swap(_delta);
                if (((_x._i.load() != _delta) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testSwapUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_6 = ({ _before : (0 : stdgo.GoUInt64), _i : (0 : stdgo.GoUInt64), _after : (0 : stdgo.GoUInt64) } : T__struct_6);
        var _magic64:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _delta:stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt64), {
                var _k:stdgo.GoUInt64 = swapUint64(stdgo.Go.pointer(_x._i), _delta);
                if (((_x._i != _delta) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testSwapUint64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_7 = ({ _before : (0 : stdgo.GoUInt64), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uint64), _after : (0 : stdgo.GoUInt64) } : T__struct_7);
        var _magic64:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _delta:stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt64), {
                var _k:stdgo.GoUInt64 = _x._i.swap(_delta);
                if (((_x._i.load() != _delta) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testSwapUintptr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_8 = ({ _before : (0 : stdgo.GoUIntptr), _i : (0 : stdgo.GoUIntptr), _after : (0 : stdgo.GoUIntptr) } : T__struct_8);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        {
            var _delta:stdgo.GoUIntptr = (1 : stdgo.GoUIntptr);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUIntptr) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUIntptr), {
                var _k:stdgo.GoUIntptr = swapUintptr(stdgo.Go.pointer(_x._i), _delta);
                if (((_x._i != _delta) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testSwapUintptrMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_9 = ({ _before : (0 : stdgo.GoUIntptr), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uintptr), _after : (0 : stdgo.GoUIntptr) } : T__struct_9);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        {
            var _delta:stdgo.GoUIntptr = (1 : stdgo.GoUIntptr);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUIntptr) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUIntptr), {
                var _k:stdgo.GoUIntptr = _x._i.swap(_delta);
                if (((_x._i.load() != _delta) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
                _j = _delta;
            });
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function _testPointers():stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> {
        var _pointers:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _pointers = (_pointers.__append__((stdgo.Go.toInterface(stdgo.Go.pointer(_global[(((1 : stdgo.GoInt) << _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)));
            });
        };
        _pointers = (_pointers.__append__((stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoUInt8))) : stdgo._internal.unsafe.Unsafe.UnsafePointer)));
        _pointers = (_pointers.__append__(@:default_value null));
        return _pointers;
    }
function testSwapPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_10 = ({ _before : (0 : stdgo.GoUIntptr), _i : @:default_value null, _after : (0 : stdgo.GoUIntptr) } : T__struct_10);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value null;
        for (__34 => _p in _testPointers()) {
            var _k:stdgo._internal.unsafe.Unsafe.UnsafePointer = swapPointer(stdgo.Go.pointer(_x._i), _p);
            if (((_x._i != _p) || (_k != _j) : Bool)) {
                _t.fatalf(("p=%p i=%p j=%p k=%p" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
            };
            _j = _p;
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testSwapPointerMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_11 = ({ _before : (0 : stdgo.GoUIntptr), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoUInt8>), _after : (0 : stdgo.GoUIntptr) } : T__struct_11);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.Pointer<stdgo.GoByte> = (null : stdgo.Pointer<stdgo.GoUInt8>);
        for (__34 => _p in _testPointers()) {
            var _p = (_p.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoByte>);
            var _k = _x._i.swap((0 : stdgo.GoUInt8), _p);
            if (((_x._i.load((0 : stdgo.GoUInt8)) != _p) || (_k != _j) : Bool)) {
                _t.fatalf(("p=%p i=%p j=%p k=%p" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_x._i.load((0 : stdgo.GoUInt8))), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
            };
            _j = _p;
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testAddInt32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_0 = ({ _before : (0 : stdgo.GoInt32), _i : (0 : stdgo.GoInt32), _after : (0 : stdgo.GoInt32) } : T__struct_0);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        var _j:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _delta:stdgo.GoInt32 = (1 : stdgo.GoInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt32), {
                var _k:stdgo.GoInt32 = addInt32(stdgo.Go.pointer(_x._i), _delta);
                _j = (_j + (_delta) : stdgo.GoInt32);
                if (((_x._i != _j) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testAddInt32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_1 = ({ _before : (0 : stdgo.GoInt32), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Int32), _after : (0 : stdgo.GoInt32) } : T__struct_1);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        var _j:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _delta:stdgo.GoInt32 = (1 : stdgo.GoInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt32), {
                var _k:stdgo.GoInt32 = _x._i.add(_delta);
                _j = (_j + (_delta) : stdgo.GoInt32);
                if (((_x._i.load() != _j) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testAddUint32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_2 = ({ _before : (0 : stdgo.GoUInt32), _i : (0 : stdgo.GoUInt32), _after : (0 : stdgo.GoUInt32) } : T__struct_2);
        _x._before = (233684719u32 : stdgo.GoUInt32);
        _x._after = (233684719u32 : stdgo.GoUInt32);
        var _j:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _delta:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt32), {
                var _k:stdgo.GoUInt32 = addUint32(stdgo.Go.pointer(_x._i), _delta);
                _j = (_j + (_delta) : stdgo.GoUInt32);
                if (((_x._i != _j) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if (((_x._before != (233684719u32 : stdgo.GoUInt32)) || (_x._after != (233684719u32 : stdgo.GoUInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testAddUint32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_3 = ({ _before : (0 : stdgo.GoUInt32), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uint32), _after : (0 : stdgo.GoUInt32) } : T__struct_3);
        _x._before = (233684719u32 : stdgo.GoUInt32);
        _x._after = (233684719u32 : stdgo.GoUInt32);
        var _j:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _delta:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt32), {
                var _k:stdgo.GoUInt32 = _x._i.add(_delta);
                _j = (_j + (_delta) : stdgo.GoUInt32);
                if (((_x._i.load() != _j) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if (((_x._before != (233684719u32 : stdgo.GoUInt32)) || (_x._after != (233684719u32 : stdgo.GoUInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testAddInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_4 = ({ _before : (0 : stdgo.GoInt64), _i : (0 : stdgo.GoInt64), _after : (0 : stdgo.GoInt64) } : T__struct_4);
        var _magic64:stdgo.GoInt64 = (1003703129787580143i64 : stdgo.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var _delta:stdgo.GoInt64 = (1i64 : stdgo.GoInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt64), {
                var _k:stdgo.GoInt64 = addInt64(stdgo.Go.pointer(_x._i), _delta);
                _j = (_j + (_delta) : stdgo.GoInt64);
                if (((_x._i != _j) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testAddInt64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_5 = ({ _before : (0 : stdgo.GoInt64), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Int64_), _after : (0 : stdgo.GoInt64) } : T__struct_5);
        var _magic64:stdgo.GoInt64 = (1003703129787580143i64 : stdgo.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var _delta:stdgo.GoInt64 = (1i64 : stdgo.GoInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt64), {
                var _k:stdgo.GoInt64 = _x._i.add(_delta);
                _j = (_j + (_delta) : stdgo.GoInt64);
                if (((_x._i.load() != _j) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testAddUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_6 = ({ _before : (0 : stdgo.GoUInt64), _i : (0 : stdgo.GoUInt64), _after : (0 : stdgo.GoUInt64) } : T__struct_6);
        var _magic64:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _delta:stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt64), {
                var _k:stdgo.GoUInt64 = addUint64(stdgo.Go.pointer(_x._i), _delta);
                _j = (_j + (_delta) : stdgo.GoUInt64);
                if (((_x._i != _j) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testAddUint64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_7 = ({ _before : (0 : stdgo.GoUInt64), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uint64), _after : (0 : stdgo.GoUInt64) } : T__struct_7);
        var _magic64:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _j:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _delta:stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt64), {
                var _k:stdgo.GoUInt64 = _x._i.add(_delta);
                _j = (_j + (_delta) : stdgo.GoUInt64);
                if (((_x._i.load() != _j) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testAddUintptr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_8 = ({ _before : (0 : stdgo.GoUIntptr), _i : (0 : stdgo.GoUIntptr), _after : (0 : stdgo.GoUIntptr) } : T__struct_8);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        {
            var _delta:stdgo.GoUIntptr = (1 : stdgo.GoUIntptr);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUIntptr) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUIntptr), {
                var _k:stdgo.GoUIntptr = addUintptr(stdgo.Go.pointer(_x._i), _delta);
                _j = (_j + (_delta) : stdgo.GoUIntptr);
                if (((_x._i != _j) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testAddUintptrMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_9 = ({ _before : (0 : stdgo.GoUIntptr), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uintptr), _after : (0 : stdgo.GoUIntptr) } : T__struct_9);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _j:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        {
            var _delta:stdgo.GoUIntptr = (1 : stdgo.GoUIntptr);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUIntptr) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUIntptr), {
                var _k:stdgo.GoUIntptr = _x._i.add(_delta);
                _j = (_j + (_delta) : stdgo.GoUIntptr);
                if (((_x._i.load() != _j) || (_k != _j) : Bool)) {
                    _t.fatalf(("delta=%d i=%d j=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k));
                };
            });
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testCompareAndSwapInt32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_0 = ({ _before : (0 : stdgo.GoInt32), _i : (0 : stdgo.GoInt32), _after : (0 : stdgo.GoInt32) } : T__struct_0);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        {
            var _val:stdgo.GoInt32 = (1 : stdgo.GoInt32);
            stdgo.Go.cfor(((_val + _val : stdgo.GoInt32) > _val : Bool), _val = (_val + (_val) : stdgo.GoInt32), {
                _x._i = _val;
                if (!compareAndSwapInt32(stdgo.Go.pointer(_x._i), _val, (_val + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32)));
                };
                if (_x._i != ((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32)));
                };
                _x._i = (_val + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                if (compareAndSwapInt32(stdgo.Go.pointer(_x._i), _val, (_val + (2 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2 : stdgo.GoInt32) : stdgo.GoInt32)));
                };
                if (_x._i != ((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32)));
                };
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testCompareAndSwapInt32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_1 = ({ _before : (0 : stdgo.GoInt32), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Int32), _after : (0 : stdgo.GoInt32) } : T__struct_1);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        {
            var _val:stdgo.GoInt32 = (1 : stdgo.GoInt32);
            stdgo.Go.cfor(((_val + _val : stdgo.GoInt32) > _val : Bool), _val = (_val + (_val) : stdgo.GoInt32), {
                _x._i.store(_val);
                if (!_x._i.compareAndSwap(_val, (_val + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32)));
                };
                if (_x._i.load() != ((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32)));
                };
                _x._i.store((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32));
                if (_x._i.compareAndSwap(_val, (_val + (2 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2 : stdgo.GoInt32) : stdgo.GoInt32)));
                };
                if (_x._i.load() != ((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1 : stdgo.GoInt32) : stdgo.GoInt32)));
                };
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testCompareAndSwapUint32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_2 = ({ _before : (0 : stdgo.GoUInt32), _i : (0 : stdgo.GoUInt32), _after : (0 : stdgo.GoUInt32) } : T__struct_2);
        _x._before = (233684719u32 : stdgo.GoUInt32);
        _x._after = (233684719u32 : stdgo.GoUInt32);
        {
            var _val:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32);
            stdgo.Go.cfor(((_val + _val : stdgo.GoUInt32) > _val : Bool), _val = (_val + (_val) : stdgo.GoUInt32), {
                _x._i = _val;
                if (!compareAndSwapUint32(stdgo.Go.pointer(_x._i), _val, (_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
                if (_x._i != ((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
                _x._i = (_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                if (compareAndSwapUint32(stdgo.Go.pointer(_x._i), _val, (_val + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
                if (_x._i != ((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
            });
        };
        if (((_x._before != (233684719u32 : stdgo.GoUInt32)) || (_x._after != (233684719u32 : stdgo.GoUInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testCompareAndSwapUint32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_3 = ({ _before : (0 : stdgo.GoUInt32), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uint32), _after : (0 : stdgo.GoUInt32) } : T__struct_3);
        _x._before = (233684719u32 : stdgo.GoUInt32);
        _x._after = (233684719u32 : stdgo.GoUInt32);
        {
            var _val:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32);
            stdgo.Go.cfor(((_val + _val : stdgo.GoUInt32) > _val : Bool), _val = (_val + (_val) : stdgo.GoUInt32), {
                _x._i.store(_val);
                if (!_x._i.compareAndSwap(_val, (_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
                if (_x._i.load() != ((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
                _x._i.store((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
                if (_x._i.compareAndSwap(_val, (_val + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
                if (_x._i.load() != ((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
                };
            });
        };
        if (((_x._before != (233684719u32 : stdgo.GoUInt32)) || (_x._after != (233684719u32 : stdgo.GoUInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testCompareAndSwapInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_4 = ({ _before : (0 : stdgo.GoInt64), _i : (0 : stdgo.GoInt64), _after : (0 : stdgo.GoInt64) } : T__struct_4);
        var _magic64:stdgo.GoInt64 = (1003703129787580143i64 : stdgo.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _val:stdgo.GoInt64 = (1i64 : stdgo.GoInt64);
            stdgo.Go.cfor(((_val + _val : stdgo.GoInt64) > _val : Bool), _val = (_val + (_val) : stdgo.GoInt64), {
                _x._i = _val;
                if (!compareAndSwapInt64(stdgo.Go.pointer(_x._i), _val, (_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)));
                };
                if (_x._i != ((_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)));
                };
                _x._i = (_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                if (compareAndSwapInt64(stdgo.Go.pointer(_x._i), _val, (_val + (2i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2i64 : stdgo.GoInt64) : stdgo.GoInt64)));
                };
                if (_x._i != ((_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)));
                };
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testCompareAndSwapInt64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_5 = ({ _before : (0 : stdgo.GoInt64), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Int64_), _after : (0 : stdgo.GoInt64) } : T__struct_5);
        var _magic64:stdgo.GoInt64 = (1003703129787580143i64 : stdgo.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _val:stdgo.GoInt64 = (1i64 : stdgo.GoInt64);
            stdgo.Go.cfor(((_val + _val : stdgo.GoInt64) > _val : Bool), _val = (_val + (_val) : stdgo.GoInt64), {
                _x._i.store(_val);
                if (!_x._i.compareAndSwap(_val, (_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)));
                };
                if (_x._i.load() != ((_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)));
                };
                _x._i.store((_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64));
                if (_x._i.compareAndSwap(_val, (_val + (2i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2i64 : stdgo.GoInt64) : stdgo.GoInt64)));
                };
                if (_x._i.load() != ((_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)));
                };
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function _testCompareAndSwapUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _cas:(stdgo.Pointer<stdgo.GoUInt64>, stdgo.GoUInt64, stdgo.GoUInt64) -> Bool):Void {
        var _x:T__struct_6 = ({ _before : (0 : stdgo.GoUInt64), _i : (0 : stdgo.GoUInt64), _after : (0 : stdgo.GoUInt64) } : T__struct_6);
        var _magic64:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _val:stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
            stdgo.Go.cfor(((_val + _val : stdgo.GoUInt64) > _val : Bool), _val = (_val + (_val) : stdgo.GoUInt64), {
                _x._i = _val;
                if (!_cas(stdgo.Go.pointer(_x._i), _val, (_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                };
                if (_x._i != ((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                };
                _x._i = (_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                if (_cas(stdgo.Go.pointer(_x._i), _val, (_val + (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                };
                if (_x._i != ((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                };
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testCompareAndSwapUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testCompareAndSwapUint64(_t, compareAndSwapUint64);
    }
function testCompareAndSwapUint64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_7 = ({ _before : (0 : stdgo.GoUInt64), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uint64), _after : (0 : stdgo.GoUInt64) } : T__struct_7);
        var _magic64:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _val:stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
            stdgo.Go.cfor(((_val + _val : stdgo.GoUInt64) > _val : Bool), _val = (_val + (_val) : stdgo.GoUInt64), {
                _x._i.store(_val);
                if (!_x._i.compareAndSwap(_val, (_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                };
                if (_x._i.load() != ((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                };
                _x._i.store((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
                if (_x._i.compareAndSwap(_val, (_val + (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                };
                if (_x._i.load() != ((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                };
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testCompareAndSwapUintptr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_8 = ({ _before : (0 : stdgo.GoUIntptr), _i : (0 : stdgo.GoUIntptr), _after : (0 : stdgo.GoUIntptr) } : T__struct_8);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        {
            var _val:stdgo.GoUIntptr = (1 : stdgo.GoUIntptr);
            stdgo.Go.cfor(((_val + _val : stdgo.GoUIntptr) > _val : Bool), _val = (_val + (_val) : stdgo.GoUIntptr), {
                _x._i = _val;
                if (!compareAndSwapUintptr(stdgo.Go.pointer(_x._i), _val, (_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)));
                };
                if (_x._i != ((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)));
                };
                _x._i = (_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
                if (compareAndSwapUintptr(stdgo.Go.pointer(_x._i), _val, (_val + (2 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2 : stdgo.GoUIntptr) : stdgo.GoUIntptr)));
                };
                if (_x._i != ((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)));
                };
            });
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testCompareAndSwapUintptrMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_9 = ({ _before : (0 : stdgo.GoUIntptr), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uintptr), _after : (0 : stdgo.GoUIntptr) } : T__struct_9);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        {
            var _val:stdgo.GoUIntptr = (1 : stdgo.GoUIntptr);
            stdgo.Go.cfor(((_val + _val : stdgo.GoUIntptr) > _val : Bool), _val = (_val + (_val) : stdgo.GoUIntptr), {
                _x._i.store(_val);
                if (!_x._i.compareAndSwap(_val, (_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                    _t.fatalf(("should have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)));
                };
                if (_x._i.load() != ((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)));
                };
                _x._i.store((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr));
                if (_x._i.compareAndSwap(_val, (_val + (2 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                    _t.fatalf(("should not have swapped %#x %#x" : stdgo.GoString), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_val + (2 : stdgo.GoUIntptr) : stdgo.GoUIntptr)));
                };
                if (_x._i.load() != ((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                    _t.fatalf(("wrong x.i after swap: x.i=%#x val+1=%#x" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface((_val + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)));
                };
            });
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((_magicptr : stdgo.GoUIntptr)), stdgo.Go.toInterface((_magicptr : stdgo.GoUIntptr)));
        };
    }
function testCompareAndSwapPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_10 = ({ _before : (0 : stdgo.GoUIntptr), _i : @:default_value null, _after : (0 : stdgo.GoUIntptr) } : T__struct_10);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _q:stdgo._internal.unsafe.Unsafe.UnsafePointer = (stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoUInt8))) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        for (__34 => _p in _testPointers()) {
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
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testCompareAndSwapPointerMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_11 = ({ _before : (0 : stdgo.GoUIntptr), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoUInt8>), _after : (0 : stdgo.GoUIntptr) } : T__struct_11);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _q = stdgo.Go.pointer((0 : stdgo.GoUInt8));
        for (__34 => _p in _testPointers()) {
            var _p = (_p.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoByte>);
            _x._i.store((0 : stdgo.GoUInt8), _p);
            if (!_x._i.compareAndSwap((0 : stdgo.GoUInt8), _p, _q)) {
                _t.fatalf(("should have swapped %p %p" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_q));
            };
            if (_x._i.load((0 : stdgo.GoUInt8)) != (_q)) {
                _t.fatalf(("wrong x.i after swap: x.i=%p want %p" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load((0 : stdgo.GoUInt8))), stdgo.Go.toInterface(_q));
            };
            if (_x._i.compareAndSwap((0 : stdgo.GoUInt8), _p, (null : stdgo.Pointer<stdgo.GoUInt8>))) {
                _t.fatalf(("should not have swapped %p nil" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
            if (_x._i.load((0 : stdgo.GoUInt8)) != (_q)) {
                _t.fatalf(("wrong x.i after swap: x.i=%p want %p" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load((0 : stdgo.GoUInt8))), stdgo.Go.toInterface(_q));
            };
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testLoadInt32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_0 = ({ _before : (0 : stdgo.GoInt32), _i : (0 : stdgo.GoInt32), _after : (0 : stdgo.GoInt32) } : T__struct_0);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        {
            var _delta:stdgo.GoInt32 = (1 : stdgo.GoInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt32), {
                var _k:stdgo.GoInt32 = loadInt32(stdgo.Go.pointer(_x._i));
                if (_k != (_x._i)) {
                    _t.fatalf(("delta=%d i=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_k));
                };
                _x._i = (_x._i + (_delta) : stdgo.GoInt32);
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testLoadInt32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_1 = ({ _before : (0 : stdgo.GoInt32), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Int32), _after : (0 : stdgo.GoInt32) } : T__struct_1);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        var _want:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _delta:stdgo.GoInt32 = (1 : stdgo.GoInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt32), {
                var _k:stdgo.GoInt32 = _x._i.load();
                if (_k != (_want)) {
                    _t.fatalf(("delta=%d i=%d k=%d want=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_want));
                };
                _x._i.store((_k + _delta : stdgo.GoInt32));
                _want = (_k + _delta : stdgo.GoInt32);
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testLoadUint32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_2 = ({ _before : (0 : stdgo.GoUInt32), _i : (0 : stdgo.GoUInt32), _after : (0 : stdgo.GoUInt32) } : T__struct_2);
        _x._before = (233684719u32 : stdgo.GoUInt32);
        _x._after = (233684719u32 : stdgo.GoUInt32);
        {
            var _delta:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt32), {
                var _k:stdgo.GoUInt32 = loadUint32(stdgo.Go.pointer(_x._i));
                if (_k != (_x._i)) {
                    _t.fatalf(("delta=%d i=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_k));
                };
                _x._i = (_x._i + (_delta) : stdgo.GoUInt32);
            });
        };
        if (((_x._before != (233684719u32 : stdgo.GoUInt32)) || (_x._after != (233684719u32 : stdgo.GoUInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testLoadUint32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_3 = ({ _before : (0 : stdgo.GoUInt32), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uint32), _after : (0 : stdgo.GoUInt32) } : T__struct_3);
        _x._before = (233684719u32 : stdgo.GoUInt32);
        _x._after = (233684719u32 : stdgo.GoUInt32);
        var _want:stdgo.GoUInt32 = (0u32 : stdgo.GoUInt32);
        {
            var _delta:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt32), {
                var _k:stdgo.GoUInt32 = _x._i.load();
                if (_k != (_want)) {
                    _t.fatalf(("delta=%d i=%d k=%d want=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_want));
                };
                _x._i.store((_k + _delta : stdgo.GoUInt32));
                _want = (_k + _delta : stdgo.GoUInt32);
            });
        };
        if (((_x._before != (233684719u32 : stdgo.GoUInt32)) || (_x._after != (233684719u32 : stdgo.GoUInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testLoadInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_4 = ({ _before : (0 : stdgo.GoInt64), _i : (0 : stdgo.GoInt64), _after : (0 : stdgo.GoInt64) } : T__struct_4);
        var _magic64:stdgo.GoInt64 = (1003703129787580143i64 : stdgo.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _delta:stdgo.GoInt64 = (1i64 : stdgo.GoInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt64), {
                var _k:stdgo.GoInt64 = loadInt64(stdgo.Go.pointer(_x._i));
                if (_k != (_x._i)) {
                    _t.fatalf(("delta=%d i=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_k));
                };
                _x._i = (_x._i + (_delta) : stdgo.GoInt64);
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testLoadInt64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_5 = ({ _before : (0 : stdgo.GoInt64), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Int64_), _after : (0 : stdgo.GoInt64) } : T__struct_5);
        var _magic64:stdgo.GoInt64 = (1003703129787580143i64 : stdgo.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _want:stdgo.GoInt64 = (0i64 : stdgo.GoInt64);
        {
            var _delta:stdgo.GoInt64 = (1i64 : stdgo.GoInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt64), {
                var _k:stdgo.GoInt64 = _x._i.load();
                if (_k != (_want)) {
                    _t.fatalf(("delta=%d i=%d k=%d want=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_want));
                };
                _x._i.store((_k + _delta : stdgo.GoInt64));
                _want = (_k + _delta : stdgo.GoInt64);
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testLoadUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_6 = ({ _before : (0 : stdgo.GoUInt64), _i : (0 : stdgo.GoUInt64), _after : (0 : stdgo.GoUInt64) } : T__struct_6);
        var _magic64:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        {
            var _delta:stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt64), {
                var _k:stdgo.GoUInt64 = loadUint64(stdgo.Go.pointer(_x._i));
                if (_k != (_x._i)) {
                    _t.fatalf(("delta=%d i=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_k));
                };
                _x._i = (_x._i + (_delta) : stdgo.GoUInt64);
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testLoadUint64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_7 = ({ _before : (0 : stdgo.GoUInt64), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uint64), _after : (0 : stdgo.GoUInt64) } : T__struct_7);
        var _magic64:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _want:stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
        {
            var _delta:stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt64), {
                var _k:stdgo.GoUInt64 = _x._i.load();
                if (_k != (_want)) {
                    _t.fatalf(("delta=%d i=%d k=%d want=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_want));
                };
                _x._i.store((_k + _delta : stdgo.GoUInt64));
                _want = (_k + _delta : stdgo.GoUInt64);
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testLoadUintptr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_8 = ({ _before : (0 : stdgo.GoUIntptr), _i : (0 : stdgo.GoUIntptr), _after : (0 : stdgo.GoUIntptr) } : T__struct_8);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        {
            var _delta:stdgo.GoUIntptr = (1 : stdgo.GoUIntptr);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUIntptr) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUIntptr), {
                var _k:stdgo.GoUIntptr = loadUintptr(stdgo.Go.pointer(_x._i));
                if (_k != (_x._i)) {
                    _t.fatalf(("delta=%d i=%d k=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_k));
                };
                _x._i = (_x._i + (_delta) : stdgo.GoUIntptr);
            });
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testLoadUintptrMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_9 = ({ _before : (0 : stdgo.GoUIntptr), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uintptr), _after : (0 : stdgo.GoUIntptr) } : T__struct_9);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _want:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        {
            var _delta:stdgo.GoUIntptr = (1 : stdgo.GoUIntptr);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUIntptr) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUIntptr), {
                var _k:stdgo.GoUIntptr = _x._i.load();
                if (_k != (_want)) {
                    _t.fatalf(("delta=%d i=%d k=%d want=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_want));
                };
                _x._i.store((_k + _delta : stdgo.GoUIntptr));
                _want = (_k + _delta : stdgo.GoUIntptr);
            });
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testLoadPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_10 = ({ _before : (0 : stdgo.GoUIntptr), _i : @:default_value null, _after : (0 : stdgo.GoUIntptr) } : T__struct_10);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        for (__34 => _p in _testPointers()) {
            _x._i = _p;
            var _k:stdgo._internal.unsafe.Unsafe.UnsafePointer = loadPointer(stdgo.Go.pointer(_x._i));
            if (_k != (_p)) {
                _t.fatalf(("p=%x k=%x" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_k));
            };
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testLoadPointerMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_11 = ({ _before : (0 : stdgo.GoUIntptr), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoUInt8>), _after : (0 : stdgo.GoUIntptr) } : T__struct_11);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        for (__34 => _p in _testPointers()) {
            var _p = (_p.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoByte>);
            _x._i.store((0 : stdgo.GoUInt8), _p);
            var _k = _x._i.load((0 : stdgo.GoUInt8));
            if (_k != (_p)) {
                _t.fatalf(("p=%x k=%x" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_k));
            };
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testStoreInt32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_0 = ({ _before : (0 : stdgo.GoInt32), _i : (0 : stdgo.GoInt32), _after : (0 : stdgo.GoInt32) } : T__struct_0);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        var _v:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _delta:stdgo.GoInt32 = (1 : stdgo.GoInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt32), {
                storeInt32(stdgo.Go.pointer(_x._i), _v);
                if (_x._i != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_v));
                };
                _v = (_v + (_delta) : stdgo.GoInt32);
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testStoreInt32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_1 = ({ _before : (0 : stdgo.GoInt32), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Int32), _after : (0 : stdgo.GoInt32) } : T__struct_1);
        _x._before = (233684719 : stdgo.GoInt32);
        _x._after = (233684719 : stdgo.GoInt32);
        var _v:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _delta:stdgo.GoInt32 = (1 : stdgo.GoInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt32), {
                _x._i.store(_v);
                if (_x._i.load() != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_v));
                };
                _v = (_v + (_delta) : stdgo.GoInt32);
            });
        };
        if (((_x._before != (233684719 : stdgo.GoInt32)) || (_x._after != (233684719 : stdgo.GoInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testStoreUint32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_2 = ({ _before : (0 : stdgo.GoUInt32), _i : (0 : stdgo.GoUInt32), _after : (0 : stdgo.GoUInt32) } : T__struct_2);
        _x._before = (233684719u32 : stdgo.GoUInt32);
        _x._after = (233684719u32 : stdgo.GoUInt32);
        var _v:stdgo.GoUInt32 = (0u32 : stdgo.GoUInt32);
        {
            var _delta:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt32), {
                storeUint32(stdgo.Go.pointer(_x._i), _v);
                if (_x._i != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_v));
                };
                _v = (_v + (_delta) : stdgo.GoUInt32);
            });
        };
        if (((_x._before != (233684719u32 : stdgo.GoUInt32)) || (_x._after != (233684719u32 : stdgo.GoUInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testStoreUint32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_3 = ({ _before : (0 : stdgo.GoUInt32), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uint32), _after : (0 : stdgo.GoUInt32) } : T__struct_3);
        _x._before = (233684719u32 : stdgo.GoUInt32);
        _x._after = (233684719u32 : stdgo.GoUInt32);
        var _v:stdgo.GoUInt32 = (0u32 : stdgo.GoUInt32);
        {
            var _delta:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt32) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt32), {
                _x._i.store(_v);
                if (_x._i.load() != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_v));
                };
                _v = (_v + (_delta) : stdgo.GoUInt32);
            });
        };
        if (((_x._before != (233684719u32 : stdgo.GoUInt32)) || (_x._after != (233684719u32 : stdgo.GoUInt32)) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface((233684719 : stdgo.GoInt)), stdgo.Go.toInterface((233684719 : stdgo.GoInt)));
        };
    }
function testStoreInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_4 = ({ _before : (0 : stdgo.GoInt64), _i : (0 : stdgo.GoInt64), _after : (0 : stdgo.GoInt64) } : T__struct_4);
        var _magic64:stdgo.GoInt64 = (1003703129787580143i64 : stdgo.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _v:stdgo.GoInt64 = (0i64 : stdgo.GoInt64);
        {
            var _delta:stdgo.GoInt64 = (1i64 : stdgo.GoInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt64), {
                storeInt64(stdgo.Go.pointer(_x._i), _v);
                if (_x._i != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_v));
                };
                _v = (_v + (_delta) : stdgo.GoInt64);
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testStoreInt64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_5 = ({ _before : (0 : stdgo.GoInt64), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Int64_), _after : (0 : stdgo.GoInt64) } : T__struct_5);
        var _magic64:stdgo.GoInt64 = (1003703129787580143i64 : stdgo.GoInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _v:stdgo.GoInt64 = (0i64 : stdgo.GoInt64);
        {
            var _delta:stdgo.GoInt64 = (1i64 : stdgo.GoInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoInt64), {
                _x._i.store(_v);
                if (_x._i.load() != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_v));
                };
                _v = (_v + (_delta) : stdgo.GoInt64);
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testStoreUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_6 = ({ _before : (0 : stdgo.GoUInt64), _i : (0 : stdgo.GoUInt64), _after : (0 : stdgo.GoUInt64) } : T__struct_6);
        var _magic64:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _v:stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
        {
            var _delta:stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt64), {
                storeUint64(stdgo.Go.pointer(_x._i), _v);
                if (_x._i != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_v));
                };
                _v = (_v + (_delta) : stdgo.GoUInt64);
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testStoreUint64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_7 = ({ _before : (0 : stdgo.GoUInt64), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uint64), _after : (0 : stdgo.GoUInt64) } : T__struct_7);
        var _magic64:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        _x._before = _magic64;
        _x._after = _magic64;
        var _v:stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
        {
            var _delta:stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUInt64) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUInt64), {
                _x._i.store(_v);
                if (_x._i.load() != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_v));
                };
                _v = (_v + (_delta) : stdgo.GoUInt64);
            });
        };
        if (((_x._before != _magic64) || (_x._after != _magic64) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magic64), stdgo.Go.toInterface(_magic64));
        };
    }
function testStoreUintptr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_8 = ({ _before : (0 : stdgo.GoUIntptr), _i : (0 : stdgo.GoUIntptr), _after : (0 : stdgo.GoUIntptr) } : T__struct_8);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _v:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        {
            var _delta:stdgo.GoUIntptr = (1 : stdgo.GoUIntptr);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUIntptr) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUIntptr), {
                storeUintptr(stdgo.Go.pointer(_x._i), _v);
                if (_x._i != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_v));
                };
                _v = (_v + (_delta) : stdgo.GoUIntptr);
            });
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testStoreUintptrMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_9 = ({ _before : (0 : stdgo.GoUIntptr), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uintptr), _after : (0 : stdgo.GoUIntptr) } : T__struct_9);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        var _v:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        {
            var _delta:stdgo.GoUIntptr = (1 : stdgo.GoUIntptr);
            stdgo.Go.cfor(((_delta + _delta : stdgo.GoUIntptr) > _delta : Bool), _delta = (_delta + (_delta) : stdgo.GoUIntptr), {
                _x._i.store(_v);
                if (_x._i.load() != (_v)) {
                    _t.fatalf(("delta=%d i=%d v=%d" : stdgo.GoString), stdgo.Go.toInterface(_delta), stdgo.Go.toInterface(_x._i.load()), stdgo.Go.toInterface(_v));
                };
                _v = (_v + (_delta) : stdgo.GoUIntptr);
            });
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testStorePointer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_10 = ({ _before : (0 : stdgo.GoUIntptr), _i : @:default_value null, _after : (0 : stdgo.GoUIntptr) } : T__struct_10);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        for (__34 => _p in _testPointers()) {
            storePointer(stdgo.Go.pointer(_x._i), _p);
            if (_x._i != (_p)) {
                _t.fatalf(("x.i=%p p=%p" : stdgo.GoString), stdgo.Go.toInterface(_x._i), stdgo.Go.toInterface(_p));
            };
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function testStorePointerMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x:T__struct_11 = ({ _before : (0 : stdgo.GoUIntptr), _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoUInt8>), _after : (0 : stdgo.GoUIntptr) } : T__struct_11);
        var _m:stdgo.GoUInt64 = (1003703129787580143i64 : stdgo.GoUInt64);
        var _magicptr:stdgo.GoUIntptr = (_m : stdgo.GoUIntptr);
        _x._before = _magicptr;
        _x._after = _magicptr;
        for (__34 => _p in _testPointers()) {
            var _p = (_p.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoByte>);
            _x._i.store((0 : stdgo.GoUInt8), _p);
            if (_x._i.load((0 : stdgo.GoUInt8)) != (_p)) {
                _t.fatalf(("x.i=%p p=%p" : stdgo.GoString), stdgo.Go.toInterface(_x._i.load((0 : stdgo.GoUInt8))), stdgo.Go.toInterface(_p));
            };
        };
        if (((_x._before != _magicptr) || (_x._after != _magicptr) : Bool)) {
            _t.fatalf(("wrong magic: %#x _ %#x != %#x _ %#x" : stdgo.GoString), stdgo.Go.toInterface(_x._before), stdgo.Go.toInterface(_x._after), stdgo.Go.toInterface(_magicptr), stdgo.Go.toInterface(_magicptr));
        };
    }
function _hammerSwapInt32(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind) })) : stdgo.Pointer<stdgo.GoInt32>);
        var _seed:stdgo.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new:stdgo.GoUInt32 = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
                var _old:stdgo.GoUInt32 = (swapInt32(_addr, (_new : stdgo.GoInt32)) : stdgo.GoUInt32);
                if ((_old >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) != (((_old << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("SwapInt32 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapInt32Method(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Int32", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Int32>);
        var _seed:stdgo.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new:stdgo.GoUInt32 = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
                var _old:stdgo.GoUInt32 = (_addr.swap((_new : stdgo.GoInt32)) : stdgo.GoUInt32);
                if ((_old >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) != (((_old << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("SwapInt32 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _seed:stdgo.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new:stdgo.GoUInt32 = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
                var _old:stdgo.GoUInt32 = swapUint32(_addr, _new);
                if ((_old >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) != (((_old << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("SwapUint32 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUint32Method(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uint32", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uint32>);
        var _seed:stdgo.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new:stdgo.GoUInt32 = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
                var _old:stdgo.GoUInt32 = _addr.swap(_new);
                if ((_old >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) != (((_old << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("SwapUint32 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUintptr32(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.GoUIntptr>);
        var _seed:stdgo.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new:stdgo.GoUIntptr = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUIntptr) << (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUIntptr) << (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
                var _old:stdgo.GoUIntptr = swapUintptr(_addr, _new);
                if ((_old >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) != (((_old << (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("SwapUintptr is not atomic: %#08x" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUintptr32Method(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uintptr", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uintptr>);
        var _seed:stdgo.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new:stdgo.GoUIntptr = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUIntptr) << (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUIntptr) << (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
                var _old:stdgo.GoUIntptr = _addr.swap(_new);
                if ((_old >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) != (((_old << (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("Uintptr.Swap is not atomic: %#08x" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerAddInt32(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind) })) : stdgo.Pointer<stdgo.GoInt32>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                addInt32(_addr, (1 : stdgo.GoInt32));
            });
        };
    }
function _hammerAddInt32Method(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Int32", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Int32>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                _addr.add((1 : stdgo.GoInt32));
            });
        };
    }
function _hammerAddUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                addUint32(_addr, (1u32 : stdgo.GoUInt32));
            });
        };
    }
function _hammerAddUint32Method(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uint32", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uint32>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                _addr.add((1u32 : stdgo.GoUInt32));
            });
        };
    }
function _hammerAddUintptr32(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.GoUIntptr>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                addUintptr(_addr, (1 : stdgo.GoUIntptr));
            });
        };
    }
function _hammerAddUintptr32Method(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uintptr", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uintptr>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                _addr.add((1 : stdgo.GoUIntptr));
            });
        };
    }
function _hammerCompareAndSwapInt32(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind) })) : stdgo.Pointer<stdgo.GoInt32>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v:stdgo.GoInt32 = loadInt32(_addr);
                    if (compareAndSwapInt32(_addr, _v, (_v + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapInt32Method(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Int32", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Int32>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v:stdgo.GoInt32 = _addr.load();
                    if (_addr.compareAndSwap(_v, (_v + (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v:stdgo.GoUInt32 = loadUint32(_addr);
                    if (compareAndSwapUint32(_addr, _v, (_v + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUint32Method(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uint32", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uint32>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v:stdgo.GoUInt32 = _addr.load();
                    if (_addr.compareAndSwap(_v, (_v + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUintptr32(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.GoUIntptr>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v:stdgo.GoUIntptr = loadUintptr(_addr);
                    if (compareAndSwapUintptr(_addr, _v, (_v + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUintptr32Method(_uaddr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uintptr", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uintptr>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v:stdgo.GoUIntptr = _addr.load();
                    if (_addr.compareAndSwap(_v, (_v + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                        break;
                    };
                };
            });
        };
    }
function testHammer32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _n:stdgo.GoInt = (100000 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing.short()) {
                _n = (1000 : stdgo.GoInt);
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime.gomaxprocs((4 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.gomaxprocs(_a0));
            };
            for (_name => _testf in _hammer32) {
                var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                var _val:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> {
                                        var a = function():Void {
                                            {
                                                var _err:stdgo.AnyInterface = ({
                                                    final r = stdgo.Go.recover_exception;
                                                    stdgo.Go.recover_exception = null;
                                                    r;
                                                });
                                                if (_err != null) {
                                                    _t.error(stdgo.Go.toInterface((stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString)));
                                                };
                                            };
                                            _c.__send__((1 : stdgo.GoInt));
                                        };
                                        a();
                                    });
                                    _testf(stdgo.Go.pointer(_val), _n);
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
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                        _c.__get__();
                    });
                };
                if ((!stdgo._internal.strings.Strings.hasPrefix(_name?.__copy__(), ("Swap" : stdgo.GoString)) && (_val != ((_n : stdgo.GoUInt32) * (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : Bool)) {
                    _t.fatalf(("%s: val=%d want %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_n * (4 : stdgo.GoInt) : stdgo.GoInt)));
                };
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function _hammerSwapInt64(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) })) : stdgo.Pointer<stdgo.GoInt64>);
        var _seed:stdgo.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new:stdgo.GoUInt64 = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                var _old:stdgo.GoUInt64 = (swapInt64(_addr, (_new : stdgo.GoInt64)) : stdgo.GoUInt64);
                if ((_old >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != (((_old << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("SwapInt64 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapInt64Method(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Int64_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Int64_>);
        var _seed:stdgo.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new:stdgo.GoUInt64 = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                var _old:stdgo.GoUInt64 = (_addr.swap((_new : stdgo.GoInt64)) : stdgo.GoUInt64);
                if ((_old >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != (((_old << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("SwapInt64 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _seed:stdgo.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new:stdgo.GoUInt64 = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                var _old:stdgo.GoUInt64 = swapUint64(_addr, _new);
                if ((_old >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != (((_old << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("SwapUint64 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUint64Method(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uint64>);
        var _seed:stdgo.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                var _new:stdgo.GoUInt64 = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
                var _old:stdgo.GoUInt64 = _addr.swap(_new);
                if ((_old >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != (((_old << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("SwapUint64 is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                };
            });
        };
    }
function _hammerSwapUintptr64(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        if (false) {
            var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.GoUIntptr>);
            var _seed:stdgo.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _count : Bool), _i++, {
                    var _new:stdgo.GoUIntptr = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUIntptr) << (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUIntptr) << (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
                    var _old:stdgo.GoUIntptr = swapUintptr(_addr, _new);
                    if ((_old >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) != (((_old << (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr))) {
                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("SwapUintptr is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                    };
                });
            };
        };
    }
function _hammerSwapUintptr64Method(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        if (false) {
            var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uintptr", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uintptr>);
            var _seed:stdgo.GoInt = (((stdgo.Go.toInterface(stdgo.Go.pointer(_count)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt);
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _count : Bool), _i++, {
                    var _new:stdgo.GoUIntptr = ((((_seed + _i : stdgo.GoInt) : stdgo.GoUIntptr) << (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((((_seed + _i : stdgo.GoInt) : stdgo.GoUIntptr) << (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
                    var _old:stdgo.GoUIntptr = _addr.swap(_new);
                    if ((_old >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) != (((_old << (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr))) {
                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("SwapUintptr is not atomic: %v" : stdgo.GoString), stdgo.Go.toInterface(_old)));
                    };
                });
            };
        };
    }
function _hammerAddInt64(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) })) : stdgo.Pointer<stdgo.GoInt64>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                addInt64(_addr, (1i64 : stdgo.GoInt64));
            });
        };
    }
function _hammerAddInt64Method(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Int64_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Int64_>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                _addr.add((1i64 : stdgo.GoInt64));
            });
        };
    }
function _hammerAddUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                addUint64(_addr, (1i64 : stdgo.GoUInt64));
            });
        };
    }
function _hammerAddUint64Method(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uint64>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                _addr.add((1i64 : stdgo.GoUInt64));
            });
        };
    }
function _hammerAddUintptr64(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.GoUIntptr>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                addUintptr(_addr, (1 : stdgo.GoUIntptr));
            });
        };
    }
function _hammerAddUintptr64Method(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uintptr", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uintptr>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                _addr.add((1 : stdgo.GoUIntptr));
            });
        };
    }
function _hammerCompareAndSwapInt64(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) })) : stdgo.Pointer<stdgo.GoInt64>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v:stdgo.GoInt64 = loadInt64(_addr);
                    if (compareAndSwapInt64(_addr, _v, (_v + (1i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapInt64Method(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Int64_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Int64_>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v:stdgo.GoInt64 = _addr.load();
                    if (_addr.compareAndSwap(_v, (_v + (1i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v:stdgo.GoUInt64 = loadUint64(_addr);
                    if (compareAndSwapUint64(_addr, _v, (_v + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUint64Method(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uint64>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v:stdgo.GoUInt64 = _addr.load();
                    if (_addr.compareAndSwap(_v, (_v + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUintptr64(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.GoUIntptr>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v:stdgo.GoUIntptr = loadUintptr(_addr);
                    if (compareAndSwapUintptr(_addr, _v, (_v + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                        break;
                    };
                };
            });
        };
    }
function _hammerCompareAndSwapUintptr64Method(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uintptr", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uintptr>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v:stdgo.GoUIntptr = _addr.load();
                    if (_addr.compareAndSwap(_v, (_v + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr))) {
                        break;
                    };
                };
            });
        };
    }
function testHammer64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _n:stdgo.GoInt = (100000 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing.short()) {
                _n = (1000 : stdgo.GoInt);
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime.gomaxprocs((4 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.gomaxprocs(_a0));
            };
            for (_name => _testf in _hammer64) {
                var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                var _val:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> {
                                        var a = function():Void {
                                            {
                                                var _err:stdgo.AnyInterface = ({
                                                    final r = stdgo.Go.recover_exception;
                                                    stdgo.Go.recover_exception = null;
                                                    r;
                                                });
                                                if (_err != null) {
                                                    _t.error(stdgo.Go.toInterface((stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString)));
                                                };
                                            };
                                            _c.__send__((1 : stdgo.GoInt));
                                        };
                                        a();
                                    });
                                    _testf(stdgo.Go.pointer(_val), _n);
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
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                        _c.__get__();
                    });
                };
                if ((!stdgo._internal.strings.Strings.hasPrefix(_name?.__copy__(), ("Swap" : stdgo.GoString)) && (_val != ((_n : stdgo.GoUInt64) * (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : Bool)) {
                    _t.fatalf(("%s: val=%d want %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_val), stdgo.Go.toInterface((_n * (4 : stdgo.GoInt) : stdgo.GoInt)));
                };
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function _hammerStoreLoadInt32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind) })) : stdgo.Pointer<stdgo.GoInt32>);
        var _v:stdgo.GoInt32 = loadInt32(_addr);
        var _vlo:stdgo.GoInt32 = (_v & (65535 : stdgo.GoInt32) : stdgo.GoInt32);
        var _vhi:stdgo.GoInt32 = (_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt32);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Int32: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.GoInt32 = ((_v + (1 : stdgo.GoInt32) : stdgo.GoInt32) + (65536 : stdgo.GoInt32) : stdgo.GoInt32);
        if (_vlo == ((10000 : stdgo.GoInt32))) {
            _new = (0 : stdgo.GoInt32);
        };
        storeInt32(_addr, _new);
    }
function _hammerStoreLoadInt32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind) })) : stdgo.Pointer<stdgo.GoInt32>);
        var _v:stdgo.GoInt32 = loadInt32(_addr);
        var _vlo:stdgo.GoInt32 = (_v & (65535 : stdgo.GoInt32) : stdgo.GoInt32);
        var _vhi:stdgo.GoInt32 = (_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt32);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Int32: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.GoInt32 = ((_v + (1 : stdgo.GoInt32) : stdgo.GoInt32) + (65536 : stdgo.GoInt32) : stdgo.GoInt32);
        if (_vlo == ((10000 : stdgo.GoInt32))) {
            _new = (0 : stdgo.GoInt32);
        };
        storeInt32(_addr, _new);
    }
function _hammerStoreLoadUint32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) })) : stdgo.Pointer<stdgo.GoUInt32>);
        var _v:stdgo.GoUInt32 = loadUint32(_addr);
        var _vlo:stdgo.GoUInt32 = (_v & (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _vhi:stdgo.GoUInt32 = (_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Uint32: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.GoUInt32 = ((_v + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (65536u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        if (_vlo == ((10000u32 : stdgo.GoUInt32))) {
            _new = (0u32 : stdgo.GoUInt32);
        };
        storeUint32(_addr, _new);
    }
function _hammerStoreLoadUint32Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uint32", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uint32>);
        var _v:stdgo.GoUInt32 = _addr.load();
        var _vlo:stdgo.GoUInt32 = (_v & (65535u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _vhi:stdgo.GoUInt32 = (_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Uint32: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.GoUInt32 = ((_v + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (65536u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        if (_vlo == ((10000u32 : stdgo.GoUInt32))) {
            _new = (0u32 : stdgo.GoUInt32);
        };
        _addr.store(_new);
    }
function _hammerStoreLoadInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) })) : stdgo.Pointer<stdgo.GoInt64>);
        var _v:stdgo.GoInt64 = loadInt64(_addr);
        var _vlo:stdgo.GoInt64 = (_v & (4294967295i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var _vhi:stdgo.GoInt64 = (_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Int64: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.GoInt64 = ((_v + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) + (4294967296i64 : stdgo.GoInt64) : stdgo.GoInt64);
        storeInt64(_addr, _new);
    }
function _hammerStoreLoadInt64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Int64_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Int64_>);
        var _v:stdgo.GoInt64 = _addr.load();
        var _vlo:stdgo.GoInt64 = (_v & (4294967295i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var _vhi:stdgo.GoInt64 = (_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Int64: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.GoInt64 = ((_v + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) + (4294967296i64 : stdgo.GoInt64) : stdgo.GoInt64);
        _addr.store(_new);
    }
function _hammerStoreLoadUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) })) : stdgo.Pointer<stdgo.GoUInt64>);
        var _v:stdgo.GoUInt64 = loadUint64(_addr);
        var _vlo:stdgo.GoUInt64 = (_v & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _vhi:stdgo.GoUInt64 = (_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Uint64: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.GoUInt64 = ((_v + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        storeUint64(_addr, _new);
    }
function _hammerStoreLoadUint64Method(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uint64>);
        var _v:stdgo.GoUInt64 = _addr.load();
        var _vlo:stdgo.GoUInt64 = (_v & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _vhi:stdgo.GoUInt64 = (_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (_vlo != (_vhi)) {
            _t.fatalf(("Uint64: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
        };
        var _new:stdgo.GoUInt64 = ((_v + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _addr.store(_new);
    }
function _hammerStoreLoadUintptr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.GoUIntptr>);
        var _v:stdgo.GoUIntptr = loadUintptr(_addr);
        var _new:stdgo.GoUIntptr = _v;
        if (true) {
            var _vlo:stdgo.GoUIntptr = (_v & (65535 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            var _vhi:stdgo.GoUIntptr = (_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Uintptr: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            _new = ((_v + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (65536 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            if (_vlo == ((10000 : stdgo.GoUIntptr))) {
                _new = (0 : stdgo.GoUIntptr);
            };
        } else {
            var _vlo:stdgo.GoUIntptr = (_v & (4294967295 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            var _vhi:stdgo.GoUIntptr = (_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Uintptr: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            var _inc:stdgo.GoUInt64 = (4294967297i64 : stdgo.GoUInt64);
            _new = (_v + (_inc : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        };
        storeUintptr(_addr, _new);
    }
function _hammerStoreLoadUintptrMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uintptr", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__36", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uintptr>);
        var _v:stdgo.GoUIntptr = _addr.load();
        var _new:stdgo.GoUIntptr = _v;
        if (true) {
            var _vlo:stdgo.GoUIntptr = (_v & (65535 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            var _vhi:stdgo.GoUIntptr = (_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Uintptr: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            _new = ((_v + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (65536 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            if (_vlo == ((10000 : stdgo.GoUIntptr))) {
                _new = (0 : stdgo.GoUIntptr);
            };
        } else {
            var _vlo:stdgo.GoUIntptr = (_v & (4294967295 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            var _vhi:stdgo.GoUIntptr = (_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Uintptr: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            var _inc:stdgo.GoUInt64 = (4294967297i64 : stdgo.GoUInt64);
            _new = (_v + (_inc : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        };
        _addr.store(_new);
    }
function _hammerStoreLoadPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) })) : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        var _v:stdgo.GoUIntptr = (loadPointer(_addr).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
        var _new:stdgo.GoUIntptr = _v;
        if (true) {
            var _vlo:stdgo.GoUIntptr = (_v & (65535 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            var _vhi:stdgo.GoUIntptr = (_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Pointer: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            _new = ((_v + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (65536 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            if (_vlo == ((10000 : stdgo.GoUIntptr))) {
                _new = (0 : stdgo.GoUIntptr);
            };
        } else {
            var _vlo:stdgo.GoUIntptr = (_v & (4294967295 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            var _vhi:stdgo.GoUIntptr = (_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Pointer: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            var _inc:stdgo.GoUInt64 = (4294967297i64 : stdgo.GoUInt64);
            _new = (_v + (_inc : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        };
        storePointer(_addr, (stdgo.Go.toInterface(_new) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
    }
function _hammerStoreLoadPointerMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _paddr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        var _addr = (_paddr.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Pointer_", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__38", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }) }, 0) }, optional : false }, { name : "__39", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Pointer_<stdgo.GoByte>>);
        var _v:stdgo.GoUIntptr = ((stdgo.Go.toInterface(_addr.load()) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
        var _new:stdgo.GoUIntptr = _v;
        if (true) {
            var _vlo:stdgo.GoUIntptr = (_v & (65535 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            var _vhi:stdgo.GoUIntptr = (_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUIntptr);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Pointer: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            _new = ((_v + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (65536 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            if (_vlo == ((10000 : stdgo.GoUIntptr))) {
                _new = (0 : stdgo.GoUIntptr);
            };
        } else {
            var _vlo:stdgo.GoUIntptr = (_v & (4294967295 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            var _vhi:stdgo.GoUIntptr = (_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUIntptr);
            if (_vlo != (_vhi)) {
                _t.fatalf(("Pointer: %#x != %#x" : stdgo.GoString), stdgo.Go.toInterface(_vlo), stdgo.Go.toInterface(_vhi));
            };
            var _inc:stdgo.GoUInt64 = (4294967297i64 : stdgo.GoUInt64);
            _new = (_v + (_inc : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        };
        _addr.store(((stdgo.Go.toInterface(_new) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoByte>));
    }
function testHammerStoreLoad(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tests = (new stdgo.Slice<(stdgo.Ref<stdgo._internal.testing.Testing.T_>, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Void>(12, 12, ...[
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
_hammerStoreLoadUint64Method]) : stdgo.Slice<(stdgo.Ref<stdgo._internal.testing.Testing.T_>, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Void>);
            var _n:stdgo.GoInt = (1000000 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing.short()) {
                _n = (10000 : stdgo.GoInt);
            };
            {};
            {
                var _a0 = stdgo._internal.runtime.Runtime.gomaxprocs((8 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.gomaxprocs(_a0));
            };
            {
                var _a0 = stdgo._internal.runtime.debug.Debug.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug.setGCPercent(_a0));
            };
            stdgo._internal.runtime.Runtime.gc();
            for (__34 => _tt in _tests) {
                var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                var _val:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                {
                    var _p:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_p < (8 : stdgo.GoInt) : Bool), _p++, {
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                {
                                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                        _tt(_t, (stdgo.Go.toInterface(stdgo.Go.pointer(_val)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
                                    });
                                };
                                _c.__send__((1 : stdgo.GoInt));
                            };
                            a();
                        });
                    });
                };
                {
                    var _p:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_p < (8 : stdgo.GoInt) : Bool), _p++, {
                        _c.__get__();
                    });
                };
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testStoreLoadSeqCst32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.runtime.Runtime.numCPU() == ((1 : stdgo.GoInt))) {
                _t.skipf(("Skipping test on %v processor machine" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime.numCPU()));
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime.gomaxprocs((4 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.gomaxprocs(_a0));
            };
            var n:stdgo.GoInt32 = (1000 : stdgo.GoInt32);
            if (stdgo._internal.testing.Testing.short()) {
                n = (100 : stdgo.GoInt32);
            };
            var _c = (new stdgo.Chan<Bool>((2 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            var x = (new stdgo.GoArray<stdgo.GoInt32>(2, 2, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)?.__copy__();
            var _ack = (new stdgo.GoArray<stdgo.GoArray<stdgo.GoInt32>>(2, 2, ...[(new stdgo.GoArray<stdgo.GoInt32>(3, 3, ...[(-1 : stdgo.GoInt32), (-1 : stdgo.GoInt32), (-1 : stdgo.GoInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)?.__copy__(), (new stdgo.GoArray<stdgo.GoInt32>(3, 3, ...[(-1 : stdgo.GoInt32), (-1 : stdgo.GoInt32), (-1 : stdgo.GoInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt32>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoInt32)])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoInt32>>);
            {
                var _p:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_p < (2 : stdgo.GoInt) : Bool), _p++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_me:stdgo.GoInt):Void {
                            var _he:stdgo.GoInt = ((1 : stdgo.GoInt) - _me : stdgo.GoInt);
                            {
                                var _i:stdgo.GoInt32 = (1 : stdgo.GoInt32);
                                stdgo.Go.cfor((_i < n : Bool), _i++, {
                                    storeInt32(stdgo.Go.pointer(x[(_me : stdgo.GoInt)]), _i);
                                    var _my:stdgo.GoInt32 = loadInt32(stdgo.Go.pointer(x[(_he : stdgo.GoInt)]));
                                    storeInt32(stdgo.Go.pointer(_ack[(_me : stdgo.GoInt)][((_i % (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]), _my);
                                    {
                                        var _w:stdgo.GoInt = (1 : stdgo.GoInt);
                                        stdgo.Go.cfor(loadInt32(stdgo.Go.pointer(_ack[(_he : stdgo.GoInt)][((_i % (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)])) == ((-1 : stdgo.GoInt32)), _w++, {
                                            if ((_w % (1000 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                                                stdgo._internal.runtime.Runtime.gosched();
                                            };
                                        });
                                    };
                                    var _his:stdgo.GoInt32 = loadInt32(stdgo.Go.pointer(_ack[(_he : stdgo.GoInt)][((_i % (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]));
                                    if (((((_my != _i) && (_my != (_i - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) || (((_his != _i) && (_his != (_i - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) : Bool)) {
                                        _t.errorf(("invalid values: %d/%d (%d)" : stdgo.GoString), stdgo.Go.toInterface(_my), stdgo.Go.toInterface(_his), stdgo.Go.toInterface(_i));
                                        break;
                                    };
                                    if (((_my != _i) && (_his != _i) : Bool)) {
                                        _t.errorf(("store/load are not sequentially consistent: %d/%d (%d)" : stdgo.GoString), stdgo.Go.toInterface(_my), stdgo.Go.toInterface(_his), stdgo.Go.toInterface(_i));
                                        break;
                                    };
                                    storeInt32(stdgo.Go.pointer(_ack[(_me : stdgo.GoInt)][((((_i - (1 : stdgo.GoInt32) : stdgo.GoInt32)) % (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]), (-1 : stdgo.GoInt32));
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testStoreLoadSeqCst64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.runtime.Runtime.numCPU() == ((1 : stdgo.GoInt))) {
                _t.skipf(("Skipping test on %v processor machine" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime.numCPU()));
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime.gomaxprocs((4 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.gomaxprocs(_a0));
            };
            var n:stdgo.GoInt64 = (1000i64 : stdgo.GoInt64);
            if (stdgo._internal.testing.Testing.short()) {
                n = (100i64 : stdgo.GoInt64);
            };
            var _c = (new stdgo.Chan<Bool>((2 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            var x = (new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__();
            var _ack = (new stdgo.GoArray<stdgo.GoArray<stdgo.GoInt64>>(2, 2, ...[(new stdgo.GoArray<stdgo.GoInt64>(3, 3, ...[(-1i64 : stdgo.GoInt64), (-1i64 : stdgo.GoInt64), (-1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoInt64>(3, 3, ...[(-1i64 : stdgo.GoInt64), (-1i64 : stdgo.GoInt64), (-1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt64>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoInt64)])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoInt64>>);
            {
                var _p:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_p < (2 : stdgo.GoInt) : Bool), _p++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_me:stdgo.GoInt):Void {
                            var _he:stdgo.GoInt = ((1 : stdgo.GoInt) - _me : stdgo.GoInt);
                            {
                                var _i:stdgo.GoInt64 = (1i64 : stdgo.GoInt64);
                                stdgo.Go.cfor((_i < n : Bool), _i++, {
                                    storeInt64(stdgo.Go.pointer(x[(_me : stdgo.GoInt)]), _i);
                                    var _my:stdgo.GoInt64 = loadInt64(stdgo.Go.pointer(x[(_he : stdgo.GoInt)]));
                                    storeInt64(stdgo.Go.pointer(_ack[(_me : stdgo.GoInt)][((_i % (3i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)]), _my);
                                    {
                                        var _w:stdgo.GoInt = (1 : stdgo.GoInt);
                                        stdgo.Go.cfor(loadInt64(stdgo.Go.pointer(_ack[(_he : stdgo.GoInt)][((_i % (3i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)])) == ((-1i64 : stdgo.GoInt64)), _w++, {
                                            if ((_w % (1000 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                                                stdgo._internal.runtime.Runtime.gosched();
                                            };
                                        });
                                    };
                                    var _his:stdgo.GoInt64 = loadInt64(stdgo.Go.pointer(_ack[(_he : stdgo.GoInt)][((_i % (3i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)]));
                                    if (((((_my != _i) && (_my != (_i - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : Bool)) || (((_his != _i) && (_his != (_i - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : Bool)) : Bool)) {
                                        _t.errorf(("invalid values: %d/%d (%d)" : stdgo.GoString), stdgo.Go.toInterface(_my), stdgo.Go.toInterface(_his), stdgo.Go.toInterface(_i));
                                        break;
                                    };
                                    if (((_my != _i) && (_his != _i) : Bool)) {
                                        _t.errorf(("store/load are not sequentially consistent: %d/%d (%d)" : stdgo.GoString), stdgo.Go.toInterface(_my), stdgo.Go.toInterface(_his), stdgo.Go.toInterface(_i));
                                        break;
                                    };
                                    storeInt64(stdgo.Go.pointer(_ack[(_me : stdgo.GoInt)][((((_i - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) % (3i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)]), (-1i64 : stdgo.GoInt64));
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
@:structInit class T_testStoreLoadRelAcq32___localname___Data_56337 {
    public var _signal : stdgo.GoInt32 = 0;
    public var _pad1 : stdgo.GoArray<stdgo.GoInt8> = new stdgo.GoArray<stdgo.GoInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoInt8)]);
    public var _data1 : stdgo.GoInt32 = 0;
    public var _pad2 : stdgo.GoArray<stdgo.GoInt8> = new stdgo.GoArray<stdgo.GoInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoInt8)]);
    public var _data2 : stdgo.GoFloat32 = 0;
    public function new(?_signal:stdgo.GoInt32, ?_pad1:stdgo.GoArray<stdgo.GoInt8>, ?_data1:stdgo.GoInt32, ?_pad2:stdgo.GoArray<stdgo.GoInt8>, ?_data2:stdgo.GoFloat32) {
        if (_signal != null) this._signal = _signal;
        if (_pad1 != null) this._pad1 = _pad1;
        if (_data1 != null) this._data1 = _data1;
        if (_pad2 != null) this._pad2 = _pad2;
        if (_data2 != null) this._data2 = _data2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStoreLoadRelAcq32___localname___Data_56337(_signal, _pad1, _data1, _pad2, _data2);
    }
}
function testStoreLoadRelAcq32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.runtime.Runtime.numCPU() == ((1 : stdgo.GoInt))) {
                _t.skipf(("Skipping test on %v processor machine" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime.numCPU()));
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime.gomaxprocs((4 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.gomaxprocs(_a0));
            };
            var n:stdgo.GoInt32 = (1000 : stdgo.GoInt32);
            if (stdgo._internal.testing.Testing.short()) {
                n = (100 : stdgo.GoInt32);
            };
            var _c = (new stdgo.Chan<Bool>((2 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            {};
            var x:T_testStoreLoadRelAcq32___localname___Data_56337 = ({} : stdgo._internal.sync.atomic_test.Atomic_test.T_testStoreLoadRelAcq32___localname___Data_56337);
            {
                var _p:stdgo.GoInt32 = (0 : stdgo.GoInt32);
                stdgo.Go.cfor((_p < (2 : stdgo.GoInt32) : Bool), _p++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_p:stdgo.GoInt32):Void {
                            {
                                var _i:stdgo.GoInt32 = (1 : stdgo.GoInt32);
                                stdgo.Go.cfor((_i < n : Bool), _i++, {
                                    if ((((_i + _p : stdgo.GoInt32)) % (2 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
                                        x._data1 = _i;
                                        x._data2 = (_i : stdgo.GoFloat32);
                                        storeInt32(stdgo.Go.pointer(x._signal), _i);
                                    } else {
                                        {
                                            var _w:stdgo.GoInt = (1 : stdgo.GoInt);
                                            stdgo.Go.cfor(loadInt32(stdgo.Go.pointer(x._signal)) != (_i), _w++, {
                                                if ((_w % (1000 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                                                    stdgo._internal.runtime.Runtime.gosched();
                                                };
                                            });
                                        };
                                        var _d1:stdgo.GoInt32 = x._data1;
                                        var _d2:stdgo.GoFloat32 = x._data2;
                                        if (((_d1 != _i) || (_d2 != (_i : stdgo.GoFloat32)) : Bool)) {
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
@:structInit class T_testStoreLoadRelAcq64___localname___Data_57241 {
    public var _signal : stdgo.GoInt64 = 0;
    public var _pad1 : stdgo.GoArray<stdgo.GoInt8> = new stdgo.GoArray<stdgo.GoInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoInt8)]);
    public var _data1 : stdgo.GoInt64 = 0;
    public var _pad2 : stdgo.GoArray<stdgo.GoInt8> = new stdgo.GoArray<stdgo.GoInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoInt8)]);
    public var _data2 : stdgo.GoFloat64 = 0;
    public function new(?_signal:stdgo.GoInt64, ?_pad1:stdgo.GoArray<stdgo.GoInt8>, ?_data1:stdgo.GoInt64, ?_pad2:stdgo.GoArray<stdgo.GoInt8>, ?_data2:stdgo.GoFloat64) {
        if (_signal != null) this._signal = _signal;
        if (_pad1 != null) this._pad1 = _pad1;
        if (_data1 != null) this._data1 = _data1;
        if (_pad2 != null) this._pad2 = _pad2;
        if (_data2 != null) this._data2 = _data2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStoreLoadRelAcq64___localname___Data_57241(_signal, _pad1, _data1, _pad2, _data2);
    }
}
function testStoreLoadRelAcq64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.runtime.Runtime.numCPU() == ((1 : stdgo.GoInt))) {
                _t.skipf(("Skipping test on %v processor machine" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime.numCPU()));
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime.gomaxprocs((4 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.gomaxprocs(_a0));
            };
            var n:stdgo.GoInt64 = (1000i64 : stdgo.GoInt64);
            if (stdgo._internal.testing.Testing.short()) {
                n = (100i64 : stdgo.GoInt64);
            };
            var _c = (new stdgo.Chan<Bool>((2 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            {};
            var x:T_testStoreLoadRelAcq64___localname___Data_57241 = ({} : stdgo._internal.sync.atomic_test.Atomic_test.T_testStoreLoadRelAcq64___localname___Data_57241);
            {
                var _p:stdgo.GoInt64 = (0i64 : stdgo.GoInt64);
                stdgo.Go.cfor((_p < (2i64 : stdgo.GoInt64) : Bool), _p++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_p:stdgo.GoInt64):Void {
                            {
                                var _i:stdgo.GoInt64 = (1i64 : stdgo.GoInt64);
                                stdgo.Go.cfor((_i < n : Bool), _i++, {
                                    if ((((_i + _p : stdgo.GoInt64)) % (2i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                                        x._data1 = _i;
                                        x._data2 = (_i : stdgo.GoFloat64);
                                        storeInt64(stdgo.Go.pointer(x._signal), _i);
                                    } else {
                                        {
                                            var _w:stdgo.GoInt = (1 : stdgo.GoInt);
                                            stdgo.Go.cfor(loadInt64(stdgo.Go.pointer(x._signal)) != (_i), _w++, {
                                                if ((_w % (1000 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                                                    stdgo._internal.runtime.Runtime.gosched();
                                                };
                                            });
                                        };
                                        var _d1:stdgo.GoInt64 = x._data1;
                                        var _d2:stdgo.GoFloat64 = x._data2;
                                        if (((_d1 != _i) || (_d2 != (_i : stdgo.GoFloat64)) : Bool)) {
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function _shouldPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _name:stdgo.GoString, _f:() -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo._internal.runtime.Runtime.gc();
                    var _err:stdgo.AnyInterface = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    });
                    var _want:stdgo.GoString = ("unaligned 64-bit atomic operation" : stdgo.GoString);
                    if (_err == null) {
                        _t.errorf(("%s did not panic" : stdgo.GoString), stdgo.Go.toInterface(_name));
                    } else {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString), _1 : true };
                        } catch(_) {
                            { _0 : ("" : stdgo.GoString), _1 : false };
                        }, _s = __tmp__._0, __42 = __tmp__._1;
                        if (_s != (_want)) {
                            _t.errorf(("%s: wanted panic %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_want), _err);
                        };
                    };
                };
                a();
            });
            _f();
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testUnaligned64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("test only runs on 32-bit systems" : stdgo.GoString)));
        };
        var _x = (new stdgo.Slice<stdgo.GoUInt32>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _p = ((stdgo.Go.toInterface(stdgo.Go.pointer(_x[(1 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) })) : stdgo.Pointer<stdgo.GoUInt64>);
        _shouldPanic(_t, ("LoadUint64" : stdgo.GoString), function():Void {
            loadUint64(_p);
        });
        _shouldPanic(_t, ("LoadUint64Method" : stdgo.GoString), function():Void {
            ((stdgo.Go.toInterface(_p) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__50", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__51", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uint64>).load();
        });
        _shouldPanic(_t, ("StoreUint64" : stdgo.GoString), function():Void {
            storeUint64(_p, (1i64 : stdgo.GoUInt64));
        });
        _shouldPanic(_t, ("StoreUint64Method" : stdgo.GoString), function():Void {
            ((stdgo.Go.toInterface(_p) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__50", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__51", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uint64>).store((1i64 : stdgo.GoUInt64));
        });
        _shouldPanic(_t, ("CompareAndSwapUint64" : stdgo.GoString), function():Void {
            compareAndSwapUint64(_p, (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64));
        });
        _shouldPanic(_t, ("CompareAndSwapUint64Method" : stdgo.GoString), function():Void {
            ((stdgo.Go.toInterface(_p) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__50", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__51", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uint64>).compareAndSwap((1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64));
        });
        _shouldPanic(_t, ("AddUint64" : stdgo.GoString), function():Void {
            addUint64(_p, (3i64 : stdgo.GoUInt64));
        });
        _shouldPanic(_t, ("AddUint64Method" : stdgo.GoString), function():Void {
            ((stdgo.Go.toInterface(_p) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__50", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__51", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic_.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<Uint64>).add((3i64 : stdgo.GoUInt64));
        });
    }
function testAutoAligned64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _signed:T__struct_12 = ({ _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Int64_) } : T__struct_12);
        {
            var _o:stdgo.GoUIntptr = stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_signed) : stdgo.Ref<T__struct_12>)))).elem().field((1 : stdgo.GoInt)).offset;
            if (_o != ((8 : stdgo.GoUIntptr))) {
                _t.fatalf(("Int64 offset = %d, want 8" : stdgo.GoString), stdgo.Go.toInterface(_o));
            };
        };
        {
            var _p:stdgo.GoUIntptr = stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_signed) : stdgo.Ref<T__struct_12>)))).elem().field((1 : stdgo.GoInt)).addr().pointer();
            if ((_p & (7 : stdgo.GoUIntptr) : stdgo.GoUIntptr) != ((0 : stdgo.GoUIntptr))) {
                _t.fatalf(("Int64 pointer = %#x, want 8-aligned" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
        };
        var _unsigned:T__struct_13 = ({ _i : ({} : stdgo._internal.sync.atomic_.Atomic_.Uint64) } : T__struct_13);
        {
            var _o:stdgo.GoUIntptr = stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_unsigned) : stdgo.Ref<T__struct_13>)))).elem().field((1 : stdgo.GoInt)).offset;
            if (_o != ((8 : stdgo.GoUIntptr))) {
                _t.fatalf(("Uint64 offset = %d, want 8" : stdgo.GoString), stdgo.Go.toInterface(_o));
            };
        };
        {
            var _p:stdgo.GoUIntptr = stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_unsigned) : stdgo.Ref<T__struct_13>)))).elem().field((1 : stdgo.GoInt)).addr().pointer();
            if ((_p & (7 : stdgo.GoUIntptr) : stdgo.GoUIntptr) != ((0 : stdgo.GoUIntptr))) {
                _t.fatalf(("Int64 pointer = %#x, want 8-aligned" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
        };
    }
function testNilDeref(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _funcs = (new stdgo.GoArray<() -> Void>(58, 58, ...[
function():Void {
            compareAndSwapInt32((null : stdgo.Pointer<stdgo.GoInt32>), (0 : stdgo.GoInt32), (0 : stdgo.GoInt32));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Int32>) : stdgo.Ref<Int32>).compareAndSwap((0 : stdgo.GoInt32), (0 : stdgo.GoInt32));
        },
function():Void {
            compareAndSwapInt64((null : stdgo.Pointer<stdgo.GoInt64>), (0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Int64_>) : stdgo.Ref<Int64_>).compareAndSwap((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64));
        },
function():Void {
            compareAndSwapUint32((null : stdgo.Pointer<stdgo.GoUInt32>), (0u32 : stdgo.GoUInt32), (0u32 : stdgo.GoUInt32));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uint32>) : stdgo.Ref<Uint32>).compareAndSwap((0u32 : stdgo.GoUInt32), (0u32 : stdgo.GoUInt32));
        },
function():Void {
            compareAndSwapUint64((null : stdgo.Pointer<stdgo.GoUInt64>), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uint64>) : stdgo.Ref<Uint64>).compareAndSwap((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
        },
function():Void {
            compareAndSwapUintptr((null : stdgo.Pointer<stdgo.GoUIntptr>), (0 : stdgo.GoUIntptr), (0 : stdgo.GoUIntptr));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uintptr>) : stdgo.Ref<Uintptr>).compareAndSwap((0 : stdgo.GoUIntptr), (0 : stdgo.GoUIntptr));
        },
function():Void {
            compareAndSwapPointer((null : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>), @:default_value null, @:default_value null);
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoUInt8>>) : stdgo.Ref<Pointer_<stdgo.GoByte>>).compareAndSwap((null : stdgo.Pointer<stdgo.GoUInt8>), (null : stdgo.Pointer<stdgo.GoUInt8>));
        },
function():Void {
            swapInt32((null : stdgo.Pointer<stdgo.GoInt32>), (0 : stdgo.GoInt32));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Int32>) : stdgo.Ref<Int32>).swap((0 : stdgo.GoInt32));
        },
function():Void {
            swapUint32((null : stdgo.Pointer<stdgo.GoUInt32>), (0u32 : stdgo.GoUInt32));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uint32>) : stdgo.Ref<Uint32>).swap((0u32 : stdgo.GoUInt32));
        },
function():Void {
            swapInt64((null : stdgo.Pointer<stdgo.GoInt64>), (0i64 : stdgo.GoInt64));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Int64_>) : stdgo.Ref<Int64_>).swap((0i64 : stdgo.GoInt64));
        },
function():Void {
            swapUint64((null : stdgo.Pointer<stdgo.GoUInt64>), (0i64 : stdgo.GoUInt64));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uint64>) : stdgo.Ref<Uint64>).swap((0i64 : stdgo.GoUInt64));
        },
function():Void {
            swapUintptr((null : stdgo.Pointer<stdgo.GoUIntptr>), (0 : stdgo.GoUIntptr));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uintptr>) : stdgo.Ref<Uintptr>).swap((0 : stdgo.GoUIntptr));
        },
function():Void {
            swapPointer((null : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>), @:default_value null);
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoUInt8>>) : stdgo.Ref<Pointer_<stdgo.GoByte>>).swap((null : stdgo.Pointer<stdgo.GoUInt8>));
        },
function():Void {
            addInt32((null : stdgo.Pointer<stdgo.GoInt32>), (0 : stdgo.GoInt32));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Int32>) : stdgo.Ref<Int32>).add((0 : stdgo.GoInt32));
        },
function():Void {
            addUint32((null : stdgo.Pointer<stdgo.GoUInt32>), (0u32 : stdgo.GoUInt32));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uint32>) : stdgo.Ref<Uint32>).add((0u32 : stdgo.GoUInt32));
        },
function():Void {
            addInt64((null : stdgo.Pointer<stdgo.GoInt64>), (0i64 : stdgo.GoInt64));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Int64_>) : stdgo.Ref<Int64_>).add((0i64 : stdgo.GoInt64));
        },
function():Void {
            addUint64((null : stdgo.Pointer<stdgo.GoUInt64>), (0i64 : stdgo.GoUInt64));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uint64>) : stdgo.Ref<Uint64>).add((0i64 : stdgo.GoUInt64));
        },
function():Void {
            addUintptr((null : stdgo.Pointer<stdgo.GoUIntptr>), (0 : stdgo.GoUIntptr));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uintptr>) : stdgo.Ref<Uintptr>).add((0 : stdgo.GoUIntptr));
        },
function():Void {
            loadInt32((null : stdgo.Pointer<stdgo.GoInt32>));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Int32>) : stdgo.Ref<Int32>).load();
        },
function():Void {
            loadInt64((null : stdgo.Pointer<stdgo.GoInt64>));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Int64_>) : stdgo.Ref<Int64_>).load();
        },
function():Void {
            loadUint32((null : stdgo.Pointer<stdgo.GoUInt32>));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uint32>) : stdgo.Ref<Uint32>).load();
        },
function():Void {
            loadUint64((null : stdgo.Pointer<stdgo.GoUInt64>));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uint64>) : stdgo.Ref<Uint64>).load();
        },
function():Void {
            loadUintptr((null : stdgo.Pointer<stdgo.GoUIntptr>));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uintptr>) : stdgo.Ref<Uintptr>).load();
        },
function():Void {
            loadPointer((null : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoUInt8>>) : stdgo.Ref<Pointer_<stdgo.GoByte>>).load();
        },
function():Void {
            storeInt32((null : stdgo.Pointer<stdgo.GoInt32>), (0 : stdgo.GoInt32));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Int32>) : stdgo.Ref<Int32>).store((0 : stdgo.GoInt32));
        },
function():Void {
            storeInt64((null : stdgo.Pointer<stdgo.GoInt64>), (0i64 : stdgo.GoInt64));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Int64_>) : stdgo.Ref<Int64_>).store((0i64 : stdgo.GoInt64));
        },
function():Void {
            storeUint32((null : stdgo.Pointer<stdgo.GoUInt32>), (0u32 : stdgo.GoUInt32));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uint32>) : stdgo.Ref<Uint32>).store((0u32 : stdgo.GoUInt32));
        },
function():Void {
            storeUint64((null : stdgo.Pointer<stdgo.GoUInt64>), (0i64 : stdgo.GoUInt64));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uint64>) : stdgo.Ref<Uint64>).store((0i64 : stdgo.GoUInt64));
        },
function():Void {
            storeUintptr((null : stdgo.Pointer<stdgo.GoUIntptr>), (0 : stdgo.GoUIntptr));
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Uintptr>) : stdgo.Ref<Uintptr>).store((0 : stdgo.GoUIntptr));
        },
function():Void {
            storePointer((null : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>), @:default_value null);
        },
function():Void {
            ((null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoUInt8>>) : stdgo.Ref<Pointer_<stdgo.GoByte>>).store((null : stdgo.Pointer<stdgo.GoUInt8>));
        }]) : stdgo.GoArray<() -> Void>);
        for (__34 => _f in _funcs) {
            {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                stdgo._internal.runtime.Runtime.gc();
                                ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                            };
                            a();
                        });
                        _f();
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
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function _requests():stdgo.Chan<stdgo.GoInt> {
        return (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
    }
function exampleValue_config():Void {
        var _config:stdgo._internal.sync.atomic_.Atomic_.Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
        _config.store(stdgo.Go.toInterface(_loadConfig()));
        stdgo.Go.routine(() -> {
            var a = function():Void {
                while (true) {
                    stdgo._internal.time.Time.sleep((10000000000i64 : stdgo._internal.time.Time.Duration));
                    _config.store(stdgo.Go.toInterface(_loadConfig()));
                };
            };
            a();
        });
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        for (_r => _ in _requests()) {
                            var _c:stdgo.AnyInterface = _config.load();
                            {
                                var __blank__ = _r;
                                var __blank__ = _c;
                            };
                        };
                    };
                    a();
                });
            });
        };
    }
@:named typedef T_exampleValue_readMostly___localname___Map_1290 = stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
function exampleValue_readMostly():Void {
        {};
        var _m:stdgo._internal.sync.atomic_.Atomic_.Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
        _m.store(stdgo.Go.toInterface((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo._internal.sync.atomic_test.Atomic_test.T_exampleValue_readMostly___localname___Map_1290)));
        var _mu:stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
        var _read:stdgo.GoString -> stdgo.GoString = function(_key:stdgo.GoString):stdgo.GoString {
            var _val:stdgo.GoString = ("" : stdgo.GoString);
            var _m1:stdgo._internal.sync.atomic_test.Atomic_test.T_exampleValue_readMostly___localname___Map_1290 = (stdgo.Go.typeAssert((_m.load() : T_exampleValue_readMostly___localname___Map_1290)) : T_exampleValue_readMostly___localname___Map_1290);
            return (_m1[_key] ?? ("" : stdgo.GoString))?.__copy__();
        };
        var _insert:(stdgo.GoString, stdgo.GoString) -> Void = function(_key:stdgo.GoString, _val:stdgo.GoString):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                _mu.lock();
                __deferstack__.unshift(() -> _mu.unlock());
                var _m1:stdgo._internal.sync.atomic_test.Atomic_test.T_exampleValue_readMostly___localname___Map_1290 = (stdgo.Go.typeAssert((_m.load() : T_exampleValue_readMostly___localname___Map_1290)) : T_exampleValue_readMostly___localname___Map_1290);
                var _m2:stdgo._internal.sync.atomic_test.Atomic_test.T_exampleValue_readMostly___localname___Map_1290 = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                    x.__defaultValue__ = () -> ("" : stdgo.GoString);
                    @:mergeBlock {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo._internal.sync.atomic_test.Atomic_test.T_exampleValue_readMostly___localname___Map_1290);
                for (_k => _v in _m1) {
                    _m2[_k] = _v?.__copy__();
                };
                _m2[_key] = _val?.__copy__();
                _m.store(stdgo.Go.toInterface(_m2));
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
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
            var __blank__ = _read;
            var __blank__ = _insert;
        };
    }
function testValue(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _v:Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
        if (_v.load() != null) {
            _t.fatal(stdgo.Go.toInterface(("initial Value is not nil" : stdgo.GoString)));
        };
        _v.store(stdgo.Go.toInterface((42 : stdgo.GoInt)));
        var _x:stdgo.AnyInterface = _v.load();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_x : stdgo.GoInt)) : stdgo.GoInt), _1 : true };
            } catch(_) {
                { _0 : (0 : stdgo.GoInt), _1 : false };
            }, _xx = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_xx != (42 : stdgo.GoInt)) : Bool)) {
                _t.fatalf(("wrong value: got %+v, want 42" : stdgo.GoString), _x);
            };
        };
        _v.store(stdgo.Go.toInterface((84 : stdgo.GoInt)));
        _x = _v.load();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_x : stdgo.GoInt)) : stdgo.GoInt), _1 : true };
            } catch(_) {
                { _0 : (0 : stdgo.GoInt), _1 : false };
            }, _xx = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_xx != (84 : stdgo.GoInt)) : Bool)) {
                _t.fatalf(("wrong value: got %+v, want 84" : stdgo.GoString), _x);
            };
        };
    }
function testValueLarge(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _v:Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
        _v.store(stdgo.Go.toInterface(("foo" : stdgo.GoString)));
        var _x:stdgo.AnyInterface = _v.load();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_x : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _xx = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_xx != ("foo" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("wrong value: got %+v, want foo" : stdgo.GoString), _x);
            };
        };
        _v.store(stdgo.Go.toInterface(("barbaz" : stdgo.GoString)));
        _x = _v.load();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_x : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _xx = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_xx != ("barbaz" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("wrong value: got %+v, want barbaz" : stdgo.GoString), _x);
            };
        };
    }
function testValuePanic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {};
        var _v:Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
        {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var _err:stdgo.AnyInterface = ({
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
                    _v.store((null : stdgo.AnyInterface));
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
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
        _v.store(stdgo.Go.toInterface((42 : stdgo.GoInt)));
        {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var _err:stdgo.AnyInterface = ({
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
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                            var _err:stdgo.AnyInterface = ({
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
                    _v.store((null : stdgo.AnyInterface));
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
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testValueConcurrent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo.Slice<stdgo.AnyInterface>>(4, 4, ...[(new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface((0 : stdgo.GoUInt16)), stdgo.Go.toInterface((65535 : stdgo.GoUInt16)), stdgo.Go.toInterface((513 : stdgo.GoUInt16)), stdgo.Go.toInterface((1027 : stdgo.GoUInt16))]) : stdgo.Slice<stdgo.AnyInterface>), (new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface((0u32 : stdgo.GoUInt32)), stdgo.Go.toInterface((-1u32 : stdgo.GoUInt32)), stdgo.Go.toInterface((131073u32 : stdgo.GoUInt32)), stdgo.Go.toInterface((262147u32 : stdgo.GoUInt32))]) : stdgo.Slice<stdgo.AnyInterface>), (new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface((0i64 : stdgo.GoUInt64)), stdgo.Go.toInterface((-1i64 : stdgo.GoUInt64)), stdgo.Go.toInterface((8589934593i64 : stdgo.GoUInt64)), stdgo.Go.toInterface((17179869187i64 : stdgo.GoUInt64))]) : stdgo.Slice<stdgo.AnyInterface>), (new stdgo.Slice<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface(new stdgo.GoComplex128((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64))), stdgo.Go.toInterface(new stdgo.GoComplex128((1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64))), stdgo.Go.toInterface(new stdgo.GoComplex128((3i64 : stdgo.GoUInt64), (4i64 : stdgo.GoUInt64))), stdgo.Go.toInterface(new stdgo.GoComplex128((5i64 : stdgo.GoUInt64), (6i64 : stdgo.GoUInt64)))]) : stdgo.Slice<stdgo.AnyInterface>)]) : stdgo.Slice<stdgo.Slice<stdgo.AnyInterface>>);
        var _p:stdgo.GoInt = ((4 : stdgo.GoInt) * stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt);
        var n:stdgo.GoInt = (100000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            _p = (_p / ((2 : stdgo.GoInt)) : stdgo.GoInt);
            n = (1000 : stdgo.GoInt);
        };
        for (__34 => _test in _tests) {
            var _v:Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
            var _done = (new stdgo.Chan<Bool>((_p : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _p : Bool), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var _r = stdgo._internal.math.rand.Rand.new_(stdgo._internal.math.rand.Rand.newSource(stdgo._internal.math.rand.Rand.int63()));
                            var _expected:Bool = true;
                            @:label("loop") {
                                var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_j < n : Bool), _j++, {
                                    var _x:stdgo.AnyInterface = _test[(_r.intn((_test.length)) : stdgo.GoInt)];
                                    _v.store(_x);
                                    _x = _v.load();
                                    for (__35 => _x1 in _test) {
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
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _p : Bool), _i++, {
                    if (!_done.__get__()) {
                        _t.failNow();
                    };
                });
            };
        };
    }
function benchmarkValueRead(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _v:Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
        _v.store(stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))));
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var _x = (stdgo.Go.typeAssert((_v.load() : stdgo.Pointer<stdgo.GoInt>)) : stdgo.Pointer<stdgo.GoInt>);
                if (_x.value != ((0 : stdgo.GoInt))) {
                    _b.fatalf(("wrong value: got %v, want 0" : stdgo.GoString), stdgo.Go.toInterface(_x.value));
                };
            };
        });
    }
function testValue_Swap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _tt in value_SwapTests) {
            _t.run(stdgo._internal.strconv.Strconv.itoa(_i)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _v:Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
                    if (_tt._init != null) {
                        _v.store(_tt._init);
                    };
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var _err:stdgo.AnyInterface = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            if (((_tt._err == null) && (_err != null) : Bool)) {
                                _t.errorf(("should not panic, got %v" : stdgo.GoString), _err);
                            } else if (((_tt._err != null) && (_err == null) : Bool)) {
                                _t.errorf(("should panic %v, got <nil>" : stdgo.GoString), _tt._err);
                            };
                        };
                        a();
                    });
                    {
                        var _got:stdgo.AnyInterface = _v.swap(_tt._new);
                        if (_got != (_tt._want)) {
                            _t.errorf(("got %v, want %v" : stdgo.GoString), _got, _tt._want);
                        };
                    };
                    {
                        var _got:stdgo.AnyInterface = _v.load();
                        if (_got != (_tt._new)) {
                            _t.errorf(("got %v, want %v" : stdgo.GoString), _got, _tt._new);
                        };
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
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testValueSwapConcurrent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _v:Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
        var _count:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _g:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        var __0:stdgo.GoUInt64 = (10000i64 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (10000i64 : stdgo.GoUInt64), _n:stdgo.GoUInt64 = __1, _m:stdgo.GoUInt64 = __0;
        if (stdgo._internal.testing.Testing.short()) {
            _m = (1000i64 : stdgo.GoUInt64);
            _n = (1000i64 : stdgo.GoUInt64);
        };
        {
            var _i:stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
            stdgo.Go.cfor((_i < (_m * _n : stdgo.GoUInt64) : Bool), _i = (_i + (_n) : stdgo.GoUInt64), {
                var _i:stdgo.GoUInt64 = _i;
                _g.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _c:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                        {
                            var _new:stdgo.GoUInt64 = _i;
                            stdgo.Go.cfor((_new < (_i + _n : stdgo.GoUInt64) : Bool), _new++, {
                                {
                                    var _old:stdgo.AnyInterface = _v.swap(stdgo.Go.toInterface(_new));
                                    if (_old != null) {
                                        _c = (_c + ((stdgo.Go.typeAssert((_old : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                                    };
                                };
                            });
                        };
                        stdgo._internal.sync.atomic_.Atomic_.addUint64(stdgo.Go.pointer(_count), _c);
                        _g.done();
                    };
                    a();
                });
            });
        };
        _g.wait_();
        {
            var __0:stdgo.GoUInt64 = (((((_m * _n : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * ((_m * _n : stdgo.GoUInt64)) : stdgo.GoUInt64) / (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (_count + (stdgo.Go.typeAssert((_v.load() : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoUInt64), _got:stdgo.GoUInt64 = __1, _want:stdgo.GoUInt64 = __0;
            if (_got != (_want)) {
                _t.errorf(("sum from 0 to %d was %d, want %v" : stdgo.GoString), stdgo.Go.toInterface(((_m * _n : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testValue_CompareAndSwap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _tt in value_CompareAndSwapTests) {
            _t.run(stdgo._internal.strconv.Strconv.itoa(_i)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _v:Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
                    if (_tt._init != null) {
                        _v.store(_tt._init);
                    };
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            var _err:stdgo.AnyInterface = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            if (((_tt._err == null) && (_err != null) : Bool)) {
                                _t.errorf(("got %v, wanted no panic" : stdgo.GoString), _err);
                            } else if (((_tt._err != null) && (_err == null) : Bool)) {
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
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testValueCompareAndSwapConcurrent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _v:Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
        var _w:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        _v.store(stdgo.Go.toInterface((0 : stdgo.GoInt)));
        var __0:stdgo.GoInt = (1000 : stdgo.GoInt), __1:stdgo.GoInt = (100 : stdgo.GoInt), _n:stdgo.GoInt = __1, _m:stdgo.GoInt = __0;
        if (stdgo._internal.testing.Testing.short()) {
            _m = (100 : stdgo.GoInt);
            _n = (100 : stdgo.GoInt);
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _m : Bool), _i++, {
                var _i:stdgo.GoInt = _i;
                _w.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _j:stdgo.GoInt = _i;
                            stdgo.Go.cfor((_j < (_m * _n : stdgo.GoInt) : Bool), stdgo._internal.runtime.Runtime.gosched(), {
                                if (_v.compareAndSwap(stdgo.Go.toInterface(_j), stdgo.Go.toInterface((_j + (1 : stdgo.GoInt) : stdgo.GoInt)))) {
                                    _j = (_j + (_m) : stdgo.GoInt);
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
            var _stop:stdgo.GoInt = (stdgo.Go.typeAssert((_v.load() : stdgo.GoInt)) : stdgo.GoInt);
            if (_stop != ((_m * _n : stdgo.GoInt))) {
                _t.errorf(("did not get to %v, stopped at %v" : stdgo.GoString), stdgo.Go.toInterface((_m * _n : stdgo.GoInt)), stdgo.Go.toInterface(_stop));
            };
        };
    }
@:keep var _ = {
        try {
            var _v:stdgo.GoUInt64 = (1125899906842624i64 : stdgo.GoUInt64);
            if ((_v : stdgo.GoUIntptr) != ((0 : stdgo.GoUIntptr))) {
                if (_hammer32 != null) _hammer32.remove(("SwapUintptr" : stdgo.GoString));
                if (_hammer32 != null) _hammer32.remove(("AddUintptr" : stdgo.GoString));
                if (_hammer32 != null) _hammer32.remove(("CompareAndSwapUintptr" : stdgo.GoString));
                if (_hammer32 != null) _hammer32.remove(("SwapUintptrMethod" : stdgo.GoString));
                if (_hammer32 != null) _hammer32.remove(("AddUintptrMethod" : stdgo.GoString));
                if (_hammer32 != null) _hammer32.remove(("CompareAndSwapUintptrMethod" : stdgo.GoString));
            };
            var _v:stdgo.GoUInt64 = (1125899906842624i64 : stdgo.GoUInt64);
            if ((_v : stdgo.GoUIntptr) == ((0 : stdgo.GoUIntptr))) {
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

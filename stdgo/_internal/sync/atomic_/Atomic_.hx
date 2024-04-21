package stdgo._internal.sync.atomic_;
private var __go2hxdoc__package : Bool;
var _firstStoreInProgress : stdgo.GoByte = (0 : stdgo.GoUInt8);
var __24 : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoInt>> = (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.GoInt>>);
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic_.Bool__static_extension) class Bool_ {
    @:optional
    public var __2 : stdgo._internal.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic_.T_noCopy);
    public var _v : stdgo.GoUInt32 = 0;
    public function new(?__2:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?_v:stdgo.GoUInt32) {
        if (__2 != null) this.__2 = __2;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bool_(__2, _v);
    }
}
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic_.Pointer__static_extension) class Pointer_<T_> {
    @:optional
    public var __5 : stdgo.GoArray<stdgo.Ref<T_>> = new stdgo.GoArray<stdgo.Ref<T_>>(0, 0);
    @:optional
    public var __6 : stdgo._internal.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic_.T_noCopy);
    public var _v : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?__5:stdgo.GoArray<stdgo.Ref<T_>>, ?__6:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?_v:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (__5 != null) this.__5 = __5;
        if (__6 != null) this.__6 = __6;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Pointer_<T_>(__5, __6, _v);
    }
}
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic_.Int32_static_extension) class Int32 {
    @:optional
    public var __8 : stdgo._internal.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic_.T_noCopy);
    public var _v : stdgo.GoInt32 = 0;
    public function new(?__8:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?_v:stdgo.GoInt32) {
        if (__8 != null) this.__8 = __8;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Int32(__8, _v);
    }
}
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic_.Int64__static_extension) class Int64_ {
    @:optional
    public var __11 : stdgo._internal.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic_.T_noCopy);
    @:optional
    public var __12 : stdgo._internal.sync.atomic_.Atomic_.T_align64 = ({} : stdgo._internal.sync.atomic_.Atomic_.T_align64);
    public var _v : stdgo.GoInt64 = 0;
    public function new(?__11:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?__12:stdgo._internal.sync.atomic_.Atomic_.T_align64, ?_v:stdgo.GoInt64) {
        if (__11 != null) this.__11 = __11;
        if (__12 != null) this.__12 = __12;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Int64_(__11, __12, _v);
    }
}
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic_.Uint32_static_extension) class Uint32 {
    @:optional
    public var __13 : stdgo._internal.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic_.T_noCopy);
    public var _v : stdgo.GoUInt32 = 0;
    public function new(?__13:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?_v:stdgo.GoUInt32) {
        if (__13 != null) this.__13 = __13;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uint32(__13, _v);
    }
}
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic_.Uint64_static_extension) class Uint64 {
    @:optional
    public var __16 : stdgo._internal.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic_.T_noCopy);
    @:optional
    public var __17 : stdgo._internal.sync.atomic_.Atomic_.T_align64 = ({} : stdgo._internal.sync.atomic_.Atomic_.T_align64);
    public var _v : stdgo.GoUInt64 = 0;
    public function new(?__16:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?__17:stdgo._internal.sync.atomic_.Atomic_.T_align64, ?_v:stdgo.GoUInt64) {
        if (__16 != null) this.__16 = __16;
        if (__17 != null) this.__17 = __17;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uint64(__16, __17, _v);
    }
}
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic_.Uintptr_static_extension) class Uintptr {
    @:optional
    public var __19 : stdgo._internal.sync.atomic_.Atomic_.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic_.T_noCopy);
    public var _v : stdgo.GoUIntptr = 0;
    public function new(?__19:stdgo._internal.sync.atomic_.Atomic_.T_noCopy, ?_v:stdgo.GoUIntptr) {
        if (__19 != null) this.__19 = __19;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uintptr(__19, _v);
    }
}
@:structInit @:private @:using(stdgo._internal.sync.atomic_.Atomic_.T_noCopy_static_extension) class T_noCopy {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_noCopy();
    }
}
@:structInit @:private class T_align64 {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_align64();
    }
}
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic_.Value_static_extension) class Value {
    public var _v : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_v:stdgo.AnyInterface) {
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Value(_v);
    }
}
@:structInit @:private class T_efaceWords {
    public var _typ : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _data : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_typ:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_data:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (_typ != null) this._typ = _typ;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_efaceWords(_typ, _data);
    }
}
function swapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _new:stdgo.GoInt32):stdgo.GoInt32 throw ":sync.atomic_.swapInt32 is not yet implemented";
function swapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _new:stdgo.GoInt64):stdgo.GoInt64 throw ":sync.atomic_.swapInt64 is not yet implemented";
function swapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _new:stdgo.GoUInt32):stdgo.GoUInt32 throw ":sync.atomic_.swapUint32 is not yet implemented";
function swapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _new:stdgo.GoUInt64):stdgo.GoUInt64 throw ":sync.atomic_.swapUint64 is not yet implemented";
function swapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr throw ":sync.atomic_.swapUintptr is not yet implemented";
function swapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer throw ":sync.atomic_.swapPointer is not yet implemented";
function compareAndSwapInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool throw ":sync.atomic_.compareAndSwapInt32 is not yet implemented";
function compareAndSwapInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _old:stdgo.GoInt64, _new:stdgo.GoInt64):Bool throw ":sync.atomic_.compareAndSwapInt64 is not yet implemented";
function compareAndSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Bool throw ":sync.atomic_.compareAndSwapUint32 is not yet implemented";
function compareAndSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool throw ":sync.atomic_.compareAndSwapUint64 is not yet implemented";
function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool throw ":sync.atomic_.compareAndSwapUintptr is not yet implemented";
function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool throw ":sync.atomic_.compareAndSwapPointer is not yet implemented";
function addInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _delta:stdgo.GoInt32):stdgo.GoInt32 throw ":sync.atomic_.addInt32 is not yet implemented";
function addUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _delta:stdgo.GoUInt32):stdgo.GoUInt32 throw ":sync.atomic_.addUint32 is not yet implemented";
function addInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _delta:stdgo.GoInt64):stdgo.GoInt64 throw ":sync.atomic_.addInt64 is not yet implemented";
function addUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _delta:stdgo.GoUInt64):stdgo.GoUInt64 throw ":sync.atomic_.addUint64 is not yet implemented";
function addUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr throw ":sync.atomic_.addUintptr is not yet implemented";
function loadInt32(_addr:stdgo.Pointer<stdgo.GoInt32>):stdgo.GoInt32 throw ":sync.atomic_.loadInt32 is not yet implemented";
function loadInt64(_addr:stdgo.Pointer<stdgo.GoInt64>):stdgo.GoInt64 throw ":sync.atomic_.loadInt64 is not yet implemented";
function loadUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.GoUInt32 throw ":sync.atomic_.loadUint32 is not yet implemented";
function loadUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>):stdgo.GoUInt64 throw ":sync.atomic_.loadUint64 is not yet implemented";
function loadUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr throw ":sync.atomic_.loadUintptr is not yet implemented";
function loadPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo._internal.unsafe.Unsafe.UnsafePointer throw ":sync.atomic_.loadPointer is not yet implemented";
function storeInt32(_addr:stdgo.Pointer<stdgo.GoInt32>, _val:stdgo.GoInt32):Void throw ":sync.atomic_.storeInt32 is not yet implemented";
function storeInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _val:stdgo.GoInt64):Void throw ":sync.atomic_.storeInt64 is not yet implemented";
function storeUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void {
        _addr.value = _val;
    }
function storeUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void {
        _addr.value = _val;
    }
function storeUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void throw ":sync.atomic_.storeUintptr is not yet implemented";
function storePointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _val:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void throw ":sync.atomic_.storePointer is not yet implemented";
function _b32(_b:Bool):stdgo.GoUInt32 throw ":sync.atomic_._b32 is not yet implemented";
function _runtime_procPin():stdgo.GoInt throw ":sync.atomic_._runtime_procPin is not yet implemented";
function _runtime_procUnpin():Void throw ":sync.atomic_._runtime_procUnpin is not yet implemented";
class Bool__asInterface {
    @:keep
    public dynamic function compareAndSwap(_old:Bool, _new:Bool):Bool return __self__.value.compareAndSwap(_old, _new);
    @:keep
    public dynamic function swap(_new:Bool):Bool return __self__.value.swap(_new);
    @:keep
    public dynamic function store(_val:Bool):Void __self__.value.store(_val);
    @:keep
    public dynamic function load():Bool return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Bool_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Bool__asInterface) class Bool__static_extension {
    @:keep
    static public function compareAndSwap( _x:stdgo.Ref<Bool_>, _old:Bool, _new:Bool):Bool throw "Bool_:sync.atomic_.compareAndSwap is not yet implemented";
    @:keep
    static public function swap( _x:stdgo.Ref<Bool_>, _new:Bool):Bool throw "Bool_:sync.atomic_.swap is not yet implemented";
    @:keep
    static public function store( _x:stdgo.Ref<Bool_>, _val:Bool):Void storeUint32(stdgo.Go.pointer(_x._v), _val ? 1 : 0);
    @:keep
    static public function load( _x:stdgo.Ref<Bool_>):Bool return @:privateAccess _x._v == 1;
}
class Pointer__asInterface<T_> {
    @:keep
    public var compareAndSwap : (_old:stdgo.Ref<T_>, _new:stdgo.Ref<T_>) -> Bool;
    @:keep
    public var swap : (_new:stdgo.Ref<T_>) -> stdgo.Ref<T_>;
    @:keep
    public var store : (_val:stdgo.Ref<T_>) -> Void;
    @:keep
    public var load : () -> stdgo.Ref<T_>;
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Pointer_<T_>>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Pointer__asInterface) class Pointer__static_extension {
    @:keep
    macro static public function compareAndSwap<T_>( _x:haxe.macro.Expr.ExprOf<stdgo.Ref<Pointer_<T_>>>, __generic__0:haxe.macro.Expr.ExprOf<T_>, _old:haxe.macro.Expr.ExprOf<stdgo.Ref<T_>>, _new:haxe.macro.Expr.ExprOf<stdgo.Ref<T_>>):haxe.macro.Expr.ExprOf<Bool>;
    @:keep
    macro static public function swap<T_>( _x:haxe.macro.Expr.ExprOf<stdgo.Ref<Pointer_<T_>>>, __generic__0:haxe.macro.Expr.ExprOf<T_>, _new:haxe.macro.Expr.ExprOf<stdgo.Ref<T_>>):haxe.macro.Expr.ExprOf<stdgo.Ref<T_>>;
    @:keep
    macro static public function store<T_>( _x:haxe.macro.Expr.ExprOf<stdgo.Ref<Pointer_<T_>>>, __generic__0:haxe.macro.Expr.ExprOf<T_>, _val:haxe.macro.Expr.ExprOf<stdgo.Ref<T_>>):haxe.macro.Expr.ExprOf<Void>;
    @:keep
    macro static public function load<T_>( _x:haxe.macro.Expr.ExprOf<stdgo.Ref<Pointer_<T_>>>, __generic__0:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<stdgo.Ref<T_>>;
}
class Int32_asInterface {
    @:keep
    public dynamic function add(_delta:stdgo.GoInt32):stdgo.GoInt32 return __self__.value.add(_delta);
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool return __self__.value.compareAndSwap(_old, _new);
    @:keep
    public dynamic function swap(_new:stdgo.GoInt32):stdgo.GoInt32 return __self__.value.swap(_new);
    @:keep
    public dynamic function store(_val:stdgo.GoInt32):Void __self__.value.store(_val);
    @:keep
    public dynamic function load():stdgo.GoInt32 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Int32>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Int32_asInterface) class Int32_static_extension {
    @:keep
    static public function add( _x:stdgo.Ref<Int32>, _delta:stdgo.GoInt32):stdgo.GoInt32 throw "Int32:sync.atomic_.add is not yet implemented";
    @:keep
    static public function compareAndSwap( _x:stdgo.Ref<Int32>, _old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool throw "Int32:sync.atomic_.compareAndSwap is not yet implemented";
    @:keep
    static public function swap( _x:stdgo.Ref<Int32>, _new:stdgo.GoInt32):stdgo.GoInt32 throw "Int32:sync.atomic_.swap is not yet implemented";
    @:keep
    static public function store( _x:stdgo.Ref<Int32>, _val:stdgo.GoInt32):Void {
        @:recv var _x:stdgo.Ref<Int32> = _x;
        _x._v = _val;
    }
    @:keep
    static public function load( _x:stdgo.Ref<Int32>):stdgo.GoInt32 {
        @:recv var _x:stdgo.Ref<Int32> = _x;
        return @:privateAccess _x._v;
    }
}
class Int64__asInterface {
    @:keep
    public dynamic function add(_delta:stdgo.GoInt64):stdgo.GoInt64 return __self__.value.add(_delta);
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.GoInt64, _new:stdgo.GoInt64):Bool return __self__.value.compareAndSwap(_old, _new);
    @:keep
    public dynamic function swap(_new:stdgo.GoInt64):stdgo.GoInt64 return __self__.value.swap(_new);
    @:keep
    public dynamic function store(_val:stdgo.GoInt64):Void __self__.value.store(_val);
    @:keep
    public dynamic function load():stdgo.GoInt64 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Int64_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Int64__asInterface) class Int64__static_extension {
    @:keep
    static public function add( _x:stdgo.Ref<Int64_>, _delta:stdgo.GoInt64):stdgo.GoInt64 throw "Int64_:sync.atomic_.add is not yet implemented";
    @:keep
    static public function compareAndSwap( _x:stdgo.Ref<Int64_>, _old:stdgo.GoInt64, _new:stdgo.GoInt64):Bool throw "Int64_:sync.atomic_.compareAndSwap is not yet implemented";
    @:keep
    static public function swap( _x:stdgo.Ref<Int64_>, _new:stdgo.GoInt64):stdgo.GoInt64 throw "Int64_:sync.atomic_.swap is not yet implemented";
    @:keep
    static public function store( _x:stdgo.Ref<Int64_>, _val:stdgo.GoInt64):Void throw "Int64_:sync.atomic_.store is not yet implemented";
    @:keep
    static public function load( _x:stdgo.Ref<Int64_>):stdgo.GoInt64 throw "Int64_:sync.atomic_.load is not yet implemented";
}
class Uint32_asInterface {
    @:keep
    public dynamic function add(_delta:stdgo.GoUInt32):stdgo.GoUInt32 return __self__.value.add(_delta);
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Bool return __self__.value.compareAndSwap(_old, _new);
    @:keep
    public dynamic function swap(_new:stdgo.GoUInt32):stdgo.GoUInt32 return __self__.value.swap(_new);
    @:keep
    public dynamic function store(_val:stdgo.GoUInt32):Void __self__.value.store(_val);
    @:keep
    public dynamic function load():stdgo.GoUInt32 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Uint32>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Uint32_asInterface) class Uint32_static_extension {
    @:keep
    static public function add( _x:stdgo.Ref<Uint32>, _delta:stdgo.GoUInt32):stdgo.GoUInt32 throw "Uint32:sync.atomic_.add is not yet implemented";
    @:keep
    static public function compareAndSwap( _x:stdgo.Ref<Uint32>, _old:stdgo.GoUInt32, _new:stdgo.GoUInt32):Bool throw "Uint32:sync.atomic_.compareAndSwap is not yet implemented";
    @:keep
    static public function swap( _x:stdgo.Ref<Uint32>, _new:stdgo.GoUInt32):stdgo.GoUInt32 throw "Uint32:sync.atomic_.swap is not yet implemented";
    @:keep
    static public function store( _x:stdgo.Ref<Uint32>, _val:stdgo.GoUInt32):Void throw "Uint32:sync.atomic_.store is not yet implemented";
    @:keep
    static public function load( _x:stdgo.Ref<Uint32>):stdgo.GoUInt32 throw "Uint32:sync.atomic_.load is not yet implemented";
}
class Uint64_asInterface {
    @:keep
    public dynamic function add(_delta:stdgo.GoUInt64):stdgo.GoUInt64 return __self__.value.add(_delta);
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool return __self__.value.compareAndSwap(_old, _new);
    @:keep
    public dynamic function swap(_new:stdgo.GoUInt64):stdgo.GoUInt64 return __self__.value.swap(_new);
    @:keep
    public dynamic function store(_val:stdgo.GoUInt64):Void __self__.value.store(_val);
    @:keep
    public dynamic function load():stdgo.GoUInt64 return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Uint64>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Uint64_asInterface) class Uint64_static_extension {
    @:keep
    static public function add( _x:stdgo.Ref<Uint64>, _delta:stdgo.GoUInt64):stdgo.GoUInt64 throw "Uint64:sync.atomic_.add is not yet implemented";
    @:keep
    static public function compareAndSwap( _x:stdgo.Ref<Uint64>, _old:stdgo.GoUInt64, _new:stdgo.GoUInt64):Bool throw "Uint64:sync.atomic_.compareAndSwap is not yet implemented";
    @:keep
    static public function swap( _x:stdgo.Ref<Uint64>, _new:stdgo.GoUInt64):stdgo.GoUInt64 throw "Uint64:sync.atomic_.swap is not yet implemented";
    @:keep
    static public function store( _x:stdgo.Ref<Uint64>, _val:stdgo.GoUInt64):Void throw "Uint64:sync.atomic_.store is not yet implemented";
    @:keep
    static public function load( _x:stdgo.Ref<Uint64>):stdgo.GoUInt64 throw "Uint64:sync.atomic_.load is not yet implemented";
}
class Uintptr_asInterface {
    @:keep
    public dynamic function add(_delta:stdgo.GoUIntptr):stdgo.GoUIntptr return __self__.value.add(_delta);
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool return __self__.value.compareAndSwap(_old, _new);
    @:keep
    public dynamic function swap(_new:stdgo.GoUIntptr):stdgo.GoUIntptr return __self__.value.swap(_new);
    @:keep
    public dynamic function store(_val:stdgo.GoUIntptr):Void __self__.value.store(_val);
    @:keep
    public dynamic function load():stdgo.GoUIntptr return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Uintptr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Uintptr_asInterface) class Uintptr_static_extension {
    @:keep
    static public function add( _x:stdgo.Ref<Uintptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr throw "Uintptr:sync.atomic_.add is not yet implemented";
    @:keep
    static public function compareAndSwap( _x:stdgo.Ref<Uintptr>, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool throw "Uintptr:sync.atomic_.compareAndSwap is not yet implemented";
    @:keep
    static public function swap( _x:stdgo.Ref<Uintptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr throw "Uintptr:sync.atomic_.swap is not yet implemented";
    @:keep
    static public function store( _x:stdgo.Ref<Uintptr>, _val:stdgo.GoUIntptr):Void throw "Uintptr:sync.atomic_.store is not yet implemented";
    @:keep
    static public function load( _x:stdgo.Ref<Uintptr>):stdgo.GoUIntptr throw "Uintptr:sync.atomic_.load is not yet implemented";
}
class T_noCopy_asInterface {
    @:keep
    public dynamic function unlock():Void __self__.value.unlock();
    @:keep
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_noCopy>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.T_noCopy_asInterface) class T_noCopy_static_extension {
    @:keep
    static public function unlock( _:stdgo.Ref<T_noCopy>):Void throw "T_noCopy:sync.atomic_.unlock is not yet implemented";
    @:keep
    static public function lock( _:stdgo.Ref<T_noCopy>):Void throw "T_noCopy:sync.atomic_.lock is not yet implemented";
}
class Value_asInterface {
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool return __self__.value.compareAndSwap(_old, _new);
    @:keep
    public dynamic function swap(_new:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value.swap(_new);
    @:keep
    public dynamic function store(_val:stdgo.AnyInterface):Void __self__.value.store(_val);
    @:keep
    public dynamic function load():stdgo.AnyInterface return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Value>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Value_asInterface) class Value_static_extension {
    @:keep
    static public function compareAndSwap( _v:stdgo.Ref<Value>, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool throw "Value:sync.atomic_.compareAndSwap is not yet implemented";
    @:keep
    static public function swap( _v:stdgo.Ref<Value>, _new:stdgo.AnyInterface):stdgo.AnyInterface throw "Value:sync.atomic_.swap is not yet implemented";
    @:keep
    static public function store( _v:stdgo.Ref<Value>, _val:stdgo.AnyInterface):Void throw "Value:sync.atomic_.store is not yet implemented";
    @:keep
    static public function load( _v:stdgo.Ref<Value>):stdgo.AnyInterface throw "Value:sync.atomic_.load is not yet implemented";
}

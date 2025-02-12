package runtime.internal.atomic_;
@:structInit @:using(runtime.internal.atomic_.Atomic_.Int32_static_extension) abstract Int32(_internal.runtime.internal.atomic_.Atomic__Int32.Int32) from _internal.runtime.internal.atomic_.Atomic__Int32.Int32 to _internal.runtime.internal.atomic_.Atomic__Int32.Int32 {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _value(get, set) : StdTypes.Int;
    function get__value():StdTypes.Int return this._value;
    function set__value(v:StdTypes.Int):StdTypes.Int {
        this._value = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_value:StdTypes.Int) this = new _internal.runtime.internal.atomic_.Atomic__Int32.Int32(_noCopy, (_value : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.internal.atomic_.Atomic_.Int64__static_extension) abstract Int64_(_internal.runtime.internal.atomic_.Atomic__Int64_.Int64_) from _internal.runtime.internal.atomic_.Atomic__Int64_.Int64_ to _internal.runtime.internal.atomic_.Atomic__Int64_.Int64_ {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var __1(get, set) : T_align64;
    function get___1():T_align64 return this.__1;
    function set___1(v:T_align64):T_align64 {
        this.__1 = v;
        return v;
    }
    public var _value(get, set) : haxe.Int64;
    function get__value():haxe.Int64 return this._value;
    function set__value(v:haxe.Int64):haxe.Int64 {
        this._value = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?__1:T_align64, ?_value:haxe.Int64) this = new _internal.runtime.internal.atomic_.Atomic__Int64_.Int64_(_noCopy, __1, (_value : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.internal.atomic_.Atomic_.Uint8_static_extension) abstract Uint8(_internal.runtime.internal.atomic_.Atomic__Uint8.Uint8) from _internal.runtime.internal.atomic_.Atomic__Uint8.Uint8 to _internal.runtime.internal.atomic_.Atomic__Uint8.Uint8 {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _value(get, set) : std.UInt;
    function get__value():std.UInt return this._value;
    function set__value(v:std.UInt):std.UInt {
        this._value = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_value:std.UInt) this = new _internal.runtime.internal.atomic_.Atomic__Uint8.Uint8(_noCopy, (_value : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.internal.atomic_.Atomic_.Bool__static_extension) abstract Bool_(_internal.runtime.internal.atomic_.Atomic__Bool_.Bool_) from _internal.runtime.internal.atomic_.Atomic__Bool_.Bool_ to _internal.runtime.internal.atomic_.Atomic__Bool_.Bool_ {
    public var _u(get, set) : Uint8;
    function get__u():Uint8 return this._u;
    function set__u(v:Uint8):Uint8 {
        this._u = v;
        return v;
    }
    public function new(?_u:Uint8) this = new _internal.runtime.internal.atomic_.Atomic__Bool_.Bool_(_u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.internal.atomic_.Atomic_.Uint32_static_extension) abstract Uint32(_internal.runtime.internal.atomic_.Atomic__Uint32.Uint32) from _internal.runtime.internal.atomic_.Atomic__Uint32.Uint32 to _internal.runtime.internal.atomic_.Atomic__Uint32.Uint32 {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _value(get, set) : std.UInt;
    function get__value():std.UInt return this._value;
    function set__value(v:std.UInt):std.UInt {
        this._value = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_value:std.UInt) this = new _internal.runtime.internal.atomic_.Atomic__Uint32.Uint32(_noCopy, (_value : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.internal.atomic_.Atomic_.Uint64_static_extension) abstract Uint64(_internal.runtime.internal.atomic_.Atomic__Uint64.Uint64) from _internal.runtime.internal.atomic_.Atomic__Uint64.Uint64 to _internal.runtime.internal.atomic_.Atomic__Uint64.Uint64 {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var __3(get, set) : T_align64;
    function get___3():T_align64 return this.__3;
    function set___3(v:T_align64):T_align64 {
        this.__3 = v;
        return v;
    }
    public var _value(get, set) : haxe.UInt64;
    function get__value():haxe.UInt64 return this._value;
    function set__value(v:haxe.UInt64):haxe.UInt64 {
        this._value = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?__3:T_align64, ?_value:haxe.UInt64) this = new _internal.runtime.internal.atomic_.Atomic__Uint64.Uint64(_noCopy, __3, (_value : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.internal.atomic_.Atomic_.Uintptr_static_extension) abstract Uintptr(_internal.runtime.internal.atomic_.Atomic__Uintptr.Uintptr) from _internal.runtime.internal.atomic_.Atomic__Uintptr.Uintptr to _internal.runtime.internal.atomic_.Atomic__Uintptr.Uintptr {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _value(get, set) : stdgo.GoUIntptr;
    function get__value():stdgo.GoUIntptr return this._value;
    function set__value(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._value = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_value:stdgo.GoUIntptr) this = new _internal.runtime.internal.atomic_.Atomic__Uintptr.Uintptr(_noCopy, (_value : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.internal.atomic_.Atomic_.Float64_static_extension) abstract Float64(_internal.runtime.internal.atomic_.Atomic__Float64.Float64) from _internal.runtime.internal.atomic_.Atomic__Float64.Float64 to _internal.runtime.internal.atomic_.Atomic__Float64.Float64 {
    public var _u(get, set) : Uint64;
    function get__u():Uint64 return this._u;
    function set__u(v:Uint64):Uint64 {
        this._u = v;
        return v;
    }
    public function new(?_u:Uint64) this = new _internal.runtime.internal.atomic_.Atomic__Float64.Float64(_u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.internal.atomic_.Atomic_.UnsafePointer_static_extension) abstract UnsafePointer(_internal.runtime.internal.atomic_.Atomic__UnsafePointer.UnsafePointer) from _internal.runtime.internal.atomic_.Atomic__UnsafePointer.UnsafePointer to _internal.runtime.internal.atomic_.Atomic__UnsafePointer.UnsafePointer {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _value(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__value():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._value;
    function set__value(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._value = v;
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_value:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new _internal.runtime.internal.atomic_.Atomic__UnsafePointer.UnsafePointer(_noCopy, _value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.internal.atomic_.Atomic_.Pointer__static_extension) abstract Pointer_(_internal.runtime.internal.atomic_.Atomic__Pointer_.Pointer_) from _internal.runtime.internal.atomic_.Atomic__Pointer_.Pointer_ to _internal.runtime.internal.atomic_.Atomic__Pointer_.Pointer_ {
    public var _u(get, set) : UnsafePointer;
    function get__u():UnsafePointer return this._u;
    function set__u(v:UnsafePointer):UnsafePointer {
        this._u = v;
        return v;
    }
    public function new(?_u:UnsafePointer) this = new _internal.runtime.internal.atomic_.Atomic__Pointer_.Pointer_(_u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.internal.atomic_.Atomic_.T_noCopy_static_extension) abstract T_noCopy(_internal.runtime.internal.atomic_.Atomic__T_noCopy.T_noCopy) from _internal.runtime.internal.atomic_.Atomic__T_noCopy.T_noCopy to _internal.runtime.internal.atomic_.Atomic__T_noCopy.T_noCopy {
    public function new() this = new _internal.runtime.internal.atomic_.Atomic__T_noCopy.T_noCopy();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(runtime.internal.atomic_.Atomic_.T_align64_static_extension) abstract T_align64(_internal.runtime.internal.atomic_.Atomic__T_align64.T_align64) from _internal.runtime.internal.atomic_.Atomic__T_align64.T_align64 to _internal.runtime.internal.atomic_.Atomic__T_align64.T_align64 {
    public function new() this = new _internal.runtime.internal.atomic_.Atomic__T_align64.T_align64();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Int32Pointer = _internal.runtime.internal.atomic_.Atomic__Int32Pointer.Int32Pointer;
class Int32_static_extension {
    static public function add(_i:Int32, _delta:StdTypes.Int):StdTypes.Int {
        final _i = (_i : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32>);
        final _delta = (_delta : stdgo.GoInt32);
        return _internal.runtime.internal.atomic_.Atomic__Int32_static_extension.Int32_static_extension.add(_i, _delta);
    }
    static public function swap(_i:Int32, _new:StdTypes.Int):StdTypes.Int {
        final _i = (_i : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32>);
        final _new = (_new : stdgo.GoInt32);
        return _internal.runtime.internal.atomic_.Atomic__Int32_static_extension.Int32_static_extension.swap(_i, _new);
    }
    static public function compareAndSwap(_i:Int32, _old:StdTypes.Int, _new:StdTypes.Int):Bool {
        final _i = (_i : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32>);
        final _old = (_old : stdgo.GoInt32);
        final _new = (_new : stdgo.GoInt32);
        return _internal.runtime.internal.atomic_.Atomic__Int32_static_extension.Int32_static_extension.compareAndSwap(_i, _old, _new);
    }
    static public function store(_i:Int32, _value:StdTypes.Int):Void {
        final _i = (_i : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32>);
        final _value = (_value : stdgo.GoInt32);
        _internal.runtime.internal.atomic_.Atomic__Int32_static_extension.Int32_static_extension.store(_i, _value);
    }
    static public function load(_i:Int32):StdTypes.Int {
        final _i = (_i : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int32.Int32>);
        return _internal.runtime.internal.atomic_.Atomic__Int32_static_extension.Int32_static_extension.load(_i);
    }
}
typedef Int64_Pointer = _internal.runtime.internal.atomic_.Atomic__Int64_Pointer.Int64_Pointer;
class Int64__static_extension {
    static public function add(_i:Int64_, _delta:haxe.Int64):haxe.Int64 {
        final _i = (_i : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_>);
        final _delta = (_delta : stdgo.GoInt64);
        return _internal.runtime.internal.atomic_.Atomic__Int64__static_extension.Int64__static_extension.add(_i, _delta);
    }
    static public function swap(_i:Int64_, _new:haxe.Int64):haxe.Int64 {
        final _i = (_i : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_>);
        final _new = (_new : stdgo.GoInt64);
        return _internal.runtime.internal.atomic_.Atomic__Int64__static_extension.Int64__static_extension.swap(_i, _new);
    }
    static public function compareAndSwap(_i:Int64_, _old:haxe.Int64, _new:haxe.Int64):Bool {
        final _i = (_i : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_>);
        final _old = (_old : stdgo.GoInt64);
        final _new = (_new : stdgo.GoInt64);
        return _internal.runtime.internal.atomic_.Atomic__Int64__static_extension.Int64__static_extension.compareAndSwap(_i, _old, _new);
    }
    static public function store(_i:Int64_, _value:haxe.Int64):Void {
        final _i = (_i : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_>);
        final _value = (_value : stdgo.GoInt64);
        _internal.runtime.internal.atomic_.Atomic__Int64__static_extension.Int64__static_extension.store(_i, _value);
    }
    static public function load(_i:Int64_):haxe.Int64 {
        final _i = (_i : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__int64_.Int64_>);
        return _internal.runtime.internal.atomic_.Atomic__Int64__static_extension.Int64__static_extension.load(_i);
    }
}
typedef Uint8Pointer = _internal.runtime.internal.atomic_.Atomic__Uint8Pointer.Uint8Pointer;
class Uint8_static_extension {
    static public function or(_u:Uint8, _value:std.UInt):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint8.Uint8>);
        final _value = (_value : stdgo.GoUInt8);
        _internal.runtime.internal.atomic_.Atomic__Uint8_static_extension.Uint8_static_extension.or(_u, _value);
    }
    static public function and(_u:Uint8, _value:std.UInt):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint8.Uint8>);
        final _value = (_value : stdgo.GoUInt8);
        _internal.runtime.internal.atomic_.Atomic__Uint8_static_extension.Uint8_static_extension.and(_u, _value);
    }
    static public function store(_u:Uint8, _value:std.UInt):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint8.Uint8>);
        final _value = (_value : stdgo.GoUInt8);
        _internal.runtime.internal.atomic_.Atomic__Uint8_static_extension.Uint8_static_extension.store(_u, _value);
    }
    static public function load(_u:Uint8):std.UInt {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint8.Uint8>);
        return _internal.runtime.internal.atomic_.Atomic__Uint8_static_extension.Uint8_static_extension.load(_u);
    }
}
typedef Bool_Pointer = _internal.runtime.internal.atomic_.Atomic__Bool_Pointer.Bool_Pointer;
class Bool__static_extension {
    static public function store(_b:Bool_, _value:Bool):Void {
        final _b = (_b : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__bool_.Bool_>);
        _internal.runtime.internal.atomic_.Atomic__Bool__static_extension.Bool__static_extension.store(_b, _value);
    }
    static public function load(_b:Bool_):Bool {
        final _b = (_b : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__bool_.Bool_>);
        return _internal.runtime.internal.atomic_.Atomic__Bool__static_extension.Bool__static_extension.load(_b);
    }
}
typedef Uint32Pointer = _internal.runtime.internal.atomic_.Atomic__Uint32Pointer.Uint32Pointer;
class Uint32_static_extension {
    static public function add(_u:Uint32, _delta:StdTypes.Int):std.UInt {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>);
        final _delta = (_delta : stdgo.GoInt32);
        return _internal.runtime.internal.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.add(_u, _delta);
    }
    static public function or(_u:Uint32, _value:std.UInt):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>);
        final _value = (_value : stdgo.GoUInt32);
        _internal.runtime.internal.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.or(_u, _value);
    }
    static public function and(_u:Uint32, _value:std.UInt):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>);
        final _value = (_value : stdgo.GoUInt32);
        _internal.runtime.internal.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.and(_u, _value);
    }
    static public function swap(_u:Uint32, _value:std.UInt):std.UInt {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>);
        final _value = (_value : stdgo.GoUInt32);
        return _internal.runtime.internal.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.swap(_u, _value);
    }
    static public function compareAndSwapRelease(_u:Uint32, _old:std.UInt, _new:std.UInt):Bool {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>);
        final _old = (_old : stdgo.GoUInt32);
        final _new = (_new : stdgo.GoUInt32);
        return _internal.runtime.internal.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.compareAndSwapRelease(_u, _old, _new);
    }
    static public function compareAndSwap(_u:Uint32, _old:std.UInt, _new:std.UInt):Bool {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>);
        final _old = (_old : stdgo.GoUInt32);
        final _new = (_new : stdgo.GoUInt32);
        return _internal.runtime.internal.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.compareAndSwap(_u, _old, _new);
    }
    static public function storeRelease(_u:Uint32, _value:std.UInt):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>);
        final _value = (_value : stdgo.GoUInt32);
        _internal.runtime.internal.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.storeRelease(_u, _value);
    }
    static public function store(_u:Uint32, _value:std.UInt):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>);
        final _value = (_value : stdgo.GoUInt32);
        _internal.runtime.internal.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.store(_u, _value);
    }
    static public function loadAcquire(_u:Uint32):std.UInt {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>);
        return _internal.runtime.internal.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.loadAcquire(_u);
    }
    static public function load(_u:Uint32):std.UInt {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint32.Uint32>);
        return _internal.runtime.internal.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension.load(_u);
    }
}
typedef Uint64Pointer = _internal.runtime.internal.atomic_.Atomic__Uint64Pointer.Uint64Pointer;
class Uint64_static_extension {
    static public function storeRelease(_u:Uint64, _value:haxe.UInt64):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>);
        final _value = (_value : stdgo.GoUInt64);
        _internal.runtime.internal.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.storeRelease(_u, _value);
    }
    static public function loadAcquire(_u:Uint64):haxe.UInt64 {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>);
        return _internal.runtime.internal.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.loadAcquire(_u);
    }
    static public function add(_u:Uint64, _delta:haxe.Int64):haxe.UInt64 {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>);
        final _delta = (_delta : stdgo.GoInt64);
        return _internal.runtime.internal.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.add(_u, _delta);
    }
    static public function swap(_u:Uint64, _value:haxe.UInt64):haxe.UInt64 {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>);
        final _value = (_value : stdgo.GoUInt64);
        return _internal.runtime.internal.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.swap(_u, _value);
    }
    static public function compareAndSwap(_u:Uint64, _old:haxe.UInt64, _new:haxe.UInt64):Bool {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>);
        final _old = (_old : stdgo.GoUInt64);
        final _new = (_new : stdgo.GoUInt64);
        return _internal.runtime.internal.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.compareAndSwap(_u, _old, _new);
    }
    static public function store(_u:Uint64, _value:haxe.UInt64):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>);
        final _value = (_value : stdgo.GoUInt64);
        _internal.runtime.internal.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.store(_u, _value);
    }
    static public function load(_u:Uint64):haxe.UInt64 {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uint64.Uint64>);
        return _internal.runtime.internal.atomic_.Atomic__Uint64_static_extension.Uint64_static_extension.load(_u);
    }
}
typedef UintptrPointer = _internal.runtime.internal.atomic_.Atomic__UintptrPointer.UintptrPointer;
class Uintptr_static_extension {
    static public function add(_u:Uintptr, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>);
        final _delta = (_delta : stdgo.GoUIntptr);
        return _internal.runtime.internal.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.add(_u, _delta);
    }
    static public function swap(_u:Uintptr, _value:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>);
        final _value = (_value : stdgo.GoUIntptr);
        return _internal.runtime.internal.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.swap(_u, _value);
    }
    static public function compareAndSwap(_u:Uintptr, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>);
        final _old = (_old : stdgo.GoUIntptr);
        final _new = (_new : stdgo.GoUIntptr);
        return _internal.runtime.internal.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.compareAndSwap(_u, _old, _new);
    }
    static public function storeRelease(_u:Uintptr, _value:stdgo.GoUIntptr):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>);
        final _value = (_value : stdgo.GoUIntptr);
        _internal.runtime.internal.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.storeRelease(_u, _value);
    }
    static public function store(_u:Uintptr, _value:stdgo.GoUIntptr):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>);
        final _value = (_value : stdgo.GoUIntptr);
        _internal.runtime.internal.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.store(_u, _value);
    }
    static public function loadAcquire(_u:Uintptr):stdgo.GoUIntptr {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>);
        return _internal.runtime.internal.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.loadAcquire(_u);
    }
    static public function load(_u:Uintptr):stdgo.GoUIntptr {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__uintptr.Uintptr>);
        return _internal.runtime.internal.atomic_.Atomic__Uintptr_static_extension.Uintptr_static_extension.load(_u);
    }
}
typedef Float64Pointer = _internal.runtime.internal.atomic_.Atomic__Float64Pointer.Float64Pointer;
class Float64_static_extension {
    static public function store(_f:Float64, _value:StdTypes.Float):Void {
        final _f = (_f : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__float64.Float64>);
        final _value = (_value : stdgo.GoFloat64);
        _internal.runtime.internal.atomic_.Atomic__Float64_static_extension.Float64_static_extension.store(_f, _value);
    }
    static public function load(_f:Float64):StdTypes.Float {
        final _f = (_f : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__float64.Float64>);
        return _internal.runtime.internal.atomic_.Atomic__Float64_static_extension.Float64_static_extension.load(_f);
    }
}
typedef UnsafePointerPointer = _internal.runtime.internal.atomic_.Atomic__UnsafePointerPointer.UnsafePointerPointer;
class UnsafePointer_static_extension {
    static public function compareAndSwap(_u:UnsafePointer, _old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer>);
        return _internal.runtime.internal.atomic_.Atomic__UnsafePointer_static_extension.UnsafePointer_static_extension.compareAndSwap(_u, _old, _new);
    }
    static public function compareAndSwapNoWB(_u:UnsafePointer, _old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer>);
        return _internal.runtime.internal.atomic_.Atomic__UnsafePointer_static_extension.UnsafePointer_static_extension.compareAndSwapNoWB(_u, _old, _new);
    }
    static public function store(_u:UnsafePointer, _value:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer>);
        _internal.runtime.internal.atomic_.Atomic__UnsafePointer_static_extension.UnsafePointer_static_extension.store(_u, _value);
    }
    static public function storeNoWB(_u:UnsafePointer, _value:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer>);
        _internal.runtime.internal.atomic_.Atomic__UnsafePointer_static_extension.UnsafePointer_static_extension.storeNoWB(_u, _value);
    }
    static public function load(_u:UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        final _u = (_u : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer>);
        return _internal.runtime.internal.atomic_.Atomic__UnsafePointer_static_extension.UnsafePointer_static_extension.load(_u);
    }
}
typedef Pointer_Pointer = _internal.runtime.internal.atomic_.Atomic__Pointer_Pointer.Pointer_Pointer<T_>;
class Pointer__static_extension {
    static public function compareAndSwap(_p:Pointer_<Dynamic>, _old:Dynamic, _new:Dynamic):Bool {
        final _p = (_p : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<Dynamic>>);
        final _old = (_old : stdgo.Ref<Dynamic>);
        final _new = (_new : stdgo.Ref<Dynamic>);
        return _internal.runtime.internal.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.compareAndSwap(_p, _old, _new);
    }
    static public function compareAndSwapNoWB(_p:Pointer_<Dynamic>, _old:Dynamic, _new:Dynamic):Bool {
        final _p = (_p : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<Dynamic>>);
        final _old = (_old : stdgo.Ref<Dynamic>);
        final _new = (_new : stdgo.Ref<Dynamic>);
        return _internal.runtime.internal.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.compareAndSwapNoWB(_p, _old, _new);
    }
    static public function store(_p:Pointer_<Dynamic>, _value:Dynamic):Void {
        final _p = (_p : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<Dynamic>>);
        final _value = (_value : stdgo.Ref<Dynamic>);
        _internal.runtime.internal.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.store(_p, _value);
    }
    static public function storeNoWB(_p:Pointer_<Dynamic>, _value:Dynamic):Void {
        final _p = (_p : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<Dynamic>>);
        final _value = (_value : stdgo.Ref<Dynamic>);
        _internal.runtime.internal.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.storeNoWB(_p, _value);
    }
    static public function load(_p:Pointer_<Dynamic>):Dynamic {
        final _p = (_p : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__pointer_.Pointer_<Dynamic>>);
        return _internal.runtime.internal.atomic_.Atomic__Pointer__static_extension.Pointer__static_extension.load(_p);
    }
}
typedef T_noCopyPointer = _internal.runtime.internal.atomic_.Atomic__T_noCopyPointer.T_noCopyPointer;
class T_noCopy_static_extension {
    static public function unlock(_:T_noCopy):Void {
        final _ = (_ : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__t_nocopy.T_noCopy>);
        _internal.runtime.internal.atomic_.Atomic__T_noCopy_static_extension.T_noCopy_static_extension.unlock(_);
    }
    static public function lock(_:T_noCopy):Void {
        final _ = (_ : stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__t_nocopy.T_noCopy>);
        _internal.runtime.internal.atomic_.Atomic__T_noCopy_static_extension.T_noCopy_static_extension.lock(_);
    }
}
typedef T_align64Pointer = _internal.runtime.internal.atomic_.Atomic__T_align64Pointer.T_align64Pointer;
class T_align64_static_extension {

}
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
    static public inline function load(_ptr:stdgo.Pointer<std.UInt>):std.UInt {
        return _internal.runtime.internal.atomic_.Atomic__load.load(_ptr);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loadp(_ptr:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return _internal.runtime.internal.atomic_.Atomic__loadp.loadp(_ptr);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loadAcq(_ptr:stdgo.Pointer<std.UInt>):std.UInt {
        return _internal.runtime.internal.atomic_.Atomic__loadAcq.loadAcq(_ptr);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loadAcq64(_ptr:stdgo.Pointer<haxe.UInt64>):haxe.UInt64 {
        return _internal.runtime.internal.atomic_.Atomic__loadAcq64.loadAcq64(_ptr);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loadAcquintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr {
        return _internal.runtime.internal.atomic_.Atomic__loadAcquintptr.loadAcquintptr(_ptr);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function load8(_ptr:stdgo.Pointer<std.UInt>):std.UInt {
        return _internal.runtime.internal.atomic_.Atomic__load8.load8(_ptr);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function load64(_ptr:stdgo.Pointer<haxe.UInt64>):haxe.UInt64 {
        return _internal.runtime.internal.atomic_.Atomic__load64.load64(_ptr);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xadd(_ptr:stdgo.Pointer<std.UInt>, _delta:StdTypes.Int):std.UInt {
        final _delta = (_delta : stdgo.GoInt32);
        return _internal.runtime.internal.atomic_.Atomic__xadd.xadd(_ptr, _delta);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xadd64(_ptr:stdgo.Pointer<haxe.UInt64>, _delta:haxe.Int64):haxe.UInt64 {
        final _delta = (_delta : stdgo.GoInt64);
        return _internal.runtime.internal.atomic_.Atomic__xadd64.xadd64(_ptr, _delta);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xadduintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _delta = (_delta : stdgo.GoUIntptr);
        return _internal.runtime.internal.atomic_.Atomic__xadduintptr.xadduintptr(_ptr, _delta);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xchg(_ptr:stdgo.Pointer<std.UInt>, _new:std.UInt):std.UInt {
        final _new = (_new : stdgo.GoUInt32);
        return _internal.runtime.internal.atomic_.Atomic__xchg.xchg(_ptr, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xchg64(_ptr:stdgo.Pointer<haxe.UInt64>, _new:haxe.UInt64):haxe.UInt64 {
        final _new = (_new : stdgo.GoUInt64);
        return _internal.runtime.internal.atomic_.Atomic__xchg64.xchg64(_ptr, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xchgint32(_ptr:stdgo.Pointer<StdTypes.Int>, _new:StdTypes.Int):StdTypes.Int {
        final _new = (_new : stdgo.GoInt32);
        return _internal.runtime.internal.atomic_.Atomic__xchgint32.xchgint32(_ptr, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xchgint64(_ptr:stdgo.Pointer<haxe.Int64>, _new:haxe.Int64):haxe.Int64 {
        final _new = (_new : stdgo.GoInt64);
        return _internal.runtime.internal.atomic_.Atomic__xchgint64.xchgint64(_ptr, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xchguintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _new = (_new : stdgo.GoUIntptr);
        return _internal.runtime.internal.atomic_.Atomic__xchguintptr.xchguintptr(_ptr, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function and8(_ptr:stdgo.Pointer<std.UInt>, _val:std.UInt):Void {
        final _val = (_val : stdgo.GoUInt8);
        _internal.runtime.internal.atomic_.Atomic__and8.and8(_ptr, _val);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function or8(_ptr:stdgo.Pointer<std.UInt>, _val:std.UInt):Void {
        final _val = (_val : stdgo.GoUInt8);
        _internal.runtime.internal.atomic_.Atomic__or8.or8(_ptr, _val);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function and(_ptr:stdgo.Pointer<std.UInt>, _val:std.UInt):Void {
        final _val = (_val : stdgo.GoUInt32);
        _internal.runtime.internal.atomic_.Atomic__and.and(_ptr, _val);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function or(_ptr:stdgo.Pointer<std.UInt>, _val:std.UInt):Void {
        final _val = (_val : stdgo.GoUInt32);
        _internal.runtime.internal.atomic_.Atomic__or.or(_ptr, _val);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function cas64(_ptr:stdgo.Pointer<haxe.UInt64>, _old:haxe.UInt64, _new:haxe.UInt64):Bool {
        final _old = (_old : stdgo.GoUInt64);
        final _new = (_new : stdgo.GoUInt64);
        return _internal.runtime.internal.atomic_.Atomic__cas64.cas64(_ptr, _old, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function store(_ptr:stdgo.Pointer<std.UInt>, _val:std.UInt):Void {
        final _val = (_val : stdgo.GoUInt32);
        _internal.runtime.internal.atomic_.Atomic__store.store(_ptr, _val);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function storeRel(_ptr:stdgo.Pointer<std.UInt>, _val:std.UInt):Void {
        final _val = (_val : stdgo.GoUInt32);
        _internal.runtime.internal.atomic_.Atomic__storeRel.storeRel(_ptr, _val);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function storeRel64(_ptr:stdgo.Pointer<haxe.UInt64>, _val:haxe.UInt64):Void {
        final _val = (_val : stdgo.GoUInt64);
        _internal.runtime.internal.atomic_.Atomic__storeRel64.storeRel64(_ptr, _val);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function storeReluintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void {
        final _val = (_val : stdgo.GoUIntptr);
        _internal.runtime.internal.atomic_.Atomic__storeReluintptr.storeReluintptr(_ptr, _val);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function store8(_ptr:stdgo.Pointer<std.UInt>, _val:std.UInt):Void {
        final _val = (_val : stdgo.GoUInt8);
        _internal.runtime.internal.atomic_.Atomic__store8.store8(_ptr, _val);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function store64(_ptr:stdgo.Pointer<haxe.UInt64>, _val:haxe.UInt64):Void {
        final _val = (_val : stdgo.GoUInt64);
        _internal.runtime.internal.atomic_.Atomic__store64.store64(_ptr, _val);
    }
    /**
        * StorepNoWB performs *ptr = val atomically and without a write
        * barrier.
        * 
        * NO go:noescape annotation; see atomic_pointer.go.
    **/
    static public inline function storepNoWB(_ptr:stdgo._internal.unsafe.Unsafe.UnsafePointer, _val:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        _internal.runtime.internal.atomic_.Atomic__storepNoWB.storepNoWB(_ptr, _val);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function casint32(_ptr:stdgo.Pointer<StdTypes.Int>, _old:StdTypes.Int, _new:StdTypes.Int):Bool {
        final _old = (_old : stdgo.GoInt32);
        final _new = (_new : stdgo.GoInt32);
        return _internal.runtime.internal.atomic_.Atomic__casint32.casint32(_ptr, _old, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function casint64(_ptr:stdgo.Pointer<haxe.Int64>, _old:haxe.Int64, _new:haxe.Int64):Bool {
        final _old = (_old : stdgo.GoInt64);
        final _new = (_new : stdgo.GoInt64);
        return _internal.runtime.internal.atomic_.Atomic__casint64.casint64(_ptr, _old, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function cas(_ptr:stdgo.Pointer<std.UInt>, _old:std.UInt, _new:std.UInt):Bool {
        final _old = (_old : stdgo.GoUInt32);
        final _new = (_new : stdgo.GoUInt32);
        return _internal.runtime.internal.atomic_.Atomic__cas.cas(_ptr, _old, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function casp1(_ptr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool {
        return _internal.runtime.internal.atomic_.Atomic__casp1.casp1(_ptr, _old, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function casuintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new:stdgo.GoUIntptr):Bool {
        final _old = (_old : stdgo.GoUIntptr);
        final _new = (_new : stdgo.GoUIntptr);
        return _internal.runtime.internal.atomic_.Atomic__casuintptr.casuintptr(_ptr, _old, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function casRel(_ptr:stdgo.Pointer<std.UInt>, _old:std.UInt, _new:std.UInt):Bool {
        final _old = (_old : stdgo.GoUInt32);
        final _new = (_new : stdgo.GoUInt32);
        return _internal.runtime.internal.atomic_.Atomic__casRel.casRel(_ptr, _old, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function storeint32(_ptr:stdgo.Pointer<StdTypes.Int>, _new:StdTypes.Int):Void {
        final _new = (_new : stdgo.GoInt32);
        _internal.runtime.internal.atomic_.Atomic__storeint32.storeint32(_ptr, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function storeint64(_ptr:stdgo.Pointer<haxe.Int64>, _new:haxe.Int64):Void {
        final _new = (_new : stdgo.GoInt64);
        _internal.runtime.internal.atomic_.Atomic__storeint64.storeint64(_ptr, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function storeuintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>, _new:stdgo.GoUIntptr):Void {
        final _new = (_new : stdgo.GoUIntptr);
        _internal.runtime.internal.atomic_.Atomic__storeuintptr.storeuintptr(_ptr, _new);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loaduintptr(_ptr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr {
        return _internal.runtime.internal.atomic_.Atomic__loaduintptr.loaduintptr(_ptr);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loaduint(_ptr:stdgo.Pointer<std.UInt>):std.UInt {
        return _internal.runtime.internal.atomic_.Atomic__loaduint.loaduint(_ptr);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loadint32(_ptr:stdgo.Pointer<StdTypes.Int>):StdTypes.Int {
        return _internal.runtime.internal.atomic_.Atomic__loadint32.loadint32(_ptr);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function loadint64(_ptr:stdgo.Pointer<haxe.Int64>):haxe.Int64 {
        return _internal.runtime.internal.atomic_.Atomic__loadint64.loadint64(_ptr);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xaddint32(_ptr:stdgo.Pointer<StdTypes.Int>, _delta:StdTypes.Int):StdTypes.Int {
        final _delta = (_delta : stdgo.GoInt32);
        return _internal.runtime.internal.atomic_.Atomic__xaddint32.xaddint32(_ptr, _delta);
    }
    /**
        * go:nosplit
        * go:noinline
    **/
    static public inline function xaddint64(_ptr:stdgo.Pointer<haxe.Int64>, _delta:haxe.Int64):haxe.Int64 {
        final _delta = (_delta : stdgo.GoInt64);
        return _internal.runtime.internal.atomic_.Atomic__xaddint64.xaddint64(_ptr, _delta);
    }
}

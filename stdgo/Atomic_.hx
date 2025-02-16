package stdgo;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Bool__static_extension) abstract Bool_(stdgo._internal.sync.atomic_.Atomic__bool_.Bool_) from stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ to stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ {
    public var __1(get, set) : T_noCopy;
    function get___1():T_noCopy return this.__1;
    function set___1(v:T_noCopy):T_noCopy {
        this.__1 = v;
        return v;
    }
    public var _v(get, set) : std.UInt;
    function get__v():std.UInt return this._v;
    function set__v(v:std.UInt):std.UInt {
        this._v = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?__1:T_noCopy, ?_v:std.UInt) this = new stdgo._internal.sync.atomic_.Atomic__bool_.Bool_(__1, (_v : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Pointer__static_extension) abstract Pointer_(stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_) from stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_ to stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_ {
    public var __4(get, set) : haxe.ds.Vector<Dynamic>;
    function get___4():haxe.ds.Vector<Dynamic> return haxe.ds.Vector.fromArrayCopy([for (i in this.__4) i]);
    function set___4(v:haxe.ds.Vector<Dynamic>):haxe.ds.Vector<Dynamic> {
        this.__4 = ([for (i in v) (i : stdgo.Ref<Dynamic>)] : stdgo.GoArray<stdgo.Ref<Dynamic>>);
        return v;
    }
    public var __5(get, set) : T_noCopy;
    function get___5():T_noCopy return this.__5;
    function set___5(v:T_noCopy):T_noCopy {
        this.__5 = v;
        return v;
    }
    public var _v(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__v():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._v;
    function set__v(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._v = v;
        return v;
    }
    public function new(?__4:haxe.ds.Vector<Dynamic>, ?__5:T_noCopy, ?_v:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_(([for (i in __4) (i : stdgo.Ref<Dynamic>)] : stdgo.GoArray<stdgo.Ref<Dynamic>>), __5, _v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Int32_static_extension) abstract Int32(stdgo._internal.sync.atomic_.Atomic__int32.Int32) from stdgo._internal.sync.atomic_.Atomic__int32.Int32 to stdgo._internal.sync.atomic_.Atomic__int32.Int32 {
    public var __7(get, set) : T_noCopy;
    function get___7():T_noCopy return this.__7;
    function set___7(v:T_noCopy):T_noCopy {
        this.__7 = v;
        return v;
    }
    public var _v(get, set) : StdTypes.Int;
    function get__v():StdTypes.Int return this._v;
    function set__v(v:StdTypes.Int):StdTypes.Int {
        this._v = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?__7:T_noCopy, ?_v:StdTypes.Int) this = new stdgo._internal.sync.atomic_.Atomic__int32.Int32(__7, (_v : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Int64__static_extension) abstract Int64_(stdgo._internal.sync.atomic_.Atomic__int64_.Int64_) from stdgo._internal.sync.atomic_.Atomic__int64_.Int64_ to stdgo._internal.sync.atomic_.Atomic__int64_.Int64_ {
    public var __10(get, set) : T_noCopy;
    function get___10():T_noCopy return this.__10;
    function set___10(v:T_noCopy):T_noCopy {
        this.__10 = v;
        return v;
    }
    public var __11(get, set) : T_align64;
    function get___11():T_align64 return this.__11;
    function set___11(v:T_align64):T_align64 {
        this.__11 = v;
        return v;
    }
    public var _v(get, set) : haxe.Int64;
    function get__v():haxe.Int64 return this._v;
    function set__v(v:haxe.Int64):haxe.Int64 {
        this._v = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?__10:T_noCopy, ?__11:T_align64, ?_v:haxe.Int64) this = new stdgo._internal.sync.atomic_.Atomic__int64_.Int64_(__10, __11, (_v : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Uint32_static_extension) abstract Uint32(stdgo._internal.sync.atomic_.Atomic__uint32.Uint32) from stdgo._internal.sync.atomic_.Atomic__uint32.Uint32 to stdgo._internal.sync.atomic_.Atomic__uint32.Uint32 {
    public var __12(get, set) : T_noCopy;
    function get___12():T_noCopy return this.__12;
    function set___12(v:T_noCopy):T_noCopy {
        this.__12 = v;
        return v;
    }
    public var _v(get, set) : std.UInt;
    function get__v():std.UInt return this._v;
    function set__v(v:std.UInt):std.UInt {
        this._v = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?__12:T_noCopy, ?_v:std.UInt) this = new stdgo._internal.sync.atomic_.Atomic__uint32.Uint32(__12, (_v : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Uint64_static_extension) abstract Uint64(stdgo._internal.sync.atomic_.Atomic__uint64.Uint64) from stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 to stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 {
    public var __15(get, set) : T_noCopy;
    function get___15():T_noCopy return this.__15;
    function set___15(v:T_noCopy):T_noCopy {
        this.__15 = v;
        return v;
    }
    public var __16(get, set) : T_align64;
    function get___16():T_align64 return this.__16;
    function set___16(v:T_align64):T_align64 {
        this.__16 = v;
        return v;
    }
    public var _v(get, set) : haxe.UInt64;
    function get__v():haxe.UInt64 return this._v;
    function set__v(v:haxe.UInt64):haxe.UInt64 {
        this._v = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?__15:T_noCopy, ?__16:T_align64, ?_v:haxe.UInt64) this = new stdgo._internal.sync.atomic_.Atomic__uint64.Uint64(__15, __16, (_v : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Uintptr_static_extension) abstract Uintptr(stdgo._internal.sync.atomic_.Atomic__uintptr.Uintptr) from stdgo._internal.sync.atomic_.Atomic__uintptr.Uintptr to stdgo._internal.sync.atomic_.Atomic__uintptr.Uintptr {
    public var __18(get, set) : T_noCopy;
    function get___18():T_noCopy return this.__18;
    function set___18(v:T_noCopy):T_noCopy {
        this.__18 = v;
        return v;
    }
    public var _v(get, set) : stdgo.GoUIntptr;
    function get__v():stdgo.GoUIntptr return this._v;
    function set__v(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._v = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?__18:T_noCopy, ?_v:stdgo.GoUIntptr) this = new stdgo._internal.sync.atomic_.Atomic__uintptr.Uintptr(__18, (_v : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.T_noCopy_static_extension) @:dox(hide) abstract T_noCopy(stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy) from stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy to stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy {
    public function new() this = new stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.T_align64_static_extension) @:dox(hide) abstract T_align64(stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64) from stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64 to stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64 {
    public function new() this = new stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.Value_static_extension) abstract Value(stdgo._internal.sync.atomic_.Atomic__value.Value) from stdgo._internal.sync.atomic_.Atomic__value.Value to stdgo._internal.sync.atomic_.Atomic__value.Value {
    public var _v(get, set) : stdgo.AnyInterface;
    function get__v():stdgo.AnyInterface return this._v;
    function set__v(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._v = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_v:stdgo.AnyInterface) this = new stdgo._internal.sync.atomic_.Atomic__value.Value((_v : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.atomic_.Atomic_.T_efaceWords_static_extension) @:dox(hide) abstract T_efaceWords(stdgo._internal.sync.atomic_.Atomic__t_efacewords.T_efaceWords) from stdgo._internal.sync.atomic_.Atomic__t_efacewords.T_efaceWords to stdgo._internal.sync.atomic_.Atomic__t_efacewords.T_efaceWords {
    public var _typ(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__typ():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._typ;
    function set__typ(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._typ = v;
        return v;
    }
    public var _data(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__data():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._data;
    function set__data(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._data = v;
        return v;
    }
    public function new(?_typ:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_data:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.atomic_.Atomic__t_efacewords.T_efaceWords(_typ, _data);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Bool_Pointer = stdgo._internal.sync.atomic_.Atomic__bool_pointer.Bool_Pointer;
class Bool__static_extension {
    static public function compareAndSwap(_x:Bool_, _old:Bool, _new_:Bool):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__bool_.Bool_>);
        return stdgo._internal.sync.atomic_.Atomic__bool__static_extension.Bool__static_extension.compareAndSwap(_x, _old, _new_);
    }
    static public function swap(_x:Bool_, _new_:Bool):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__bool_.Bool_>);
        return stdgo._internal.sync.atomic_.Atomic__bool__static_extension.Bool__static_extension.swap(_x, _new_);
    }
    static public function store(_x:Bool_, _val:Bool):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__bool_.Bool_>);
        stdgo._internal.sync.atomic_.Atomic__bool__static_extension.Bool__static_extension.store(_x, _val);
    }
    static public function load(_x:Bool_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__bool_.Bool_>);
        return stdgo._internal.sync.atomic_.Atomic__bool__static_extension.Bool__static_extension.load(_x);
    }
}
typedef Pointer_Pointer = stdgo._internal.sync.atomic_.Atomic__pointer_pointer.Pointer_Pointer<T_>;
class Pointer__static_extension {
    static public function compareAndSwap(_x:Pointer_<Dynamic>, _old:Dynamic, _new_:Dynamic):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>>);
        final _old = (_old : stdgo.Ref<Dynamic>);
        final _new_ = (_new_ : stdgo.Ref<Dynamic>);
        return stdgo._internal.sync.atomic_.Atomic__pointer__static_extension.Pointer__static_extension.compareAndSwap(_x, _old, _new_);
    }
    static public function swap(_x:Pointer_<Dynamic>, _new_:Dynamic):Dynamic {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>>);
        final _new_ = (_new_ : stdgo.Ref<Dynamic>);
        return stdgo._internal.sync.atomic_.Atomic__pointer__static_extension.Pointer__static_extension.swap(_x, _new_);
    }
    static public function store(_x:Pointer_<Dynamic>, _val:Dynamic):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>>);
        final _val = (_val : stdgo.Ref<Dynamic>);
        stdgo._internal.sync.atomic_.Atomic__pointer__static_extension.Pointer__static_extension.store(_x, _val);
    }
    static public function load(_x:Pointer_<Dynamic>):Dynamic {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<Dynamic>>);
        return stdgo._internal.sync.atomic_.Atomic__pointer__static_extension.Pointer__static_extension.load(_x);
    }
}
typedef Int32Pointer = stdgo._internal.sync.atomic_.Atomic__int32pointer.Int32Pointer;
class Int32_static_extension {
    static public function add(_x:Int32, _delta:StdTypes.Int):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>);
        final _delta = (_delta : stdgo.GoInt32);
        return stdgo._internal.sync.atomic_.Atomic__int32_static_extension.Int32_static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Int32, _old:StdTypes.Int, _new_:StdTypes.Int):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>);
        final _old = (_old : stdgo.GoInt32);
        final _new_ = (_new_ : stdgo.GoInt32);
        return stdgo._internal.sync.atomic_.Atomic__int32_static_extension.Int32_static_extension.compareAndSwap(_x, _old, _new_);
    }
    static public function swap(_x:Int32, _new_:StdTypes.Int):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>);
        final _new_ = (_new_ : stdgo.GoInt32);
        return stdgo._internal.sync.atomic_.Atomic__int32_static_extension.Int32_static_extension.swap(_x, _new_);
    }
    static public function store(_x:Int32, _val:StdTypes.Int):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>);
        final _val = (_val : stdgo.GoInt32);
        stdgo._internal.sync.atomic_.Atomic__int32_static_extension.Int32_static_extension.store(_x, _val);
    }
    static public function load(_x:Int32):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>);
        return stdgo._internal.sync.atomic_.Atomic__int32_static_extension.Int32_static_extension.load(_x);
    }
}
typedef Int64_Pointer = stdgo._internal.sync.atomic_.Atomic__int64_pointer.Int64_Pointer;
class Int64__static_extension {
    static public function add(_x:Int64_, _delta:haxe.Int64):haxe.Int64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int64_.Int64_>);
        final _delta = (_delta : stdgo.GoInt64);
        return stdgo._internal.sync.atomic_.Atomic__int64__static_extension.Int64__static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Int64_, _old:haxe.Int64, _new_:haxe.Int64):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int64_.Int64_>);
        final _old = (_old : stdgo.GoInt64);
        final _new_ = (_new_ : stdgo.GoInt64);
        return stdgo._internal.sync.atomic_.Atomic__int64__static_extension.Int64__static_extension.compareAndSwap(_x, _old, _new_);
    }
    static public function swap(_x:Int64_, _new_:haxe.Int64):haxe.Int64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int64_.Int64_>);
        final _new_ = (_new_ : stdgo.GoInt64);
        return stdgo._internal.sync.atomic_.Atomic__int64__static_extension.Int64__static_extension.swap(_x, _new_);
    }
    static public function store(_x:Int64_, _val:haxe.Int64):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int64_.Int64_>);
        final _val = (_val : stdgo.GoInt64);
        stdgo._internal.sync.atomic_.Atomic__int64__static_extension.Int64__static_extension.store(_x, _val);
    }
    static public function load(_x:Int64_):haxe.Int64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int64_.Int64_>);
        return stdgo._internal.sync.atomic_.Atomic__int64__static_extension.Int64__static_extension.load(_x);
    }
}
typedef Uint32Pointer = stdgo._internal.sync.atomic_.Atomic__uint32pointer.Uint32Pointer;
class Uint32_static_extension {
    static public function add(_x:Uint32, _delta:std.UInt):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>);
        final _delta = (_delta : stdgo.GoUInt32);
        return stdgo._internal.sync.atomic_.Atomic__uint32_static_extension.Uint32_static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Uint32, _old:std.UInt, _new_:std.UInt):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>);
        final _old = (_old : stdgo.GoUInt32);
        final _new_ = (_new_ : stdgo.GoUInt32);
        return stdgo._internal.sync.atomic_.Atomic__uint32_static_extension.Uint32_static_extension.compareAndSwap(_x, _old, _new_);
    }
    static public function swap(_x:Uint32, _new_:std.UInt):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>);
        final _new_ = (_new_ : stdgo.GoUInt32);
        return stdgo._internal.sync.atomic_.Atomic__uint32_static_extension.Uint32_static_extension.swap(_x, _new_);
    }
    static public function store(_x:Uint32, _val:std.UInt):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>);
        final _val = (_val : stdgo.GoUInt32);
        stdgo._internal.sync.atomic_.Atomic__uint32_static_extension.Uint32_static_extension.store(_x, _val);
    }
    static public function load(_x:Uint32):std.UInt {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>);
        return stdgo._internal.sync.atomic_.Atomic__uint32_static_extension.Uint32_static_extension.load(_x);
    }
}
typedef Uint64Pointer = stdgo._internal.sync.atomic_.Atomic__uint64pointer.Uint64Pointer;
class Uint64_static_extension {
    static public function add(_x:Uint64, _delta:haxe.UInt64):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64>);
        final _delta = (_delta : stdgo.GoUInt64);
        return stdgo._internal.sync.atomic_.Atomic__uint64_static_extension.Uint64_static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Uint64, _old:haxe.UInt64, _new_:haxe.UInt64):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64>);
        final _old = (_old : stdgo.GoUInt64);
        final _new_ = (_new_ : stdgo.GoUInt64);
        return stdgo._internal.sync.atomic_.Atomic__uint64_static_extension.Uint64_static_extension.compareAndSwap(_x, _old, _new_);
    }
    static public function swap(_x:Uint64, _new_:haxe.UInt64):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64>);
        final _new_ = (_new_ : stdgo.GoUInt64);
        return stdgo._internal.sync.atomic_.Atomic__uint64_static_extension.Uint64_static_extension.swap(_x, _new_);
    }
    static public function store(_x:Uint64, _val:haxe.UInt64):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64>);
        final _val = (_val : stdgo.GoUInt64);
        stdgo._internal.sync.atomic_.Atomic__uint64_static_extension.Uint64_static_extension.store(_x, _val);
    }
    static public function load(_x:Uint64):haxe.UInt64 {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64>);
        return stdgo._internal.sync.atomic_.Atomic__uint64_static_extension.Uint64_static_extension.load(_x);
    }
}
typedef UintptrPointer = stdgo._internal.sync.atomic_.Atomic__uintptrpointer.UintptrPointer;
class Uintptr_static_extension {
    static public function add(_x:Uintptr, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uintptr.Uintptr>);
        final _delta = (_delta : stdgo.GoUIntptr);
        return stdgo._internal.sync.atomic_.Atomic__uintptr_static_extension.Uintptr_static_extension.add(_x, _delta);
    }
    static public function compareAndSwap(_x:Uintptr, _old:stdgo.GoUIntptr, _new_:stdgo.GoUIntptr):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uintptr.Uintptr>);
        final _old = (_old : stdgo.GoUIntptr);
        final _new_ = (_new_ : stdgo.GoUIntptr);
        return stdgo._internal.sync.atomic_.Atomic__uintptr_static_extension.Uintptr_static_extension.compareAndSwap(_x, _old, _new_);
    }
    static public function swap(_x:Uintptr, _new_:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uintptr.Uintptr>);
        final _new_ = (_new_ : stdgo.GoUIntptr);
        return stdgo._internal.sync.atomic_.Atomic__uintptr_static_extension.Uintptr_static_extension.swap(_x, _new_);
    }
    static public function store(_x:Uintptr, _val:stdgo.GoUIntptr):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uintptr.Uintptr>);
        final _val = (_val : stdgo.GoUIntptr);
        stdgo._internal.sync.atomic_.Atomic__uintptr_static_extension.Uintptr_static_extension.store(_x, _val);
    }
    static public function load(_x:Uintptr):stdgo.GoUIntptr {
        final _x = (_x : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uintptr.Uintptr>);
        return stdgo._internal.sync.atomic_.Atomic__uintptr_static_extension.Uintptr_static_extension.load(_x);
    }
}
@:dox(hide) typedef T_noCopyPointer = stdgo._internal.sync.atomic_.Atomic__t_nocopypointer.T_noCopyPointer;
@:dox(hide) class T_noCopy_static_extension {
    static public function unlock(_:T_noCopy):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy>);
        stdgo._internal.sync.atomic_.Atomic__t_nocopy_static_extension.T_noCopy_static_extension.unlock(_);
    }
    static public function lock(_:T_noCopy):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy>);
        stdgo._internal.sync.atomic_.Atomic__t_nocopy_static_extension.T_noCopy_static_extension.lock(_);
    }
}
@:dox(hide) typedef T_align64Pointer = stdgo._internal.sync.atomic_.Atomic__t_align64pointer.T_align64Pointer;
@:dox(hide) class T_align64_static_extension {

}
typedef ValuePointer = stdgo._internal.sync.atomic_.Atomic__valuepointer.ValuePointer;
class Value_static_extension {
    static public function compareAndSwap(_v:Value, _old:stdgo.AnyInterface, _new_:stdgo.AnyInterface):Bool {
        final _v = (_v : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value>);
        final _old = (_old : stdgo.AnyInterface);
        final _new_ = (_new_ : stdgo.AnyInterface);
        return stdgo._internal.sync.atomic_.Atomic__value_static_extension.Value_static_extension.compareAndSwap(_v, _old, _new_);
    }
    static public function swap(_v:Value, _new_:stdgo.AnyInterface):stdgo.AnyInterface {
        final _v = (_v : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value>);
        final _new_ = (_new_ : stdgo.AnyInterface);
        return stdgo._internal.sync.atomic_.Atomic__value_static_extension.Value_static_extension.swap(_v, _new_);
    }
    static public function store(_v:Value, _val:stdgo.AnyInterface):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value>);
        final _val = (_val : stdgo.AnyInterface);
        stdgo._internal.sync.atomic_.Atomic__value_static_extension.Value_static_extension.store(_v, _val);
    }
    static public function load(_v:Value):stdgo.AnyInterface {
        final _v = (_v : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value>);
        return stdgo._internal.sync.atomic_.Atomic__value_static_extension.Value_static_extension.load(_v);
    }
}
@:dox(hide) typedef T_efaceWordsPointer = stdgo._internal.sync.atomic_.Atomic__t_efacewordspointer.T_efaceWordsPointer;
@:dox(hide) class T_efaceWords_static_extension {

}
/**
    * Package atomic provides low-level atomic memory primitives
    * useful for implementing synchronization algorithms.
    * 
    * These functions require great care to be used correctly.
    * Except for special, low-level applications, synchronization is better
    * done with channels or the facilities of the [sync] package.
    * Share memory by communicating;
    * don't communicate by sharing memory.
    * 
    * The swap operation, implemented by the SwapT functions, is the atomic
    * equivalent of:
    * 
    * 	old = *addr
    * 	*addr = new
    * 	return old
    * 
    * The compare-and-swap operation, implemented by the CompareAndSwapT
    * functions, is the atomic equivalent of:
    * 
    * 	if *addr == old {
    * 		*addr = new
    * 		return true
    * 	}
    * 	return false
    * 
    * The add operation, implemented by the AddT functions, is the atomic
    * equivalent of:
    * 
    * 	*addr += delta
    * 	return *addr
    * 
    * The load and store operations, implemented by the LoadT and StoreT
    * functions, are the atomic equivalents of "return *addr" and
    * "*addr = val".
    * 
    * In the terminology of the Go memory model, if the effect of
    * an atomic operation A is observed by atomic operation B,
    * then A “synchronizes before” B.
    * Additionally, all the atomic operations executed in a program
    * behave as though executed in some sequentially consistent order.
    * This definition provides the same semantics as
    * C++'s sequentially consistent atomics and Java's volatile variables.
**/
class Atomic_ {
    /**
        * SwapInt32 atomically stores new into *addr and returns the previous *addr value.
        * Consider using the more ergonomic and less error-prone [Int32.Swap] instead.
    **/
    static public inline function swapInt32(_addr:stdgo.Pointer<StdTypes.Int>, _new_:StdTypes.Int):StdTypes.Int {
        final _new_ = (_new_ : stdgo.GoInt32);
        return stdgo._internal.sync.atomic_.Atomic__swapint32.swapInt32(_addr, _new_);
    }
    /**
        * SwapInt64 atomically stores new into *addr and returns the previous *addr value.
        * Consider using the more ergonomic and less error-prone [Int64.Swap] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function swapInt64(_addr:stdgo.Pointer<haxe.Int64>, _new_:haxe.Int64):haxe.Int64 {
        final _new_ = (_new_ : stdgo.GoInt64);
        return stdgo._internal.sync.atomic_.Atomic__swapint64.swapInt64(_addr, _new_);
    }
    /**
        * SwapUint32 atomically stores new into *addr and returns the previous *addr value.
        * Consider using the more ergonomic and less error-prone [Uint32.Swap] instead.
    **/
    static public inline function swapUint32(_addr:stdgo.Pointer<std.UInt>, _new_:std.UInt):std.UInt {
        final _new_ = (_new_ : stdgo.GoUInt32);
        return stdgo._internal.sync.atomic_.Atomic__swapuint32.swapUint32(_addr, _new_);
    }
    /**
        * SwapUint64 atomically stores new into *addr and returns the previous *addr value.
        * Consider using the more ergonomic and less error-prone [Uint64.Swap] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function swapUint64(_addr:stdgo.Pointer<haxe.UInt64>, _new_:haxe.UInt64):haxe.UInt64 {
        final _new_ = (_new_ : stdgo.GoUInt64);
        return stdgo._internal.sync.atomic_.Atomic__swapuint64.swapUint64(_addr, _new_);
    }
    /**
        * SwapUintptr atomically stores new into *addr and returns the previous *addr value.
        * Consider using the more ergonomic and less error-prone [Uintptr.Swap] instead.
    **/
    static public inline function swapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _new_:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _new_ = (_new_ : stdgo.GoUIntptr);
        return stdgo._internal.sync.atomic_.Atomic__swapuintptr.swapUintptr(_addr, _new_);
    }
    /**
        * SwapPointer atomically stores new into *addr and returns the previous *addr value.
        * Consider using the more ergonomic and less error-prone [Pointer.Swap] instead.
    **/
    static public inline function swapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _new_:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.sync.atomic_.Atomic__swappointer.swapPointer(_addr, _new_);
    }
    /**
        * CompareAndSwapInt32 executes the compare-and-swap operation for an int32 value.
        * Consider using the more ergonomic and less error-prone [Int32.CompareAndSwap] instead.
    **/
    static public inline function compareAndSwapInt32(_addr:stdgo.Pointer<StdTypes.Int>, _old:StdTypes.Int, _new_:StdTypes.Int):Bool {
        final _old = (_old : stdgo.GoInt32);
        final _new_ = (_new_ : stdgo.GoInt32);
        return stdgo._internal.sync.atomic_.Atomic__compareandswapint32.compareAndSwapInt32(_addr, _old, _new_);
    }
    /**
        * CompareAndSwapInt64 executes the compare-and-swap operation for an int64 value.
        * Consider using the more ergonomic and less error-prone [Int64.CompareAndSwap] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function compareAndSwapInt64(_addr:stdgo.Pointer<haxe.Int64>, _old:haxe.Int64, _new_:haxe.Int64):Bool {
        final _old = (_old : stdgo.GoInt64);
        final _new_ = (_new_ : stdgo.GoInt64);
        return stdgo._internal.sync.atomic_.Atomic__compareandswapint64.compareAndSwapInt64(_addr, _old, _new_);
    }
    /**
        * CompareAndSwapUint32 executes the compare-and-swap operation for a uint32 value.
        * Consider using the more ergonomic and less error-prone [Uint32.CompareAndSwap] instead.
    **/
    static public inline function compareAndSwapUint32(_addr:stdgo.Pointer<std.UInt>, _old:std.UInt, _new_:std.UInt):Bool {
        final _old = (_old : stdgo.GoUInt32);
        final _new_ = (_new_ : stdgo.GoUInt32);
        return stdgo._internal.sync.atomic_.Atomic__compareandswapuint32.compareAndSwapUint32(_addr, _old, _new_);
    }
    /**
        * CompareAndSwapUint64 executes the compare-and-swap operation for a uint64 value.
        * Consider using the more ergonomic and less error-prone [Uint64.CompareAndSwap] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function compareAndSwapUint64(_addr:stdgo.Pointer<haxe.UInt64>, _old:haxe.UInt64, _new_:haxe.UInt64):Bool {
        final _old = (_old : stdgo.GoUInt64);
        final _new_ = (_new_ : stdgo.GoUInt64);
        return stdgo._internal.sync.atomic_.Atomic__compareandswapuint64.compareAndSwapUint64(_addr, _old, _new_);
    }
    /**
        * CompareAndSwapUintptr executes the compare-and-swap operation for a uintptr value.
        * Consider using the more ergonomic and less error-prone [Uintptr.CompareAndSwap] instead.
    **/
    static public inline function compareAndSwapUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _old:stdgo.GoUIntptr, _new_:stdgo.GoUIntptr):Bool {
        final _old = (_old : stdgo.GoUIntptr);
        final _new_ = (_new_ : stdgo.GoUIntptr);
        return stdgo._internal.sync.atomic_.Atomic__compareandswapuintptr.compareAndSwapUintptr(_addr, _old, _new_);
    }
    /**
        * CompareAndSwapPointer executes the compare-and-swap operation for a unsafe.Pointer value.
        * Consider using the more ergonomic and less error-prone [Pointer.CompareAndSwap] instead.
    **/
    static public inline function compareAndSwapPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new_:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool {
        return stdgo._internal.sync.atomic_.Atomic__compareandswappointer.compareAndSwapPointer(_addr, _old, _new_);
    }
    /**
        * AddInt32 atomically adds delta to *addr and returns the new value.
        * Consider using the more ergonomic and less error-prone [Int32.Add] instead.
    **/
    static public inline function addInt32(_addr:stdgo.Pointer<StdTypes.Int>, _delta:StdTypes.Int):StdTypes.Int {
        final _delta = (_delta : stdgo.GoInt32);
        return stdgo._internal.sync.atomic_.Atomic__addint32.addInt32(_addr, _delta);
    }
    /**
        * AddUint32 atomically adds delta to *addr and returns the new value.
        * To subtract a signed positive constant value c from x, do AddUint32(&x, ^uint32(c-1)).
        * In particular, to decrement x, do AddUint32(&x, ^uint32(0)).
        * Consider using the more ergonomic and less error-prone [Uint32.Add] instead.
    **/
    static public inline function addUint32(_addr:stdgo.Pointer<std.UInt>, _delta:std.UInt):std.UInt {
        final _delta = (_delta : stdgo.GoUInt32);
        return stdgo._internal.sync.atomic_.Atomic__adduint32.addUint32(_addr, _delta);
    }
    /**
        * AddInt64 atomically adds delta to *addr and returns the new value.
        * Consider using the more ergonomic and less error-prone [Int64.Add] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function addInt64(_addr:stdgo.Pointer<haxe.Int64>, _delta:haxe.Int64):haxe.Int64 {
        final _delta = (_delta : stdgo.GoInt64);
        return stdgo._internal.sync.atomic_.Atomic__addint64.addInt64(_addr, _delta);
    }
    /**
        * AddUint64 atomically adds delta to *addr and returns the new value.
        * To subtract a signed positive constant value c from x, do AddUint64(&x, ^uint64(c-1)).
        * In particular, to decrement x, do AddUint64(&x, ^uint64(0)).
        * Consider using the more ergonomic and less error-prone [Uint64.Add] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function addUint64(_addr:stdgo.Pointer<haxe.UInt64>, _delta:haxe.UInt64):haxe.UInt64 {
        final _delta = (_delta : stdgo.GoUInt64);
        return stdgo._internal.sync.atomic_.Atomic__adduint64.addUint64(_addr, _delta);
    }
    /**
        * AddUintptr atomically adds delta to *addr and returns the new value.
        * Consider using the more ergonomic and less error-prone [Uintptr.Add] instead.
    **/
    static public inline function addUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _delta:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _delta = (_delta : stdgo.GoUIntptr);
        return stdgo._internal.sync.atomic_.Atomic__adduintptr.addUintptr(_addr, _delta);
    }
    /**
        * LoadInt32 atomically loads *addr.
        * Consider using the more ergonomic and less error-prone [Int32.Load] instead.
    **/
    static public inline function loadInt32(_addr:stdgo.Pointer<StdTypes.Int>):StdTypes.Int {
        return stdgo._internal.sync.atomic_.Atomic__loadint32.loadInt32(_addr);
    }
    /**
        * LoadInt64 atomically loads *addr.
        * Consider using the more ergonomic and less error-prone [Int64.Load] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function loadInt64(_addr:stdgo.Pointer<haxe.Int64>):haxe.Int64 {
        return stdgo._internal.sync.atomic_.Atomic__loadint64.loadInt64(_addr);
    }
    /**
        * LoadUint32 atomically loads *addr.
        * Consider using the more ergonomic and less error-prone [Uint32.Load] instead.
    **/
    static public inline function loadUint32(_addr:stdgo.Pointer<std.UInt>):std.UInt {
        return stdgo._internal.sync.atomic_.Atomic__loaduint32.loadUint32(_addr);
    }
    /**
        * LoadUint64 atomically loads *addr.
        * Consider using the more ergonomic and less error-prone [Uint64.Load] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function loadUint64(_addr:stdgo.Pointer<haxe.UInt64>):haxe.UInt64 {
        return stdgo._internal.sync.atomic_.Atomic__loaduint64.loadUint64(_addr);
    }
    /**
        * LoadUintptr atomically loads *addr.
        * Consider using the more ergonomic and less error-prone [Uintptr.Load] instead.
    **/
    static public inline function loadUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.GoUIntptr {
        return stdgo._internal.sync.atomic_.Atomic__loaduintptr.loadUintptr(_addr);
    }
    /**
        * LoadPointer atomically loads *addr.
        * Consider using the more ergonomic and less error-prone [Pointer.Load] instead.
    **/
    static public inline function loadPointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        return stdgo._internal.sync.atomic_.Atomic__loadpointer.loadPointer(_addr);
    }
    /**
        * StoreInt32 atomically stores val into *addr.
        * Consider using the more ergonomic and less error-prone [Int32.Store] instead.
    **/
    static public inline function storeInt32(_addr:stdgo.Pointer<StdTypes.Int>, _val:StdTypes.Int):Void {
        final _val = (_val : stdgo.GoInt32);
        stdgo._internal.sync.atomic_.Atomic__storeint32.storeInt32(_addr, _val);
    }
    /**
        * StoreInt64 atomically stores val into *addr.
        * Consider using the more ergonomic and less error-prone [Int64.Store] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function storeInt64(_addr:stdgo.Pointer<haxe.Int64>, _val:haxe.Int64):Void {
        final _val = (_val : stdgo.GoInt64);
        stdgo._internal.sync.atomic_.Atomic__storeint64.storeInt64(_addr, _val);
    }
    /**
        * StoreUint32 atomically stores val into *addr.
        * Consider using the more ergonomic and less error-prone [Uint32.Store] instead.
    **/
    static public inline function storeUint32(_addr:stdgo.Pointer<std.UInt>, _val:std.UInt):Void {
        final _val = (_val : stdgo.GoUInt32);
        stdgo._internal.sync.atomic_.Atomic__storeuint32.storeUint32(_addr, _val);
    }
    /**
        * StoreUint64 atomically stores val into *addr.
        * Consider using the more ergonomic and less error-prone [Uint64.Store] instead
        * (particularly if you target 32-bit platforms; see the bugs section).
    **/
    static public inline function storeUint64(_addr:stdgo.Pointer<haxe.UInt64>, _val:haxe.UInt64):Void {
        final _val = (_val : stdgo.GoUInt64);
        stdgo._internal.sync.atomic_.Atomic__storeuint64.storeUint64(_addr, _val);
    }
    /**
        * StoreUintptr atomically stores val into *addr.
        * Consider using the more ergonomic and less error-prone [Uintptr.Store] instead.
    **/
    static public inline function storeUintptr(_addr:stdgo.Pointer<stdgo.GoUIntptr>, _val:stdgo.GoUIntptr):Void {
        final _val = (_val : stdgo.GoUIntptr);
        stdgo._internal.sync.atomic_.Atomic__storeuintptr.storeUintptr(_addr, _val);
    }
    /**
        * StorePointer atomically stores val into *addr.
        * Consider using the more ergonomic and less error-prone [Pointer.Store] instead.
    **/
    static public inline function storePointer(_addr:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _val:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.sync.atomic_.Atomic__storepointer.storePointer(_addr, _val);
    }
}

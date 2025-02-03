package stdgo.syscall.js;
@:structInit @:using(stdgo.syscall.js.Js.Value_static_extension) abstract Value(stdgo._internal.syscall.js.Js_Value.Value) from stdgo._internal.syscall.js.Js_Value.Value to stdgo._internal.syscall.js.Js_Value.Value {
    public var __32(get, set) : haxe.ds.Vector<() -> Void>;
    function get___32():haxe.ds.Vector<() -> Void> return haxe.ds.Vector.fromArrayCopy([for (i in this.__32) () -> i()]);
    function set___32(v:haxe.ds.Vector<() -> Void>):haxe.ds.Vector<() -> Void> {
        this.__32 = ([for (i in v) i] : stdgo.GoArray<() -> Void>);
        return v;
    }
    public var _ref(get, set) : T_ref;
    function get__ref():T_ref return this._ref;
    function set__ref(v:T_ref):T_ref {
        this._ref = v;
        return v;
    }
    public var _gcPtr(get, set) : stdgo.Pointer<T_ref>;
    function get__gcPtr():stdgo.Pointer<T_ref> return this._gcPtr;
    function set__gcPtr(v:stdgo.Pointer<T_ref>):stdgo.Pointer<T_ref> {
        this._gcPtr = v;
        return v;
    }
    public function new(?__32:haxe.ds.Vector<() -> Void>, ?_ref:T_ref, ?_gcPtr:stdgo.Pointer<T_ref>, ?value) this = new stdgo._internal.syscall.js.Js_Value.Value(([for (i in __32) i] : stdgo.GoArray<() -> Void>), _ref, _gcPtr, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

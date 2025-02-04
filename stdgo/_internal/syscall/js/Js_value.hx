package stdgo._internal.syscall.js;
@:structInit @:using(stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension) class Value {
    @:optional
    public var __32 : stdgo.GoArray<() -> Void> = new stdgo.GoArray<() -> Void>(0, 0);
    public var _ref : stdgo._internal.syscall.js.Js_t_ref.T_ref = ((0 : stdgo.GoUInt64) : stdgo._internal.syscall.js.Js_t_ref.T_ref);
    public var _gcPtr : stdgo.Pointer<stdgo._internal.syscall.js.Js_t_ref.T_ref> = (null : stdgo.Pointer<stdgo._internal.syscall.js.Js_t_ref.T_ref>);
    @:local
    var value = (null : Dynamic);
    public function new(?__32:stdgo.GoArray<() -> Void>, ?_ref:stdgo._internal.syscall.js.Js_t_ref.T_ref, ?_gcPtr:stdgo.Pointer<stdgo._internal.syscall.js.Js_t_ref.T_ref>, ?value) {
        if (__32 != null) this.__32 = __32;
        if (_ref != null) this._ref = _ref;
        if (_gcPtr != null) this._gcPtr = _gcPtr;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Value(__32, _ref, _gcPtr, value);
    }
}

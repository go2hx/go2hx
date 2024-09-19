package stdgo._internal.runtime;
class PIController_asInterface {
    @:keep
    public dynamic function next(_input:stdgo.GoFloat64, _setpoint:stdgo.GoFloat64, _period:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } return __self__.value.next(_input, _setpoint, _period);
    @:embedded
    public dynamic function _reset():Void __self__.value._reset();
    @:embedded
    public dynamic function _next(_input:stdgo.GoFloat64, _setpoint:stdgo.GoFloat64, _period:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } return __self__.value._next(_input, _setpoint, _period);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_PIController.PIController>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

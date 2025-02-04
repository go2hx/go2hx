package stdgo._internal.runtime;
class PIController_asInterface {
    @:keep
    @:tdfield
    public dynamic function next(_input:stdgo.GoFloat64, _setpoint:stdgo.GoFloat64, _period:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } return @:_0 __self__.value.next(_input, _setpoint, _period);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _reset():Void @:_0 __self__.value._reset();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _next(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64, _2:stdgo.GoFloat64):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } return @:_0 __self__.value._next(_0, _1, _2);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_picontrollerpointer.PIControllerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

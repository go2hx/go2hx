package stdgo._internal.os.signal;
class T_handler_asInterface {
    @:keep
    public dynamic function _clear(_sig:stdgo.GoInt):Void __self__.value._clear(_sig);
    @:keep
    public dynamic function _set(_sig:stdgo.GoInt):Void __self__.value._set(_sig);
    @:keep
    public dynamic function _want(_sig:stdgo.GoInt):Bool return __self__.value._want(_sig);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.os.signal.Signal_T_handler.T_handler>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
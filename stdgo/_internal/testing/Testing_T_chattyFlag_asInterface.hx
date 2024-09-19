package stdgo._internal.testing;
class T_chattyFlag_asInterface {
    @:keep
    public dynamic function _prefix():stdgo.GoString return __self__.value._prefix();
    @:keep
    public dynamic function get():stdgo.AnyInterface return __self__.value.get();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function set(_arg:stdgo.GoString):stdgo.Error return __self__.value.set(_arg);
    @:keep
    public dynamic function isBoolFlag():Bool return __self__.value.isBoolFlag();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.Testing_T_chattyFlag.T_chattyFlag>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

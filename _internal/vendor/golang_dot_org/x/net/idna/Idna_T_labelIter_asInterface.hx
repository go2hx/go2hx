package _internal.vendor.golang_dot_org.x.net.idna;
class T_labelIter_asInterface {
    @:keep
    public dynamic function _set(_s:stdgo.GoString):Void __self__.value._set(_s);
    @:keep
    public dynamic function _next():Void __self__.value._next();
    @:keep
    public dynamic function _label():stdgo.GoString return __self__.value._label();
    @:keep
    public dynamic function _result():stdgo.GoString return __self__.value._result();
    @:keep
    public dynamic function _done():Bool return __self__.value._done();
    @:keep
    public dynamic function _reset():Void __self__.value._reset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

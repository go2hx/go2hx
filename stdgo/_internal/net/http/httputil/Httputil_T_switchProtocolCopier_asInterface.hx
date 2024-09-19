package stdgo._internal.net.http.httputil;
class T_switchProtocolCopier_asInterface {
    @:keep
    public dynamic function _copyToBackend(_errc:stdgo.Chan<stdgo.Error>):Void __self__.value._copyToBackend(_errc);
    @:keep
    public dynamic function _copyFromBackend(_errc:stdgo.Chan<stdgo.Error>):Void __self__.value._copyFromBackend(_errc);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

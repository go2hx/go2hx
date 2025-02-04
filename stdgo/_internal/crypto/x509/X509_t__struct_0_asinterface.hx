package stdgo._internal.crypto.x509;
class T__struct_0_asInterface {
    @:embedded
    @:localembedfields
    public dynamic function _doSlow(_0:() -> Void):Void @:_0 __self__.value._doSlow(_0);
    @:embedded
    @:localembedfields
    public dynamic function do_(_0:() -> Void):Void @:_0 __self__.value.do_(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.x509.X509_t__struct_0pointer.T__struct_0Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

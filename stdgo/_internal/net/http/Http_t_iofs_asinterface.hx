package stdgo._internal.net.http;
class T_ioFS_asInterface {
    @:keep
    @:tdfield
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_file.File; var _1 : stdgo.Error; } return @:_0 __self__.value.open(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_iofspointer.T_ioFSPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

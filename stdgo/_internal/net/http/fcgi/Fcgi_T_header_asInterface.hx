package stdgo._internal.net.http.fcgi;
class T_header_asInterface {
    @:keep
    public dynamic function _init(_recType:stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType, _reqId:stdgo.GoUInt16, _contentLength:stdgo.GoInt):Void __self__.value._init(_recType, _reqId, _contentLength);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

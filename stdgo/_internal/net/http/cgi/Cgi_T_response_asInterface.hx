package stdgo._internal.net.http.cgi;
class T_response_asInterface {
    @:keep
    public dynamic function _writeCGIHeader(_p:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._writeCGIHeader(_p);
    @:keep
    public dynamic function writeHeader(_code:stdgo.GoInt):Void __self__.value.writeHeader(_code);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function header():stdgo._internal.net.http.Http_Header.Header return __self__.value.header();
    @:keep
    public dynamic function flush():Void __self__.value.flush();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.cgi.Cgi_T_response.T_response>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

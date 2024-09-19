package stdgo._internal.net.http;
class Response_asInterface {
    @:keep
    public dynamic function _isProtocolSwitch():Bool return __self__.value._isProtocolSwitch();
    @:keep
    public dynamic function _bodyIsWritable():Bool return __self__.value._bodyIsWritable();
    @:keep
    public dynamic function _closeBody():Void __self__.value._closeBody();
    @:keep
    public dynamic function write(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return __self__.value.write(_w);
    @:keep
    public dynamic function protoAtLeast(_major:stdgo.GoInt, _minor:stdgo.GoInt):Bool return __self__.value.protoAtLeast(_major, _minor);
    @:keep
    public dynamic function location():{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } return __self__.value.location();
    @:keep
    public dynamic function cookies():stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> return __self__.value.cookies();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_Response.Response>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package stdgo._internal.net.http;
class Response_asInterface {
    @:keep
    @:tdfield
    public dynamic function write(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.write(_w);
    @:keep
    @:tdfield
    public dynamic function protoAtLeast(_major:stdgo.GoInt, _minor:stdgo.GoInt):Bool return @:_0 __self__.value.protoAtLeast(_major, _minor);
    @:keep
    @:tdfield
    public dynamic function location():{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } return @:_0 __self__.value.location();
    @:keep
    @:tdfield
    public dynamic function cookies():stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> return @:_0 __self__.value.cookies();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_responsepointer.ResponsePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

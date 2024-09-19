package stdgo._internal.net.http;
class Client_asInterface {
    @:keep
    public dynamic function closeIdleConnections():Void __self__.value.closeIdleConnections();
    @:keep
    public dynamic function head(_url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value.head(_url);
    @:keep
    public dynamic function postForm(_url:stdgo.GoString, _data:stdgo._internal.net.url.Url_Values.Values):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value.postForm(_url, _data);
    @:keep
    public dynamic function post(_url:stdgo.GoString, _contentType:stdgo.GoString, _body:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value.post(_url, _contentType, _body);
    @:keep
    public dynamic function _makeHeadersCopier(_ireq:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void return __self__.value._makeHeadersCopier(_ireq);
    @:keep
    public dynamic function _do(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value._do(_req);
    @:keep
    public dynamic function do_(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value.do_(_req);
    @:keep
    public dynamic function _checkRedirect(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _via:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>):stdgo.Error return __self__.value._checkRedirect(_req, _via);
    @:keep
    public dynamic function get(_url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value.get(_url);
    @:keep
    public dynamic function _transport():stdgo._internal.net.http.Http_RoundTripper.RoundTripper return __self__.value._transport();
    @:keep
    public dynamic function _deadline():stdgo._internal.time.Time_Time.Time return __self__.value._deadline();
    @:keep
    public dynamic function _send(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _deadline:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } return __self__.value._send(_req, _deadline);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_Client.Client>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package stdgo._internal.net.http;
class T_http2clientConnReadLoop_asInterface {
    @:keep
    public dynamic function _processPushPromise(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>):stdgo.Error return __self__.value._processPushPromise(_f);
    @:keep
    public dynamic function _processPing(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>):stdgo.Error return __self__.value._processPing(_f);
    @:keep
    public dynamic function _processResetStream(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>):stdgo.Error return __self__.value._processResetStream(_f);
    @:keep
    public dynamic function _processWindowUpdate(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>):stdgo.Error return __self__.value._processWindowUpdate(_f);
    @:keep
    public dynamic function _processSettingsNoWrite(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>):stdgo.Error return __self__.value._processSettingsNoWrite(_f);
    @:keep
    public dynamic function _processSettings(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>):stdgo.Error return __self__.value._processSettings(_f);
    @:keep
    public dynamic function _processGoAway(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>):stdgo.Error return __self__.value._processGoAway(_f);
    @:keep
    public dynamic function _streamByID(_id:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream> return __self__.value._streamByID(_id);
    @:keep
    public dynamic function _endStreamError(_cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _err:stdgo.Error):Void __self__.value._endStreamError(_cs, _err);
    @:keep
    public dynamic function _endStream(_cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void __self__.value._endStream(_cs);
    @:keep
    public dynamic function _processData(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>):stdgo.Error return __self__.value._processData(_f);
    @:keep
    public dynamic function _processTrailers(_cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error return __self__.value._processTrailers(_cs, _f);
    @:keep
    public dynamic function _handleResponse(_cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value._handleResponse(_cs, _f);
    @:keep
    public dynamic function _processHeaders(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error return __self__.value._processHeaders(_f);
    @:keep
    public dynamic function _run():stdgo.Error return __self__.value._run();
    @:keep
    public dynamic function _cleanup():Void __self__.value._cleanup();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

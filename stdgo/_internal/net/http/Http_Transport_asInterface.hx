package stdgo._internal.net.http;
class Transport_asInterface {
    @:keep
    public dynamic function _dialConn(_ctx:stdgo._internal.context.Context_Context.Context, _cm:stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } return __self__.value._dialConn(_ctx, _cm);
    @:keep
    public dynamic function _decConnsPerHost(_key:stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey):Void __self__.value._decConnsPerHost(_key);
    @:keep
    public dynamic function _dialConnFor(_w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>):Void __self__.value._dialConnFor(_w);
    @:keep
    public dynamic function _queueForDial(_w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>):Void __self__.value._queueForDial(_w);
    @:keep
    public dynamic function _getConn(_treq:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>, _cm:stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>; var _1 : stdgo.Error; } return __self__.value._getConn(_treq, _cm);
    @:keep
    public dynamic function _customDialTLS(_ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return __self__.value._customDialTLS(_ctx, _network, _addr);
    @:keep
    public dynamic function _dial(_ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return __self__.value._dial(_ctx, _network, _addr);
    @:keep
    public dynamic function _replaceReqCanceler(_key:stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, _fn:stdgo.Error -> Void):Bool return __self__.value._replaceReqCanceler(_key, _fn);
    @:keep
    public dynamic function _setReqCanceler(_key:stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, _fn:stdgo.Error -> Void):Void __self__.value._setReqCanceler(_key, _fn);
    @:keep
    public dynamic function _removeIdleConnLocked(_pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Bool return __self__.value._removeIdleConnLocked(_pconn);
    @:keep
    public dynamic function _removeIdleConn(_pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Bool return __self__.value._removeIdleConn(_pconn);
    @:keep
    public dynamic function _queueForIdleConn(_w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>):Bool return __self__.value._queueForIdleConn(_w);
    @:keep
    public dynamic function _tryPutIdleConn(_pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):stdgo.Error return __self__.value._tryPutIdleConn(_pconn);
    @:keep
    public dynamic function _maxIdleConnsPerHost():stdgo.GoInt return __self__.value._maxIdleConnsPerHost();
    @:keep
    public dynamic function _putOrCloseIdleConn(_pconn:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void __self__.value._putOrCloseIdleConn(_pconn);
    @:keep
    public dynamic function _connectMethodForRequest(_treq:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>):{ var _0 : stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod; var _1 : stdgo.Error; } return __self__.value._connectMethodForRequest(_treq);
    @:keep
    public dynamic function _cancelRequest(_key:stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, _err:stdgo.Error):Bool return __self__.value._cancelRequest(_key, _err);
    @:keep
    public dynamic function cancelRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void __self__.value.cancelRequest(_req);
    @:keep
    public dynamic function closeIdleConnections():Void __self__.value.closeIdleConnections();
    @:keep
    public dynamic function registerProtocol(_scheme:stdgo.GoString, _rt:stdgo._internal.net.http.Http_RoundTripper.RoundTripper):Void __self__.value.registerProtocol(_scheme, _rt);
    @:keep
    public dynamic function _roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value._roundTrip(_req);
    @:keep
    public dynamic function _alternateRoundTripper(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo._internal.net.http.Http_RoundTripper.RoundTripper return __self__.value._alternateRoundTripper(_req);
    @:keep
    public dynamic function _useRegisteredProtocol(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool return __self__.value._useRegisteredProtocol(_req);
    @:keep
    public dynamic function _onceSetNextProtoDefaults():Void __self__.value._onceSetNextProtoDefaults();
    @:keep
    public dynamic function _hasCustomTLSDialer():Bool return __self__.value._hasCustomTLSDialer();
    @:keep
    public dynamic function clone():stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport> return __self__.value.clone();
    @:keep
    public dynamic function _readBufferSize():stdgo.GoInt return __self__.value._readBufferSize();
    @:keep
    public dynamic function _writeBufferSize():stdgo.GoInt return __self__.value._writeBufferSize();
    @:keep
    public dynamic function roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value.roundTrip(_req);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_Transport.Transport>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

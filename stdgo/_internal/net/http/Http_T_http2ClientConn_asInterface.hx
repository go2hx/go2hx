package stdgo._internal.net.http;
class T_http2ClientConn_asInterface {
    @:keep
    public dynamic function _vlogf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._vlogf(_format, ..._args);
    @:keep
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._logf(_format, ..._args);
    @:keep
    public dynamic function _writeStreamReset(_streamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode, _err:stdgo.Error):Void __self__.value._writeStreamReset(_streamID, _code, _err);
    @:keep
    public dynamic function ping(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value.ping(_ctx);
    @:keep
    public dynamic function _countReadFrameError(_err:stdgo.Error):Void __self__.value._countReadFrameError(_err);
    @:keep
    public dynamic function _readLoop():Void __self__.value._readLoop();
    @:keep
    public dynamic function _forgetStreamID(_id:stdgo.GoUInt32):Void __self__.value._forgetStreamID(_id);
    @:keep
    public dynamic function _addStreamLocked(_cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void __self__.value._addStreamLocked(_cs);
    @:keep
    public dynamic function _writeHeader(_name:stdgo.GoString, _value:stdgo.GoString):Void __self__.value._writeHeader(_name, _value);
    @:keep
    public dynamic function _encodeTrailers(_trailer:stdgo._internal.net.http.Http_Header.Header):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._encodeTrailers(_trailer);
    @:keep
    public dynamic function _encodeHeaders(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addGzipHeader:Bool, _trailers:stdgo.GoString, _contentLength:stdgo.GoInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._encodeHeaders(_req, _addGzipHeader, _trailers, _contentLength);
    @:keep
    public dynamic function _writeHeaders(_streamID:stdgo.GoUInt32, _endStream:Bool, _maxFrameSize:stdgo.GoInt, _hdrs:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value._writeHeaders(_streamID, _endStream, _maxFrameSize, _hdrs);
    @:keep
    public dynamic function _awaitOpenSlotForStreamLocked(_cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):stdgo.Error return __self__.value._awaitOpenSlotForStreamLocked(_cs);
    @:keep
    public dynamic function roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value.roundTrip(_req);
    @:keep
    public dynamic function _decrStreamReservationsLocked():Void __self__.value._decrStreamReservationsLocked();
    @:keep
    public dynamic function _decrStreamReservations():Void __self__.value._decrStreamReservations();
    @:keep
    public dynamic function _responseHeaderTimeout():stdgo._internal.time.Time_Duration.Duration return __self__.value._responseHeaderTimeout();
    @:keep
    public dynamic function _closeForLostPing():Void __self__.value._closeForLostPing();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function _closeForError(_err:stdgo.Error):Void __self__.value._closeForError(_err);
    @:keep
    public dynamic function _sendGoAway():stdgo.Error return __self__.value._sendGoAway();
    @:keep
    public dynamic function shutdown(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value.shutdown(_ctx);
    @:keep
    public dynamic function _isDoNotReuseAndIdle():Bool return __self__.value._isDoNotReuseAndIdle();
    @:keep
    public dynamic function _closeIfIdle():Void __self__.value._closeIfIdle();
    @:keep
    public dynamic function _forceCloseConn():Void __self__.value._forceCloseConn();
    @:keep
    public dynamic function _closeConn():Void __self__.value._closeConn();
    @:keep
    public dynamic function _onIdleTimeout():Void __self__.value._onIdleTimeout();
    @:keep
    public dynamic function _tooIdleLocked():Bool return __self__.value._tooIdleLocked();
    @:keep
    public dynamic function _canTakeNewRequestLocked():Bool return __self__.value._canTakeNewRequestLocked();
    @:keep
    public dynamic function _idleStateLocked():stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState return __self__.value._idleStateLocked();
    @:keep
    public dynamic function _idleState():stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState return __self__.value._idleState();
    @:keep
    public dynamic function state():stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState return __self__.value.state();
    @:keep
    public dynamic function reserveNewRequest():Bool return __self__.value.reserveNewRequest();
    @:keep
    public dynamic function canTakeNewRequest():Bool return __self__.value.canTakeNewRequest();
    @:keep
    public dynamic function _setGoAway(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>):Void __self__.value._setGoAway(_f);
    @:keep
    public dynamic function setDoNotReuse():Void __self__.value.setDoNotReuse();
    @:keep
    public dynamic function _healthCheck():Void __self__.value._healthCheck();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

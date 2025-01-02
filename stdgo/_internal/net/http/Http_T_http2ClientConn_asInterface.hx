package stdgo._internal.net.http;
class T_http2ClientConn_asInterface {
    @:keep
    @:tdfield
    public dynamic function _vlogf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._vlogf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._logf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _writeStreamReset(_streamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode, _err:stdgo.Error):Void @:_0 __self__.value._writeStreamReset(_streamID, _code, _err);
    @:keep
    @:tdfield
    public dynamic function ping(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return @:_0 __self__.value.ping(_ctx);
    @:keep
    @:tdfield
    public dynamic function _countReadFrameError(_err:stdgo.Error):Void @:_0 __self__.value._countReadFrameError(_err);
    @:keep
    @:tdfield
    public dynamic function _readLoop():Void @:_0 __self__.value._readLoop();
    @:keep
    @:tdfield
    public dynamic function _forgetStreamID(_id:stdgo.GoUInt32):Void @:_0 __self__.value._forgetStreamID(_id);
    @:keep
    @:tdfield
    public dynamic function _addStreamLocked(_cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):Void @:_0 __self__.value._addStreamLocked(_cs);
    @:keep
    @:tdfield
    public dynamic function _writeHeader(_name:stdgo.GoString, _value:stdgo.GoString):Void @:_0 __self__.value._writeHeader(_name, _value);
    @:keep
    @:tdfield
    public dynamic function _encodeTrailers(_trailer:stdgo._internal.net.http.Http_Header.Header):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._encodeTrailers(_trailer);
    @:keep
    @:tdfield
    public dynamic function _encodeHeaders(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addGzipHeader:Bool, _trailers:stdgo.GoString, _contentLength:stdgo.GoInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._encodeHeaders(_req, _addGzipHeader, _trailers, _contentLength);
    @:keep
    @:tdfield
    public dynamic function _writeHeaders(_streamID:stdgo.GoUInt32, _endStream:Bool, _maxFrameSize:stdgo.GoInt, _hdrs:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._writeHeaders(_streamID, _endStream, _maxFrameSize, _hdrs);
    @:keep
    @:tdfield
    public dynamic function _awaitOpenSlotForStreamLocked(_cs:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>):stdgo.Error return @:_0 __self__.value._awaitOpenSlotForStreamLocked(_cs);
    @:keep
    @:tdfield
    public dynamic function roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.roundTrip(_req);
    @:keep
    @:tdfield
    public dynamic function _decrStreamReservationsLocked():Void @:_0 __self__.value._decrStreamReservationsLocked();
    @:keep
    @:tdfield
    public dynamic function _decrStreamReservations():Void @:_0 __self__.value._decrStreamReservations();
    @:keep
    @:tdfield
    public dynamic function _responseHeaderTimeout():stdgo._internal.time.Time_Duration.Duration return @:_0 __self__.value._responseHeaderTimeout();
    @:keep
    @:tdfield
    public dynamic function _closeForLostPing():Void @:_0 __self__.value._closeForLostPing();
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function _closeForError(_err:stdgo.Error):Void @:_0 __self__.value._closeForError(_err);
    @:keep
    @:tdfield
    public dynamic function _sendGoAway():stdgo.Error return @:_0 __self__.value._sendGoAway();
    @:keep
    @:tdfield
    public dynamic function shutdown(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return @:_0 __self__.value.shutdown(_ctx);
    @:keep
    @:tdfield
    public dynamic function _isDoNotReuseAndIdle():Bool return @:_0 __self__.value._isDoNotReuseAndIdle();
    @:keep
    @:tdfield
    public dynamic function _closeIfIdle():Void @:_0 __self__.value._closeIfIdle();
    @:keep
    @:tdfield
    public dynamic function _forceCloseConn():Void @:_0 __self__.value._forceCloseConn();
    @:keep
    @:tdfield
    public dynamic function _closeConn():Void @:_0 __self__.value._closeConn();
    @:keep
    @:tdfield
    public dynamic function _onIdleTimeout():Void @:_0 __self__.value._onIdleTimeout();
    @:keep
    @:tdfield
    public dynamic function _tooIdleLocked():Bool return @:_0 __self__.value._tooIdleLocked();
    @:keep
    @:tdfield
    public dynamic function _canTakeNewRequestLocked():Bool return @:_0 __self__.value._canTakeNewRequestLocked();
    @:keep
    @:tdfield
    public dynamic function _idleStateLocked():stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState return @:_0 __self__.value._idleStateLocked();
    @:keep
    @:tdfield
    public dynamic function _idleState():stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState return @:_0 __self__.value._idleState();
    @:keep
    @:tdfield
    public dynamic function state():stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState return @:_0 __self__.value.state();
    @:keep
    @:tdfield
    public dynamic function reserveNewRequest():Bool return @:_0 __self__.value.reserveNewRequest();
    @:keep
    @:tdfield
    public dynamic function canTakeNewRequest():Bool return @:_0 __self__.value.canTakeNewRequest();
    @:keep
    @:tdfield
    public dynamic function _setGoAway(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>):Void @:_0 __self__.value._setGoAway(_f);
    @:keep
    @:tdfield
    public dynamic function setDoNotReuse():Void @:_0 __self__.value.setDoNotReuse();
    @:keep
    @:tdfield
    public dynamic function _healthCheck():Void @:_0 __self__.value._healthCheck();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_http2ClientConnPointer.T_http2ClientConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

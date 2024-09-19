package stdgo._internal.net.http;
class T_persistConn_asInterface {
    @:keep
    public dynamic function _closeLocked(_err:stdgo.Error):Void __self__.value._closeLocked(_err);
    @:keep
    public dynamic function _close(_err:stdgo.Error):Void __self__.value._close(_err);
    @:keep
    public dynamic function _markReused():Void __self__.value._markReused();
    @:keep
    public dynamic function _roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value._roundTrip(_req);
    @:keep
    public dynamic function _wroteRequest():Bool return __self__.value._wroteRequest();
    @:keep
    public dynamic function _writeLoop():Void __self__.value._writeLoop();
    @:keep
    public dynamic function _waitForContinue(_continueCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):() -> Bool return __self__.value._waitForContinue(_continueCh);
    @:keep
    public dynamic function _readResponse(_rc:stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.value._readResponse(_rc, _trace);
    @:keep
    public dynamic function _readLoopPeekFailLocked(_peekErr:stdgo.Error):Void __self__.value._readLoopPeekFailLocked(_peekErr);
    @:keep
    public dynamic function _readLoop():Void __self__.value._readLoop();
    @:keep
    public dynamic function _mapRoundTripError(_req:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>, _startBytesWritten:stdgo.GoInt64, _err:stdgo.Error):stdgo.Error return __self__.value._mapRoundTripError(_req, _startBytesWritten, _err);
    @:keep
    public dynamic function _closeConnIfStillIdle():Void __self__.value._closeConnIfStillIdle();
    @:keep
    public dynamic function _cancelRequest(_err:stdgo.Error):Void __self__.value._cancelRequest(_err);
    @:keep
    public dynamic function _gotIdleConnTrace(_idleAt:stdgo._internal.time.Time_Time.Time):stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo return __self__.value._gotIdleConnTrace(_idleAt);
    @:keep
    public dynamic function _isReused():Bool return __self__.value._isReused();
    @:keep
    public dynamic function _canceled():stdgo.Error return __self__.value._canceled();
    @:keep
    public dynamic function _isBroken():Bool return __self__.value._isBroken();
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:keep
    public dynamic function _maxHeaderResponseSize():stdgo.GoInt64 return __self__.value._maxHeaderResponseSize();
    @:keep
    public dynamic function _addTLS(_ctx:stdgo._internal.context.Context_Context.Context, _name:stdgo.GoString, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):stdgo.Error return __self__.value._addTLS(_ctx, _name, _trace);
    @:keep
    public dynamic function _shouldRetryRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _err:stdgo.Error):Bool return __self__.value._shouldRetryRequest(_req, _err);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

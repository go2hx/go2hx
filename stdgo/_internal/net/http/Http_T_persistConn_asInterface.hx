package stdgo._internal.net.http;
class T_persistConn_asInterface {
    @:keep
    @:tdfield
    public dynamic function _closeLocked(_err:stdgo.Error):Void @:_0 __self__.value._closeLocked(_err);
    @:keep
    @:tdfield
    public dynamic function _close(_err:stdgo.Error):Void @:_0 __self__.value._close(_err);
    @:keep
    @:tdfield
    public dynamic function _markReused():Void @:_0 __self__.value._markReused();
    @:keep
    @:tdfield
    public dynamic function _roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value._roundTrip(_req);
    @:keep
    @:tdfield
    public dynamic function _wroteRequest():Bool return @:_0 __self__.value._wroteRequest();
    @:keep
    @:tdfield
    public dynamic function _writeLoop():Void @:_0 __self__.value._writeLoop();
    @:keep
    @:tdfield
    public dynamic function _waitForContinue(_continueCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):() -> Bool return @:_0 __self__.value._waitForContinue(_continueCh);
    @:keep
    @:tdfield
    public dynamic function _readResponse(_rc:stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value._readResponse(_rc, _trace);
    @:keep
    @:tdfield
    public dynamic function _readLoopPeekFailLocked(_peekErr:stdgo.Error):Void @:_0 __self__.value._readLoopPeekFailLocked(_peekErr);
    @:keep
    @:tdfield
    public dynamic function _readLoop():Void @:_0 __self__.value._readLoop();
    @:keep
    @:tdfield
    public dynamic function _mapRoundTripError(_req:stdgo.Ref<stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest>, _startBytesWritten:stdgo.GoInt64, _err:stdgo.Error):stdgo.Error return @:_0 __self__.value._mapRoundTripError(_req, _startBytesWritten, _err);
    @:keep
    @:tdfield
    public dynamic function _closeConnIfStillIdle():Void @:_0 __self__.value._closeConnIfStillIdle();
    @:keep
    @:tdfield
    public dynamic function _cancelRequest(_err:stdgo.Error):Void @:_0 __self__.value._cancelRequest(_err);
    @:keep
    @:tdfield
    public dynamic function _gotIdleConnTrace(_idleAt:stdgo._internal.time.Time_Time.Time):stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo return @:_0 __self__.value._gotIdleConnTrace(_idleAt);
    @:keep
    @:tdfield
    public dynamic function _isReused():Bool return @:_0 __self__.value._isReused();
    @:keep
    @:tdfield
    public dynamic function _canceled():stdgo.Error return @:_0 __self__.value._canceled();
    @:keep
    @:tdfield
    public dynamic function _isBroken():Bool return @:_0 __self__.value._isBroken();
    @:keep
    @:tdfield
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_p);
    @:keep
    @:tdfield
    public dynamic function _maxHeaderResponseSize():stdgo.GoInt64 return @:_0 __self__.value._maxHeaderResponseSize();
    @:keep
    @:tdfield
    public dynamic function _addTLS(_ctx:stdgo._internal.context.Context_Context.Context, _name:stdgo.GoString, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):stdgo.Error return @:_0 __self__.value._addTLS(_ctx, _name, _trace);
    @:keep
    @:tdfield
    public dynamic function _shouldRetryRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _err:stdgo.Error):Bool return @:_0 __self__.value._shouldRetryRequest(_req, _err);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_persistConnPointer.T_persistConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

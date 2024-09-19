package stdgo._internal.net.http;
class T_http2serverConn_asInterface {
    @:keep
    public dynamic function _countError(_name:stdgo.GoString, _err:stdgo.Error):stdgo.Error return __self__.value._countError(_name, _err);
    @:keep
    public dynamic function _startPush(_msg:stdgo.Ref<stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest>):Void __self__.value._startPush(_msg);
    @:keep
    public dynamic function _sendWindowUpdate(_st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _n:stdgo.GoInt):Void __self__.value._sendWindowUpdate(_st, _n);
    @:keep
    public dynamic function _sendWindowUpdate32(_st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _n:stdgo.GoInt32):Void __self__.value._sendWindowUpdate32(_st, _n);
    @:keep
    public dynamic function _noteBodyRead(_st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _n:stdgo.GoInt):Void __self__.value._noteBodyRead(_st, _n);
    @:keep
    public dynamic function _noteBodyReadFromHandler(_st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _n:stdgo.GoInt, _err:stdgo.Error):Void __self__.value._noteBodyReadFromHandler(_st, _n, _err);
    @:keep
    public dynamic function _write100ContinueHeaders(_st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>):Void __self__.value._write100ContinueHeaders(_st);
    @:keep
    public dynamic function _writeHeaders(_st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _headerData:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>):stdgo.Error return __self__.value._writeHeaders(_st, _headerData);
    @:keep
    public dynamic function _runHandler(_rw:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):Void __self__.value._runHandler(_rw, _req, _handler);
    @:keep
    public dynamic function _handlerDone():Void __self__.value._handlerDone();
    @:keep
    public dynamic function _scheduleHandler(_streamID:stdgo.GoUInt32, _rw:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):stdgo.Error return __self__.value._scheduleHandler(_streamID, _rw, _req, _handler);
    @:keep
    public dynamic function _newResponseWriter(_st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter> return __self__.value._newResponseWriter(_st, _req);
    @:keep
    public dynamic function _newWriterAndRequestNoBody(_st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _rp:stdgo._internal.net.http.Http_T_http2requestParam.T_http2requestParam):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _2 : stdgo.Error; } return __self__.value._newWriterAndRequestNoBody(_st, _rp);
    @:keep
    public dynamic function _newWriterAndRequest(_st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _2 : stdgo.Error; } return __self__.value._newWriterAndRequest(_st, _f);
    @:keep
    public dynamic function _newStream(_id:stdgo.GoUInt32, _pusherID:stdgo.GoUInt32, _state:stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState):stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> return __self__.value._newStream(_id, _pusherID, _state);
    @:keep
    public dynamic function _processPriority(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame>):stdgo.Error return __self__.value._processPriority(_f);
    @:keep
    public dynamic function _checkPriority(_streamID:stdgo.GoUInt32, _p:stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam):stdgo.Error return __self__.value._checkPriority(_streamID, _p);
    @:keep
    public dynamic function _upgradeRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void __self__.value._upgradeRequest(_req);
    @:keep
    public dynamic function _processHeaders(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error return __self__.value._processHeaders(_f);
    @:keep
    public dynamic function _processGoAway(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>):stdgo.Error return __self__.value._processGoAway(_f);
    @:keep
    public dynamic function _processData(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>):stdgo.Error return __self__.value._processData(_f);
    @:keep
    public dynamic function _processSettingInitialWindowSize(_val:stdgo.GoUInt32):stdgo.Error return __self__.value._processSettingInitialWindowSize(_val);
    @:keep
    public dynamic function _processSetting(_s:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting):stdgo.Error return __self__.value._processSetting(_s);
    @:keep
    public dynamic function _processSettings(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>):stdgo.Error return __self__.value._processSettings(_f);
    @:keep
    public dynamic function _closeStream(_st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _err:stdgo.Error):Void __self__.value._closeStream(_st, _err);
    @:keep
    public dynamic function _processResetStream(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>):stdgo.Error return __self__.value._processResetStream(_f);
    @:keep
    public dynamic function _processWindowUpdate(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>):stdgo.Error return __self__.value._processWindowUpdate(_f);
    @:keep
    public dynamic function _processPing(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>):stdgo.Error return __self__.value._processPing(_f);
    @:keep
    public dynamic function _processFrame(_f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame):stdgo.Error return __self__.value._processFrame(_f);
    @:keep
    public dynamic function _processFrameFromReader(_res:stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult):Bool return __self__.value._processFrameFromReader(_res);
    @:keep
    public dynamic function _resetStream(_se:stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError):Void __self__.value._resetStream(_se);
    @:keep
    public dynamic function _shutDownIn(_d:stdgo._internal.time.Time_Duration.Duration):Void __self__.value._shutDownIn(_d);
    @:keep
    public dynamic function _goAway(_code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode):Void __self__.value._goAway(_code);
    @:keep
    public dynamic function _startGracefulShutdownInternal():Void __self__.value._startGracefulShutdownInternal();
    @:keep
    public dynamic function _startGracefulShutdown():Void __self__.value._startGracefulShutdown();
    @:keep
    public dynamic function _scheduleFrameWrite():Void __self__.value._scheduleFrameWrite();
    @:keep
    public dynamic function _wroteFrame(_res:stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult):Void __self__.value._wroteFrame(_res);
    @:keep
    public dynamic function _startFrameWrite(_wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):Void __self__.value._startFrameWrite(_wr);
    @:keep
    public dynamic function _writeFrame(_wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):Void __self__.value._writeFrame(_wr);
    @:keep
    public dynamic function _writeFrameFromHandler(_wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):stdgo.Error return __self__.value._writeFrameFromHandler(_wr);
    @:keep
    public dynamic function _writeDataFromHandler(_stream:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _data:stdgo.Slice<stdgo.GoUInt8>, _endStream:Bool):stdgo.Error return __self__.value._writeDataFromHandler(_stream, _data, _endStream);
    @:keep
    public dynamic function _readPreface():stdgo.Error return __self__.value._readPreface();
    @:keep
    public dynamic function _sendServeMsg(_msg:stdgo.AnyInterface):Void __self__.value._sendServeMsg(_msg);
    @:keep
    public dynamic function _onShutdownTimer():Void __self__.value._onShutdownTimer();
    @:keep
    public dynamic function _onIdleTimer():Void __self__.value._onIdleTimer();
    @:keep
    public dynamic function _onSettingsTimer():Void __self__.value._onSettingsTimer();
    @:keep
    public dynamic function _awaitGracefulShutdown(_sharedCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, _privateCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):Void __self__.value._awaitGracefulShutdown(_sharedCh, _privateCh);
    @:keep
    public dynamic function _serve():Void __self__.value._serve();
    @:keep
    public dynamic function _notePanic():Void __self__.value._notePanic();
    @:keep
    public dynamic function _stopShutdownTimer():Void __self__.value._stopShutdownTimer();
    @:keep
    public dynamic function _closeAllStreamsOnConnClose():Void __self__.value._closeAllStreamsOnConnClose();
    @:keep
    public dynamic function _writeFrameAsync(_wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest, _wd:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>):Void __self__.value._writeFrameAsync(_wr, _wd);
    @:keep
    public dynamic function _readFrames():Void __self__.value._readFrames();
    @:keep
    public dynamic function _canonicalHeader(_v:stdgo.GoString):stdgo.GoString return __self__.value._canonicalHeader(_v);
    @:keep
    public dynamic function _condlogf(_err:stdgo.Error, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._condlogf(_err, _format, ..._args);
    @:keep
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._logf(_format, ..._args);
    @:keep
    public dynamic function _vlogf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._vlogf(_format, ..._args);
    @:keep
    public dynamic function _setConnState(_state:stdgo._internal.net.http.Http_ConnState.ConnState):Void __self__.value._setConnState(_state);
    @:keep
    public dynamic function _state(_streamID:stdgo.GoUInt32):{ var _0 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>; } return __self__.value._state(_streamID);
    @:keep
    public dynamic function headerEncoder():{ var _0 : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>; var _1 : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>; } return __self__.value.headerEncoder();
    @:keep
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    @:keep
    public dynamic function closeConn():stdgo.Error return __self__.value.closeConn();
    @:keep
    public dynamic function framer():stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> return __self__.value.framer();
    @:keep
    public dynamic function _curOpenStreams():stdgo.GoUInt32 return __self__.value._curOpenStreams();
    @:keep
    public dynamic function _maxHeaderListSize():stdgo.GoUInt32 return __self__.value._maxHeaderListSize();
    @:keep
    public dynamic function _rejectConn(_err:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode, _debug:stdgo.GoString):Void __self__.value._rejectConn(_err, _debug);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

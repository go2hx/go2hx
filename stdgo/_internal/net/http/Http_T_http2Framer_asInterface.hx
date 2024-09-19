package stdgo._internal.net.http;
class T_http2Framer_asInterface {
    @:keep
    public dynamic function _readMetaFrame(_hf:stdgo.Ref<stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } return __self__.value._readMetaFrame(_hf);
    @:keep
    public dynamic function _maxHeaderStringLen():stdgo.GoInt return __self__.value._maxHeaderStringLen();
    @:keep
    public dynamic function writeRawFrame(_t:stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType, _flags:stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, _streamID:stdgo.GoUInt32, _payload:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.writeRawFrame(_t, _flags, _streamID, _payload);
    @:keep
    public dynamic function writePushPromise(_p:stdgo._internal.net.http.Http_T_http2PushPromiseParam.T_http2PushPromiseParam):stdgo.Error return __self__.value.writePushPromise(_p);
    @:keep
    public dynamic function writeContinuation(_streamID:stdgo.GoUInt32, _endHeaders:Bool, _headerBlockFragment:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.writeContinuation(_streamID, _endHeaders, _headerBlockFragment);
    @:keep
    public dynamic function writeRSTStream(_streamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode):stdgo.Error return __self__.value.writeRSTStream(_streamID, _code);
    @:keep
    public dynamic function writePriority(_streamID:stdgo.GoUInt32, _p:stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam):stdgo.Error return __self__.value.writePriority(_streamID, _p);
    @:keep
    public dynamic function writeHeaders(_p:stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam):stdgo.Error return __self__.value.writeHeaders(_p);
    @:keep
    public dynamic function writeWindowUpdate(_streamID:stdgo.GoUInt32, _incr:stdgo.GoUInt32):stdgo.Error return __self__.value.writeWindowUpdate(_streamID, _incr);
    @:keep
    public dynamic function writeGoAway(_maxStreamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode, _debugData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.writeGoAway(_maxStreamID, _code, _debugData);
    @:keep
    public dynamic function writePing(_ack:Bool, _data:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error return __self__.value.writePing(_ack, _data);
    @:keep
    public dynamic function writeSettingsAck():stdgo.Error return __self__.value.writeSettingsAck();
    @:keep
    public dynamic function writeSettings(_settings:haxe.Rest<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>):stdgo.Error return __self__.value.writeSettings(..._settings);
    @:keep
    public dynamic function _startWriteDataPadded(_streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>, _pad:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value._startWriteDataPadded(_streamID, _endStream, _data, _pad);
    @:keep
    public dynamic function writeDataPadded(_streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>, _pad:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.writeDataPadded(_streamID, _endStream, _data, _pad);
    @:keep
    public dynamic function writeData(_streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.writeData(_streamID, _endStream, _data);
    @:keep
    public dynamic function _checkFrameOrder(_f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame):stdgo.Error return __self__.value._checkFrameOrder(_f);
    @:keep
    public dynamic function _connError(_code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode, _reason:stdgo.GoString):stdgo.Error return __self__.value._connError(_code, _reason);
    @:keep
    public dynamic function readFrame():{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } return __self__.value.readFrame();
    @:keep
    public dynamic function errorDetail():stdgo.Error return __self__.value.errorDetail();
    @:keep
    public dynamic function setMaxReadFrameSize(_v:stdgo.GoUInt32):Void __self__.value.setMaxReadFrameSize(_v);
    @:keep
    public dynamic function setReuseFrames():Void __self__.value.setReuseFrames();
    @:keep
    public dynamic function _writeUint32(_v:stdgo.GoUInt32):Void __self__.value._writeUint32(_v);
    @:keep
    public dynamic function _writeUint16(_v:stdgo.GoUInt16):Void __self__.value._writeUint16(_v);
    @:keep
    public dynamic function _writeBytes(_v:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._writeBytes(_v);
    @:keep
    public dynamic function _writeByte(_v:stdgo.GoUInt8):Void __self__.value._writeByte(_v);
    @:keep
    public dynamic function _logWrite():Void __self__.value._logWrite();
    @:keep
    public dynamic function _endWrite():stdgo.Error return __self__.value._endWrite();
    @:keep
    public dynamic function _startWrite(_ftype:stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType, _flags:stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, _streamID:stdgo.GoUInt32):Void __self__.value._startWrite(_ftype, _flags, _streamID);
    @:keep
    public dynamic function _maxHeaderListSize():stdgo.GoUInt32 return __self__.value._maxHeaderListSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

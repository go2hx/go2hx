package stdgo._internal.net.http;
class T_http2Framer_asInterface {
    @:keep
    @:tdfield
    public dynamic function writeRawFrame(_t:stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType, _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags, _streamID:stdgo.GoUInt32, _payload:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.writeRawFrame(_t, _flags, _streamID, _payload);
    @:keep
    @:tdfield
    public dynamic function writePushPromise(_p:stdgo._internal.net.http.Http_t_http2pushpromiseparam.T_http2PushPromiseParam):stdgo.Error return @:_0 __self__.value.writePushPromise(_p);
    @:keep
    @:tdfield
    public dynamic function writeContinuation(_streamID:stdgo.GoUInt32, _endHeaders:Bool, _headerBlockFragment:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.writeContinuation(_streamID, _endHeaders, _headerBlockFragment);
    @:keep
    @:tdfield
    public dynamic function writeRSTStream(_streamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode):stdgo.Error return @:_0 __self__.value.writeRSTStream(_streamID, _code);
    @:keep
    @:tdfield
    public dynamic function writePriority(_streamID:stdgo.GoUInt32, _p:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):stdgo.Error return @:_0 __self__.value.writePriority(_streamID, _p);
    @:keep
    @:tdfield
    public dynamic function writeHeaders(_p:stdgo._internal.net.http.Http_t_http2headersframeparam.T_http2HeadersFrameParam):stdgo.Error return @:_0 __self__.value.writeHeaders(_p);
    @:keep
    @:tdfield
    public dynamic function writeWindowUpdate(_streamID:stdgo.GoUInt32, _incr:stdgo.GoUInt32):stdgo.Error return @:_0 __self__.value.writeWindowUpdate(_streamID, _incr);
    @:keep
    @:tdfield
    public dynamic function writeGoAway(_maxStreamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode, _debugData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.writeGoAway(_maxStreamID, _code, _debugData);
    @:keep
    @:tdfield
    public dynamic function writePing(_ack:Bool, _data:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.writePing(_ack, _data);
    @:keep
    @:tdfield
    public dynamic function writeSettingsAck():stdgo.Error return @:_0 __self__.value.writeSettingsAck();
    @:keep
    @:tdfield
    public dynamic function writeSettings(_settings:haxe.Rest<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>):stdgo.Error return @:_0 __self__.value.writeSettings(..._settings);
    @:keep
    @:tdfield
    public dynamic function writeDataPadded(_streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>, _pad:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.writeDataPadded(_streamID, _endStream, _data, _pad);
    @:keep
    @:tdfield
    public dynamic function writeData(_streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.writeData(_streamID, _endStream, _data);
    @:keep
    @:tdfield
    public dynamic function readFrame():{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } return @:_0 __self__.value.readFrame();
    @:keep
    @:tdfield
    public dynamic function errorDetail():stdgo.Error return @:_0 __self__.value.errorDetail();
    @:keep
    @:tdfield
    public dynamic function setMaxReadFrameSize(_v:stdgo.GoUInt32):Void @:_0 __self__.value.setMaxReadFrameSize(_v);
    @:keep
    @:tdfield
    public dynamic function setReuseFrames():Void @:_0 __self__.value.setReuseFrames();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2framerpointer.T_http2FramerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

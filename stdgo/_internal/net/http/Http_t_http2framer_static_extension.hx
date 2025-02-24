package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Framer_asInterface) class T_http2Framer_static_extension {
    @:keep
    @:tdfield
    static public function writeRawFrame( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _t:stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType, _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags, _streamID:stdgo.GoUInt32, _payload:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error throw "T_http2Framer:net.http.writeRawFrame is not yet implemented";
    @:keep
    @:tdfield
    static public function writePushPromise( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _p:stdgo._internal.net.http.Http_t_http2pushpromiseparam.T_http2PushPromiseParam):stdgo.Error throw "T_http2Framer:net.http.writePushPromise is not yet implemented";
    @:keep
    @:tdfield
    static public function writeContinuation( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endHeaders:Bool, _headerBlockFragment:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error throw "T_http2Framer:net.http.writeContinuation is not yet implemented";
    @:keep
    @:tdfield
    static public function writeRSTStream( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode):stdgo.Error throw "T_http2Framer:net.http.writeRSTStream is not yet implemented";
    @:keep
    @:tdfield
    static public function writePriority( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _p:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):stdgo.Error throw "T_http2Framer:net.http.writePriority is not yet implemented";
    @:keep
    @:tdfield
    static public function writeHeaders( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _p:stdgo._internal.net.http.Http_t_http2headersframeparam.T_http2HeadersFrameParam):stdgo.Error throw "T_http2Framer:net.http.writeHeaders is not yet implemented";
    @:keep
    @:tdfield
    static public function writeWindowUpdate( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _incr:stdgo.GoUInt32):stdgo.Error throw "T_http2Framer:net.http.writeWindowUpdate is not yet implemented";
    @:keep
    @:tdfield
    static public function writeGoAway( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _maxStreamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode, _debugData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error throw "T_http2Framer:net.http.writeGoAway is not yet implemented";
    @:keep
    @:tdfield
    static public function writePing( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _ack:Bool, _data:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error throw "T_http2Framer:net.http.writePing is not yet implemented";
    @:keep
    @:tdfield
    static public function writeSettingsAck( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):stdgo.Error throw "T_http2Framer:net.http.writeSettingsAck is not yet implemented";
    @:keep
    @:tdfield
    static public function writeSettings( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _settings:haxe.Rest<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>):stdgo.Error throw "T_http2Framer:net.http.writeSettings is not yet implemented";
    @:keep
    @:tdfield
    static public function writeDataPadded( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>, _pad:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error throw "T_http2Framer:net.http.writeDataPadded is not yet implemented";
    @:keep
    @:tdfield
    static public function writeData( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error throw "T_http2Framer:net.http.writeData is not yet implemented";
    @:keep
    @:tdfield
    static public function readFrame( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } throw "T_http2Framer:net.http.readFrame is not yet implemented";
    @:keep
    @:tdfield
    static public function errorDetail( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):stdgo.Error throw "T_http2Framer:net.http.errorDetail is not yet implemented";
    @:keep
    @:tdfield
    static public function setMaxReadFrameSize( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _v:stdgo.GoUInt32):Void throw "T_http2Framer:net.http.setMaxReadFrameSize is not yet implemented";
    @:keep
    @:tdfield
    static public function setReuseFrames( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):Void throw "T_http2Framer:net.http.setReuseFrames is not yet implemented";
}

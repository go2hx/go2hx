package stdgo._internal.net.http;
@:keep class T_http2WriteScheduler_static_extension {
    static public function pop(t:T_http2WriteScheduler):{ var _0 : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest; var _1 : Bool; } return t.pop();
    static public function push(t:T_http2WriteScheduler, _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):Void t.push(_wr);
    static public function adjustStream(t:T_http2WriteScheduler, _streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam):Void t.adjustStream(_streamID, _priority);
    static public function closeStream(t:T_http2WriteScheduler, _streamID:stdgo.GoUInt32):Void t.closeStream(_streamID);
    static public function openStream(t:T_http2WriteScheduler, _streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions):Void t.openStream(_streamID, _options);
}

package stdgo._internal.net.http;
@:keep class T_http2WriteScheduler_static_extension {
    @:interfacetypeffun
    static public function pop(t:stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler):{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; } return t.pop();
    @:interfacetypeffun
    static public function push(t:stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler, _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void t.push(_wr);
    @:interfacetypeffun
    static public function adjustStream(t:stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler, _streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):Void t.adjustStream(_streamID, _priority);
    @:interfacetypeffun
    static public function closeStream(t:stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler, _streamID:stdgo.GoUInt32):Void t.closeStream(_streamID);
    @:interfacetypeffun
    static public function openStream(t:stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler, _streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions):Void t.openStream(_streamID, _options);
}

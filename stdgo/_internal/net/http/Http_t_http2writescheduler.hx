package stdgo._internal.net.http;
@:interface typedef T_http2WriteScheduler = stdgo.StructType & {
    @:interfacetypeffun
    function openStream(_streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions):Void;
    @:interfacetypeffun
    function closeStream(_streamID:stdgo.GoUInt32):Void;
    @:interfacetypeffun
    function adjustStream(_streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):Void;
    @:interfacetypeffun
    function push(_wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void;
    @:interfacetypeffun
    function pop():{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; };
};

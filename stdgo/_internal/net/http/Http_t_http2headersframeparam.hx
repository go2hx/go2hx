package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2headersframeparam_static_extension.T_http2HeadersFrameParam_static_extension) class T_http2HeadersFrameParam {
    public var streamID : stdgo.GoUInt32 = 0;
    public var blockFragment : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var endStream : Bool = false;
    public var endHeaders : Bool = false;
    public var padLength : stdgo.GoUInt8 = 0;
    public var priority : stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam = ({} : stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam);
    public function new(?streamID:stdgo.GoUInt32, ?blockFragment:stdgo.Slice<stdgo.GoUInt8>, ?endStream:Bool, ?endHeaders:Bool, ?padLength:stdgo.GoUInt8, ?priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam) {
        if (streamID != null) this.streamID = streamID;
        if (blockFragment != null) this.blockFragment = blockFragment;
        if (endStream != null) this.endStream = endStream;
        if (endHeaders != null) this.endHeaders = endHeaders;
        if (padLength != null) this.padLength = padLength;
        if (priority != null) this.priority = priority;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2HeadersFrameParam(streamID, blockFragment, endStream, endHeaders, padLength, priority);
    }
}

package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2frameheader_static_extension.T_http2FrameHeader_static_extension) class T_http2FrameHeader {
    public var type : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType);
    public var flags : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
    public var length_ : stdgo.GoUInt32 = 0;
    public var streamID : stdgo.GoUInt32 = 0;
    public function new(?type:stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType, ?flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags, ?length_:stdgo.GoUInt32, ?streamID:stdgo.GoUInt32) {
        if (type != null) this.type = type;
        if (flags != null) this.flags = flags;
        if (length_ != null) this.length_ = length_;
        if (streamID != null) this.streamID = streamID;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2FrameHeader(type, flags, length_, streamID);
    }
}

package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2FrameHeader_static_extension) abstract T_http2FrameHeader(stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader) from stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader to stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader {
    public var type(get, set) : T_http2FrameType;
    function get_type():T_http2FrameType return this.type;
    function set_type(v:T_http2FrameType):T_http2FrameType {
        this.type = v;
        return v;
    }
    public var flags(get, set) : T_http2Flags;
    function get_flags():T_http2Flags return this.flags;
    function set_flags(v:T_http2Flags):T_http2Flags {
        this.flags = v;
        return v;
    }
    public var length_(get, set) : std.UInt;
    function get_length_():std.UInt return this.length_;
    function set_length_(v:std.UInt):std.UInt {
        this.length_ = (v : stdgo.GoUInt32);
        return v;
    }
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?type:T_http2FrameType, ?flags:T_http2Flags, ?length_:std.UInt, ?streamID:std.UInt) this = new stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader(type, flags, (length_ : stdgo.GoUInt32), (streamID : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2HeadersFrameParam_static_extension) abstract T_http2HeadersFrameParam(stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam) from stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam to stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam {
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = (v : stdgo.GoUInt32);
        return v;
    }
    public var blockFragment(get, set) : Array<std.UInt>;
    function get_blockFragment():Array<std.UInt> return [for (i in this.blockFragment) i];
    function set_blockFragment(v:Array<std.UInt>):Array<std.UInt> {
        this.blockFragment = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var endStream(get, set) : Bool;
    function get_endStream():Bool return this.endStream;
    function set_endStream(v:Bool):Bool {
        this.endStream = v;
        return v;
    }
    public var endHeaders(get, set) : Bool;
    function get_endHeaders():Bool return this.endHeaders;
    function set_endHeaders(v:Bool):Bool {
        this.endHeaders = v;
        return v;
    }
    public var padLength(get, set) : std.UInt;
    function get_padLength():std.UInt return this.padLength;
    function set_padLength(v:std.UInt):std.UInt {
        this.padLength = (v : stdgo.GoUInt8);
        return v;
    }
    public var priority(get, set) : T_http2PriorityParam;
    function get_priority():T_http2PriorityParam return this.priority;
    function set_priority(v:T_http2PriorityParam):T_http2PriorityParam {
        this.priority = v;
        return v;
    }
    public function new(?streamID:std.UInt, ?blockFragment:Array<std.UInt>, ?endStream:Bool, ?endHeaders:Bool, ?padLength:std.UInt, ?priority:T_http2PriorityParam) this = new stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam((streamID : stdgo.GoUInt32), ([for (i in blockFragment) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), endStream, endHeaders, (padLength : stdgo.GoUInt8), priority);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

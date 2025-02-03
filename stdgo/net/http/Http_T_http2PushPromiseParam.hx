package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2PushPromiseParam_static_extension) abstract T_http2PushPromiseParam(stdgo._internal.net.http.Http_T_http2PushPromiseParam.T_http2PushPromiseParam) from stdgo._internal.net.http.Http_T_http2PushPromiseParam.T_http2PushPromiseParam to stdgo._internal.net.http.Http_T_http2PushPromiseParam.T_http2PushPromiseParam {
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = (v : stdgo.GoUInt32);
        return v;
    }
    public var promiseID(get, set) : std.UInt;
    function get_promiseID():std.UInt return this.promiseID;
    function set_promiseID(v:std.UInt):std.UInt {
        this.promiseID = (v : stdgo.GoUInt32);
        return v;
    }
    public var blockFragment(get, set) : Array<std.UInt>;
    function get_blockFragment():Array<std.UInt> return [for (i in this.blockFragment) i];
    function set_blockFragment(v:Array<std.UInt>):Array<std.UInt> {
        this.blockFragment = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
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
    public function new(?streamID:std.UInt, ?promiseID:std.UInt, ?blockFragment:Array<std.UInt>, ?endHeaders:Bool, ?padLength:std.UInt) this = new stdgo._internal.net.http.Http_T_http2PushPromiseParam.T_http2PushPromiseParam((streamID : stdgo.GoUInt32), (promiseID : stdgo.GoUInt32), ([for (i in blockFragment) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), endHeaders, (padLength : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

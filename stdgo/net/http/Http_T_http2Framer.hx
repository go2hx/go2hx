package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2Framer_static_extension) abstract T_http2Framer(stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer) from stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer to stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer {
    public var allowIllegalWrites(get, set) : Bool;
    function get_allowIllegalWrites():Bool return this.allowIllegalWrites;
    function set_allowIllegalWrites(v:Bool):Bool {
        this.allowIllegalWrites = v;
        return v;
    }
    public var allowIllegalReads(get, set) : Bool;
    function get_allowIllegalReads():Bool return this.allowIllegalReads;
    function set_allowIllegalReads(v:Bool):Bool {
        this.allowIllegalReads = v;
        return v;
    }
    public var readMetaHeaders(get, set) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder;
    function get_readMetaHeaders():_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder return this.readMetaHeaders;
    function set_readMetaHeaders(v:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder):_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder {
        this.readMetaHeaders = (v : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>);
        return v;
    }
    public var maxHeaderListSize(get, set) : std.UInt;
    function get_maxHeaderListSize():std.UInt return this.maxHeaderListSize;
    function set_maxHeaderListSize(v:std.UInt):std.UInt {
        this.maxHeaderListSize = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?allowIllegalWrites:Bool, ?allowIllegalReads:Bool, ?readMetaHeaders:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder, ?maxHeaderListSize:std.UInt) this = new stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer(allowIllegalWrites, allowIllegalReads, (readMetaHeaders : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>), (maxHeaderListSize : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

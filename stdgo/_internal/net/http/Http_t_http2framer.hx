package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension) class T_http2Framer {
    public var allowIllegalWrites : Bool = false;
    public var allowIllegalReads : Bool = false;
    public var readMetaHeaders : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_decoder.Decoder> = (null : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_decoder.Decoder>);
    public var maxHeaderListSize : stdgo.GoUInt32 = 0;
    public function new(?allowIllegalWrites:Bool, ?allowIllegalReads:Bool, ?readMetaHeaders:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_decoder.Decoder>, ?maxHeaderListSize:stdgo.GoUInt32) {
        if (allowIllegalWrites != null) this.allowIllegalWrites = allowIllegalWrites;
        if (allowIllegalReads != null) this.allowIllegalReads = allowIllegalReads;
        if (readMetaHeaders != null) this.readMetaHeaders = readMetaHeaders;
        if (maxHeaderListSize != null) this.maxHeaderListSize = maxHeaderListSize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2Framer(allowIllegalWrites, allowIllegalReads, readMetaHeaders, maxHeaderListSize);
    }
}

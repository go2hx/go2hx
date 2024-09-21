package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError_static_extension.DecodingError_static_extension) class DecodingError {
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?err:stdgo.Error) {
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DecodingError(err);
    }
}

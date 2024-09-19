package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack.DecodingError_asInterface) class DecodingError_static_extension {
    @:keep
    static public function error( _de:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError):stdgo.GoString {
        @:recv var _de:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError = _de?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("decoding error: %v" : stdgo.GoString), stdgo.Go.toInterface(_de.err))?.__copy__();
    }
}

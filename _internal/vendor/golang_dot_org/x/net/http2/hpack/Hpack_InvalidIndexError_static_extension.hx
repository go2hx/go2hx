package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack.InvalidIndexError_asInterface) class InvalidIndexError_static_extension {
    @:keep
    static public function error( _e:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_InvalidIndexError.InvalidIndexError):stdgo.GoString {
        @:recv var _e:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_InvalidIndexError.InvalidIndexError = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid indexed representation index %d" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoInt)))?.__copy__();
    }
}

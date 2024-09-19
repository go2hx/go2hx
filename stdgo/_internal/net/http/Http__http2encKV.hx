package stdgo._internal.net.http;
function _http2encKV(_enc:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>, _k:stdgo.GoString, _v:stdgo.GoString):Void {
        if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
            stdgo._internal.log.Log_printf.printf(("http2: server encoding header %q = %q" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
        };
        _enc.writeField(({ name : _k?.__copy__(), value : _v?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField));
    }

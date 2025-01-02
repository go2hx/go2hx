package stdgo._internal.net.http;
function _idnaASCII(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (stdgo._internal.net.http.internal.ascii.Ascii_is_.is_(_v?.__copy__())) {
            return { _0 : _v?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return @:check2r _internal.golang_dot_org.x.net.idna.Idna_lookup.lookup.toASCII(_v?.__copy__());
    }

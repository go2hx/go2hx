package stdgo._internal.net.http;
function _parseContentLength(_cl:stdgo.GoString):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        _cl = stdgo._internal.net.textproto.Textproto_trimString.trimString(_cl?.__copy__())?.__copy__();
        if (_cl == (stdgo.Go.str())) {
            return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_cl?.__copy__(), (10 : stdgo.GoInt), (63 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.net.http.Http__badStringError._badStringError(("bad Content-Length" : stdgo.GoString), _cl?.__copy__()) };
        };
        return { _0 : (_n : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }

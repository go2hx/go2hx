package stdgo._internal.net.http.httptest;
function _parseContentLength(_cl:stdgo.GoString):stdgo.GoInt64 {
        _cl = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_cl?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L247"
        if (_cl == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L248"
            return (-1i64 : stdgo.GoInt64);
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_cl?.__copy__(), (10 : stdgo.GoInt), (63 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L251"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L252"
            return (-1i64 : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L254"
        return (_n : stdgo.GoInt64);
    }

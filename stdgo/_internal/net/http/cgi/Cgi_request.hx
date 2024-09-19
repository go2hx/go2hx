package stdgo._internal.net.http.cgi;
function request():{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.http.cgi.Cgi_requestFromMap.requestFromMap(stdgo._internal.net.http.cgi.Cgi__envMap._envMap(stdgo._internal.os.Os_environ_.environ_())), _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if ((_r.contentLength > (0i64 : stdgo.GoInt64) : Bool)) {
            _r.body = stdgo._internal.io.Io_nopCloser.nopCloser(stdgo._internal.io.Io_limitReader.limitReader(stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin), _r.contentLength));
        };
        return { _0 : _r, _1 : (null : stdgo.Error) };
    }

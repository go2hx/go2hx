package stdgo._internal.net.http.cgi;
function request():{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.http.cgi.Cgi_requestfrommap.requestFromMap(stdgo._internal.net.http.cgi.Cgi__envmap._envMap(stdgo._internal.os.Os_environ_.environ_())), _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L30"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L31"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L33"
        if (((@:checkr _r ?? throw "null pointer dereference").contentLength > (0i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference").body = stdgo._internal.io.Io_nopcloser.nopCloser(stdgo._internal.io.Io_limitreader.limitReader(stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin), (@:checkr _r ?? throw "null pointer dereference").contentLength));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L36"
        return { _0 : _r, _1 : (null : stdgo.Error) };
    }

package stdgo._internal.net.http.pprof;
function _serveError(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _status:stdgo.GoInt, _txt:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L123"
        _w.header().set(("Content-Type" : stdgo.GoString), ("text/plain; charset=utf-8" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L124"
        _w.header().set(("X-Go-Pprof" : stdgo.GoString), ("1" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L125"
        _w.header().del(("Content-Disposition" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L126"
        _w.writeHeader(_status);
        //"file:///home/runner/.go/go1.21.3/src/net/http/pprof/pprof.go#L127"
        stdgo._internal.fmt.Fmt_fprintln.fprintln(_w, stdgo.Go.toInterface(_txt));
    }

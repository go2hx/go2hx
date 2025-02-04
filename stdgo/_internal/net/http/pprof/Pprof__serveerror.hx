package stdgo._internal.net.http.pprof;
function _serveError(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _status:stdgo.GoInt, _txt:stdgo.GoString):Void {
        _w.header().set(("Content-Type" : stdgo.GoString), ("text/plain; charset=utf-8" : stdgo.GoString));
        _w.header().set(("X-Go-Pprof" : stdgo.GoString), ("1" : stdgo.GoString));
        _w.header().del(("Content-Disposition" : stdgo.GoString));
        _w.writeHeader(_status);
        stdgo._internal.fmt.Fmt_fprintln.fprintln(_w, stdgo.Go.toInterface(_txt));
    }

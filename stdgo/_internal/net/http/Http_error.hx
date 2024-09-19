package stdgo._internal.net.http;
function error(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _error:stdgo.GoString, _code:stdgo.GoInt):Void {
        _w.header().set(("Content-Type" : stdgo.GoString), ("text/plain; charset=utf-8" : stdgo.GoString));
        _w.header().set(("X-Content-Type-Options" : stdgo.GoString), ("nosniff" : stdgo.GoString));
        _w.writeHeader(_code);
        stdgo._internal.fmt.Fmt_fprintln.fprintln(_w, stdgo.Go.toInterface(_error));
    }

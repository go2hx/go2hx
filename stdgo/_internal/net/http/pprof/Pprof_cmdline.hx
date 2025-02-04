package stdgo._internal.net.http.pprof;
function cmdline(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        _w.header().set(("X-Content-Type-Options" : stdgo.GoString), ("nosniff" : stdgo.GoString));
        _w.header().set(("Content-Type" : stdgo.GoString), ("text/plain; charset=utf-8" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_fprint.fprint(_w, stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(stdgo._internal.os.Os_args.args, (stdgo.Go.str(0) : stdgo.GoString)?.__copy__())));
    }

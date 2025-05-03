package stdgo._internal.expvar;
function _expvarHandler(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L339"
        _w.header().set(("Content-Type" : stdgo.GoString), ("application/json; charset=utf-8" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L340"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("{\n" : stdgo.GoString));
        var _first = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L342"
        stdgo._internal.expvar.Expvar_do_.do_(function(_kv:stdgo._internal.expvar.Expvar_keyvalue.KeyValue):Void {
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L343"
            if (!_first) {
                //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L344"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, (",\n" : stdgo.GoString));
            };
            _first = false;
            //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L347"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%q: %s" : stdgo.GoString), stdgo.Go.toInterface(_kv.key), stdgo.Go.toInterface(_kv.value));
        });
        //"file:///home/runner/.go/go1.21.3/src/expvar/expvar.go#L349"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n}\n" : stdgo.GoString));
    }

package stdgo._internal.expvar;
function _expvarHandler(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        _w.header().set(("Content-Type" : stdgo.GoString), ("application/json; charset=utf-8" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("{\n" : stdgo.GoString));
        var _first = (true : Bool);
        stdgo._internal.expvar.Expvar_do_.do_(function(_kv:stdgo._internal.expvar.Expvar_keyvalue.KeyValue):Void {
            if (!_first) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, (",\n" : stdgo.GoString));
            };
            _first = false;
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%q: %s" : stdgo.GoString), stdgo.Go.toInterface(_kv.key), stdgo.Go.toInterface(_kv.value));
        });
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n}\n" : stdgo.GoString));
    }

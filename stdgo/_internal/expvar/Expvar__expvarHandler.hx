package stdgo._internal.expvar;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.net.http.Http;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.encoding.json.Json;
function _expvarHandler(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        _w.header().set(("Content-Type" : stdgo.GoString), ("application/json; charset=utf-8" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("{\n" : stdgo.GoString));
        var _first = (true : Bool);
        stdgo._internal.expvar.Expvar_do_.do_(function(_kv:stdgo._internal.expvar.Expvar_KeyValue.KeyValue):Void {
            if (!_first) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, (",\n" : stdgo.GoString));
            };
            _first = false;
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%q: %s" : stdgo.GoString), stdgo.Go.toInterface(_kv.key), stdgo.Go.toInterface(_kv.value));
        });
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\n}\n" : stdgo.GoString));
    }

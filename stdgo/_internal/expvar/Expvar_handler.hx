package stdgo._internal.expvar;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.net.http.Http;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.encoding.json.Json;
function handler():stdgo._internal.net.http.Http_Handler.Handler {
        return stdgo.Go.asInterface((stdgo._internal.expvar.Expvar__expvarHandler._expvarHandler : stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc));
    }

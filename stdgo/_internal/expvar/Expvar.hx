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
@:keep var __init_go2hx__ = {
        try {
            stdgo._internal.net.http.Http_handleFunc.handleFunc(("/debug/vars" : stdgo.GoString), stdgo._internal.expvar.Expvar__expvarHandler._expvarHandler);
            stdgo._internal.expvar.Expvar_publish.publish(("cmdline" : stdgo.GoString), stdgo.Go.asInterface((stdgo._internal.expvar.Expvar__cmdline._cmdline : stdgo._internal.expvar.Expvar_Func.Func)));
            stdgo._internal.expvar.Expvar_publish.publish(("memstats" : stdgo.GoString), stdgo.Go.asInterface((stdgo._internal.expvar.Expvar__memstats._memstats : stdgo._internal.expvar.Expvar_Func.Func)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

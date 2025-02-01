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
@:interface typedef Var = stdgo.StructType & {
    /**
        String returns a valid JSON value for the variable.
        Types with String methods that do not return valid JSON
        (such as time.Time) must not be used as a Var.
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
};

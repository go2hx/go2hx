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
@:structInit @:using(stdgo._internal.expvar.Expvar_KeyValue_static_extension.KeyValue_static_extension) class KeyValue {
    public var key : stdgo.GoString = "";
    public var value : stdgo._internal.expvar.Expvar_Var.Var = (null : stdgo._internal.expvar.Expvar_Var.Var);
    public function new(?key:stdgo.GoString, ?value:stdgo._internal.expvar.Expvar_Var.Var) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new KeyValue(key, value);
    }
}

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
@:structInit @:using(stdgo._internal.expvar.Expvar_Int__static_extension.Int__static_extension) class Int_ {
    public var _i : stdgo.GoInt64 = 0;
    public function new(?_i:stdgo.GoInt64) {
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Int_(_i);
    }
}

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
@:structInit @:using(stdgo._internal.expvar.Expvar_Float__static_extension.Float__static_extension) class Float_ {
    public var _f : _internal.sync.atomic_.Atomic__Uint64.Uint64 = ({} : _internal.sync.atomic_.Atomic__Uint64.Uint64);
    public function new(?_f:_internal.sync.atomic_.Atomic__Uint64.Uint64) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Float_(_f);
    }
}

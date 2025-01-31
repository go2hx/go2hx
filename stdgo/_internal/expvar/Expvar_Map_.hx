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
@:structInit @:using(stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension) class Map_ {
    public var _m : stdgo._internal.sync.Sync_Map_.Map_ = ({} : stdgo._internal.sync.Sync_Map_.Map_);
    public var _keysMu : stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
    public var _keys : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_m:stdgo._internal.sync.Sync_Map_.Map_, ?_keysMu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_keys:stdgo.Slice<stdgo.GoString>) {
        if (_m != null) this._m = _m;
        if (_keysMu != null) this._keysMu = _keysMu;
        if (_keys != null) this._keys = _keys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Map_(_m, _keysMu, _keys);
    }
}

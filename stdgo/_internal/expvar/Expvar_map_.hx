package stdgo._internal.expvar;
@:structInit @:using(stdgo._internal.expvar.Expvar_map__static_extension.Map__static_extension) class Map_ {
    public var _m : stdgo._internal.sync.Sync_map_.Map_ = ({} : stdgo._internal.sync.Sync_map_.Map_);
    public var _keysMu : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _keys : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_m:stdgo._internal.sync.Sync_map_.Map_, ?_keysMu:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_keys:stdgo.Slice<stdgo.GoString>) {
        if (_m != null) this._m = _m;
        if (_keysMu != null) this._keysMu = _keysMu;
        if (_keys != null) this._keys = _keys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Map_(_m, _keysMu, _keys);
    }
}

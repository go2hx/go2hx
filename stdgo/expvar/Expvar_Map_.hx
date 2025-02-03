package stdgo.expvar;
@:structInit @:using(stdgo.expvar.Expvar.Map__static_extension) abstract Map_(stdgo._internal.expvar.Expvar_Map_.Map_) from stdgo._internal.expvar.Expvar_Map_.Map_ to stdgo._internal.expvar.Expvar_Map_.Map_ {
    public var _m(get, set) : stdgo._internal.sync.Sync_Map_.Map_;
    function get__m():stdgo._internal.sync.Sync_Map_.Map_ return this._m;
    function set__m(v:stdgo._internal.sync.Sync_Map_.Map_):stdgo._internal.sync.Sync_Map_.Map_ {
        this._m = v;
        return v;
    }
    public var _keysMu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__keysMu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._keysMu;
    function set__keysMu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._keysMu = v;
        return v;
    }
    public var _keys(get, set) : Array<String>;
    function get__keys():Array<String> return [for (i in this._keys) i];
    function set__keys(v:Array<String>):Array<String> {
        this._keys = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_m:stdgo._internal.sync.Sync_Map_.Map_, ?_keysMu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_keys:Array<String>) this = new stdgo._internal.expvar.Expvar_Map_.Map_(_m, _keysMu, ([for (i in _keys) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

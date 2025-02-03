package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.Map__static_extension) abstract Map_(stdgo._internal.sync.Sync_Map_.Map_) from stdgo._internal.sync.Sync_Map_.Map_ to stdgo._internal.sync.Sync_Map_.Map_ {
    public var _mu(get, set) : Mutex;
    function get__mu():Mutex return this._mu;
    function set__mu(v:Mutex):Mutex {
        this._mu = v;
        return v;
    }
    public var _read(get, set) : Pointer_<T_readOnly>;
    function get__read():Pointer_<T_readOnly> return this._read;
    function set__read(v:Pointer_<T_readOnly>):Pointer_<T_readOnly> {
        this._read = v;
        return v;
    }
    public var _dirty(get, set) : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>;
    function get__dirty():stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>> return this._dirty;
    function set__dirty(v:stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>):stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>> {
        this._dirty = (v : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>);
        return v;
    }
    public var _misses(get, set) : StdTypes.Int;
    function get__misses():StdTypes.Int return this._misses;
    function set__misses(v:StdTypes.Int):StdTypes.Int {
        this._misses = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_mu:Mutex, ?_read:Pointer_<T_readOnly>, ?_dirty:stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>, ?_misses:StdTypes.Int) this = new stdgo._internal.sync.Sync_Map_.Map_(_mu, _read, (_dirty : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>), (_misses : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

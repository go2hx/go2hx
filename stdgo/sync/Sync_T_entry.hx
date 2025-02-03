package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.T_entry_static_extension) abstract T_entry(stdgo._internal.sync.Sync_T_entry.T_entry) from stdgo._internal.sync.Sync_T_entry.T_entry to stdgo._internal.sync.Sync_T_entry.T_entry {
    public var _p(get, set) : Pointer_<stdgo.AnyInterface>;
    function get__p():Pointer_<stdgo.AnyInterface> return this._p;
    function set__p(v:Pointer_<stdgo.AnyInterface>):Pointer_<stdgo.AnyInterface> {
        this._p = v;
        return v;
    }
    public function new(?_p:Pointer_<stdgo.AnyInterface>) this = new stdgo._internal.sync.Sync_T_entry.T_entry(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

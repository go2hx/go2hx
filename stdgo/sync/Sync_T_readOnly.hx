package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.T_readOnly_static_extension) abstract T_readOnly(stdgo._internal.sync.Sync_T_readOnly.T_readOnly) from stdgo._internal.sync.Sync_T_readOnly.T_readOnly to stdgo._internal.sync.Sync_T_readOnly.T_readOnly {
    public var _m(get, set) : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>;
    function get__m():stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>):stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>> {
        this._m = (v : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>);
        return v;
    }
    public var _amended(get, set) : Bool;
    function get__amended():Bool return this._amended;
    function set__amended(v:Bool):Bool {
        this._amended = v;
        return v;
    }
    public function new(?_m:stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>, ?_amended:Bool) this = new stdgo._internal.sync.Sync_T_readOnly.T_readOnly((_m : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>), _amended);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

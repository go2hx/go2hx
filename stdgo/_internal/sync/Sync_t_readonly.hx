package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_t_readonly_static_extension.T_readOnly_static_extension) class T_readOnly {
    public var _m : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>>);
    public var _amended : Bool = false;
    public function new(?_m:stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>>, ?_amended:Bool) {
        if (_m != null) this._m = _m;
        if (_amended != null) this._amended = _amended;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readOnly(_m, _amended);
    }
}

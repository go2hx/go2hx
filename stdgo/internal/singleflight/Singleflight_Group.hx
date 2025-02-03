package stdgo.internal.singleflight;
@:structInit @:using(stdgo.internal.singleflight.Singleflight.Group_static_extension) abstract Group(stdgo._internal.internal.singleflight.Singleflight_Group.Group) from stdgo._internal.internal.singleflight.Singleflight_Group.Group to stdgo._internal.internal.singleflight.Singleflight_Group.Group {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>>;
    function get__m():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>> {
        this._m = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>>);
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>>) this = new stdgo._internal.internal.singleflight.Singleflight_Group.Group(_mu, (_m : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

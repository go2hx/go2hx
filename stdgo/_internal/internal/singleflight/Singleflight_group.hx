package stdgo._internal.internal.singleflight;
@:structInit @:using(stdgo._internal.internal.singleflight.Singleflight_group_static_extension.Group_static_extension) class Group {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _m : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>>);
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>>) {
        if (_mu != null) this._mu = _mu;
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Group(_mu, _m);
    }
}

package stdgo._internal.net.internal.socktest;
@:structInit @:using(stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension) class Switch {
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _fmu : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _fltab : stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType, stdgo._internal.net.internal.socktest.Socktest_filter.Filter> = (null : stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType, stdgo._internal.net.internal.socktest.Socktest_filter.Filter>);
    public var _smu : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _sotab : stdgo._internal.net.internal.socktest.Socktest_sockets.Sockets = (null : stdgo._internal.net.internal.socktest.Socktest_sockets.Sockets);
    public var _stats : stdgo._internal.net.internal.socktest.Socktest_t_stats.T_stats = (null : stdgo._internal.net.internal.socktest.Socktest_t_stats.T_stats);
    public function new(?_once:stdgo._internal.sync.Sync_once.Once, ?_fmu:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_fltab:stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType, stdgo._internal.net.internal.socktest.Socktest_filter.Filter>, ?_smu:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_sotab:stdgo._internal.net.internal.socktest.Socktest_sockets.Sockets, ?_stats:stdgo._internal.net.internal.socktest.Socktest_t_stats.T_stats) {
        if (_once != null) this._once = _once;
        if (_fmu != null) this._fmu = _fmu;
        if (_fltab != null) this._fltab = _fltab;
        if (_smu != null) this._smu = _smu;
        if (_sotab != null) this._sotab = _sotab;
        if (_stats != null) this._stats = _stats;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Switch(_once, _fmu, _fltab, _smu, _sotab, _stats);
    }
}

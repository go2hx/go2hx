package stdgo.net.internal.socktest;
@:structInit @:using(stdgo.net.internal.socktest.Socktest.Switch_static_extension) abstract Switch(stdgo._internal.net.internal.socktest.Socktest_Switch.Switch) from stdgo._internal.net.internal.socktest.Socktest_Switch.Switch to stdgo._internal.net.internal.socktest.Socktest_Switch.Switch {
    public var _once(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__once():stdgo._internal.sync.Sync_Once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._once = v;
        return v;
    }
    public var _fmu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__fmu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._fmu;
    function set__fmu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._fmu = v;
        return v;
    }
    public var _fltab(get, set) : stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_FilterType.FilterType, stdgo._internal.net.internal.socktest.Socktest_Filter.Filter>;
    function get__fltab():stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_FilterType.FilterType, stdgo._internal.net.internal.socktest.Socktest_Filter.Filter> return this._fltab;
    function set__fltab(v:stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_FilterType.FilterType, stdgo._internal.net.internal.socktest.Socktest_Filter.Filter>):stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_FilterType.FilterType, stdgo._internal.net.internal.socktest.Socktest_Filter.Filter> {
        this._fltab = (v : stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_FilterType.FilterType, stdgo._internal.net.internal.socktest.Socktest_Filter.Filter>);
        return v;
    }
    public var _smu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__smu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._smu;
    function set__smu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._smu = v;
        return v;
    }
    public var _sotab(get, set) : Sockets;
    function get__sotab():Sockets return this._sotab;
    function set__sotab(v:Sockets):Sockets {
        this._sotab = v;
        return v;
    }
    public var _stats(get, set) : T_stats;
    function get__stats():T_stats return this._stats;
    function set__stats(v:T_stats):T_stats {
        this._stats = v;
        return v;
    }
    public function new(?_once:stdgo._internal.sync.Sync_Once.Once, ?_fmu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_fltab:stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_FilterType.FilterType, stdgo._internal.net.internal.socktest.Socktest_Filter.Filter>, ?_smu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_sotab:Sockets, ?_stats:T_stats) this = new stdgo._internal.net.internal.socktest.Socktest_Switch.Switch(_once, _fmu, (_fltab : stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_FilterType.FilterType, stdgo._internal.net.internal.socktest.Socktest_Filter.Filter>), _smu, _sotab, _stats);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

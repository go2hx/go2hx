package stdgo.internal.sysinfo;
@:structInit @:using(stdgo.internal.sysinfo.Sysinfo.T_cpuInfo_static_extension) abstract T_cpuInfo(stdgo._internal.internal.sysinfo.Sysinfo_T_cpuInfo.T_cpuInfo) from stdgo._internal.internal.sysinfo.Sysinfo_T_cpuInfo.T_cpuInfo to stdgo._internal.internal.sysinfo.Sysinfo_T_cpuInfo.T_cpuInfo {
    public var _once(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__once():stdgo._internal.sync.Sync_Once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._once = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public function new(?_once:stdgo._internal.sync.Sync_Once.Once, ?_name:String) this = new stdgo._internal.internal.sysinfo.Sysinfo_T_cpuInfo.T_cpuInfo(_once, (_name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

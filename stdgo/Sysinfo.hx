package stdgo;
var cPU(get, set) : T_cpuInfo;
private function get_cPU():T_cpuInfo return stdgo._internal.internal.sysinfo.Sysinfo_cpu.cPU;
private function set_cPU(v:T_cpuInfo):T_cpuInfo {
        stdgo._internal.internal.sysinfo.Sysinfo_cpu.cPU = v;
        return v;
    }
@:structInit @:using(stdgo.internal.sysinfo.Sysinfo.T_cpuInfo_static_extension) @:dox(hide) abstract T_cpuInfo(stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo) from stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo to stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo {
    public var _once(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__once():stdgo._internal.sync.Sync_once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._once = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public function new(?_once:stdgo._internal.sync.Sync_once.Once, ?_name:String) this = new stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo(_once, (_name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_cpuInfoPointer = stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfopointer.T_cpuInfoPointer;
@:dox(hide) class T_cpuInfo_static_extension {
    static public function name(_cpu:T_cpuInfo):String {
        final _cpu = (_cpu : stdgo.Ref<stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo.T_cpuInfo>);
        return stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo_static_extension.T_cpuInfo_static_extension.name(_cpu);
    }
}
/**
    * Package sysinfo implements high level hardware information gathering
    * that can be used for debugging or information purposes.
**/
class Sysinfo {

}

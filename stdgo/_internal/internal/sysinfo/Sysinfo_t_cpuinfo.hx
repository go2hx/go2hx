package stdgo._internal.internal.sysinfo;
@:structInit @:using(stdgo._internal.internal.sysinfo.Sysinfo_t_cpuinfo_static_extension.T_cpuInfo_static_extension) class T_cpuInfo {
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _name : stdgo.GoString = "";
    public function new(?_once:stdgo._internal.sync.Sync_once.Once, ?_name:stdgo.GoString) {
        if (_once != null) this._once = _once;
        if (_name != null) this._name = _name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cpuInfo(_once, _name);
    }
}

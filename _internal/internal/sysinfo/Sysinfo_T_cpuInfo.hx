package _internal.internal.sysinfo;
@:structInit @:using(_internal.internal.sysinfo.Sysinfo_T_cpuInfo_static_extension.T_cpuInfo_static_extension) class T_cpuInfo {
    public var _once : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public var _name : stdgo.GoString = "";
    public function new(?_once:stdgo._internal.sync.Sync_Once.Once, ?_name:stdgo.GoString) {
        if (_once != null) this._once = _once;
        if (_name != null) this._name = _name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cpuInfo(_once, _name);
    }
}

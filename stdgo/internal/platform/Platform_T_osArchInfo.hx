package stdgo.internal.platform;
@:structInit @:using(stdgo.internal.platform.Platform.T_osArchInfo_static_extension) abstract T_osArchInfo(stdgo._internal.internal.platform.Platform_T_osArchInfo.T_osArchInfo) from stdgo._internal.internal.platform.Platform_T_osArchInfo.T_osArchInfo to stdgo._internal.internal.platform.Platform_T_osArchInfo.T_osArchInfo {
    public var cgoSupported(get, set) : Bool;
    function get_cgoSupported():Bool return this.cgoSupported;
    function set_cgoSupported(v:Bool):Bool {
        this.cgoSupported = v;
        return v;
    }
    public var firstClass(get, set) : Bool;
    function get_firstClass():Bool return this.firstClass;
    function set_firstClass(v:Bool):Bool {
        this.firstClass = v;
        return v;
    }
    public var broken(get, set) : Bool;
    function get_broken():Bool return this.broken;
    function set_broken(v:Bool):Bool {
        this.broken = v;
        return v;
    }
    public function new(?cgoSupported:Bool, ?firstClass:Bool, ?broken:Bool) this = new stdgo._internal.internal.platform.Platform_T_osArchInfo.T_osArchInfo(cgoSupported, firstClass, broken);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

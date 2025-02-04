package stdgo._internal.internal.platform;
@:structInit @:using(stdgo._internal.internal.platform.Platform_t_osarchinfo_static_extension.T_osArchInfo_static_extension) class T_osArchInfo {
    public var cgoSupported : Bool = false;
    public var firstClass : Bool = false;
    public var broken : Bool = false;
    public function new(?cgoSupported:Bool, ?firstClass:Bool, ?broken:Bool) {
        if (cgoSupported != null) this.cgoSupported = cgoSupported;
        if (firstClass != null) this.firstClass = firstClass;
        if (broken != null) this.broken = broken;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_osArchInfo(cgoSupported, firstClass, broken);
    }
}

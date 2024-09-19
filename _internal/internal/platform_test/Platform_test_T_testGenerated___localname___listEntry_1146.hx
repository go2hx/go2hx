package _internal.internal.platform_test;
@:structInit class T_testGenerated___localname___listEntry_1146 {
    public var goos : stdgo.GoString = "";
    public var goarch : stdgo.GoString = "";
    public var cgoSupported : Bool = false;
    public var firstClass : Bool = false;
    public var broken : Bool = false;
    public function new(?goos:stdgo.GoString, ?goarch:stdgo.GoString, ?cgoSupported:Bool, ?firstClass:Bool, ?broken:Bool) {
        if (goos != null) this.goos = goos;
        if (goarch != null) this.goarch = goarch;
        if (cgoSupported != null) this.cgoSupported = cgoSupported;
        if (firstClass != null) this.firstClass = firstClass;
        if (broken != null) this.broken = broken;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testGenerated___localname___listEntry_1146(goos, goarch, cgoSupported, firstClass, broken);
    }
}

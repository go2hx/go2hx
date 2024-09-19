package stdgo._internal.internal.platform;
@:structInit @:using(stdgo._internal.internal.platform.Platform_OSArch_static_extension.OSArch_static_extension) class OSArch {
    public var goos : stdgo.GoString = "";
    public var goarch : stdgo.GoString = "";
    public function new(?goos:stdgo.GoString, ?goarch:stdgo.GoString) {
        if (goos != null) this.goos = goos;
        if (goarch != null) this.goarch = goarch;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OSArch(goos, goarch);
    }
}

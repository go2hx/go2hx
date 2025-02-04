package stdgo._internal.internal.platform;
@:structInit @:using(stdgo._internal.internal.platform.Platform_osarch_static_extension.OSArch_static_extension) class OSArch {
    public var gOOS : stdgo.GoString = "";
    public var gOARCH : stdgo.GoString = "";
    public function new(?gOOS:stdgo.GoString, ?gOARCH:stdgo.GoString) {
        if (gOOS != null) this.gOOS = gOOS;
        if (gOARCH != null) this.gOARCH = gOARCH;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OSArch(gOOS, gOARCH);
    }
}

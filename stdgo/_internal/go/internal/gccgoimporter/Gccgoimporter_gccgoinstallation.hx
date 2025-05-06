package stdgo._internal.go.internal.gccgoimporter;
@:structInit @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation_static_extension.GccgoInstallation_static_extension) class GccgoInstallation {
    public var gccVersion : stdgo.GoString = "";
    public var targetTriple : stdgo.GoString = "";
    public var libPaths : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?gccVersion:stdgo.GoString, ?targetTriple:stdgo.GoString, ?libPaths:stdgo.Slice<stdgo.GoString>) {
        if (gccVersion != null) this.gccVersion = gccVersion;
        if (targetTriple != null) this.targetTriple = targetTriple;
        if (libPaths != null) this.libPaths = libPaths;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GccgoInstallation(gccVersion, targetTriple, libPaths);
    }
}

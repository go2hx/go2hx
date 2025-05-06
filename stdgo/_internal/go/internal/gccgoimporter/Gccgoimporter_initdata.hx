package stdgo._internal.go.internal.gccgoimporter;
@:structInit @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata_static_extension.InitData_static_extension) class InitData {
    public var priority : stdgo.GoInt = 0;
    public var inits : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit> = (null : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit>);
    public function new(?priority:stdgo.GoInt, ?inits:stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit>) {
        if (priority != null) this.priority = priority;
        if (inits != null) this.inits = inits;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InitData(priority, inits);
    }
}

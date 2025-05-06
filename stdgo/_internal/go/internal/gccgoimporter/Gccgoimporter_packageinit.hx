package stdgo._internal.go.internal.gccgoimporter;
@:structInit @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit_static_extension.PackageInit_static_extension) class PackageInit {
    public var name : stdgo.GoString = "";
    public var initFunc : stdgo.GoString = "";
    public var priority : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?initFunc:stdgo.GoString, ?priority:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (initFunc != null) this.initFunc = initFunc;
        if (priority != null) this.priority = priority;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PackageInit(name, initFunc, priority);
    }
}

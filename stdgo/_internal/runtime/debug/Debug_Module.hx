package stdgo._internal.runtime.debug;
@:structInit class Module {
    public var path : stdgo.GoString = "";
    public var version : stdgo.GoString = "";
    public var sum : stdgo.GoString = "";
    public var replace : stdgo.Ref<stdgo._internal.runtime.debug.Debug_Module.Module> = (null : stdgo.Ref<stdgo._internal.runtime.debug.Debug_Module.Module>);
    public function new(?path:stdgo.GoString, ?version:stdgo.GoString, ?sum:stdgo.GoString, ?replace:stdgo.Ref<stdgo._internal.runtime.debug.Debug_Module.Module>) {
        if (path != null) this.path = path;
        if (version != null) this.version = version;
        if (sum != null) this.sum = sum;
        if (replace != null) this.replace = replace;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Module(path, version, sum, replace);
    }
}

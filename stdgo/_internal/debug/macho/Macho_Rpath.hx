package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_Rpath_static_extension.Rpath_static_extension) class Rpath {
    @:embedded
    public var loadBytes : stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes = new stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes(0, 0);
    public var path : stdgo.GoString = "";
    public function new(?loadBytes:stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes, ?path:stdgo.GoString) {
        if (loadBytes != null) this.loadBytes = loadBytes;
        if (path != null) this.path = path;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function raw():stdgo.Slice<stdgo.GoUInt8> return this.loadBytes.raw();
    public function __copy__() {
        return new Rpath(loadBytes, path);
    }
}

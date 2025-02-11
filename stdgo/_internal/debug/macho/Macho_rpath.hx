package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_rpath_static_extension.Rpath_static_extension) class Rpath {
    @:embedded
    public var loadBytes : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes = (new stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes(0, 0) : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes);
    public var path : stdgo.GoString = "";
    public function new(?loadBytes:stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes, ?path:stdgo.GoString) {
        if (loadBytes != null) this.loadBytes = loadBytes;
        if (path != null) this.path = path;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var raw(get, never) : () -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_raw():() -> stdgo.Slice<stdgo.GoUInt8> return @:check31 (this.loadBytes ?? throw "null pointer dereference").raw;
    public function __copy__() {
        return new Rpath(loadBytes, path);
    }
}

package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_Dylib_static_extension.Dylib_static_extension) class Dylib {
    @:embedded
    public var loadBytes : stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes = new stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes(0, 0);
    public var name : stdgo.GoString = "";
    public var time : stdgo.GoUInt32 = 0;
    public var currentVersion : stdgo.GoUInt32 = 0;
    public var compatVersion : stdgo.GoUInt32 = 0;
    public function new(?loadBytes:stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes, ?name:stdgo.GoString, ?time:stdgo.GoUInt32, ?currentVersion:stdgo.GoUInt32, ?compatVersion:stdgo.GoUInt32) {
        if (loadBytes != null) this.loadBytes = loadBytes;
        if (name != null) this.name = name;
        if (time != null) this.time = time;
        if (currentVersion != null) this.currentVersion = currentVersion;
        if (compatVersion != null) this.compatVersion = compatVersion;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function raw():stdgo.Slice<stdgo.GoUInt8> return this.loadBytes.raw();
    public function __copy__() {
        return new Dylib(loadBytes, name, time, currentVersion, compatVersion);
    }
}

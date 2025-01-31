package stdgo._internal.debug.macho;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
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
    public var raw(get, never) : () -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_raw():() -> stdgo.Slice<stdgo.GoUInt8> return @:check31 (this.loadBytes ?? throw "null pointer dereference").raw;
    public function __copy__() {
        return new Dylib(loadBytes, name, time, currentVersion, compatVersion);
    }
}

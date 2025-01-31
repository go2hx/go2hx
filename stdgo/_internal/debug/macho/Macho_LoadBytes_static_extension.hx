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
@:keep @:allow(stdgo._internal.debug.macho.Macho.LoadBytes_asInterface) class LoadBytes_static_extension {
    @:keep
    @:tdfield
    static public function raw( _b:stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes = _b;
        return _b;
    }
}

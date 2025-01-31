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
@:keep @:allow(stdgo._internal.debug.macho.Macho.LoadCmd_asInterface) class LoadCmd_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd = _i;
        return stdgo._internal.debug.macho.Macho__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__cmdStrings._cmdStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd = _i;
        return stdgo._internal.debug.macho.Macho__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__cmdStrings._cmdStrings, false)?.__copy__();
    }
}

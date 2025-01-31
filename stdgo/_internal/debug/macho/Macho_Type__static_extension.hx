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
@:keep @:allow(stdgo._internal.debug.macho.Macho.Type__asInterface) class Type__static_extension {
    @:keep
    @:tdfield
    static public function goString( _t:stdgo._internal.debug.macho.Macho_Type_.Type_):stdgo.GoString {
        @:recv var _t:stdgo._internal.debug.macho.Macho_Type_.Type_ = _t;
        return stdgo._internal.debug.macho.Macho__stringName._stringName((_t : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__typeStrings._typeStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo._internal.debug.macho.Macho_Type_.Type_):stdgo.GoString {
        @:recv var _t:stdgo._internal.debug.macho.Macho_Type_.Type_ = _t;
        return stdgo._internal.debug.macho.Macho__stringName._stringName((_t : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__typeStrings._typeStrings, false)?.__copy__();
    }
}

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
@:keep @:allow(stdgo._internal.debug.macho.Macho.Symtab_asInterface) class Symtab_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function raw( __self__:stdgo._internal.debug.macho.Macho_Symtab.Symtab):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.raw();
}

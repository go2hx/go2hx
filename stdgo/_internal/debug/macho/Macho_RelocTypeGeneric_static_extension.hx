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
@:keep @:allow(stdgo._internal.debug.macho.Macho.RelocTypeGeneric_asInterface) class RelocTypeGeneric_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric = _i;
        if (((_i < (0 : stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric) : Bool) || (_i >= ((6 : stdgo.GoInt) : stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric) : Bool) : Bool)) {
            return ((("RelocTypeGeneric(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("GENERIC_RELOC_VANILLAGENERIC_RELOC_PAIRGENERIC_RELOC_SECTDIFFGENERIC_RELOC_PB_LA_PTRGENERIC_RELOC_LOCAL_SECTDIFFGENERIC_RELOC_TLV" : stdgo.GoString).__slice__(stdgo._internal.debug.macho.Macho___RelocTypeGeneric_index.__RelocTypeGeneric_index[(_i : stdgo.GoInt)], stdgo._internal.debug.macho.Macho___RelocTypeGeneric_index.__RelocTypeGeneric_index[((_i + (1 : stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric) : stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function goString( _r:stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric):stdgo.GoString {
        @:recv var _r:stdgo._internal.debug.macho.Macho_RelocTypeGeneric.RelocTypeGeneric = _r;
        return (("macho." : stdgo.GoString) + (_r.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

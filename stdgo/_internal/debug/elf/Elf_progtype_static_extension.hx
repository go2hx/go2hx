package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.ProgType_asInterface) class ProgType_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_progtype.ProgType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_progtype.ProgType = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__ptstrings._ptStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_progtype.ProgType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_progtype.ProgType = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__ptstrings._ptStrings, false)?.__copy__();
    }
}

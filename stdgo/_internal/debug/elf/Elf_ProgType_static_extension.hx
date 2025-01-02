package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.ProgType_asInterface) class ProgType_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_ProgType.ProgType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_ProgType.ProgType = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__ptStrings._ptStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_ProgType.ProgType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_ProgType.ProgType = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__ptStrings._ptStrings, false)?.__copy__();
    }
}

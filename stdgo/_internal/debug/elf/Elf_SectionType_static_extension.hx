package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.SectionType_asInterface) class SectionType_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_SectionType.SectionType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_SectionType.SectionType = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__shtStrings._shtStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_SectionType.SectionType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_SectionType.SectionType = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__shtStrings._shtStrings, false)?.__copy__();
    }
}
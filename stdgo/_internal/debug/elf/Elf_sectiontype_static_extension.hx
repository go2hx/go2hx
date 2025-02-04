package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.SectionType_asInterface) class SectionType_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_sectiontype.SectionType = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__shtstrings._shtStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_sectiontype.SectionType = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__shtstrings._shtStrings, false)?.__copy__();
    }
}

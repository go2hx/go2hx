package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.SectionFlag_asInterface) class SectionFlag_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_sectionflag.SectionFlag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_sectionflag.SectionFlag = _i;
        return stdgo._internal.debug.elf.Elf__flagname._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__shfstrings._shfStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_sectionflag.SectionFlag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_sectionflag.SectionFlag = _i;
        return stdgo._internal.debug.elf.Elf__flagname._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__shfstrings._shfStrings, false)?.__copy__();
    }
}

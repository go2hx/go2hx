package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.SectionFlag_asInterface) class SectionFlag_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag = _i;
        return stdgo._internal.debug.elf.Elf__flagName._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__shfStrings._shfStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_SectionFlag.SectionFlag = _i;
        return stdgo._internal.debug.elf.Elf__flagName._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__shfStrings._shfStrings, false)?.__copy__();
    }
}

package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.SectionIndex_asInterface) class SectionIndex_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__shnStrings._shnStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__shnStrings._shnStrings, false)?.__copy__();
    }
}

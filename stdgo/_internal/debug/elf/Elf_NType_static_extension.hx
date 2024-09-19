package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.NType_asInterface) class NType_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_NType.NType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_NType.NType = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__ntypeStrings._ntypeStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_NType.NType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_NType.NType = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__ntypeStrings._ntypeStrings, false)?.__copy__();
    }
}

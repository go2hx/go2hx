package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.DynFlag_asInterface) class DynFlag_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_DynFlag.DynFlag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_DynFlag.DynFlag = _i;
        return stdgo._internal.debug.elf.Elf__flagName._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__dflagStrings._dflagStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_DynFlag.DynFlag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_DynFlag.DynFlag = _i;
        return stdgo._internal.debug.elf.Elf__flagName._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__dflagStrings._dflagStrings, false)?.__copy__();
    }
}

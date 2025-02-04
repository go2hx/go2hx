package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.DynFlag_asInterface) class DynFlag_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_dynflag.DynFlag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_dynflag.DynFlag = _i;
        return stdgo._internal.debug.elf.Elf__flagname._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__dflagstrings._dflagStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_dynflag.DynFlag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_dynflag.DynFlag = _i;
        return stdgo._internal.debug.elf.Elf__flagname._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__dflagstrings._dflagStrings, false)?.__copy__();
    }
}

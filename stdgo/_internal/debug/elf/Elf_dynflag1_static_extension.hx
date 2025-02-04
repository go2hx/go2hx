package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.DynFlag1_asInterface) class DynFlag1_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_dynflag1.DynFlag1):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_dynflag1.DynFlag1 = _i;
        return stdgo._internal.debug.elf.Elf__flagname._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__dflag1strings._dflag1Strings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_dynflag1.DynFlag1):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_dynflag1.DynFlag1 = _i;
        return stdgo._internal.debug.elf.Elf__flagname._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__dflag1strings._dflag1Strings, false)?.__copy__();
    }
}

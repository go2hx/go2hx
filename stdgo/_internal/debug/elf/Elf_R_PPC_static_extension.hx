package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_PPC_asInterface) class R_PPC_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_R_PPC.R_PPC):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_PPC.R_PPC = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rppcStrings._rppcStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_R_PPC.R_PPC):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_PPC.R_PPC = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rppcStrings._rppcStrings, false)?.__copy__();
    }
}

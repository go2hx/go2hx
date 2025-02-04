package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_PPC64_asInterface) class R_PPC64_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_r_ppc64.R_PPC64):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_ppc64.R_PPC64 = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rppc64strings._rppc64Strings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_r_ppc64.R_PPC64):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_ppc64.R_PPC64 = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rppc64strings._rppc64Strings, false)?.__copy__();
    }
}

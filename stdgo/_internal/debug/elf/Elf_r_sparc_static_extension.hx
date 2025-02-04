package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_SPARC_asInterface) class R_SPARC_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rsparcstrings._rsparcStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_sparc.R_SPARC = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rsparcstrings._rsparcStrings, false)?.__copy__();
    }
}

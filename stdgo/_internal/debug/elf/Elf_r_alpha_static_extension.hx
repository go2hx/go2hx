package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_ALPHA_asInterface) class R_ALPHA_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_r_alpha.R_ALPHA):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_alpha.R_ALPHA = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__ralphastrings._ralphaStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_r_alpha.R_ALPHA):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_alpha.R_ALPHA = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__ralphastrings._ralphaStrings, false)?.__copy__();
    }
}

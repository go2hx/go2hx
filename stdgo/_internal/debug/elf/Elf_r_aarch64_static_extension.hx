package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_AARCH64_asInterface) class R_AARCH64_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_r_aarch64.R_AARCH64):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_aarch64.R_AARCH64 = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__raarch64strings._raarch64Strings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_r_aarch64.R_AARCH64):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_aarch64.R_AARCH64 = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__raarch64strings._raarch64Strings, false)?.__copy__();
    }
}

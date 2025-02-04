package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_RISCV_asInterface) class R_RISCV_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_r_riscv.R_RISCV):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_riscv.R_RISCV = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rriscvstrings._rriscvStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_r_riscv.R_RISCV):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_riscv.R_RISCV = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rriscvstrings._rriscvStrings, false)?.__copy__();
    }
}

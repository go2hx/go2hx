package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_MIPS_asInterface) class R_MIPS_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rmipsStrings._rmipsStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_MIPS.R_MIPS = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rmipsStrings._rmipsStrings, false)?.__copy__();
    }
}

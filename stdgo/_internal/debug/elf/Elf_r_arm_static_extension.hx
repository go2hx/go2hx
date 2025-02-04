package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_ARM_asInterface) class R_ARM_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_r_arm.R_ARM):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_arm.R_ARM = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rarmstrings._rarmStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_r_arm.R_ARM):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_r_arm.R_ARM = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rarmstrings._rarmStrings, false)?.__copy__();
    }
}

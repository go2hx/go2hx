package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_X86_64_asInterface) class R_X86_64_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_R_X86_64.R_X86_64):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_X86_64.R_X86_64 = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rx86_64Strings._rx86_64Strings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_R_X86_64.R_X86_64):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_X86_64.R_X86_64 = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rx86_64Strings._rx86_64Strings, false)?.__copy__();
    }
}

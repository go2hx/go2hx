package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_LARCH_asInterface) class R_LARCH_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_R_LARCH.R_LARCH):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_LARCH.R_LARCH = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rlarchStrings._rlarchStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_R_LARCH.R_LARCH):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_LARCH.R_LARCH = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__rlarchStrings._rlarchStrings, false)?.__copy__();
    }
}

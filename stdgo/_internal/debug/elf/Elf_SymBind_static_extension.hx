package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.SymBind_asInterface) class SymBind_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_SymBind.SymBind):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_SymBind.SymBind = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__stbStrings._stbStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_SymBind.SymBind):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_SymBind.SymBind = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__stbStrings._stbStrings, false)?.__copy__();
    }
}
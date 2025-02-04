package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.SymBind_asInterface) class SymBind_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_symbind.SymBind):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_symbind.SymBind = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__stbstrings._stbStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_symbind.SymBind):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_symbind.SymBind = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__stbstrings._stbStrings, false)?.__copy__();
    }
}

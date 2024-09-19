package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.SymType_asInterface) class SymType_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_SymType.SymType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_SymType.SymType = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__sttStrings._sttStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_SymType.SymType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_SymType.SymType = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__sttStrings._sttStrings, false)?.__copy__();
    }
}

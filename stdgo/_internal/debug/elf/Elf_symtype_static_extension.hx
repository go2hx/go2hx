package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.SymType_asInterface) class SymType_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_symtype.SymType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_symtype.SymType = _i;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L1306"
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__sttstrings._sttStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_symtype.SymType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_symtype.SymType = _i;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L1305"
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__sttstrings._sttStrings, false)?.__copy__();
    }
}

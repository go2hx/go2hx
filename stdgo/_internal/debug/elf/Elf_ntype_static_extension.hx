package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.NType_asInterface) class NType_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_ntype.NType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_ntype.NType = _i;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L1246"
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__ntypestrings._ntypeStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_ntype.NType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_ntype.NType = _i;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L1245"
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__ntypestrings._ntypeStrings, false)?.__copy__();
    }
}

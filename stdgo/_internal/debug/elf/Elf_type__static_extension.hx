package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.Type__asInterface) class Type__static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_type_.Type_):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_type_.Type_ = _i;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L199"
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__typestrings._typeStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_type_.Type_):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_type_.Type_ = _i;
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L198"
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__typestrings._typeStrings, false)?.__copy__();
    }
}

package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.Type__asInterface) class Type__static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_Type_.Type_):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_Type_.Type_ = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__typeStrings._typeStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_Type_.Type_):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_Type_.Type_ = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__typeStrings._typeStrings, false)?.__copy__();
    }
}
package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.Class__asInterface) class Class__static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_class_.Class_):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_class_.Class_ = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__classstrings._classStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_class_.Class_):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_class_.Class_ = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__classstrings._classStrings, false)?.__copy__();
    }
}

package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.DynTag_asInterface) class DynTag_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_DynTag.DynTag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_DynTag.DynTag = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__dtStrings._dtStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_DynTag.DynTag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_DynTag.DynTag = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__dtStrings._dtStrings, false)?.__copy__();
    }
}
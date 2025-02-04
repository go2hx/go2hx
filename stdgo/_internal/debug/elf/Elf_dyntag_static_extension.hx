package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.DynTag_asInterface) class DynTag_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_dyntag.DynTag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_dyntag.DynTag = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__dtstrings._dtStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_dyntag.DynTag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_dyntag.DynTag = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__dtstrings._dtStrings, false)?.__copy__();
    }
}

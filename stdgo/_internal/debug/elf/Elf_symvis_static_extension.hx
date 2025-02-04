package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.SymVis_asInterface) class SymVis_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_symvis.SymVis):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_symvis.SymVis = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__stvstrings._stvStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_symvis.SymVis):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_symvis.SymVis = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__stvstrings._stvStrings, false)?.__copy__();
    }
}

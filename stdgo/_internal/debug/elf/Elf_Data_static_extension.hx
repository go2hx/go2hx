package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.Data_asInterface) class Data_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_Data.Data):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_Data.Data = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__dataStrings._dataStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_Data.Data):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_Data.Data = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__dataStrings._dataStrings, false)?.__copy__();
    }
}

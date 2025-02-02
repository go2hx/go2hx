package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.OSABI_asInterface) class OSABI_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_OSABI.OSABI):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_OSABI.OSABI = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__osabiStrings._osabiStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_OSABI.OSABI):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_OSABI.OSABI = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__osabiStrings._osabiStrings, false)?.__copy__();
    }
}

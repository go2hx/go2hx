package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.R_386_asInterface) class R_386_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_R_386.R_386):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_386.R_386 = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__r386Strings._r386Strings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_R_386.R_386):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_R_386.R_386 = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__r386Strings._r386Strings, false)?.__copy__();
    }
}
package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.Version_asInterface) class Version_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_Version.Version):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_Version.Version = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__versionStrings._versionStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_Version.Version):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_Version.Version = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__versionStrings._versionStrings, false)?.__copy__();
    }
}

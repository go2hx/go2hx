package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.Version_asInterface) class Version_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_version.Version):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_version.Version = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__versionstrings._versionStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_version.Version):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_version.Version = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__versionstrings._versionStrings, false)?.__copy__();
    }
}

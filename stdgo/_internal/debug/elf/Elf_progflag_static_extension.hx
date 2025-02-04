package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.ProgFlag_asInterface) class ProgFlag_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_progflag.ProgFlag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_progflag.ProgFlag = _i;
        return stdgo._internal.debug.elf.Elf__flagname._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__pfstrings._pfStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_progflag.ProgFlag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_progflag.ProgFlag = _i;
        return stdgo._internal.debug.elf.Elf__flagname._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__pfstrings._pfStrings, false)?.__copy__();
    }
}

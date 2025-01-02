package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.ProgFlag_asInterface) class ProgFlag_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_ProgFlag.ProgFlag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_ProgFlag.ProgFlag = _i;
        return stdgo._internal.debug.elf.Elf__flagName._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__pfStrings._pfStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_ProgFlag.ProgFlag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_ProgFlag.ProgFlag = _i;
        return stdgo._internal.debug.elf.Elf__flagName._flagName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__pfStrings._pfStrings, false)?.__copy__();
    }
}

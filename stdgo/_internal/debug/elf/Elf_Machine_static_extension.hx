package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.Machine_asInterface) class Machine_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_Machine.Machine):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_Machine.Machine = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__machineStrings._machineStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_Machine.Machine):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_Machine.Machine = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__machineStrings._machineStrings, false)?.__copy__();
    }
}

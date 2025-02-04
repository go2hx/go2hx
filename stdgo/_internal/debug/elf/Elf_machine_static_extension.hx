package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.Machine_asInterface) class Machine_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_machine.Machine):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_machine.Machine = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__machinestrings._machineStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_machine.Machine):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_machine.Machine = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__machinestrings._machineStrings, false)?.__copy__();
    }
}

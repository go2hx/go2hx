package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.Cpu_asInterface) class Cpu_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.macho.Macho_cpu.Cpu):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_cpu.Cpu = _i;
        return stdgo._internal.debug.macho.Macho__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__cpustrings._cpuStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.macho.Macho_cpu.Cpu):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_cpu.Cpu = _i;
        return stdgo._internal.debug.macho.Macho__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__cpustrings._cpuStrings, false)?.__copy__();
    }
}

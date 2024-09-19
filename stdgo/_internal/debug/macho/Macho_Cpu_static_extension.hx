package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.Cpu_asInterface) class Cpu_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.macho.Macho_Cpu.Cpu):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_Cpu.Cpu = _i;
        return stdgo._internal.debug.macho.Macho__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__cpuStrings._cpuStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.macho.Macho_Cpu.Cpu):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_Cpu.Cpu = _i;
        return stdgo._internal.debug.macho.Macho__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__cpuStrings._cpuStrings, false)?.__copy__();
    }
}

package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.LoadCmd_asInterface) class LoadCmd_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd = _i;
        return stdgo._internal.debug.macho.Macho__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__cmdstrings._cmdStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd = _i;
        return stdgo._internal.debug.macho.Macho__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__cmdstrings._cmdStrings, false)?.__copy__();
    }
}

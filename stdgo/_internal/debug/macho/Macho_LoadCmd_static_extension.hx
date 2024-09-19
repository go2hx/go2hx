package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.LoadCmd_asInterface) class LoadCmd_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd = _i;
        return stdgo._internal.debug.macho.Macho__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__cmdStrings._cmdStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd = _i;
        return stdgo._internal.debug.macho.Macho__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__cmdStrings._cmdStrings, false)?.__copy__();
    }
}

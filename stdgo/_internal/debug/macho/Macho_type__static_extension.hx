package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.Type__asInterface) class Type__static_extension {
    @:keep
    @:tdfield
    static public function goString( _t:stdgo._internal.debug.macho.Macho_type_.Type_):stdgo.GoString {
        @:recv var _t:stdgo._internal.debug.macho.Macho_type_.Type_ = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/macho/macho.go#L57"
        return stdgo._internal.debug.macho.Macho__stringname._stringName((_t : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__typestrings._typeStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo._internal.debug.macho.Macho_type_.Type_):stdgo.GoString {
        @:recv var _t:stdgo._internal.debug.macho.Macho_type_.Type_ = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/macho/macho.go#L56"
        return stdgo._internal.debug.macho.Macho__stringname._stringName((_t : stdgo.GoUInt32), stdgo._internal.debug.macho.Macho__typestrings._typeStrings, false)?.__copy__();
    }
}

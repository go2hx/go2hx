package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_funcValue_asInterface) class T_funcValue_static_extension {
    @:keep
    static public function string( _f:stdgo._internal.flag.Flag_T_funcValue.T_funcValue):stdgo.GoString {
        @:recv var _f:stdgo._internal.flag.Flag_T_funcValue.T_funcValue = _f;
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function set( _f:stdgo._internal.flag.Flag_T_funcValue.T_funcValue, _s:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo._internal.flag.Flag_T_funcValue.T_funcValue = _f;
        return _f(_s?.__copy__());
    }
}
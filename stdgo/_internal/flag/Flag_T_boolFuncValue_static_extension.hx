package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_boolFuncValue_asInterface) class T_boolFuncValue_static_extension {
    @:keep
    static public function isBoolFlag( _f:stdgo._internal.flag.Flag_T_boolFuncValue.T_boolFuncValue):Bool {
        @:recv var _f:stdgo._internal.flag.Flag_T_boolFuncValue.T_boolFuncValue = _f;
        return true;
    }
    @:keep
    static public function string( _f:stdgo._internal.flag.Flag_T_boolFuncValue.T_boolFuncValue):stdgo.GoString {
        @:recv var _f:stdgo._internal.flag.Flag_T_boolFuncValue.T_boolFuncValue = _f;
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function set( _f:stdgo._internal.flag.Flag_T_boolFuncValue.T_boolFuncValue, _s:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo._internal.flag.Flag_T_boolFuncValue.T_boolFuncValue = _f;
        return _f(_s?.__copy__());
    }
}
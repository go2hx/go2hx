package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_boolFuncValue_asInterface) class T_boolFuncValue_static_extension {
    @:keep
    @:tdfield
    static public function isBoolFlag( _f:stdgo._internal.flag.Flag_t_boolfuncvalue.T_boolFuncValue):Bool {
        @:recv var _f:stdgo._internal.flag.Flag_t_boolfuncvalue.T_boolFuncValue = _f;
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L348"
        return true;
    }
    @:keep
    @:tdfield
    static public function string( _f:stdgo._internal.flag.Flag_t_boolfuncvalue.T_boolFuncValue):stdgo.GoString {
        @:recv var _f:stdgo._internal.flag.Flag_t_boolfuncvalue.T_boolFuncValue = _f;
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L346"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function set( _f:stdgo._internal.flag.Flag_t_boolfuncvalue.T_boolFuncValue, _s:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo._internal.flag.Flag_t_boolfuncvalue.T_boolFuncValue = _f;
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L344"
        return _f(_s?.__copy__());
    }
}

package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_boolValue_asInterface) class T_boolValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function isBoolFlag( _b:stdgo.Pointer<stdgo._internal.flag.Flag_t_boolvalue.T_boolValue>):Bool {
        return true;
    }
    @:keep
    @:pointer
    @:tdfield
    static public function string( _b:stdgo.Pointer<stdgo._internal.flag.Flag_t_boolvalue.T_boolValue>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_formatbool.formatBool((_b.value : Bool))?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _b:stdgo.Pointer<stdgo._internal.flag.Flag_t_boolvalue.T_boolValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_b.value : Bool));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _b:stdgo.Pointer<stdgo._internal.flag.Flag_t_boolvalue.T_boolValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_parsebool.parseBool(_s?.__copy__()), _v:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__errparse._errParse;
        };
        _b.value = (_v : stdgo._internal.flag.Flag_t_boolvalue.T_boolValue);
        return _err;
    }
}

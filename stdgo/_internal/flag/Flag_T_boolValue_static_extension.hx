package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_boolValue_asInterface) class T_boolValue_static_extension {
    @:keep
    @:pointer
    static public function isBoolFlag(____:stdgo._internal.flag.Flag_T_boolValue.T_boolValue,  _b:stdgo.Pointer<stdgo._internal.flag.Flag_T_boolValue.T_boolValue>):Bool {
        return true;
    }
    @:keep
    @:pointer
    static public function string(____:stdgo._internal.flag.Flag_T_boolValue.T_boolValue,  _b:stdgo.Pointer<stdgo._internal.flag.Flag_T_boolValue.T_boolValue>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_formatBool.formatBool((_b.value : Bool))?.__copy__();
    }
    @:keep
    @:pointer
    static public function get(____:stdgo._internal.flag.Flag_T_boolValue.T_boolValue,  _b:stdgo.Pointer<stdgo._internal.flag.Flag_T_boolValue.T_boolValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_b.value : Bool));
    }
    @:keep
    @:pointer
    static public function set(____:stdgo._internal.flag.Flag_T_boolValue.T_boolValue,  _b:stdgo.Pointer<stdgo._internal.flag.Flag_T_boolValue.T_boolValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_parseBool.parseBool(_s?.__copy__()), _v:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__errParse._errParse;
        };
        _b.value = (_v : stdgo._internal.flag.Flag_T_boolValue.T_boolValue);
        return _err;
    }
}

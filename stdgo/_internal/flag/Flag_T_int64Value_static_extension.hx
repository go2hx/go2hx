package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_int64Value_asInterface) class T_int64Value_static_extension {
    @:keep
    @:pointer
    static public function string(____:stdgo._internal.flag.Flag_T_int64Value.T_int64Value,  _i:stdgo.Pointer<stdgo._internal.flag.Flag_T_int64Value.T_int64Value>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_formatInt.formatInt((_i.value : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    static public function get(____:stdgo._internal.flag.Flag_T_int64Value.T_int64Value,  _i:stdgo.Pointer<stdgo._internal.flag.Flag_T_int64Value.T_int64Value>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_i.value : stdgo.GoInt64));
    }
    @:keep
    @:pointer
    static public function set(____:stdgo._internal.flag.Flag_T_int64Value.T_int64Value,  _i:stdgo.Pointer<stdgo._internal.flag.Flag_T_int64Value.T_int64Value>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _v:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__numError._numError(_err);
        };
        _i.value = (_v : stdgo._internal.flag.Flag_T_int64Value.T_int64Value);
        return _err;
    }
}
package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_float64Value_asInterface) class T_float64Value_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _f:stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_formatfloat.formatFloat((_f.value : stdgo.GoFloat64), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _f:stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_f.value : stdgo.GoFloat64));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _f:stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_s?.__copy__(), (64 : stdgo.GoInt)), _v:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__numerror._numError(_err);
        };
        _f.value = (_v : stdgo._internal.flag.Flag_t_float64value.T_float64Value);
        return _err;
    }
}

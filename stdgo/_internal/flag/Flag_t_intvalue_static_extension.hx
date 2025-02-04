package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_intValue_asInterface) class T_intValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _i:stdgo.Pointer<stdgo._internal.flag.Flag_t_intvalue.T_intValue>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_itoa.itoa((_i.value : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _i:stdgo.Pointer<stdgo._internal.flag.Flag_t_intvalue.T_intValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_i.value : stdgo.GoInt));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _i:stdgo.Pointer<stdgo._internal.flag.Flag_t_intvalue.T_intValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (0 : stdgo.GoInt), (32 : stdgo.GoInt)), _v:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__numerror._numError(_err);
        };
        _i.value = (_v : stdgo._internal.flag.Flag_t_intvalue.T_intValue);
        return _err;
    }
}

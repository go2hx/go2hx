package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_uint64Value_asInterface) class T_uint64Value_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _i:stdgo.Pointer<stdgo._internal.flag.Flag_T_uint64Value.T_uint64Value>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv_formatUint.formatUint((_i.value : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _i:stdgo.Pointer<stdgo._internal.flag.Flag_T_uint64Value.T_uint64Value>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_i.value : stdgo.GoUInt64));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _i:stdgo.Pointer<stdgo._internal.flag.Flag_T_uint64Value.T_uint64Value>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _v:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__numError._numError(_err);
        };
        _i.value = (_v : stdgo._internal.flag.Flag_T_uint64Value.T_uint64Value);
        return _err;
    }
}

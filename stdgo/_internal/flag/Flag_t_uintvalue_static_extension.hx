package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_uintValue_asInterface) class T_uintValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _i:stdgo.Pointer<stdgo._internal.flag.Flag_t_uintvalue.T_uintValue>):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L216"
        return stdgo._internal.strconv.Strconv_formatuint.formatUint((_i.value : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _i:stdgo.Pointer<stdgo._internal.flag.Flag_t_uintvalue.T_uintValue>):stdgo.AnyInterface {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L214"
        return stdgo.Go.toInterface((_i.value : stdgo.GoUInt));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _i:stdgo.Pointer<stdgo._internal.flag.Flag_t_uintvalue.T_uintValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s?.__copy__(), (0 : stdgo.GoInt), (32 : stdgo.GoInt)), _v:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L207"
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__numerror._numError(_err);
        };
        _i.value = (_v : stdgo._internal.flag.Flag_t_uintvalue.T_uintValue);
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L211"
        return _err;
    }
}

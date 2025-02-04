package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_u8marshal_asInterface) class T_u8marshal_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalText( _u8:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_u8marshal.T_u8marshal>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if (!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_b, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(117 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))) {
            return stdgo._internal.encoding.json.Json__errmissingu8prefix._errMissingU8Prefix;
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(((_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _u8.value = (_n : stdgo._internal.encoding.json.Json_t_u8marshal.T_u8marshal);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _u8:stdgo._internal.encoding.json.Json_t_u8marshal.T_u8marshal):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _u8:stdgo._internal.encoding.json.Json_t_u8marshal.T_u8marshal = _u8;
        return { _0 : (stdgo._internal.fmt.Fmt_sprintf.sprintf(("u%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_u8))) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}

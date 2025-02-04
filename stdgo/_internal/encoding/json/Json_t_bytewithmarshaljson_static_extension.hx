package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_byteWithMarshalJSON_asInterface) class T_byteWithMarshalJSON_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalJSON( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_bytewithmarshaljson.T_byteWithMarshalJSON>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        if (((((_data.length) != ((5 : stdgo.GoInt)) || _data[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8)) : Bool) || _data[(1 : stdgo.GoInt)] != ((90 : stdgo.GoUInt8)) : Bool) || (_data[(4 : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("bad quoted string" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(((_data.__slice__((2 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), (16 : stdgo.GoInt), (8 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("bad hex" : stdgo.GoString));
        };
        _b.value = (_i : stdgo._internal.encoding.json.Json_t_bytewithmarshaljson.T_byteWithMarshalJSON);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalJSON( _b:stdgo._internal.encoding.json.Json_t_bytewithmarshaljson.T_byteWithMarshalJSON):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo._internal.encoding.json.Json_t_bytewithmarshaljson.T_byteWithMarshalJSON = _b;
        return { _0 : (stdgo._internal.fmt.Fmt_sprintf.sprintf(("\"Z%.2x\"" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoUInt8))) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}

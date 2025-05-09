package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_intWithMarshalText_asInterface) class T_intWithMarshalText_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalText( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_intwithmarshaltext.T_intWithMarshalText>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L365"
        if (((_data.length != (3 : stdgo.GoInt)) || (_data[(0 : stdgo.GoInt)] != (90 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L366"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("bad quoted string" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(((_data.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), (16 : stdgo.GoInt), (8 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L369"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L370"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("bad hex" : stdgo.GoString));
        };
        _b.value = (_i : stdgo._internal.encoding.json.Json_t_intwithmarshaltext.T_intWithMarshalText);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L373"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _b:stdgo._internal.encoding.json.Json_t_intwithmarshaltext.T_intWithMarshalText):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo._internal.encoding.json.Json_t_intwithmarshaltext.T_intWithMarshalText = _b;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L361"
        return { _0 : (stdgo._internal.fmt.Fmt_sprintf.sprintf(("Z%.2x" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoInt))) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}

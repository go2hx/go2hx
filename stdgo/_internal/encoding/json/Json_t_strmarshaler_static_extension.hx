package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_strMarshaler_asInterface) class T_strMarshaler_static_extension {
    @:keep
    @:tdfield
    static public function marshalJSON( _s:stdgo._internal.encoding.json.Json_t_strmarshaler.T_strMarshaler):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo._internal.encoding.json.Json_t_strmarshaler.T_strMarshaler = _s;
        return { _0 : (_s : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}

package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_unmarshaler_asInterface) class T_unmarshaler_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalJSON( _u:stdgo.Ref<stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _u:stdgo.Ref<stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler> = _u;
        {
            var __tmp__ = (new stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler(true) : stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler);
            var x = (_u : stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler);
            x.t = __tmp__?.t;
        };
        return (null : stdgo.Error);
    }
}

package stdgo.encoding.json;
class T_unmarshaler_static_extension {
    static public function unmarshalJSON(_u:T_unmarshaler, _b:Array<std.UInt>):stdgo.Error {
        final _u = (_u : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_unmarshaler_static_extension.T_unmarshaler_static_extension.unmarshalJSON(_u, _b);
    }
}

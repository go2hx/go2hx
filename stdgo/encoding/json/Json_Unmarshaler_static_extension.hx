package stdgo.encoding.json;
class Unmarshaler_static_extension {
    static public function unmarshalJSON(t:stdgo._internal.encoding.json.Json_Unmarshaler.Unmarshaler, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_Unmarshaler_static_extension.Unmarshaler_static_extension.unmarshalJSON(t, _0);
    }
}

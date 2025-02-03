package stdgo.encoding.json;
class MustNotUnmarshalJSON_static_extension {
    static public function unmarshalJSON(_x:MustNotUnmarshalJSON, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON_static_extension.MustNotUnmarshalJSON_static_extension.unmarshalJSON(_x, _data);
    }
}

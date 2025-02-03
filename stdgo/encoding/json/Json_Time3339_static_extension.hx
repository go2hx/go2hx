package stdgo.encoding.json;
class Time3339_static_extension {
    static public function unmarshalJSON(_t:Time3339, _b:Array<std.UInt>):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.encoding.json.Json_Time3339.Time3339>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_Time3339_static_extension.Time3339_static_extension.unmarshalJSON(_t, _b);
    }
}

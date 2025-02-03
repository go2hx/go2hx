package stdgo.encoding.json;
class SS_static_extension {
    static public function unmarshalJSON(_:stdgo.Pointer<SS>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_SS_static_extension.SS_static_extension.unmarshalJSON(_, _data);
    }
}

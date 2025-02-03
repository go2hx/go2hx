package stdgo.encoding.json;
class T_unmarshalPanic_static_extension {
    static public function unmarshalJSON(_:T_unmarshalPanic, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_unmarshalPanic_static_extension.T_unmarshalPanic_static_extension.unmarshalJSON(_, _0);
    }
}

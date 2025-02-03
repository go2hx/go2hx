package stdgo.encoding.json;
class Ref_static_extension {
    static public function unmarshalJSON(_r:stdgo.Pointer<Ref>, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_Ref_static_extension.Ref_static_extension.unmarshalJSON(_r, _0);
    }
    static public function marshalJSON(_:stdgo.Pointer<Ref>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Ref_static_extension.Ref_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

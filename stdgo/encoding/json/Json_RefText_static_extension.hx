package stdgo.encoding.json;
class RefText_static_extension {
    static public function unmarshalText(_r:stdgo.Pointer<RefText>, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_RefText_static_extension.RefText_static_extension.unmarshalText(_r, _0);
    }
    static public function marshalText(_:stdgo.Pointer<RefText>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_RefText_static_extension.RefText_static_extension.marshalText(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

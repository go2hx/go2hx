package stdgo.encoding.json;
class T_u8marshal_static_extension {
    static public function unmarshalText(_u8:stdgo.Pointer<T_u8marshal>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_u8marshal_static_extension.T_u8marshal_static_extension.unmarshalText(_u8, _b);
    }
    static public function marshalText(_u8:T_u8marshal):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_u8marshal_static_extension.T_u8marshal_static_extension.marshalText(_u8);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

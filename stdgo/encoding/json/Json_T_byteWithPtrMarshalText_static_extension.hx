package stdgo.encoding.json;
class T_byteWithPtrMarshalText_static_extension {
    static public function unmarshalText(_b:stdgo.Pointer<T_byteWithPtrMarshalText>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalText_static_extension.T_byteWithPtrMarshalText_static_extension.unmarshalText(_b, _data);
    }
    static public function marshalText(_b:stdgo.Pointer<T_byteWithPtrMarshalText>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalText_static_extension.T_byteWithPtrMarshalText_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

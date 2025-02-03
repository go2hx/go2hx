package stdgo.encoding.json;
class T_intWithPtrMarshalJSON_static_extension {
    static public function unmarshalJSON(_b:stdgo.Pointer<T_intWithPtrMarshalJSON>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON_static_extension.T_intWithPtrMarshalJSON_static_extension.unmarshalJSON(_b, _data);
    }
    static public function marshalJSON(_b:stdgo.Pointer<T_intWithPtrMarshalJSON>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON_static_extension.T_intWithPtrMarshalJSON_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

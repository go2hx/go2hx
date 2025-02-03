package stdgo.encoding.json;
class T_strPtrMarshaler_static_extension {
    static public function marshalJSON(_s:stdgo.Pointer<T_strPtrMarshaler>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_strPtrMarshaler_static_extension.T_strPtrMarshaler_static_extension.marshalJSON(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

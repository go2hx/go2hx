package stdgo.encoding.json;
class T_nilTextMarshaler_static_extension {
    static public function marshalText(_nm:stdgo.Pointer<T_nilTextMarshaler>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_nilTextMarshaler_static_extension.T_nilTextMarshaler_static_extension.marshalText(_nm);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

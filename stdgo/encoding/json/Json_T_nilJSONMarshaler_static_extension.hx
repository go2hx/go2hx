package stdgo.encoding.json;
class T_nilJSONMarshaler_static_extension {
    static public function marshalJSON(_nm:stdgo.Pointer<T_nilJSONMarshaler>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_nilJSONMarshaler_static_extension.T_nilJSONMarshaler_static_extension.marshalJSON(_nm);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

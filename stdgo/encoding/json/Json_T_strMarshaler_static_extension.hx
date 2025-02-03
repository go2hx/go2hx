package stdgo.encoding.json;
class T_strMarshaler_static_extension {
    static public function marshalJSON(_s:T_strMarshaler):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_strMarshaler_static_extension.T_strMarshaler_static_extension.marshalJSON(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

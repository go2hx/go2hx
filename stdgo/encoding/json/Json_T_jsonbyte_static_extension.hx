package stdgo.encoding.json;
class T_jsonbyte_static_extension {
    static public function marshalJSON(_b:T_jsonbyte):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_jsonbyte_static_extension.T_jsonbyte_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

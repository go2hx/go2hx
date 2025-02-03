package stdgo.encoding.json;
class T_jsonint_static_extension {
    static public function marshalJSON(_i:T_jsonint):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_jsonint_static_extension.T_jsonint_static_extension.marshalJSON(_i);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

package stdgo.encoding.json;
class C_static_extension {
    static public function marshalJSON(_:C):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_C_static_extension.C_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

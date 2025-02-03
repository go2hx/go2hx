package stdgo.encoding.json;
class Marshaler_static_extension {
    static public function marshalJSON(t:stdgo._internal.encoding.json.Json_Marshaler.Marshaler):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Marshaler_static_extension.Marshaler_static_extension.marshalJSON(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

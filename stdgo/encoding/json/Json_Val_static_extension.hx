package stdgo.encoding.json;
class Val_static_extension {
    static public function marshalJSON(_:Val):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Val_static_extension.Val_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

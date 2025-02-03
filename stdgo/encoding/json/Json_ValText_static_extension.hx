package stdgo.encoding.json;
class ValText_static_extension {
    static public function marshalText(_:ValText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_ValText_static_extension.ValText_static_extension.marshalText(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

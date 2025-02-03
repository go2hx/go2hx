package stdgo.encoding.json;
class CText_static_extension {
    static public function marshalText(_:CText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_CText_static_extension.CText_static_extension.marshalText(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

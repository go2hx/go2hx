package stdgo.encoding.json;
class T_textint_static_extension {
    static public function marshalText(_i:T_textint):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_textint_static_extension.T_textint_static_extension.marshalText(_i);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

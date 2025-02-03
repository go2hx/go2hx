package stdgo.encoding.json;
class T_textbyte_static_extension {
    static public function marshalText(_b:T_textbyte):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_textbyte_static_extension.T_textbyte_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

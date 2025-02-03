package stdgo.encoding.json;
class T_unmarshalerText_static_extension {
    static public function unmarshalText(_u:T_unmarshalerText, _b:Array<std.UInt>):stdgo.Error {
        final _u = (_u : stdgo.Ref<stdgo._internal.encoding.json.Json_T_unmarshalerText.T_unmarshalerText>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_unmarshalerText_static_extension.T_unmarshalerText_static_extension.unmarshalText(_u, _b);
    }
    static public function marshalText(_u:T_unmarshalerText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_unmarshalerText_static_extension.T_unmarshalerText_static_extension.marshalText(_u);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

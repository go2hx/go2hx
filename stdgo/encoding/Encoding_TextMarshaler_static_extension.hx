package stdgo.encoding;
class TextMarshaler_static_extension {
    static public function marshalText(t:stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.Encoding_TextMarshaler_static_extension.TextMarshaler_static_extension.marshalText(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

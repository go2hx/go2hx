package stdgo.encoding;
class BinaryMarshaler_static_extension {
    static public function marshalBinary(t:stdgo._internal.encoding.Encoding_BinaryMarshaler.BinaryMarshaler):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.Encoding_BinaryMarshaler_static_extension.BinaryMarshaler_static_extension.marshalBinary(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}

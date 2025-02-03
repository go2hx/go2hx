package stdgo.encoding;
class BinaryUnmarshaler_static_extension {
    static public function unmarshalBinary(t:stdgo._internal.encoding.Encoding_BinaryUnmarshaler.BinaryUnmarshaler, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.Encoding_BinaryUnmarshaler_static_extension.BinaryUnmarshaler_static_extension.unmarshalBinary(t, _data);
    }
}

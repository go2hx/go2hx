package stdgo.encoding;
class TextUnmarshaler_static_extension {
    static public function unmarshalText(t:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.Encoding_TextUnmarshaler_static_extension.TextUnmarshaler_static_extension.unmarshalText(t, _text);
    }
}

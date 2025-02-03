package stdgo.encoding.json;
class MustNotUnmarshalText_static_extension {
    static public function unmarshalText(_x:MustNotUnmarshalText, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_MustNotUnmarshalText_static_extension.MustNotUnmarshalText_static_extension.unmarshalText(_x, _text);
    }
}

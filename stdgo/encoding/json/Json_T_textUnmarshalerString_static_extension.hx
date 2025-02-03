package stdgo.encoding.json;
class T_textUnmarshalerString_static_extension {
    static public function unmarshalText(_m:stdgo.Pointer<T_textUnmarshalerString>, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_textUnmarshalerString_static_extension.T_textUnmarshalerString_static_extension.unmarshalText(_m, _text);
    }
}

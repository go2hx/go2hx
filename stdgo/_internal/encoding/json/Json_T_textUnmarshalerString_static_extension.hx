package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_textUnmarshalerString_asInterface) class T_textUnmarshalerString_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString,  _m:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        _m.value = (stdgo._internal.strings.Strings_toLower.toLower((_text : stdgo.GoString)?.__copy__()) : stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString);
        return (null : stdgo.Error);
    }
}

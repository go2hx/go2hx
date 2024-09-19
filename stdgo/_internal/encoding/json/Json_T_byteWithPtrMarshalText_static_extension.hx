package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_byteWithPtrMarshalText_asInterface) class T_byteWithPtrMarshalText_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalText.T_byteWithPtrMarshalText,  _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalText.T_byteWithPtrMarshalText>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return new stdgo.Pointer<stdgo._internal.encoding.json.Json_T_byteWithMarshalText.T_byteWithMarshalText>(() -> (_b.value : stdgo._internal.encoding.json.Json_T_byteWithMarshalText.T_byteWithMarshalText), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalText.T_byteWithPtrMarshalText) : stdgo._internal.encoding.json.Json_T_byteWithMarshalText.T_byteWithMarshalText)).value.unmarshalText(new stdgo.Pointer<stdgo._internal.encoding.json.Json_T_byteWithMarshalText.T_byteWithMarshalText>(() -> (_b.value : stdgo._internal.encoding.json.Json_T_byteWithMarshalText.T_byteWithMarshalText), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalText.T_byteWithPtrMarshalText) : stdgo._internal.encoding.json.Json_T_byteWithMarshalText.T_byteWithMarshalText)), _data);
    }
    @:keep
    @:pointer
    static public function marshalText(____:stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalText.T_byteWithPtrMarshalText,  _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalText.T_byteWithPtrMarshalText>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return (_b.value : stdgo._internal.encoding.json.Json_T_byteWithMarshalText.T_byteWithMarshalText).marshalText();
    }
}

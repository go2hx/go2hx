package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_intWithPtrMarshalText_asInterface) class T_intWithPtrMarshalText_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:stdgo._internal.encoding.json.Json_T_intWithPtrMarshalText.T_intWithPtrMarshalText,  _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithPtrMarshalText.T_intWithPtrMarshalText>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return new stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithMarshalText.T_intWithMarshalText>(() -> (_b.value : stdgo._internal.encoding.json.Json_T_intWithMarshalText.T_intWithMarshalText), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_T_intWithPtrMarshalText.T_intWithPtrMarshalText) : stdgo._internal.encoding.json.Json_T_intWithMarshalText.T_intWithMarshalText)).value.unmarshalText(new stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithMarshalText.T_intWithMarshalText>(() -> (_b.value : stdgo._internal.encoding.json.Json_T_intWithMarshalText.T_intWithMarshalText), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_T_intWithPtrMarshalText.T_intWithPtrMarshalText) : stdgo._internal.encoding.json.Json_T_intWithMarshalText.T_intWithMarshalText)), _data);
    }
    @:keep
    @:pointer
    static public function marshalText(____:stdgo._internal.encoding.json.Json_T_intWithPtrMarshalText.T_intWithPtrMarshalText,  _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithPtrMarshalText.T_intWithPtrMarshalText>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return (_b.value : stdgo._internal.encoding.json.Json_T_intWithMarshalText.T_intWithMarshalText).marshalText();
    }
}

package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_byteWithPtrMarshalJSON_asInterface) class T_byteWithPtrMarshalJSON_static_extension {
    @:keep
    @:pointer
    static public function unmarshalJSON(____:stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalJSON.T_byteWithPtrMarshalJSON,  _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalJSON.T_byteWithPtrMarshalJSON>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return new stdgo.Pointer<stdgo._internal.encoding.json.Json_T_byteWithMarshalJSON.T_byteWithMarshalJSON>(() -> (_b.value : stdgo._internal.encoding.json.Json_T_byteWithMarshalJSON.T_byteWithMarshalJSON), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalJSON.T_byteWithPtrMarshalJSON) : stdgo._internal.encoding.json.Json_T_byteWithMarshalJSON.T_byteWithMarshalJSON)).value.unmarshalJSON(new stdgo.Pointer<stdgo._internal.encoding.json.Json_T_byteWithMarshalJSON.T_byteWithMarshalJSON>(() -> (_b.value : stdgo._internal.encoding.json.Json_T_byteWithMarshalJSON.T_byteWithMarshalJSON), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalJSON.T_byteWithPtrMarshalJSON) : stdgo._internal.encoding.json.Json_T_byteWithMarshalJSON.T_byteWithMarshalJSON)), _data);
    }
    @:keep
    @:pointer
    static public function marshalJSON(____:stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalJSON.T_byteWithPtrMarshalJSON,  _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalJSON.T_byteWithPtrMarshalJSON>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return (_b.value : stdgo._internal.encoding.json.Json_T_byteWithMarshalJSON.T_byteWithMarshalJSON).marshalJSON();
    }
}

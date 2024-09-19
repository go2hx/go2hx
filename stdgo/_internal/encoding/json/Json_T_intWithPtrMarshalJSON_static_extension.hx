package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_intWithPtrMarshalJSON_asInterface) class T_intWithPtrMarshalJSON_static_extension {
    @:keep
    @:pointer
    static public function unmarshalJSON(____:stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON.T_intWithPtrMarshalJSON,  _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON.T_intWithPtrMarshalJSON>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return new stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithMarshalJSON.T_intWithMarshalJSON>(() -> (_b.value : stdgo._internal.encoding.json.Json_T_intWithMarshalJSON.T_intWithMarshalJSON), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON.T_intWithPtrMarshalJSON) : stdgo._internal.encoding.json.Json_T_intWithMarshalJSON.T_intWithMarshalJSON)).value.unmarshalJSON(new stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithMarshalJSON.T_intWithMarshalJSON>(() -> (_b.value : stdgo._internal.encoding.json.Json_T_intWithMarshalJSON.T_intWithMarshalJSON), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON.T_intWithPtrMarshalJSON) : stdgo._internal.encoding.json.Json_T_intWithMarshalJSON.T_intWithMarshalJSON)), _data);
    }
    @:keep
    @:pointer
    static public function marshalJSON(____:stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON.T_intWithPtrMarshalJSON,  _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON.T_intWithPtrMarshalJSON>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return (_b.value : stdgo._internal.encoding.json.Json_T_intWithMarshalJSON.T_intWithMarshalJSON).marshalJSON();
    }
}

package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_intWithPtrMarshalJSON_asInterface) class T_intWithPtrMarshalJSON_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalJSON( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON.T_intWithPtrMarshalJSON>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return @:isptr (new stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithMarshalJSON.T_intWithMarshalJSON>(() -> (_b.value : stdgo._internal.encoding.json.Json_T_intWithMarshalJSON.T_intWithMarshalJSON), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON.T_intWithPtrMarshalJSON) : stdgo._internal.encoding.json.Json_T_intWithMarshalJSON.T_intWithMarshalJSON)) : stdgo._internal.encoding.json.Json_T_intWithMarshalJSONPointer.T_intWithMarshalJSONPointer).unmarshalJSON(_data);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function marshalJSON( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON.T_intWithPtrMarshalJSON>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return (_b.value : stdgo._internal.encoding.json.Json_T_intWithMarshalJSON.T_intWithMarshalJSON).marshalJSON();
    }
}

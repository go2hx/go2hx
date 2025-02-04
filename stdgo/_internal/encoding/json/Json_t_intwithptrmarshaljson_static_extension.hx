package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_intWithPtrMarshalJSON_asInterface) class T_intWithPtrMarshalJSON_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalJSON( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_intwithptrmarshaljson.T_intWithPtrMarshalJSON>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return @:isptr (new stdgo.Pointer<stdgo._internal.encoding.json.Json_t_intwithmarshaljson.T_intWithMarshalJSON>(() -> (_b.value : stdgo._internal.encoding.json.Json_t_intwithmarshaljson.T_intWithMarshalJSON), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_t_intwithptrmarshaljson.T_intWithPtrMarshalJSON) : stdgo._internal.encoding.json.Json_t_intwithmarshaljson.T_intWithMarshalJSON)) : stdgo._internal.encoding.json.Json_t_intwithmarshaljsonpointer.T_intWithMarshalJSONPointer).unmarshalJSON(_data);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function marshalJSON( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_intwithptrmarshaljson.T_intWithPtrMarshalJSON>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return (_b.value : stdgo._internal.encoding.json.Json_t_intwithmarshaljson.T_intWithMarshalJSON).marshalJSON();
    }
}

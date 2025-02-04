package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_intWithPtrMarshalText_asInterface) class T_intWithPtrMarshalText_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalText( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_intwithptrmarshaltext.T_intWithPtrMarshalText>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return @:isptr (new stdgo.Pointer<stdgo._internal.encoding.json.Json_t_intwithmarshaltext.T_intWithMarshalText>(() -> (_b.value : stdgo._internal.encoding.json.Json_t_intwithmarshaltext.T_intWithMarshalText), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_t_intwithptrmarshaltext.T_intWithPtrMarshalText) : stdgo._internal.encoding.json.Json_t_intwithmarshaltext.T_intWithMarshalText)) : stdgo._internal.encoding.json.Json_t_intwithmarshaltextpointer.T_intWithMarshalTextPointer).unmarshalText(_data);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function marshalText( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_intwithptrmarshaltext.T_intWithPtrMarshalText>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return (_b.value : stdgo._internal.encoding.json.Json_t_intwithmarshaltext.T_intWithMarshalText).marshalText();
    }
}

package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_byteWithPtrMarshalText_asInterface) class T_byteWithPtrMarshalText_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalText( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_bytewithptrmarshaltext.T_byteWithPtrMarshalText>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return @:isptr (new stdgo.Pointer<stdgo._internal.encoding.json.Json_t_bytewithmarshaltext.T_byteWithMarshalText>(() -> (_b.value : stdgo._internal.encoding.json.Json_t_bytewithmarshaltext.T_byteWithMarshalText), v -> (_b.value = (v : stdgo._internal.encoding.json.Json_t_bytewithptrmarshaltext.T_byteWithPtrMarshalText) : stdgo._internal.encoding.json.Json_t_bytewithmarshaltext.T_byteWithMarshalText)) : stdgo._internal.encoding.json.Json_t_bytewithmarshaltextpointer.T_byteWithMarshalTextPointer).unmarshalText(_data);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function marshalText( _b:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_bytewithptrmarshaltext.T_byteWithPtrMarshalText>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return (_b.value : stdgo._internal.encoding.json.Json_t_bytewithmarshaltext.T_byteWithMarshalText).marshalText();
    }
}

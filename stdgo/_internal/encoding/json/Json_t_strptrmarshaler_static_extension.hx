package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_strPtrMarshaler_asInterface) class T_strPtrMarshaler_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function marshalJSON( _s:stdgo.Pointer<stdgo._internal.encoding.json.Json_t_strptrmarshaler.T_strPtrMarshaler>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return { _0 : (_s.value : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}

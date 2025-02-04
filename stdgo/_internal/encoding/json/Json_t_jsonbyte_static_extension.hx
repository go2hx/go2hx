package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_jsonbyte_asInterface) class T_jsonbyte_static_extension {
    @:keep
    @:tdfield
    static public function marshalJSON( _b:stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte = _b;
        return stdgo._internal.encoding.json.Json__tenc._tenc(("{\"JB\":%d}" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
    }
}

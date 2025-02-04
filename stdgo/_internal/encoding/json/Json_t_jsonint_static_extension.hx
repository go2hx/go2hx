package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_jsonint_asInterface) class T_jsonint_static_extension {
    @:keep
    @:tdfield
    static public function marshalJSON( _i:stdgo._internal.encoding.json.Json_t_jsonint.T_jsonint):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _i:stdgo._internal.encoding.json.Json_t_jsonint.T_jsonint = _i;
        return stdgo._internal.encoding.json.Json__tenc._tenc(("{\"JI\":%d}" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_i)));
    }
}

package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_textint_asInterface) class T_textint_static_extension {
    @:keep
    @:tdfield
    static public function marshalText( _i:stdgo._internal.encoding.json.Json_t_textint.T_textint):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _i:stdgo._internal.encoding.json.Json_t_textint.T_textint = _i;
        return stdgo._internal.encoding.json.Json__tenc._tenc(("TI:%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_i)));
    }
}

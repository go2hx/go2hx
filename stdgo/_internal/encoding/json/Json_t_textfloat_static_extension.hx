package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_textfloat_asInterface) class T_textfloat_static_extension {
    @:keep
    @:tdfield
    static public function marshalText( _f:stdgo._internal.encoding.json.Json_t_textfloat.T_textfloat):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.encoding.json.Json_t_textfloat.T_textfloat = _f;
        return stdgo._internal.encoding.json.Json__tenc._tenc(("TF:%0.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
    }
}

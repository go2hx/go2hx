package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_textbyte_asInterface) class T_textbyte_static_extension {
    @:keep
    @:tdfield
    static public function marshalText( _b:stdgo._internal.encoding.json.Json_t_textbyte.T_textbyte):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo._internal.encoding.json.Json_t_textbyte.T_textbyte = _b;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L844"
        return stdgo._internal.encoding.json.Json__tenc._tenc(("TB:%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
    }
}

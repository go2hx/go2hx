package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.CText_asInterface) class CText_static_extension {
    @:keep
    static public function marshalText( _:stdgo._internal.encoding.json.Json_CText.CText):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.encoding.json.Json_CText.CText = _;
        return { _0 : (("\"<&>\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
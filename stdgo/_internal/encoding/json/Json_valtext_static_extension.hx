package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.ValText_asInterface) class ValText_static_extension {
    @:keep
    @:tdfield
    static public function marshalText( _:stdgo._internal.encoding.json.Json_valtext.ValText):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.encoding.json.Json_valtext.ValText = _;
        return { _0 : ((("\"val\"" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}

package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.C_asInterface) class C_static_extension {
    @:keep
    @:tdfield
    static public function marshalJSON( _:stdgo._internal.encoding.json.Json_c.C):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.encoding.json.Json_c.C = _;
        return { _0 : ((("\"<&>\"" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}

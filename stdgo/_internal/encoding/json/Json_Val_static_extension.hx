package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.Val_asInterface) class Val_static_extension {
    @:keep
    static public function marshalJSON( _:stdgo._internal.encoding.json.Json_Val.Val):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.encoding.json.Json_Val.Val = _;
        return { _0 : (("\"val\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
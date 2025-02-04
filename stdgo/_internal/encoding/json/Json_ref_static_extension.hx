package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.Ref_asInterface) class Ref_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalJSON( _r:stdgo.Pointer<stdgo._internal.encoding.json.Json_ref.Ref>, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        _r.value = (12 : stdgo._internal.encoding.json.Json_ref.Ref);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalJSON( _:stdgo.Pointer<stdgo._internal.encoding.json.Json_ref.Ref>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return { _0 : ((("\"ref\"" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}

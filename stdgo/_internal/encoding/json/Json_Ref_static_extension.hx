package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.Ref_asInterface) class Ref_static_extension {
    @:keep
    @:pointer
    static public function unmarshalJSON(____:stdgo._internal.encoding.json.Json_Ref.Ref,  _r:stdgo.Pointer<stdgo._internal.encoding.json.Json_Ref.Ref>, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        _r.value = (12 : stdgo._internal.encoding.json.Json_Ref.Ref);
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalJSON(____:stdgo._internal.encoding.json.Json_Ref.Ref,  _:stdgo.Pointer<stdgo._internal.encoding.json.Json_Ref.Ref>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return { _0 : (("\"ref\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}

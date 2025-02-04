package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.RefText_asInterface) class RefText_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalText( _r:stdgo.Pointer<stdgo._internal.encoding.json.Json_reftext.RefText>, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        _r.value = (13 : stdgo._internal.encoding.json.Json_reftext.RefText);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _:stdgo.Pointer<stdgo._internal.encoding.json.Json_reftext.RefText>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return { _0 : ((("\"ref\"" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}

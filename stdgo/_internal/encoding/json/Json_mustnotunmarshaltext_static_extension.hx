package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.MustNotUnmarshalText_asInterface) class MustNotUnmarshalText_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalText( _x:stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _x:stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText = _x?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1922"
        return stdgo._internal.errors.Errors_new_.new_(("MustNotUnmarshalText was used" : stdgo.GoString));
    }
}

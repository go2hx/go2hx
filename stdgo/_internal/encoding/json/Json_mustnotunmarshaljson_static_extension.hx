package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.MustNotUnmarshalJSON_asInterface) class MustNotUnmarshalJSON_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalJSON( _x:stdgo._internal.encoding.json.Json_mustnotunmarshaljson.MustNotUnmarshalJSON, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _x:stdgo._internal.encoding.json.Json_mustnotunmarshaljson.MustNotUnmarshalJSON = _x?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1916"
        return stdgo._internal.errors.Errors_new_.new_(("MustNotUnmarshalJSON was used" : stdgo.GoString));
    }
}

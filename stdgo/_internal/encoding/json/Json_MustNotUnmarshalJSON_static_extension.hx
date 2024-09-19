package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.MustNotUnmarshalJSON_asInterface) class MustNotUnmarshalJSON_static_extension {
    @:keep
    static public function unmarshalJSON( _x:stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON.MustNotUnmarshalJSON, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _x:stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON.MustNotUnmarshalJSON = _x?.__copy__();
        return stdgo._internal.errors.Errors_new_.new_(("MustNotUnmarshalJSON was used" : stdgo.GoString));
    }
}

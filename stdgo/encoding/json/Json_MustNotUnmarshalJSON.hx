package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.MustNotUnmarshalJSON_static_extension) abstract MustNotUnmarshalJSON(stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON.MustNotUnmarshalJSON) from stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON.MustNotUnmarshalJSON to stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON.MustNotUnmarshalJSON {
    public function new() this = new stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON.MustNotUnmarshalJSON();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

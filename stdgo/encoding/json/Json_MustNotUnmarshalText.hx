package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.MustNotUnmarshalText_static_extension) abstract MustNotUnmarshalText(stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText) from stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText to stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText {
    public function new() this = new stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

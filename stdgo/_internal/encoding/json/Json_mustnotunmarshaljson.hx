package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_mustnotunmarshaljson_static_extension.MustNotUnmarshalJSON_static_extension) class MustNotUnmarshalJSON {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MustNotUnmarshalJSON();
    }
}

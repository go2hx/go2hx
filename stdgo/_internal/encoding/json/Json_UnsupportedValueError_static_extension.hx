package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.UnsupportedValueError_asInterface) class UnsupportedValueError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError> = _e;
        return (("json: unsupported value: " : stdgo.GoString) + _e.str?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

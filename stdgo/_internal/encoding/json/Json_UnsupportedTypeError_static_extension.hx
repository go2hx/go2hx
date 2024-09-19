package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.UnsupportedTypeError_asInterface) class UnsupportedTypeError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedTypeError.UnsupportedTypeError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_UnsupportedTypeError.UnsupportedTypeError> = _e;
        return (("json: unsupported type: " : stdgo.GoString) + (_e.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

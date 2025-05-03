package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.UnsupportedValueError_asInterface) class UnsupportedValueError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L211"
        return (("json: unsupported value: " : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").str?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

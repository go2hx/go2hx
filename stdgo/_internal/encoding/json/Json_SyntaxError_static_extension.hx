package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.SyntaxError_asInterface) class SyntaxError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._msg?.__copy__();
    }
}

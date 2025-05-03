package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.SyntaxError_asInterface) class SyntaxError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L52"
        return (@:checkr _e ?? throw "null pointer dereference")._msg?.__copy__();
    }
}

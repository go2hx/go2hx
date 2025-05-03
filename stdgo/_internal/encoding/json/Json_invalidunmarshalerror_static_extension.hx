package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.InvalidUnmarshalError_asInterface) class InvalidUnmarshalError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError> = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L161"
        if (((@:checkr _e ?? throw "null pointer dereference").type.string() : String) == (null.string() : String)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L162"
            return ("json: Unmarshal(nil)" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L165"
        if ((@:checkr _e ?? throw "null pointer dereference").type.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L166"
            return ((("json: Unmarshal(non-pointer " : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L168"
        return ((("json: Unmarshal(nil " : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

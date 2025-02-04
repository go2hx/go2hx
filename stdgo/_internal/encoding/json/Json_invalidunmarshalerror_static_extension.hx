package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.InvalidUnmarshalError_asInterface) class InvalidUnmarshalError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError> = _e;
        if (((@:checkr _e ?? throw "null pointer dereference").type.string() : String) == (null.string() : String)) {
            return ("json: Unmarshal(nil)" : stdgo.GoString);
        };
        if ((@:checkr _e ?? throw "null pointer dereference").type.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            return ((("json: Unmarshal(non-pointer " : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return ((("json: Unmarshal(nil " : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

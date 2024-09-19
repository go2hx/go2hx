package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.InvalidUnmarshalError_asInterface) class InvalidUnmarshalError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError> = _e;
        if ((_e.type.string() : String) == (null.string() : String)) {
            return ("json: Unmarshal(nil)" : stdgo.GoString);
        };
        if (_e.type.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            return ((("json: Unmarshal(non-pointer " : stdgo.GoString) + (_e.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return ((("json: Unmarshal(nil " : stdgo.GoString) + (_e.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

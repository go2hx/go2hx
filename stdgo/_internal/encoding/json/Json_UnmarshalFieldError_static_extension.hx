package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.UnmarshalFieldError_asInterface) class UnmarshalFieldError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalFieldError.UnmarshalFieldError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalFieldError.UnmarshalFieldError> = _e;
        return (((((("json: cannot unmarshal object key " : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote(_e.key?.__copy__())?.__copy__() : stdgo.GoString) + (" into unexported field " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.field.name?.__copy__() : stdgo.GoString) + (" of type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_e.type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

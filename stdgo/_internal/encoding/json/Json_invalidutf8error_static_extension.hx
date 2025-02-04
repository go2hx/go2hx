package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.InvalidUTF8Error_asInterface) class InvalidUTF8Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_invalidutf8error.InvalidUTF8Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_invalidutf8error.InvalidUTF8Error> = _e;
        return (("json: invalid UTF-8 in string: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote((@:checkr _e ?? throw "null pointer dereference").s?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error> = _e;
        return ((((("error parsing regexp: " : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").code.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (": `" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").expr?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Error_asInterface) class Error_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error> = _e;
        return ((((("error parsing regexp: " : stdgo.GoString) + (_e.code.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (": `" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.expr?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}

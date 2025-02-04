package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.ErrorCode_asInterface) class ErrorCode_static_extension {
    @:keep
    @:tdfield
    static public function string( _e:stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode):stdgo.GoString {
        @:recv var _e:stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode = _e;
        return (_e : stdgo.GoString)?.__copy__();
    }
}

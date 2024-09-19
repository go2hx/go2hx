package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.ErrorCode_asInterface) class ErrorCode_static_extension {
    @:keep
    static public function string( _e:stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode):stdgo.GoString {
        @:recv var _e:stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode = _e;
        return (_e : stdgo.GoString)?.__copy__();
    }
}

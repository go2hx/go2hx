package stdgo._internal.regexp.syntax;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_error_static_extension.Error_static_extension) class Error {
    public var code : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode = (("" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode);
    public var expr : stdgo.GoString = "";
    public function new(?code:stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode, ?expr:stdgo.GoString) {
        if (code != null) this.code = code;
        if (expr != null) this.expr = expr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Error(code, expr);
    }
}

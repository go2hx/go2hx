package stdgo.regexp.syntax;
@:structInit @:using(stdgo.regexp.syntax.Syntax.Error_static_extension) abstract Error(stdgo._internal.regexp.syntax.Syntax_Error.Error) from stdgo._internal.regexp.syntax.Syntax_Error.Error to stdgo._internal.regexp.syntax.Syntax_Error.Error {
    public var code(get, set) : ErrorCode;
    function get_code():ErrorCode return this.code;
    function set_code(v:ErrorCode):ErrorCode {
        this.code = v;
        return v;
    }
    public var expr(get, set) : String;
    function get_expr():String return this.expr;
    function set_expr(v:String):String {
        this.expr = (v : stdgo.GoString);
        return v;
    }
    public function new(?code:ErrorCode, ?expr:String) this = new stdgo._internal.regexp.syntax.Syntax_Error.Error(code, (expr : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}

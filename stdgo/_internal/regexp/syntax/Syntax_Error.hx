package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_Error_static_extension.Error_static_extension) class Error {
    public var code : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode = (("" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode);
    public var expr : stdgo.GoString = "";
    public function new(?code:stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode, ?expr:stdgo.GoString) {
        if (code != null) this.code = code;
        if (expr != null) this.expr = expr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Error(code, expr);
    }
}

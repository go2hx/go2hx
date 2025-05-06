package stdgo._internal.go.ast;
function _stripTrailingWhitespace(_s:stdgo.GoString):stdgo.GoString {
        var _i = (_s.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L85"
        while (((_i > (0 : stdgo.GoInt) : Bool) && stdgo._internal.go.ast.Ast__iswhitespace._isWhitespace(_s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L86"
            _i--;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L88"
        return (_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__();
    }

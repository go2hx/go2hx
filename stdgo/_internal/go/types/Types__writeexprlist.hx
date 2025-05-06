package stdgo._internal.go.types;
function _writeExprList(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L232"
        for (_i => _x in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L233"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L234"
                _buf.writeString((", " : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L236"
            stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, _x);
        };
    }

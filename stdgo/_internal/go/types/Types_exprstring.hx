package stdgo._internal.go.types;
function exprString(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoString {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L21"
        stdgo._internal.go.types.Types_writeexpr.writeExpr((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _x);
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L22"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }

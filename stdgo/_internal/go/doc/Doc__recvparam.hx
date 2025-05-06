package stdgo._internal.go.doc;
function _recvParam(_p:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L59"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_p) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
            }, _id = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L60"
                return (@:checkr _id ?? throw "null pointer dereference").name?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L62"
        return ("BADPARAM" : stdgo.GoString);
    }

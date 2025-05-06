package stdgo._internal.go.ast;
function _resolve(_scope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L45"
        while (({
            final value = _scope;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L46"
            {
                var _obj = _scope.lookup((@:checkr _ident ?? throw "null pointer dereference").name.__copy__());
                if (({
                    final value = _obj;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    (@:checkr _ident ?? throw "null pointer dereference").obj = _obj;
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L48"
                    return true;
                };
            };
            _scope = (@:checkr _scope ?? throw "null pointer dereference").outer;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/resolve.go#L51"
        return false;
    }

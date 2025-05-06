package stdgo._internal.go.ast;
function _collapse(_prev:stdgo._internal.go.ast.Ast_spec.Spec, _next:stdgo._internal.go.ast.Ast_spec.Spec):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L85"
        if (((stdgo._internal.go.ast.Ast__importpath._importPath(_next) != stdgo._internal.go.ast.Ast__importpath._importPath(_prev)) || (stdgo._internal.go.ast.Ast__importname._importName(_next) != stdgo._internal.go.ast.Ast__importname._importName(_prev)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L86"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L88"
        return ({
            final value = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_prev) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) ?? throw "null pointer dereference").comment;
            (value == null || (value : Dynamic).__nil__);
        });
    }

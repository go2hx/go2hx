package stdgo._internal.go.ast;
function _importName(_s:stdgo._internal.go.ast.Ast_spec.Spec):stdgo.GoString {
        var _n = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) ?? throw "null pointer dereference").name;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L69"
        if (({
            final value = _n;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L70"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L72"
        return (@:checkr _n ?? throw "null pointer dereference").name?.__copy__();
    }

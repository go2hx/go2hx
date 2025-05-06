package stdgo._internal.go.ast;
function _importComment(_s:stdgo._internal.go.ast.Ast_spec.Spec):stdgo.GoString {
        var _c = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) ?? throw "null pointer dereference").comment;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L77"
        if (({
            final value = _c;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L78"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L80"
        return _c.text()?.__copy__();
    }

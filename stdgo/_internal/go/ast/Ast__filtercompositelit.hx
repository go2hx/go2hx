package stdgo._internal.go.ast;
function _filterCompositeLit(_lit:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>, _filter:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Void {
        var _n = ((@:checkr _lit ?? throw "null pointer dereference").elts.length : stdgo.GoInt);
        (@:checkr _lit ?? throw "null pointer dereference").elts = stdgo._internal.go.ast.Ast__filterexprlist._filterExprList((@:checkr _lit ?? throw "null pointer dereference").elts, _filter, _export);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L112"
        if ((((@:checkr _lit ?? throw "null pointer dereference").elts.length) < _n : Bool)) {
            (@:checkr _lit ?? throw "null pointer dereference").incomplete = true;
        };
    }

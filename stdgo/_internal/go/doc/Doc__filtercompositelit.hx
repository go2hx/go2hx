package stdgo._internal.go.doc;
function _filterCompositeLit(_lit:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>, _filter:stdgo._internal.go.doc.Doc_filter.Filter, _export:Bool):Void {
        var _n = ((@:checkr _lit ?? throw "null pointer dereference").elts.length : stdgo.GoInt);
        (@:checkr _lit ?? throw "null pointer dereference").elts = stdgo._internal.go.doc.Doc__filterexprlist._filterExprList((@:checkr _lit ?? throw "null pointer dereference").elts, _filter, _export);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L32"
        if ((((@:checkr _lit ?? throw "null pointer dereference").elts.length) < _n : Bool)) {
            (@:checkr _lit ?? throw "null pointer dereference").incomplete = true;
        };
    }

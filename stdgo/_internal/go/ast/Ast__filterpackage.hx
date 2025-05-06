package stdgo._internal.go.ast;
function _filterPackage(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        var _hasDecls = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L285"
        for (__0 => _src in (@:checkr _pkg ?? throw "null pointer dereference").files) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L286"
            if (stdgo._internal.go.ast.Ast__filterfile._filterFile(_src, _f, _export)) {
                _hasDecls = true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L290"
        return _hasDecls;
    }

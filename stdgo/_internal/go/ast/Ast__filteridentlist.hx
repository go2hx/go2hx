package stdgo._internal.go.ast;
function _filterIdentList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>, _f:stdgo._internal.go.ast.Ast_filter.Filter):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> {
        var _j = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L48"
        for (__0 => _x in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L49"
            if (_f((@:checkr _x ?? throw "null pointer dereference").name?.__copy__())) {
                _list[(_j : stdgo.GoInt)] = _x;
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L51"
                _j++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L54"
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
    }

package stdgo._internal.go.doc;
function _filterIdentList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> {
        var _j = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L18"
        for (__0 => _x in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L19"
            if (stdgo._internal.go.token.Token_isexported.isExported((@:checkr _x ?? throw "null pointer dereference").name?.__copy__())) {
                _list[(_j : stdgo.GoInt)] = _x;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L21"
                _j++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L24"
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
    }

package stdgo._internal.go.doc;
function _updateIdentList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):Bool {
        var _hasExported = false;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L60"
        for (_i => _x in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L61"
            if (stdgo._internal.go.token.Token_isexported.isExported((@:checkr _x ?? throw "null pointer dereference").name?.__copy__())) {
                _hasExported = true;
            } else {
                _list[(_i : stdgo.GoInt)] = stdgo._internal.go.doc.Doc__underscore._underscore;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L67"
        return _hasExported;
    }

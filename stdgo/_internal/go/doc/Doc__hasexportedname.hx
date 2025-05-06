package stdgo._internal.go.doc;
function _hasExportedName(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L72"
        for (__0 => _x in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L73"
            if (_x.isExported()) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L74"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/exports.go#L77"
        return false;
    }

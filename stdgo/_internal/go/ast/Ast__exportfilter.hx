package stdgo._internal.go.ast;
function _exportFilter(_name:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L17"
        return stdgo._internal.go.ast.Ast_isexported.isExported(_name?.__copy__());
    }

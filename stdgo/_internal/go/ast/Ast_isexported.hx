package stdgo._internal.go.ast;
function isExported(_name:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L583"
        return stdgo._internal.go.token.Token_isexported.isExported(_name?.__copy__());
    }

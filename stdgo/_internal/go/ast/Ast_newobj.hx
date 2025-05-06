package stdgo._internal.go.ast;
function newObj(_kind:stdgo._internal.go.ast.Ast_objkind.ObjKind, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/scope.go#L82"
        return (stdgo.Go.setRef(({ kind : _kind, name : _name?.__copy__() } : stdgo._internal.go.ast.Ast_object.Object)) : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
    }

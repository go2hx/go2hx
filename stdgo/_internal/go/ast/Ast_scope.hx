package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_scope_static_extension.Scope_static_extension) class Scope {
    public var outer : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
    public var objects : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>);
    public function new(?outer:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, ?objects:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>) {
        if (outer != null) this.outer = outer;
        if (objects != null) this.objects = objects;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Scope(outer, objects);
    }
}

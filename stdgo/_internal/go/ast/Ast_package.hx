package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_package_static_extension.Package_static_extension) class Package {
    public var name : stdgo.GoString = "";
    public var scope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
    public var imports : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>);
    public var files : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>);
    public function new(?name:stdgo.GoString, ?scope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, ?imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>, ?files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>) {
        if (name != null) this.name = name;
        if (scope != null) this.scope = scope;
        if (imports != null) this.imports = imports;
        if (files != null) this.files = files;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Package(name, scope, imports, files);
    }
}

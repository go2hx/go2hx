package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_importdecl_static_extension.T_importDecl_static_extension) class T_importDecl {
    public var _spec : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
    public function new(?_spec:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) {
        if (_spec != null) this._spec = _spec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_importDecl(_spec);
    }
}

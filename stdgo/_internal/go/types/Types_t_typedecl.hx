package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_typedecl_static_extension.T_typeDecl_static_extension) class T_typeDecl {
    public var _spec : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
    public function new(?_spec:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) {
        if (_spec != null) this._spec = _spec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_typeDecl(_spec);
    }
}

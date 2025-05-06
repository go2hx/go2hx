package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_vardecl_static_extension.T_varDecl_static_extension) class T_varDecl {
    public var _spec : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
    public function new(?_spec:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) {
        if (_spec != null) this._spec = _spec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_varDecl(_spec);
    }
}

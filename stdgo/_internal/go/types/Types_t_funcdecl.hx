package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_funcdecl_static_extension.T_funcDecl_static_extension) class T_funcDecl {
    public var _decl : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
    public function new(?_decl:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) {
        if (_decl != null) this._decl = _decl;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_funcDecl(_decl);
    }
}

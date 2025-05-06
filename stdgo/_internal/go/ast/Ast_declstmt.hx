package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_declstmt_static_extension.DeclStmt_static_extension) class DeclStmt {
    public var decl : stdgo._internal.go.ast.Ast_decl.Decl = (null : stdgo._internal.go.ast.Ast_decl.Decl);
    public function new(?decl:stdgo._internal.go.ast.Ast_decl.Decl) {
        if (decl != null) this.decl = decl;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DeclStmt(decl);
    }
}

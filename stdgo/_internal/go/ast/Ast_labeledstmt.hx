package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_labeledstmt_static_extension.LabeledStmt_static_extension) class LabeledStmt {
    public var label : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    public var colon : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var stmt : stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
    public function new(?label:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, ?colon:stdgo._internal.go.token.Token_pos.Pos, ?stmt:stdgo._internal.go.ast.Ast_stmt.Stmt) {
        if (label != null) this.label = label;
        if (colon != null) this.colon = colon;
        if (stmt != null) this.stmt = stmt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LabeledStmt(label, colon, stmt);
    }
}

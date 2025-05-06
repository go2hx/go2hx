package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_branchstmt_static_extension.BranchStmt_static_extension) class BranchStmt {
    public var tokPos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var tok : stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
    public var label : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    public function new(?tokPos:stdgo._internal.go.token.Token_pos.Pos, ?tok:stdgo._internal.go.token.Token_token.Token, ?label:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) {
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
        if (label != null) this.label = label;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BranchStmt(tokPos, tok, label);
    }
}

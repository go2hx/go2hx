package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_rangestmt_static_extension.RangeStmt_static_extension) class RangeStmt {
    public var for_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var key : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var value : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var tokPos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var tok : stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
    public var range : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var x : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
    public function new(?for_:stdgo._internal.go.token.Token_pos.Pos, ?key:stdgo._internal.go.ast.Ast_expr.Expr, ?value:stdgo._internal.go.ast.Ast_expr.Expr, ?tokPos:stdgo._internal.go.token.Token_pos.Pos, ?tok:stdgo._internal.go.token.Token_token.Token, ?range:stdgo._internal.go.token.Token_pos.Pos, ?x:stdgo._internal.go.ast.Ast_expr.Expr, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) {
        if (for_ != null) this.for_ = for_;
        if (key != null) this.key = key;
        if (value != null) this.value = value;
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
        if (range != null) this.range = range;
        if (x != null) this.x = x;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RangeStmt(for_, key, value, tokPos, tok, range, x, body);
    }
}

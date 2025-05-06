package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_compositelit_static_extension.CompositeLit_static_extension) class CompositeLit {
    public var type : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var lbrace : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var elts : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
    public var rbrace : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var incomplete : Bool = false;
    public function new(?type:stdgo._internal.go.ast.Ast_expr.Expr, ?lbrace:stdgo._internal.go.token.Token_pos.Pos, ?elts:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, ?rbrace:stdgo._internal.go.token.Token_pos.Pos, ?incomplete:Bool) {
        if (type != null) this.type = type;
        if (lbrace != null) this.lbrace = lbrace;
        if (elts != null) this.elts = elts;
        if (rbrace != null) this.rbrace = rbrace;
        if (incomplete != null) this.incomplete = incomplete;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CompositeLit(type, lbrace, elts, rbrace, incomplete);
    }
}

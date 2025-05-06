package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_chantype_static_extension.ChanType_static_extension) class ChanType {
    public var begin : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var arrow : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var dir : stdgo._internal.go.ast.Ast_chandir.ChanDir = ((0 : stdgo.GoInt) : stdgo._internal.go.ast.Ast_chandir.ChanDir);
    public var value : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?begin:stdgo._internal.go.token.Token_pos.Pos, ?arrow:stdgo._internal.go.token.Token_pos.Pos, ?dir:stdgo._internal.go.ast.Ast_chandir.ChanDir, ?value:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (begin != null) this.begin = begin;
        if (arrow != null) this.arrow = arrow;
        if (dir != null) this.dir = dir;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ChanType(begin, arrow, dir, value);
    }
}

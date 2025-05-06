package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_maptype_static_extension.MapType_static_extension) class MapType {
    public var map_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var key : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public var value : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?map_:stdgo._internal.go.token.Token_pos.Pos, ?key:stdgo._internal.go.ast.Ast_expr.Expr, ?value:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (map_ != null) this.map_ = map_;
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MapType(map_, key, value);
    }
}

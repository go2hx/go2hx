package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_baddecl_static_extension.BadDecl_static_extension) class BadDecl {
    public var from : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var to : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?from:stdgo._internal.go.token.Token_pos.Pos, ?to:stdgo._internal.go.token.Token_pos.Pos) {
        if (from != null) this.from = from;
        if (to != null) this.to = to;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BadDecl(from, to);
    }
}

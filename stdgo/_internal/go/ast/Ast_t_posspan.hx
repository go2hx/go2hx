package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_t_posspan_static_extension.T_posSpan_static_extension) class T_posSpan {
    public var start : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var end : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?start:stdgo._internal.go.token.Token_pos.Pos, ?end:stdgo._internal.go.token.Token_pos.Pos) {
        if (start != null) this.start = start;
        if (end != null) this.end = end;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_posSpan(start, end);
    }
}

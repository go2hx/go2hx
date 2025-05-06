package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_basiclit_static_extension.BasicLit_static_extension) class BasicLit {
    public var valuePos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var kind : stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
    public var value : stdgo.GoString = "";
    public function new(?valuePos:stdgo._internal.go.token.Token_pos.Pos, ?kind:stdgo._internal.go.token.Token_token.Token, ?value:stdgo.GoString) {
        if (valuePos != null) this.valuePos = valuePos;
        if (kind != null) this.kind = kind;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BasicLit(valuePos, kind, value);
    }
}

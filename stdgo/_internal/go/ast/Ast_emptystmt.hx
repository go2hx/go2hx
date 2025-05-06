package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_emptystmt_static_extension.EmptyStmt_static_extension) class EmptyStmt {
    public var semicolon : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var implicit : Bool = false;
    public function new(?semicolon:stdgo._internal.go.token.Token_pos.Pos, ?implicit:Bool) {
        if (semicolon != null) this.semicolon = semicolon;
        if (implicit != null) this.implicit = implicit;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new EmptyStmt(semicolon, implicit);
    }
}

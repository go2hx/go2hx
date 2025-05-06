package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_commclause_static_extension.CommClause_static_extension) class CommClause {
    public var case_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var comm : stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
    public var colon : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var body : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
    public function new(?case_:stdgo._internal.go.token.Token_pos.Pos, ?comm:stdgo._internal.go.ast.Ast_stmt.Stmt, ?colon:stdgo._internal.go.token.Token_pos.Pos, ?body:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>) {
        if (case_ != null) this.case_ = case_;
        if (comm != null) this.comm = comm;
        if (colon != null) this.colon = colon;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CommClause(case_, comm, colon, body);
    }
}

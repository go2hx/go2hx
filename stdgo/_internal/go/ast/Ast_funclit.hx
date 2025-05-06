package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_funclit_static_extension.FuncLit_static_extension) class FuncLit {
    public var type : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
    public function new(?type:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) {
        if (type != null) this.type = type;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FuncLit(type, body);
    }
}

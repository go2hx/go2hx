package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.BranchStmt_asInterface) class BranchStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L811"
        if (({
            final value = (@:checkr _s ?? throw "null pointer dereference").label;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L812"
            return (@:checkr _s ?? throw "null pointer dereference").label.end();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L814"
        return ((((@:checkr _s ?? throw "null pointer dereference").tokPos : stdgo.GoInt) + (((@:checkr _s ?? throw "null pointer dereference").tok.string() : stdgo.GoString).length) : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L776"
        return (@:checkr _s ?? throw "null pointer dereference").tokPos;
    }
}

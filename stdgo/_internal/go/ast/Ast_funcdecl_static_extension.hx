package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.FuncDecl_asInterface) class FuncDecl_static_extension {
    @:keep
    @:tdfield
    static public function _declNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = _;
    }
    @:keep
    @:tdfield
    static public function end( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = _d;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L1005"
        if (({
            final value = (@:checkr _d ?? throw "null pointer dereference").body;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L1006"
            return (@:checkr _d ?? throw "null pointer dereference").body.end();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L1008"
        return (@:checkr _d ?? throw "null pointer dereference").type.end();
    }
    @:keep
    @:tdfield
    static public function pos( _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = _d;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L995"
        return (@:checkr _d ?? throw "null pointer dereference").type.pos();
    }
}

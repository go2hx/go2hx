package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.Comment_asInterface) class Comment_static_extension {
    @:keep
    @:tdfield
    static public function end( _c:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _c:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = _c;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L70"
        return ((((@:checkr _c ?? throw "null pointer dereference").slash : stdgo.GoInt) + ((@:checkr _c ?? throw "null pointer dereference").text.length) : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _c:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _c:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = _c;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L69"
        return (@:checkr _c ?? throw "null pointer dereference").slash;
    }
}

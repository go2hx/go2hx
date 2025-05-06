package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_gendecl_static_extension.GenDecl_static_extension) class GenDecl {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
    public var tokPos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var tok : stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
    public var lparen : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var specs : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
    public var rparen : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?tokPos:stdgo._internal.go.token.Token_pos.Pos, ?tok:stdgo._internal.go.token.Token_token.Token, ?lparen:stdgo._internal.go.token.Token_pos.Pos, ?specs:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>, ?rparen:stdgo._internal.go.token.Token_pos.Pos) {
        if (doc != null) this.doc = doc;
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
        if (lparen != null) this.lparen = lparen;
        if (specs != null) this.specs = specs;
        if (rparen != null) this.rparen = rparen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GenDecl(doc, tokPos, tok, lparen, specs, rparen);
    }
}

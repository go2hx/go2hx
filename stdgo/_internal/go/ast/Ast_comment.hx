package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_comment_static_extension.Comment_static_extension) class Comment {
    public var slash : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var text : stdgo.GoString = "";
    public function new(?slash:stdgo._internal.go.token.Token_pos.Pos, ?text:stdgo.GoString) {
        if (slash != null) this.slash = slash;
        if (text != null) this.text = text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Comment(slash, text);
    }
}

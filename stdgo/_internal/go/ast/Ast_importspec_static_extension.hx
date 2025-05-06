package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.ImportSpec_asInterface) class ImportSpec_static_extension {
    @:keep
    @:tdfield
    static public function _specNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L928"
        if ((@:checkr _s ?? throw "null pointer dereference").endPos != ((0 : stdgo._internal.go.token.Token_pos.Pos))) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L929"
            return (@:checkr _s ?? throw "null pointer dereference").endPos;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L931"
        return (@:checkr _s ?? throw "null pointer dereference").path.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L919"
        if (({
            final value = (@:checkr _s ?? throw "null pointer dereference").name;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L920"
            return (@:checkr _s ?? throw "null pointer dereference").name.pos();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L922"
        return (@:checkr _s ?? throw "null pointer dereference").path.pos();
    }
}

package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.Ident_asInterface) class Ident_static_extension {
    @:keep
    @:tdfield
    static public function string( _id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo.GoString {
        @:recv var _id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = _id;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L589"
        if (({
            final value = _id;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L590"
            return (@:checkr _id ?? throw "null pointer dereference").name?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L592"
        return ("<nil>" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function isExported( _id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):Bool {
        @:recv var _id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = _id;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L586"
        return stdgo._internal.go.token.Token_isexported.isExported((@:checkr _id ?? throw "null pointer dereference").name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L515"
        return ((((@:checkr _x ?? throw "null pointer dereference").namePos : stdgo.GoInt) + ((@:checkr _x ?? throw "null pointer dereference").name.length) : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = _x;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L481"
        return (@:checkr _x ?? throw "null pointer dereference").namePos;
    }
}

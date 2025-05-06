package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.Field_asInterface) class Field_static_extension {
    @:keep
    @:tdfield
    static public function end( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = _f;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L216"
        if (({
            final value = (@:checkr _f ?? throw "null pointer dereference").tag;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L217"
            return (@:checkr _f ?? throw "null pointer dereference").tag.end();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L219"
        if ((@:checkr _f ?? throw "null pointer dereference").type != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L220"
            return (@:checkr _f ?? throw "null pointer dereference").type.end();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L222"
        if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L223"
            return (@:checkr _f ?? throw "null pointer dereference").names[(((@:checkr _f ?? throw "null pointer dereference").names.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L225"
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = _f;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L206"
        if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L207"
            return (@:checkr _f ?? throw "null pointer dereference").names[(0 : stdgo.GoInt)].pos();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L209"
        if ((@:checkr _f ?? throw "null pointer dereference").type != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L210"
            return (@:checkr _f ?? throw "null pointer dereference").type.pos();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L212"
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
}

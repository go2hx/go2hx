package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_fieldlist_static_extension.FieldList_static_extension) class FieldList {
    public var opening : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var list : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
    public var closing : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?opening:stdgo._internal.go.token.Token_pos.Pos, ?list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>, ?closing:stdgo._internal.go.token.Token_pos.Pos) {
        if (opening != null) this.opening = opening;
        if (list != null) this.list = list;
        if (closing != null) this.closing = closing;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FieldList(opening, list, closing);
    }
}

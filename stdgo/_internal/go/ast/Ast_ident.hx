package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_ident_static_extension.Ident_static_extension) class Ident {
    public var namePos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var name : stdgo.GoString = "";
    public var obj : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
    public function new(?namePos:stdgo._internal.go.token.Token_pos.Pos, ?name:stdgo.GoString, ?obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>) {
        if (namePos != null) this.namePos = namePos;
        if (name != null) this.name = name;
        if (obj != null) this.obj = obj;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Ident(namePos, name, obj);
    }
}

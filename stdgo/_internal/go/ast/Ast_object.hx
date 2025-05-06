package stdgo._internal.go.ast;
@:structInit @:using(stdgo._internal.go.ast.Ast_object_static_extension.Object_static_extension) class Object {
    public var kind : stdgo._internal.go.ast.Ast_objkind.ObjKind = ((0 : stdgo.GoInt) : stdgo._internal.go.ast.Ast_objkind.ObjKind);
    public var name : stdgo.GoString = "";
    public var decl : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var data : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var type : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?kind:stdgo._internal.go.ast.Ast_objkind.ObjKind, ?name:stdgo.GoString, ?decl:stdgo.AnyInterface, ?data:stdgo.AnyInterface, ?type:stdgo.AnyInterface) {
        if (kind != null) this.kind = kind;
        if (name != null) this.name = name;
        if (decl != null) this.decl = decl;
        if (data != null) this.data = data;
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Object(kind, name, decl, data, type);
    }
}

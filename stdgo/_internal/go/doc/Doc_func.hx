package stdgo._internal.go.doc;
@:structInit @:using(stdgo._internal.go.doc.Doc_func_static_extension.Func_static_extension) class Func {
    public var doc : stdgo.GoString = "";
    public var name : stdgo.GoString = "";
    public var decl : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
    public var recv : stdgo.GoString = "";
    public var orig : stdgo.GoString = "";
    public var level : stdgo.GoInt = 0;
    public var examples : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>);
    public function new(?doc:stdgo.GoString, ?name:stdgo.GoString, ?decl:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>, ?recv:stdgo.GoString, ?orig:stdgo.GoString, ?level:stdgo.GoInt, ?examples:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>) {
        if (doc != null) this.doc = doc;
        if (name != null) this.name = name;
        if (decl != null) this.decl = decl;
        if (recv != null) this.recv = recv;
        if (orig != null) this.orig = orig;
        if (level != null) this.level = level;
        if (examples != null) this.examples = examples;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Func(doc, name, decl, recv, orig, level, examples);
    }
}

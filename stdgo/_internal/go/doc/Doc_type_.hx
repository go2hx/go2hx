package stdgo._internal.go.doc;
@:structInit @:using(stdgo._internal.go.doc.Doc_type__static_extension.Type__static_extension) class Type_ {
    public var doc : stdgo.GoString = "";
    public var name : stdgo.GoString = "";
    public var decl : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
    public var consts : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
    public var vars : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
    public var funcs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>);
    public var methods : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>);
    public var examples : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>);
    public function new(?doc:stdgo.GoString, ?name:stdgo.GoString, ?decl:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>, ?consts:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>, ?vars:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>, ?funcs:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>, ?methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>, ?examples:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>) {
        if (doc != null) this.doc = doc;
        if (name != null) this.name = name;
        if (decl != null) this.decl = decl;
        if (consts != null) this.consts = consts;
        if (vars != null) this.vars = vars;
        if (funcs != null) this.funcs = funcs;
        if (methods != null) this.methods = methods;
        if (examples != null) this.examples = examples;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Type_(doc, name, decl, consts, vars, funcs, methods, examples);
    }
}

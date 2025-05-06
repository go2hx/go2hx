package stdgo._internal.go.doc;
@:structInit @:using(stdgo._internal.go.doc.Doc_value_static_extension.Value_static_extension) class Value {
    public var doc : stdgo.GoString = "";
    public var names : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var decl : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
    public var _order : stdgo.GoInt = 0;
    public function new(?doc:stdgo.GoString, ?names:stdgo.Slice<stdgo.GoString>, ?decl:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>, ?_order:stdgo.GoInt) {
        if (doc != null) this.doc = doc;
        if (names != null) this.names = names;
        if (decl != null) this.decl = decl;
        if (_order != null) this._order = _order;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Value(doc, names, decl, _order);
    }
}

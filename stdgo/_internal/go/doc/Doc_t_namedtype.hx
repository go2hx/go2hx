package stdgo._internal.go.doc;
@:structInit @:using(stdgo._internal.go.doc.Doc_t_namedtype_static_extension.T_namedType_static_extension) class T_namedType {
    public var _doc : stdgo.GoString = "";
    public var _name : stdgo.GoString = "";
    public var _decl : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
    public var _isEmbedded : Bool = false;
    public var _isStruct : Bool = false;
    public var _embedded : stdgo._internal.go.doc.Doc_t_embeddedset.T_embeddedSet = (null : stdgo._internal.go.doc.Doc_t_embeddedset.T_embeddedSet);
    public var _values : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
    public var _funcs : stdgo._internal.go.doc.Doc_t_methodset.T_methodSet = (null : stdgo._internal.go.doc.Doc_t_methodset.T_methodSet);
    public var _methods : stdgo._internal.go.doc.Doc_t_methodset.T_methodSet = (null : stdgo._internal.go.doc.Doc_t_methodset.T_methodSet);
    public function new(?_doc:stdgo.GoString, ?_name:stdgo.GoString, ?_decl:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>, ?_isEmbedded:Bool, ?_isStruct:Bool, ?_embedded:stdgo._internal.go.doc.Doc_t_embeddedset.T_embeddedSet, ?_values:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>, ?_funcs:stdgo._internal.go.doc.Doc_t_methodset.T_methodSet, ?_methods:stdgo._internal.go.doc.Doc_t_methodset.T_methodSet) {
        if (_doc != null) this._doc = _doc;
        if (_name != null) this._name = _name;
        if (_decl != null) this._decl = _decl;
        if (_isEmbedded != null) this._isEmbedded = _isEmbedded;
        if (_isStruct != null) this._isStruct = _isStruct;
        if (_embedded != null) this._embedded = _embedded;
        if (_values != null) this._values = _values;
        if (_funcs != null) this._funcs = _funcs;
        if (_methods != null) this._methods = _methods;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_namedType(_doc, _name, _decl, _isEmbedded, _isStruct, _embedded, _values, _funcs, _methods);
    }
}

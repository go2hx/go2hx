package stdgo._internal.go.doc;
@:structInit @:using(stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension) class T_reader {
    public var _mode : stdgo._internal.go.doc.Doc_mode.Mode = ((0 : stdgo.GoInt) : stdgo._internal.go.doc.Doc_mode.Mode);
    public var _doc : stdgo.GoString = "";
    public var _filenames : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _notes : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>);
    public var _imports : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var _hasDotImp : Bool = false;
    public var _importByName : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _values : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
    public var _order : stdgo.GoInt = 0;
    public var _types : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>>);
    public var _funcs : stdgo._internal.go.doc.Doc_t_methodset.T_methodSet = (null : stdgo._internal.go.doc.Doc_t_methodset.T_methodSet);
    public var _shadowedPredecl : stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
    public var _fixmap : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>>);
    public function new(?_mode:stdgo._internal.go.doc.Doc_mode.Mode, ?_doc:stdgo.GoString, ?_filenames:stdgo.Slice<stdgo.GoString>, ?_notes:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>, ?_imports:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_hasDotImp:Bool, ?_importByName:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_values:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>, ?_order:stdgo.GoInt, ?_types:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>>, ?_funcs:stdgo._internal.go.doc.Doc_t_methodset.T_methodSet, ?_shadowedPredecl:stdgo.GoMap<stdgo.GoString, Bool>, ?_fixmap:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>>) {
        if (_mode != null) this._mode = _mode;
        if (_doc != null) this._doc = _doc;
        if (_filenames != null) this._filenames = _filenames;
        if (_notes != null) this._notes = _notes;
        if (_imports != null) this._imports = _imports;
        if (_hasDotImp != null) this._hasDotImp = _hasDotImp;
        if (_importByName != null) this._importByName = _importByName;
        if (_values != null) this._values = _values;
        if (_order != null) this._order = _order;
        if (_types != null) this._types = _types;
        if (_funcs != null) this._funcs = _funcs;
        if (_shadowedPredecl != null) this._shadowedPredecl = _shadowedPredecl;
        if (_fixmap != null) this._fixmap = _fixmap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reader(
_mode,
_doc,
_filenames,
_notes,
_imports,
_hasDotImp,
_importByName,
_values,
_order,
_types,
_funcs,
_shadowedPredecl,
_fixmap);
    }
}

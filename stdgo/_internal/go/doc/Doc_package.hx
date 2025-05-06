package stdgo._internal.go.doc;
@:structInit @:using(stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension) class Package {
    public var doc : stdgo.GoString = "";
    public var name : stdgo.GoString = "";
    public var importPath : stdgo.GoString = "";
    public var imports : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var filenames : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var notes : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>);
    public var bugs : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var consts : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
    public var types : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>>);
    public var vars : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
    public var funcs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>);
    public var examples : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>);
    public var _importByName : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _syms : stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
    public function new(?doc:stdgo.GoString, ?name:stdgo.GoString, ?importPath:stdgo.GoString, ?imports:stdgo.Slice<stdgo.GoString>, ?filenames:stdgo.Slice<stdgo.GoString>, ?notes:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>, ?bugs:stdgo.Slice<stdgo.GoString>, ?consts:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>, ?types:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>>, ?vars:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>, ?funcs:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>, ?examples:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>, ?_importByName:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_syms:stdgo.GoMap<stdgo.GoString, Bool>) {
        if (doc != null) this.doc = doc;
        if (name != null) this.name = name;
        if (importPath != null) this.importPath = importPath;
        if (imports != null) this.imports = imports;
        if (filenames != null) this.filenames = filenames;
        if (notes != null) this.notes = notes;
        if (bugs != null) this.bugs = bugs;
        if (consts != null) this.consts = consts;
        if (types != null) this.types = types;
        if (vars != null) this.vars = vars;
        if (funcs != null) this.funcs = funcs;
        if (examples != null) this.examples = examples;
        if (_importByName != null) this._importByName = _importByName;
        if (_syms != null) this._syms = _syms;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Package(
doc,
name,
importPath,
imports,
filenames,
notes,
bugs,
consts,
types,
vars,
funcs,
examples,
_importByName,
_syms);
    }
}

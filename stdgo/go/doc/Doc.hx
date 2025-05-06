package stdgo.go.doc;
var allDecls : Mode = 1i64;
var allMethods : Mode = 2i64;
var preserveAST : Mode = 4i64;
var illegalPrefixes(get, set) : stdgo.Slice<stdgo.GoString>;
private function get_illegalPrefixes():stdgo.Slice<stdgo.GoString> return stdgo._internal.go.doc.Doc_illegalprefixes.illegalPrefixes;
private function set_illegalPrefixes(v:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        stdgo._internal.go.doc.Doc_illegalprefixes.illegalPrefixes = v;
        return v;
    }
typedef Package = stdgo._internal.go.doc.Doc_package.Package;
typedef Value = stdgo._internal.go.doc.Doc_value.Value;
typedef Type_ = stdgo._internal.go.doc.Doc_type_.Type_;
typedef Func = stdgo._internal.go.doc.Doc_func.Func;
typedef Note = stdgo._internal.go.doc.Doc_note.Note;
typedef Example = stdgo._internal.go.doc.Doc_example.Example;
typedef Mode = stdgo._internal.go.doc.Doc_mode.Mode;
typedef Filter = stdgo._internal.go.doc.Doc_filter.Filter;
typedef PackagePointer = stdgo._internal.go.doc.Doc_packagepointer.PackagePointer;
typedef ValuePointer = stdgo._internal.go.doc.Doc_valuepointer.ValuePointer;
typedef Type_Pointer = stdgo._internal.go.doc.Doc_type_pointer.Type_Pointer;
typedef FuncPointer = stdgo._internal.go.doc.Doc_funcpointer.FuncPointer;
typedef NotePointer = stdgo._internal.go.doc.Doc_notepointer.NotePointer;
typedef ExamplePointer = stdgo._internal.go.doc.Doc_examplepointer.ExamplePointer;
typedef ModePointer = stdgo._internal.go.doc.Doc_modepointer.ModePointer;
typedef FilterPointer = stdgo._internal.go.doc.Doc_filterpointer.FilterPointer;
/**
    * Package doc extracts source code documentation from a Go AST.
**/
class Doc {
    /**
        * ToHTML converts comment text to formatted HTML.
        * 
        * Deprecated: ToHTML cannot identify documentation links
        * in the doc comment, because they depend on knowing what
        * package the text came from, which is not included in this API.
        * 
        * Given the *[doc.Package] p where text was found,
        * ToHTML(w, text, nil) can be replaced by:
        * 
        * 	w.Write(p.HTML(text))
        * 
        * which is in turn shorthand for:
        * 
        * 	w.Write(p.Printer().HTML(p.Parser().Parse(text)))
        * 
        * If words may be non-nil, the longer replacement is:
        * 
        * 	parser := p.Parser()
        * 	parser.Words = words
        * 	w.Write(p.Printer().HTML(parser.Parse(d)))
    **/
    static public inline function toHTML(_w:stdgo._internal.io.Io_writer.Writer, _text:stdgo.GoString, _words:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):Void stdgo._internal.go.doc.Doc_tohtml.toHTML(_w, _text, _words);
    /**
        * ToText converts comment text to formatted text.
        * 
        * Deprecated: ToText cannot identify documentation links
        * in the doc comment, because they depend on knowing what
        * package the text came from, which is not included in this API.
        * 
        * Given the *[doc.Package] p where text was found,
        * ToText(w, text, "", "\t", 80) can be replaced by:
        * 
        * 	w.Write(p.Text(text))
        * 
        * In the general case, ToText(w, text, prefix, codePrefix, width)
        * can be replaced by:
        * 
        * 	d := p.Parser().Parse(text)
        * 	pr := p.Printer()
        * 	pr.TextPrefix = prefix
        * 	pr.TextCodePrefix = codePrefix
        * 	pr.TextWidth = width
        * 	w.Write(pr.Text(d))
        * 
        * See the documentation for [Package.Text] and [comment.Printer.Text]
        * for more details.
    **/
    static public inline function toText(_w:stdgo._internal.io.Io_writer.Writer, _text:stdgo.GoString, _prefix:stdgo.GoString, _codePrefix:stdgo.GoString, _width:stdgo.GoInt):Void stdgo._internal.go.doc.Doc_totext.toText(_w, _text, _prefix, _codePrefix, _width);
    /**
        * New computes the package documentation for the given package AST.
        * New takes ownership of the AST pkg and may edit or overwrite it.
        * To have the Examples fields populated, use NewFromFiles and include
        * the package's _test.go files.
    **/
    static public inline function new_(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _importPath:stdgo.GoString, _mode:Mode):stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> return stdgo._internal.go.doc.Doc_new_.new_(_pkg, _importPath, _mode);
    /**
        * NewFromFiles computes documentation for a package.
        * 
        * The package is specified by a list of *ast.Files and corresponding
        * file set, which must not be nil.
        * NewFromFiles uses all provided files when computing documentation,
        * so it is the caller's responsibility to provide only the files that
        * match the desired build context. "go/build".Context.MatchFile can
        * be used for determining whether a file matches a build context with
        * the desired GOOS and GOARCH values, and other build constraints.
        * The import path of the package is specified by importPath.
        * 
        * Examples found in _test.go files are associated with the corresponding
        * type, function, method, or the package, based on their name.
        * If the example has a suffix in its name, it is set in the
        * Example.Suffix field. Examples with malformed names are skipped.
        * 
        * Optionally, a single extra argument of type Mode can be provided to
        * control low-level aspects of the documentation extraction behavior.
        * 
        * NewFromFiles takes ownership of the AST files and may edit them,
        * unless the PreserveAST Mode bit is on.
    **/
    static public inline function newFromFiles(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _files:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>, _importPath:stdgo.GoString, _opts:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>; var _1 : stdgo.Error; } return stdgo._internal.go.doc.Doc_newfromfiles.newFromFiles(_fset, _files, _importPath, ...[for (i in _opts) i]);
    /**
        * Examples returns the examples found in testFiles, sorted by Name field.
        * The Order fields record the order in which the examples were encountered.
        * The Suffix field is not populated when Examples is called directly, it is
        * only populated by NewFromFiles for examples it finds in _test.go files.
        * 
        * Playable Examples must be in a package whose name ends in "_test".
        * An Example is "playable" (the Play field is non-nil) in either of these
        * circumstances:
        *   - The example function is self-contained: the function references only
        *     identifiers from other packages (or predeclared identifiers, such as
        *     "int") and the test file does not include a dot import.
        *   - The entire test file is the example: the file contains exactly one
        *     example function, zero test, fuzz test, or benchmark function, and at
        *     least one top-level function, type, variable, or constant declaration
        *     other than the example function.
    **/
    static public inline function examples(_testFiles:haxe.Rest<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>> return stdgo._internal.go.doc.Doc_examples.examples(...[for (i in _testFiles) i]);
    /**
        * IsPredeclared reports whether s is a predeclared identifier.
    **/
    static public inline function isPredeclared(_s:stdgo.GoString):Bool return stdgo._internal.go.doc.Doc_ispredeclared.isPredeclared(_s);
    /**
        * Synopsis returns a cleaned version of the first sentence in text.
        * 
        * Deprecated: New programs should use [Package.Synopsis] instead,
        * which handles links in text properly.
    **/
    static public inline function synopsis(_text:stdgo.GoString):stdgo.GoString return stdgo._internal.go.doc.Doc_synopsis.synopsis(_text);
}

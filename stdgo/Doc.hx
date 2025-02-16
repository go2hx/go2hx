package stdgo;
final allDecls : Mode = stdgo._internal.go.doc.Doc_alldecls.allDecls;
final allMethods = stdgo._internal.go.doc.Doc_allmethods.allMethods;
final preserveAST = stdgo._internal.go.doc.Doc_preserveast.preserveAST;
var illegalPrefixes(get, set) : Array<String>;
private function get_illegalPrefixes():Array<String> return [for (i in stdgo._internal.go.doc.Doc_illegalprefixes.illegalPrefixes) i];
private function set_illegalPrefixes(v:Array<String>):Array<String> {
        stdgo._internal.go.doc.Doc_illegalprefixes.illegalPrefixes = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
@:structInit @:using(stdgo.go.doc.Doc.Package_static_extension) abstract Package(stdgo._internal.go.doc.Doc_package.Package) from stdgo._internal.go.doc.Doc_package.Package to stdgo._internal.go.doc.Doc_package.Package {
    public var doc(get, set) : String;
    function get_doc():String return this.doc;
    function set_doc(v:String):String {
        this.doc = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var importPath(get, set) : String;
    function get_importPath():String return this.importPath;
    function set_importPath(v:String):String {
        this.importPath = (v : stdgo.GoString);
        return v;
    }
    public var imports(get, set) : Array<String>;
    function get_imports():Array<String> return [for (i in this.imports) i];
    function set_imports(v:Array<String>):Array<String> {
        this.imports = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var filenames(get, set) : Array<String>;
    function get_filenames():Array<String> return [for (i in this.filenames) i];
    function set_filenames(v:Array<String>):Array<String> {
        this.filenames = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var notes(get, set) : Map<String, Array<Note>>;
    function get_notes():Map<String, Array<Note>> return {
        final __obj__:Map<String, Array<Note>> = [];
        for (key => value in this.notes) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set_notes(v:Map<String, Array<Note>>):Map<String, Array<Note>> {
        this.notes = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>);
            };
            __obj__;
        };
        return v;
    }
    public var bugs(get, set) : Array<String>;
    function get_bugs():Array<String> return [for (i in this.bugs) i];
    function set_bugs(v:Array<String>):Array<String> {
        this.bugs = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var consts(get, set) : Array<Value>;
    function get_consts():Array<Value> return [for (i in this.consts) i];
    function set_consts(v:Array<Value>):Array<Value> {
        this.consts = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
        return v;
    }
    public var types(get, set) : Array<Type_>;
    function get_types():Array<Type_> return [for (i in this.types) i];
    function set_types(v:Array<Type_>):Array<Type_> {
        this.types = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>>);
        return v;
    }
    public var vars(get, set) : Array<Value>;
    function get_vars():Array<Value> return [for (i in this.vars) i];
    function set_vars(v:Array<Value>):Array<Value> {
        this.vars = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
        return v;
    }
    public var funcs(get, set) : Array<Func>;
    function get_funcs():Array<Func> return [for (i in this.funcs) i];
    function set_funcs(v:Array<Func>):Array<Func> {
        this.funcs = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>);
        return v;
    }
    public var examples(get, set) : Array<Example>;
    function get_examples():Array<Example> return [for (i in this.examples) i];
    function set_examples(v:Array<Example>):Array<Example> {
        this.examples = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>);
        return v;
    }
    public var _importByName(get, set) : Map<String, String>;
    function get__importByName():Map<String, String> return {
        final __obj__:Map<String, String> = [];
        for (key => value in this._importByName) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__importByName(v:Map<String, String>):Map<String, String> {
        this._importByName = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var _syms(get, set) : Map<String, Bool>;
    function get__syms():Map<String, Bool> return {
        final __obj__:Map<String, Bool> = [];
        for (key => value in this._syms) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__syms(v:Map<String, Bool>):Map<String, Bool> {
        this._syms = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return v;
    }
    public function new(?doc:String, ?name:String, ?importPath:String, ?imports:Array<String>, ?filenames:Array<String>, ?notes:Map<String, Array<Note>>, ?bugs:Array<String>, ?consts:Array<Value>, ?types:Array<Type_>, ?vars:Array<Value>, ?funcs:Array<Func>, ?examples:Array<Example>, ?_importByName:Map<String, String>, ?_syms:Map<String, Bool>) this = new stdgo._internal.go.doc.Doc_package.Package(
(doc : stdgo.GoString),
(name : stdgo.GoString),
(importPath : stdgo.GoString),
([for (i in imports) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in filenames) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>();
        for (key => value in notes) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>);
        };
        __obj__;
    },
([for (i in bugs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in consts) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>),
([for (i in types) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>>),
([for (i in vars) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>),
([for (i in funcs) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>),
([for (i in examples) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
        for (key => value in _importByName) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
        for (key => value in _syms) {
            __obj__[(key : stdgo.GoString)] = value;
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.Doc.Value_static_extension) abstract Value(stdgo._internal.go.doc.Doc_value.Value) from stdgo._internal.go.doc.Doc_value.Value to stdgo._internal.go.doc.Doc_value.Value {
    public var doc(get, set) : String;
    function get_doc():String return this.doc;
    function set_doc(v:String):String {
        this.doc = (v : stdgo.GoString);
        return v;
    }
    public var names(get, set) : Array<String>;
    function get_names():Array<String> return [for (i in this.names) i];
    function set_names(v:Array<String>):Array<String> {
        this.names = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var decl(get, set) : stdgo._internal.go.ast.Ast_gendecl.GenDecl;
    function get_decl():stdgo._internal.go.ast.Ast_gendecl.GenDecl return this.decl;
    function set_decl(v:stdgo._internal.go.ast.Ast_gendecl.GenDecl):stdgo._internal.go.ast.Ast_gendecl.GenDecl {
        this.decl = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
        return v;
    }
    public var _order(get, set) : StdTypes.Int;
    function get__order():StdTypes.Int return this._order;
    function set__order(v:StdTypes.Int):StdTypes.Int {
        this._order = (v : stdgo.GoInt);
        return v;
    }
    public function new(?doc:String, ?names:Array<String>, ?decl:stdgo._internal.go.ast.Ast_gendecl.GenDecl, ?_order:StdTypes.Int) this = new stdgo._internal.go.doc.Doc_value.Value((doc : stdgo.GoString), ([for (i in names) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (decl : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), (_order : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.Doc.Type__static_extension) abstract Type_(stdgo._internal.go.doc.Doc_type_.Type_) from stdgo._internal.go.doc.Doc_type_.Type_ to stdgo._internal.go.doc.Doc_type_.Type_ {
    public var doc(get, set) : String;
    function get_doc():String return this.doc;
    function set_doc(v:String):String {
        this.doc = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var decl(get, set) : stdgo._internal.go.ast.Ast_gendecl.GenDecl;
    function get_decl():stdgo._internal.go.ast.Ast_gendecl.GenDecl return this.decl;
    function set_decl(v:stdgo._internal.go.ast.Ast_gendecl.GenDecl):stdgo._internal.go.ast.Ast_gendecl.GenDecl {
        this.decl = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
        return v;
    }
    public var consts(get, set) : Array<Value>;
    function get_consts():Array<Value> return [for (i in this.consts) i];
    function set_consts(v:Array<Value>):Array<Value> {
        this.consts = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
        return v;
    }
    public var vars(get, set) : Array<Value>;
    function get_vars():Array<Value> return [for (i in this.vars) i];
    function set_vars(v:Array<Value>):Array<Value> {
        this.vars = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
        return v;
    }
    public var funcs(get, set) : Array<Func>;
    function get_funcs():Array<Func> return [for (i in this.funcs) i];
    function set_funcs(v:Array<Func>):Array<Func> {
        this.funcs = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>);
        return v;
    }
    public var methods(get, set) : Array<Func>;
    function get_methods():Array<Func> return [for (i in this.methods) i];
    function set_methods(v:Array<Func>):Array<Func> {
        this.methods = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>);
        return v;
    }
    public var examples(get, set) : Array<Example>;
    function get_examples():Array<Example> return [for (i in this.examples) i];
    function set_examples(v:Array<Example>):Array<Example> {
        this.examples = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>);
        return v;
    }
    public function new(?doc:String, ?name:String, ?decl:stdgo._internal.go.ast.Ast_gendecl.GenDecl, ?consts:Array<Value>, ?vars:Array<Value>, ?funcs:Array<Func>, ?methods:Array<Func>, ?examples:Array<Example>) this = new stdgo._internal.go.doc.Doc_type_.Type_((doc : stdgo.GoString), (name : stdgo.GoString), (decl : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), ([for (i in consts) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>), ([for (i in vars) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>), ([for (i in funcs) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>), ([for (i in methods) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>), ([for (i in examples) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.Doc.Func_static_extension) abstract Func(stdgo._internal.go.doc.Doc_func.Func) from stdgo._internal.go.doc.Doc_func.Func to stdgo._internal.go.doc.Doc_func.Func {
    public var doc(get, set) : String;
    function get_doc():String return this.doc;
    function set_doc(v:String):String {
        this.doc = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var decl(get, set) : stdgo._internal.go.ast.Ast_funcdecl.FuncDecl;
    function get_decl():stdgo._internal.go.ast.Ast_funcdecl.FuncDecl return this.decl;
    function set_decl(v:stdgo._internal.go.ast.Ast_funcdecl.FuncDecl):stdgo._internal.go.ast.Ast_funcdecl.FuncDecl {
        this.decl = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        return v;
    }
    public var recv(get, set) : String;
    function get_recv():String return this.recv;
    function set_recv(v:String):String {
        this.recv = (v : stdgo.GoString);
        return v;
    }
    public var orig(get, set) : String;
    function get_orig():String return this.orig;
    function set_orig(v:String):String {
        this.orig = (v : stdgo.GoString);
        return v;
    }
    public var level(get, set) : StdTypes.Int;
    function get_level():StdTypes.Int return this.level;
    function set_level(v:StdTypes.Int):StdTypes.Int {
        this.level = (v : stdgo.GoInt);
        return v;
    }
    public var examples(get, set) : Array<Example>;
    function get_examples():Array<Example> return [for (i in this.examples) i];
    function set_examples(v:Array<Example>):Array<Example> {
        this.examples = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>);
        return v;
    }
    public function new(?doc:String, ?name:String, ?decl:stdgo._internal.go.ast.Ast_funcdecl.FuncDecl, ?recv:String, ?orig:String, ?level:StdTypes.Int, ?examples:Array<Example>) this = new stdgo._internal.go.doc.Doc_func.Func((doc : stdgo.GoString), (name : stdgo.GoString), (decl : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), (recv : stdgo.GoString), (orig : stdgo.GoString), (level : stdgo.GoInt), ([for (i in examples) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.Doc.Note_static_extension) abstract Note(stdgo._internal.go.doc.Doc_note.Note) from stdgo._internal.go.doc.Doc_note.Note to stdgo._internal.go.doc.Doc_note.Note {
    public var pos(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_pos():stdgo._internal.go.token.Token_pos.Pos return this.pos;
    function set_pos(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.pos = v;
        return v;
    }
    public var end(get, set) : stdgo._internal.go.token.Token_pos.Pos;
    function get_end():stdgo._internal.go.token.Token_pos.Pos return this.end;
    function set_end(v:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        this.end = v;
        return v;
    }
    public var uID(get, set) : String;
    function get_uID():String return this.uID;
    function set_uID(v:String):String {
        this.uID = (v : stdgo.GoString);
        return v;
    }
    public var body(get, set) : String;
    function get_body():String return this.body;
    function set_body(v:String):String {
        this.body = (v : stdgo.GoString);
        return v;
    }
    public function new(?pos:stdgo._internal.go.token.Token_pos.Pos, ?end:stdgo._internal.go.token.Token_pos.Pos, ?uID:String, ?body:String) this = new stdgo._internal.go.doc.Doc_note.Note(pos, end, (uID : stdgo.GoString), (body : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.Doc.Example_static_extension) abstract Example(stdgo._internal.go.doc.Doc_example.Example) from stdgo._internal.go.doc.Doc_example.Example to stdgo._internal.go.doc.Doc_example.Example {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var suffix(get, set) : String;
    function get_suffix():String return this.suffix;
    function set_suffix(v:String):String {
        this.suffix = (v : stdgo.GoString);
        return v;
    }
    public var doc(get, set) : String;
    function get_doc():String return this.doc;
    function set_doc(v:String):String {
        this.doc = (v : stdgo.GoString);
        return v;
    }
    public var code(get, set) : stdgo._internal.go.ast.Ast_node.Node;
    function get_code():stdgo._internal.go.ast.Ast_node.Node return this.code;
    function set_code(v:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_node.Node {
        this.code = v;
        return v;
    }
    public var play(get, set) : stdgo._internal.go.ast.Ast_file.File;
    function get_play():stdgo._internal.go.ast.Ast_file.File return this.play;
    function set_play(v:stdgo._internal.go.ast.Ast_file.File):stdgo._internal.go.ast.Ast_file.File {
        this.play = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        return v;
    }
    public var comments(get, set) : Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>;
    function get_comments():Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> return [for (i in this.comments) i];
    function set_comments(v:Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> {
        this.comments = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        return v;
    }
    public var output(get, set) : String;
    function get_output():String return this.output;
    function set_output(v:String):String {
        this.output = (v : stdgo.GoString);
        return v;
    }
    public var unordered(get, set) : Bool;
    function get_unordered():Bool return this.unordered;
    function set_unordered(v:Bool):Bool {
        this.unordered = v;
        return v;
    }
    public var emptyOutput(get, set) : Bool;
    function get_emptyOutput():Bool return this.emptyOutput;
    function set_emptyOutput(v:Bool):Bool {
        this.emptyOutput = v;
        return v;
    }
    public var order(get, set) : StdTypes.Int;
    function get_order():StdTypes.Int return this.order;
    function set_order(v:StdTypes.Int):StdTypes.Int {
        this.order = (v : stdgo.GoInt);
        return v;
    }
    public function new(?name:String, ?suffix:String, ?doc:String, ?code:stdgo._internal.go.ast.Ast_node.Node, ?play:stdgo._internal.go.ast.Ast_file.File, ?comments:Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, ?output:String, ?unordered:Bool, ?emptyOutput:Bool, ?order:StdTypes.Int) this = new stdgo._internal.go.doc.Doc_example.Example((name : stdgo.GoString), (suffix : stdgo.GoString), (doc : stdgo.GoString), code, (play : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), ([for (i in comments) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>), (output : stdgo.GoString), unordered, emptyOutput, (order : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.Doc.T_namedType_static_extension) @:dox(hide) abstract T_namedType(stdgo._internal.go.doc.Doc_t_namedtype.T_namedType) from stdgo._internal.go.doc.Doc_t_namedtype.T_namedType to stdgo._internal.go.doc.Doc_t_namedtype.T_namedType {
    public var _doc(get, set) : String;
    function get__doc():String return this._doc;
    function set__doc(v:String):String {
        this._doc = (v : stdgo.GoString);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _decl(get, set) : stdgo._internal.go.ast.Ast_gendecl.GenDecl;
    function get__decl():stdgo._internal.go.ast.Ast_gendecl.GenDecl return this._decl;
    function set__decl(v:stdgo._internal.go.ast.Ast_gendecl.GenDecl):stdgo._internal.go.ast.Ast_gendecl.GenDecl {
        this._decl = (v : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
        return v;
    }
    public var _isEmbedded(get, set) : Bool;
    function get__isEmbedded():Bool return this._isEmbedded;
    function set__isEmbedded(v:Bool):Bool {
        this._isEmbedded = v;
        return v;
    }
    public var _isStruct(get, set) : Bool;
    function get__isStruct():Bool return this._isStruct;
    function set__isStruct(v:Bool):Bool {
        this._isStruct = v;
        return v;
    }
    public var _embedded(get, set) : T_embeddedSet;
    function get__embedded():T_embeddedSet return this._embedded;
    function set__embedded(v:T_embeddedSet):T_embeddedSet {
        this._embedded = v;
        return v;
    }
    public var _values(get, set) : Array<Value>;
    function get__values():Array<Value> return [for (i in this._values) i];
    function set__values(v:Array<Value>):Array<Value> {
        this._values = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
        return v;
    }
    public var _funcs(get, set) : T_methodSet;
    function get__funcs():T_methodSet return this._funcs;
    function set__funcs(v:T_methodSet):T_methodSet {
        this._funcs = v;
        return v;
    }
    public var _methods(get, set) : T_methodSet;
    function get__methods():T_methodSet return this._methods;
    function set__methods(v:T_methodSet):T_methodSet {
        this._methods = v;
        return v;
    }
    public function new(?_doc:String, ?_name:String, ?_decl:stdgo._internal.go.ast.Ast_gendecl.GenDecl, ?_isEmbedded:Bool, ?_isStruct:Bool, ?_embedded:T_embeddedSet, ?_values:Array<Value>, ?_funcs:T_methodSet, ?_methods:T_methodSet) this = new stdgo._internal.go.doc.Doc_t_namedtype.T_namedType((_doc : stdgo.GoString), (_name : stdgo.GoString), (_decl : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _isEmbedded, _isStruct, _embedded, ([for (i in _values) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>), _funcs, _methods);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.Doc.T_reader_static_extension) @:dox(hide) abstract T_reader(stdgo._internal.go.doc.Doc_t_reader.T_reader) from stdgo._internal.go.doc.Doc_t_reader.T_reader to stdgo._internal.go.doc.Doc_t_reader.T_reader {
    public var _mode(get, set) : Mode;
    function get__mode():Mode return this._mode;
    function set__mode(v:Mode):Mode {
        this._mode = v;
        return v;
    }
    public var _doc(get, set) : String;
    function get__doc():String return this._doc;
    function set__doc(v:String):String {
        this._doc = (v : stdgo.GoString);
        return v;
    }
    public var _filenames(get, set) : Array<String>;
    function get__filenames():Array<String> return [for (i in this._filenames) i];
    function set__filenames(v:Array<String>):Array<String> {
        this._filenames = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _notes(get, set) : Map<String, Array<Note>>;
    function get__notes():Map<String, Array<Note>> return {
        final __obj__:Map<String, Array<Note>> = [];
        for (key => value in this._notes) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set__notes(v:Map<String, Array<Note>>):Map<String, Array<Note>> {
        this._notes = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>);
            };
            __obj__;
        };
        return v;
    }
    public var _imports(get, set) : Map<String, StdTypes.Int>;
    function get__imports():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this._imports) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__imports(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this._imports = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var _hasDotImp(get, set) : Bool;
    function get__hasDotImp():Bool return this._hasDotImp;
    function set__hasDotImp(v:Bool):Bool {
        this._hasDotImp = v;
        return v;
    }
    public var _importByName(get, set) : Map<String, String>;
    function get__importByName():Map<String, String> return {
        final __obj__:Map<String, String> = [];
        for (key => value in this._importByName) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__importByName(v:Map<String, String>):Map<String, String> {
        this._importByName = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var _values(get, set) : Array<Value>;
    function get__values():Array<Value> return [for (i in this._values) i];
    function set__values(v:Array<Value>):Array<Value> {
        this._values = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
        return v;
    }
    public var _order(get, set) : StdTypes.Int;
    function get__order():StdTypes.Int return this._order;
    function set__order(v:StdTypes.Int):StdTypes.Int {
        this._order = (v : stdgo.GoInt);
        return v;
    }
    public var _types(get, set) : Map<String, T_namedType>;
    function get__types():Map<String, T_namedType> return {
        final __obj__:Map<String, T_namedType> = [];
        for (key => value in this._types) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__types(v:Map<String, T_namedType>):Map<String, T_namedType> {
        this._types = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>);
            };
            __obj__;
        };
        return v;
    }
    public var _funcs(get, set) : T_methodSet;
    function get__funcs():T_methodSet return this._funcs;
    function set__funcs(v:T_methodSet):T_methodSet {
        this._funcs = v;
        return v;
    }
    public var _shadowedPredecl(get, set) : Map<String, Bool>;
    function get__shadowedPredecl():Map<String, Bool> return {
        final __obj__:Map<String, Bool> = [];
        for (key => value in this._shadowedPredecl) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__shadowedPredecl(v:Map<String, Bool>):Map<String, Bool> {
        this._shadowedPredecl = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _fixmap(get, set) : Map<String, Array<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>;
    function get__fixmap():Map<String, Array<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>> return {
        final __obj__:Map<String, Array<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>> = [];
        for (key => value in this._fixmap) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set__fixmap(v:Map<String, Array<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>):Map<String, Array<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>> {
        this._fixmap = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_mode:Mode, ?_doc:String, ?_filenames:Array<String>, ?_notes:Map<String, Array<Note>>, ?_imports:Map<String, StdTypes.Int>, ?_hasDotImp:Bool, ?_importByName:Map<String, String>, ?_values:Array<Value>, ?_order:StdTypes.Int, ?_types:Map<String, T_namedType>, ?_funcs:T_methodSet, ?_shadowedPredecl:Map<String, Bool>, ?_fixmap:Map<String, Array<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>) this = new stdgo._internal.go.doc.Doc_t_reader.T_reader(
_mode,
(_doc : stdgo.GoString),
([for (i in _filenames) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>();
        for (key => value in _notes) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in _imports) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    },
_hasDotImp,
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
        for (key => value in _importByName) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
        };
        __obj__;
    },
([for (i in _values) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>),
(_order : stdgo.GoInt),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>>();
        for (key => value in _types) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>);
        };
        __obj__;
    },
_funcs,
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
        for (key => value in _shadowedPredecl) {
            __obj__[(key : stdgo.GoString)] = value;
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>>();
        for (key => value in _fixmap) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.doc.Doc.T_data_static_extension) @:dox(hide) abstract T_data(stdgo._internal.go.doc.Doc_t_data.T_data) from stdgo._internal.go.doc.Doc_t_data.T_data to stdgo._internal.go.doc.Doc_t_data.T_data {
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public var _swap(get, set) : (StdTypes.Int, StdTypes.Int) -> Void;
    function get__swap():(StdTypes.Int, StdTypes.Int) -> Void return (_0, _1) -> this._swap(_0, _1);
    function set__swap(v:(StdTypes.Int, StdTypes.Int) -> Void):(StdTypes.Int, StdTypes.Int) -> Void {
        this._swap = v;
        return v;
    }
    public var _less(get, set) : (StdTypes.Int, StdTypes.Int) -> Bool;
    function get__less():(StdTypes.Int, StdTypes.Int) -> Bool return (_0, _1) -> this._less(_0, _1);
    function set__less(v:(StdTypes.Int, StdTypes.Int) -> Bool):(StdTypes.Int, StdTypes.Int) -> Bool {
        this._less = v;
        return v;
    }
    public function new(?_n:StdTypes.Int, ?_swap:(StdTypes.Int, StdTypes.Int) -> Void, ?_less:(StdTypes.Int, StdTypes.Int) -> Bool) this = new stdgo._internal.go.doc.Doc_t_data.T_data((_n : stdgo.GoInt), _swap, _less);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Mode = stdgo._internal.go.doc.Doc_mode.Mode;
typedef Filter = stdgo._internal.go.doc.Doc_filter.Filter;
@:dox(hide) typedef T_methodSet = stdgo._internal.go.doc.Doc_t_methodset.T_methodSet;
@:dox(hide) typedef T_embeddedSet = stdgo._internal.go.doc.Doc_t_embeddedset.T_embeddedSet;
typedef PackagePointer = stdgo._internal.go.doc.Doc_packagepointer.PackagePointer;
class Package_static_extension {
    static public function synopsis(_p:Package, _text:String):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension.synopsis(_p, _text);
    }
    static public function filter(_p:Package, _f:Filter):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension.filter(_p, _f);
    }
    static public function text(_p:Package, _text:String):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        final _text = (_text : stdgo.GoString);
        return [for (i in stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension.text(_p, _text)) i];
    }
    static public function markdown(_p:Package, _text:String):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        final _text = (_text : stdgo.GoString);
        return [for (i in stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension.markdown(_p, _text)) i];
    }
    static public function hTML(_p:Package, _text:String):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        final _text = (_text : stdgo.GoString);
        return [for (i in stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension.hTML(_p, _text)) i];
    }
    static public function printer(_p:Package):stdgo._internal.go.doc.comment.Comment_printer.Printer {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        return stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension.printer(_p);
    }
    static public function parser(_p:Package):stdgo._internal.go.doc.comment.Comment_parser.Parser {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        return stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension.parser(_p);
    }
    static public function _lookupPackage(_p:Package, _name:String):stdgo.Tuple<String, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension._lookupPackage(_p, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _lookupSym(_p:Package, _recv:String, _name:String):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        final _recv = (_recv : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension._lookupSym(_p, _recv, _name);
    }
    static public function _collectFuncs(_p:Package, _funcs:Array<Func>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        final _funcs = ([for (i in _funcs) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>);
        stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension._collectFuncs(_p, _funcs);
    }
    static public function _collectTypes(_p:Package, _types:Array<Type_>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        final _types = ([for (i in _types) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>>);
        stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension._collectTypes(_p, _types);
    }
    static public function _collectValues(_p:Package, _values:Array<Value>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>);
        final _values = ([for (i in _values) (i : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
        stdgo._internal.go.doc.Doc_package_static_extension.Package_static_extension._collectValues(_p, _values);
    }
}
typedef ValuePointer = stdgo._internal.go.doc.Doc_valuepointer.ValuePointer;
class Value_static_extension {

}
typedef Type_Pointer = stdgo._internal.go.doc.Doc_type_pointer.Type_Pointer;
class Type__static_extension {

}
typedef FuncPointer = stdgo._internal.go.doc.Doc_funcpointer.FuncPointer;
class Func_static_extension {

}
typedef NotePointer = stdgo._internal.go.doc.Doc_notepointer.NotePointer;
class Note_static_extension {

}
typedef ExamplePointer = stdgo._internal.go.doc.Doc_examplepointer.ExamplePointer;
class Example_static_extension {

}
@:dox(hide) typedef T_namedTypePointer = stdgo._internal.go.doc.Doc_t_namedtypepointer.T_namedTypePointer;
@:dox(hide) class T_namedType_static_extension {

}
@:dox(hide) typedef T_readerPointer = stdgo._internal.go.doc.Doc_t_readerpointer.T_readerPointer;
@:dox(hide) class T_reader_static_extension {
    static public function _cleanupTypes(_r:T_reader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._cleanupTypes(_r);
    }
    static public function _computeMethodSets(_r:T_reader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._computeMethodSets(_r);
    }
    static public function _collectEmbeddedMethods(_r:T_reader, _mset:T_methodSet, _typ:T_namedType, _recvTypeName:String, _embeddedIsPtr:Bool, _level:StdTypes.Int, _visited:T_embeddedSet):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _typ = (_typ : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>);
        final _recvTypeName = (_recvTypeName : stdgo.GoString);
        final _level = (_level : stdgo.GoInt);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._collectEmbeddedMethods(_r, _mset, _typ, _recvTypeName, _embeddedIsPtr, _level, _visited);
    }
    static public function _readPackage(_r:T_reader, _pkg:stdgo._internal.go.ast.Ast_package.Package, _mode:Mode):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._readPackage(_r, _pkg, _mode);
    }
    static public function _readFile(_r:T_reader, _src:stdgo._internal.go.ast.Ast_file.File):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _src = (_src : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._readFile(_r, _src);
    }
    static public function _readNotes(_r:T_reader, _comments:Array<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _comments = ([for (i in _comments) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._readNotes(_r, _comments);
    }
    static public function _readNote(_r:T_reader, _list:Array<stdgo._internal.go.ast.Ast_comment.Comment>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _list = ([for (i in _list) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._readNote(_r, _list);
    }
    static public function _readFunc(_r:T_reader, _fun:stdgo._internal.go.ast.Ast_funcdecl.FuncDecl):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _fun = (_fun : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._readFunc(_r, _fun);
    }
    static public function _isPredeclared(_r:T_reader, _n:String):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _n = (_n : stdgo.GoString);
        return stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._isPredeclared(_r, _n);
    }
    static public function _readType(_r:T_reader, _decl:stdgo._internal.go.ast.Ast_gendecl.GenDecl, _spec:stdgo._internal.go.ast.Ast_typespec.TypeSpec):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _decl = (_decl : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
        final _spec = (_spec : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._readType(_r, _decl, _spec);
    }
    static public function _readValue(_r:T_reader, _decl:stdgo._internal.go.ast.Ast_gendecl.GenDecl):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _decl = (_decl : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._readValue(_r, _decl);
    }
    static public function _remember(_r:T_reader, _predecl:String, _typ:stdgo._internal.go.ast.Ast_interfacetype.InterfaceType):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _predecl = (_predecl : stdgo.GoString);
        final _typ = (_typ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._remember(_r, _predecl, _typ);
    }
    static public function _readDoc(_r:T_reader, _comment:stdgo._internal.go.ast.Ast_commentgroup.CommentGroup):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _comment = (_comment : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._readDoc(_r, _comment);
    }
    static public function _recordAnonymousField(_r:T_reader, _parent:T_namedType, _fieldType:stdgo._internal.go.ast.Ast_expr.Expr):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _parent = (_parent : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>);
        return stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._recordAnonymousField(_r, _parent, _fieldType);
    }
    static public function _lookupType(_r:T_reader, _name:String):T_namedType {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._lookupType(_r, _name);
    }
    static public function _isVisible(_r:T_reader, _name:String):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._isVisible(_r, _name);
    }
    static public function _fileExports(_r:T_reader, _src:stdgo._internal.go.ast.Ast_file.File):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _src = (_src : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._fileExports(_r, _src);
    }
    static public function _filterDecl(_r:T_reader, _decl:stdgo._internal.go.ast.Ast_decl.Decl):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        return stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._filterDecl(_r, _decl);
    }
    static public function _filterSpecList(_r:T_reader, _list:Array<stdgo._internal.go.ast.Ast_spec.Spec>, _tok:stdgo._internal.go.token.Token_token.Token):Array<stdgo._internal.go.ast.Ast_spec.Spec> {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _list = ([for (i in _list) i] : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
        return [for (i in stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._filterSpecList(_r, _list, _tok)) i];
    }
    static public function _filterSpec(_r:T_reader, _spec:stdgo._internal.go.ast.Ast_spec.Spec):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        return stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._filterSpec(_r, _spec);
    }
    static public function _filterType(_r:T_reader, _parent:T_namedType, _typ:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _parent = (_parent : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._filterType(_r, _parent, _typ);
    }
    static public function _filterParamList(_r:T_reader, _fields:stdgo._internal.go.ast.Ast_fieldlist.FieldList):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _fields = (_fields : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._filterParamList(_r, _fields);
    }
    static public function _filterFieldList(_r:T_reader, _parent:T_namedType, _fields:stdgo._internal.go.ast.Ast_fieldlist.FieldList, _ityp:stdgo._internal.go.ast.Ast_interfacetype.InterfaceType):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>);
        final _parent = (_parent : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>);
        final _fields = (_fields : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        final _ityp = (_ityp : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>);
        return stdgo._internal.go.doc.Doc_t_reader_static_extension.T_reader_static_extension._filterFieldList(_r, _parent, _fields, _ityp);
    }
}
@:dox(hide) typedef T_dataPointer = stdgo._internal.go.doc.Doc_t_datapointer.T_dataPointer;
@:dox(hide) class T_data_static_extension {
    static public function less(_d:T_data, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.Doc_t_data.T_data>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.go.doc.Doc_t_data_static_extension.T_data_static_extension.less(_d, _i, _j);
    }
    static public function swap(_d:T_data, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.Doc_t_data.T_data>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.go.doc.Doc_t_data_static_extension.T_data_static_extension.swap(_d, _i, _j);
    }
    static public function len(_d:T_data):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.go.doc.Doc_t_data.T_data>);
        return stdgo._internal.go.doc.Doc_t_data_static_extension.T_data_static_extension.len(_d);
    }
}
typedef ModePointer = stdgo._internal.go.doc.Doc_modepointer.ModePointer;
class Mode_static_extension {

}
typedef FilterPointer = stdgo._internal.go.doc.Doc_filterpointer.FilterPointer;
class Filter_static_extension {

}
@:dox(hide) typedef T_methodSetPointer = stdgo._internal.go.doc.Doc_t_methodsetpointer.T_methodSetPointer;
@:dox(hide) class T_methodSet_static_extension {
    static public function _add(_mset:T_methodSet, _m:Func):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>);
        stdgo._internal.go.doc.Doc_t_methodset_static_extension.T_methodSet_static_extension._add(_mset, _m);
    }
    static public function _set(_mset:T_methodSet, _f:stdgo._internal.go.ast.Ast_funcdecl.FuncDecl, _preserveAST:Bool):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        stdgo._internal.go.doc.Doc_t_methodset_static_extension.T_methodSet_static_extension._set(_mset, _f, _preserveAST);
    }
}
@:dox(hide) typedef T_embeddedSetPointer = stdgo._internal.go.doc.Doc_t_embeddedsetpointer.T_embeddedSetPointer;
@:dox(hide) class T_embeddedSet_static_extension {

}
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
    static public inline function toHTML(_w:stdgo._internal.io.Io_writer.Writer, _text:String, _words:Map<String, String>):Void {
        final _text = (_text : stdgo.GoString);
        final _words = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in _words) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        stdgo._internal.go.doc.Doc_tohtml.toHTML(_w, _text, _words);
    }
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
    static public inline function toText(_w:stdgo._internal.io.Io_writer.Writer, _text:String, _prefix:String, _codePrefix:String, _width:StdTypes.Int):Void {
        final _text = (_text : stdgo.GoString);
        final _prefix = (_prefix : stdgo.GoString);
        final _codePrefix = (_codePrefix : stdgo.GoString);
        final _width = (_width : stdgo.GoInt);
        stdgo._internal.go.doc.Doc_totext.toText(_w, _text, _prefix, _codePrefix, _width);
    }
    /**
        * New computes the package documentation for the given package AST.
        * New takes ownership of the AST pkg and may edit or overwrite it.
        * To have the Examples fields populated, use NewFromFiles and include
        * the package's _test.go files.
    **/
    static public inline function new_(_pkg:stdgo._internal.go.ast.Ast_package.Package, _importPath:String, _mode:Mode):Package {
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>);
        final _importPath = (_importPath : stdgo.GoString);
        return stdgo._internal.go.doc.Doc_new_.new_(_pkg, _importPath, _mode);
    }
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
    static public inline function newFromFiles(_fset:stdgo._internal.go.token.Token_fileset.FileSet, _files:Array<stdgo._internal.go.ast.Ast_file.File>, _importPath:String, _opts:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Package, stdgo.Error> {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _files = ([for (i in _files) (i : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>);
        final _importPath = (_importPath : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.doc.Doc_newfromfiles.newFromFiles(_fset, _files, _importPath, ...[for (i in _opts) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
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
    static public inline function examples(_testFiles:haxe.Rest<stdgo._internal.go.ast.Ast_file.File>):Array<Example> {
        return [for (i in stdgo._internal.go.doc.Doc_examples.examples(...[for (i in _testFiles) i])) i];
    }
    /**
        * IsPredeclared reports whether s is a predeclared identifier.
    **/
    static public inline function isPredeclared(_s:String):Bool {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.go.doc.Doc_ispredeclared.isPredeclared(_s);
    }
    /**
        * Synopsis returns a cleaned version of the first sentence in text.
        * 
        * Deprecated: New programs should use [Package.Synopsis] instead,
        * which handles links in text properly.
    **/
    static public inline function synopsis(_text:String):String {
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.go.doc.Doc_synopsis.synopsis(_text);
    }
}

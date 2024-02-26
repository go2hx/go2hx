package stdgo.go.ast;
/**
    // Package ast declares the types used to represent syntax trees for Go
    // packages.
**/
private var __go2hxdoc__package : Bool;
final send : stdgo._internal.go.ast.Ast.ChanDir = stdgo._internal.go.ast.Ast.send;
final recv = stdgo._internal.go.ast.Ast.recv;
final filterFuncDuplicates : stdgo._internal.go.ast.Ast.MergeMode = stdgo._internal.go.ast.Ast.filterFuncDuplicates;
final filterUnassociatedComments = stdgo._internal.go.ast.Ast.filterUnassociatedComments;
final filterImportDuplicates = stdgo._internal.go.ast.Ast.filterImportDuplicates;
final bad : stdgo._internal.go.ast.Ast.ObjKind = stdgo._internal.go.ast.Ast.bad;
final pkg = stdgo._internal.go.ast.Ast.pkg;
final con = stdgo._internal.go.ast.Ast.con;
final typ = stdgo._internal.go.ast.Ast.typ;
final var_ = stdgo._internal.go.ast.Ast.var_;
final fun = stdgo._internal.go.ast.Ast.fun;
final lbl = stdgo._internal.go.ast.Ast.lbl;
typedef Node = stdgo._internal.go.ast.Ast.Node;
typedef Expr = stdgo._internal.go.ast.Ast.Expr;
typedef Stmt = stdgo._internal.go.ast.Ast.Stmt;
typedef Decl = stdgo._internal.go.ast.Ast.Decl;
typedef Spec = stdgo._internal.go.ast.Ast.Spec;
typedef Visitor = stdgo._internal.go.ast.Ast.Visitor;
@:invalid typedef Comment = Dynamic;
@:invalid typedef CommentGroup = Dynamic;
@:invalid typedef Field = Dynamic;
@:invalid typedef FieldList = Dynamic;
@:invalid typedef BadExpr = Dynamic;
@:invalid typedef Ident = Dynamic;
@:invalid typedef Ellipsis = Dynamic;
@:invalid typedef BasicLit = Dynamic;
@:invalid typedef FuncLit = Dynamic;
@:invalid typedef CompositeLit = Dynamic;
@:invalid typedef ParenExpr = Dynamic;
@:invalid typedef SelectorExpr = Dynamic;
@:invalid typedef IndexExpr = Dynamic;
@:invalid typedef IndexListExpr = Dynamic;
@:invalid typedef SliceExpr = Dynamic;
@:invalid typedef TypeAssertExpr = Dynamic;
@:invalid typedef CallExpr = Dynamic;
@:invalid typedef StarExpr = Dynamic;
@:invalid typedef UnaryExpr = Dynamic;
@:invalid typedef BinaryExpr = Dynamic;
@:invalid typedef KeyValueExpr = Dynamic;
@:invalid typedef ArrayType = Dynamic;
@:invalid typedef StructType = Dynamic;
@:invalid typedef FuncType = Dynamic;
@:invalid typedef InterfaceType = Dynamic;
@:invalid typedef MapType = Dynamic;
@:invalid typedef ChanType = Dynamic;
@:invalid typedef BadStmt = Dynamic;
@:invalid typedef DeclStmt = Dynamic;
@:invalid typedef EmptyStmt = Dynamic;
@:invalid typedef LabeledStmt = Dynamic;
@:invalid typedef ExprStmt = Dynamic;
@:invalid typedef SendStmt = Dynamic;
@:invalid typedef IncDecStmt = Dynamic;
@:invalid typedef AssignStmt = Dynamic;
@:invalid typedef GoStmt = Dynamic;
@:invalid typedef DeferStmt = Dynamic;
@:invalid typedef ReturnStmt = Dynamic;
@:invalid typedef BranchStmt = Dynamic;
@:invalid typedef BlockStmt = Dynamic;
@:invalid typedef IfStmt = Dynamic;
@:invalid typedef CaseClause = Dynamic;
@:invalid typedef SwitchStmt = Dynamic;
@:invalid typedef TypeSwitchStmt = Dynamic;
@:invalid typedef CommClause = Dynamic;
@:invalid typedef SelectStmt = Dynamic;
@:invalid typedef ForStmt = Dynamic;
@:invalid typedef RangeStmt = Dynamic;
@:invalid typedef ImportSpec = Dynamic;
@:invalid typedef ValueSpec = Dynamic;
@:invalid typedef TypeSpec = Dynamic;
@:invalid typedef BadDecl = Dynamic;
@:invalid typedef GenDecl = Dynamic;
@:invalid typedef FuncDecl = Dynamic;
@:invalid typedef File = Dynamic;
@:invalid typedef Package = Dynamic;
@:invalid typedef T_commentListReader = Dynamic;
@:invalid typedef T_posSpan = Dynamic;
@:invalid typedef T_cgPos = Dynamic;
@:invalid typedef T_printer = Dynamic;
@:invalid typedef T_localError = Dynamic;
@:invalid typedef T_pkgBuilder = Dynamic;
@:invalid typedef Scope = Dynamic;
@:invalid typedef Object = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.go.ast.Ast.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.go.ast.Ast.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.go.ast.Ast.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.go.ast.Ast.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.go.ast.Ast.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.go.ast.Ast.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.go.ast.Ast.T__struct_6;
typedef ChanDir = stdgo._internal.go.ast.Ast.ChanDir;
typedef T_byPos = stdgo._internal.go.ast.Ast.T_byPos;
typedef CommentMap = stdgo._internal.go.ast.Ast.CommentMap;
typedef T_byInterval = stdgo._internal.go.ast.Ast.T_byInterval;
typedef T_nodeStack = stdgo._internal.go.ast.Ast.T_nodeStack;
typedef Filter = stdgo._internal.go.ast.Ast.Filter;
typedef MergeMode = stdgo._internal.go.ast.Ast.MergeMode;
typedef FieldFilter = stdgo._internal.go.ast.Ast.FieldFilter;
typedef Importer = stdgo._internal.go.ast.Ast.Importer;
typedef ObjKind = stdgo._internal.go.ast.Ast.ObjKind;
typedef T_inspector = stdgo._internal.go.ast.Ast.T_inspector;
/**
    // NewIdent creates a new Ident without position.
    // Useful for ASTs generated by code other than the Go parser.
**/
inline function newIdent(name:String):Ident throw "not implemented";
/**
    // IsExported reports whether name starts with an upper-case letter.
**/
inline function isExported(name:String):Bool throw "not implemented";
/**
    // IsGenerated reports whether the file was generated by a program,
    // not handwritten, by detecting the special comment described
    // at https://go.dev/s/generatedcode.
    //
    // The syntax tree must have been parsed with the ParseComments flag.
    // Example:
    //
    //	f, err := parser.ParseFile(fset, filename, src, parser.ParseComments|parser.PackageClauseOnly)
    //	if err != nil { ... }
    //	gen := ast.IsGenerated(f)
**/
inline function isGenerated(file:File):Bool throw "not implemented";
inline function testCommentText(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIsDirective(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // NewCommentMap creates a new comment map by associating comment groups
    // of the comments list with the nodes of the AST specified by node.
    //
    // A comment group g is associated with a node n if:
    //
    //   - g starts on the same line as n ends
    //   - g starts on the line immediately following n, and there is
    //     at least one empty line after g and before the next node
    //   - g starts before n and is not associated to the node before n
    //     via the previous rules
    //
    // NewCommentMap tries to associate a comment group to the "largest"
    // node possible: For instance, if the comment is a line comment
    // trailing an assignment, the comment is associated with the entire
    // assignment rather than just the last operand in the assignment.
**/
inline function newCommentMap(fset:stdgo._internal.go.token.Token.FileSet, node:Node, comments:Array<CommentGroup>):CommentMap throw "not implemented";
/**
    // FileExports trims the AST for a Go source file in place such that
    // only exported nodes remain: all top-level identifiers which are not exported
    // and their associated information (such as type, initial value, or function
    // body) are removed. Non-exported fields and methods of exported types are
    // stripped. The File.Comments list is not changed.
    //
    // FileExports reports whether there are exported declarations.
**/
inline function fileExports(src:File):Bool throw "not implemented";
/**
    // PackageExports trims the AST for a Go package in place such that
    // only exported nodes remain. The pkg.Files list is not changed, so that
    // file names and top-level package comments don't get lost.
    //
    // PackageExports reports whether there are exported declarations;
    // it returns false otherwise.
**/
inline function packageExports(pkg:Package):Bool throw "not implemented";
/**
    // FilterDecl trims the AST for a Go declaration in place by removing
    // all names (including struct field and interface method names, but
    // not from parameter lists) that don't pass through the filter f.
    //
    // FilterDecl reports whether there are any declared names left after
    // filtering.
**/
inline function filterDecl(decl:Decl, f:Filter):Bool throw "not implemented";
/**
    // FilterFile trims the AST for a Go file in place by removing all
    // names from top-level declarations (including struct field and
    // interface method names, but not from parameter lists) that don't
    // pass through the filter f. If the declaration is empty afterwards,
    // the declaration is removed from the AST. Import declarations are
    // always removed. The File.Comments list is not changed.
    //
    // FilterFile reports whether there are any top-level declarations
    // left after filtering.
**/
inline function filterFile(src:File, f:Filter):Bool throw "not implemented";
/**
    // FilterPackage trims the AST for a Go package in place by removing
    // all names from top-level declarations (including struct field and
    // interface method names, but not from parameter lists) that don't
    // pass through the filter f. If the declaration is empty afterwards,
    // the declaration is removed from the AST. The pkg.Files list is not
    // changed, so that file names and top-level package comments don't get
    // lost.
    //
    // FilterPackage reports whether there are any top-level declarations
    // left after filtering.
**/
inline function filterPackage(pkg:Package, f:Filter):Bool throw "not implemented";
/**
    // MergePackageFiles creates a file AST by merging the ASTs of the
    // files belonging to a package. The mode flags control merging behavior.
**/
inline function mergePackageFiles(pkg:Package, mode:MergeMode):File throw "not implemented";
/**
    // SortImports sorts runs of consecutive import lines in import blocks in f.
    // It also removes duplicate imports when it is possible to do so without data loss.
**/
inline function sortImports(fset:stdgo._internal.go.token.Token.FileSet, f:File):Void throw "not implemented";
/**
    // NotNilFilter returns true for field values that are not nil;
    // it returns false otherwise.
**/
inline function notNilFilter(_0:String, v:stdgo._internal.reflect.Reflect.Value):Bool throw "not implemented";
/**
    // Fprint prints the (sub-)tree starting at AST node x to w.
    // If fset != nil, position information is interpreted relative
    // to that file set. Otherwise positions are printed as integer
    // values (file set specific offsets).
    //
    // A non-nil FieldFilter f may be provided to control the output:
    // struct fields for which f(fieldname, fieldvalue) is true are
    // printed; all others are filtered from the output. Unexported
    // struct fields are never printed.
**/
inline function fprint(w:stdgo._internal.io.Io.Writer, fset:stdgo._internal.go.token.Token.FileSet, x:stdgo.AnyInterface, f:FieldFilter):stdgo.Error throw "not implemented";
/**
    // Print prints x to standard output, skipping nil fields.
    // Print(fset, x) is the same as Fprint(os.Stdout, fset, x, NotNilFilter).
**/
inline function print(fset:stdgo._internal.go.token.Token.FileSet, x:stdgo.AnyInterface):stdgo.Error throw "not implemented";
inline function testPrint(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // NewPackage creates a new Package node from a set of File nodes. It resolves
    // unresolved identifiers across files and updates each file's Unresolved list
    // accordingly. If a non-nil importer and universe scope are provided, they are
    // used to resolve identifiers not declared in any of the package files. Any
    // remaining unresolved identifiers are reported as undeclared. If the files
    // belong to different packages, one package name is selected and files with
    // different package names are reported and then ignored.
    // The result is a package node and a scanner.ErrorList if there were errors.
**/
inline function newPackage(fset:stdgo._internal.go.token.Token.FileSet, files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<File>>, importer:Importer, universe:Scope):stdgo.Tuple<Package, stdgo.Error> throw "not implemented";
/**
    // NewScope creates a new scope nested in the outer scope.
**/
inline function newScope(outer:Scope):Scope throw "not implemented";
/**
    // NewObj creates a new object of a given kind and name.
**/
inline function newObj(kind:ObjKind, name:String):Object throw "not implemented";
/**
    // Walk traverses an AST in depth-first order: It starts by calling
    // v.Visit(node); node must not be nil. If the visitor w returned by
    // v.Visit(node) is not nil, Walk is invoked recursively with visitor
    // w for each of the non-nil children of node, followed by a call of
    // w.Visit(nil).
**/
inline function walk(v:Visitor, node:Node):Void throw "not implemented";
/**
    // Inspect traverses an AST in depth-first order: It starts by calling
    // f(node); node must not be nil. If f returns true, Inspect invokes f
    // recursively for each of the non-nil children of node, followed by a
    // call of f(nil).
**/
inline function inspect(node:Node, f:Node -> Bool):Void throw "not implemented";
@:invalid typedef Comment_asInterface = Dynamic;
@:invalid typedef Comment_static_extension = Dynamic;
@:invalid typedef CommentGroup_asInterface = Dynamic;
@:invalid typedef CommentGroup_static_extension = Dynamic;
@:invalid typedef Field_asInterface = Dynamic;
@:invalid typedef Field_static_extension = Dynamic;
@:invalid typedef FieldList_asInterface = Dynamic;
@:invalid typedef FieldList_static_extension = Dynamic;
@:invalid typedef BadExpr_asInterface = Dynamic;
@:invalid typedef BadExpr_static_extension = Dynamic;
@:invalid typedef Ident_asInterface = Dynamic;
@:invalid typedef Ident_static_extension = Dynamic;
@:invalid typedef Ellipsis_asInterface = Dynamic;
@:invalid typedef Ellipsis_static_extension = Dynamic;
@:invalid typedef BasicLit_asInterface = Dynamic;
@:invalid typedef BasicLit_static_extension = Dynamic;
@:invalid typedef FuncLit_asInterface = Dynamic;
@:invalid typedef FuncLit_static_extension = Dynamic;
@:invalid typedef CompositeLit_asInterface = Dynamic;
@:invalid typedef CompositeLit_static_extension = Dynamic;
@:invalid typedef ParenExpr_asInterface = Dynamic;
@:invalid typedef ParenExpr_static_extension = Dynamic;
@:invalid typedef SelectorExpr_asInterface = Dynamic;
@:invalid typedef SelectorExpr_static_extension = Dynamic;
@:invalid typedef IndexExpr_asInterface = Dynamic;
@:invalid typedef IndexExpr_static_extension = Dynamic;
@:invalid typedef IndexListExpr_asInterface = Dynamic;
@:invalid typedef IndexListExpr_static_extension = Dynamic;
@:invalid typedef SliceExpr_asInterface = Dynamic;
@:invalid typedef SliceExpr_static_extension = Dynamic;
@:invalid typedef TypeAssertExpr_asInterface = Dynamic;
@:invalid typedef TypeAssertExpr_static_extension = Dynamic;
@:invalid typedef CallExpr_asInterface = Dynamic;
@:invalid typedef CallExpr_static_extension = Dynamic;
@:invalid typedef StarExpr_asInterface = Dynamic;
@:invalid typedef StarExpr_static_extension = Dynamic;
@:invalid typedef UnaryExpr_asInterface = Dynamic;
@:invalid typedef UnaryExpr_static_extension = Dynamic;
@:invalid typedef BinaryExpr_asInterface = Dynamic;
@:invalid typedef BinaryExpr_static_extension = Dynamic;
@:invalid typedef KeyValueExpr_asInterface = Dynamic;
@:invalid typedef KeyValueExpr_static_extension = Dynamic;
@:invalid typedef ArrayType_asInterface = Dynamic;
@:invalid typedef ArrayType_static_extension = Dynamic;
@:invalid typedef StructType_asInterface = Dynamic;
@:invalid typedef StructType_static_extension = Dynamic;
@:invalid typedef FuncType_asInterface = Dynamic;
@:invalid typedef FuncType_static_extension = Dynamic;
@:invalid typedef InterfaceType_asInterface = Dynamic;
@:invalid typedef InterfaceType_static_extension = Dynamic;
@:invalid typedef MapType_asInterface = Dynamic;
@:invalid typedef MapType_static_extension = Dynamic;
@:invalid typedef ChanType_asInterface = Dynamic;
@:invalid typedef ChanType_static_extension = Dynamic;
@:invalid typedef BadStmt_asInterface = Dynamic;
@:invalid typedef BadStmt_static_extension = Dynamic;
@:invalid typedef DeclStmt_asInterface = Dynamic;
@:invalid typedef DeclStmt_static_extension = Dynamic;
@:invalid typedef EmptyStmt_asInterface = Dynamic;
@:invalid typedef EmptyStmt_static_extension = Dynamic;
@:invalid typedef LabeledStmt_asInterface = Dynamic;
@:invalid typedef LabeledStmt_static_extension = Dynamic;
@:invalid typedef ExprStmt_asInterface = Dynamic;
@:invalid typedef ExprStmt_static_extension = Dynamic;
@:invalid typedef SendStmt_asInterface = Dynamic;
@:invalid typedef SendStmt_static_extension = Dynamic;
@:invalid typedef IncDecStmt_asInterface = Dynamic;
@:invalid typedef IncDecStmt_static_extension = Dynamic;
@:invalid typedef AssignStmt_asInterface = Dynamic;
@:invalid typedef AssignStmt_static_extension = Dynamic;
@:invalid typedef GoStmt_asInterface = Dynamic;
@:invalid typedef GoStmt_static_extension = Dynamic;
@:invalid typedef DeferStmt_asInterface = Dynamic;
@:invalid typedef DeferStmt_static_extension = Dynamic;
@:invalid typedef ReturnStmt_asInterface = Dynamic;
@:invalid typedef ReturnStmt_static_extension = Dynamic;
@:invalid typedef BranchStmt_asInterface = Dynamic;
@:invalid typedef BranchStmt_static_extension = Dynamic;
@:invalid typedef BlockStmt_asInterface = Dynamic;
@:invalid typedef BlockStmt_static_extension = Dynamic;
@:invalid typedef IfStmt_asInterface = Dynamic;
@:invalid typedef IfStmt_static_extension = Dynamic;
@:invalid typedef CaseClause_asInterface = Dynamic;
@:invalid typedef CaseClause_static_extension = Dynamic;
@:invalid typedef SwitchStmt_asInterface = Dynamic;
@:invalid typedef SwitchStmt_static_extension = Dynamic;
@:invalid typedef TypeSwitchStmt_asInterface = Dynamic;
@:invalid typedef TypeSwitchStmt_static_extension = Dynamic;
@:invalid typedef CommClause_asInterface = Dynamic;
@:invalid typedef CommClause_static_extension = Dynamic;
@:invalid typedef SelectStmt_asInterface = Dynamic;
@:invalid typedef SelectStmt_static_extension = Dynamic;
@:invalid typedef ForStmt_asInterface = Dynamic;
@:invalid typedef ForStmt_static_extension = Dynamic;
@:invalid typedef RangeStmt_asInterface = Dynamic;
@:invalid typedef RangeStmt_static_extension = Dynamic;
@:invalid typedef ImportSpec_asInterface = Dynamic;
@:invalid typedef ImportSpec_static_extension = Dynamic;
@:invalid typedef ValueSpec_asInterface = Dynamic;
@:invalid typedef ValueSpec_static_extension = Dynamic;
@:invalid typedef TypeSpec_asInterface = Dynamic;
@:invalid typedef TypeSpec_static_extension = Dynamic;
@:invalid typedef BadDecl_asInterface = Dynamic;
@:invalid typedef BadDecl_static_extension = Dynamic;
@:invalid typedef GenDecl_asInterface = Dynamic;
@:invalid typedef GenDecl_static_extension = Dynamic;
@:invalid typedef FuncDecl_asInterface = Dynamic;
@:invalid typedef FuncDecl_static_extension = Dynamic;
@:invalid typedef File_asInterface = Dynamic;
@:invalid typedef File_static_extension = Dynamic;
@:invalid typedef Package_asInterface = Dynamic;
@:invalid typedef Package_static_extension = Dynamic;
@:invalid typedef T_commentListReader_asInterface = Dynamic;
@:invalid typedef T_commentListReader_static_extension = Dynamic;
@:invalid typedef T_printer_asInterface = Dynamic;
@:invalid typedef T_printer_static_extension = Dynamic;
@:invalid typedef T_pkgBuilder_asInterface = Dynamic;
@:invalid typedef T_pkgBuilder_static_extension = Dynamic;
@:invalid typedef Scope_asInterface = Dynamic;
@:invalid typedef Scope_static_extension = Dynamic;
@:invalid typedef Object_asInterface = Dynamic;
@:invalid typedef Object_static_extension = Dynamic;
@:invalid typedef T_byPos_asInterface = Dynamic;
@:invalid typedef T_byPos_static_extension = Dynamic;
@:invalid typedef CommentMap_asInterface = Dynamic;
@:invalid typedef CommentMap_static_extension = Dynamic;
@:invalid typedef T_byInterval_asInterface = Dynamic;
@:invalid typedef T_byInterval_static_extension = Dynamic;
@:invalid typedef T_nodeStack_asInterface = Dynamic;
@:invalid typedef T_nodeStack_static_extension = Dynamic;
@:invalid typedef ObjKind_asInterface = Dynamic;
@:invalid typedef ObjKind_static_extension = Dynamic;
@:invalid typedef T_inspector_asInterface = Dynamic;
@:invalid typedef T_inspector_static_extension = Dynamic;

package stdgo.go.ast;
var sEND : ChanDir = 1i64;
var rECV : ChanDir = 2i64;
var filterFuncDuplicates : MergeMode = 1i64;
var filterUnassociatedComments : MergeMode = 2i64;
var filterImportDuplicates : MergeMode = 4i64;
var bad : ObjKind = 0i64;
var pkg : ObjKind = 1i64;
var con : ObjKind = 2i64;
var typ : ObjKind = 3i64;
var var_ : ObjKind = 4i64;
var fun : ObjKind = 5i64;
var lbl : ObjKind = 6i64;
typedef Node = stdgo._internal.go.ast.Ast_node.Node;
typedef Expr = stdgo._internal.go.ast.Ast_expr.Expr;
typedef Stmt = stdgo._internal.go.ast.Ast_stmt.Stmt;
typedef Decl = stdgo._internal.go.ast.Ast_decl.Decl;
typedef Spec = stdgo._internal.go.ast.Ast_spec.Spec;
typedef Visitor = stdgo._internal.go.ast.Ast_visitor.Visitor;
typedef Comment = stdgo._internal.go.ast.Ast_comment.Comment;
typedef CommentGroup = stdgo._internal.go.ast.Ast_commentgroup.CommentGroup;
typedef Field = stdgo._internal.go.ast.Ast_field.Field;
typedef FieldList = stdgo._internal.go.ast.Ast_fieldlist.FieldList;
typedef BadExpr = stdgo._internal.go.ast.Ast_badexpr.BadExpr;
typedef Ident = stdgo._internal.go.ast.Ast_ident.Ident;
typedef Ellipsis = stdgo._internal.go.ast.Ast_ellipsis.Ellipsis;
typedef BasicLit = stdgo._internal.go.ast.Ast_basiclit.BasicLit;
typedef FuncLit = stdgo._internal.go.ast.Ast_funclit.FuncLit;
typedef CompositeLit = stdgo._internal.go.ast.Ast_compositelit.CompositeLit;
typedef ParenExpr = stdgo._internal.go.ast.Ast_parenexpr.ParenExpr;
typedef SelectorExpr = stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr;
typedef IndexExpr = stdgo._internal.go.ast.Ast_indexexpr.IndexExpr;
typedef IndexListExpr = stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr;
typedef SliceExpr = stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr;
typedef TypeAssertExpr = stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr;
typedef CallExpr = stdgo._internal.go.ast.Ast_callexpr.CallExpr;
typedef StarExpr = stdgo._internal.go.ast.Ast_starexpr.StarExpr;
typedef UnaryExpr = stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr;
typedef BinaryExpr = stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr;
typedef KeyValueExpr = stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr;
typedef ArrayType = stdgo._internal.go.ast.Ast_arraytype.ArrayType;
typedef StructType = stdgo._internal.go.ast.Ast_structtype.StructType;
typedef FuncType = stdgo._internal.go.ast.Ast_functype.FuncType;
typedef InterfaceType = stdgo._internal.go.ast.Ast_interfacetype.InterfaceType;
typedef MapType = stdgo._internal.go.ast.Ast_maptype.MapType;
typedef ChanType = stdgo._internal.go.ast.Ast_chantype.ChanType;
typedef BadStmt = stdgo._internal.go.ast.Ast_badstmt.BadStmt;
typedef DeclStmt = stdgo._internal.go.ast.Ast_declstmt.DeclStmt;
typedef EmptyStmt = stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt;
typedef LabeledStmt = stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt;
typedef ExprStmt = stdgo._internal.go.ast.Ast_exprstmt.ExprStmt;
typedef SendStmt = stdgo._internal.go.ast.Ast_sendstmt.SendStmt;
typedef IncDecStmt = stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt;
typedef AssignStmt = stdgo._internal.go.ast.Ast_assignstmt.AssignStmt;
typedef GoStmt = stdgo._internal.go.ast.Ast_gostmt.GoStmt;
typedef DeferStmt = stdgo._internal.go.ast.Ast_deferstmt.DeferStmt;
typedef ReturnStmt = stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt;
typedef BranchStmt = stdgo._internal.go.ast.Ast_branchstmt.BranchStmt;
typedef BlockStmt = stdgo._internal.go.ast.Ast_blockstmt.BlockStmt;
typedef IfStmt = stdgo._internal.go.ast.Ast_ifstmt.IfStmt;
typedef CaseClause = stdgo._internal.go.ast.Ast_caseclause.CaseClause;
typedef SwitchStmt = stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt;
typedef TypeSwitchStmt = stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt;
typedef CommClause = stdgo._internal.go.ast.Ast_commclause.CommClause;
typedef SelectStmt = stdgo._internal.go.ast.Ast_selectstmt.SelectStmt;
typedef ForStmt = stdgo._internal.go.ast.Ast_forstmt.ForStmt;
typedef RangeStmt = stdgo._internal.go.ast.Ast_rangestmt.RangeStmt;
typedef ImportSpec = stdgo._internal.go.ast.Ast_importspec.ImportSpec;
typedef ValueSpec = stdgo._internal.go.ast.Ast_valuespec.ValueSpec;
typedef TypeSpec = stdgo._internal.go.ast.Ast_typespec.TypeSpec;
typedef BadDecl = stdgo._internal.go.ast.Ast_baddecl.BadDecl;
typedef GenDecl = stdgo._internal.go.ast.Ast_gendecl.GenDecl;
typedef FuncDecl = stdgo._internal.go.ast.Ast_funcdecl.FuncDecl;
typedef File = stdgo._internal.go.ast.Ast_file.File;
typedef Package = stdgo._internal.go.ast.Ast_package.Package;
typedef Scope = stdgo._internal.go.ast.Ast_scope.Scope;
typedef Object = stdgo._internal.go.ast.Ast_object.Object;
typedef ChanDir = stdgo._internal.go.ast.Ast_chandir.ChanDir;
typedef CommentMap = stdgo._internal.go.ast.Ast_commentmap.CommentMap;
typedef Filter = stdgo._internal.go.ast.Ast_filter.Filter;
typedef MergeMode = stdgo._internal.go.ast.Ast_mergemode.MergeMode;
typedef FieldFilter = stdgo._internal.go.ast.Ast_fieldfilter.FieldFilter;
typedef Importer = stdgo._internal.go.ast.Ast_importer.Importer;
typedef ObjKind = stdgo._internal.go.ast.Ast_objkind.ObjKind;
typedef CommentPointer = stdgo._internal.go.ast.Ast_commentpointer.CommentPointer;
typedef CommentGroupPointer = stdgo._internal.go.ast.Ast_commentgrouppointer.CommentGroupPointer;
typedef FieldPointer = stdgo._internal.go.ast.Ast_fieldpointer.FieldPointer;
typedef FieldListPointer = stdgo._internal.go.ast.Ast_fieldlistpointer.FieldListPointer;
typedef BadExprPointer = stdgo._internal.go.ast.Ast_badexprpointer.BadExprPointer;
typedef IdentPointer = stdgo._internal.go.ast.Ast_identpointer.IdentPointer;
typedef EllipsisPointer = stdgo._internal.go.ast.Ast_ellipsispointer.EllipsisPointer;
typedef BasicLitPointer = stdgo._internal.go.ast.Ast_basiclitpointer.BasicLitPointer;
typedef FuncLitPointer = stdgo._internal.go.ast.Ast_funclitpointer.FuncLitPointer;
typedef CompositeLitPointer = stdgo._internal.go.ast.Ast_compositelitpointer.CompositeLitPointer;
typedef ParenExprPointer = stdgo._internal.go.ast.Ast_parenexprpointer.ParenExprPointer;
typedef SelectorExprPointer = stdgo._internal.go.ast.Ast_selectorexprpointer.SelectorExprPointer;
typedef IndexExprPointer = stdgo._internal.go.ast.Ast_indexexprpointer.IndexExprPointer;
typedef IndexListExprPointer = stdgo._internal.go.ast.Ast_indexlistexprpointer.IndexListExprPointer;
typedef SliceExprPointer = stdgo._internal.go.ast.Ast_sliceexprpointer.SliceExprPointer;
typedef TypeAssertExprPointer = stdgo._internal.go.ast.Ast_typeassertexprpointer.TypeAssertExprPointer;
typedef CallExprPointer = stdgo._internal.go.ast.Ast_callexprpointer.CallExprPointer;
typedef StarExprPointer = stdgo._internal.go.ast.Ast_starexprpointer.StarExprPointer;
typedef UnaryExprPointer = stdgo._internal.go.ast.Ast_unaryexprpointer.UnaryExprPointer;
typedef BinaryExprPointer = stdgo._internal.go.ast.Ast_binaryexprpointer.BinaryExprPointer;
typedef KeyValueExprPointer = stdgo._internal.go.ast.Ast_keyvalueexprpointer.KeyValueExprPointer;
typedef ArrayTypePointer = stdgo._internal.go.ast.Ast_arraytypepointer.ArrayTypePointer;
typedef StructTypePointer = stdgo._internal.go.ast.Ast_structtypepointer.StructTypePointer;
typedef FuncTypePointer = stdgo._internal.go.ast.Ast_functypepointer.FuncTypePointer;
typedef InterfaceTypePointer = stdgo._internal.go.ast.Ast_interfacetypepointer.InterfaceTypePointer;
typedef MapTypePointer = stdgo._internal.go.ast.Ast_maptypepointer.MapTypePointer;
typedef ChanTypePointer = stdgo._internal.go.ast.Ast_chantypepointer.ChanTypePointer;
typedef BadStmtPointer = stdgo._internal.go.ast.Ast_badstmtpointer.BadStmtPointer;
typedef DeclStmtPointer = stdgo._internal.go.ast.Ast_declstmtpointer.DeclStmtPointer;
typedef EmptyStmtPointer = stdgo._internal.go.ast.Ast_emptystmtpointer.EmptyStmtPointer;
typedef LabeledStmtPointer = stdgo._internal.go.ast.Ast_labeledstmtpointer.LabeledStmtPointer;
typedef ExprStmtPointer = stdgo._internal.go.ast.Ast_exprstmtpointer.ExprStmtPointer;
typedef SendStmtPointer = stdgo._internal.go.ast.Ast_sendstmtpointer.SendStmtPointer;
typedef IncDecStmtPointer = stdgo._internal.go.ast.Ast_incdecstmtpointer.IncDecStmtPointer;
typedef AssignStmtPointer = stdgo._internal.go.ast.Ast_assignstmtpointer.AssignStmtPointer;
typedef GoStmtPointer = stdgo._internal.go.ast.Ast_gostmtpointer.GoStmtPointer;
typedef DeferStmtPointer = stdgo._internal.go.ast.Ast_deferstmtpointer.DeferStmtPointer;
typedef ReturnStmtPointer = stdgo._internal.go.ast.Ast_returnstmtpointer.ReturnStmtPointer;
typedef BranchStmtPointer = stdgo._internal.go.ast.Ast_branchstmtpointer.BranchStmtPointer;
typedef BlockStmtPointer = stdgo._internal.go.ast.Ast_blockstmtpointer.BlockStmtPointer;
typedef IfStmtPointer = stdgo._internal.go.ast.Ast_ifstmtpointer.IfStmtPointer;
typedef CaseClausePointer = stdgo._internal.go.ast.Ast_caseclausepointer.CaseClausePointer;
typedef SwitchStmtPointer = stdgo._internal.go.ast.Ast_switchstmtpointer.SwitchStmtPointer;
typedef TypeSwitchStmtPointer = stdgo._internal.go.ast.Ast_typeswitchstmtpointer.TypeSwitchStmtPointer;
typedef CommClausePointer = stdgo._internal.go.ast.Ast_commclausepointer.CommClausePointer;
typedef SelectStmtPointer = stdgo._internal.go.ast.Ast_selectstmtpointer.SelectStmtPointer;
typedef ForStmtPointer = stdgo._internal.go.ast.Ast_forstmtpointer.ForStmtPointer;
typedef RangeStmtPointer = stdgo._internal.go.ast.Ast_rangestmtpointer.RangeStmtPointer;
typedef ImportSpecPointer = stdgo._internal.go.ast.Ast_importspecpointer.ImportSpecPointer;
typedef ValueSpecPointer = stdgo._internal.go.ast.Ast_valuespecpointer.ValueSpecPointer;
typedef TypeSpecPointer = stdgo._internal.go.ast.Ast_typespecpointer.TypeSpecPointer;
typedef BadDeclPointer = stdgo._internal.go.ast.Ast_baddeclpointer.BadDeclPointer;
typedef GenDeclPointer = stdgo._internal.go.ast.Ast_gendeclpointer.GenDeclPointer;
typedef FuncDeclPointer = stdgo._internal.go.ast.Ast_funcdeclpointer.FuncDeclPointer;
typedef FilePointer = stdgo._internal.go.ast.Ast_filepointer.FilePointer;
typedef PackagePointer = stdgo._internal.go.ast.Ast_packagepointer.PackagePointer;
typedef ScopePointer = stdgo._internal.go.ast.Ast_scopepointer.ScopePointer;
typedef ObjectPointer = stdgo._internal.go.ast.Ast_objectpointer.ObjectPointer;
typedef ChanDirPointer = stdgo._internal.go.ast.Ast_chandirpointer.ChanDirPointer;
typedef CommentMapPointer = stdgo._internal.go.ast.Ast_commentmappointer.CommentMapPointer;
typedef FilterPointer = stdgo._internal.go.ast.Ast_filterpointer.FilterPointer;
typedef MergeModePointer = stdgo._internal.go.ast.Ast_mergemodepointer.MergeModePointer;
typedef FieldFilterPointer = stdgo._internal.go.ast.Ast_fieldfilterpointer.FieldFilterPointer;
typedef ImporterPointer = stdgo._internal.go.ast.Ast_importerpointer.ImporterPointer;
typedef ObjKindPointer = stdgo._internal.go.ast.Ast_objkindpointer.ObjKindPointer;
/**
    * Package ast declares the types used to represent syntax trees for Go
    * packages.
**/
class Ast {
    /**
        * NewIdent creates a new Ident without position.
        * Useful for ASTs generated by code other than the Go parser.
    **/
    static public inline function newIdent(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> return stdgo._internal.go.ast.Ast_newident.newIdent(_name);
    /**
        * IsExported reports whether name starts with an upper-case letter.
    **/
    static public inline function isExported(_name:stdgo.GoString):Bool return stdgo._internal.go.ast.Ast_isexported.isExported(_name);
    /**
        * IsGenerated reports whether the file was generated by a program,
        * not handwritten, by detecting the special comment described
        * at https://go.dev/s/generatedcode.
        * 
        * The syntax tree must have been parsed with the ParseComments flag.
        * Example:
        * 
        * 	f, err := parser.ParseFile(fset, filename, src, parser.ParseComments|parser.PackageClauseOnly)
        * 	if err != nil { ... }
        * 	gen := ast.IsGenerated(f)
    **/
    static public inline function isGenerated(_file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Bool return stdgo._internal.go.ast.Ast_isgenerated.isGenerated(_file);
    static public inline function testCommentText(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.ast.Ast_testcommenttext.testCommentText(_t);
    static public inline function testIsDirective(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.ast.Ast_testisdirective.testIsDirective(_t);
    /**
        * NewCommentMap creates a new comment map by associating comment groups
        * of the comments list with the nodes of the AST specified by node.
        * 
        * A comment group g is associated with a node n if:
        * 
        *   - g starts on the same line as n ends
        *   - g starts on the line immediately following n, and there is
        *     at least one empty line after g and before the next node
        *   - g starts before n and is not associated to the node before n
        *     via the previous rules
        * 
        * NewCommentMap tries to associate a comment group to the "largest"
        * node possible: For instance, if the comment is a line comment
        * trailing an assignment, the comment is associated with the entire
        * assignment rather than just the last operand in the assignment.
    **/
    static public inline function newCommentMap(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _node:Node, _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):stdgo._internal.go.ast.Ast_commentmap.CommentMap return stdgo._internal.go.ast.Ast_newcommentmap.newCommentMap(_fset, _node, _comments);
    /**
        * FileExports trims the AST for a Go source file in place such that
        * only exported nodes remain: all top-level identifiers which are not exported
        * and their associated information (such as type, initial value, or function
        * body) are removed. Non-exported fields and methods of exported types are
        * stripped. The File.Comments list is not changed.
        * 
        * FileExports reports whether there are exported declarations.
    **/
    static public inline function fileExports(_src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Bool return stdgo._internal.go.ast.Ast_fileexports.fileExports(_src);
    /**
        * PackageExports trims the AST for a Go package in place such that
        * only exported nodes remain. The pkg.Files list is not changed, so that
        * file names and top-level package comments don't get lost.
        * 
        * PackageExports reports whether there are exported declarations;
        * it returns false otherwise.
    **/
    static public inline function packageExports(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>):Bool return stdgo._internal.go.ast.Ast_packageexports.packageExports(_pkg);
    /**
        * FilterDecl trims the AST for a Go declaration in place by removing
        * all names (including struct field and interface method names, but
        * not from parameter lists) that don't pass through the filter f.
        * 
        * FilterDecl reports whether there are any declared names left after
        * filtering.
    **/
    static public inline function filterDecl(_decl:Decl, _f:Filter):Bool return stdgo._internal.go.ast.Ast_filterdecl.filterDecl(_decl, _f);
    /**
        * FilterFile trims the AST for a Go file in place by removing all
        * names from top-level declarations (including struct field and
        * interface method names, but not from parameter lists) that don't
        * pass through the filter f. If the declaration is empty afterwards,
        * the declaration is removed from the AST. Import declarations are
        * always removed. The File.Comments list is not changed.
        * 
        * FilterFile reports whether there are any top-level declarations
        * left after filtering.
    **/
    static public inline function filterFile(_src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _f:Filter):Bool return stdgo._internal.go.ast.Ast_filterfile.filterFile(_src, _f);
    /**
        * FilterPackage trims the AST for a Go package in place by removing
        * all names from top-level declarations (including struct field and
        * interface method names, but not from parameter lists) that don't
        * pass through the filter f. If the declaration is empty afterwards,
        * the declaration is removed from the AST. The pkg.Files list is not
        * changed, so that file names and top-level package comments don't get
        * lost.
        * 
        * FilterPackage reports whether there are any top-level declarations
        * left after filtering.
    **/
    static public inline function filterPackage(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _f:Filter):Bool return stdgo._internal.go.ast.Ast_filterpackage.filterPackage(_pkg, _f);
    /**
        * MergePackageFiles creates a file AST by merging the ASTs of the
        * files belonging to a package. The mode flags control merging behavior.
    **/
    static public inline function mergePackageFiles(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _mode:MergeMode):stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> return stdgo._internal.go.ast.Ast_mergepackagefiles.mergePackageFiles(_pkg, _mode);
    /**
        * SortImports sorts runs of consecutive import lines in import blocks in f.
        * It also removes duplicate imports when it is possible to do so without data loss.
    **/
    static public inline function sortImports(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Void stdgo._internal.go.ast.Ast_sortimports.sortImports(_fset, _f);
    /**
        * NotNilFilter returns true for field values that are not nil;
        * it returns false otherwise.
    **/
    static public inline function notNilFilter(__0:stdgo.GoString, _v:stdgo._internal.reflect.Reflect_value.Value):Bool return stdgo._internal.go.ast.Ast_notnilfilter.notNilFilter(__0, _v);
    /**
        * Fprint prints the (sub-)tree starting at AST node x to w.
        * If fset != nil, position information is interpreted relative
        * to that file set. Otherwise positions are printed as integer
        * values (file set specific offsets).
        * 
        * A non-nil FieldFilter f may be provided to control the output:
        * struct fields for which f(fieldname, fieldvalue) is true are
        * printed; all others are filtered from the output. Unexported
        * struct fields are never printed.
    **/
    static public inline function fprint(_w:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _x:stdgo.AnyInterface, _f:FieldFilter):stdgo.Error return stdgo._internal.go.ast.Ast_fprint.fprint(_w, _fset, _x, _f);
    /**
        * Print prints x to standard output, skipping nil fields.
        * Print(fset, x) is the same as Fprint(os.Stdout, fset, x, NotNilFilter).
    **/
    static public inline function print(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _x:stdgo.AnyInterface):stdgo.Error return stdgo._internal.go.ast.Ast_print.print(_fset, _x);
    static public inline function testPrint(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.ast.Ast_testprint.testPrint(_t);
    /**
        * NewPackage creates a new Package node from a set of File nodes. It resolves
        * unresolved identifiers across files and updates each file's Unresolved list
        * accordingly. If a non-nil importer and universe scope are provided, they are
        * used to resolve identifiers not declared in any of the package files. Any
        * remaining unresolved identifiers are reported as undeclared. If the files
        * belong to different packages, one package name is selected and files with
        * different package names are reported and then ignored.
        * The result is a package node and a scanner.ErrorList if there were errors.
    **/
    static public inline function newPackage(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>, _importer:Importer, _universe:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>; var _1 : stdgo.Error; } return stdgo._internal.go.ast.Ast_newpackage.newPackage(_fset, _files, _importer, _universe);
    /**
        * NewScope creates a new scope nested in the outer scope.
    **/
    static public inline function newScope(_outer:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>):stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> return stdgo._internal.go.ast.Ast_newscope.newScope(_outer);
    /**
        * NewObj creates a new object of a given kind and name.
    **/
    static public inline function newObj(_kind:ObjKind, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> return stdgo._internal.go.ast.Ast_newobj.newObj(_kind, _name);
    /**
        * Walk traverses an AST in depth-first order: It starts by calling
        * v.Visit(node); node must not be nil. If the visitor w returned by
        * v.Visit(node) is not nil, Walk is invoked recursively with visitor
        * w for each of the non-nil children of node, followed by a call of
        * w.Visit(nil).
    **/
    static public inline function walk(_v:Visitor, _node:Node):Void stdgo._internal.go.ast.Ast_walk.walk(_v, _node);
    /**
        * Inspect traverses an AST in depth-first order: It starts by calling
        * f(node); node must not be nil. If f returns true, Inspect invokes f
        * recursively for each of the non-nil children of node, followed by a
        * call of f(nil).
    **/
    static public inline function inspect(_node:Node, _f:Node -> Bool):Void stdgo._internal.go.ast.Ast_inspect.inspect(_node, _f);
}

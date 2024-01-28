package stdgo.go.ast;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _separator : Dynamic;
@:invalid var _indent : Dynamic;
@:invalid var _objKindStrings : Dynamic;
@:invalid var _comments : Dynamic;
@:invalid var _isDirectiveTests : Dynamic;
@:invalid var _tests : Dynamic;
@:invalid var send : Dynamic;
@:invalid var recv : Dynamic;
@:invalid var filterFuncDuplicates : Dynamic;
@:invalid var filterUnassociatedComments : Dynamic;
@:invalid var filterImportDuplicates : Dynamic;
@:invalid var bad : Dynamic;
@:invalid var pkg : Dynamic;
@:invalid var con : Dynamic;
@:invalid var typ : Dynamic;
@:invalid var var_ : Dynamic;
@:invalid var fun : Dynamic;
@:invalid var lbl : Dynamic;
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
function _isWhitespace(_ch:stdgo.GoByte):Void {}
function _stripTrailingWhitespace(_s:stdgo.GoString):Void {}
function _isDirective(_c:stdgo.GoString):Void {}
function newIdent(_name:stdgo.GoString):Void {}
function isExported(_name:stdgo.GoString):Void {}
function isGenerated(_file:stdgo.Ref<File>):Void {}
function _generator(_file:stdgo.Ref<File>):Void {}
function testCommentText(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIsDirective(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _sortComments(_list:stdgo.Slice<stdgo.Ref<CommentGroup>>):Void {}
function _nodeList(_n:Node):Void {}
function newCommentMap(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:Node, _comments:stdgo.Slice<stdgo.Ref<CommentGroup>>):Void {}
function _summary(_list:stdgo.Slice<stdgo.Ref<CommentGroup>>):Void {}
function _exportFilter(_name:stdgo.GoString):Void {}
function fileExports(_src:stdgo.Ref<File>):Void {}
function packageExports(_pkg:stdgo.Ref<Package>):Void {}
function _filterIdentList(_list:stdgo.Slice<stdgo.Ref<Ident>>, _f:Filter):Void {}
function _fieldName(_x:Expr):Void {}
function _filterFieldList(_fields:stdgo.Ref<FieldList>, _filter:Filter, _export:Bool):Void {}
function _filterCompositeLit(_lit:stdgo.Ref<CompositeLit>, _filter:Filter, _export:Bool):Void {}
function _filterExprList(_list:stdgo.Slice<Expr>, _filter:Filter, _export:Bool):Void {}
function _filterParamList(_fields:stdgo.Ref<FieldList>, _filter:Filter, _export:Bool):Void {}
function _filterType(_typ:Expr, _f:Filter, _export:Bool):Void {}
function _filterSpec(_spec:Spec, _f:Filter, _export:Bool):Void {}
function _filterSpecList(_list:stdgo.Slice<Spec>, _f:Filter, _export:Bool):Void {}
function filterDecl(_decl:Decl, _f:Filter):Void {}
function _filterDecl(_decl:Decl, _f:Filter, _export:Bool):Void {}
function filterFile(_src:stdgo.Ref<File>, _f:Filter):Void {}
function _filterFile(_src:stdgo.Ref<File>, _f:Filter, _export:Bool):Void {}
function filterPackage(_pkg:stdgo.Ref<Package>, _f:Filter):Void {}
function _filterPackage(_pkg:stdgo.Ref<Package>, _f:Filter, _export:Bool):Void {}
function _nameOf(_f:stdgo.Ref<FuncDecl>):Void {}
function mergePackageFiles(_pkg:stdgo.Ref<Package>, _mode:MergeMode):Void {}
function sortImports(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _f:stdgo.Ref<File>):Void {}
function _lineAt(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _pos:stdgo._internal.go.token.Token.Pos):Void {}
function _importPath(_s:Spec):Void {}
function _importName(_s:Spec):Void {}
function _importComment(_s:Spec):Void {}
function _collapse(_prev:Spec, _next:Spec):Void {}
function _sortSpecs(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _f:stdgo.Ref<File>, _specs:stdgo.Slice<Spec>):Void {}
function notNilFilter(__0:stdgo.GoString, _v:stdgo._internal.reflect.Reflect.Value):Void {}
function fprint(_w:stdgo._internal.io.Io.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _x:stdgo.AnyInterface, _f:FieldFilter):Void {}
function _fprint(_w:stdgo._internal.io.Io.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _x:stdgo.AnyInterface, _f:FieldFilter):Void {}
function print(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _x:stdgo.AnyInterface):Void {}
function _trim(_s:stdgo.GoString):Void {}
function testPrint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _resolve(_scope:stdgo.Ref<Scope>, _ident:stdgo.Ref<Ident>):Void {}
function newPackage(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<File>>, _importer:Importer, _universe:stdgo.Ref<Scope>):Void {}
function newScope(_outer:stdgo.Ref<Scope>):Void {}
function newObj(_kind:ObjKind, _name:stdgo.GoString):Void {}
function _walkIdentList(_v:Visitor, _list:stdgo.Slice<stdgo.Ref<Ident>>):Void {}
function _walkExprList(_v:Visitor, _list:stdgo.Slice<Expr>):Void {}
function _walkStmtList(_v:Visitor, _list:stdgo.Slice<Stmt>):Void {}
function _walkDeclList(_v:Visitor, _list:stdgo.Slice<Decl>):Void {}
function walk(_v:Visitor, _node:Node):Void {}
function inspect(_node:Node, _f:Node -> Bool):Void {}
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

package stdgo.go.printer;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _aNewline : Dynamic;
@:invalid var _printerPool : Dynamic;
@:invalid var _update : Dynamic;
@:invalid var _fset : Dynamic;
@:invalid var _data : Dynamic;
@:invalid var _decls : Dynamic;
@:invalid var _stmts : Dynamic;
@:invalid var _commaTerm : Dynamic;
@:invalid var _noIndent : Dynamic;
@:invalid var _filteredMsg : Dynamic;
@:invalid var _funcParam : Dynamic;
@:invalid var _funcTParam : Dynamic;
@:invalid var _typeTParam : Dynamic;
@:invalid var _fileNode : Dynamic;
@:invalid var _fileSize : Dynamic;
@:invalid var _declNode : Dynamic;
@:invalid var _declSize : Dynamic;
@:invalid var _maxNewlines : Dynamic;
@:invalid var _debug : Dynamic;
@:invalid var _infinity : Dynamic;
@:invalid var _ignore : Dynamic;
@:invalid var _blank : Dynamic;
@:invalid var _vtab : Dynamic;
@:invalid var _newline : Dynamic;
@:invalid var _formfeed : Dynamic;
@:invalid var _indent : Dynamic;
@:invalid var _unindent : Dynamic;
@:invalid var _noExtraBlank : Dynamic;
@:invalid var _noExtraLinebreak : Dynamic;
@:invalid var _inSpace : Dynamic;
@:invalid var _inEscape : Dynamic;
@:invalid var _inText : Dynamic;
@:invalid var rawFormat : Dynamic;
@:invalid var tabIndent : Dynamic;
@:invalid var useSpaces : Dynamic;
@:invalid var sourcePos : Dynamic;
@:invalid var _normalizeNumbers : Dynamic;
@:invalid var _dataDir : Dynamic;
@:invalid var _tabwidth : Dynamic;
@:invalid var _export : Dynamic;
@:invalid var _rawFormat : Dynamic;
@:invalid var _normNumber : Dynamic;
@:invalid var _idempotent : Dynamic;
@:invalid var _allowTypeParams : Dynamic;
@:invalid typedef T_sizeCounter = Dynamic;
@:invalid typedef T_commentInfo = Dynamic;
@:invalid typedef T_printer = Dynamic;
@:invalid typedef T_trimmer = Dynamic;
@:invalid typedef Config = Dynamic;
@:invalid typedef CommentedNode = Dynamic;
@:invalid typedef T_entry = Dynamic;
@:invalid typedef T_limitWriter = Dynamic;
typedef T_exprListMode = stdgo._internal.go.printer.Printer.T_exprListMode;
typedef T_paramMode = stdgo._internal.go.printer.Printer.T_paramMode;
typedef T_whiteSpace = stdgo._internal.go.printer.Printer.T_whiteSpace;
typedef T_pmode = stdgo._internal.go.printer.Printer.T_pmode;
typedef Mode = stdgo._internal.go.printer.Printer.Mode;
typedef T_checkMode = stdgo._internal.go.printer.Printer.T_checkMode;
typedef T_visitor = stdgo._internal.go.printer.Printer.T_visitor;
function _formatDocComment(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>):Void {}
function _isDirective(_c:stdgo.GoString):Void {}
function _allStars(_text:stdgo.GoString):Void {}
function _appendLines(_x:stdgo.Slice<stdgo.GoByte>, _y:stdgo.Slice<stdgo.GoByte>):Void {}
function _isNL(_b:stdgo.GoByte):Void {}
function _combinesWithName(_x:stdgo._internal.go.ast.Ast.Expr):Void {}
function _isTypeElem(_x:stdgo._internal.go.ast.Ast.Expr):Void {}
function _identListSize(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>, _maxSize:stdgo.GoInt):Void {}
function _walkBinary(_e:stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>):Void {}
function _cutoff(_e:stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>, _depth:stdgo.GoInt):Void {}
function _diffPrec(_expr:stdgo._internal.go.ast.Ast.Expr, _prec:stdgo.GoInt):Void {}
function _reduceDepth(_depth:stdgo.GoInt):Void {}
function _isBinary(_expr:stdgo._internal.go.ast.Ast.Expr):Void {}
function _normalizedNumber(_lit:stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>):Void {}
function _isTypeName(_x:stdgo._internal.go.ast.Ast.Expr):Void {}
function _stripParens(_x:stdgo._internal.go.ast.Ast.Expr):Void {}
function _stripParensAlways(_x:stdgo._internal.go.ast.Ast.Expr):Void {}
function _keepTypeColumn(_specs:stdgo.Slice<stdgo._internal.go.ast.Ast.Spec>):Void {}
function _sanitizeImportPath(_lit:stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>):Void {}
function _declToken(_decl:stdgo._internal.go.ast.Ast.Decl):Void {}
function _testprint(_out:stdgo._internal.io.Io.Writer, _node:stdgo._internal.go.ast.Ast.Node):Void {}
function _initialize():Void {}
function benchmarkPrintFile(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkPrintDecl(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function _isBlank(_s:stdgo.GoString):Void {}
function _commonPrefix(_a:stdgo.GoString, _b:stdgo.GoString):Void {}
function _trimRight(_s:stdgo.GoString):Void {}
function _stripCommonPrefix(_lines:stdgo.Slice<stdgo.GoString>):Void {}
function _nlimit(_n:stdgo.GoInt):Void {}
function _mayCombine(_prev:stdgo._internal.go.token.Token.Token, _next:stdgo.GoByte):Void {}
function _getDoc(_n:stdgo._internal.go.ast.Ast.Node):Void {}
function _getLastComment(_n:stdgo._internal.go.ast.Ast.Node):Void {}
function _newPrinter(_cfg:stdgo.Ref<Config>, _fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _nodeSizes:stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.GoInt>):Void {}
function fprint(_output:stdgo._internal.io.Io.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:stdgo.AnyInterface):Void {}
function _format(_src:stdgo.Slice<stdgo.GoByte>, _mode:T_checkMode):Void {}
function _lineAt(_text:stdgo.Slice<stdgo.GoByte>, _offs:stdgo.GoInt):Void {}
function _checkEqual(_aname:stdgo.GoString, _bname:stdgo.GoString, _a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Void {}
function _runcheck(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _source:stdgo.GoString, _golden:stdgo.GoString, _mode:T_checkMode):Void {}
function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _source:stdgo.GoString, _golden:stdgo.GoString, _mode:T_checkMode):Void {}
function testFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testLineComments(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBadNodes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testComment(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File>, _srclen:stdgo.GoInt, _comment:stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>):Void {}
function testBadComments(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _idents(_f:stdgo.Ref<stdgo._internal.go.ast.Ast.File>):Void {}
function _identCount(_f:stdgo.Ref<stdgo._internal.go.ast.Ast.File>):Void {}
function testSourcePos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIssue5945(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDeclLists(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testStmtLists(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBaseIndent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFuncType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testWriteErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testX(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testCommentedNode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIssue11151(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParenthesizedDecl(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIssue32854(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSourcePosNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid var _ : Dynamic;
@:invalid typedef T_sizeCounter_asInterface = Dynamic;
@:invalid typedef T_sizeCounter_static_extension = Dynamic;
@:invalid typedef T_printer_asInterface = Dynamic;
@:invalid typedef T_printer_static_extension = Dynamic;
@:invalid typedef T_trimmer_asInterface = Dynamic;
@:invalid typedef T_trimmer_static_extension = Dynamic;
@:invalid typedef Config_asInterface = Dynamic;
@:invalid typedef Config_static_extension = Dynamic;
@:invalid typedef T_limitWriter_asInterface = Dynamic;
@:invalid typedef T_limitWriter_static_extension = Dynamic;
@:invalid typedef T_visitor_asInterface = Dynamic;
@:invalid typedef T_visitor_static_extension = Dynamic;

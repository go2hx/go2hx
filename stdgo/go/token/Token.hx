package stdgo.go.token;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _tokens : Dynamic;
@:invalid var _tests : Dynamic;
@:invalid var noPos : Dynamic;
@:invalid var illegal : Dynamic;
@:invalid var eof : Dynamic;
@:invalid var comment : Dynamic;
@:invalid var _literal_beg : Dynamic;
@:invalid var ident : Dynamic;
@:invalid var int_ : Dynamic;
@:invalid var float_ : Dynamic;
@:invalid var imag : Dynamic;
@:invalid var char : Dynamic;
@:invalid var string : Dynamic;
@:invalid var _literal_end : Dynamic;
@:invalid var _operator_beg : Dynamic;
@:invalid var add : Dynamic;
@:invalid var sub : Dynamic;
@:invalid var mul : Dynamic;
@:invalid var quo : Dynamic;
@:invalid var rem : Dynamic;
@:invalid var and : Dynamic;
@:invalid var or : Dynamic;
@:invalid var xor : Dynamic;
@:invalid var shl : Dynamic;
@:invalid var shr : Dynamic;
@:invalid var and_NOT : Dynamic;
@:invalid var add_ASSIGN : Dynamic;
@:invalid var sub_ASSIGN : Dynamic;
@:invalid var mul_ASSIGN : Dynamic;
@:invalid var quo_ASSIGN : Dynamic;
@:invalid var rem_ASSIGN : Dynamic;
@:invalid var and_ASSIGN : Dynamic;
@:invalid var or_ASSIGN : Dynamic;
@:invalid var xor_ASSIGN : Dynamic;
@:invalid var shl_ASSIGN : Dynamic;
@:invalid var shr_ASSIGN : Dynamic;
@:invalid var and_NOT_ASSIGN : Dynamic;
@:invalid var land : Dynamic;
@:invalid var lor : Dynamic;
@:invalid var arrow : Dynamic;
@:invalid var inc : Dynamic;
@:invalid var dec : Dynamic;
@:invalid var eql : Dynamic;
@:invalid var lss : Dynamic;
@:invalid var gtr : Dynamic;
@:invalid var assign : Dynamic;
@:invalid var not : Dynamic;
@:invalid var neq : Dynamic;
@:invalid var leq : Dynamic;
@:invalid var geq : Dynamic;
@:invalid var define : Dynamic;
@:invalid var ellipsis : Dynamic;
@:invalid var lparen : Dynamic;
@:invalid var lbrack : Dynamic;
@:invalid var lbrace : Dynamic;
@:invalid var comma : Dynamic;
@:invalid var period : Dynamic;
@:invalid var rparen : Dynamic;
@:invalid var rbrack : Dynamic;
@:invalid var rbrace : Dynamic;
@:invalid var semicolon : Dynamic;
@:invalid var colon : Dynamic;
@:invalid var _operator_end : Dynamic;
@:invalid var _keyword_beg : Dynamic;
@:invalid var break_ : Dynamic;
@:invalid var case_ : Dynamic;
@:invalid var chan : Dynamic;
@:invalid var const : Dynamic;
@:invalid var continue_ : Dynamic;
@:invalid var default_ : Dynamic;
@:invalid var defer : Dynamic;
@:invalid var else_ : Dynamic;
@:invalid var fallthrough : Dynamic;
@:invalid var for_ : Dynamic;
@:invalid var func : Dynamic;
@:invalid var go : Dynamic;
@:invalid var goto : Dynamic;
@:invalid var if_ : Dynamic;
@:invalid var import_ : Dynamic;
@:invalid var interface_ : Dynamic;
@:invalid var map_ : Dynamic;
@:invalid var package_ : Dynamic;
@:invalid var range : Dynamic;
@:invalid var return_ : Dynamic;
@:invalid var select : Dynamic;
@:invalid var struct_ : Dynamic;
@:invalid var switch_ : Dynamic;
@:invalid var type : Dynamic;
@:invalid var var_ : Dynamic;
@:invalid var _keyword_end : Dynamic;
@:invalid var _additional_beg : Dynamic;
@:invalid var tilde : Dynamic;
@:invalid var _additional_end : Dynamic;
@:invalid var lowestPrec : Dynamic;
@:invalid var unaryPrec : Dynamic;
@:invalid var highestPrec : Dynamic;
@:invalid var _keywords : Dynamic;
@:invalid typedef Position = Dynamic;
@:invalid typedef File = Dynamic;
@:invalid typedef T_lineInfo = Dynamic;
@:invalid typedef FileSet = Dynamic;
@:invalid typedef T_serializedFile = Dynamic;
@:invalid typedef T_serializedFileSet = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.go.token.Token.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.go.token.Token.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.go.token.Token.T__struct_2;
typedef Pos = stdgo._internal.go.token.Token.Pos;
typedef Token = stdgo._internal.go.token.Token.Token;
function _searchLineInfos(_a:stdgo.Slice<T_lineInfo>, _x:stdgo.GoInt):Void {}
function newFileSet():Void {}
function _searchFiles(_a:stdgo.Slice<stdgo.Ref<File>>, _x:stdgo.GoInt):Void {}
function _searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):Void {}
function benchmarkSearchInts(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function _checkPos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _msg:stdgo.GoString, _got:Position, _want:Position):Void {}
function testNoPos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _linecol(_lines:stdgo.Slice<stdgo.GoInt>, _offs:stdgo.GoInt):Void {}
function _verifyPositions(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _fset:stdgo.Ref<FileSet>, _f:stdgo.Ref<File>, _lines:stdgo.Slice<stdgo.GoInt>):Void {}
function _makeTestSource(_size:stdgo.GoInt, _lines:stdgo.Slice<stdgo.GoInt>):Void {}
function testPositions(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testLineInfo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFileSetPastEnd(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFileSetCacheUnlikely(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFileSetRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFileSetRace2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testPositionFor(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testLineStart(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testRemoveFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFileAddLineColumnInfo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _equal(_p:stdgo.Ref<FileSet>, _q:stdgo.Ref<FileSet>):Void {}
function _checkSerialize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _p:stdgo.Ref<FileSet>):Void {}
function testSerialization(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function lookup(_ident:stdgo.GoString):Void {}
function isExported(_name:stdgo.GoString):Void {}
function isKeyword(_name:stdgo.GoString):Void {}
function isIdentifier(_name:stdgo.GoString):Void {}
function testIsIdentifier(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid var _ : Dynamic;
@:invalid typedef Position_asInterface = Dynamic;
@:invalid typedef Position_static_extension = Dynamic;
@:invalid typedef File_asInterface = Dynamic;
@:invalid typedef File_static_extension = Dynamic;
@:invalid typedef FileSet_asInterface = Dynamic;
@:invalid typedef FileSet_static_extension = Dynamic;
@:invalid typedef Pos_asInterface = Dynamic;
@:invalid typedef Pos_static_extension = Dynamic;
@:invalid typedef Token_asInterface = Dynamic;
@:invalid typedef Token_static_extension = Dynamic;

package stdgo.text.scanner;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _tokenString : Dynamic;
@:invalid var _segmentList : Dynamic;
@:invalid var _f100 : Dynamic;
@:invalid var _tokenList : Dynamic;
@:invalid var scanIdents : Dynamic;
@:invalid var scanInts : Dynamic;
@:invalid var scanFloats : Dynamic;
@:invalid var scanChars : Dynamic;
@:invalid var scanStrings : Dynamic;
@:invalid var scanRawStrings : Dynamic;
@:invalid var scanComments : Dynamic;
@:invalid var skipComments : Dynamic;
@:invalid var goTokens : Dynamic;
@:invalid var eof : Dynamic;
@:invalid var ident : Dynamic;
@:invalid var int_ : Dynamic;
@:invalid var float_ : Dynamic;
@:invalid var char : Dynamic;
@:invalid var string : Dynamic;
@:invalid var rawString : Dynamic;
@:invalid var comment : Dynamic;
@:invalid var _skipComment : Dynamic;
@:invalid var goWhitespace : Dynamic;
@:invalid var _bufLen : Dynamic;
@:invalid typedef Position = Dynamic;
@:invalid typedef Scanner = Dynamic;
@:invalid typedef StringReader = Dynamic;
@:invalid typedef T_token = Dynamic;
@:invalid typedef T_errReader = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.text.scanner.Scanner.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.text.scanner.Scanner.T__struct_1;
typedef T_countReader = stdgo._internal.text.scanner.Scanner.T_countReader;
function tokenString(_tok:stdgo.GoRune):Void {}
function _lower(_ch:stdgo.GoRune):Void {}
function _isDecimal(_ch:stdgo.GoRune):Void {}
function _isHex(_ch:stdgo.GoRune):Void {}
function _litname(_prefix:stdgo.GoRune):Void {}
function _invalidSep(_x:stdgo.GoString):Void {}
function _digitVal(_ch:stdgo.GoRune):Void {}
function _readRuneSegments(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _segments:stdgo.Slice<stdgo.GoString>):Void {}
function testNext(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _makeSource(_pattern:stdgo.GoString):Void {}
function _checkTok(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _s:stdgo.Ref<Scanner>, _line:stdgo.GoInt, _got:stdgo.GoRune, _want:stdgo.GoRune, _text:stdgo.GoString):Void {}
function _checkTokErr(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _s:stdgo.Ref<Scanner>, _line:stdgo.GoInt, _want:stdgo.GoRune, _text:stdgo.GoString):Void {}
function _countNewlines(_s:stdgo.GoString):Void {}
function _testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _mode:stdgo.GoUInt):Void {}
function testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInvalidExponent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testPosition(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testScanZeroMode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testScanSelectedMode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _mode:stdgo.GoUInt, _class:stdgo.GoRune):Void {}
function testScanSelectedMask(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testScanCustomIdent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testScanNext(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testScanWhitespace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _src:stdgo.GoString, _pos:stdgo.GoString, _msg:stdgo.GoString, _tok:stdgo.GoRune):Void {}
function testError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIOError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _checkPos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _got:Position, _want:Position):Void {}
function _checkNextPos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _s:stdgo.Ref<Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void {}
function _checkScanPos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _s:stdgo.Ref<Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void {}
function testPos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNextEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testScanEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIssue29723(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testNumbers(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIssue30320(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _extractInts(_t:stdgo.GoString, _mode:stdgo.GoUInt):Void {}
function testIssue50909(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef Position_asInterface = Dynamic;
@:invalid typedef Position_static_extension = Dynamic;
@:invalid typedef Scanner_asInterface = Dynamic;
@:invalid typedef Scanner_static_extension = Dynamic;
@:invalid typedef StringReader_asInterface = Dynamic;
@:invalid typedef StringReader_static_extension = Dynamic;
@:invalid typedef T_errReader_asInterface = Dynamic;
@:invalid typedef T_errReader_static_extension = Dynamic;
@:invalid typedef T_countReader_asInterface = Dynamic;
@:invalid typedef T_countReader_static_extension = Dynamic;

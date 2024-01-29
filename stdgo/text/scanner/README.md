# Module: `stdgo.text.scanner`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _checkNextPos(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void`](<#function-_checknextpos>)

- [`function _checkPos(_t:stdgo.Ref<stdgo._internal.testing.T_>, _got:stdgo.text.scanner.Position, _want:stdgo.text.scanner.Position):Void`](<#function-_checkpos>)

- [`function _checkScanPos(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void`](<#function-_checkscanpos>)

- [`function _checkTok(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _line:stdgo.GoInt, _got:stdgo.GoRune, _want:stdgo.GoRune, _text:stdgo.GoString):Void`](<#function-_checktok>)

- [`function _checkTokErr(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _line:stdgo.GoInt, _want:stdgo.GoRune, _text:stdgo.GoString):Void`](<#function-_checktokerr>)

- [`function _countNewlines(_s:stdgo.GoString):Void`](<#function-_countnewlines>)

- [`function _digitVal(_ch:stdgo.GoRune):Void`](<#function-_digitval>)

- [`function _extractInts(_t:stdgo.GoString, _mode:stdgo.GoUInt):Void`](<#function-_extractints>)

- [`function _invalidSep(_x:stdgo.GoString):Void`](<#function-_invalidsep>)

- [`function _isDecimal(_ch:stdgo.GoRune):Void`](<#function-_isdecimal>)

- [`function _isHex(_ch:stdgo.GoRune):Void`](<#function-_ishex>)

- [`function _litname(_prefix:stdgo.GoRune):Void`](<#function-_litname>)

- [`function _lower(_ch:stdgo.GoRune):Void`](<#function-_lower>)

- [`function _makeSource(_pattern:stdgo.GoString):Void`](<#function-_makesource>)

- [`function _readRuneSegments(_t:stdgo.Ref<stdgo._internal.testing.T_>, _segments:stdgo.Slice<stdgo.GoString>):Void`](<#function-_readrunesegments>)

- [`function _testError(_t:stdgo.Ref<stdgo._internal.testing.T_>, _src:stdgo.GoString, _pos:stdgo.GoString, _msg:stdgo.GoString, _tok:stdgo.GoRune):Void`](<#function-_testerror>)

- [`function _testScan(_t:stdgo.Ref<stdgo._internal.testing.T_>, _mode:stdgo.GoUInt):Void`](<#function-_testscan>)

- [`function _testScanSelectedMode(_t:stdgo.Ref<stdgo._internal.testing.T_>, _mode:stdgo.GoUInt, _class:stdgo.GoRune):Void`](<#function-_testscanselectedmode>)

- [`function testError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testerror>)

- [`function testIOError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testioerror>)

- [`function testInvalidExponent(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testinvalidexponent>)

- [`function testIssue29723(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testissue29723>)

- [`function testIssue30320(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testissue30320>)

- [`function testIssue50909(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testissue50909>)

- [`function testNext(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnext>)

- [`function testNextEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnexteofhandling>)

- [`function testNumbers(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnumbers>)

- [`function testPos(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testpos>)

- [`function testPosition(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testposition>)

- [`function testScan(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscan>)

- [`function testScanCustomIdent(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscancustomident>)

- [`function testScanEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscaneofhandling>)

- [`function testScanNext(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscannext>)

- [`function testScanSelectedMask(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanselectedmask>)

- [`function testScanWhitespace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanwhitespace>)

- [`function testScanZeroMode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanzeromode>)

- [`function tokenString(_tok:stdgo.GoRune):Void`](<#function-tokenstring>)

- [typedef Position](<#typedef-position>)

- [typedef Position\_asInterface](<#typedef-position_asinterface>)

- [typedef Position\_static\_extension](<#typedef-position_static_extension>)

- [typedef Scanner](<#typedef-scanner>)

- [typedef Scanner\_asInterface](<#typedef-scanner_asinterface>)

- [typedef Scanner\_static\_extension](<#typedef-scanner_static_extension>)

- [typedef StringReader](<#typedef-stringreader>)

- [typedef StringReader\_asInterface](<#typedef-stringreader_asinterface>)

- [typedef StringReader\_static\_extension](<#typedef-stringreader_static_extension>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_1\_asInterface](<#typedef-t__struct_1_asinterface>)

- [typedef T\_\_struct\_1\_static\_extension](<#typedef-t__struct_1_static_extension>)

- [typedef T\_countReader](<#typedef-t_countreader>)

- [typedef T\_countReader\_asInterface](<#typedef-t_countreader_asinterface>)

- [typedef T\_countReader\_static\_extension](<#typedef-t_countreader_static_extension>)

- [typedef T\_errReader](<#typedef-t_errreader>)

- [typedef T\_errReader\_asInterface](<#typedef-t_errreader_asinterface>)

- [typedef T\_errReader\_static\_extension](<#typedef-t_errreader_static_extension>)

- [typedef T\_token](<#typedef-t_token>)

# Variables


```haxe
import stdgo.text.scanner.Scanner
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _bufLen:Dynamic
```


```haxe
var _f100:Dynamic
```


```haxe
var _segmentList:Dynamic
```


```haxe
var _skipComment:Dynamic
```


```haxe
var _tokenList:Dynamic
```


```haxe
var _tokenString:Dynamic
```


```haxe
var char:Dynamic
```


```haxe
var comment:Dynamic
```


```haxe
var eof:Dynamic
```


```haxe
var float_:Dynamic
```


```haxe
var goTokens:Dynamic
```


```haxe
var goWhitespace:Dynamic
```


```haxe
var ident:Dynamic
```


```haxe
var int_:Dynamic
```


```haxe
var rawString:Dynamic
```


```haxe
var scanChars:Dynamic
```


```haxe
var scanComments:Dynamic
```


```haxe
var scanFloats:Dynamic
```


```haxe
var scanIdents:Dynamic
```


```haxe
var scanInts:Dynamic
```


```haxe
var scanRawStrings:Dynamic
```


```haxe
var scanStrings:Dynamic
```


```haxe
var skipComments:Dynamic
```


```haxe
var string:Dynamic
```


# Functions


```haxe
import stdgo.text.scanner.Scanner
```


## function \_checkNextPos


```haxe
function _checkNextPos(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L66>)


## function \_checkPos


```haxe
function _checkPos(_t:stdgo.Ref<stdgo._internal.testing.T_>, _got:stdgo.text.scanner.Position, _want:stdgo.text.scanner.Position):Void
```


[\(view code\)](<./Scanner.hx#L65>)


## function \_checkScanPos


```haxe
function _checkScanPos(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L67>)


## function \_checkTok


```haxe
function _checkTok(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _line:stdgo.GoInt, _got:stdgo.GoRune, _want:stdgo.GoRune, _text:stdgo.GoString):Void
```


[\(view code\)](<./Scanner.hx#L49>)


## function \_checkTokErr


```haxe
function _checkTokErr(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _line:stdgo.GoInt, _want:stdgo.GoRune, _text:stdgo.GoString):Void
```


[\(view code\)](<./Scanner.hx#L50>)


## function \_countNewlines


```haxe
function _countNewlines(_s:stdgo.GoString):Void
```


[\(view code\)](<./Scanner.hx#L51>)


## function \_digitVal


```haxe
function _digitVal(_ch:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L45>)


## function \_extractInts


```haxe
function _extractInts(_t:stdgo.GoString, _mode:stdgo.GoUInt):Void
```


[\(view code\)](<./Scanner.hx#L74>)


## function \_invalidSep


```haxe
function _invalidSep(_x:stdgo.GoString):Void
```


[\(view code\)](<./Scanner.hx#L44>)


## function \_isDecimal


```haxe
function _isDecimal(_ch:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L41>)


## function \_isHex


```haxe
function _isHex(_ch:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L42>)


## function \_litname


```haxe
function _litname(_prefix:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L43>)


## function \_lower


```haxe
function _lower(_ch:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L40>)


## function \_makeSource


```haxe
function _makeSource(_pattern:stdgo.GoString):Void
```


[\(view code\)](<./Scanner.hx#L48>)


## function \_readRuneSegments


```haxe
function _readRuneSegments(_t:stdgo.Ref<stdgo._internal.testing.T_>, _segments:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Scanner.hx#L46>)


## function \_testError


```haxe
function _testError(_t:stdgo.Ref<stdgo._internal.testing.T_>, _src:stdgo.GoString, _pos:stdgo.GoString, _msg:stdgo.GoString, _tok:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L62>)


## function \_testScan


```haxe
function _testScan(_t:stdgo.Ref<stdgo._internal.testing.T_>, _mode:stdgo.GoUInt):Void
```


[\(view code\)](<./Scanner.hx#L52>)


## function \_testScanSelectedMode


```haxe
function _testScanSelectedMode(_t:stdgo.Ref<stdgo._internal.testing.T_>, _mode:stdgo.GoUInt, _class:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L57>)


## function testError


```haxe
function testError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L63>)


## function testIOError


```haxe
function testIOError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L64>)


## function testInvalidExponent


```haxe
function testInvalidExponent(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L54>)


## function testIssue29723


```haxe
function testIssue29723(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L71>)


## function testIssue30320


```haxe
function testIssue30320(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L73>)


## function testIssue50909


```haxe
function testIssue50909(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L75>)


## function testNext


```haxe
function testNext(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L47>)


## function testNextEOFHandling


```haxe
function testNextEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L69>)


## function testNumbers


```haxe
function testNumbers(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L72>)


## function testPos


```haxe
function testPos(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L68>)


## function testPosition


```haxe
function testPosition(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L55>)


## function testScan


```haxe
function testScan(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L53>)


## function testScanCustomIdent


```haxe
function testScanCustomIdent(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L59>)


## function testScanEOFHandling


```haxe
function testScanEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L70>)


## function testScanNext


```haxe
function testScanNext(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L60>)


## function testScanSelectedMask


```haxe
function testScanSelectedMask(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L58>)


## function testScanWhitespace


```haxe
function testScanWhitespace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L61>)


## function testScanZeroMode


```haxe
function testScanZeroMode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L56>)


## function tokenString


```haxe
function tokenString(_tok:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L39>)


# Typedefs


```haxe
import stdgo.text.scanner.*
```


## typedef Position


```haxe
typedef Position = Dynamic;
```


## typedef Position\_asInterface


```haxe
typedef Position_asInterface = Dynamic;
```


## typedef Position\_static\_extension


```haxe
typedef Position_static_extension = Dynamic;
```


## typedef Scanner


```haxe
typedef Scanner = Dynamic;
```


## typedef Scanner\_asInterface


```haxe
typedef Scanner_asInterface = Dynamic;
```


## typedef Scanner\_static\_extension


```haxe
typedef Scanner_static_extension = Dynamic;
```


## typedef StringReader


```haxe
typedef StringReader = Dynamic;
```


## typedef StringReader\_asInterface


```haxe
typedef StringReader_asInterface = Dynamic;
```


## typedef StringReader\_static\_extension


```haxe
typedef StringReader_static_extension = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.text.scanner.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.text.scanner.T__struct_1;
```


## typedef T\_\_struct\_1\_asInterface


```haxe
typedef T__struct_1_asInterface = Dynamic;
```


## typedef T\_\_struct\_1\_static\_extension


```haxe
typedef T__struct_1_static_extension = Dynamic;
```


## typedef T\_countReader


```haxe
typedef T_countReader = stdgo._internal.text.scanner.T_countReader;
```


## typedef T\_countReader\_asInterface


```haxe
typedef T_countReader_asInterface = Dynamic;
```


## typedef T\_countReader\_static\_extension


```haxe
typedef T_countReader_static_extension = Dynamic;
```


## typedef T\_errReader


```haxe
typedef T_errReader = Dynamic;
```


## typedef T\_errReader\_asInterface


```haxe
typedef T_errReader_asInterface = Dynamic;
```


## typedef T\_errReader\_static\_extension


```haxe
typedef T_errReader_static_extension = Dynamic;
```


## typedef T\_token


```haxe
typedef T_token = Dynamic;
```



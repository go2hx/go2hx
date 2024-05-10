# Module: `stdgo._internal.text.scanner`

[(view library index)](../../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,368

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _checkNextPos(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void`](<#function-_checknextpos>)

- [`function _checkPos(_t:stdgo.Ref<stdgo._internal.testing.T_>, _got:stdgo._internal.text.scanner.Position, _want:stdgo._internal.text.scanner.Position):Void`](<#function-_checkpos>)

- [`function _checkScanPos(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void`](<#function-_checkscanpos>)

- [`function _checkTok(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner>, _line:stdgo.GoInt, _got:stdgo.GoRune, _want:stdgo.GoRune, _text:stdgo.GoString):Void`](<#function-_checktok>)

- [`function _checkTokErr(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner>, _line:stdgo.GoInt, _want:stdgo.GoRune, _text:stdgo.GoString):Void`](<#function-_checktokerr>)

- [`function _countNewlines(_s:stdgo.GoString):stdgo.GoInt`](<#function-_countnewlines>)

- [`function _digitVal(_ch:stdgo.GoRune):stdgo.GoInt`](<#function-_digitval>)

- [`function _extractInts(_t:stdgo.GoString, _mode:stdgo.GoUInt):stdgo.GoString`](<#function-_extractints>)

- [`function _invalidSep(_x:stdgo.GoString):stdgo.GoInt`](<#function-_invalidsep>)

- [`function _isDecimal(_ch:stdgo.GoRune):Bool`](<#function-_isdecimal>)

- [`function _isHex(_ch:stdgo.GoRune):Bool`](<#function-_ishex>)

- [`function _litname(_prefix:stdgo.GoRune):stdgo.GoString`](<#function-_litname>)

- [`function _lower(_ch:stdgo.GoRune):stdgo.GoRune`](<#function-_lower>)

- [`function _makeSource(_pattern:stdgo.GoString):stdgo.Ref<stdgo._internal.bytes.Buffer>`](<#function-_makesource>)

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

- [`function tokenString(_tok:stdgo.GoRune):stdgo.GoString`](<#function-tokenstring>)

- [class Position](<#class-position>)

  - [`function new(?filename:stdgo.GoString, ?offset:stdgo.GoInt, ?line:stdgo.GoInt, ?column:stdgo.GoInt):Void`](<#position-function-new>)

  - [`function isValid():Bool`](<#position-function-isvalid>)

  - [`function string():stdgo.GoString`](<#position-function-string>)

- [class Scanner](<#class-scanner>)

  - [`function error(:stdgo.Ref<stdgo._internal.text.scanner.Scanner>, :stdgo.GoString):Void`](<#scanner-function-error>)

  - [`function isIdentRune(:stdgo.GoInt32, :stdgo.GoInt):Bool`](<#scanner-function-isidentrune>)

  - [`function isValid():Bool`](<#scanner-function-isvalid>)

  - [`function new(?_src:Null<stdgo._internal.io.Reader>, ?_srcBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_srcPos:stdgo.GoInt, ?_srcEnd:stdgo.GoInt, ?_srcBufOffset:stdgo.GoInt, ?_line:stdgo.GoInt, ?_column:stdgo.GoInt, ?_lastLineLen:stdgo.GoInt, ?_lastCharLen:stdgo.GoInt, ?_tokBuf:stdgo._internal.bytes.Buffer, ?_tokPos:stdgo.GoInt, ?_tokEnd:stdgo.GoInt, ?_ch:stdgo.GoInt32, ?error:(:stdgo.Ref<stdgo._internal.text.scanner.Scanner>, :stdgo.GoString):Void, ?errorCount:stdgo.GoInt, ?mode:stdgo.GoUInt, ?whitespace:stdgo.GoUInt64, ?isIdentRune:(:stdgo.GoInt32, :stdgo.GoInt):Bool, ?position:stdgo._internal.text.scanner.Position):Void`](<#scanner-function-new>)

  - [`function string():stdgo.GoString`](<#scanner-function-string>)

  - [`function _digits( _ch0:stdgo.GoRune, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoRune>):{ _1:stdgo.GoInt; _0:stdgo.GoRune;}`](<#scanner-function-_digits>)

  - [`function _error( _msg:stdgo.GoString):Void`](<#scanner-function-_error>)

  - [`function _errorf( _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void`](<#scanner-function-_errorf>)

  - [`function _isIdentRune( _ch:stdgo.GoRune, _i:stdgo.GoInt):Bool`](<#scanner-function-_isidentrune>)

  - [`function _next():stdgo.GoRune`](<#scanner-function-_next>)

  - [`function _scanChar():Void`](<#scanner-function-_scanchar>)

  - [`function _scanComment( _ch:stdgo.GoRune):stdgo.GoRune`](<#scanner-function-_scancomment>)

  - [`function _scanDigits( _ch:stdgo.GoRune, _base:stdgo.GoInt, _n:stdgo.GoInt):stdgo.GoRune`](<#scanner-function-_scandigits>)

  - [`function _scanEscape( _quote:stdgo.GoRune):stdgo.GoRune`](<#scanner-function-_scanescape>)

  - [`function _scanIdentifier():stdgo.GoRune`](<#scanner-function-_scanidentifier>)

  - [`function _scanNumber( _ch:stdgo.GoRune, _seenDot:Bool):{ _1:stdgo.GoRune; _0:stdgo.GoRune;}`](<#scanner-function-_scannumber>)

  - [`function _scanRawString():Void`](<#scanner-function-_scanrawstring>)

  - [`function _scanString( _quote:stdgo.GoRune):stdgo.GoInt`](<#scanner-function-_scanstring>)

  - [`function init( _src:stdgo._internal.io.Reader):stdgo.Ref<stdgo._internal.text.scanner.Scanner>`](<#scanner-function-init>)

  - [`function isValid():Bool`](<#scanner-function-isvalid>)

  - [`function next():stdgo.GoRune`](<#scanner-function-next>)

  - [`function peek():stdgo.GoRune`](<#scanner-function-peek>)

  - [`function pos():stdgo._internal.text.scanner.Position`](<#scanner-function-pos>)

  - [`function scan():stdgo.GoRune`](<#scanner-function-scan>)

  - [`function string():stdgo.GoString`](<#scanner-function-string>)

  - [`function tokenText():stdgo.GoString`](<#scanner-function-tokentext>)

- [class StringReader](<#class-stringreader>)

  - [`function new(?_data:stdgo.Slice<stdgo.GoString>, ?_step:stdgo.GoInt):Void`](<#stringreader-function-new>)

  - [`function read( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#stringreader-function-read>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_countReader](<#typedef-t_countreader>)

# Constants


```haxe
import stdgo._internal.text.scanner.Scanner
```


```haxe
final _bufLen:stdgo.GoUInt64 = ((1024i64 : stdgo.GoUInt64))
```


```haxe
final _skipComment:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final char:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final comment:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final eof:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final float_:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final goTokens:stdgo.GoUInt64 = ((1012i64 : stdgo.GoUInt64))
```


```haxe
final goWhitespace:stdgo.GoUInt64 = ((4294977024i64 : stdgo.GoUInt64))
```


```haxe
final ident:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final int_:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final rawString:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final scanChars:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final scanComments:stdgo.GoUInt64 = ((256i64 : stdgo.GoUInt64))
```


```haxe
final scanFloats:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


```haxe
final scanIdents:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final scanInts:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final scanRawStrings:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```


```haxe
final scanStrings:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```


```haxe
final skipComments:stdgo.GoUInt64 = ((512i64 : stdgo.GoUInt64))
```


```haxe
final string:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.text.scanner.Scanner
```


```haxe
var _f100:stdgo.GoString
```


```haxe
var _segmentList:stdgo.Slice<stdgo.Slice<stdgo.GoString>>
```


```haxe
var _tokenList:stdgo.Slice<stdgo._internal.text.scanner.T_token>
```


```haxe
var _tokenString:stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>
```


# Functions


```haxe
import stdgo._internal.text.scanner.Scanner
```


## function \_checkNextPos


```haxe
function _checkNextPos(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L719>)


## function \_checkPos


```haxe
function _checkPos(_t:stdgo.Ref<stdgo._internal.testing.T_>, _got:stdgo._internal.text.scanner.Position, _want:stdgo._internal.text.scanner.Position):Void
```


[\(view code\)](<./Scanner.hx#L714>)


## function \_checkScanPos


```haxe
function _checkScanPos(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L729>)


## function \_checkTok


```haxe
function _checkTok(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner>, _line:stdgo.GoInt, _got:stdgo.GoRune, _want:stdgo.GoRune, _text:stdgo.GoString):Void
```


[\(view code\)](<./Scanner.hx#L434>)


## function \_checkTokErr


```haxe
function _checkTokErr(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.Ref<stdgo._internal.text.scanner.Scanner>, _line:stdgo.GoInt, _want:stdgo.GoRune, _text:stdgo.GoString):Void
```


[\(view code\)](<./Scanner.hx#L451>)


## function \_countNewlines


```haxe
function _countNewlines(_s:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Scanner.hx#L458>)


## function \_digitVal


```haxe
function _digitVal(_ch:stdgo.GoRune):stdgo.GoInt
```


[\(view code\)](<./Scanner.hx#L399>)


## function \_extractInts


```haxe
function _extractInts(_t:stdgo.GoString, _mode:stdgo.GoUInt):stdgo.GoString
```


[\(view code\)](<./Scanner.hx#L1000>)


## function \_invalidSep


```haxe
function _invalidSep(_x:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Scanner.hx#L367>)


## function \_isDecimal


```haxe
function _isDecimal(_ch:stdgo.GoRune):Bool
```


[\(view code\)](<./Scanner.hx#L347>)


## function \_isHex


```haxe
function _isHex(_ch:stdgo.GoRune):Bool
```


[\(view code\)](<./Scanner.hx#L350>)


## function \_litname


```haxe
function _litname(_prefix:stdgo.GoRune):stdgo.GoString
```


[\(view code\)](<./Scanner.hx#L353>)


## function \_lower


```haxe
function _lower(_ch:stdgo.GoRune):stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L344>)


## function \_makeSource


```haxe
function _makeSource(_pattern:stdgo.GoString):stdgo.Ref<stdgo._internal.bytes.Buffer>
```


[\(view code\)](<./Scanner.hx#L427>)


## function \_readRuneSegments


```haxe
function _readRuneSegments(_t:stdgo.Ref<stdgo._internal.testing.T_>, _segments:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Scanner.hx#L407>)


## function \_testError


```haxe
function _testError(_t:stdgo.Ref<stdgo._internal.testing.T_>, _src:stdgo.GoString, _pos:stdgo.GoString, _msg:stdgo.GoString, _tok:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L633>)


## function \_testScan


```haxe
function _testScan(_t:stdgo.Ref<stdgo._internal.testing.T_>, _mode:stdgo.GoUInt):Void
```


[\(view code\)](<./Scanner.hx#L467>)


## function \_testScanSelectedMode


```haxe
function _testScanSelectedMode(_t:stdgo.Ref<stdgo._internal.testing.T_>, _mode:stdgo.GoUInt, _class:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L549>)


## function testError


```haxe
function testError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L661>)


## function testIOError


```haxe
function testIOError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L692>)


## function testInvalidExponent


```haxe
function testInvalidExponent(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L485>)


## function testIssue29723


```haxe
function testIssue29723(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L850>)


## function testIssue30320


```haxe
function testIssue30320(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L992>)


## function testIssue50909


```haxe
function testIssue50909(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L1022>)


## function testNext


```haxe
function testNext(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L422>)


## function testNextEOFHandling


```haxe
function testNextEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L820>)


## function testNumbers


```haxe
function testNumbers(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L864>)


## function testPos


```haxe
function testPos(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L743>)


## function testPosition


```haxe
function testPosition(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L505>)


## function testScan


```haxe
function testScan(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L481>)


## function testScanCustomIdent


```haxe
function testScanCustomIdent(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L572>)


## function testScanEOFHandling


```haxe
function testScanEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L835>)


## function testScanNext


```haxe
function testScanNext(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L590>)


## function testScanSelectedMask


```haxe
function testScanSelectedMask(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L564>)


## function testScanWhitespace


```haxe
function testScanWhitespace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L613>)


## function testScanZeroMode


```haxe
function testScanZeroMode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L529>)


## function tokenString


```haxe
function tokenString(_tok:stdgo.GoRune):stdgo.GoString
```


[\(view code\)](<./Scanner.hx#L335>)


# Classes


```haxe
import stdgo._internal.text.scanner.*
```


## class Position


```haxe
var column:stdgo.GoInt
```


```haxe
var filename:stdgo.GoString
```


```haxe
var line:stdgo.GoInt
```


```haxe
var offset:stdgo.GoInt
```


### Position function new


```haxe
function new(?filename:stdgo.GoString, ?offset:stdgo.GoInt, ?line:stdgo.GoInt, ?column:stdgo.GoInt):Void
```


[\(view code\)](<./Scanner.hx#L187>)


### Position function isValid


```haxe
function isValid():Bool
```


[\(view code\)](<./Scanner.hx#L1067>)


### Position function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Scanner.hx#L1055>)


## class Scanner


```haxe
var _ch:stdgo.GoInt32
```


```haxe
var _column:stdgo.GoInt
```


```haxe
var _lastCharLen:stdgo.GoInt
```


```haxe
var _lastLineLen:stdgo.GoInt
```


```haxe
var _line:stdgo.GoInt
```


```haxe
var _src:stdgo._internal.io.Reader
```


```haxe
var _srcBuf:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _srcBufOffset:stdgo.GoInt
```


```haxe
var _srcEnd:stdgo.GoInt
```


```haxe
var _srcPos:stdgo.GoInt
```


```haxe
var _tokBuf:stdgo._internal.bytes.Buffer
```


```haxe
var _tokEnd:stdgo.GoInt
```


```haxe
var _tokPos:stdgo.GoInt
```


```haxe
var errorCount:stdgo.GoInt
```


```haxe
var mode:stdgo.GoUInt
```


```haxe
var position:stdgo._internal.text.scanner.Position
```


```haxe
var whitespace:stdgo.GoUInt64
```


### Scanner function error


```haxe
function error(:stdgo.Ref<stdgo._internal.text.scanner.Scanner>, :stdgo.GoString):Void
```


### Scanner function isIdentRune


```haxe
function isIdentRune(:stdgo.GoInt32, :stdgo.GoInt):Bool
```


### Scanner function isValid


```haxe
function isValid():Bool
```


[\(view code\)](<./Scanner.hx#L242>)


### Scanner function new


```haxe
function new(?_src:Null<stdgo._internal.io.Reader>, ?_srcBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_srcPos:stdgo.GoInt, ?_srcEnd:stdgo.GoInt, ?_srcBufOffset:stdgo.GoInt, ?_line:stdgo.GoInt, ?_column:stdgo.GoInt, ?_lastLineLen:stdgo.GoInt, ?_lastCharLen:stdgo.GoInt, ?_tokBuf:stdgo._internal.bytes.Buffer, ?_tokPos:stdgo.GoInt, ?_tokEnd:stdgo.GoInt, ?_ch:stdgo.GoInt32, ?error:(:stdgo.Ref<stdgo._internal.text.scanner.Scanner>, :stdgo.GoString):Void, ?errorCount:stdgo.GoInt, ?mode:stdgo.GoUInt, ?whitespace:stdgo.GoUInt64, ?isIdentRune:(:stdgo.GoInt32, :stdgo.GoInt):Bool, ?position:stdgo._internal.text.scanner.Position):Void
```


[\(view code\)](<./Scanner.hx#L219>)


### Scanner function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Scanner.hx#L244>)


### Scanner function \_digits


```haxe
function _digits( _ch0:stdgo.GoRune, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoRune>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```


[\(view code\)](<./Scanner.hx#L1488>)


### Scanner function \_error


```haxe
function _error( _msg:stdgo.GoString):Void
```


[\(view code\)](<./Scanner.hx#L1543>)


### Scanner function \_errorf


```haxe
function _errorf( _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Scanner.hx#L1537>)


### Scanner function \_isIdentRune


```haxe
function _isIdentRune( _ch:stdgo.GoRune, _i:stdgo.GoInt):Bool
```


[\(view code\)](<./Scanner.hx#L1529>)


### Scanner function \_next


```haxe
function _next():stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L1580>)


### Scanner function \_scanChar


```haxe
function _scanChar():Void
```


[\(view code\)](<./Scanner.hx#L1300>)


### Scanner function \_scanComment


```haxe
function _scanComment( _ch:stdgo.GoRune):stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L1275>)


### Scanner function \_scanDigits


```haxe
function _scanDigits( _ch:stdgo.GoRune, _base:stdgo.GoInt, _n:stdgo.GoInt):stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L1360>)


### Scanner function \_scanEscape


```haxe
function _scanEscape( _quote:stdgo.GoRune):stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L1338>)


### Scanner function \_scanIdentifier


```haxe
function _scanIdentifier():stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L1517>)


### Scanner function \_scanNumber


```haxe
function _scanNumber( _ch:stdgo.GoRune, _seenDot:Bool):{
	_1:stdgo.GoRune;
	_0:stdgo.GoRune;
}
```


[\(view code\)](<./Scanner.hx#L1372>)


### Scanner function \_scanRawString


```haxe
function _scanRawString():Void
```


[\(view code\)](<./Scanner.hx#L1307>)


### Scanner function \_scanString


```haxe
function _scanString( _quote:stdgo.GoRune):stdgo.GoInt
```


[\(view code\)](<./Scanner.hx#L1319>)


### Scanner function init


```haxe
function init( _src:stdgo._internal.io.Reader):stdgo.Ref<stdgo._internal.text.scanner.Scanner>
```


[\(view code\)](<./Scanner.hx#L1642>)


### Scanner function isValid


```haxe
function isValid():Bool
```


[\(view code\)](<./Scanner.hx#L1665>)


### Scanner function next


```haxe
function next():stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L1569>)


### Scanner function peek


```haxe
function peek():stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L1558>)


### Scanner function pos


```haxe
function pos():stdgo._internal.text.scanner.Position
```


[\(view code\)](<./Scanner.hx#L1141>)


### Scanner function scan


```haxe
function scan():stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L1159>)


### Scanner function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Scanner.hx#L1663>)


### Scanner function tokenText


```haxe
function tokenText():stdgo.GoString
```


[\(view code\)](<./Scanner.hx#L1125>)


## class StringReader


```haxe
var _data:stdgo.Slice<stdgo.GoString>
```


```haxe
var _step:stdgo.GoInt
```


### StringReader function new


```haxe
function new(?_data:stdgo.Slice<stdgo.GoString>, ?_step:stdgo.GoInt):Void
```


[\(view code\)](<./Scanner.hx#L271>)


### StringReader function read


```haxe
function read( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Scanner.hx#L1680>)


# Typedefs


```haxe
import stdgo._internal.text.scanner.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_tokens:stdgo.GoString;
	_tok:stdgo.GoInt32;
	_src:stdgo.GoString;
	_err:stdgo.GoString;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_want:stdgo.GoString;
	_mode:stdgo.GoUInt;
	_in:stdgo.GoString;
};
```


## typedef T\_countReader


```haxe
typedef T_countReader = stdgo.GoInt;
```



# Module: `stdgo.text.scanner`

[(view library index)](../../stdgo.md)


# Overview



Package scanner provides a scanner and tokenizer for UTF\-8\-encoded text.
It takes an io.Reader providing the source, which then can be tokenized
through repeated calls to the Scan function. For compatibility with
existing tools, the NUL character is not allowed. If the first character
in the source is a UTF\-8 encoded byte order mark \(BOM\), it is discarded.  


By default, a Scanner skips white space and Go comments and recognizes all
literals as defined by the Go language specification. It may be
customized to recognize only a subset of those literals and to recognize
different identifier and white space characters.  

stdgo/internal/Macro.macro.hx:38: TypeInfoData_go2hx_null

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _checkNextPos(_t:stdgo.Ref<stdgo.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void`](<#function-_checknextpos>)

- [`function _checkPos(_t:stdgo.Ref<stdgo.testing.T_>, _got:stdgo.text.scanner.Position, _want:stdgo.text.scanner.Position):Void`](<#function-_checkpos>)

- [`function _checkScanPos(_t:stdgo.Ref<stdgo.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void`](<#function-_checkscanpos>)

- [`function _checkTok(_t:stdgo.Ref<stdgo.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _line:stdgo.GoInt, _got:stdgo.GoRune, _want:stdgo.GoRune, _text:stdgo.GoString):Void`](<#function-_checktok>)

- [`function _checkTokErr(_t:stdgo.Ref<stdgo.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _line:stdgo.GoInt, _want:stdgo.GoRune, _text:stdgo.GoString):Void`](<#function-_checktokerr>)

- [`function _countNewlines(_s:stdgo.GoString):stdgo.GoInt`](<#function-_countnewlines>)

- [`function _digitVal(_ch:stdgo.GoRune):stdgo.GoInt`](<#function-_digitval>)

- [`function _extractInts(_t:stdgo.GoString, _mode:stdgo.GoUInt):stdgo.GoString`](<#function-_extractints>)

- [`function _invalidSep(_x:stdgo.GoString):stdgo.GoInt`](<#function-_invalidsep>)

- [`function _isDecimal(_ch:stdgo.GoRune):Bool`](<#function-_isdecimal>)

- [`function _isHex(_ch:stdgo.GoRune):Bool`](<#function-_ishex>)

- [`function _litname(_prefix:stdgo.GoRune):stdgo.GoString`](<#function-_litname>)

- [`function _lower(_ch:stdgo.GoRune):stdgo.GoRune`](<#function-_lower>)

- [`function _makeSource(_pattern:stdgo.GoString):stdgo.Ref<stdgo.bytes.Buffer>`](<#function-_makesource>)

- [`function _readRuneSegments(_t:stdgo.Ref<stdgo.testing.T_>, _segments:stdgo.Slice<stdgo.GoString>):Void`](<#function-_readrunesegments>)

- [`function _testError(_t:stdgo.Ref<stdgo.testing.T_>, _src:stdgo.GoString, _pos:stdgo.GoString, _msg:stdgo.GoString, _tok:stdgo.GoRune):Void`](<#function-_testerror>)

- [`function _testScan(_t:stdgo.Ref<stdgo.testing.T_>, _mode:stdgo.GoUInt):Void`](<#function-_testscan>)

- [`function _testScanSelectedMode(_t:stdgo.Ref<stdgo.testing.T_>, _mode:stdgo.GoUInt, _class:stdgo.GoRune):Void`](<#function-_testscanselectedmode>)

- [`function testError(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testerror>)

- [`function testIOError(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testioerror>)

- [`function testInvalidExponent(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testinvalidexponent>)

- [`function testIssue29723(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testissue29723>)

- [`function testIssue30320(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testissue30320>)

- [`function testIssue50909(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testissue50909>)

- [`function testNext(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnext>)

- [`function testNextEOFHandling(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnexteofhandling>)

- [`function testNumbers(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnumbers>)

- [`function testPos(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testpos>)

- [`function testPosition(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testposition>)

- [`function testScan(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscan>)

- [`function testScanCustomIdent(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscancustomident>)

- [`function testScanEOFHandling(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscaneofhandling>)

- [`function testScanNext(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscannext>)

- [`function testScanSelectedMask(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanselectedmask>)

- [`function testScanWhitespace(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanwhitespace>)

- [`function testScanZeroMode(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanzeromode>)

- [`function tokenString(_tok:stdgo.GoRune):stdgo.GoString`](<#function-tokenstring>)

- [class Position](<#class-position>)

  - [`function new(?filename:stdgo.GoString, ?offset:stdgo.GoInt, ?line:stdgo.GoInt, ?column:stdgo.GoInt):Void`](<#position-function-new>)

  - [`function isValid():Bool`](<#position-function-isvalid>)

  - [`function string():stdgo.GoString`](<#position-function-string>)

- [class Scanner](<#class-scanner>)

  - [`function error(:stdgo.Ref<stdgo.text.scanner.Scanner>, :stdgo.GoString):Void`](<#scanner-function-error>)

  - [`function isIdentRune(:stdgo.GoInt32, :stdgo.GoInt):Bool`](<#scanner-function-isidentrune>)

  - [`function isValid():Bool`](<#scanner-function-isvalid>)

  - [`function new(?_src:Null<stdgo.io.Reader>, ?_srcBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_srcPos:stdgo.GoInt, ?_srcEnd:stdgo.GoInt, ?_srcBufOffset:stdgo.GoInt, ?_line:stdgo.GoInt, ?_column:stdgo.GoInt, ?_lastLineLen:stdgo.GoInt, ?_lastCharLen:stdgo.GoInt, ?_tokBuf:stdgo.bytes.Buffer, ?_tokPos:stdgo.GoInt, ?_tokEnd:stdgo.GoInt, ?_ch:stdgo.GoInt32, ?error:(:stdgo.Ref<stdgo.text.scanner.Scanner>, :stdgo.GoString):Void, ?errorCount:stdgo.GoInt, ?mode:stdgo.GoUInt, ?whitespace:stdgo.GoUInt64, ?isIdentRune:(:stdgo.GoInt32, :stdgo.GoInt):Bool, ?position:stdgo.text.scanner.Position):Void`](<#scanner-function-new>)

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

  - [`function init( _src:stdgo.io.Reader):stdgo.Ref<stdgo.text.scanner.Scanner>`](<#scanner-function-init>)

  - [`function isValid():Bool`](<#scanner-function-isvalid>)

  - [`function next():stdgo.GoRune`](<#scanner-function-next>)

  - [`function peek():stdgo.GoRune`](<#scanner-function-peek>)

  - [`function pos():stdgo.text.scanner.Position`](<#scanner-function-pos>)

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
import stdgo.text.scanner.Scanner
```


```haxe
final _bufLen:stdgo.GoUInt64 = ((1024i64 : stdgo.GoUInt64))
```



at least utf8.UTFMax  

```haxe
final _skipComment:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```



internal use only  

```haxe
final char:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```



The result of Scan is one of these tokens or a Unicode character.  

```haxe
final comment:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```



The result of Scan is one of these tokens or a Unicode character.  

```haxe
final eof:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```



The result of Scan is one of these tokens or a Unicode character.  

```haxe
final float_:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```



The result of Scan is one of these tokens or a Unicode character.  

```haxe
final goTokens:stdgo.GoUInt64 = ((1012i64 : stdgo.GoUInt64))
```



Predefined mode bits to control recognition of tokens. For instance,
to configure a Scanner such that it only recognizes \(Go\) identifiers,
integers, and skips comments, set the Scanner's Mode field to:  

```
	ScanIdents | ScanInts | SkipComments
```

With the exceptions of comments, which are skipped if SkipComments is
set, unrecognized tokens are not ignored. Instead, the scanner simply
returns the respective individual characters \(or possibly sub\-tokens\).
For instance, if the mode is ScanIdents \(not ScanStrings\), the string
"foo" is scanned as the token sequence '"' Ident '"'.  


Use GoTokens to configure the Scanner such that it accepts all Go
literal tokens including Go identifiers. Comments will be skipped.  

```haxe
final goWhitespace:stdgo.GoUInt64 = ((4294977024i64 : stdgo.GoUInt64))
```



GoWhitespace is the default value for the Scanner's Whitespace field.
Its value selects Go's white space characters.  

```haxe
final ident:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```



The result of Scan is one of these tokens or a Unicode character.  

```haxe
final int_:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```



The result of Scan is one of these tokens or a Unicode character.  

```haxe
final rawString:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```



The result of Scan is one of these tokens or a Unicode character.  

```haxe
final scanChars:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```



Predefined mode bits to control recognition of tokens. For instance,
to configure a Scanner such that it only recognizes \(Go\) identifiers,
integers, and skips comments, set the Scanner's Mode field to:  

```
	ScanIdents | ScanInts | SkipComments
```

With the exceptions of comments, which are skipped if SkipComments is
set, unrecognized tokens are not ignored. Instead, the scanner simply
returns the respective individual characters \(or possibly sub\-tokens\).
For instance, if the mode is ScanIdents \(not ScanStrings\), the string
"foo" is scanned as the token sequence '"' Ident '"'.  


Use GoTokens to configure the Scanner such that it accepts all Go
literal tokens including Go identifiers. Comments will be skipped.  

```haxe
final scanComments:stdgo.GoUInt64 = ((256i64 : stdgo.GoUInt64))
```



Predefined mode bits to control recognition of tokens. For instance,
to configure a Scanner such that it only recognizes \(Go\) identifiers,
integers, and skips comments, set the Scanner's Mode field to:  

```
	ScanIdents | ScanInts | SkipComments
```

With the exceptions of comments, which are skipped if SkipComments is
set, unrecognized tokens are not ignored. Instead, the scanner simply
returns the respective individual characters \(or possibly sub\-tokens\).
For instance, if the mode is ScanIdents \(not ScanStrings\), the string
"foo" is scanned as the token sequence '"' Ident '"'.  


Use GoTokens to configure the Scanner such that it accepts all Go
literal tokens including Go identifiers. Comments will be skipped.  

```haxe
final scanFloats:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```



Predefined mode bits to control recognition of tokens. For instance,
to configure a Scanner such that it only recognizes \(Go\) identifiers,
integers, and skips comments, set the Scanner's Mode field to:  

```
	ScanIdents | ScanInts | SkipComments
```

With the exceptions of comments, which are skipped if SkipComments is
set, unrecognized tokens are not ignored. Instead, the scanner simply
returns the respective individual characters \(or possibly sub\-tokens\).
For instance, if the mode is ScanIdents \(not ScanStrings\), the string
"foo" is scanned as the token sequence '"' Ident '"'.  


Use GoTokens to configure the Scanner such that it accepts all Go
literal tokens including Go identifiers. Comments will be skipped.  


includes Ints and hexadecimal floats  

```haxe
final scanIdents:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```



Predefined mode bits to control recognition of tokens. For instance,
to configure a Scanner such that it only recognizes \(Go\) identifiers,
integers, and skips comments, set the Scanner's Mode field to:  

```
	ScanIdents | ScanInts | SkipComments
```

With the exceptions of comments, which are skipped if SkipComments is
set, unrecognized tokens are not ignored. Instead, the scanner simply
returns the respective individual characters \(or possibly sub\-tokens\).
For instance, if the mode is ScanIdents \(not ScanStrings\), the string
"foo" is scanned as the token sequence '"' Ident '"'.  


Use GoTokens to configure the Scanner such that it accepts all Go
literal tokens including Go identifiers. Comments will be skipped.  

```haxe
final scanInts:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```



Predefined mode bits to control recognition of tokens. For instance,
to configure a Scanner such that it only recognizes \(Go\) identifiers,
integers, and skips comments, set the Scanner's Mode field to:  

```
	ScanIdents | ScanInts | SkipComments
```

With the exceptions of comments, which are skipped if SkipComments is
set, unrecognized tokens are not ignored. Instead, the scanner simply
returns the respective individual characters \(or possibly sub\-tokens\).
For instance, if the mode is ScanIdents \(not ScanStrings\), the string
"foo" is scanned as the token sequence '"' Ident '"'.  


Use GoTokens to configure the Scanner such that it accepts all Go
literal tokens including Go identifiers. Comments will be skipped.  

```haxe
final scanRawStrings:stdgo.GoUInt64 = ((128i64 : stdgo.GoUInt64))
```



Predefined mode bits to control recognition of tokens. For instance,
to configure a Scanner such that it only recognizes \(Go\) identifiers,
integers, and skips comments, set the Scanner's Mode field to:  

```
	ScanIdents | ScanInts | SkipComments
```

With the exceptions of comments, which are skipped if SkipComments is
set, unrecognized tokens are not ignored. Instead, the scanner simply
returns the respective individual characters \(or possibly sub\-tokens\).
For instance, if the mode is ScanIdents \(not ScanStrings\), the string
"foo" is scanned as the token sequence '"' Ident '"'.  


Use GoTokens to configure the Scanner such that it accepts all Go
literal tokens including Go identifiers. Comments will be skipped.  

```haxe
final scanStrings:stdgo.GoUInt64 = ((64i64 : stdgo.GoUInt64))
```



Predefined mode bits to control recognition of tokens. For instance,
to configure a Scanner such that it only recognizes \(Go\) identifiers,
integers, and skips comments, set the Scanner's Mode field to:  

```
	ScanIdents | ScanInts | SkipComments
```

With the exceptions of comments, which are skipped if SkipComments is
set, unrecognized tokens are not ignored. Instead, the scanner simply
returns the respective individual characters \(or possibly sub\-tokens\).
For instance, if the mode is ScanIdents \(not ScanStrings\), the string
"foo" is scanned as the token sequence '"' Ident '"'.  


Use GoTokens to configure the Scanner such that it accepts all Go
literal tokens including Go identifiers. Comments will be skipped.  

```haxe
final skipComments:stdgo.GoUInt64 = ((512i64 : stdgo.GoUInt64))
```



Predefined mode bits to control recognition of tokens. For instance,
to configure a Scanner such that it only recognizes \(Go\) identifiers,
integers, and skips comments, set the Scanner's Mode field to:  

```
	ScanIdents | ScanInts | SkipComments
```

With the exceptions of comments, which are skipped if SkipComments is
set, unrecognized tokens are not ignored. Instead, the scanner simply
returns the respective individual characters \(or possibly sub\-tokens\).
For instance, if the mode is ScanIdents \(not ScanStrings\), the string
"foo" is scanned as the token sequence '"' Ident '"'.  


Use GoTokens to configure the Scanner such that it accepts all Go
literal tokens including Go identifiers. Comments will be skipped.  


if set with ScanComments, comments become white space  

```haxe
final string:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```



The result of Scan is one of these tokens or a Unicode character.  

# Variables


```haxe
import stdgo.text.scanner.Scanner
```


```haxe
var _f100:stdgo.GoString
```


```haxe
var _segmentList:stdgo.Slice<stdgo.Slice<stdgo.GoString>>
```


```haxe
var _tokenList:stdgo.Slice<stdgo.text.scanner.T_token>
```


```haxe
var _tokenString:stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>
```


# Functions


```haxe
import stdgo.text.scanner.Scanner
```


## function \_checkNextPos


```haxe
function _checkNextPos(_t:stdgo.Ref<stdgo.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L1055>)


## function \_checkPos


```haxe
function _checkPos(_t:stdgo.Ref<stdgo.testing.T_>, _got:stdgo.text.scanner.Position, _want:stdgo.text.scanner.Position):Void
```


[\(view code\)](<./Scanner.hx#L1050>)


## function \_checkScanPos


```haxe
function _checkScanPos(_t:stdgo.Ref<stdgo.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _offset:stdgo.GoInt, _line:stdgo.GoInt, _column:stdgo.GoInt, _char:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L1065>)


## function \_checkTok


```haxe
function _checkTok(_t:stdgo.Ref<stdgo.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _line:stdgo.GoInt, _got:stdgo.GoRune, _want:stdgo.GoRune, _text:stdgo.GoString):Void
```


[\(view code\)](<./Scanner.hx#L770>)


## function \_checkTokErr


```haxe
function _checkTokErr(_t:stdgo.Ref<stdgo.testing.T_>, _s:stdgo.Ref<stdgo.text.scanner.Scanner>, _line:stdgo.GoInt, _want:stdgo.GoRune, _text:stdgo.GoString):Void
```


[\(view code\)](<./Scanner.hx#L787>)


## function \_countNewlines


```haxe
function _countNewlines(_s:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Scanner.hx#L794>)


## function \_digitVal


```haxe
function _digitVal(_ch:stdgo.GoRune):stdgo.GoInt
```


[\(view code\)](<./Scanner.hx#L735>)


## function \_extractInts


```haxe
function _extractInts(_t:stdgo.GoString, _mode:stdgo.GoUInt):stdgo.GoString
```


[\(view code\)](<./Scanner.hx#L1338>)


## function \_invalidSep


```haxe
function _invalidSep(_x:stdgo.GoString):stdgo.GoInt
```



invalidSep returns the index of the first invalid separator in x, or \-1.  

[\(view code\)](<./Scanner.hx#L703>)


## function \_isDecimal


```haxe
function _isDecimal(_ch:stdgo.GoRune):Bool
```


[\(view code\)](<./Scanner.hx#L680>)


## function \_isHex


```haxe
function _isHex(_ch:stdgo.GoRune):Bool
```


[\(view code\)](<./Scanner.hx#L683>)


## function \_litname


```haxe
function _litname(_prefix:stdgo.GoRune):stdgo.GoString
```


[\(view code\)](<./Scanner.hx#L686>)


## function \_lower


```haxe
function _lower(_ch:stdgo.GoRune):stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L677>)


## function \_makeSource


```haxe
function _makeSource(_pattern:stdgo.GoString):stdgo.Ref<stdgo.bytes.Buffer>
```


[\(view code\)](<./Scanner.hx#L763>)


## function \_readRuneSegments


```haxe
function _readRuneSegments(_t:stdgo.Ref<stdgo.testing.T_>, _segments:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Scanner.hx#L743>)


## function \_testError


```haxe
function _testError(_t:stdgo.Ref<stdgo.testing.T_>, _src:stdgo.GoString, _pos:stdgo.GoString, _msg:stdgo.GoString, _tok:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L969>)


## function \_testScan


```haxe
function _testScan(_t:stdgo.Ref<stdgo.testing.T_>, _mode:stdgo.GoUInt):Void
```


[\(view code\)](<./Scanner.hx#L803>)


## function \_testScanSelectedMode


```haxe
function _testScanSelectedMode(_t:stdgo.Ref<stdgo.testing.T_>, _mode:stdgo.GoUInt, _class:stdgo.GoRune):Void
```


[\(view code\)](<./Scanner.hx#L885>)


## function testError


```haxe
function testError(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L997>)


## function testIOError


```haxe
function testIOError(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L1028>)


## function testInvalidExponent


```haxe
function testInvalidExponent(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L821>)


## function testIssue29723


```haxe
function testIssue29723(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L1186>)


## function testIssue30320


```haxe
function testIssue30320(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L1330>)


## function testIssue50909


```haxe
function testIssue50909(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L1360>)


## function testNext


```haxe
function testNext(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L758>)


## function testNextEOFHandling


```haxe
function testNextEOFHandling(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L1156>)


## function testNumbers


```haxe
function testNumbers(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L1200>)


## function testPos


```haxe
function testPos(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L1079>)


## function testPosition


```haxe
function testPosition(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L841>)


## function testScan


```haxe
function testScan(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L817>)


## function testScanCustomIdent


```haxe
function testScanCustomIdent(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L908>)


## function testScanEOFHandling


```haxe
function testScanEOFHandling(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L1171>)


## function testScanNext


```haxe
function testScanNext(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L926>)


## function testScanSelectedMask


```haxe
function testScanSelectedMask(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L900>)


## function testScanWhitespace


```haxe
function testScanWhitespace(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L949>)


## function testScanZeroMode


```haxe
function testScanZeroMode(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Scanner.hx#L865>)


## function tokenString


```haxe
function tokenString(_tok:stdgo.GoRune):stdgo.GoString
```



TokenString returns a printable string for a token or Unicode character.  

[\(view code\)](<./Scanner.hx#L668>)


# Classes


```haxe
import stdgo.text.scanner.*
```


## class Position



Position is a value that represents a source position.
A position is valid if Line \> 0.  

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


[\(view code\)](<./Scanner.hx#L445>)


### Position function isValid


```haxe
function isValid():Bool
```



IsValid reports whether the position is valid.  

[\(view code\)](<./Scanner.hx#L1411>)


### Position function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Scanner.hx#L1396>)


## class Scanner



A Scanner implements reading of Unicode characters and tokens from an io.Reader.  

```haxe
var _ch:stdgo.GoInt32
```



One character look\-ahead  

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
var _src:stdgo.io.Reader
```



Input  

```haxe
var _srcBuf:stdgo.GoArray<stdgo.GoUInt8>
```



Source buffer  

```haxe
var _srcBufOffset:stdgo.GoInt
```



Source position  

```haxe
var _srcEnd:stdgo.GoInt
```


```haxe
var _srcPos:stdgo.GoInt
```


```haxe
var _tokBuf:stdgo.bytes.Buffer
```



Token text buffer
Typically, token text is stored completely in srcBuf, but in general
the token text's head may be buffered in tokBuf while the token text's
tail is stored in srcBuf.  

```haxe
var _tokEnd:stdgo.GoInt
```


```haxe
var _tokPos:stdgo.GoInt
```


```haxe
var errorCount:stdgo.GoInt
```



ErrorCount is incremented by one for each error encountered.  

```haxe
var mode:stdgo.GoUInt
```



The Mode field controls which tokens are recognized. For instance,
to recognize Ints, set the ScanInts bit in Mode. The field may be
changed at any time.  

```haxe
var position:stdgo.text.scanner.Position
```



Start position of most recently scanned token; set by Scan.
Calling Init or Next invalidates the position \(Line == 0\).
The Filename field is always left untouched by the Scanner.
If an error is reported \(via Error\) and Position is invalid,
the scanner is not inside a token. Call Pos to obtain an error
position in that case, or to obtain the position immediately
after the most recently scanned token.  

```haxe
var whitespace:stdgo.GoUInt64
```



The Whitespace field controls which characters are recognized
as white space. To recognize a character ch \<= ' ' as white space,
set the ch'th bit in Whitespace \(the Scanner's behavior is undefined
for values ch \> ' '\). The field may be changed at any time.  

### Scanner function error


```haxe
function error(:stdgo.Ref<stdgo.text.scanner.Scanner>, :stdgo.GoString):Void
```



Error is called for each error encountered. If no Error
function is set, the error is reported to os.Stderr.  

### Scanner function isIdentRune


```haxe
function isIdentRune(:stdgo.GoInt32, :stdgo.GoInt):Bool
```



IsIdentRune is a predicate controlling the characters accepted
as the ith rune in an identifier. The set of valid characters
must not intersect with the set of white space characters.
If no IsIdentRune function is set, regular Go identifiers are
accepted instead. The field may be changed at any time.  

### Scanner function isValid


```haxe
function isValid():Bool
```


[\(view code\)](<./Scanner.hx#L557>)


### Scanner function new


```haxe
function new(?_src:Null<stdgo.io.Reader>, ?_srcBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_srcPos:stdgo.GoInt, ?_srcEnd:stdgo.GoInt, ?_srcBufOffset:stdgo.GoInt, ?_line:stdgo.GoInt, ?_column:stdgo.GoInt, ?_lastLineLen:stdgo.GoInt, ?_lastCharLen:stdgo.GoInt, ?_tokBuf:stdgo.bytes.Buffer, ?_tokPos:stdgo.GoInt, ?_tokEnd:stdgo.GoInt, ?_ch:stdgo.GoInt32, ?error:(:stdgo.Ref<stdgo.text.scanner.Scanner>, :stdgo.GoString):Void, ?errorCount:stdgo.GoInt, ?mode:stdgo.GoUInt, ?whitespace:stdgo.GoUInt64, ?isIdentRune:(:stdgo.GoInt32, :stdgo.GoInt):Bool, ?position:stdgo.text.scanner.Position):Void
```


[\(view code\)](<./Scanner.hx#L534>)


### Scanner function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Scanner.hx#L559>)


### Scanner function \_digits


```haxe
function _digits( _ch0:stdgo.GoRune, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoRune>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```



digits accepts the sequence \{ digit | '\_' \} starting with ch0.
If base \<= 10, digits accepts any decimal digit but records
the first invalid digit \>= base in \*invalid if \*invalid == 0.
digits returns the first rune that is not part of the sequence
anymore, and a bitset describing whether the sequence contained
digits \(bit 0 is set\), or separators '\_' \(bit 1 is set\).  

[\(view code\)](<./Scanner.hx#L1906>)


### Scanner function \_error


```haxe
function _error( _msg:stdgo.GoString):Void
```


[\(view code\)](<./Scanner.hx#L1961>)


### Scanner function \_errorf


```haxe
function _errorf( _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Scanner.hx#L1955>)


### Scanner function \_isIdentRune


```haxe
function _isIdentRune( _ch:stdgo.GoRune, _i:stdgo.GoInt):Bool
```


[\(view code\)](<./Scanner.hx#L1947>)


### Scanner function \_next


```haxe
function _next():stdgo.GoRune
```



next reads and returns the next Unicode character. It is designed such
that only a minimal amount of work needs to be done in the common ASCII
case \(one test to check for both ASCII and end\-of\-buffer, and one test
to check for newlines\).  

[\(view code\)](<./Scanner.hx#L2017>)


### Scanner function \_scanChar


```haxe
function _scanChar():Void
```


[\(view code\)](<./Scanner.hx#L1710>)


### Scanner function \_scanComment


```haxe
function _scanComment( _ch:stdgo.GoRune):stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L1685>)


### Scanner function \_scanDigits


```haxe
function _scanDigits( _ch:stdgo.GoRune, _base:stdgo.GoInt, _n:stdgo.GoInt):stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L1770>)


### Scanner function \_scanEscape


```haxe
function _scanEscape( _quote:stdgo.GoRune):stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L1748>)


### Scanner function \_scanIdentifier


```haxe
function _scanIdentifier():stdgo.GoRune
```


[\(view code\)](<./Scanner.hx#L1935>)


### Scanner function \_scanNumber


```haxe
function _scanNumber( _ch:stdgo.GoRune, _seenDot:Bool):{
	_1:stdgo.GoRune;
	_0:stdgo.GoRune;
}
```


[\(view code\)](<./Scanner.hx#L1782>)


### Scanner function \_scanRawString


```haxe
function _scanRawString():Void
```


[\(view code\)](<./Scanner.hx#L1717>)


### Scanner function \_scanString


```haxe
function _scanString( _quote:stdgo.GoRune):stdgo.GoInt
```


[\(view code\)](<./Scanner.hx#L1729>)


### Scanner function init


```haxe
function init( _src:stdgo.io.Reader):stdgo.Ref<stdgo.text.scanner.Scanner>
```



Init initializes a Scanner with a new source and returns s.
Error is set to nil, ErrorCount is set to 0, Mode is set to GoTokens,
and Whitespace is set to GoWhitespace.  

[\(view code\)](<./Scanner.hx#L2084>)


### Scanner function isValid


```haxe
function isValid():Bool
```


[\(view code\)](<./Scanner.hx#L2107>)


### Scanner function next


```haxe
function next():stdgo.GoRune
```



Next reads and returns the next Unicode character.
It returns EOF at the end of the source. It reports
a read error by calling s.Error, if not nil; otherwise
it prints an error message to os.Stderr. Next does not
update the Scanner's Position field; use Pos\(\) to
get the current position.  

[\(view code\)](<./Scanner.hx#L2000>)


### Scanner function peek


```haxe
function peek():stdgo.GoRune
```



Peek returns the next Unicode character in the source without advancing
the scanner. It returns EOF if the scanner's position is at the last
character of the source.  

[\(view code\)](<./Scanner.hx#L1981>)


### Scanner function pos


```haxe
function pos():stdgo.text.scanner.Position
```



Pos returns the position of the character immediately after
the character or token returned by the last call to Next or Scan.
Use the Scanner's Position field for the start position of the most
recently scanned token.  

[\(view code\)](<./Scanner.hx#L1544>)


### Scanner function scan


```haxe
function scan():stdgo.GoRune
```



Scan reads the next token or Unicode character from source and returns it.
It only recognizes tokens t for which the respective Mode bit \(1\<\<\-t\) is set.
It returns EOF at the end of the source. It reports scanner errors \(read and
token errors\) by calling s.Error, if not nil; otherwise it prints an error
message to os.Stderr.  

[\(view code\)](<./Scanner.hx#L1569>)


### Scanner function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Scanner.hx#L2105>)


### Scanner function tokenText


```haxe
function tokenText():stdgo.GoString
```



TokenText returns the string corresponding to the most recently scanned token.
Valid after calling Scan and in calls of Scanner.Error.  

[\(view code\)](<./Scanner.hx#L1522>)


## class StringReader



A StringReader delivers its data one string segment at a time via Read.  

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


[\(view code\)](<./Scanner.hx#L591>)


### StringReader function read


```haxe
function read( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Scanner.hx#L2122>)


# Typedefs


```haxe
import stdgo.text.scanner.*
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



# Module: `stdgo.text.scanner`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Scanner](<#class-scanner>)

  - [`function testError(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testerror>)

  - [`function testIOError(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testioerror>)

  - [`function testInvalidExponent(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testinvalidexponent>)

  - [`function testIssue29723(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testissue29723>)

  - [`function testIssue30320(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testissue30320>)

  - [`function testIssue50909(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testissue50909>)

  - [`function testNext(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testnext>)

  - [`function testNextEOFHandling(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testnexteofhandling>)

  - [`function testNumbers(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testnumbers>)

  - [`function testPos(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testpos>)

  - [`function testPosition(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testposition>)

  - [`function testScan(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testscan>)

  - [`function testScanCustomIdent(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testscancustomident>)

  - [`function testScanEOFHandling(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testscaneofhandling>)

  - [`function testScanNext(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testscannext>)

  - [`function testScanSelectedMask(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testscanselectedmask>)

  - [`function testScanWhitespace(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testscanwhitespace>)

  - [`function testScanZeroMode(_t:stdgo._internal.testing.T_):Void`](<#scanner-function-testscanzeromode>)

  - [`function tokenString(_tok:Int):String`](<#scanner-function-tokenstring>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_countReader](<#typedef-t_countreader>)

- [abstract Position](<#abstract-position>)

- [abstract Scanner\_](<#abstract-scanner_>)

- [abstract StringReader](<#abstract-stringreader>)

- [abstract T\_token](<#abstract-t_token>)

- [abstract T\_errReader](<#abstract-t_errreader>)

# Constants


```haxe
import stdgo.text.scanner.Scanner
```


```haxe
final char:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner.char
```


```haxe
final comment:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner.comment
```


```haxe
final eof:haxe.UInt64 = stdgo._internal.text.scanner.Scanner.eof
```


```haxe
final float_:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner.float_
```


```haxe
final goTokens:haxe.UInt64 = stdgo._internal.text.scanner.Scanner.goTokens
```


```haxe
final goWhitespace:haxe.UInt64 = stdgo._internal.text.scanner.Scanner.goWhitespace
```


```haxe
final ident:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner.ident
```


```haxe
final int_:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner.int_
```


```haxe
final rawString:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner.rawString
```


```haxe
final scanChars:haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanChars
```


```haxe
final scanComments:haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanComments
```


```haxe
final scanFloats:haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanFloats
```


```haxe
final scanIdents:haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanIdents
```


```haxe
final scanInts:haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanInts
```


```haxe
final scanRawStrings:haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanRawStrings
```


```haxe
final scanStrings:haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanStrings
```


```haxe
final skipComments:haxe.UInt64 = stdgo._internal.text.scanner.Scanner.skipComments
```


```haxe
final string:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner.string
```


# Classes


```haxe
import stdgo.text.scanner.*
```


## class Scanner


```
Package scanner provides a scanner and tokenizer for UTF-8-encoded text.
    It takes an io.Reader providing the source, which then can be tokenized
    through repeated calls to the Scan function. For compatibility with
    existing tools, the NUL character is not allowed. If the first character
    in the source is a UTF-8 encoded byte order mark (BOM), it is discarded.
```

By default, a Scanner skips white space and Go comments and recognizes all
literals as defined by the Go language specification. It may be
customized to recognize only a subset of those literals and to recognize
different identifier and white space characters.  

### Scanner function testError


```haxe
function testError(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L387>)


### Scanner function testIOError


```haxe
function testIOError(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L390>)


### Scanner function testInvalidExponent


```haxe
function testInvalidExponent(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L366>)


### Scanner function testIssue29723


```haxe
function testIssue29723(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L402>)


### Scanner function testIssue30320


```haxe
function testIssue30320(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L408>)


### Scanner function testIssue50909


```haxe
function testIssue50909(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L411>)


### Scanner function testNext


```haxe
function testNext(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L360>)


### Scanner function testNextEOFHandling


```haxe
function testNextEOFHandling(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L396>)


### Scanner function testNumbers


```haxe
function testNumbers(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L405>)


### Scanner function testPos


```haxe
function testPos(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L393>)


### Scanner function testPosition


```haxe
function testPosition(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L369>)


### Scanner function testScan


```haxe
function testScan(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L363>)


### Scanner function testScanCustomIdent


```haxe
function testScanCustomIdent(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L378>)


### Scanner function testScanEOFHandling


```haxe
function testScanEOFHandling(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L399>)


### Scanner function testScanNext


```haxe
function testScanNext(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L381>)


### Scanner function testScanSelectedMask


```haxe
function testScanSelectedMask(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L375>)


### Scanner function testScanWhitespace


```haxe
function testScanWhitespace(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L384>)


### Scanner function testScanZeroMode


```haxe
function testScanZeroMode(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L372>)


### Scanner function tokenString


```haxe
function tokenString(_tok:Int):String
```



TokenString returns a printable string for a token or Unicode character.  

[\(view code\)](<./Scanner.hx#L357>)


# Typedefs


```haxe
import stdgo.text.scanner.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.text.scanner.T__struct_0;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.text.scanner.T__struct_1;
```


## typedef T\_countReader


```haxe
typedef T_countReader = stdgo._internal.text.scanner.T_countReader;
```


# Abstracts


## abstract Position


[\(view file containing code\)](<./Scanner.hx>)


## abstract Scanner\_


[\(view file containing code\)](<./Scanner.hx>)


## abstract StringReader


[\(view file containing code\)](<./Scanner.hx>)


## abstract T\_token


[\(view file containing code\)](<./Scanner.hx>)


## abstract T\_errReader


[\(view file containing code\)](<./Scanner.hx>)



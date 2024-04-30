# Module: `stdgo.text.scanner`

[(view library index)](../../stdgo.md)


# Overview


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

# Index


- [Constants](<#constants>)

- [`function testError(t:stdgo._internal.testing.T_):Void`](<#function-testerror>)

- [`function testIOError(t:stdgo._internal.testing.T_):Void`](<#function-testioerror>)

- [`function testInvalidExponent(t:stdgo._internal.testing.T_):Void`](<#function-testinvalidexponent>)

- [`function testIssue29723(t:stdgo._internal.testing.T_):Void`](<#function-testissue29723>)

- [`function testIssue30320(t:stdgo._internal.testing.T_):Void`](<#function-testissue30320>)

- [`function testIssue50909(t:stdgo._internal.testing.T_):Void`](<#function-testissue50909>)

- [`function testNext(t:stdgo._internal.testing.T_):Void`](<#function-testnext>)

- [`function testNextEOFHandling(t:stdgo._internal.testing.T_):Void`](<#function-testnexteofhandling>)

- [`function testNumbers(t:stdgo._internal.testing.T_):Void`](<#function-testnumbers>)

- [`function testPos(t:stdgo._internal.testing.T_):Void`](<#function-testpos>)

- [`function testPosition(t:stdgo._internal.testing.T_):Void`](<#function-testposition>)

- [`function testScan(t:stdgo._internal.testing.T_):Void`](<#function-testscan>)

- [`function testScanCustomIdent(t:stdgo._internal.testing.T_):Void`](<#function-testscancustomident>)

- [`function testScanEOFHandling(t:stdgo._internal.testing.T_):Void`](<#function-testscaneofhandling>)

- [`function testScanNext(t:stdgo._internal.testing.T_):Void`](<#function-testscannext>)

- [`function testScanSelectedMask(t:stdgo._internal.testing.T_):Void`](<#function-testscanselectedmask>)

- [`function testScanWhitespace(t:stdgo._internal.testing.T_):Void`](<#function-testscanwhitespace>)

- [`function testScanZeroMode(t:stdgo._internal.testing.T_):Void`](<#function-testscanzeromode>)

- [`function tokenString(tok:Int):String`](<#function-tokenstring>)

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


# Functions


```haxe
import stdgo.text.scanner.Scanner
```


## function testError


```haxe
function testError(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L58>)


## function testIOError


```haxe
function testIOError(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L59>)


## function testInvalidExponent


```haxe
function testInvalidExponent(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L51>)


## function testIssue29723


```haxe
function testIssue29723(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L63>)


## function testIssue30320


```haxe
function testIssue30320(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L65>)


## function testIssue50909


```haxe
function testIssue50909(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L66>)


## function testNext


```haxe
function testNext(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L49>)


## function testNextEOFHandling


```haxe
function testNextEOFHandling(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L61>)


## function testNumbers


```haxe
function testNumbers(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L64>)


## function testPos


```haxe
function testPos(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L60>)


## function testPosition


```haxe
function testPosition(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L52>)


## function testScan


```haxe
function testScan(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L50>)


## function testScanCustomIdent


```haxe
function testScanCustomIdent(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L55>)


## function testScanEOFHandling


```haxe
function testScanEOFHandling(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L62>)


## function testScanNext


```haxe
function testScanNext(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L56>)


## function testScanSelectedMask


```haxe
function testScanSelectedMask(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L54>)


## function testScanWhitespace


```haxe
function testScanWhitespace(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L57>)


## function testScanZeroMode


```haxe
function testScanZeroMode(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L53>)


## function tokenString


```haxe
function tokenString(tok:Int):String
```



TokenString returns a printable string for a token or Unicode character.  

[\(view code\)](<./Scanner.hx#L48>)


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



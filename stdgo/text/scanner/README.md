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
final char:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner_char.char
```


```haxe
final comment:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner_comment.comment
```


```haxe
final eof:haxe.UInt64 = stdgo._internal.text.scanner.Scanner_eof.eof
```


```haxe
final float_:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner_float_.float_
```


```haxe
final goTokens:haxe.UInt64 = stdgo._internal.text.scanner.Scanner_goTokens.goTokens
```


```haxe
final goWhitespace:haxe.UInt64 = stdgo._internal.text.scanner.Scanner_goWhitespace.goWhitespace
```


```haxe
final ident:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner_ident.ident
```


```haxe
final int_:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner_int_.int_
```


```haxe
final rawString:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner_rawString.rawString
```


```haxe
final scanChars:haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanChars.scanChars
```


```haxe
final scanComments:haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanComments.scanComments
```


```haxe
final scanFloats:haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanFloats.scanFloats
```


```haxe
final scanIdents:haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanIdents.scanIdents
```


```haxe
final scanInts:haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanInts.scanInts
```


```haxe
final scanRawStrings:haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanRawStrings.scanRawStrings
```


```haxe
final scanStrings:haxe.UInt64 = stdgo._internal.text.scanner.Scanner_scanStrings.scanStrings
```


```haxe
final skipComments:haxe.UInt64 = stdgo._internal.text.scanner.Scanner_skipComments.skipComments
```


```haxe
final string:stdgo.GoUInt64 = stdgo._internal.text.scanner.Scanner_string.string
```


# Classes


```haxe
import stdgo.text.scanner.*
```


## class Scanner


```
{
    	ch_4535339 = s.Peek()
    	s.tokPos = -1
    	s.Line = 0
    	gotoNext = 4535413
    	_ = gotoNext == 4535413
    	_ = 0
    	redoBreak = false
    	gotoNext = 4535441
    	_ = gotoNext == 4535441
    	if !redoBreak && (s.Whitespace&(1<<uint(ch_4535339)) != 0) {
    		gotoNext = 4535477
    		_ = gotoNext == 4535477
    		ch_4535339 = s.next()
    		gotoNext = 4535441
    	} else {
    		gotoNext = 4535532
}
    	_ = gotoNext == 4535532
    	s.tokBuf.Reset()
    	s.tokPos = s.srcPos - s.lastCharLen
    	s.Offset = s.srcBufOffset + s.tokPos
    	if s.column > 0 {
    		gotoNext = 4535729
    		_ = gotoNext == 4535729
    		s.Line = s.line
    		s.Column = s.column
    		gotoNext = 4536038
    	} else {
    		gotoNext = 4535827
    		_ = gotoNext == 4535827
    		s.Line = s.line - 1
    		s.Column = s.lastLineLen
    		gotoNext = 4536038
}
    	_ = gotoNext == 4536038
    	tok_4536038 = ch_4535339
    	_ = 0
    	gotoNext = 4536049
    	_ = gotoNext == 4536049
    	switch {
    	case s.isIdentRune(ch_4535339, 0):
    		gotoNext = 4536059
    		_ = gotoNext == 4536059
    		if s.Mode&4 != 0 {
    			gotoNext = 4536114
    			_ = gotoNext == 4536114
    			tok_4536038 = -2
    			ch_4535339 = s.scanIdentifier()
    			gotoNext = 4537127
    		} else {
    			gotoNext = 4536167
    			_ = gotoNext == 4536167
    			ch_4535339 = s.next()
    			gotoNext = 4537127
}
    		gotoNext = 4537127
    	case isDecimal(ch_4535339):
    		gotoNext = 4536191
    		_ = gotoNext == 4536191
    		if s.Mode&24 != 0 {
    			gotoNext = 4536250
    			_ = gotoNext == 4536250
    			tok_4536038, ch_4535339 = s.scanNumber(ch_4535339, false)
    			gotoNext = 4537127
    		} else {
    			gotoNext = 4536298
    			_ = gotoNext == 4536298
    			ch_4535339 = s.next()
    			gotoNext = 4537127
}
    		gotoNext = 4537127
    	default:
    		gotoNext = 4536322
    		_ = gotoNext == 4536322
    		_ = 0
    		gotoNext = 4536333
    		_ = gotoNext == 4536333
    		switch ch_4535339 {
    		case -1:
    			gotoNext = 4536347
    			_ = gotoNext == 4536347
    			gotoNext = 4537127
    			gotoNext = 4537127
    		case 34:
    			gotoNext = 4536368
    			_ = gotoNext == 4536368
    			if s.Mode&64 != 0 {
    				gotoNext = 4536408
    				_ = gotoNext == 4536408
    				s.scanString(34)
    				tok_4536038 = -6
    				gotoNext = 4536457
    			} else {
    				gotoNext = 4536457
}
    			_ = gotoNext == 4536457
    			ch_4535339 = s.next()
    			gotoNext = 4537127
    		case 39:
    			gotoNext = 4536473
    			_ = gotoNext == 4536473
    			if s.Mode&32 != 0 {
    				gotoNext = 4536512
    				_ = gotoNext == 4536512
    				s.scanChar()
    				tok_4536038 = -5
    				gotoNext = 4536554
    			} else {
    				gotoNext = 4536554
}
    			_ = gotoNext == 4536554
    			ch_4535339 = s.next()
    			gotoNext = 4537127
    		case 46:
    			gotoNext = 4536570
    			_ = gotoNext == 4536570
    			ch_4535339 = s.next()
    			if isDecimal(ch_4535339) && s.Mode&16 != 0 {
    				gotoNext = 4536643
    				_ = gotoNext == 4536643
    				tok_4536038, ch_4535339 = s.scanNumber(ch_4535339, true)
    				gotoNext = 4537127
    			} else {
    				gotoNext = 4537127
}
    			gotoNext = 4537127
    		case 47:
    			gotoNext = 4536689
    			_ = gotoNext == 4536689
    			ch_4535339 = s.next()
    			if (ch_4535339 == 47 || ch_4535339 == 42) && s.Mode&256 != 0 {
    				gotoNext = 4536775
    				_ = gotoNext == 4536775
    				if s.Mode&512 != 0 {
    					gotoNext = 4536809
    					_ = gotoNext == 4536809
    					s.tokPos = -1
    					ch_4535339 = s.scanComment(ch_4535339)
    					gotoNext = 4535413
    					gotoNext = 4536911
    				} else {
    					gotoNext = 4536911
}
    				_ = gotoNext == 4536911
    				ch_4535339 = s.scanComment(ch_4535339)
    				tok_4536038 = -8
    				gotoNext = 4537127
    			} else {
    				gotoNext = 4537127
}
    			gotoNext = 4537127
    		case 96:
    			gotoNext = 4536959
    			_ = gotoNext == 4536959
    			if s.Mode&128 != 0 {
    				gotoNext = 4537002
    				_ = gotoNext == 4537002
    				s.scanRawString()
    				tok_4536038 = -7
    				gotoNext = 4537054
    			} else {
    				gotoNext = 4537054
}
    			_ = gotoNext == 4537054
    			ch_4535339 = s.next()
    			gotoNext = 4537127
    		default:
    			gotoNext = 4537070
    			_ = gotoNext == 4537070
    			ch_4535339 = s.next()
    			gotoNext = 4537127
}
    		gotoNext = 4537127
}
    	_ = gotoNext == 4537127
    	s.tokEnd = s.srcPos - s.lastCharLen
    	s.ch = ch_4535339
    	return tok_4536038
    	gotoNext = -1
    }
```
### Scanner function testError


```haxe
function testError(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L558>)


### Scanner function testIOError


```haxe
function testIOError(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L561>)


### Scanner function testInvalidExponent


```haxe
function testInvalidExponent(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L537>)


### Scanner function testIssue29723


```haxe
function testIssue29723(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L573>)


### Scanner function testIssue30320


```haxe
function testIssue30320(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L579>)


### Scanner function testIssue50909


```haxe
function testIssue50909(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L582>)


### Scanner function testNext


```haxe
function testNext(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L531>)


### Scanner function testNextEOFHandling


```haxe
function testNextEOFHandling(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L567>)


### Scanner function testNumbers


```haxe
function testNumbers(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L576>)


### Scanner function testPos


```haxe
function testPos(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L564>)


### Scanner function testPosition


```haxe
function testPosition(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L540>)


### Scanner function testScan


```haxe
function testScan(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L534>)


### Scanner function testScanCustomIdent


```haxe
function testScanCustomIdent(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L549>)


### Scanner function testScanEOFHandling


```haxe
function testScanEOFHandling(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L570>)


### Scanner function testScanNext


```haxe
function testScanNext(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L552>)


### Scanner function testScanSelectedMask


```haxe
function testScanSelectedMask(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L546>)


### Scanner function testScanWhitespace


```haxe
function testScanWhitespace(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L555>)


### Scanner function testScanZeroMode


```haxe
function testScanZeroMode(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Scanner.hx#L543>)


### Scanner function tokenString


```haxe
function tokenString(_tok:Int):String
```



TokenString returns a printable string for a token or Unicode character.  

[\(view code\)](<./Scanner.hx#L528>)


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



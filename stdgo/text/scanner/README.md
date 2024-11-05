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
    	ch_4424438 = s.Peek()
    	s.tokPos = -1
    	s.Line = 0
    	gotoNext = 4424512
    	_ = gotoNext == 4424512
    	_ = 0
    	redoBreak = false
    	gotoNext = 4424540
    	_ = gotoNext == 4424540
    	if !redoBreak && (s.Whitespace&(1<<uint(ch_4424438)) != 0) {
    		gotoNext = 4424576
    		_ = gotoNext == 4424576
    		ch_4424438 = s.next()
    		gotoNext = 4424540
    	} else {
    		gotoNext = 4424631
}
    	_ = gotoNext == 4424631
    	s.tokBuf.Reset()
    	s.tokPos = s.srcPos - s.lastCharLen
    	s.Offset = s.srcBufOffset + s.tokPos
    	if s.column > 0 {
    		gotoNext = 4424828
    		_ = gotoNext == 4424828
    		s.Line = s.line
    		s.Column = s.column
    		gotoNext = 4425137
    	} else {
    		gotoNext = 4424926
    		_ = gotoNext == 4424926
    		s.Line = s.line - 1
    		s.Column = s.lastLineLen
    		gotoNext = 4425137
}
    	_ = gotoNext == 4425137
    	tok_4425137 = ch_4424438
    	_ = 0
    	gotoNext = 4425148
    	_ = gotoNext == 4425148
    	switch {
    	case s.isIdentRune(ch_4424438, 0):
    		gotoNext = 4425158
    		_ = gotoNext == 4425158
    		if s.Mode&4 != 0 {
    			gotoNext = 4425213
    			_ = gotoNext == 4425213
    			tok_4425137 = -2
    			ch_4424438 = s.scanIdentifier()
    			gotoNext = 4426226
    		} else {
    			gotoNext = 4425266
    			_ = gotoNext == 4425266
    			ch_4424438 = s.next()
    			gotoNext = 4426226
}
    		gotoNext = 4426226
    	case isDecimal(ch_4424438):
    		gotoNext = 4425290
    		_ = gotoNext == 4425290
    		if s.Mode&24 != 0 {
    			gotoNext = 4425349
    			_ = gotoNext == 4425349
    			tok_4425137, ch_4424438 = s.scanNumber(ch_4424438, false)
    			gotoNext = 4426226
    		} else {
    			gotoNext = 4425397
    			_ = gotoNext == 4425397
    			ch_4424438 = s.next()
    			gotoNext = 4426226
}
    		gotoNext = 4426226
    	default:
    		gotoNext = 4425421
    		_ = gotoNext == 4425421
    		_ = 0
    		gotoNext = 4425432
    		_ = gotoNext == 4425432
    		switch ch_4424438 {
    		case -1:
    			gotoNext = 4425446
    			_ = gotoNext == 4425446
    			gotoNext = 4426226
    			gotoNext = 4426226
    		case 34:
    			gotoNext = 4425467
    			_ = gotoNext == 4425467
    			if s.Mode&64 != 0 {
    				gotoNext = 4425507
    				_ = gotoNext == 4425507
    				s.scanString(34)
    				tok_4425137 = -6
    				gotoNext = 4425556
    			} else {
    				gotoNext = 4425556
}
    			_ = gotoNext == 4425556
    			ch_4424438 = s.next()
    			gotoNext = 4426226
    		case 39:
    			gotoNext = 4425572
    			_ = gotoNext == 4425572
    			if s.Mode&32 != 0 {
    				gotoNext = 4425611
    				_ = gotoNext == 4425611
    				s.scanChar()
    				tok_4425137 = -5
    				gotoNext = 4425653
    			} else {
    				gotoNext = 4425653
}
    			_ = gotoNext == 4425653
    			ch_4424438 = s.next()
    			gotoNext = 4426226
    		case 46:
    			gotoNext = 4425669
    			_ = gotoNext == 4425669
    			ch_4424438 = s.next()
    			if isDecimal(ch_4424438) && s.Mode&16 != 0 {
    				gotoNext = 4425742
    				_ = gotoNext == 4425742
    				tok_4425137, ch_4424438 = s.scanNumber(ch_4424438, true)
    				gotoNext = 4426226
    			} else {
    				gotoNext = 4426226
}
    			gotoNext = 4426226
    		case 47:
    			gotoNext = 4425788
    			_ = gotoNext == 4425788
    			ch_4424438 = s.next()
    			if (ch_4424438 == 47 || ch_4424438 == 42) && s.Mode&256 != 0 {
    				gotoNext = 4425874
    				_ = gotoNext == 4425874
    				if s.Mode&512 != 0 {
    					gotoNext = 4425908
    					_ = gotoNext == 4425908
    					s.tokPos = -1
    					ch_4424438 = s.scanComment(ch_4424438)
    					gotoNext = 4424512
    					gotoNext = 4426010
    				} else {
    					gotoNext = 4426010
}
    				_ = gotoNext == 4426010
    				ch_4424438 = s.scanComment(ch_4424438)
    				tok_4425137 = -8
    				gotoNext = 4426226
    			} else {
    				gotoNext = 4426226
}
    			gotoNext = 4426226
    		case 96:
    			gotoNext = 4426058
    			_ = gotoNext == 4426058
    			if s.Mode&128 != 0 {
    				gotoNext = 4426101
    				_ = gotoNext == 4426101
    				s.scanRawString()
    				tok_4425137 = -7
    				gotoNext = 4426153
    			} else {
    				gotoNext = 4426153
}
    			_ = gotoNext == 4426153
    			ch_4424438 = s.next()
    			gotoNext = 4426226
    		default:
    			gotoNext = 4426169
    			_ = gotoNext == 4426169
    			ch_4424438 = s.next()
    			gotoNext = 4426226
}
    		gotoNext = 4426226
}
    	_ = gotoNext == 4426226
    	s.tokEnd = s.srcPos - s.lastCharLen
    	s.ch = ch_4424438
    	return tok_4425137
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



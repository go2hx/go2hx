# Module: `stdgo.bufio`

[(view library index)](../stdgo.md)


# Overview


```
Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer
    object, creating another object (Reader or Writer) that also implements
    the interface but provides buffering and some help for textual I/O.
```
# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function get_errAdvanceTooFar():stdgo.Error`](<#function-get_erradvancetoofar>)

- [`function get_errBadReadCount():stdgo.Error`](<#function-get_errbadreadcount>)

- [`function get_errBufferFull():stdgo.Error`](<#function-get_errbufferfull>)

- [`function get_errFinalToken():stdgo.Error`](<#function-get_errfinaltoken>)

- [`function get_errInvalidUnreadByte():stdgo.Error`](<#function-get_errinvalidunreadbyte>)

- [`function get_errInvalidUnreadRune():stdgo.Error`](<#function-get_errinvalidunreadrune>)

- [`function get_errNegativeAdvance():stdgo.Error`](<#function-get_errnegativeadvance>)

- [`function get_errNegativeCount():stdgo.Error`](<#function-get_errnegativecount>)

- [`function get_errTooLong():stdgo.Error`](<#function-get_errtoolong>)

- [`function get_isSpace():()`](<#function-get_isspace>)

- [`function isSpace()`](<#function-isspace>)

- [`function newReadWriter(r:stdgo.bufio.Reader, w:stdgo.bufio.Writer):stdgo.bufio.ReadWriter`](<#function-newreadwriter>)

- [`function newReader(rd:stdgo._internal.io.Reader):stdgo.bufio.Reader`](<#function-newreader>)

- [`function newReaderSize(rd:stdgo._internal.io.Reader, size:Int):stdgo.bufio.Reader`](<#function-newreadersize>)

- [`function newScanner(r:stdgo._internal.io.Reader):stdgo.bufio.Scanner`](<#function-newscanner>)

- [`function newWriter(w:stdgo._internal.io.Writer):stdgo.bufio.Writer`](<#function-newwriter>)

- [`function newWriterSize(w:stdgo._internal.io.Writer, size:Int):stdgo.bufio.Writer`](<#function-newwritersize>)

- [`function scanBytes(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>`](<#function-scanbytes>)

- [`function scanLines(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>`](<#function-scanlines>)

- [`function scanRunes(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>`](<#function-scanrunes>)

- [`function scanWords(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>`](<#function-scanwords>)

- [`function set_errAdvanceTooFar(v:stdgo.Error):stdgo.Error`](<#function-set_erradvancetoofar>)

- [`function set_errBadReadCount(v:stdgo.Error):stdgo.Error`](<#function-set_errbadreadcount>)

- [`function set_errBufferFull(v:stdgo.Error):stdgo.Error`](<#function-set_errbufferfull>)

- [`function set_errFinalToken(v:stdgo.Error):stdgo.Error`](<#function-set_errfinaltoken>)

- [`function set_errInvalidUnreadByte(v:stdgo.Error):stdgo.Error`](<#function-set_errinvalidunreadbyte>)

- [`function set_errInvalidUnreadRune(v:stdgo.Error):stdgo.Error`](<#function-set_errinvalidunreadrune>)

- [`function set_errNegativeAdvance(v:stdgo.Error):stdgo.Error`](<#function-set_errnegativeadvance>)

- [`function set_errNegativeCount(v:stdgo.Error):stdgo.Error`](<#function-set_errnegativecount>)

- [`function set_errTooLong(v:stdgo.Error):stdgo.Error`](<#function-set_errtoolong>)

- [`function set_isSpace(v:()):()`](<#function-set_isspace>)

- [typedef ReadWriter](<#typedef-readwriter>)

- [typedef ReadWriter\_asInterface](<#typedef-readwriter_asinterface>)

- [typedef ReadWriter\_static\_extension](<#typedef-readwriter_static_extension>)

- [typedef Reader](<#typedef-reader>)

- [typedef Reader\_asInterface](<#typedef-reader_asinterface>)

- [typedef Reader\_static\_extension](<#typedef-reader_static_extension>)

- [typedef Scanner](<#typedef-scanner>)

- [typedef Scanner\_asInterface](<#typedef-scanner_asinterface>)

- [typedef Scanner\_static\_extension](<#typedef-scanner_static_extension>)

- [typedef SplitFunc](<#typedef-splitfunc>)

- [typedef Writer](<#typedef-writer>)

- [typedef Writer\_asInterface](<#typedef-writer_asinterface>)

- [typedef Writer\_static\_extension](<#typedef-writer_static_extension>)

# Constants


```haxe
import stdgo.bufio.Bufio
```


```haxe
final defaultBufSize:haxe.UInt64 = stdgo._internal.bufio.Bufio.defaultBufSize
```


```haxe
final maxScanTokenSize:haxe.UInt64 = stdgo._internal.bufio.Bufio.maxScanTokenSize
```


# Variables


```haxe
import stdgo.bufio.Bufio
```


```haxe
var errAdvanceTooFar:stdgo.Error
```


```haxe
var errBadReadCount:stdgo.Error
```


```haxe
var errBufferFull:stdgo.Error
```


```haxe
var errFinalToken:stdgo.Error
```


```haxe
var errInvalidUnreadByte:stdgo.Error
```


```haxe
var errInvalidUnreadRune:stdgo.Error
```


```haxe
var errNegativeAdvance:stdgo.Error
```


```haxe
var errNegativeCount:stdgo.Error
```


```haxe
var errTooLong:stdgo.Error
```


# Functions


```haxe
import stdgo.bufio.Bufio
```


## function get\_errAdvanceTooFar


```haxe
function get_errAdvanceTooFar():stdgo.Error
```


[\(view code\)](<./Bufio.hx#L29>)


## function get\_errBadReadCount


```haxe
function get_errBadReadCount():stdgo.Error
```


[\(view code\)](<./Bufio.hx#L32>)


## function get\_errBufferFull


```haxe
function get_errBufferFull():stdgo.Error
```


[\(view code\)](<./Bufio.hx#L17>)


## function get\_errFinalToken


```haxe
function get_errFinalToken():stdgo.Error
```


[\(view code\)](<./Bufio.hx#L35>)


## function get\_errInvalidUnreadByte


```haxe
function get_errInvalidUnreadByte():stdgo.Error
```


[\(view code\)](<./Bufio.hx#L11>)


## function get\_errInvalidUnreadRune


```haxe
function get_errInvalidUnreadRune():stdgo.Error
```


[\(view code\)](<./Bufio.hx#L14>)


## function get\_errNegativeAdvance


```haxe
function get_errNegativeAdvance():stdgo.Error
```


[\(view code\)](<./Bufio.hx#L26>)


## function get\_errNegativeCount


```haxe
function get_errNegativeCount():stdgo.Error
```


[\(view code\)](<./Bufio.hx#L20>)


## function get\_errTooLong


```haxe
function get_errTooLong():stdgo.Error
```


[\(view code\)](<./Bufio.hx#L23>)


## function get\_isSpace


```haxe
function get_isSpace():()
```


[\(view code\)](<./Bufio.hx#L38>)


## function isSpace


```haxe
function isSpace()
```


[\(view code\)](<./Bufio.hx>)


## function newReadWriter


```haxe
function newReadWriter(r:stdgo.bufio.Reader, w:stdgo.bufio.Writer):stdgo.bufio.ReadWriter
```



NewReadWriter allocates a new ReadWriter that dispatches to r and w.  

[\(view code\)](<./Bufio.hx#L70>)


## function newReader


```haxe
function newReader(rd:stdgo._internal.io.Reader):stdgo.bufio.Reader
```



NewReader returns a new Reader whose buffer has the default size.  

[\(view code\)](<./Bufio.hx#L54>)


## function newReaderSize


```haxe
function newReaderSize(rd:stdgo._internal.io.Reader, size:Int):stdgo.bufio.Reader
```


```
NewReaderSize returns a new Reader whose buffer has at least the specified
    size. If the argument io.Reader is already a Reader with large enough
    size, it returns the underlying Reader.
```
[\(view code\)](<./Bufio.hx#L50>)


## function newScanner


```haxe
function newScanner(r:stdgo._internal.io.Reader):stdgo.bufio.Scanner
```


```
NewScanner returns a new Scanner to read from r.
    The split function defaults to ScanLines.
```
[\(view code\)](<./Bufio.hx#L75>)


## function newWriter


```haxe
function newWriter(w:stdgo._internal.io.Writer):stdgo.bufio.Writer
```


```
NewWriter returns a new Writer whose buffer has the default size.
    If the argument io.Writer is already a Writer with large enough buffer size,
    it returns the underlying Writer.
```
[\(view code\)](<./Bufio.hx#L66>)


## function newWriterSize


```haxe
function newWriterSize(w:stdgo._internal.io.Writer, size:Int):stdgo.bufio.Writer
```


```
NewWriterSize returns a new Writer whose buffer has at least the specified
    size. If the argument io.Writer is already a Writer with large enough
    size, it returns the underlying Writer.
```
[\(view code\)](<./Bufio.hx#L60>)


## function scanBytes


```haxe
function scanBytes(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>
```



ScanBytes is a split function for a Scanner that returns each byte as a token.  

[\(view code\)](<./Bufio.hx#L79>)


## function scanLines


```haxe
function scanLines(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>
```


```
ScanLines is a split function for a Scanner that returns each line of
    text, stripped of any trailing end-of-line marker. The returned line may
    be empty. The end-of-line marker is one optional carriage return followed
    by one mandatory newline. In regular expression notation, it is `\r?\n`.
    The last non-empty line of input will be returned even if it has no
    newline.
```
[\(view code\)](<./Bufio.hx#L97>)


## function scanRunes


```haxe
function scanRunes(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>
```


```
ScanRunes is a split function for a Scanner that returns each
    UTF-8-encoded rune as a token. The sequence of runes returned is
    equivalent to that from a range loop over the input as a string, which
    means that erroneous UTF-8 encodings translate to U+FFFD = "\xef\xbf\xbd".
    Because of the Scan interface, this makes it impossible for the client to
    distinguish correctly encoded replacement runes from encoding errors.
```
[\(view code\)](<./Bufio.hx#L88>)


## function scanWords


```haxe
function scanWords(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>
```


```
ScanWords is a split function for a Scanner that returns each
    space-separated word of text, with surrounding spaces deleted. It will
    never return an empty string. The definition of space is set by
    unicode.IsSpace.
```
[\(view code\)](<./Bufio.hx#L104>)


## function set\_errAdvanceTooFar


```haxe
function set_errAdvanceTooFar(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Bufio.hx#L30>)


## function set\_errBadReadCount


```haxe
function set_errBadReadCount(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Bufio.hx#L33>)


## function set\_errBufferFull


```haxe
function set_errBufferFull(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Bufio.hx#L18>)


## function set\_errFinalToken


```haxe
function set_errFinalToken(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Bufio.hx#L36>)


## function set\_errInvalidUnreadByte


```haxe
function set_errInvalidUnreadByte(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Bufio.hx#L12>)


## function set\_errInvalidUnreadRune


```haxe
function set_errInvalidUnreadRune(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Bufio.hx#L15>)


## function set\_errNegativeAdvance


```haxe
function set_errNegativeAdvance(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Bufio.hx#L27>)


## function set\_errNegativeCount


```haxe
function set_errNegativeCount(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Bufio.hx#L21>)


## function set\_errTooLong


```haxe
function set_errTooLong(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Bufio.hx#L24>)


## function set\_isSpace


```haxe
function set_isSpace(v:()):()
```


[\(view code\)](<./Bufio.hx#L39>)


# Typedefs


```haxe
import stdgo.bufio.*
```


## typedef ReadWriter


```haxe
typedef ReadWriter = Dynamic;
```


## typedef ReadWriter\_asInterface


```haxe
typedef ReadWriter_asInterface = Dynamic;
```


## typedef ReadWriter\_static\_extension


```haxe
typedef ReadWriter_static_extension = Dynamic;
```


## typedef Reader


```haxe
typedef Reader = Dynamic;
```


## typedef Reader\_asInterface


```haxe
typedef Reader_asInterface = Dynamic;
```


## typedef Reader\_static\_extension


```haxe
typedef Reader_static_extension = Dynamic;
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


## typedef SplitFunc


```haxe
typedef SplitFunc = stdgo._internal.bufio.SplitFunc;
```


## typedef Writer


```haxe
typedef Writer = Dynamic;
```


## typedef Writer\_asInterface


```haxe
typedef Writer_asInterface = Dynamic;
```


## typedef Writer\_static\_extension


```haxe
typedef Writer_static_extension = Dynamic;
```



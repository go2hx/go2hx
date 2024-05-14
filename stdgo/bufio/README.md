# Module: `stdgo.bufio`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function isSpace()`](<#function-isspace>)

- [class Bufio](<#class-bufio>)

  - [`function newReadWriter(r:stdgo.bufio.Reader, w:stdgo.bufio.Writer):stdgo.bufio.ReadWriter`](<#bufio-function-newreadwriter>)

  - [`function newReader(rd:stdgo._internal.io.Reader):stdgo.bufio.Reader`](<#bufio-function-newreader>)

  - [`function newReaderSize(rd:stdgo._internal.io.Reader, size:Int):stdgo.bufio.Reader`](<#bufio-function-newreadersize>)

  - [`function newScanner(r:stdgo._internal.io.Reader):stdgo.bufio.Scanner`](<#bufio-function-newscanner>)

  - [`function newWriter(w:stdgo._internal.io.Writer):stdgo.bufio.Writer`](<#bufio-function-newwriter>)

  - [`function newWriterSize(w:stdgo._internal.io.Writer, size:Int):stdgo.bufio.Writer`](<#bufio-function-newwritersize>)

  - [`function scanBytes(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>`](<#bufio-function-scanbytes>)

  - [`function scanLines(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>`](<#bufio-function-scanlines>)

  - [`function scanRunes(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>`](<#bufio-function-scanrunes>)

  - [`function scanWords(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>`](<#bufio-function-scanwords>)

- [typedef SplitFunc](<#typedef-splitfunc>)

- [abstract Reader](<#abstract-reader>)

- [abstract Writer](<#abstract-writer>)

- [abstract ReadWriter](<#abstract-readwriter>)

- [abstract Scanner](<#abstract-scanner>)

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


## function isSpace


```haxe
function isSpace()
```


[\(view code\)](<./Bufio.hx>)


# Classes


```haxe
import stdgo.bufio.*
```


## class Bufio


```
Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer
    object, creating another object (Reader or Writer) that also implements
    the interface but provides buffering and some help for textual I/O.
```
### Bufio function newReadWriter


```haxe
function newReadWriter(r:stdgo.bufio.Reader, w:stdgo.bufio.Writer):stdgo.bufio.ReadWriter
```



NewReadWriter allocates a new ReadWriter that dispatches to r and w.  

[\(view code\)](<./Bufio.hx#L588>)


### Bufio function newReader


```haxe
function newReader(rd:stdgo._internal.io.Reader):stdgo.bufio.Reader
```



NewReader returns a new Reader whose buffer has the default size.  

[\(view code\)](<./Bufio.hx#L566>)


### Bufio function newReaderSize


```haxe
function newReaderSize(rd:stdgo._internal.io.Reader, size:Int):stdgo.bufio.Reader
```


```
NewReaderSize returns a new Reader whose buffer has at least the specified
        size. If the argument io.Reader is already a Reader with large enough
        size, it returns the underlying Reader.
```
[\(view code\)](<./Bufio.hx#L560>)


### Bufio function newScanner


```haxe
function newScanner(r:stdgo._internal.io.Reader):stdgo.bufio.Scanner
```


```
NewScanner returns a new Scanner to read from r.
        The split function defaults to ScanLines.
```
[\(view code\)](<./Bufio.hx#L595>)


### Bufio function newWriter


```haxe
function newWriter(w:stdgo._internal.io.Writer):stdgo.bufio.Writer
```


```
NewWriter returns a new Writer whose buffer has the default size.
        If the argument io.Writer is already a Writer with large enough buffer size,
        it returns the underlying Writer.
```
[\(view code\)](<./Bufio.hx#L582>)


### Bufio function newWriterSize


```haxe
function newWriterSize(w:stdgo._internal.io.Writer, size:Int):stdgo.bufio.Writer
```


```
NewWriterSize returns a new Writer whose buffer has at least the specified
        size. If the argument io.Writer is already a Writer with large enough
        size, it returns the underlying Writer.
```
[\(view code\)](<./Bufio.hx#L574>)


### Bufio function scanBytes


```haxe
function scanBytes(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>
```



ScanBytes is a split function for a Scanner that returns each byte as a token.  

[\(view code\)](<./Bufio.hx#L601>)


### Bufio function scanLines


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
[\(view code\)](<./Bufio.hx#L631>)


### Bufio function scanRunes


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
[\(view code\)](<./Bufio.hx#L616>)


### Bufio function scanWords


```haxe
function scanWords(data:Array<Int>, atEOF:Bool):stdgo.Tuple3<Int, Array<Int>, stdgo.Error>
```


```
ScanWords is a split function for a Scanner that returns each
        space-separated word of text, with surrounding spaces deleted. It will
        never return an empty string. The definition of space is set by
        unicode.IsSpace.
```
[\(view code\)](<./Bufio.hx#L644>)


# Typedefs


```haxe
import stdgo.bufio.*
```


## typedef SplitFunc


```haxe
typedef SplitFunc = stdgo._internal.bufio.SplitFunc;
```


# Abstracts


## abstract Reader


[\(view file containing code\)](<./Bufio.hx>)


## abstract Writer


[\(view file containing code\)](<./Bufio.hx>)


## abstract ReadWriter


[\(view file containing code\)](<./Bufio.hx>)


## abstract Scanner


[\(view file containing code\)](<./Bufio.hx>)



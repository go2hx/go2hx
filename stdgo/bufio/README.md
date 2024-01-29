# Module: `stdgo.bufio`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _dropCR(_data:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_dropcr>)

- [`function _isSpace(_r:stdgo.GoRune):Void`](<#function-_isspace>)

- [`function newReadWriter(_r:stdgo.Ref<stdgo.bufio.Reader>, _w:stdgo.Ref<stdgo.bufio.Writer>):Void`](<#function-newreadwriter>)

- [`function newReader(_rd:stdgo._internal.io.Reader):Void`](<#function-newreader>)

- [`function newReaderSize(_rd:stdgo._internal.io.Reader, _size:stdgo.GoInt):Void`](<#function-newreadersize>)

- [`function newScanner(_r:stdgo._internal.io.Reader):Void`](<#function-newscanner>)

- [`function newWriter(_w:stdgo._internal.io.Writer):Void`](<#function-newwriter>)

- [`function newWriterSize(_w:stdgo._internal.io.Writer, _size:stdgo.GoInt):Void`](<#function-newwritersize>)

- [`function scanBytes(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):Void`](<#function-scanbytes>)

- [`function scanLines(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):Void`](<#function-scanlines>)

- [`function scanRunes(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):Void`](<#function-scanrunes>)

- [`function scanWords(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):Void`](<#function-scanwords>)

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

# Variables


```haxe
import stdgo.bufio.Bufio
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _defaultBufSize:Dynamic
```


```haxe
var _errNegativeRead:Dynamic
```


```haxe
var _errNegativeWrite:Dynamic
```


```haxe
var _errorRune:Dynamic
```


```haxe
var _maxConsecutiveEmptyReads:Dynamic
```


```haxe
var _minReadBufferSize:Dynamic
```


```haxe
var _startBufSize:Dynamic
```


```haxe
var defaultBufSize:Dynamic
```


```haxe
var errAdvanceTooFar:Dynamic
```


```haxe
var errBadReadCount:Dynamic
```


```haxe
var errBufferFull:Dynamic
```


```haxe
var errFinalToken:Dynamic
```


```haxe
var errInvalidUnreadByte:Dynamic
```


```haxe
var errInvalidUnreadRune:Dynamic
```


```haxe
var errNegativeAdvance:Dynamic
```


```haxe
var errNegativeCount:Dynamic
```


```haxe
var errTooLong:Dynamic
```


```haxe
var isSpace:Dynamic
```


```haxe
var maxScanTokenSize:Dynamic
```


# Functions


```haxe
import stdgo.bufio.Bufio
```


## function \_dropCR


```haxe
function _dropCR(_data:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bufio.hx#L35>)


## function \_isSpace


```haxe
function _isSpace(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Bufio.hx#L37>)


## function newReadWriter


```haxe
function newReadWriter(_r:stdgo.Ref<stdgo.bufio.Reader>, _w:stdgo.Ref<stdgo.bufio.Writer>):Void
```


[\(view code\)](<./Bufio.hx#L31>)


## function newReader


```haxe
function newReader(_rd:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Bufio.hx#L28>)


## function newReaderSize


```haxe
function newReaderSize(_rd:stdgo._internal.io.Reader, _size:stdgo.GoInt):Void
```


[\(view code\)](<./Bufio.hx#L27>)


## function newScanner


```haxe
function newScanner(_r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Bufio.hx#L32>)


## function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Bufio.hx#L30>)


## function newWriterSize


```haxe
function newWriterSize(_w:stdgo._internal.io.Writer, _size:stdgo.GoInt):Void
```


[\(view code\)](<./Bufio.hx#L29>)


## function scanBytes


```haxe
function scanBytes(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):Void
```


[\(view code\)](<./Bufio.hx#L33>)


## function scanLines


```haxe
function scanLines(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):Void
```


[\(view code\)](<./Bufio.hx#L36>)


## function scanRunes


```haxe
function scanRunes(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):Void
```


[\(view code\)](<./Bufio.hx#L34>)


## function scanWords


```haxe
function scanWords(_data:stdgo.Slice<stdgo.GoByte>, _atEOF:Bool):Void
```


[\(view code\)](<./Bufio.hx#L38>)


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



# Module: `stdgo._internal.encoding.csv`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _lengthNL(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt`](<#function-_lengthnl>)

- [`function _nextRune(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32`](<#function-_nextrune>)

- [`function _validDelim(_r:stdgo.GoInt32):Bool`](<#function-_validdelim>)

- [`function newReader(_r:stdgo._internal.io.Reader):stdgo.Ref<stdgo._internal.encoding.csv.Reader>`](<#function-newreader>)

- [`function newWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.encoding.csv.Writer>`](<#function-newwriter>)

- [class ParseError](<#class-parseerror>)

  - [`function new(?startLine:stdgo.GoInt, ?line:stdgo.GoInt, ?column:stdgo.GoInt, ?err:Null<stdgo.Error>):Void`](<#parseerror-function-new>)

- [class Reader](<#class-reader>)

  - [`function new(?comma:stdgo.GoInt32, ?comment:stdgo.GoInt32, ?fieldsPerRecord:stdgo.GoInt, ?lazyQuotes:Bool, ?trimLeadingSpace:Bool, ?reuseRecord:Bool, ?trailingComma:Bool, ?_r:stdgo.Ref<stdgo._internal.bufio.Reader>, ?_numLine:stdgo.GoInt, ?_offset:stdgo.GoInt64, ?_rawBuffer:stdgo.Slice<stdgo.GoUInt8>, ?_recordBuffer:stdgo.Slice<stdgo.GoUInt8>, ?_fieldIndexes:stdgo.Slice<stdgo.GoInt>, ?_fieldPositions:stdgo.Slice<stdgo._internal.encoding.csv.T_position>, ?_lastRecord:stdgo.Slice<stdgo.GoString>):Void`](<#reader-function-new>)

- [class T\_position](<#class-t_position>)

  - [`function new(?_line:stdgo.GoInt, ?_col:stdgo.GoInt):Void`](<#t_position-function-new>)

- [class Writer](<#class-writer>)

  - [`function new(?comma:stdgo.GoInt32, ?useCRLF:Bool, ?_w:stdgo.Ref<stdgo._internal.bufio.Writer>):Void`](<#writer-function-new>)

# Variables


```haxe
import stdgo._internal.encoding.csv.Csv_newWriter
```


```haxe
var errBareQuote:stdgo.Error
```


```haxe
var errQuote:stdgo.Error
```


```haxe
var errFieldCount:stdgo.Error
```


```haxe
var errTrailingComma:stdgo.Error
```


```haxe
var _errInvalidDelim:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.encoding.csv.Csv_newWriter
```


## function \_lengthNL


```haxe
function _lengthNL(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt
```


[\(view code\)](<./Csv_newWriter.hx#L2>)


## function \_nextRune


```haxe
function _nextRune(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32
```


[\(view code\)](<./Csv_newWriter.hx#L2>)


## function \_validDelim


```haxe
function _validDelim(_r:stdgo.GoInt32):Bool
```


[\(view code\)](<./Csv_newWriter.hx#L2>)


## function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):stdgo.Ref<stdgo._internal.encoding.csv.Reader>
```


[\(view code\)](<./Csv_newWriter.hx#L2>)


## function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer):stdgo.Ref<stdgo._internal.encoding.csv.Writer>
```


[\(view code\)](<./Csv_newWriter.hx#L2>)


# Classes


```haxe
import stdgo._internal.encoding.csv.*
```


## class ParseError


```haxe
var column:stdgo.GoInt
```


```haxe
var err:stdgo.Error
```


```haxe
var line:stdgo.GoInt
```


```haxe
var startLine:stdgo.GoInt
```


### ParseError function new


```haxe
function new(?startLine:stdgo.GoInt, ?line:stdgo.GoInt, ?column:stdgo.GoInt, ?err:Null<stdgo.Error>):Void
```


[\(view code\)](<./Csv_ParseError.hx#L7>)


## class Reader


```haxe
var _fieldIndexes:stdgo.Slice<stdgo.GoInt>
```


```haxe
var _fieldPositions:stdgo.Slice<stdgo._internal.encoding.csv.T_position>
```


```haxe
var _lastRecord:stdgo.Slice<stdgo.GoString>
```


```haxe
var _numLine:stdgo.GoInt
```


```haxe
var _offset:stdgo.GoInt64
```


```haxe
var _r:stdgo.Ref<stdgo._internal.bufio.Reader>
```


```haxe
var _rawBuffer:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _recordBuffer:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var comma:stdgo.GoInt32
```


```haxe
var comment:stdgo.GoInt32
```


```haxe
var fieldsPerRecord:stdgo.GoInt
```


```haxe
var lazyQuotes:Bool
```


```haxe
var reuseRecord:Bool
```


```haxe
var trailingComma:Bool
```


```haxe
var trimLeadingSpace:Bool
```


### Reader function new


```haxe
function new(?comma:stdgo.GoInt32, ?comment:stdgo.GoInt32, ?fieldsPerRecord:stdgo.GoInt, ?lazyQuotes:Bool, ?trimLeadingSpace:Bool, ?reuseRecord:Bool, ?trailingComma:Bool, ?_r:stdgo.Ref<stdgo._internal.bufio.Reader>, ?_numLine:stdgo.GoInt, ?_offset:stdgo.GoInt64, ?_rawBuffer:stdgo.Slice<stdgo.GoUInt8>, ?_recordBuffer:stdgo.Slice<stdgo.GoUInt8>, ?_fieldIndexes:stdgo.Slice<stdgo.GoInt>, ?_fieldPositions:stdgo.Slice<stdgo._internal.encoding.csv.T_position>, ?_lastRecord:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Csv_Reader.hx#L18>)


## class T\_position


```haxe
var _col:stdgo.GoInt
```


```haxe
var _line:stdgo.GoInt
```


### T\_position function new


```haxe
function new(?_line:stdgo.GoInt, ?_col:stdgo.GoInt):Void
```


[\(view code\)](<./Csv_T_position.hx#L5>)


## class Writer


```haxe
var _w:stdgo.Ref<stdgo._internal.bufio.Writer>
```


```haxe
var comma:stdgo.GoInt32
```


```haxe
var useCRLF:Bool
```


### Writer function new


```haxe
function new(?comma:stdgo.GoInt32, ?useCRLF:Bool, ?_w:stdgo.Ref<stdgo._internal.bufio.Writer>):Void
```


[\(view code\)](<./Csv_Writer.hx#L6>)



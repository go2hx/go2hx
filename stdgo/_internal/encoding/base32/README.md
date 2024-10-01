# Module: `stdgo._internal.encoding.base32`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<stdgo._internal.encoding.base32.Encoding>`](<#function-newencoding>)

- [`function _readEncodedData(_r:stdgo._internal.io.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>, _min:stdgo.GoInt, _expectsPadding:Bool):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-_readencodeddata>)

- [`function _stripNewlines(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt`](<#function-_stripnewlines>)

- [`function newDecoder(_enc:stdgo.Ref<stdgo._internal.encoding.base32.Encoding>, _r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-newdecoder>)

- [`function newEncoder(_enc:stdgo.Ref<stdgo._internal.encoding.base32.Encoding>, _w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser`](<#function-newencoder>)

- [class Encoding](<#class-encoding>)

  - [`function new(?_encode:stdgo.GoArray<stdgo.GoUInt8>, ?_decodeMap:stdgo.GoArray<stdgo.GoUInt8>, ?_padChar:stdgo.GoInt32):Void`](<#encoding-function-new>)

- [class T\_decoder](<#class-t_decoder>)

  - [`function new(?_err:Null<stdgo.Error>, ?_enc:stdgo.Ref<stdgo._internal.encoding.base32.Encoding>, ?_r:Null<stdgo._internal.io.Reader>, ?_end:Bool, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_outbuf:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#t_decoder-function-new>)

- [class T\_encoder](<#class-t_encoder>)

  - [`function new(?_err:Null<stdgo.Error>, ?_enc:stdgo.Ref<stdgo._internal.encoding.base32.Encoding>, ?_w:Null<stdgo._internal.io.Writer>, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#t_encoder-function-new>)

- [class T\_newlineFilteringReader](<#class-t_newlinefilteringreader>)

  - [`function new(?_wrapped:Null<stdgo._internal.io.Reader>):Void`](<#t_newlinefilteringreader-function-new>)

- [typedef CorruptInputError](<#typedef-corruptinputerror>)

# Constants


```haxe
import stdgo._internal.encoding.base32.Base32_stdPadding
```


```haxe
final _decodeMapInitialize:stdgo.GoString = stdgo.Go.str(255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255)
```


```haxe
final _encodeHex:stdgo.GoString = (("0123456789ABCDEFGHIJKLMNOPQRSTUV" : stdgo.GoString))
```


```haxe
final _encodeStd:stdgo.GoString = (("ABCDEFGHIJKLMNOPQRSTUVWXYZ234567" : stdgo.GoString))
```


```haxe
final noPadding:stdgo.GoInt32 = ((-1 : stdgo.GoInt32))
```


```haxe
final stdPadding:stdgo.GoInt32 = ((61 : stdgo.GoInt32))
```


# Variables


```haxe
import stdgo._internal.encoding.base32.Base32_stdPadding
```


```haxe
var stdEncoding:stdgo.Ref<stdgo._internal.encoding.base32.Encoding>
```


```haxe
var hexEncoding:stdgo.Ref<stdgo._internal.encoding.base32.Encoding>
```


# Functions


```haxe
import stdgo._internal.encoding.base32.Base32_stdPadding
```


## function newEncoding


```haxe
function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<stdgo._internal.encoding.base32.Encoding>
```


[\(view code\)](<./Base32_stdPadding.hx#L2>)


## function \_readEncodedData


```haxe
function _readEncodedData(_r:stdgo._internal.io.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>, _min:stdgo.GoInt, _expectsPadding:Bool):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Base32_stdPadding.hx#L2>)


## function \_stripNewlines


```haxe
function _stripNewlines(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt
```


[\(view code\)](<./Base32_stdPadding.hx#L2>)


## function newDecoder


```haxe
function newDecoder(_enc:stdgo.Ref<stdgo._internal.encoding.base32.Encoding>, _r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


[\(view code\)](<./Base32_stdPadding.hx#L2>)


## function newEncoder


```haxe
function newEncoder(_enc:stdgo.Ref<stdgo._internal.encoding.base32.Encoding>, _w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser
```


[\(view code\)](<./Base32_stdPadding.hx#L2>)


# Classes


```haxe
import stdgo._internal.encoding.base32.*
```


## class Encoding


```haxe
var _decodeMap:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _encode:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _padChar:stdgo.GoInt32
```


### Encoding function new


```haxe
function new(?_encode:stdgo.GoArray<stdgo.GoUInt8>, ?_decodeMap:stdgo.GoArray<stdgo.GoUInt8>, ?_padChar:stdgo.GoInt32):Void
```


[\(view code\)](<./Base32_Encoding.hx#L6>)


## class T\_decoder


```haxe
var _buf:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _enc:stdgo.Ref<stdgo._internal.encoding.base32.Encoding>
```


```haxe
var _end:Bool
```


```haxe
var _err:stdgo.Error
```


```haxe
var _nbuf:stdgo.GoInt
```


```haxe
var _out:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _outbuf:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _r:stdgo._internal.io.Reader
```


### T\_decoder function new


```haxe
function new(?_err:Null<stdgo.Error>, ?_enc:stdgo.Ref<stdgo._internal.encoding.base32.Encoding>, ?_r:Null<stdgo._internal.io.Reader>, ?_end:Bool, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_outbuf:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Base32_T_decoder.hx#L11>)


## class T\_encoder


```haxe
var _buf:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _enc:stdgo.Ref<stdgo._internal.encoding.base32.Encoding>
```


```haxe
var _err:stdgo.Error
```


```haxe
var _nbuf:stdgo.GoInt
```


```haxe
var _out:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _w:stdgo._internal.io.Writer
```


### T\_encoder function new


```haxe
function new(?_err:Null<stdgo.Error>, ?_enc:stdgo.Ref<stdgo._internal.encoding.base32.Encoding>, ?_w:Null<stdgo._internal.io.Writer>, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Base32_T_encoder.hx#L9>)


## class T\_newlineFilteringReader


```haxe
var _wrapped:stdgo._internal.io.Reader
```


### T\_newlineFilteringReader function new


```haxe
function new(?_wrapped:Null<stdgo._internal.io.Reader>):Void
```


[\(view code\)](<./Base32_T_newlineFilteringReader.hx#L4>)


# Typedefs


```haxe
import stdgo._internal.encoding.base32.*
```


## typedef CorruptInputError


```haxe
typedef CorruptInputError = stdgo.GoInt64;
```



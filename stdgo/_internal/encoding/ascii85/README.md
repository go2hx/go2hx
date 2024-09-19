# Module: `stdgo._internal.encoding.ascii85`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [`function decode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _flush:Bool):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}`](<#function-decode>)

- [`function encode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt`](<#function-encode>)

- [`function maxEncodedLen(_n:stdgo.GoInt):stdgo.GoInt`](<#function-maxencodedlen>)

- [`function newDecoder(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-newdecoder>)

- [`function newEncoder(_w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser`](<#function-newencoder>)

- [class T\_decoder](<#class-t_decoder>)

  - [`function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_r:stdgo._internal.io.Reader, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_outbuf:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#t_decoder-function-new>)

- [class T\_encoder](<#class-t_encoder>)

  - [`function new(?_err:stdgo.Error, ?_w:stdgo._internal.io.Writer, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.GoArray<stdgo.GoUInt8>):Void`](<#t_encoder-function-new>)

- [typedef CorruptInputError](<#typedef-corruptinputerror>)

# Functions


```haxe
import stdgo._internal.encoding.ascii85.Ascii85_newEncoder
```


## function decode


```haxe
function decode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _flush:Bool):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Ascii85_newEncoder.hx#L2>)


## function encode


```haxe
function encode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt
```


[\(view code\)](<./Ascii85_newEncoder.hx#L2>)


## function maxEncodedLen


```haxe
function maxEncodedLen(_n:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Ascii85_newEncoder.hx#L2>)


## function newDecoder


```haxe
function newDecoder(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


[\(view code\)](<./Ascii85_newEncoder.hx#L2>)


## function newEncoder


```haxe
function newEncoder(_w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser
```


[\(view code\)](<./Ascii85_newEncoder.hx#L2>)


# Classes


```haxe
import stdgo._internal.encoding.ascii85.*
```


## class T\_decoder


```haxe
var _buf:stdgo.GoArray<stdgo.GoUInt8>
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


```haxe
var _readErr:stdgo.Error
```


### T\_decoder function new


```haxe
function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_r:stdgo._internal.io.Reader, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_outbuf:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Ascii85_T_decoder.hx#L10>)


## class T\_encoder


```haxe
var _buf:stdgo.GoArray<stdgo.GoUInt8>
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
function new(?_err:stdgo.Error, ?_w:stdgo._internal.io.Writer, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.GoArray<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Ascii85_T_encoder.hx#L8>)


# Typedefs


```haxe
import stdgo._internal.encoding.ascii85.*
```


## typedef CorruptInputError


```haxe
typedef CorruptInputError = stdgo.GoInt64;
```



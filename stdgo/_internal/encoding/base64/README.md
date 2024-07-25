# Module: `stdgo._internal.encoding.base64`

[(view library index)](../../../stdgo.md)


# Overview



# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _assemble32(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte):{
	_1:Bool;
	_0:stdgo.GoUInt32;
}`](<#function-_assemble32>)

- [`function _assemble64(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte, _n5:stdgo.GoByte, _n6:stdgo.GoByte, _n7:stdgo.GoByte, _n8:stdgo.GoByte):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}`](<#function-_assemble64>)

- [`function _funnyRef(_ref:stdgo.GoString):stdgo.GoString`](<#function-_funnyref>)

- [`function _rawRef(_ref:stdgo.GoString):stdgo.GoString`](<#function-_rawref>)

- [`function _rawURLRef(_ref:stdgo.GoString):stdgo.GoString`](<#function-_rawurlref>)

- [`function _stdRef(_ref:stdgo.GoString):stdgo.GoString`](<#function-_stdref>)

- [`function _testEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Bool`](<#function-_testequal>)

- [`function _urlRef(_ref:stdgo.GoString):stdgo.GoString`](<#function-_urlref>)

- [`function benchmarkDecodeString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecodestring>)

- [`function benchmarkEncodeToString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkencodetostring>)

- [`function benchmarkNewEncoding(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarknewencoding>)

- [`function newDecoder(_enc:stdgo.Ref<stdgo._internal.encoding.base64.Encoding>, _r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-newdecoder>)

- [`function newEncoder(_enc:stdgo.Ref<stdgo._internal.encoding.base64.Encoding>, _w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser`](<#function-newencoder>)

- [`function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<stdgo._internal.encoding.base64.Encoding>`](<#function-newencoding>)

- [`function testBig(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbig>)

- [`function testDecode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecode>)

- [`function testDecodeBounds(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecodebounds>)

- [`function testDecodeCorrupt(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecodecorrupt>)

- [`function testDecodedLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecodedlen>)

- [`function testDecoder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecoder>)

- [`function testDecoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecoderbuffering>)

- [`function testDecoderIssue15656(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecoderissue15656>)

- [`function testDecoderIssue3577(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecoderissue3577>)

- [`function testDecoderIssue4779(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecoderissue4779>)

- [`function testDecoderIssue7733(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecoderissue7733>)

- [`function testDecoderRaw(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecoderraw>)

- [`function testEncode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testencode>)

- [`function testEncodedLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testencodedlen>)

- [`function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testencoder>)

- [`function testEncoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testencoderbuffering>)

- [`function testNewLineCharacters(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnewlinecharacters>)

- [class Encoding](<#class-encoding>)

  - [`function new(?_encode:stdgo.GoArray<stdgo.GoUInt8>, ?_decodeMap:stdgo.GoArray<stdgo.GoUInt8>, ?_padChar:stdgo.GoInt32, ?_strict:Bool):Void`](<#encoding-function-new>)

  - [`function _decodeQuantum( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#encoding-function-_decodequantum>)

  - [`function decode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#encoding-function-decode>)

  - [`function decodeString( _s:stdgo.GoString):{ _1:stdgo.Error; _0:stdgo.Slice<stdgo.GoByte>;}`](<#encoding-function-decodestring>)

  - [`function decodedLen( _n:stdgo.GoInt):stdgo.GoInt`](<#encoding-function-decodedlen>)

  - [`function encode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void`](<#encoding-function-encode>)

  - [`function encodeToString( _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString`](<#encoding-function-encodetostring>)

  - [`function encodedLen( _n:stdgo.GoInt):stdgo.GoInt`](<#encoding-function-encodedlen>)

  - [`function strict():stdgo.Ref<stdgo._internal.encoding.base64.Encoding>`](<#encoding-function-strict>)

  - [`function withPadding( _padding:stdgo.GoRune):stdgo.Ref<stdgo._internal.encoding.base64.Encoding>`](<#encoding-function-withpadding>)

- [typedef CorruptInputError](<#typedef-corruptinputerror>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

# Examples


- [`exampleNewEncoder`](<#examplenewencoder>)

# Constants


```haxe
import stdgo._internal.encoding.base64.Base64
```


```haxe
final _decodeMapInitialize:stdgo.GoString = stdgo.Go.str(255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255)
```


```haxe
final _encodeStd:stdgo.GoString = (("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" : stdgo.GoString))
```


```haxe
final _encodeURL:stdgo.GoString = (("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_" : stdgo.GoString))
```


```haxe
final noPadding:stdgo.GoInt32 = ((-1 : stdgo.GoInt32))
```


```haxe
final stdPadding:stdgo.GoInt32 = ((61 : stdgo.GoInt32))
```


# Variables


```haxe
import stdgo._internal.encoding.base64.Base64
```


```haxe
var _bigtest:stdgo._internal.encoding.base64.T_testpair
```


```haxe
var _encodingTests:stdgo.Slice<stdgo._internal.encoding.base64.T_encodingTest>
```


```haxe
var _funnyEncoding:stdgo.Ref<stdgo._internal.encoding.base64.Encoding>
```


```haxe
var _pairs:stdgo.Slice<stdgo._internal.encoding.base64.T_testpair>
```


```haxe
var rawStdEncoding:stdgo.Ref<stdgo._internal.encoding.base64.Encoding>
```


```haxe
var rawURLEncoding:stdgo.Ref<stdgo._internal.encoding.base64.Encoding>
```


```haxe
var stdEncoding:stdgo.Ref<stdgo._internal.encoding.base64.Encoding>
```


```haxe
var urlencoding:stdgo.Ref<stdgo._internal.encoding.base64.Encoding>
```


# Functions


```haxe
import stdgo._internal.encoding.base64.Base64
```


## function \_assemble32


```haxe
function _assemble32(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte):{
	_1:Bool;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Base64.hx#L723>)


## function \_assemble64


```haxe
function _assemble64(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte, _n5:stdgo.GoByte, _n6:stdgo.GoByte, _n7:stdgo.GoByte, _n8:stdgo.GoByte):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}
```


[\(view code\)](<./Base64.hx#L730>)


## function \_funnyRef


```haxe
function _funnyRef(_ref:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Base64.hx#L754>)


## function \_rawRef


```haxe
function _rawRef(_ref:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Base64.hx#L748>)


## function \_rawURLRef


```haxe
function _rawURLRef(_ref:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Base64.hx#L751>)


## function \_stdRef


```haxe
function _stdRef(_ref:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Base64.hx#L740>)


## function \_testEqual


```haxe
function _testEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Bool
```


[\(view code\)](<./Base64.hx#L757>)


## function \_urlRef


```haxe
function _urlRef(_ref:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Base64.hx#L743>)


## function benchmarkDecodeString


```haxe
function benchmarkDecodeString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Base64.hx#L1166>)


## function benchmarkEncodeToString


```haxe
function benchmarkEncodeToString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Base64.hx#L1156>)


## function benchmarkNewEncoding


```haxe
function benchmarkNewEncoding(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Base64.hx#L1185>)


## function newDecoder


```haxe
function newDecoder(_enc:stdgo.Ref<stdgo._internal.encoding.base64.Encoding>, _r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


[\(view code\)](<./Base64.hx#L737>)


## function newEncoder


```haxe
function newEncoder(_enc:stdgo.Ref<stdgo._internal.encoding.base64.Encoding>, _w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser
```


### exampleNewEncoder


<details><summary></summary>
<p>


```haxe
function exampleNewEncoder():Void {
        var _input = (stdgo.Go.str("foo", 0, "bar") : stdgo.Slice<stdgo.GoByte>);
        var _encoder = stdgo._internal.encoding.base64.Base64.newEncoder(stdgo._internal.encoding.base64.Base64.stdEncoding, stdgo.Go.asInterface(stdgo._internal.os.Os.stdout));
        _encoder.write(_input);
        _encoder.close();
    }
```


</p>
</details>


[\(view code\)](<./Base64.hx#L720>)


## function newEncoding


```haxe
function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<stdgo._internal.encoding.base64.Encoding>
```


[\(view code\)](<./Base64.hx#L441>)


## function testBig


```haxe
function testBig(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L996>)


## function testDecode


```haxe
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L808>)


## function testDecodeBounds


```haxe
function testDecodeBounds(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L920>)


## function testDecodeCorrupt


```haxe
function testDecodeCorrupt(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L873>)


## function testDecodedLen


```haxe
function testDecodedLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L986>)


## function testDecoder


```haxe
function testDecoder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L827>)


## function testDecoderBuffering


```haxe
function testDecoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L846>)


## function testDecoderIssue15656


```haxe
function testDecoderIssue15656(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L1135>)


## function testDecoderIssue3577


```haxe
function testDecoderIssue3577(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L1061>)


## function testDecoderIssue4779


```haxe
function testDecoderIssue4779(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L1103>)


## function testDecoderIssue7733


```haxe
function testDecoderIssue7733(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L1125>)


## function testDecoderRaw


```haxe
function testDecoderRaw(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L1197>)


## function testEncode


```haxe
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L766>)


## function testEncodedLen


```haxe
function testEncodedLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L965>)


## function testEncoder


```haxe
function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L774>)


## function testEncoderBuffering


```haxe
function testEncoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L783>)


## function testNewLineCharacters


```haxe
function testNewLineCharacters(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L1033>)


# Classes


```haxe
import stdgo._internal.encoding.base64.*
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


```haxe
var _strict:Bool
```


### Encoding function new


```haxe
function new(?_encode:stdgo.GoArray<stdgo.GoUInt8>, ?_decodeMap:stdgo.GoArray<stdgo.GoUInt8>, ?_padChar:stdgo.GoInt32, ?_strict:Bool):Void
```


[\(view code\)](<./Base64.hx#L294>)


### Encoding function \_decodeQuantum


```haxe
function _decodeQuantum( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Base64.hx#L1329>)


### Encoding function decode


```haxe
function decode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Base64.hx#L1252>)


### Encoding function decodeString


```haxe
function decodeString( _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```


[\(view code\)](<./Base64.hx#L1322>)


### Encoding function decodedLen


```haxe
function decodedLen( _n:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Base64.hx#L1244>)


### Encoding function encode


```haxe
function encode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Base64.hx#L1461>)


### Encoding function encodeToString


```haxe
function encodeToString( _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString
```


[\(view code\)](<./Base64.hx#L1454>)


### Encoding function encodedLen


```haxe
function encodedLen( _n:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Base64.hx#L1446>)


### Encoding function strict


```haxe
function strict():stdgo.Ref<stdgo._internal.encoding.base64.Encoding>
```


[\(view code\)](<./Base64.hx#L1505>)


### Encoding function withPadding


```haxe
function withPadding( _padding:stdgo.GoRune):stdgo.Ref<stdgo._internal.encoding.base64.Encoding>
```


[\(view code\)](<./Base64.hx#L1511>)


# Typedefs


```haxe
import stdgo._internal.encoding.base64.*
```


## typedef CorruptInputError


```haxe
typedef CorruptInputError = stdgo.GoInt64;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_offset:stdgo.GoInt;
	_input:stdgo.GoString;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_want:stdgo.GoInt;
	_n:stdgo.GoInt;
	_enc:stdgo.Ref<stdgo._internal.encoding.base64.Encoding>;
};
```



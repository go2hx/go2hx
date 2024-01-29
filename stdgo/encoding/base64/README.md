# Module: `stdgo.encoding.base64`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _assemble32(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte):Void`](<#function-_assemble32>)

- [`function _assemble64(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte, _n5:stdgo.GoByte, _n6:stdgo.GoByte, _n7:stdgo.GoByte, _n8:stdgo.GoByte):Void`](<#function-_assemble64>)

- [`function _funnyRef(_ref:stdgo.GoString):Void`](<#function-_funnyref>)

- [`function _rawRef(_ref:stdgo.GoString):Void`](<#function-_rawref>)

- [`function _rawURLRef(_ref:stdgo.GoString):Void`](<#function-_rawurlref>)

- [`function _stdRef(_ref:stdgo.GoString):Void`](<#function-_stdref>)

- [`function _testEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void`](<#function-_testequal>)

- [`function _urlRef(_ref:stdgo.GoString):Void`](<#function-_urlref>)

- [`function benchmarkDecodeString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecodestring>)

- [`function benchmarkEncodeToString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkencodetostring>)

- [`function benchmarkNewEncoding(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarknewencoding>)

- [`function newDecoder(_enc:stdgo.Ref<stdgo.encoding.base64.Encoding>, _r:stdgo._internal.io.Reader):Void`](<#function-newdecoder>)

- [`function newEncoder(_enc:stdgo.Ref<stdgo.encoding.base64.Encoding>, _w:stdgo._internal.io.Writer):Void`](<#function-newencoder>)

- [`function newEncoding(_encoder:stdgo.GoString):Void`](<#function-newencoding>)

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

- [typedef CorruptInputError](<#typedef-corruptinputerror>)

- [typedef CorruptInputError\_asInterface](<#typedef-corruptinputerror_asinterface>)

- [typedef CorruptInputError\_static\_extension](<#typedef-corruptinputerror_static_extension>)

- [typedef Encoding](<#typedef-encoding>)

- [typedef Encoding\_asInterface](<#typedef-encoding_asinterface>)

- [typedef Encoding\_static\_extension](<#typedef-encoding_static_extension>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_1\_asInterface](<#typedef-t__struct_1_asinterface>)

- [typedef T\_\_struct\_1\_static\_extension](<#typedef-t__struct_1_static_extension>)

- [typedef T\_decoder](<#typedef-t_decoder>)

- [typedef T\_decoder\_asInterface](<#typedef-t_decoder_asinterface>)

- [typedef T\_decoder\_static\_extension](<#typedef-t_decoder_static_extension>)

- [typedef T\_encoder](<#typedef-t_encoder>)

- [typedef T\_encoder\_asInterface](<#typedef-t_encoder_asinterface>)

- [typedef T\_encoder\_static\_extension](<#typedef-t_encoder_static_extension>)

- [typedef T\_encodingTest](<#typedef-t_encodingtest>)

- [typedef T\_faultInjectReader](<#typedef-t_faultinjectreader>)

- [typedef T\_faultInjectReader\_asInterface](<#typedef-t_faultinjectreader_asinterface>)

- [typedef T\_faultInjectReader\_static\_extension](<#typedef-t_faultinjectreader_static_extension>)

- [typedef T\_newlineFilteringReader](<#typedef-t_newlinefilteringreader>)

- [typedef T\_newlineFilteringReader\_asInterface](<#typedef-t_newlinefilteringreader_asinterface>)

- [typedef T\_newlineFilteringReader\_static\_extension](<#typedef-t_newlinefilteringreader_static_extension>)

- [typedef T\_nextRead](<#typedef-t_nextread>)

- [typedef T\_testpair](<#typedef-t_testpair>)

# Variables


```haxe
import stdgo.encoding.base64.Base64
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _bigtest:Dynamic
```


```haxe
var _decodeMapInitialize:Dynamic
```


```haxe
var _encodeStd:Dynamic
```


```haxe
var _encodeURL:Dynamic
```


```haxe
var _encodingTests:Dynamic
```


```haxe
var _funnyEncoding:Dynamic
```


```haxe
var _pairs:Dynamic
```


```haxe
var noPadding:Dynamic
```


```haxe
var rawStdEncoding:Dynamic
```


```haxe
var rawURLEncoding:Dynamic
```


```haxe
var stdEncoding:Dynamic
```


```haxe
var stdPadding:Dynamic
```


```haxe
var urlencoding:Dynamic
```


# Functions


```haxe
import stdgo.encoding.base64.Base64
```


## function \_assemble32


```haxe
function _assemble32(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte):Void
```


[\(view code\)](<./Base64.hx#L33>)


## function \_assemble64


```haxe
function _assemble64(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte, _n5:stdgo.GoByte, _n6:stdgo.GoByte, _n7:stdgo.GoByte, _n8:stdgo.GoByte):Void
```


[\(view code\)](<./Base64.hx#L34>)


## function \_funnyRef


```haxe
function _funnyRef(_ref:stdgo.GoString):Void
```


[\(view code\)](<./Base64.hx#L40>)


## function \_rawRef


```haxe
function _rawRef(_ref:stdgo.GoString):Void
```


[\(view code\)](<./Base64.hx#L38>)


## function \_rawURLRef


```haxe
function _rawURLRef(_ref:stdgo.GoString):Void
```


[\(view code\)](<./Base64.hx#L39>)


## function \_stdRef


```haxe
function _stdRef(_ref:stdgo.GoString):Void
```


[\(view code\)](<./Base64.hx#L36>)


## function \_testEqual


```haxe
function _testEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void
```


[\(view code\)](<./Base64.hx#L41>)


## function \_urlRef


```haxe
function _urlRef(_ref:stdgo.GoString):Void
```


[\(view code\)](<./Base64.hx#L37>)


## function benchmarkDecodeString


```haxe
function benchmarkDecodeString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Base64.hx#L59>)


## function benchmarkEncodeToString


```haxe
function benchmarkEncodeToString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Base64.hx#L58>)


## function benchmarkNewEncoding


```haxe
function benchmarkNewEncoding(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Base64.hx#L60>)


## function newDecoder


```haxe
function newDecoder(_enc:stdgo.Ref<stdgo.encoding.base64.Encoding>, _r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Base64.hx#L35>)


## function newEncoder


```haxe
function newEncoder(_enc:stdgo.Ref<stdgo.encoding.base64.Encoding>, _w:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Base64.hx#L32>)


## function newEncoding


```haxe
function newEncoding(_encoder:stdgo.GoString):Void
```


[\(view code\)](<./Base64.hx#L31>)


## function testBig


```haxe
function testBig(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L52>)


## function testDecode


```haxe
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L45>)


## function testDecodeBounds


```haxe
function testDecodeBounds(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L49>)


## function testDecodeCorrupt


```haxe
function testDecodeCorrupt(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L48>)


## function testDecodedLen


```haxe
function testDecodedLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L51>)


## function testDecoder


```haxe
function testDecoder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L46>)


## function testDecoderBuffering


```haxe
function testDecoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L47>)


## function testDecoderIssue15656


```haxe
function testDecoderIssue15656(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L57>)


## function testDecoderIssue3577


```haxe
function testDecoderIssue3577(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L54>)


## function testDecoderIssue4779


```haxe
function testDecoderIssue4779(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L55>)


## function testDecoderIssue7733


```haxe
function testDecoderIssue7733(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L56>)


## function testDecoderRaw


```haxe
function testDecoderRaw(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L61>)


## function testEncode


```haxe
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L42>)


## function testEncodedLen


```haxe
function testEncodedLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L50>)


## function testEncoder


```haxe
function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L43>)


## function testEncoderBuffering


```haxe
function testEncoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L44>)


## function testNewLineCharacters


```haxe
function testNewLineCharacters(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Base64.hx#L53>)


# Typedefs


```haxe
import stdgo.encoding.base64.*
```


## typedef CorruptInputError


```haxe
typedef CorruptInputError = stdgo._internal.encoding.base64.CorruptInputError;
```


## typedef CorruptInputError\_asInterface


```haxe
typedef CorruptInputError_asInterface = Dynamic;
```


## typedef CorruptInputError\_static\_extension


```haxe
typedef CorruptInputError_static_extension = Dynamic;
```


## typedef Encoding


```haxe
typedef Encoding = Dynamic;
```


## typedef Encoding\_asInterface


```haxe
typedef Encoding_asInterface = Dynamic;
```


## typedef Encoding\_static\_extension


```haxe
typedef Encoding_static_extension = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.encoding.base64.T__struct_0;
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
typedef T__struct_1 = stdgo._internal.encoding.base64.T__struct_1;
```


## typedef T\_\_struct\_1\_asInterface


```haxe
typedef T__struct_1_asInterface = Dynamic;
```


## typedef T\_\_struct\_1\_static\_extension


```haxe
typedef T__struct_1_static_extension = Dynamic;
```


## typedef T\_decoder


```haxe
typedef T_decoder = Dynamic;
```


## typedef T\_decoder\_asInterface


```haxe
typedef T_decoder_asInterface = Dynamic;
```


## typedef T\_decoder\_static\_extension


```haxe
typedef T_decoder_static_extension = Dynamic;
```


## typedef T\_encoder


```haxe
typedef T_encoder = Dynamic;
```


## typedef T\_encoder\_asInterface


```haxe
typedef T_encoder_asInterface = Dynamic;
```


## typedef T\_encoder\_static\_extension


```haxe
typedef T_encoder_static_extension = Dynamic;
```


## typedef T\_encodingTest


```haxe
typedef T_encodingTest = Dynamic;
```


## typedef T\_faultInjectReader


```haxe
typedef T_faultInjectReader = Dynamic;
```


## typedef T\_faultInjectReader\_asInterface


```haxe
typedef T_faultInjectReader_asInterface = Dynamic;
```


## typedef T\_faultInjectReader\_static\_extension


```haxe
typedef T_faultInjectReader_static_extension = Dynamic;
```


## typedef T\_newlineFilteringReader


```haxe
typedef T_newlineFilteringReader = Dynamic;
```


## typedef T\_newlineFilteringReader\_asInterface


```haxe
typedef T_newlineFilteringReader_asInterface = Dynamic;
```


## typedef T\_newlineFilteringReader\_static\_extension


```haxe
typedef T_newlineFilteringReader_static_extension = Dynamic;
```


## typedef T\_nextRead


```haxe
typedef T_nextRead = Dynamic;
```


## typedef T\_testpair


```haxe
typedef T_testpair = Dynamic;
```



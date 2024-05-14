# Module: `stdgo.encoding.base64`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Base64](<#class-base64>)

  - [`function benchmarkDecodeString(b:stdgo._internal.testing.B):Void`](<#base64-function-benchmarkdecodestring>)

  - [`function benchmarkEncodeToString(b:stdgo._internal.testing.B):Void`](<#base64-function-benchmarkencodetostring>)

  - [`function benchmarkNewEncoding(b:stdgo._internal.testing.B):Void`](<#base64-function-benchmarknewencoding>)

  - [`function newDecoder(enc:stdgo.encoding.base64.Encoding, r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#base64-function-newdecoder>)

  - [`function newEncoder(enc:stdgo.encoding.base64.Encoding, w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser`](<#base64-function-newencoder>)

  - [`function newEncoding(encoder:String):stdgo.encoding.base64.Encoding`](<#base64-function-newencoding>)

  - [`function testBig(t:stdgo._internal.testing.T_):Void`](<#base64-function-testbig>)

  - [`function testDecode(t:stdgo._internal.testing.T_):Void`](<#base64-function-testdecode>)

  - [`function testDecodeBounds(t:stdgo._internal.testing.T_):Void`](<#base64-function-testdecodebounds>)

  - [`function testDecodeCorrupt(t:stdgo._internal.testing.T_):Void`](<#base64-function-testdecodecorrupt>)

  - [`function testDecodedLen(t:stdgo._internal.testing.T_):Void`](<#base64-function-testdecodedlen>)

  - [`function testDecoder(t:stdgo._internal.testing.T_):Void`](<#base64-function-testdecoder>)

  - [`function testDecoderBuffering(t:stdgo._internal.testing.T_):Void`](<#base64-function-testdecoderbuffering>)

  - [`function testDecoderIssue15656(t:stdgo._internal.testing.T_):Void`](<#base64-function-testdecoderissue15656>)

  - [`function testDecoderIssue3577(t:stdgo._internal.testing.T_):Void`](<#base64-function-testdecoderissue3577>)

  - [`function testDecoderIssue4779(t:stdgo._internal.testing.T_):Void`](<#base64-function-testdecoderissue4779>)

  - [`function testDecoderIssue7733(t:stdgo._internal.testing.T_):Void`](<#base64-function-testdecoderissue7733>)

  - [`function testDecoderRaw(t:stdgo._internal.testing.T_):Void`](<#base64-function-testdecoderraw>)

  - [`function testEncode(t:stdgo._internal.testing.T_):Void`](<#base64-function-testencode>)

  - [`function testEncodedLen(t:stdgo._internal.testing.T_):Void`](<#base64-function-testencodedlen>)

  - [`function testEncoder(t:stdgo._internal.testing.T_):Void`](<#base64-function-testencoder>)

  - [`function testEncoderBuffering(t:stdgo._internal.testing.T_):Void`](<#base64-function-testencoderbuffering>)

  - [`function testNewLineCharacters(t:stdgo._internal.testing.T_):Void`](<#base64-function-testnewlinecharacters>)

- [typedef CorruptInputError](<#typedef-corruptinputerror>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [abstract Encoding](<#abstract-encoding>)

- [abstract T\_encoder](<#abstract-t_encoder>)

- [abstract T\_decoder](<#abstract-t_decoder>)

- [abstract T\_newlineFilteringReader](<#abstract-t_newlinefilteringreader>)

- [abstract T\_testpair](<#abstract-t_testpair>)

- [abstract T\_encodingTest](<#abstract-t_encodingtest>)

- [abstract T\_nextRead](<#abstract-t_nextread>)

- [abstract T\_faultInjectReader](<#abstract-t_faultinjectreader>)

# Constants


```haxe
import stdgo.encoding.base64.Base64
```


```haxe
final noPadding:Int = stdgo._internal.encoding.base64.Base64.noPadding
```


```haxe
final stdPadding:Int = stdgo._internal.encoding.base64.Base64.stdPadding
```


# Variables


```haxe
import stdgo.encoding.base64.Base64
```


```haxe
var rawStdEncoding:stdgo._internal.encoding.base64.Encoding
```


```haxe
var rawURLEncoding:stdgo._internal.encoding.base64.Encoding
```


```haxe
var stdEncoding:stdgo._internal.encoding.base64.Encoding
```


```haxe
var urlencoding:stdgo._internal.encoding.base64.Encoding
```


# Classes


```haxe
import stdgo.encoding.base64.*
```


## class Base64



Package base64 implements base64 encoding as specified by RFC 4648.  

### Base64 function benchmarkDecodeString


```haxe
function benchmarkDecodeString(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Base64.hx#L413>)


### Base64 function benchmarkEncodeToString


```haxe
function benchmarkEncodeToString(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Base64.hx#L410>)


### Base64 function benchmarkNewEncoding


```haxe
function benchmarkNewEncoding(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Base64.hx#L416>)


### Base64 function newDecoder


```haxe
function newDecoder(enc:stdgo.encoding.base64.Encoding, r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```



NewDecoder constructs a new base64 stream decoder.  

[\(view code\)](<./Base64.hx#L356>)


### Base64 function newEncoder


```haxe
function newEncoder(enc:stdgo.encoding.base64.Encoding, w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser
```


```
NewEncoder returns a new base64 stream encoder. Data written to
        the returned writer will be encoded using enc and then written to w.
        Base64 encodings operate in 4-byte blocks; when finished
        writing, the caller must Close the returned encoder to flush any
        partially written blocks.
```
[\(view code\)](<./Base64.hx#L350>)


### Base64 function newEncoding


```haxe
function newEncoding(encoder:String):stdgo.encoding.base64.Encoding
```


```
NewEncoding returns a new padded Encoding defined by the given alphabet,
        which must be a 64-byte string that does not contain the padding character
        or CR / LF ('\r', '\n'). The alphabet is treated as sequence of byte values
        without any special treatment for multi-byte UTF-8.
        The resulting Encoding uses the default padding character ('='),
        which may be changed or disabled via WithPadding.
```
[\(view code\)](<./Base64.hx#L340>)


### Base64 function testBig


```haxe
function testBig(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L389>)


### Base64 function testDecode


```haxe
function testDecode(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L368>)


### Base64 function testDecodeBounds


```haxe
function testDecodeBounds(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L380>)


### Base64 function testDecodeCorrupt


```haxe
function testDecodeCorrupt(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L377>)


### Base64 function testDecodedLen


```haxe
function testDecodedLen(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L386>)


### Base64 function testDecoder


```haxe
function testDecoder(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L371>)


### Base64 function testDecoderBuffering


```haxe
function testDecoderBuffering(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L374>)


### Base64 function testDecoderIssue15656


```haxe
function testDecoderIssue15656(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L407>)


### Base64 function testDecoderIssue3577


```haxe
function testDecoderIssue3577(t:stdgo._internal.testing.T_):Void
```



tests that we don't ignore errors from our underlying reader  

[\(view code\)](<./Base64.hx#L398>)


### Base64 function testDecoderIssue4779


```haxe
function testDecoderIssue4779(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L401>)


### Base64 function testDecoderIssue7733


```haxe
function testDecoderIssue7733(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L404>)


### Base64 function testDecoderRaw


```haxe
function testDecoderRaw(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L419>)


### Base64 function testEncode


```haxe
function testEncode(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L359>)


### Base64 function testEncodedLen


```haxe
function testEncodedLen(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L383>)


### Base64 function testEncoder


```haxe
function testEncoder(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L362>)


### Base64 function testEncoderBuffering


```haxe
function testEncoderBuffering(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L365>)


### Base64 function testNewLineCharacters


```haxe
function testNewLineCharacters(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L392>)


# Typedefs


```haxe
import stdgo.encoding.base64.*
```


## typedef CorruptInputError


```haxe
typedef CorruptInputError = stdgo._internal.encoding.base64.CorruptInputError;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.encoding.base64.T__struct_0;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.encoding.base64.T__struct_1;
```


# Abstracts


## abstract Encoding


[\(view file containing code\)](<./Base64.hx>)


## abstract T\_encoder


[\(view file containing code\)](<./Base64.hx>)


## abstract T\_decoder


[\(view file containing code\)](<./Base64.hx>)


## abstract T\_newlineFilteringReader


[\(view file containing code\)](<./Base64.hx>)


## abstract T\_testpair


[\(view file containing code\)](<./Base64.hx>)


## abstract T\_encodingTest


[\(view file containing code\)](<./Base64.hx>)


## abstract T\_nextRead


[\(view file containing code\)](<./Base64.hx>)


## abstract T\_faultInjectReader


[\(view file containing code\)](<./Base64.hx>)



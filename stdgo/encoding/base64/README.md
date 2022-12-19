# Module: `stdgo.encoding.base64`

[(view library index)](../../stdgo.md)


# Overview


Package base64 implements base64 encoding as specified by RFC 4648. 


<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
=== RUN   TestEncode
Encode() = FPucA9k, want FPucA9k=
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
=== RUN   TestEncode
Encode(���) = FPucA9k, want FPucA9k=
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
```
</p>
</details>


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _assemble32(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte):{_1:Bool, _0:stdgo.GoUInt32}`](<#function-_assemble32>)

- [`function _assemble64(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte, _n5:stdgo.GoByte, _n6:stdgo.GoByte, _n7:stdgo.GoByte, _n8:stdgo.GoByte):{_1:Bool, _0:stdgo.GoUInt64}`](<#function-_assemble64>)

- [`function _funnyRef(_ref:stdgo.GoString):stdgo.GoString`](<#function-_funnyref>)

- [`function _rawRef(_ref:stdgo.GoString):stdgo.GoString`](<#function-_rawref>)

- [`function _rawURLRef(_ref:stdgo.GoString):stdgo.GoString`](<#function-_rawurlref>)

- [`function _stdRef(_ref:stdgo.GoString):stdgo.GoString`](<#function-_stdref>)

- [`function _testEqual(_t:stdgo.Ref<stdgo.testing.T>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Bool`](<#function-_testequal>)

- [`function _urlRef(_ref:stdgo.GoString):stdgo.GoString`](<#function-_urlref>)

- [`function benchmarkDecodeString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecodestring>)

- [`function benchmarkEncodeToString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkencodetostring>)

- [`function newDecoder(_enc:stdgo.Ref<stdgo.encoding.base64.Encoding>, _r:stdgo.io.Reader):stdgo.io.Reader`](<#function-newdecoder>)

- [`function newEncoder(_enc:stdgo.Ref<stdgo.encoding.base64.Encoding>, _w:stdgo.io.Writer):stdgo.io.WriteCloser`](<#function-newencoder>)

- [`function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<stdgo.encoding.base64.Encoding>`](<#function-newencoding>)

- [`function testBig(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbig>)

- [`function testDecode(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecode>)

- [`function testDecodeBounds(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecodebounds>)

- [`function testDecodeCorrupt(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecodecorrupt>)

- [`function testDecodedLen(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecodedlen>)

- [`function testDecoder(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecoder>)

- [`function testDecoderBuffering(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecoderbuffering>)

- [`function testDecoderIssue15656(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecoderissue15656>)

- [`function testDecoderIssue3577(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecoderissue3577>)

- [`function testDecoderIssue4779(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecoderissue4779>)

- [`function testDecoderIssue7733(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecoderissue7733>)

- [`function testDecoderRaw(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecoderraw>)

- [`function testEncode(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testencode>)

- [`function testEncodedLen(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testencodedlen>)

- [`function testEncoder(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testencoder>)

- [`function testEncoderBuffering(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testencoderbuffering>)

- [`function testNewLineCharacters(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnewlinecharacters>)

- [class CorruptInputError\_static\_extension](<#class-corruptinputerror_static_extension>)

  - [`function error():stdgo.GoString`](<#corruptinputerror_static_extension-function-error>)

- [class Encoding](<#class-encoding>)

  - [`function new(?_encode:stdgo.GoArray<stdgo.GoUInt8>, ?_decodeMap:stdgo.GoArray<stdgo.GoUInt8>, ?_padChar:stdgo.GoInt32, ?_strict:Bool):Void`](<#encoding-function-new>)

  - [`function _decodeQuantum( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoInt}`](<#encoding-function-_decodequantum>)

  - [`function decode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#encoding-function-decode>)

  - [`function decodeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}`](<#encoding-function-decodestring>)

  - [`function decodedLen( _n:stdgo.GoInt):stdgo.GoInt`](<#encoding-function-decodedlen>)

  - [`function encode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void`](<#encoding-function-encode>)

  - [`function encodeToString( _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString`](<#encoding-function-encodetostring>)

  - [`function encodedLen( _n:stdgo.GoInt):stdgo.GoInt`](<#encoding-function-encodedlen>)

  - [`function strict():stdgo.Ref<stdgo.encoding.base64.Encoding>`](<#encoding-function-strict>)

  - [`function withPadding( _padding:stdgo.GoRune):stdgo.Ref<stdgo.encoding.base64.Encoding>`](<#encoding-function-withpadding>)

- [class Encoding\_static\_extension](<#class-encoding_static_extension>)

  - [`function _decodeQuantum( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoInt}`](<#encoding_static_extension-function-_decodequantum>)

  - [`function decode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#encoding_static_extension-function-decode>)

  - [`function decodeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}`](<#encoding_static_extension-function-decodestring>)

  - [`function decodedLen( _n:stdgo.GoInt):stdgo.GoInt`](<#encoding_static_extension-function-decodedlen>)

  - [`function encode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void`](<#encoding_static_extension-function-encode>)

  - [`function encodeToString( _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString`](<#encoding_static_extension-function-encodetostring>)

  - [`function encodedLen( _n:stdgo.GoInt):stdgo.GoInt`](<#encoding_static_extension-function-encodedlen>)

  - [`function strict():stdgo.Ref<stdgo.encoding.base64.Encoding>`](<#encoding_static_extension-function-strict>)

  - [`function withPadding( _padding:stdgo.GoRune):stdgo.Ref<stdgo.encoding.base64.Encoding>`](<#encoding_static_extension-function-withpadding>)

- [class T\_decoder\_static\_extension](<#class-t_decoder_static_extension>)

  - [`function read(_d:stdgo.Ref<stdgo.encoding.base64._Base64.T_decoder>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_decoder_static_extension-function-read>)

- [class T\_encoder\_static\_extension](<#class-t_encoder_static_extension>)

  - [`function close(_e:stdgo.Ref<stdgo.encoding.base64._Base64.T_encoder>):stdgo.Error`](<#t_encoder_static_extension-function-close>)

  - [`function write(_e:stdgo.Ref<stdgo.encoding.base64._Base64.T_encoder>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_encoder_static_extension-function-write>)

- [class T\_faultInjectReader\_static\_extension](<#class-t_faultinjectreader_static_extension>)

  - [`function read(_r:stdgo.Ref<stdgo.encoding.base64._Base64.T_faultInjectReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_faultinjectreader_static_extension-function-read>)

- [class T\_newlineFilteringReader\_static\_extension](<#class-t_newlinefilteringreader_static_extension>)

  - [`function read(_r:stdgo.Ref<stdgo.encoding.base64._Base64.T_newlineFilteringReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_newlinefilteringreader_static_extension-function-read>)

- [typedef CorruptInputError](<#typedef-corruptinputerror>)

  - [`function error():stdgo.GoString`](<#corruptinputerror-function-error>)

# Examples


- [`exampleNewEncoder`](<#examplenewencoder>)

# Constants


```haxe
import stdgo.encoding.base64.Base64
```


```haxe
final noPadding:stdgo.GoRune = ((-1 : GoInt32))
```


No padding 


```haxe
final stdPadding:stdgo.GoRune = ((61 : GoInt32))
```


Standard padding character 


# Variables


```haxe
import stdgo.encoding.base64.Base64
```


```haxe
var rawStdEncoding:stdgo.Ref<stdgo.encoding.base64.Encoding>
```


RawStdEncoding is the standard raw, unpadded base64 encoding,��// as defined in RFC 4648 section 3.2.��// This is the same as StdEncoding but omits padding characters. 


```haxe
var rawURLEncoding:stdgo.Ref<stdgo.encoding.base64.Encoding>
```


RawURLEncoding is the unpadded alternate base64 encoding defined in RFC 4648.��// It is typically used in URLs and file names.��// This is the same as URLEncoding but omits padding characters. 


```haxe
var stdEncoding:stdgo.Ref<stdgo.encoding.base64.Encoding>
```


StdEncoding is the standard base64 encoding, as defined in��// RFC 4648. 


```haxe
var urlencoding:stdgo.Ref<stdgo.encoding.base64.Encoding>
```


URLEncoding is the alternate base64 encoding defined in RFC 4648.��// It is typically used in URLs and file names. 


# Functions


```haxe
import stdgo.encoding.base64.Base64
```


## function \_assemble32


```haxe
function _assemble32(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte):{_1:Bool, _0:stdgo.GoUInt32}
```


assemble32 assembles 4 base64 digits into 3 bytes.��// Each digit comes from the decode map, and will be 0xff��// if it came from an invalid character. 


[\(view code\)](<./Base64.hx#L399>)


## function \_assemble64


```haxe
function _assemble64(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte, _n5:stdgo.GoByte, _n6:stdgo.GoByte, _n7:stdgo.GoByte, _n8:stdgo.GoByte):{_1:Bool, _0:stdgo.GoUInt64}
```


assemble64 assembles 8 base64 digits into 6 bytes.��// Each digit comes from the decode map, and will be 0xff��// if it came from an invalid character. 


[\(view code\)](<./Base64.hx#L414>)


## function \_funnyRef


```haxe
function _funnyRef(_ref:stdgo.GoString):stdgo.GoString
```


 


[\(view code\)](<./Base64.hx#L462>)


## function \_rawRef


```haxe
function _rawRef(_ref:stdgo.GoString):stdgo.GoString
```


Convert a reference string to raw, unpadded format 


[\(view code\)](<./Base64.hx#L451>)


## function \_rawURLRef


```haxe
function _rawURLRef(_ref:stdgo.GoString):stdgo.GoString
```


Both URL and unpadding conversions 


[\(view code\)](<./Base64.hx#L458>)


## function \_stdRef


```haxe
function _stdRef(_ref:stdgo.GoString):stdgo.GoString
```


Do nothing to a reference base64 string \(leave in standard format\) 


[\(view code\)](<./Base64.hx#L435>)


## function \_testEqual


```haxe
function _testEqual(_t:stdgo.Ref<stdgo.testing.T>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Bool
```


 


[\(view code\)](<./Base64.hx#L466>)


## function \_urlRef


```haxe
function _urlRef(_ref:stdgo.GoString):stdgo.GoString
```


Convert a reference string to URL\-encoding 


[\(view code\)](<./Base64.hx#L442>)


## function benchmarkDecodeString


```haxe
function benchmarkDecodeString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Base64.hx#L910>)


## function benchmarkEncodeToString


```haxe
function benchmarkEncodeToString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Base64.hx#L899>)


## function newDecoder


```haxe
function newDecoder(_enc:stdgo.Ref<stdgo.encoding.base64.Encoding>, _r:stdgo.io.Reader):stdgo.io.Reader
```


NewDecoder constructs a new base64 stream decoder. 


[\(view code\)](<./Base64.hx#L427>)


## function newEncoder


```haxe
function newEncoder(_enc:stdgo.Ref<stdgo.encoding.base64.Encoding>, _w:stdgo.io.Writer):stdgo.io.WriteCloser
```


NewEncoder returns a new base64 stream encoder. Data written to��// the returned writer will be encoded using enc and then written to w.��// Base64 encodings operate in 4\-byte blocks; when finished��// writing, the caller must Close the returned encoder to flush any��// partially written blocks. 


### exampleNewEncoder


<details><summary></summary>
<p>


```haxe
function exampleNewEncoder():Void {
	var _input = (Go.str("foo", 0, "bar") : Slice<GoByte>);
	var _encoder:stdgo.io.Io.WriteCloser = stdgo.encoding.base64.Base64.newEncoder(stdgo.encoding.base64.Base64.stdEncoding,
		Go.asInterface(stdgo.os.Os.stdout));
	_encoder.write(_input);
	_encoder.close();
}
```


</p>
</details>


[\(view code\)](<./Base64.hx#L390>)


## function newEncoding


```haxe
function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<stdgo.encoding.base64.Encoding>
```


NewEncoding returns a new padded Encoding defined by the given alphabet,��// which must be a 64\-byte string that does not contain the padding character��// or CR / LF \('\\r', '\\n'\).��// The resulting Encoding uses the default padding character \('='\),��// which may be changed or disabled via WithPadding. 


[\(view code\)](<./Base64.hx#L353>)


## function testBig


```haxe
function testBig(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L739>)


## function testDecode


```haxe
function testDecode(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L527>)


## function testDecodeBounds


```haxe
function testDecodeBounds(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L653>)


## function testDecodeCorrupt


```haxe
function testDecodeCorrupt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L610>)


## function testDecodedLen


```haxe
function testDecodedLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L722>)


## function testDecoder


```haxe
function testDecoder(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L553>)


## function testDecoderBuffering


```haxe
function testDecoderBuffering(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L578>)


## function testDecoderIssue15656


```haxe
function testDecoderIssue15656(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L875>)


## function testDecoderIssue3577


```haxe
function testDecoderIssue3577(_t:stdgo.Ref<stdgo.testing.T>):Void
```


tests that we don't ignore errors from our underlying reader 


[\(view code\)](<./Base64.hx#L808>)


## function testDecoderIssue4779


```haxe
function testDecoderIssue4779(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L837>)


## function testDecoderIssue7733


```haxe
function testDecoderIssue7733(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L862>)


## function testDecoderRaw


```haxe
function testDecoderRaw(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L931>)


## function testEncode


```haxe
function testEncode(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L476>)


## function testEncodedLen


```haxe
function testEncodedLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L703>)


## function testEncoder


```haxe
function testEncoder(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L485>)


## function testEncoderBuffering


```haxe
function testEncoderBuffering(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L496>)


## function testNewLineCharacters


```haxe
function testNewLineCharacters(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Base64.hx#L783>)


# Classes


```haxe
import stdgo.encoding.base64.*
```


## class CorruptInputError\_static\_extension


 


### CorruptInputError\_static\_extension function error


```haxe
function error():stdgo.GoString
```


 


[\(view code\)](<./Base64.hx#L1694>)


## class Encoding


An Encoding is a radix 64 encoding/decoding scheme, defined by a��// 64\-character alphabet. The most common encoding is the "base64"��// encoding defined in RFC 4648 and used in MIME \(RFC 2045\) and PEM��// \(RFC 1421\).  RFC 4648 also defines an alternate encoding, which is��// the standard encoding with \- and \_ substituted for \+ and /. 


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


 


[\(view code\)](<./Base64.hx#L98>)


### Encoding function \_decodeQuantum


```haxe
function _decodeQuantum( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoInt}
```


decodeQuantum decodes up to 4 base64 bytes. The received parameters are���// the destination buffer dst, the source buffer src and an index in the���// source buffer si.���// It returns the number of bytes read from src, the number of bytes written���// to dst, and an error, if any. 


[\(view code\)](<./Base64.hx#L1179>)


### Encoding function decode


```haxe
function decode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Decode decodes src using the encoding enc. It writes at most���// DecodedLen\(len\(src\)\) bytes to dst and returns the number of bytes���// written. If src contains invalid base64 data, it will return the���// number of bytes successfully written and CorruptInputError.���// New line characters \(\\r and \\n\) are ignored. 


[\(view code\)](<./Base64.hx#L1082>)


### Encoding function decodeString


```haxe
function decodeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```


DecodeString returns the bytes represented by the base64 string s. 


[\(view code\)](<./Base64.hx#L1162>)


### Encoding function decodedLen


```haxe
function decodedLen( _n:stdgo.GoInt):stdgo.GoInt
```


DecodedLen returns the maximum length in bytes of the decoded data���// corresponding to n bytes of base64\-encoded data. 


[\(view code\)](<./Base64.hx#L1067>)


### Encoding function encode


```haxe
function encode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void
```


Encode encodes src using the encoding enc, writing���// EncodedLen\(len\(src\)\) bytes to dst.���//���// The encoding pads the output to a multiple of 4 bytes,���// so Encode is not appropriate for use on individual blocks���// of a large data stream. Use NewEncoder\(\) instead. 


[\(view code\)](<./Base64.hx#L1313>)


### Encoding function encodeToString


```haxe
function encodeToString( _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString
```


EncodeToString returns the base64 encoding of src. 


[\(view code\)](<./Base64.hx#L1297>)


### Encoding function encodedLen


```haxe
function encodedLen( _n:stdgo.GoInt):stdgo.GoInt
```


EncodedLen returns the length in bytes of the base64 encoding���// of an input buffer of length n. 


[\(view code\)](<./Base64.hx#L1286>)


### Encoding function strict


```haxe
function strict():stdgo.Ref<stdgo.encoding.base64.Encoding>
```


Strict creates a new encoding identical to enc except with���// strict decoding enabled. In this mode, the decoder requires that���// trailing padding bits are zero, as described in RFC 4648 section 3.5.���//���// Note that the input is still malleable, as new line characters���// \(CR and LF\) are still ignored. 


[\(view code\)](<./Base64.hx#L1365>)


### Encoding function withPadding


```haxe
function withPadding( _padding:stdgo.GoRune):stdgo.Ref<stdgo.encoding.base64.Encoding>
```


WithPadding creates a new encoding identical to enc except���// with a specified padding character, or NoPadding to disable padding.���// The padding character must not be '\\r' or '\\n', must not���// be contained in the encoding's alphabet and must be a rune equal or���// below '\\xff'. 


[\(view code\)](<./Base64.hx#L1378>)


## class Encoding\_static\_extension


 


### Encoding\_static\_extension function \_decodeQuantum


```haxe
function _decodeQuantum( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoInt}
```


decodeQuantum decodes up to 4 base64 bytes. The received parameters are���// the destination buffer dst, the source buffer src and an index in the���// source buffer si.���// It returns the number of bytes read from src, the number of bytes written���// to dst, and an error, if any. 


[\(view code\)](<./Base64.hx#L1179>)


### Encoding\_static\_extension function decode


```haxe
function decode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Decode decodes src using the encoding enc. It writes at most���// DecodedLen\(len\(src\)\) bytes to dst and returns the number of bytes���// written. If src contains invalid base64 data, it will return the���// number of bytes successfully written and CorruptInputError.���// New line characters \(\\r and \\n\) are ignored. 


[\(view code\)](<./Base64.hx#L1082>)


### Encoding\_static\_extension function decodeString


```haxe
function decodeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```


DecodeString returns the bytes represented by the base64 string s. 


[\(view code\)](<./Base64.hx#L1162>)


### Encoding\_static\_extension function decodedLen


```haxe
function decodedLen( _n:stdgo.GoInt):stdgo.GoInt
```


DecodedLen returns the maximum length in bytes of the decoded data���// corresponding to n bytes of base64\-encoded data. 


[\(view code\)](<./Base64.hx#L1067>)


### Encoding\_static\_extension function encode


```haxe
function encode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void
```


Encode encodes src using the encoding enc, writing���// EncodedLen\(len\(src\)\) bytes to dst.���//���// The encoding pads the output to a multiple of 4 bytes,���// so Encode is not appropriate for use on individual blocks���// of a large data stream. Use NewEncoder\(\) instead. 


[\(view code\)](<./Base64.hx#L1313>)


### Encoding\_static\_extension function encodeToString


```haxe
function encodeToString( _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString
```


EncodeToString returns the base64 encoding of src. 


[\(view code\)](<./Base64.hx#L1297>)


### Encoding\_static\_extension function encodedLen


```haxe
function encodedLen( _n:stdgo.GoInt):stdgo.GoInt
```


EncodedLen returns the length in bytes of the base64 encoding���// of an input buffer of length n. 


[\(view code\)](<./Base64.hx#L1286>)


### Encoding\_static\_extension function strict


```haxe
function strict():stdgo.Ref<stdgo.encoding.base64.Encoding>
```


Strict creates a new encoding identical to enc except with���// strict decoding enabled. In this mode, the decoder requires that���// trailing padding bits are zero, as described in RFC 4648 section 3.5.���//���// Note that the input is still malleable, as new line characters���// \(CR and LF\) are still ignored. 


[\(view code\)](<./Base64.hx#L1365>)


### Encoding\_static\_extension function withPadding


```haxe
function withPadding( _padding:stdgo.GoRune):stdgo.Ref<stdgo.encoding.base64.Encoding>
```


WithPadding creates a new encoding identical to enc except���// with a specified padding character, or NoPadding to disable padding.���// The padding character must not be '\\r' or '\\n', must not���// be contained in the encoding's alphabet and must be a rune equal or���// below '\\xff'. 


[\(view code\)](<./Base64.hx#L1378>)


## class T\_decoder\_static\_extension


 


### T\_decoder\_static\_extension function read


```haxe
function read(_d:stdgo.Ref<stdgo.encoding.base64._Base64.T_decoder>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Base64.hx#L1519>)


## class T\_encoder\_static\_extension


 


### T\_encoder\_static\_extension function close


```haxe
function close(_e:stdgo.Ref<stdgo.encoding.base64._Base64.T_encoder>):stdgo.Error
```


Close flushes any pending output from the encoder.���// It is an error to call Write after calling Close. 


[\(view code\)](<./Base64.hx#L1428>)


### T\_encoder\_static\_extension function write


```haxe
function write(_e:stdgo.Ref<stdgo.encoding.base64._Base64.T_encoder>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Base64.hx#L1441>)


## class T\_faultInjectReader\_static\_extension


 


### T\_faultInjectReader\_static\_extension function read


```haxe
function read(_r:stdgo.Ref<stdgo.encoding.base64._Base64.T_faultInjectReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Base64.hx#L1662>)


## class T\_newlineFilteringReader\_static\_extension


 


### T\_newlineFilteringReader\_static\_extension function read


```haxe
function read(_r:stdgo.Ref<stdgo.encoding.base64._Base64.T_newlineFilteringReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Base64.hx#L1614>)


# Typedefs


```haxe
import stdgo.encoding.base64.*
```


## typedef CorruptInputError


```haxe
typedef CorruptInputError = var x:{<>}
```


 


### CorruptInputError function error


```haxe
function error():stdgo.GoString
```


 


[\(view code\)](<./Base64.hx#L1694>)



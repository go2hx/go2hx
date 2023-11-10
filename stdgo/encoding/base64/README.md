# Module: `stdgo.encoding.base64`

[(view library index)](../../stdgo.md)


# Overview



Package base64 implements base64 encoding as specified by RFC 4648.  


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

- [`function _testEqual(_t:stdgo.Ref<stdgo.testing.T>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Bool`](<#function-_testequal>)

- [`function _urlRef(_ref:stdgo.GoString):stdgo.GoString`](<#function-_urlref>)

- [`function benchmarkDecodeString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecodestring>)

- [`function benchmarkEncodeToString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkencodetostring>)

- [`function benchmarkNewEncoding(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarknewencoding>)

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

- [class Encoding](<#class-encoding>)

  - [`function new(?_encode:stdgo.GoArray<stdgo.GoUInt8>, ?_decodeMap:stdgo.GoArray<stdgo.GoUInt8>, ?_padChar:stdgo.GoInt32, ?_strict:Bool):Void`](<#encoding-function-new>)

  - [`function _decodeQuantum( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoInt;}`](<#encoding-function-_decodequantum>)

  - [`function decode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#encoding-function-decode>)

  - [`function decodeString( _s:stdgo.GoString):{ _1:stdgo.Error; _0:stdgo.Slice<stdgo.GoByte>;}`](<#encoding-function-decodestring>)

  - [`function decodedLen( _n:stdgo.GoInt):stdgo.GoInt`](<#encoding-function-decodedlen>)

  - [`function encode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void`](<#encoding-function-encode>)

  - [`function encodeToString( _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString`](<#encoding-function-encodetostring>)

  - [`function encodedLen( _n:stdgo.GoInt):stdgo.GoInt`](<#encoding-function-encodedlen>)

  - [`function strict():stdgo.Ref<stdgo.encoding.base64.Encoding>`](<#encoding-function-strict>)

  - [`function withPadding( _padding:stdgo.GoRune):stdgo.Ref<stdgo.encoding.base64.Encoding>`](<#encoding-function-withpadding>)

- [typedef CorruptInputError](<#typedef-corruptinputerror>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

# Examples


- [`exampleNewEncoder`](<#examplenewencoder>)

# Constants


```haxe
import stdgo.encoding.base64.Base64
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
final noPadding:stdgo.GoInt32 = ((-1 : stdgo.StdGoTypes.GoInt32))
```



No padding  

```haxe
final stdPadding:stdgo.GoInt32 = ((61 : stdgo.StdGoTypes.GoInt32))
```



Standard padding character  

# Variables


```haxe
import stdgo.encoding.base64.Base64
```


```haxe
var _bigtest:stdgo.encoding.base64.T_testpair
```


```haxe
var _encodingTests:stdgo.Slice<stdgo.encoding.base64.T_encodingTest>
```


```haxe
var _funnyEncoding:stdgo.Ref<stdgo.encoding.base64.Encoding>
```



A nonstandard encoding with a funny padding character, for testing  

```haxe
var _pairs:stdgo.Slice<stdgo.encoding.base64.T_testpair>
```


```haxe
var rawStdEncoding:stdgo.Ref<stdgo.encoding.base64.Encoding>
```



RawStdEncoding is the standard raw, unpadded base64 encoding,
as defined in RFC 4648 section 3.2.
This is the same as StdEncoding but omits padding characters.  

```haxe
var rawURLEncoding:stdgo.Ref<stdgo.encoding.base64.Encoding>
```



RawURLEncoding is the unpadded alternate base64 encoding defined in RFC 4648.
It is typically used in URLs and file names.
This is the same as URLEncoding but omits padding characters.  

```haxe
var stdEncoding:stdgo.Ref<stdgo.encoding.base64.Encoding>
```



StdEncoding is the standard base64 encoding, as defined in
RFC 4648.  

```haxe
var urlencoding:stdgo.Ref<stdgo.encoding.base64.Encoding>
```



URLEncoding is the alternate base64 encoding defined in RFC 4648.
It is typically used in URLs and file names.  

# Functions


```haxe
import stdgo.encoding.base64.Base64
```


## function \_assemble32


```haxe
function _assemble32(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte):{
	_1:Bool;
	_0:stdgo.GoUInt32;
}
```



assemble32 assembles 4 base64 digits into 3 bytes.
Each digit comes from the decode map, and will be 0xff
if it came from an invalid character.  

[\(view code\)](<./Base64.hx#L876>)


## function \_assemble64


```haxe
function _assemble64(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte, _n5:stdgo.GoByte, _n6:stdgo.GoByte, _n7:stdgo.GoByte, _n8:stdgo.GoByte):{
	_1:Bool;
	_0:stdgo.GoUInt64;
}
```



assemble64 assembles 8 base64 digits into 6 bytes.
Each digit comes from the decode map, and will be 0xff
if it came from an invalid character.  

[\(view code\)](<./Base64.hx#L888>)


## function \_funnyRef


```haxe
function _funnyRef(_ref:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Base64.hx#L927>)


## function \_rawRef


```haxe
function _rawRef(_ref:stdgo.GoString):stdgo.GoString
```



Convert a reference string to raw, unpadded format  

[\(view code\)](<./Base64.hx#L918>)


## function \_rawURLRef


```haxe
function _rawURLRef(_ref:stdgo.GoString):stdgo.GoString
```



Both URL and unpadding conversions  

[\(view code\)](<./Base64.hx#L924>)


## function \_stdRef


```haxe
function _stdRef(_ref:stdgo.GoString):stdgo.GoString
```



Do nothing to a reference base64 string \(leave in standard format\)  

[\(view code\)](<./Base64.hx#L904>)


## function \_testEqual


```haxe
function _testEqual(_t:stdgo.Ref<stdgo.testing.T>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Bool
```


[\(view code\)](<./Base64.hx#L930>)


## function \_urlRef


```haxe
function _urlRef(_ref:stdgo.GoString):stdgo.GoString
```



Convert a reference string to URL\-encoding  

[\(view code\)](<./Base64.hx#L910>)


## function benchmarkDecodeString


```haxe
function benchmarkDecodeString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Base64.hx#L1332>)


## function benchmarkEncodeToString


```haxe
function benchmarkEncodeToString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Base64.hx#L1322>)


## function benchmarkNewEncoding


```haxe
function benchmarkNewEncoding(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Base64.hx#L1351>)


## function newDecoder


```haxe
function newDecoder(_enc:stdgo.Ref<stdgo.encoding.base64.Encoding>, _r:stdgo.io.Reader):stdgo.io.Reader
```



NewDecoder constructs a new base64 stream decoder.  

[\(view code\)](<./Base64.hx#L898>)


## function newEncoder


```haxe
function newEncoder(_enc:stdgo.Ref<stdgo.encoding.base64.Encoding>, _w:stdgo.io.Writer):stdgo.io.WriteCloser
```



NewEncoder returns a new base64 stream encoder. Data written to
the returned writer will be encoded using enc and then written to w.
Base64 encodings operate in 4\-byte blocks; when finished
writing, the caller must Close the returned encoder to flush any
partially written blocks.  

### exampleNewEncoder


<details><summary></summary>
<p>


```haxe
function exampleNewEncoder():Void {
        var _input = (stdgo.Go.str("foo", 0, "bar") : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _encoder:stdgo.io.Io.WriteCloser = stdgo.encoding.base64.Base64.newEncoder(stdgo.encoding.base64.Base64.stdEncoding, stdgo.Go.asInterface(stdgo.os.Os.stdout));
        _encoder.write(_input);
        _encoder.close();
    }
```


</p>
</details>


[\(view code\)](<./Base64.hx#L868>)


## function newEncoding


```haxe
function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<stdgo.encoding.base64.Encoding>
```



NewEncoding returns a new padded Encoding defined by the given alphabet,
which must be a 64\-byte string that does not contain the padding character
or CR / LF \('\\r', '\\n'\). The alphabet is treated as sequence of byte values
without any special treatment for multi\-byte UTF\-8.
The resulting Encoding uses the default padding character \('='\),
which may be changed or disabled via WithPadding.  

[\(view code\)](<./Base64.hx#L582>)


## function testBig


```haxe
function testBig(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L1176>)


## function testDecode


```haxe
function testDecode(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L981>)


## function testDecodeBounds


```haxe
function testDecodeBounds(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L1095>)


## function testDecodeCorrupt


```haxe
function testDecodeCorrupt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L1046>)


## function testDecodedLen


```haxe
function testDecodedLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L1166>)


## function testDecoder


```haxe
function testDecoder(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L1000>)


## function testDecoderBuffering


```haxe
function testDecoderBuffering(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L1019>)


## function testDecoderIssue15656


```haxe
function testDecoderIssue15656(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L1301>)


## function testDecoderIssue3577


```haxe
function testDecoderIssue3577(_t:stdgo.Ref<stdgo.testing.T>):Void
```



tests that we don't ignore errors from our underlying reader  

[\(view code\)](<./Base64.hx#L1246>)


## function testDecoderIssue4779


```haxe
function testDecoderIssue4779(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L1269>)


## function testDecoderIssue7733


```haxe
function testDecoderIssue7733(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L1291>)


## function testDecoderRaw


```haxe
function testDecoderRaw(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L1363>)


## function testEncode


```haxe
function testEncode(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L939>)


## function testEncodedLen


```haxe
function testEncodedLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L1143>)


## function testEncoder


```haxe
function testEncoder(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L947>)


## function testEncoderBuffering


```haxe
function testEncoderBuffering(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L956>)


## function testNewLineCharacters


```haxe
function testNewLineCharacters(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Base64.hx#L1213>)


# Classes


```haxe
import stdgo.encoding.base64.*
```


## class Encoding



An Encoding is a radix 64 encoding/decoding scheme, defined by a
64\-character alphabet. The most common encoding is the "base64"
encoding defined in RFC 4648 and used in MIME \(RFC 2045\) and PEM
\(RFC 1421\).  RFC 4648 also defines an alternate encoding, which is
the standard encoding with \- and \_ substituted for \+ and /.  

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


[\(view code\)](<./Base64.hx#L391>)


### Encoding function \_decodeQuantum


```haxe
function _decodeQuantum( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```



decodeQuantum decodes up to 4 base64 bytes. The received parameters are
the destination buffer dst, the source buffer src and an index in the
source buffer si.
It returns the number of bytes read from src, the number of bytes written
to dst, and an error, if any.  

[\(view code\)](<./Base64.hx#L1566>)


### Encoding function decode


```haxe
function decode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Decode decodes src using the encoding enc. It writes at most
DecodedLen\(len\(src\)\) bytes to dst and returns the number of bytes
written. If src contains invalid base64 data, it will return the
number of bytes successfully written and CorruptInputError.
New line characters \(\\r and \\n\) are ignored.  

[\(view code\)](<./Base64.hx#L1481>)


### Encoding function decodeString


```haxe
function decodeString( _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



DecodeString returns the bytes represented by the base64 string s.  

[\(view code\)](<./Base64.hx#L1553>)


### Encoding function decodedLen


```haxe
function decodedLen( _n:stdgo.GoInt):stdgo.GoInt
```



DecodedLen returns the maximum length in bytes of the decoded data
corresponding to n bytes of base64\-encoded data.  

[\(view code\)](<./Base64.hx#L1467>)


### Encoding function encode


```haxe
function encode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void
```



Encode encodes src using the encoding enc, writing
EncodedLen\(len\(src\)\) bytes to dst.  


The encoding pads the output to a multiple of 4 bytes,
so Encode is not appropriate for use on individual blocks
of a large data stream. Use NewEncoder\(\) instead.  

[\(view code\)](<./Base64.hx#L1704>)


### Encoding function encodeToString


```haxe
function encodeToString( _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString
```



EncodeToString returns the base64 encoding of src.  

[\(view code\)](<./Base64.hx#L1690>)


### Encoding function encodedLen


```haxe
function encodedLen( _n:stdgo.GoInt):stdgo.GoInt
```



EncodedLen returns the length in bytes of the base64 encoding
of an input buffer of length n.  

[\(view code\)](<./Base64.hx#L1680>)


### Encoding function strict


```haxe
function strict():stdgo.Ref<stdgo.encoding.base64.Encoding>
```



Strict creates a new encoding identical to enc except with
strict decoding enabled. In this mode, the decoder requires that
trailing padding bits are zero, as described in RFC 4648 section 3.5.  


Note that the input is still malleable, as new line characters
\(CR and LF\) are still ignored.  

[\(view code\)](<./Base64.hx#L1754>)


### Encoding function withPadding


```haxe
function withPadding( _padding:stdgo.GoRune):stdgo.Ref<stdgo.encoding.base64.Encoding>
```



WithPadding creates a new encoding identical to enc except
with a specified padding character, or NoPadding to disable padding.
The padding character must not be '\\r' or '\\n', must not
be contained in the encoding's alphabet and must be a rune equal or
below '\\xff'.
Padding characters above '\\x7f' are encoded as their exact byte value
rather than using the UTF\-8 representation of the codepoint.  

[\(view code\)](<./Base64.hx#L1768>)


# Typedefs


```haxe
import stdgo.encoding.base64.*
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
	_enc:stdgo.Ref<stdgo.encoding.base64.Encoding>;
};
```



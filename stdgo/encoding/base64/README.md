# Module: `stdgo.encoding.base64`

[(view library index)](../../stdgo.md)


# Overview


Package base64 implements base64 encoding as specified by RFC 4648.  



<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
stdgo/internal/Macro.macro.hx:35: define
=== RUN  TestEncode
Encode("\x14\xfb\x9c\x03\xd9") = "FPucA9k", want "FPucA9k="
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
stdgo/internal/Macro.macro.hx:35: define
=== RUN  TestEncode
Encode("\x14\xfb\x9c\x03\xd9") = "FPucA9k", want "FPucA9k="
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
stdgo/internal/Macro.macro.hx:35: define
```
</p>
</details>


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

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

  - [`function _decodeQuantum( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoInt}`](<#encoding-function-_decodequantum>)

  - [`function decode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#encoding-function-decode>)

  - [`function decodeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}`](<#encoding-function-decodestring>)

  - [`function decodedLen( _n:stdgo.GoInt):stdgo.GoInt`](<#encoding-function-decodedlen>)

  - [`function encode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void`](<#encoding-function-encode>)

  - [`function encodeToString( _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString`](<#encoding-function-encodetostring>)

  - [`function encodedLen( _n:stdgo.GoInt):stdgo.GoInt`](<#encoding-function-encodedlen>)

  - [`function strict():stdgo.Ref<stdgo.encoding.base64.Encoding>`](<#encoding-function-strict>)

  - [`function withPadding( _padding:stdgo.GoRune):stdgo.Ref<stdgo.encoding.base64.Encoding>`](<#encoding-function-withpadding>)

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


## function benchmarkDecodeString


```haxe
function benchmarkDecodeString(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Base64.hx#L1337>)


## function benchmarkEncodeToString


```haxe
function benchmarkEncodeToString(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Base64.hx#L1327>)


## function benchmarkNewEncoding


```haxe
function benchmarkNewEncoding(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Base64.hx#L1356>)


## function newDecoder


```haxe
function newDecoder(_enc:stdgo.Ref<stdgo.encoding.base64.Encoding>, _r:stdgo.io.Reader):stdgo.io.Reader
```


NewDecoder constructs a new base64 stream decoder.  



[\(view code\)](<./Base64.hx#L906>)


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
        var _input = (Go.str("foo", 0, "bar") : Slice<GoByte>);
        var _encoder:stdgo.io.Io.WriteCloser = stdgo.encoding.base64.Base64.newEncoder(stdgo.encoding.base64.Base64.stdEncoding, Go.asInterface(stdgo.os.Os.stdout));
        _encoder.write(_input);
        _encoder.close();
    }
```


</p>
</details>


[\(view code\)](<./Base64.hx#L876>)


## function newEncoding


```haxe
function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<stdgo.encoding.base64.Encoding>
```


NewEncoding returns a new padded Encoding defined by the given alphabet,  
which must be a 64\-byte string that does not contain the padding character  
or CR / LF \('\\r', '\\n'\).  
The resulting Encoding uses the default padding character \('='\),  
which may be changed or disabled via WithPadding.  



[\(view code\)](<./Base64.hx#L590>)


## function testBig


```haxe
function testBig(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L1181>)


## function testDecode


```haxe
function testDecode(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L989>)


## function testDecodeBounds


```haxe
function testDecodeBounds(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L1103>)


## function testDecodeCorrupt


```haxe
function testDecodeCorrupt(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L1054>)


## function testDecodedLen


```haxe
function testDecodedLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L1171>)


## function testDecoder


```haxe
function testDecoder(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L1008>)


## function testDecoderBuffering


```haxe
function testDecoderBuffering(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L1027>)


## function testDecoderIssue15656


```haxe
function testDecoderIssue15656(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L1306>)


## function testDecoderIssue3577


```haxe
function testDecoderIssue3577(_t:stdgo.Ref<stdgo.testing.T>):Void
```


tests that we don't ignore errors from our underlying reader  



[\(view code\)](<./Base64.hx#L1251>)


## function testDecoderIssue4779


```haxe
function testDecoderIssue4779(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L1274>)


## function testDecoderIssue7733


```haxe
function testDecoderIssue7733(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L1296>)


## function testDecoderRaw


```haxe
function testDecoderRaw(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L1368>)


## function testEncode


```haxe
function testEncode(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L947>)


## function testEncodedLen


```haxe
function testEncodedLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L1148>)


## function testEncoder


```haxe
function testEncoder(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L955>)


## function testEncoderBuffering


```haxe
function testEncoderBuffering(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L964>)


## function testNewLineCharacters


```haxe
function testNewLineCharacters(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Base64.hx#L1218>)


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





[\(view code\)](<./Base64.hx#L400>)


### Encoding function \_decodeQuantum


```haxe
function _decodeQuantum( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoInt}
```


decodeQuantum decodes up to 4 base64 bytes. The received parameters are  
the destination buffer dst, the source buffer src and an index in the  
source buffer si.  
It returns the number of bytes read from src, the number of bytes written  
to dst, and an error, if any.  



[\(view code\)](<./Base64.hx#L1569>)


### Encoding function decode


```haxe
function decode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Decode decodes src using the encoding enc. It writes at most  
DecodedLen\(len\(src\)\) bytes to dst and returns the number of bytes  
written. If src contains invalid base64 data, it will return the  
number of bytes successfully written and CorruptInputError.  
New line characters \(\\r and \\n\) are ignored.  



[\(view code\)](<./Base64.hx#L1484>)


### Encoding function decodeString


```haxe
function decodeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```


DecodeString returns the bytes represented by the base64 string s.  



[\(view code\)](<./Base64.hx#L1556>)


### Encoding function decodedLen


```haxe
function decodedLen( _n:stdgo.GoInt):stdgo.GoInt
```


DecodedLen returns the maximum length in bytes of the decoded data  
corresponding to n bytes of base64\-encoded data.  



[\(view code\)](<./Base64.hx#L1470>)


### Encoding function encode


```haxe
function encode( _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void
```


Encode encodes src using the encoding enc, writing  
EncodedLen\(len\(src\)\) bytes to dst.  



The encoding pads the output to a multiple of 4 bytes,  
so Encode is not appropriate for use on individual blocks  
of a large data stream. Use NewEncoder\(\) instead.  



[\(view code\)](<./Base64.hx#L1697>)


### Encoding function encodeToString


```haxe
function encodeToString( _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString
```


EncodeToString returns the base64 encoding of src.  



[\(view code\)](<./Base64.hx#L1683>)


### Encoding function encodedLen


```haxe
function encodedLen( _n:stdgo.GoInt):stdgo.GoInt
```


EncodedLen returns the length in bytes of the base64 encoding  
of an input buffer of length n.  



[\(view code\)](<./Base64.hx#L1673>)


### Encoding function strict


```haxe
function strict():stdgo.Ref<stdgo.encoding.base64.Encoding>
```


Strict creates a new encoding identical to enc except with  
strict decoding enabled. In this mode, the decoder requires that  
trailing padding bits are zero, as described in RFC 4648 section 3.5.  



Note that the input is still malleable, as new line characters  
\(CR and LF\) are still ignored.  



[\(view code\)](<./Base64.hx#L1744>)


### Encoding function withPadding


```haxe
function withPadding( _padding:stdgo.GoRune):stdgo.Ref<stdgo.encoding.base64.Encoding>
```


WithPadding creates a new encoding identical to enc except  
with a specified padding character, or NoPadding to disable padding.  
The padding character must not be '\\r' or '\\n', must not  
be contained in the encoding's alphabet and must be a rune equal or  
below '\\xff'.  



[\(view code\)](<./Base64.hx#L1756>)


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





[\(view code\)](<./Base64.hx#L2022>)



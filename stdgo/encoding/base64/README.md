# Module: `stdgo.encoding.base64`

[(view library index)](../../stdgo.md)


# Overview



Package base64 implements base64 encoding as specified by RFC 4648.  

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function benchmarkDecodeString(b:stdgo._internal.testing.B):Void`](<#function-benchmarkdecodestring>)

- [`function benchmarkEncodeToString(b:stdgo._internal.testing.B):Void`](<#function-benchmarkencodetostring>)

- [`function benchmarkNewEncoding(b:stdgo._internal.testing.B):Void`](<#function-benchmarknewencoding>)

- [`function get_rawStdEncoding():stdgo._internal.encoding.base64.Encoding`](<#function-get_rawstdencoding>)

- [`function get_rawURLEncoding():stdgo._internal.encoding.base64.Encoding`](<#function-get_rawurlencoding>)

- [`function get_stdEncoding():stdgo._internal.encoding.base64.Encoding`](<#function-get_stdencoding>)

- [`function get_urlencoding():stdgo._internal.encoding.base64.Encoding`](<#function-get_urlencoding>)

- [`function newDecoder(enc:stdgo.encoding.base64.Encoding, r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-newdecoder>)

- [`function newEncoder(enc:stdgo.encoding.base64.Encoding, w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser`](<#function-newencoder>)

- [`function newEncoding(encoder:String):stdgo.encoding.base64.Encoding`](<#function-newencoding>)

- [`function set_rawStdEncoding(v:stdgo._internal.encoding.base64.Encoding):stdgo._internal.encoding.base64.Encoding`](<#function-set_rawstdencoding>)

- [`function set_rawURLEncoding(v:stdgo._internal.encoding.base64.Encoding):stdgo._internal.encoding.base64.Encoding`](<#function-set_rawurlencoding>)

- [`function set_stdEncoding(v:stdgo._internal.encoding.base64.Encoding):stdgo._internal.encoding.base64.Encoding`](<#function-set_stdencoding>)

- [`function set_urlencoding(v:stdgo._internal.encoding.base64.Encoding):stdgo._internal.encoding.base64.Encoding`](<#function-set_urlencoding>)

- [`function testBig(t:stdgo._internal.testing.T_):Void`](<#function-testbig>)

- [`function testDecode(t:stdgo._internal.testing.T_):Void`](<#function-testdecode>)

- [`function testDecodeBounds(t:stdgo._internal.testing.T_):Void`](<#function-testdecodebounds>)

- [`function testDecodeCorrupt(t:stdgo._internal.testing.T_):Void`](<#function-testdecodecorrupt>)

- [`function testDecodedLen(t:stdgo._internal.testing.T_):Void`](<#function-testdecodedlen>)

- [`function testDecoder(t:stdgo._internal.testing.T_):Void`](<#function-testdecoder>)

- [`function testDecoderBuffering(t:stdgo._internal.testing.T_):Void`](<#function-testdecoderbuffering>)

- [`function testDecoderIssue15656(t:stdgo._internal.testing.T_):Void`](<#function-testdecoderissue15656>)

- [`function testDecoderIssue3577(t:stdgo._internal.testing.T_):Void`](<#function-testdecoderissue3577>)

- [`function testDecoderIssue4779(t:stdgo._internal.testing.T_):Void`](<#function-testdecoderissue4779>)

- [`function testDecoderIssue7733(t:stdgo._internal.testing.T_):Void`](<#function-testdecoderissue7733>)

- [`function testDecoderRaw(t:stdgo._internal.testing.T_):Void`](<#function-testdecoderraw>)

- [`function testEncode(t:stdgo._internal.testing.T_):Void`](<#function-testencode>)

- [`function testEncodedLen(t:stdgo._internal.testing.T_):Void`](<#function-testencodedlen>)

- [`function testEncoder(t:stdgo._internal.testing.T_):Void`](<#function-testencoder>)

- [`function testEncoderBuffering(t:stdgo._internal.testing.T_):Void`](<#function-testencoderbuffering>)

- [`function testNewLineCharacters(t:stdgo._internal.testing.T_):Void`](<#function-testnewlinecharacters>)

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


# Functions


```haxe
import stdgo.encoding.base64.Base64
```


## function benchmarkDecodeString


```haxe
function benchmarkDecodeString(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Base64.hx#L76>)


## function benchmarkEncodeToString


```haxe
function benchmarkEncodeToString(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Base64.hx#L75>)


## function benchmarkNewEncoding


```haxe
function benchmarkNewEncoding(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Base64.hx#L77>)


## function get\_rawStdEncoding


```haxe
function get_rawStdEncoding():stdgo._internal.encoding.base64.Encoding
```


[\(view code\)](<./Base64.hx#L13>)


## function get\_rawURLEncoding


```haxe
function get_rawURLEncoding():stdgo._internal.encoding.base64.Encoding
```


[\(view code\)](<./Base64.hx#L16>)


## function get\_stdEncoding


```haxe
function get_stdEncoding():stdgo._internal.encoding.base64.Encoding
```


[\(view code\)](<./Base64.hx#L7>)


## function get\_urlencoding


```haxe
function get_urlencoding():stdgo._internal.encoding.base64.Encoding
```


[\(view code\)](<./Base64.hx#L10>)


## function newDecoder


```haxe
function newDecoder(enc:stdgo.encoding.base64.Encoding, r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```



NewDecoder constructs a new base64 stream decoder.  

[\(view code\)](<./Base64.hx#L55>)


## function newEncoder


```haxe
function newEncoder(enc:stdgo.encoding.base64.Encoding, w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser
```



NewEncoder returns a new base64 stream encoder. Data written to
the returned writer will be encoded using enc and then written to w.
Base64 encodings operate in 4\-byte blocks; when finished
writing, the caller must Close the returned encoder to flush any
partially written blocks.  

[\(view code\)](<./Base64.hx#L51>)


## function newEncoding


```haxe
function newEncoding(encoder:String):stdgo.encoding.base64.Encoding
```



NewEncoding returns a new padded Encoding defined by the given alphabet,
which must be a 64\-byte string that does not contain the padding character
or CR / LF \('\\r', '\\n'\). The alphabet is treated as sequence of byte values
without any special treatment for multi\-byte UTF\-8.
The resulting Encoding uses the default padding character \('='\),
which may be changed or disabled via WithPadding.  

[\(view code\)](<./Base64.hx#L43>)


## function set\_rawStdEncoding


```haxe
function set_rawStdEncoding(v:stdgo._internal.encoding.base64.Encoding):stdgo._internal.encoding.base64.Encoding
```


[\(view code\)](<./Base64.hx#L14>)


## function set\_rawURLEncoding


```haxe
function set_rawURLEncoding(v:stdgo._internal.encoding.base64.Encoding):stdgo._internal.encoding.base64.Encoding
```


[\(view code\)](<./Base64.hx#L17>)


## function set\_stdEncoding


```haxe
function set_stdEncoding(v:stdgo._internal.encoding.base64.Encoding):stdgo._internal.encoding.base64.Encoding
```


[\(view code\)](<./Base64.hx#L8>)


## function set\_urlencoding


```haxe
function set_urlencoding(v:stdgo._internal.encoding.base64.Encoding):stdgo._internal.encoding.base64.Encoding
```


[\(view code\)](<./Base64.hx#L11>)


## function testBig


```haxe
function testBig(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L66>)


## function testDecode


```haxe
function testDecode(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L59>)


## function testDecodeBounds


```haxe
function testDecodeBounds(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L63>)


## function testDecodeCorrupt


```haxe
function testDecodeCorrupt(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L62>)


## function testDecodedLen


```haxe
function testDecodedLen(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L65>)


## function testDecoder


```haxe
function testDecoder(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L60>)


## function testDecoderBuffering


```haxe
function testDecoderBuffering(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L61>)


## function testDecoderIssue15656


```haxe
function testDecoderIssue15656(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L74>)


## function testDecoderIssue3577


```haxe
function testDecoderIssue3577(t:stdgo._internal.testing.T_):Void
```



tests that we don't ignore errors from our underlying reader  

[\(view code\)](<./Base64.hx#L71>)


## function testDecoderIssue4779


```haxe
function testDecoderIssue4779(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L72>)


## function testDecoderIssue7733


```haxe
function testDecoderIssue7733(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L73>)


## function testDecoderRaw


```haxe
function testDecoderRaw(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L78>)


## function testEncode


```haxe
function testEncode(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L56>)


## function testEncodedLen


```haxe
function testEncodedLen(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L64>)


## function testEncoder


```haxe
function testEncoder(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L57>)


## function testEncoderBuffering


```haxe
function testEncoderBuffering(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L58>)


## function testNewLineCharacters


```haxe
function testNewLineCharacters(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Base64.hx#L67>)


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



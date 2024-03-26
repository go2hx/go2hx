# Module: `stdgo.encoding.hex`

[(view library index)](../../stdgo.md)


# Overview



Package hex implements hexadecimal encoding and decoding.  

# Index


- [Variables](<#variables>)

- [`function benchmarkDecode(b:stdgo._internal.testing.B):Void`](<#function-benchmarkdecode>)

- [`function benchmarkDump(b:stdgo._internal.testing.B):Void`](<#function-benchmarkdump>)

- [`function benchmarkEncode(b:stdgo._internal.testing.B):Void`](<#function-benchmarkencode>)

- [`function decode(dst:Array<Int>, src:Array<Int>):stdgo.Tuple<Int, stdgo.Error>`](<#function-decode>)

- [`function decodeString(s:String):stdgo.Tuple<Array<Int>, stdgo.Error>`](<#function-decodestring>)

- [`function decodedLen(x:Int):Int`](<#function-decodedlen>)

- [`function dump(data:Array<Int>):String`](<#function-dump>)

- [`function dumper(w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser`](<#function-dumper>)

- [`function encode(dst:Array<Int>, src:Array<Int>):Int`](<#function-encode>)

- [`function encodeToString(src:Array<Int>):String`](<#function-encodetostring>)

- [`function encodedLen(n:Int):Int`](<#function-encodedlen>)

- [`function get_errLength():stdgo.Error`](<#function-get_errlength>)

- [`function newDecoder(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-newdecoder>)

- [`function newEncoder(w:stdgo._internal.io.Writer):stdgo._internal.io.Writer`](<#function-newencoder>)

- [`function set_errLength(v:stdgo.Error):stdgo.Error`](<#function-set_errlength>)

- [`function testDecode(t:stdgo._internal.testing.T_):Void`](<#function-testdecode>)

- [`function testDecodeErr(t:stdgo._internal.testing.T_):Void`](<#function-testdecodeerr>)

- [`function testDecodeString(t:stdgo._internal.testing.T_):Void`](<#function-testdecodestring>)

- [`function testDecodeStringErr(t:stdgo._internal.testing.T_):Void`](<#function-testdecodestringerr>)

- [`function testDecoderErr(t:stdgo._internal.testing.T_):Void`](<#function-testdecodererr>)

- [`function testDump(t:stdgo._internal.testing.T_):Void`](<#function-testdump>)

- [`function testDumper(t:stdgo._internal.testing.T_):Void`](<#function-testdumper>)

- [`function testDumper_doubleclose(t:stdgo._internal.testing.T_):Void`](<#function-testdumper_doubleclose>)

- [`function testDumper_earlyclose(t:stdgo._internal.testing.T_):Void`](<#function-testdumper_earlyclose>)

- [`function testEncode(t:stdgo._internal.testing.T_):Void`](<#function-testencode>)

- [`function testEncodeToString(t:stdgo._internal.testing.T_):Void`](<#function-testencodetostring>)

- [`function testEncoderDecoder(t:stdgo._internal.testing.T_):Void`](<#function-testencoderdecoder>)

- [typedef InvalidByteError](<#typedef-invalidbyteerror>)

- [typedef InvalidByteError\_asInterface](<#typedef-invalidbyteerror_asinterface>)

- [typedef InvalidByteError\_static\_extension](<#typedef-invalidbyteerror_static_extension>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_1\_asInterface](<#typedef-t__struct_1_asinterface>)

- [typedef T\_\_struct\_1\_static\_extension](<#typedef-t__struct_1_static_extension>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_2\_asInterface](<#typedef-t__struct_2_asinterface>)

- [typedef T\_\_struct\_2\_static\_extension](<#typedef-t__struct_2_static_extension>)

- [typedef T\_decoder](<#typedef-t_decoder>)

- [typedef T\_decoder\_asInterface](<#typedef-t_decoder_asinterface>)

- [typedef T\_decoder\_static\_extension](<#typedef-t_decoder_static_extension>)

- [typedef T\_dumper](<#typedef-t_dumper>)

- [typedef T\_dumper\_asInterface](<#typedef-t_dumper_asinterface>)

- [typedef T\_dumper\_static\_extension](<#typedef-t_dumper_static_extension>)

- [typedef T\_encDecTest](<#typedef-t_encdectest>)

- [typedef T\_encoder](<#typedef-t_encoder>)

- [typedef T\_encoder\_asInterface](<#typedef-t_encoder_asinterface>)

- [typedef T\_encoder\_static\_extension](<#typedef-t_encoder_static_extension>)

# Variables


```haxe
import stdgo.encoding.hex.Hex
```


```haxe
var errLength:stdgo.Error
```


# Functions


```haxe
import stdgo.encoding.hex.Hex
```


## function benchmarkDecode


```haxe
function benchmarkDecode(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Hex.hx#L96>)


## function benchmarkDump


```haxe
function benchmarkDump(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Hex.hx#L97>)


## function benchmarkEncode


```haxe
function benchmarkEncode(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Hex.hx#L95>)


## function decode


```haxe
function decode(dst:Array<Int>, src:Array<Int>):stdgo.Tuple<Int, stdgo.Error>
```



Decode decodes src into DecodedLen\(len\(src\)\) bytes,
returning the actual number of bytes written to dst.  


Decode expects that src contains only hexadecimal
characters and that src has even length.
If the input is malformed, Decode returns the number
of bytes decoded before the error.  

[\(view code\)](<./Hex.hx#L49>)


## function decodeString


```haxe
function decodeString(s:String):stdgo.Tuple<Array<Int>, stdgo.Error>
```



DecodeString returns the bytes represented by the hexadecimal string s.  


DecodeString expects that src contains only hexadecimal
characters and that src has even length.
If the input is malformed, DecodeString returns
the bytes decoded before the error.  

[\(view code\)](<./Hex.hx#L62>)


## function decodedLen


```haxe
function decodedLen(x:Int):Int
```



DecodedLen returns the length of a decoding of x source bytes.
Specifically, it returns x / 2.  

[\(view code\)](<./Hex.hx#L39>)


## function dump


```haxe
function dump(data:Array<Int>):String
```



Dump returns a string that contains a hex dump of the given data. The format
of the hex dump matches the output of \`hexdump \-C\` on the command line.  

[\(view code\)](<./Hex.hx#L67>)


## function dumper


```haxe
function dumper(w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser
```



Dumper returns a WriteCloser that writes a hex dump of all written data to
w. The format of the dump matches the output of \`hexdump \-C\` on the command
line.  

[\(view code\)](<./Hex.hx#L82>)


## function encode


```haxe
function encode(dst:Array<Int>, src:Array<Int>):Int
```



Encode encodes src into EncodedLen\(len\(src\)\)
bytes of dst. As a convenience, it returns the number
of bytes written to dst, but this value is always EncodedLen\(len\(src\)\).
Encode implements hexadecimal encoding.  

[\(view code\)](<./Hex.hx#L34>)


## function encodeToString


```haxe
function encodeToString(src:Array<Int>):String
```



EncodeToString returns the hexadecimal encoding of src.  

[\(view code\)](<./Hex.hx#L53>)


## function encodedLen


```haxe
function encodedLen(n:Int):Int
```



EncodedLen returns the length of an encoding of n source bytes.
Specifically, it returns n \* 2.  

[\(view code\)](<./Hex.hx#L27>)


## function get\_errLength


```haxe
function get_errLength():stdgo.Error
```


[\(view code\)](<./Hex.hx#L7>)


## function newDecoder


```haxe
function newDecoder(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```



NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
NewDecoder expects that r contain only an even number of hexadecimal characters.  

[\(view code\)](<./Hex.hx#L76>)


## function newEncoder


```haxe
function newEncoder(w:stdgo._internal.io.Writer):stdgo._internal.io.Writer
```



NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.  

[\(view code\)](<./Hex.hx#L71>)


## function set\_errLength


```haxe
function set_errLength(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Hex.hx#L8>)


## function testDecode


```haxe
function testDecode(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L84>)


## function testDecodeErr


```haxe
function testDecodeErr(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L87>)


## function testDecodeString


```haxe
function testDecodeString(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L86>)


## function testDecodeStringErr


```haxe
function testDecodeStringErr(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L88>)


## function testDecoderErr


```haxe
function testDecoderErr(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L90>)


## function testDump


```haxe
function testDump(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L94>)


## function testDumper


```haxe
function testDumper(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L91>)


## function testDumper\_doubleclose


```haxe
function testDumper_doubleclose(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L92>)


## function testDumper\_earlyclose


```haxe
function testDumper_earlyclose(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L93>)


## function testEncode


```haxe
function testEncode(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L83>)


## function testEncodeToString


```haxe
function testEncodeToString(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L85>)


## function testEncoderDecoder


```haxe
function testEncoderDecoder(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L89>)


# Typedefs


```haxe
import stdgo.encoding.hex.*
```


## typedef InvalidByteError


```haxe
typedef InvalidByteError = stdgo._internal.encoding.hex.InvalidByteError;
```


## typedef InvalidByteError\_asInterface


```haxe
typedef InvalidByteError_asInterface = Dynamic;
```


## typedef InvalidByteError\_static\_extension


```haxe
typedef InvalidByteError_static_extension = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.encoding.hex.T__struct_0;
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
typedef T__struct_1 = stdgo._internal.encoding.hex.T__struct_1;
```


## typedef T\_\_struct\_1\_asInterface


```haxe
typedef T__struct_1_asInterface = Dynamic;
```


## typedef T\_\_struct\_1\_static\_extension


```haxe
typedef T__struct_1_static_extension = Dynamic;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.encoding.hex.T__struct_2;
```


## typedef T\_\_struct\_2\_asInterface


```haxe
typedef T__struct_2_asInterface = Dynamic;
```


## typedef T\_\_struct\_2\_static\_extension


```haxe
typedef T__struct_2_static_extension = Dynamic;
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


## typedef T\_dumper


```haxe
typedef T_dumper = Dynamic;
```


## typedef T\_dumper\_asInterface


```haxe
typedef T_dumper_asInterface = Dynamic;
```


## typedef T\_dumper\_static\_extension


```haxe
typedef T_dumper_static_extension = Dynamic;
```


## typedef T\_encDecTest


```haxe
typedef T_encDecTest = Dynamic;
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



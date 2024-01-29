# Module: `stdgo.encoding.hex`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _toChar(_b:stdgo.GoByte):Void`](<#function-_tochar>)

- [`function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecode>)

- [`function benchmarkDump(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdump>)

- [`function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkencode>)

- [`function decode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void`](<#function-decode>)

- [`function decodeString(_s:stdgo.GoString):Void`](<#function-decodestring>)

- [`function decodedLen(_x:stdgo.GoInt):Void`](<#function-decodedlen>)

- [`function dump(_data:stdgo.Slice<stdgo.GoByte>):Void`](<#function-dump>)

- [`function dumper(_w:stdgo._internal.io.Writer):Void`](<#function-dumper>)

- [`function encode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void`](<#function-encode>)

- [`function encodeToString(_src:stdgo.Slice<stdgo.GoByte>):Void`](<#function-encodetostring>)

- [`function encodedLen(_n:stdgo.GoInt):Void`](<#function-encodedlen>)

- [`function newDecoder(_r:stdgo._internal.io.Reader):Void`](<#function-newdecoder>)

- [`function newEncoder(_w:stdgo._internal.io.Writer):Void`](<#function-newencoder>)

- [`function testDecode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecode>)

- [`function testDecodeErr(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecodeerr>)

- [`function testDecodeString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecodestring>)

- [`function testDecodeStringErr(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecodestringerr>)

- [`function testDecoderErr(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecodererr>)

- [`function testDump(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdump>)

- [`function testDumper(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdumper>)

- [`function testDumper_doubleclose(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdumper_doubleclose>)

- [`function testDumper_earlyclose(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdumper_earlyclose>)

- [`function testEncode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testencode>)

- [`function testEncodeToString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testencodetostring>)

- [`function testEncoderDecoder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testencoderdecoder>)

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
var __go2hxdoc__package:Dynamic
```


```haxe
var _bufferSize:Dynamic
```


```haxe
var _encDecTests:Dynamic
```


```haxe
var _errTests:Dynamic
```


```haxe
var _expectedHexDump:Dynamic
```


```haxe
var _hextable:Dynamic
```


```haxe
var _reverseHexTable:Dynamic
```


```haxe
var _sink:Dynamic
```


```haxe
var errLength:Dynamic
```


# Functions


```haxe
import stdgo.encoding.hex.Hex
```


## function \_toChar


```haxe
function _toChar(_b:stdgo.GoByte):Void
```


[\(view code\)](<./Hex.hx#L35>)


## function benchmarkDecode


```haxe
function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Hex.hx#L49>)


## function benchmarkDump


```haxe
function benchmarkDump(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Hex.hx#L50>)


## function benchmarkEncode


```haxe
function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Hex.hx#L48>)


## function decode


```haxe
function decode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Hex.hx#L28>)


## function decodeString


```haxe
function decodeString(_s:stdgo.GoString):Void
```


[\(view code\)](<./Hex.hx#L30>)


## function decodedLen


```haxe
function decodedLen(_x:stdgo.GoInt):Void
```


[\(view code\)](<./Hex.hx#L27>)


## function dump


```haxe
function dump(_data:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Hex.hx#L31>)


## function dumper


```haxe
function dumper(_w:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Hex.hx#L34>)


## function encode


```haxe
function encode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Hex.hx#L26>)


## function encodeToString


```haxe
function encodeToString(_src:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Hex.hx#L29>)


## function encodedLen


```haxe
function encodedLen(_n:stdgo.GoInt):Void
```


[\(view code\)](<./Hex.hx#L25>)


## function newDecoder


```haxe
function newDecoder(_r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Hex.hx#L33>)


## function newEncoder


```haxe
function newEncoder(_w:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Hex.hx#L32>)


## function testDecode


```haxe
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L37>)


## function testDecodeErr


```haxe
function testDecodeErr(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L40>)


## function testDecodeString


```haxe
function testDecodeString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L39>)


## function testDecodeStringErr


```haxe
function testDecodeStringErr(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L41>)


## function testDecoderErr


```haxe
function testDecoderErr(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L43>)


## function testDump


```haxe
function testDump(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L47>)


## function testDumper


```haxe
function testDumper(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L44>)


## function testDumper\_doubleclose


```haxe
function testDumper_doubleclose(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L45>)


## function testDumper\_earlyclose


```haxe
function testDumper_earlyclose(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L46>)


## function testEncode


```haxe
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L36>)


## function testEncodeToString


```haxe
function testEncodeToString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L38>)


## function testEncoderDecoder


```haxe
function testEncoderDecoder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L42>)


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



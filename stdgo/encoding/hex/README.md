# Module: `stdgo.encoding.hex`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [class Hex](<#class-hex>)

  - [`function benchmarkDecode(_b:stdgo._internal.testing.B):Void`](<#hex-function-benchmarkdecode>)

  - [`function benchmarkDump(_b:stdgo._internal.testing.B):Void`](<#hex-function-benchmarkdump>)

  - [`function benchmarkEncode(_b:stdgo._internal.testing.B):Void`](<#hex-function-benchmarkencode>)

  - [`function decode(_dst:Array<UInt>, _src:Array<UInt>):stdgo.Tuple<Int, stdgo.Error>`](<#hex-function-decode>)

  - [`function decodeString(_s:String):stdgo.Tuple<Array<UInt>, stdgo.Error>`](<#hex-function-decodestring>)

  - [`function decodedLen(_x:Int):Int`](<#hex-function-decodedlen>)

  - [`function dump(_data:Array<UInt>):String`](<#hex-function-dump>)

  - [`function dumper(_w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser`](<#hex-function-dumper>)

  - [`function encode(_dst:Array<UInt>, _src:Array<UInt>):Int`](<#hex-function-encode>)

  - [`function encodeToString(_src:Array<UInt>):String`](<#hex-function-encodetostring>)

  - [`function encodedLen(_n:Int):Int`](<#hex-function-encodedlen>)

  - [`function newDecoder(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#hex-function-newdecoder>)

  - [`function newEncoder(_w:stdgo._internal.io.Writer):stdgo._internal.io.Writer`](<#hex-function-newencoder>)

  - [`function testDecode(_t:stdgo._internal.testing.T_):Void`](<#hex-function-testdecode>)

  - [`function testDecodeErr(_t:stdgo._internal.testing.T_):Void`](<#hex-function-testdecodeerr>)

  - [`function testDecodeString(_t:stdgo._internal.testing.T_):Void`](<#hex-function-testdecodestring>)

  - [`function testDecodeStringErr(_t:stdgo._internal.testing.T_):Void`](<#hex-function-testdecodestringerr>)

  - [`function testDecoderErr(_t:stdgo._internal.testing.T_):Void`](<#hex-function-testdecodererr>)

  - [`function testDump(_t:stdgo._internal.testing.T_):Void`](<#hex-function-testdump>)

  - [`function testDumper(_t:stdgo._internal.testing.T_):Void`](<#hex-function-testdumper>)

  - [`function testDumper_doubleclose(_t:stdgo._internal.testing.T_):Void`](<#hex-function-testdumper_doubleclose>)

  - [`function testDumper_earlyclose(_t:stdgo._internal.testing.T_):Void`](<#hex-function-testdumper_earlyclose>)

  - [`function testEncode(_t:stdgo._internal.testing.T_):Void`](<#hex-function-testencode>)

  - [`function testEncodeToString(_t:stdgo._internal.testing.T_):Void`](<#hex-function-testencodetostring>)

  - [`function testEncoderDecoder(_t:stdgo._internal.testing.T_):Void`](<#hex-function-testencoderdecoder>)

- [typedef InvalidByteError](<#typedef-invalidbyteerror>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [abstract T\_encoder](<#abstract-t_encoder>)

- [abstract T\_decoder](<#abstract-t_decoder>)

- [abstract T\_dumper](<#abstract-t_dumper>)

- [abstract T\_encDecTest](<#abstract-t_encdectest>)

# Variables


```haxe
import stdgo.encoding.hex.Hex
```


```haxe
var errLength:stdgo.Error
```


# Classes


```haxe
import stdgo.encoding.hex.*
```


## class Hex



Package hex implements hexadecimal encoding and decoding.  

### Hex function benchmarkDecode


```haxe
function benchmarkDecode(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Hex.hx#L313>)


### Hex function benchmarkDump


```haxe
function benchmarkDump(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Hex.hx#L316>)


### Hex function benchmarkEncode


```haxe
function benchmarkEncode(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Hex.hx#L310>)


### Hex function decode


```haxe
function decode(_dst:Array<UInt>, _src:Array<UInt>):stdgo.Tuple<Int, stdgo.Error>
```


```
Decode decodes src into DecodedLen(len(src)) bytes,
        returning the actual number of bytes written to dst.
```

Decode expects that src contains only hexadecimal
characters and that src has even length.
If the input is malformed, Decode returns the number
of bytes decoded before the error.  

[\(view code\)](<./Hex.hx#L216>)


### Hex function decodeString


```haxe
function decodeString(_s:String):stdgo.Tuple<Array<UInt>, stdgo.Error>
```



DecodeString returns the bytes represented by the hexadecimal string s.  


DecodeString expects that src contains only hexadecimal
characters and that src has even length.
If the input is malformed, DecodeString returns
the bytes decoded before the error.  

[\(view code\)](<./Hex.hx#L239>)


### Hex function decodedLen


```haxe
function decodedLen(_x:Int):Int
```


```
DecodedLen returns the length of a decoding of x source bytes.
        Specifically, it returns x / 2.
```
[\(view code\)](<./Hex.hx#L204>)


### Hex function dump


```haxe
function dump(_data:Array<UInt>):String
```


```
Dump returns a string that contains a hex dump of the given data. The format
        of the hex dump matches the output of `hexdump -C` on the command line.
```
[\(view code\)](<./Hex.hx#L249>)


### Hex function dumper


```haxe
function dumper(_w:stdgo._internal.io.Writer):stdgo._internal.io.WriteCloser
```


```
Dumper returns a WriteCloser that writes a hex dump of all written data to
        w. The format of the dump matches the output of `hexdump -C` on the command
        line.
```
[\(view code\)](<./Hex.hx#L271>)


### Hex function encode


```haxe
function encode(_dst:Array<UInt>, _src:Array<UInt>):Int
```


```
Encode encodes src into EncodedLen(len(src))
        bytes of dst. As a convenience, it returns the number
        of bytes written to dst, but this value is always EncodedLen(len(src)).
        Encode implements hexadecimal encoding.
```
[\(view code\)](<./Hex.hx#L195>)


### Hex function encodeToString


```haxe
function encodeToString(_src:Array<UInt>):String
```



EncodeToString returns the hexadecimal encoding of src.  

[\(view code\)](<./Hex.hx#L227>)


### Hex function encodedLen


```haxe
function encodedLen(_n:Int):Int
```


```
EncodedLen returns the length of an encoding of n source bytes.
        Specifically, it returns n * 2.
```
[\(view code\)](<./Hex.hx#L186>)


### Hex function newDecoder


```haxe
function newDecoder(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
        NewDecoder expects that r contain only an even number of hexadecimal characters.
```
[\(view code\)](<./Hex.hx#L263>)


### Hex function newEncoder


```haxe
function newEncoder(_w:stdgo._internal.io.Writer):stdgo._internal.io.Writer
```



NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.  

[\(view code\)](<./Hex.hx#L256>)


### Hex function testDecode


```haxe
function testDecode(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L277>)


### Hex function testDecodeErr


```haxe
function testDecodeErr(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L286>)


### Hex function testDecodeString


```haxe
function testDecodeString(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L283>)


### Hex function testDecodeStringErr


```haxe
function testDecodeStringErr(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L289>)


### Hex function testDecoderErr


```haxe
function testDecoderErr(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L295>)


### Hex function testDump


```haxe
function testDump(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L307>)


### Hex function testDumper


```haxe
function testDumper(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L298>)


### Hex function testDumper\_doubleclose


```haxe
function testDumper_doubleclose(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L301>)


### Hex function testDumper\_earlyclose


```haxe
function testDumper_earlyclose(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L304>)


### Hex function testEncode


```haxe
function testEncode(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L274>)


### Hex function testEncodeToString


```haxe
function testEncodeToString(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L280>)


### Hex function testEncoderDecoder


```haxe
function testEncoderDecoder(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Hex.hx#L292>)


# Typedefs


```haxe
import stdgo.encoding.hex.*
```


## typedef InvalidByteError


```haxe
typedef InvalidByteError = stdgo._internal.encoding.hex.InvalidByteError;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.encoding.hex.T__struct_0;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.encoding.hex.T__struct_1;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.encoding.hex.T__struct_2;
```


# Abstracts


## abstract T\_encoder


[\(view file containing code\)](<./Hex.hx>)


## abstract T\_decoder


[\(view file containing code\)](<./Hex.hx>)


## abstract T\_dumper


[\(view file containing code\)](<./Hex.hx>)


## abstract T\_encDecTest


[\(view file containing code\)](<./Hex.hx>)



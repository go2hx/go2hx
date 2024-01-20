# Module: `stdgo.encoding.hex`

[(view library index)](../../stdgo.md)


# Overview



Package hex implements hexadecimal encoding and decoding.  

stdgo/internal/Macro.macro.hx:38: TypeInfoData_go2hx_hx

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _toChar(_b:stdgo.GoByte):stdgo.GoByte`](<#function-_tochar>)

- [`function benchmarkDecode(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecode>)

- [`function benchmarkDump(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdump>)

- [`function benchmarkEncode(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkencode>)

- [`function decode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-decode>)

- [`function decodeString(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}`](<#function-decodestring>)

- [`function decodedLen(_x:stdgo.GoInt):stdgo.GoInt`](<#function-decodedlen>)

- [`function dump(_data:stdgo.Slice<stdgo.GoByte>):stdgo.GoString`](<#function-dump>)

- [`function dumper(_w:stdgo.io.Writer):stdgo.io.WriteCloser`](<#function-dumper>)

- [`function encode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-encode>)

- [`function encodeToString(_src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString`](<#function-encodetostring>)

- [`function encodedLen(_n:stdgo.GoInt):stdgo.GoInt`](<#function-encodedlen>)

- [`function newDecoder(_r:stdgo.io.Reader):stdgo.io.Reader`](<#function-newdecoder>)

- [`function newEncoder(_w:stdgo.io.Writer):stdgo.io.Writer`](<#function-newencoder>)

- [`function testDecode(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdecode>)

- [`function testDecodeErr(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdecodeerr>)

- [`function testDecodeString(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdecodestring>)

- [`function testDecodeStringErr(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdecodestringerr>)

- [`function testDecoderErr(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdecodererr>)

- [`function testDump(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdump>)

- [`function testDumper(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdumper>)

- [`function testDumper_doubleclose(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdumper_doubleclose>)

- [`function testDumper_earlyclose(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdumper_earlyclose>)

- [`function testEncode(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testencode>)

- [`function testEncodeToString(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testencodetostring>)

- [`function testEncoderDecoder(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testencoderdecoder>)

- [typedef InvalidByteError](<#typedef-invalidbyteerror>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

# Examples


- [`exampleDecode`](<#exampledecode>)

- [`exampleDecodeString`](<#exampledecodestring>)

- [`exampleDump`](<#exampledump>)

- [`exampleDumper`](<#exampledumper>)

- [`exampleEncode`](<#exampleencode>)

- [`exampleEncodeToString`](<#exampleencodetostring>)

# Constants


```haxe
import stdgo.encoding.hex.Hex
```


```haxe
final _bufferSize:stdgo.GoUInt64 = ((1024i64 : stdgo.GoUInt64))
```



bufferSize is the number of hexadecimal characters to buffer in encoder and decoder.  

```haxe
final _hextable:stdgo.GoString = (("0123456789abcdef" : stdgo.GoString))
```


```haxe
final _reverseHexTable:stdgo.GoString = stdgo.Go.str(255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 1, 2, 3, 4, 5, 6, "\x07\x08\t", 255, 255, 255, 255, 255, 255, 255, "\n\x0B\x0C\r", 14, 15, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, "\n\x0B\x0C\r", 14, 15, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255)
```


# Variables


```haxe
import stdgo.encoding.hex.Hex
```


```haxe
var _encDecTests:stdgo.Slice<stdgo.encoding.hex.T_encDecTest>
```


```haxe
var _errTests:stdgo.Slice<stdgo.encoding.hex.T__struct_0>
```


```haxe
var _expectedHexDump:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _sink:stdgo.Slice<stdgo.GoByte>
```


```haxe
var errLength:stdgo.Error
```



ErrLength reports an attempt to decode an odd\-length input
using Decode or DecodeString.
The stream\-based Decoder returns io.ErrUnexpectedEOF instead of ErrLength.  

# Functions


```haxe
import stdgo.encoding.hex.Hex
```


## function \_toChar


```haxe
function _toChar(_b:stdgo.GoByte):stdgo.GoByte
```


[\(view code\)](<./Hex.hx#L1315>)


## function benchmarkDecode


```haxe
function benchmarkDecode(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Hex.hx#L1507>)


## function benchmarkDump


```haxe
function benchmarkDump(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Hex.hx#L1522>)


## function benchmarkEncode


```haxe
function benchmarkEncode(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Hex.hx#L1492>)


## function decode


```haxe
function decode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Decode decodes src into DecodedLen\(len\(src\)\) bytes,
returning the actual number of bytes written to dst.  


Decode expects that src contains only hexadecimal
characters and that src has even length.
If the input is malformed, Decode returns the number
of bytes decoded before the error.  

### exampleDecode


<details><summary></summary>
<p>


```haxe
function exampleDecode():Void {
        var _src = (("48656c6c6f20476f7068657221" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _dst = new stdgo.Slice<stdgo.GoUInt8>((stdgo.encoding.hex.Hex.decodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = stdgo.encoding.hex.Hex.decode(_dst, _src), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface((_dst.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
    }
```


</p>
</details>


[\(view code\)](<./Hex.hx#L493>)


## function decodeString


```haxe
function decodeString(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



DecodeString returns the bytes represented by the hexadecimal string s.  


DecodeString expects that src contains only hexadecimal
characters and that src has even length.
If the input is malformed, DecodeString returns
the bytes decoded before the error.  

### exampleDecodeString


<details><summary></summary>
<p>


```haxe
function exampleDecodeString():Void {
        {};
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(("48656c6c6f20476f7068657221" : stdgo.GoString)), _decoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_decoded));
    }
```


</p>
</details>


[\(view code\)](<./Hex.hx#L1274>)


## function decodedLen


```haxe
function decodedLen(_x:stdgo.GoInt):stdgo.GoInt
```



DecodedLen returns the length of a decoding of x source bytes.
Specifically, it returns x / 2.  

[\(view code\)](<./Hex.hx#L481>)


## function dump


```haxe
function dump(_data:stdgo.Slice<stdgo.GoByte>):stdgo.GoString
```



Dump returns a string that contains a hex dump of the given data. The format
of the hex dump matches the output of \`hexdump \-C\` on the command line.  

### exampleDump


<details><summary></summary>
<p>


```haxe
function exampleDump():Void {
        var _content = (("Go is an open source programming language." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        stdgo.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.encoding.hex.Hex.dump(_content)));
    }
```


</p>
</details>


[\(view code\)](<./Hex.hx#L1283>)


## function dumper


```haxe
function dumper(_w:stdgo.io.Writer):stdgo.io.WriteCloser
```



Dumper returns a WriteCloser that writes a hex dump of all written data to
w. The format of the dump matches the output of \`hexdump \-C\` on the command
line.  

### exampleDumper


<details><summary></summary>
<p>


```haxe
function exampleDumper():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _lines = (new stdgo.Slice<stdgo.GoString>(3, 3, ("Go is an open source programming language." : stdgo.GoString), ("\n" : stdgo.GoString), ("We encourage all Go users to subscribe to golang-announce." : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            var _stdoutDumper:stdgo.io.Io.WriteCloser = stdgo.encoding.hex.Hex.dumper(stdgo.Go.asInterface(stdgo.os.Os.stdout));
            __deferstack__.unshift(() -> _stdoutDumper.close());
            for (__0 => _line in _lines) {
                _stdoutDumper.write((_line : stdgo.Slice<stdgo.GoByte>));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
```


</p>
</details>


[\(view code\)](<./Hex.hx#L1312>)


## function encode


```haxe
function encode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



Encode encodes src into EncodedLen\(len\(src\)\)
bytes of dst. As a convenience, it returns the number
of bytes written to dst, but this value is always EncodedLen\(len\(src\)\).
Encode implements hexadecimal encoding.  

### exampleEncode


<details><summary></summary>
<p>


```haxe
function exampleEncode():Void {
        var _src = (("Hello Gopher!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _dst = new stdgo.Slice<stdgo.GoUInt8>((stdgo.encoding.hex.Hex.encodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        stdgo.encoding.hex.Hex.encode(_dst, _src);
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_dst));
    }
```


</p>
</details>


[\(view code\)](<./Hex.hx#L468>)


## function encodeToString


```haxe
function encodeToString(_src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString
```



EncodeToString returns the hexadecimal encoding of src.  

### exampleEncodeToString


<details><summary></summary>
<p>


```haxe
function exampleEncodeToString():Void {
        var _src = (("Hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _encodedStr:stdgo.GoString = stdgo.encoding.hex.Hex.encodeToString(_src)?.__copy__();
        stdgo.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_encodedStr));
    }
```


</p>
</details>


[\(view code\)](<./Hex.hx#L1261>)


## function encodedLen


```haxe
function encodedLen(_n:stdgo.GoInt):stdgo.GoInt
```



EncodedLen returns the length of an encoding of n source bytes.
Specifically, it returns n \* 2.  

[\(view code\)](<./Hex.hx#L459>)


## function newDecoder


```haxe
function newDecoder(_r:stdgo.io.Reader):stdgo.io.Reader
```



NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
NewDecoder expects that r contain only an even number of hexadecimal characters.  

[\(view code\)](<./Hex.hx#L1304>)


## function newEncoder


```haxe
function newEncoder(_w:stdgo.io.Writer):stdgo.io.Writer
```



NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.  

[\(view code\)](<./Hex.hx#L1297>)


## function testDecode


```haxe
function testDecode(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L1333>)


## function testDecodeErr


```haxe
function testDecodeErr(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L1365>)


## function testDecodeString


```haxe
function testDecodeString(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L1353>)


## function testDecodeStringErr


```haxe
function testDecodeStringErr(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L1374>)


## function testDecoderErr


```haxe
function testDecoderErr(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L1420>)


## function testDump


```haxe
function testDump(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L1482>)


## function testDumper


```haxe
function testDumper(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L1433>)


## function testDumper\_doubleclose


```haxe
function testDumper_doubleclose(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L1459>)


## function testDumper\_earlyclose


```haxe
function testDumper_earlyclose(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L1472>)


## function testEncode


```haxe
function testEncode(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L1321>)


## function testEncodeToString


```haxe
function testEncodeToString(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L1345>)


## function testEncoderDecoder


```haxe
function testEncoderDecoder(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Hex.hx#L1382>)


# Typedefs


```haxe
import stdgo.encoding.hex.*
```


## typedef InvalidByteError


```haxe
typedef InvalidByteError = stdgo.GoUInt8;
```



InvalidByteError values describe errors resulting from an invalid byte in a hex string.  

## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_out:stdgo.GoString;
	_in:stdgo.GoString;
	_err:stdgo.Error;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	{<reader> | stdgo.io.Reader | meta:{<m>}};
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	{<writer> | stdgo.io.Writer | meta:{<m>}};
};
```



# Module: `stdgo.encoding.hex`

[(view library index)](../../stdgo.md)


# Overview



Package hex implements hexadecimal encoding and decoding.  

<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
=== RUN  TestEncode
--- PASS: TestEncode (%!s(float64=0.0001399517059326172))

=== RUN  TestDecode
--- PASS: TestDecode (%!s(float64=0.0003228187561035156))

=== RUN  TestEncodeToString
--- PASS: TestEncodeToString (%!s(float64=8.106231689453125e-05))

=== RUN  TestDecodeString
--- PASS: TestDecodeString (%!s(float64=0.0004010200500488281))

=== RUN  TestDecodeErr
Decode("zd4aa") = "", encoding/hex: invalid byte: U+007A 'z', want "", encoding/hex: invalid byte: U+007A 'z'
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
=== RUN  TestEncode
--- PASS: TestEncode (%!s(float64=0.0006809234619140625))

=== RUN  TestDecode
--- PASS: TestDecode (%!s(float64=0.0015900135040283203))

=== RUN  TestEncodeToString
--- PASS: TestEncodeToString (%!s(float64=0.0002288818359375))

=== RUN  TestDecodeString
--- PASS: TestDecodeString (%!s(float64=0.0012440681457519531))

=== RUN  TestDecodeErr
Decode("zd4aa") = "", encoding/hex: invalid byte: U+007A 'z', want "", encoding/hex: invalid byte: U+007A 'z'
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


- [Variables](<#variables>)

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

- [`function testDecode(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecode>)

- [`function testDecodeErr(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecodeerr>)

- [`function testDecodeString(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecodestring>)

- [`function testDecodeStringErr(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecodestringerr>)

- [`function testDecoderErr(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecodererr>)

- [`function testDump(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdump>)

- [`function testDumper(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdumper>)

- [`function testDumper_doubleclose(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdumper_doubleclose>)

- [`function testDumper_earlyclose(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdumper_earlyclose>)

- [`function testEncode(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testencode>)

- [`function testEncodeToString(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testencodetostring>)

- [`function testEncoderDecoder(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testencoderdecoder>)

- [typedef InvalidByteError](<#typedef-invalidbyteerror>)

# Examples


- [`exampleDecode`](<#exampledecode>)

- [`exampleDecodeString`](<#exampledecodestring>)

- [`exampleDump`](<#exampledump>)

- [`exampleDumper`](<#exampledumper>)

- [`exampleEncode`](<#exampleencode>)

- [`exampleEncodeToString`](<#exampleencodetostring>)

# Variables


```haxe
import stdgo.encoding.hex.Hex
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


## function benchmarkDecode


```haxe
function benchmarkDecode(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Hex.hx#L1516>)


## function benchmarkDump


```haxe
function benchmarkDump(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Hex.hx#L1531>)


## function benchmarkEncode


```haxe
function benchmarkEncode(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Hex.hx#L1501>)


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
        var _src = (("48656c6c6f20476f7068657221" : GoString) : Slice<GoByte>);
        var _dst = new Slice<GoUInt8>((stdgo.encoding.hex.Hex.decodedLen((_src.length)) : GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = stdgo.encoding.hex.Hex.decode(_dst, _src), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface((_dst.__slice__(0, _n) : Slice<GoUInt8>)));
    }
```


</p>
</details>


[\(view code\)](<./Hex.hx#L502>)


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
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(("48656c6c6f20476f7068657221" : GoString)), _decoded:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_decoded));
    }
```


</p>
</details>


[\(view code\)](<./Hex.hx#L1283>)


## function decodedLen


```haxe
function decodedLen(_x:stdgo.GoInt):stdgo.GoInt
```



DecodedLen returns the length of a decoding of x source bytes.
Specifically, it returns x / 2.  

[\(view code\)](<./Hex.hx#L490>)


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
        var _content = (("Go is an open source programming language." : GoString) : Slice<GoByte>);
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(stdgo.encoding.hex.Hex.dump(_content)));
    }
```


</p>
</details>


[\(view code\)](<./Hex.hx#L1292>)


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
            var _lines = (new Slice<GoString>(3, 3, ("Go is an open source programming language." : GoString), ("\n" : GoString), ("We encourage all Go users to subscribe to golang-announce." : GoString)) : Slice<GoString>);
            var _stdoutDumper:stdgo.io.Io.WriteCloser = stdgo.encoding.hex.Hex.dumper(Go.asInterface(stdgo.os.Os.stdout));
            __deferstack__.unshift(() -> _stdoutDumper.close());
            for (__0 => _line in _lines) {
                _stdoutDumper.write((_line : Slice<GoByte>));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
```


</p>
</details>


[\(view code\)](<./Hex.hx#L1321>)


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
        var _src = (("Hello Gopher!" : GoString) : Slice<GoByte>);
        var _dst = new Slice<GoUInt8>((stdgo.encoding.hex.Hex.encodedLen((_src.length)) : GoInt).toBasic(), 0).__setNumber32__();
        stdgo.encoding.hex.Hex.encode(_dst, _src);
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_dst));
    }
```


</p>
</details>


[\(view code\)](<./Hex.hx#L477>)


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
        var _src = (("Hello" : GoString) : Slice<GoByte>);
        var _encodedStr:GoString = stdgo.encoding.hex.Hex.encodeToString(_src);
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_encodedStr));
    }
```


</p>
</details>


[\(view code\)](<./Hex.hx#L1270>)


## function encodedLen


```haxe
function encodedLen(_n:stdgo.GoInt):stdgo.GoInt
```



EncodedLen returns the length of an encoding of n source bytes.
Specifically, it returns n \* 2.  

[\(view code\)](<./Hex.hx#L468>)


## function newDecoder


```haxe
function newDecoder(_r:stdgo.io.Reader):stdgo.io.Reader
```



NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
NewDecoder expects that r contain only an even number of hexadecimal characters.  

[\(view code\)](<./Hex.hx#L1313>)


## function newEncoder


```haxe
function newEncoder(_w:stdgo.io.Writer):stdgo.io.Writer
```



NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.  

[\(view code\)](<./Hex.hx#L1306>)


## function testDecode


```haxe
function testDecode(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Hex.hx#L1342>)


## function testDecodeErr


```haxe
function testDecodeErr(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Hex.hx#L1374>)


## function testDecodeString


```haxe
function testDecodeString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Hex.hx#L1362>)


## function testDecodeStringErr


```haxe
function testDecodeStringErr(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Hex.hx#L1383>)


## function testDecoderErr


```haxe
function testDecoderErr(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Hex.hx#L1429>)


## function testDump


```haxe
function testDump(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Hex.hx#L1491>)


## function testDumper


```haxe
function testDumper(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Hex.hx#L1442>)


## function testDumper\_doubleclose


```haxe
function testDumper_doubleclose(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Hex.hx#L1468>)


## function testDumper\_earlyclose


```haxe
function testDumper_earlyclose(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Hex.hx#L1481>)


## function testEncode


```haxe
function testEncode(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Hex.hx#L1330>)


## function testEncodeToString


```haxe
function testEncodeToString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Hex.hx#L1354>)


## function testEncoderDecoder


```haxe
function testEncoderDecoder(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Hex.hx#L1391>)


# Typedefs


```haxe
import stdgo.encoding.hex.*
```


## typedef InvalidByteError


```haxe
typedef InvalidByteError = stdgo.GoUInt8;
```



InvalidByteError values describe errors resulting from an invalid byte in a hex string.  


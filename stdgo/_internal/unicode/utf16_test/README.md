# Module: `stdgo._internal.unicode.utf16`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function benchmarkAppendRuneValidASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappendrunevalidascii>)

- [`function benchmarkAppendRuneValidJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappendrunevalidjapanesechars>)

- [`function benchmarkDecodeRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecoderune>)

- [`function benchmarkDecodeValidASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecodevalidascii>)

- [`function benchmarkDecodeValidJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecodevalidjapanesechars>)

- [`function benchmarkEncodeRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkencoderune>)

- [`function benchmarkEncodeValidASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkencodevalidascii>)

- [`function benchmarkEncodeValidJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkencodevalidjapanesechars>)

- [`function testAllocationsDecode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testallocationsdecode>)

- [`function testAppendRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testappendrune>)

- [`function testConstants(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testconstants>)

- [`function testDecode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecode>)

- [`function testDecodeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecoderune>)

- [`function testEncode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testencode>)

- [`function testEncodeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testencoderune>)

- [`function testIsSurrogate(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testissurrogate>)

- [`function main():Void`](<#function-main>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

# Variables


```haxe
import stdgo._internal.unicode.utf16_test.Utf16
```


```haxe
var _decodeRuneTests:stdgo.Slice<stdgo._internal.unicode.utf16_test.T__struct_0>
```


```haxe
var _decodeTests:stdgo.Slice<stdgo._internal.unicode.utf16_test.T_decodeTest>
```


```haxe
var _encodeTests:stdgo.Slice<stdgo._internal.unicode.utf16_test.T_encodeTest>
```


```haxe
var _surrogateTests:stdgo.Slice<stdgo._internal.unicode.utf16_test.T__struct_1>
```


```haxe
var _:Bool
```


```haxe
var _benchmarks:stdgo.Slice<stdgo._internal.testing.InternalBenchmark>
```


```haxe
var _examples:stdgo.Slice<stdgo._internal.testing.InternalExample>
```


```haxe
var _fuzzTargets:stdgo.Slice<stdgo._internal.testing.InternalFuzzTarget>
```


```haxe
var _tests:stdgo.Slice<stdgo._internal.testing.InternalTest>
```


# Functions


```haxe
import stdgo._internal.unicode.utf16_test.Utf16
```


## function benchmarkAppendRuneValidASCII


```haxe
function benchmarkAppendRuneValidASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L244>)


## function benchmarkAppendRuneValidJapaneseChars


```haxe
function benchmarkAppendRuneValidJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L257>)


## function benchmarkDecodeRune


```haxe
function benchmarkDecodeRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L204>)


## function benchmarkDecodeValidASCII


```haxe
function benchmarkDecodeValidASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L175>)


## function benchmarkDecodeValidJapaneseChars


```haxe
function benchmarkDecodeValidJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L195>)


## function benchmarkEncodeRune


```haxe
function benchmarkEncodeRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L270>)


## function benchmarkEncodeValidASCII


```haxe
function benchmarkEncodeValidASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L226>)


## function benchmarkEncodeValidJapaneseChars


```haxe
function benchmarkEncodeValidJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L235>)


## function testAllocationsDecode


```haxe
function testAllocationsDecode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf16.hx#L137>)


## function testAppendRune


```haxe
function testAppendRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf16.hx#L92>)


## function testConstants


```haxe
function testConstants(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf16.hx#L76>)


## function testDecode


```haxe
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf16.hx#L151>)


## function testDecodeRune


```haxe
function testDecodeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf16.hx#L159>)


## function testEncode


```haxe
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf16.hx#L84>)


## function testEncodeRune


```haxe
function testEncodeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf16.hx#L103>)


## function testIsSurrogate


```haxe
function testIsSurrogate(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf16.hx#L167>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Utf16.hx#L8>)


# Typedefs


```haxe
import stdgo._internal.unicode.utf16_test.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_want:stdgo.GoInt32;
	_r2:stdgo.GoInt32;
	_r1:stdgo.GoInt32;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_want:Bool;
	_r:stdgo.GoInt32;
};
```



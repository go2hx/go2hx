# Module: `stdgo.unicode.utf16`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function benchmarkAppendRuneValidASCII(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkappendrunevalidascii>)

- [`function benchmarkAppendRuneValidJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkappendrunevalidjapanesechars>)

- [`function benchmarkDecodeRune(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecoderune>)

- [`function benchmarkDecodeValidASCII(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecodevalidascii>)

- [`function benchmarkDecodeValidJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecodevalidjapanesechars>)

- [`function benchmarkEncodeRune(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkencoderune>)

- [`function benchmarkEncodeValidASCII(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkencodevalidascii>)

- [`function benchmarkEncodeValidJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkencodevalidjapanesechars>)

- [`function testAllocationsDecode(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testallocationsdecode>)

- [`function testAppendRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testappendrune>)

- [`function testConstants(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testconstants>)

- [`function testDecode(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecode>)

- [`function testDecodeRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecoderune>)

- [`function testEncode(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testencode>)

- [`function testEncodeRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testencoderune>)

- [`function testIsSurrogate(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testissurrogate>)

- [`function main():Void`](<#function-main>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

# Variables


```haxe
import stdgo.unicode.utf16_test.Utf16
```


```haxe
var _decodeRuneTests:stdgo.Slice<stdgo.unicode.utf16_test.T__struct_0>
```


```haxe
var _decodeTests:stdgo.Slice<stdgo.unicode.utf16_test.T_decodeTest>
```


```haxe
var _encodeTests:stdgo.Slice<stdgo.unicode.utf16_test.T_encodeTest>
```


```haxe
var _surrogateTests:stdgo.Slice<stdgo.unicode.utf16_test.T__struct_1>
```


```haxe
var _:Bool
```


```haxe
var _benchmarks:stdgo.Slice<stdgo.testing.InternalBenchmark>
```


```haxe
var _examples:stdgo.Slice<stdgo.testing.InternalExample>
```


```haxe
var _fuzzTargets:stdgo.Slice<stdgo.testing.InternalFuzzTarget>
```


```haxe
var _tests:stdgo.Slice<stdgo.testing.InternalTest>
```


# Functions


```haxe
import stdgo.unicode.utf16_test.Utf16
```


## function benchmarkAppendRuneValidASCII


```haxe
function benchmarkAppendRuneValidASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L314>)


## function benchmarkAppendRuneValidJapaneseChars


```haxe
function benchmarkAppendRuneValidJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L327>)


## function benchmarkDecodeRune


```haxe
function benchmarkDecodeRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L274>)


## function benchmarkDecodeValidASCII


```haxe
function benchmarkDecodeValidASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L232>)


## function benchmarkDecodeValidJapaneseChars


```haxe
function benchmarkDecodeValidJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L254>)


## function benchmarkEncodeRune


```haxe
function benchmarkEncodeRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L340>)


## function benchmarkEncodeValidASCII


```haxe
function benchmarkEncodeValidASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L296>)


## function benchmarkEncodeValidJapaneseChars


```haxe
function benchmarkEncodeValidJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L305>)


## function testAllocationsDecode


```haxe
function testAllocationsDecode(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L194>)


## function testAppendRune


```haxe
function testAppendRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L149>)


## function testConstants


```haxe
function testConstants(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Validate the constants redefined from unicode.  

[\(view code\)](<./Utf16.hx#L133>)


## function testDecode


```haxe
function testDecode(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L208>)


## function testDecodeRune


```haxe
function testDecodeRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L216>)


## function testEncode


```haxe
function testEncode(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L141>)


## function testEncodeRune


```haxe
function testEncodeRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L160>)


## function testIsSurrogate


```haxe
function testIsSurrogate(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L224>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Utf16.hx#L27>)


# Typedefs


```haxe
import stdgo.unicode.utf16_test.*
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



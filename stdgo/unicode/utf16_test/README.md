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

- [`function testAppendRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testappendrune>)

- [`function testConstants(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testconstants>)

- [`function testDecode(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecode>)

- [`function testDecodeRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecoderune>)

- [`function testEncode(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testencode>)

- [`function testEncodeRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testencoderune>)

- [`function testIsSurrogate(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testissurrogate>)

# Variables


```haxe
import stdgo.unicode.utf16_test.Utf16
```


```haxe
var _:Bool
```


# Functions


```haxe
import stdgo.unicode.utf16_test.Utf16
```


## function benchmarkAppendRuneValidASCII


```haxe
function benchmarkAppendRuneValidASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L309>)


## function benchmarkAppendRuneValidJapaneseChars


```haxe
function benchmarkAppendRuneValidJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L322>)


## function benchmarkDecodeRune


```haxe
function benchmarkDecodeRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L269>)


## function benchmarkDecodeValidASCII


```haxe
function benchmarkDecodeValidASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L227>)


## function benchmarkDecodeValidJapaneseChars


```haxe
function benchmarkDecodeValidJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L249>)


## function benchmarkEncodeRune


```haxe
function benchmarkEncodeRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L335>)


## function benchmarkEncodeValidASCII


```haxe
function benchmarkEncodeValidASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L291>)


## function benchmarkEncodeValidJapaneseChars


```haxe
function benchmarkEncodeValidJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Utf16.hx#L300>)


## function testAppendRune


```haxe
function testAppendRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L158>)


## function testConstants


```haxe
function testConstants(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Validate the constants redefined from unicode.  

[\(view code\)](<./Utf16.hx#L142>)


## function testDecode


```haxe
function testDecode(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L203>)


## function testDecodeRune


```haxe
function testDecodeRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L211>)


## function testEncode


```haxe
function testEncode(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L150>)


## function testEncodeRune


```haxe
function testEncodeRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L169>)


## function testIsSurrogate


```haxe
function testIsSurrogate(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Utf16.hx#L219>)



# Module: `stdgo._internal.unicode.utf8`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _runtimeDecodeRune(_s:stdgo.GoString):stdgo.GoRune`](<#function-_runtimedecoderune>)

- [`function _runtimeRuneCount(_s:stdgo.GoString):stdgo.GoInt`](<#function-_runtimerunecount>)

- [`function _testSequence(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.GoString):Void`](<#function-_testsequence>)

- [`function benchmarkAppendASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappendasciirune>)

- [`function benchmarkAppendJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappendjapaneserune>)

- [`function benchmarkDecodeASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecodeasciirune>)

- [`function benchmarkDecodeJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdecodejapaneserune>)

- [`function benchmarkEncodeASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkencodeasciirune>)

- [`function benchmarkEncodeJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkencodejapaneserune>)

- [`function benchmarkFullRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkfullrune>)

- [`function benchmarkRuneCountInStringTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrunecountinstringtenasciichars>)

- [`function benchmarkRuneCountInStringTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrunecountinstringtenjapanesechars>)

- [`function benchmarkRuneCountTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrunecounttenasciichars>)

- [`function benchmarkRuneCountTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrunecounttenjapanesechars>)

- [`function benchmarkValid100KASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkvalid100kasciichars>)

- [`function benchmarkValidLongJapanese(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkvalidlongjapanese>)

- [`function benchmarkValidLongMostlyASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkvalidlongmostlyascii>)

- [`function benchmarkValidString100KASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkvalidstring100kasciichars>)

- [`function benchmarkValidStringLongJapanese(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkvalidstringlongjapanese>)

- [`function benchmarkValidStringLongMostlyASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkvalidstringlongmostlyascii>)

- [`function benchmarkValidStringTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkvalidstringtenasciichars>)

- [`function benchmarkValidStringTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkvalidstringtenjapanesechars>)

- [`function benchmarkValidTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkvalidtenasciichars>)

- [`function benchmarkValidTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkvalidtenjapanesechars>)

- [`function exampleAppendRune():Void`](<#function-exampleappendrune>)

- [`function exampleDecodeLastRune():Void`](<#function-exampledecodelastrune>)

- [`function exampleDecodeLastRuneInString():Void`](<#function-exampledecodelastruneinstring>)

- [`function exampleDecodeRune():Void`](<#function-exampledecoderune>)

- [`function exampleDecodeRuneInString():Void`](<#function-exampledecoderuneinstring>)

- [`function exampleEncodeRune():Void`](<#function-exampleencoderune>)

- [`function exampleEncodeRune_outOfRange():Void`](<#function-exampleencoderune_outofrange>)

- [`function exampleFullRune():Void`](<#function-examplefullrune>)

- [`function exampleFullRuneInString():Void`](<#function-examplefullruneinstring>)

- [`function exampleRuneCount():Void`](<#function-examplerunecount>)

- [`function exampleRuneCountInString():Void`](<#function-examplerunecountinstring>)

- [`function exampleRuneLen():Void`](<#function-examplerunelen>)

- [`function exampleRuneStart():Void`](<#function-examplerunestart>)

- [`function exampleValid():Void`](<#function-examplevalid>)

- [`function exampleValidRune():Void`](<#function-examplevalidrune>)

- [`function exampleValidString():Void`](<#function-examplevalidstring>)

- [`function testAppendRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testappendrune>)

- [`function testConstants(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testconstants>)

- [`function testDecodeInvalidSequence(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecodeinvalidsequence>)

- [`function testDecodeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecoderune>)

- [`function testDecodeSurrogateRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecodesurrogaterune>)

- [`function testEncodeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testencoderune>)

- [`function testFullRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfullrune>)

- [`function testNegativeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnegativerune>)

- [`function testRuneCount(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrunecount>)

- [`function testRuneLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrunelen>)

- [`function testRuntimeConversion(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testruntimeconversion>)

- [`function testSequencing(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsequencing>)

- [`function testValid(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testvalid>)

- [`function testValidRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testvalidrune>)

- [`function main():Void`](<#function-main>)

- [class RuneCountTest](<#class-runecounttest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoInt):Void`](<#runecounttest-function-new>)

- [class RuneLenTest](<#class-runelentest>)

  - [`function new(?_r:stdgo.GoInt32, ?_size:stdgo.GoInt):Void`](<#runelentest-function-new>)

- [class T\_\_testSequence\_0\_\_\_localname\_\_\_info](<#class-ttestsequence_0_localname___info>)

  - [`function new(?_index:stdgo.GoInt, ?_r:stdgo.GoInt32):Void`](<#ttestsequence_0_localname___info-function-new>)

- [class Utf8Map](<#class-utf8map>)

  - [`function new(?_r:stdgo.GoInt32, ?_str:stdgo.GoString):Void`](<#utf8map-function-new>)

- [class ValidRuneTest](<#class-validrunetest>)

  - [`function new(?_r:stdgo.GoInt32, ?_ok:Bool):Void`](<#validrunetest-function-new>)

- [class ValidTest](<#class-validtest>)

  - [`function new(?_in:stdgo.GoString, ?_out:Bool):Void`](<#validtest-function-new>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Variables


```haxe
import stdgo._internal.unicode.utf8_test.Utf8
```


```haxe
var _:Bool
```


```haxe
var _ascii100000:stdgo.GoString
```


```haxe
var _boolSink:Bool
```


```haxe
var _invalidSequenceTests:stdgo.Slice<stdgo.GoString>
```


```haxe
var _longStringJapanese:stdgo.GoString
```


```haxe
var _longStringMostlyASCII:stdgo.GoString
```


```haxe
var _runecounttests:stdgo.Slice<stdgo._internal.unicode.utf8_test.RuneCountTest>
```


```haxe
var _runelentests:stdgo.Slice<stdgo._internal.unicode.utf8_test.RuneLenTest>
```


```haxe
var _surrogateMap:stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8Map>
```


```haxe
var _testStrings:stdgo.Slice<stdgo.GoString>
```


```haxe
var _utf8map:stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8Map>
```


```haxe
var _validTests:stdgo.Slice<stdgo._internal.unicode.utf8_test.ValidTest>
```


```haxe
var _validrunetests:stdgo.Slice<stdgo._internal.unicode.utf8_test.ValidRuneTest>
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
import stdgo._internal.unicode.utf8_test.Utf8
```


## function \_runtimeDecodeRune


```haxe
function _runtimeDecodeRune(_s:stdgo.GoString):stdgo.GoRune
```


[\(view code\)](<./Utf8.hx#L511>)


## function \_runtimeRuneCount


```haxe
function _runtimeRuneCount(_s:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Utf8.hx#L481>)


## function \_testSequence


```haxe
function _testSequence(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.GoString):Void
```


[\(view code\)](<./Utf8.hx#L558>)


## function benchmarkAppendASCIIRune


```haxe
function benchmarkAppendASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L809>)


## function benchmarkAppendJapaneseRune


```haxe
function benchmarkAppendJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L818>)


## function benchmarkDecodeASCIIRune


```haxe
function benchmarkDecodeASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L827>)


## function benchmarkDecodeJapaneseRune


```haxe
function benchmarkDecodeJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L836>)


## function benchmarkEncodeASCIIRune


```haxe
function benchmarkEncodeASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L791>)


## function benchmarkEncodeJapaneseRune


```haxe
function benchmarkEncodeJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L800>)


## function benchmarkFullRune


```haxe
function benchmarkFullRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L845>)


## function benchmarkRuneCountInStringTenASCIIChars


```haxe
function benchmarkRuneCountInStringTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L690>)


## function benchmarkRuneCountInStringTenJapaneseChars


```haxe
function benchmarkRuneCountInStringTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L698>)


## function benchmarkRuneCountTenASCIIChars


```haxe
function benchmarkRuneCountTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L672>)


## function benchmarkRuneCountTenJapaneseChars


```haxe
function benchmarkRuneCountTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L681>)


## function benchmarkValid100KASCIIChars


```haxe
function benchmarkValid100KASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L715>)


## function benchmarkValidLongJapanese


```haxe
function benchmarkValidLongJapanese(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L742>)


## function benchmarkValidLongMostlyASCII


```haxe
function benchmarkValidLongMostlyASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L733>)


## function benchmarkValidString100KASCIIChars


```haxe
function benchmarkValidString100KASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L759>)


## function benchmarkValidStringLongJapanese


```haxe
function benchmarkValidStringLongJapanese(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L783>)


## function benchmarkValidStringLongMostlyASCII


```haxe
function benchmarkValidStringLongMostlyASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L775>)


## function benchmarkValidStringTenASCIIChars


```haxe
function benchmarkValidStringTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L751>)


## function benchmarkValidStringTenJapaneseChars


```haxe
function benchmarkValidStringTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L767>)


## function benchmarkValidTenASCIIChars


```haxe
function benchmarkValidTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L706>)


## function benchmarkValidTenJapaneseChars


```haxe
function benchmarkValidTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L724>)


## function exampleAppendRune


```haxe
function exampleAppendRune():Void
```


[\(view code\)](<./Utf8.hx#L306>)


## function exampleDecodeLastRune


```haxe
function exampleDecodeLastRune():Void
```


[\(view code\)](<./Utf8.hx#L211>)


## function exampleDecodeLastRuneInString


```haxe
function exampleDecodeLastRuneInString():Void
```


[\(view code\)](<./Utf8.hx#L219>)


## function exampleDecodeRune


```haxe
function exampleDecodeRune():Void
```


[\(view code\)](<./Utf8.hx#L227>)


## function exampleDecodeRuneInString


```haxe
function exampleDecodeRuneInString():Void
```


[\(view code\)](<./Utf8.hx#L235>)


## function exampleEncodeRune


```haxe
function exampleEncodeRune():Void
```


[\(view code\)](<./Utf8.hx#L243>)


## function exampleEncodeRune\_outOfRange


```haxe
function exampleEncodeRune_outOfRange():Void
```


[\(view code\)](<./Utf8.hx#L250>)


## function exampleFullRune


```haxe
function exampleFullRune():Void
```


[\(view code\)](<./Utf8.hx#L258>)


## function exampleFullRuneInString


```haxe
function exampleFullRuneInString():Void
```


[\(view code\)](<./Utf8.hx#L263>)


## function exampleRuneCount


```haxe
function exampleRuneCount():Void
```


[\(view code\)](<./Utf8.hx#L268>)


## function exampleRuneCountInString


```haxe
function exampleRuneCountInString():Void
```


[\(view code\)](<./Utf8.hx#L273>)


## function exampleRuneLen


```haxe
function exampleRuneLen():Void
```


[\(view code\)](<./Utf8.hx#L278>)


## function exampleRuneStart


```haxe
function exampleRuneStart():Void
```


[\(view code\)](<./Utf8.hx#L282>)


## function exampleValid


```haxe
function exampleValid():Void
```


[\(view code\)](<./Utf8.hx#L288>)


## function exampleValidRune


```haxe
function exampleValidRune():Void
```


[\(view code\)](<./Utf8.hx#L294>)


## function exampleValidString


```haxe
function exampleValidString():Void
```


[\(view code\)](<./Utf8.hx#L300>)


## function testAppendRune


```haxe
function testAppendRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L360>)


## function testConstants


```haxe
function testConstants(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L312>)


## function testDecodeInvalidSequence


```haxe
function testDecodeInvalidSequence(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L517>)


## function testDecodeRune


```haxe
function testDecodeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L376>)


## function testDecodeSurrogateRune


```haxe
function testDecodeSurrogateRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L454>)


## function testEncodeRune


```haxe
function testEncodeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L349>)


## function testFullRune


```haxe
function testFullRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L320>)


## function testNegativeRune


```haxe
function testNegativeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L617>)


## function testRuneCount


```haxe
function testRuneCount(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L626>)


## function testRuneLen


```haxe
function testRuneLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L642>)


## function testRuntimeConversion


```haxe
function testRuntimeConversion(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L484>)


## function testSequencing


```haxe
function testSequencing(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L472>)


## function testValid


```haxe
function testValid(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L652>)


## function testValidRune


```haxe
function testValidRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L662>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Utf8.hx#L65>)


# Classes


```haxe
import stdgo._internal.unicode.utf8_test.*
```


## class RuneCountTest


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoInt
```


### RuneCountTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.GoInt):Void
```


[\(view code\)](<./Utf8_test.hx#L150>)


## class RuneLenTest


```haxe
var _r:stdgo.GoInt32
```


```haxe
var _size:stdgo.GoInt
```


### RuneLenTest function new


```haxe
function new(?_r:stdgo.GoInt32, ?_size:stdgo.GoInt):Void
```


[\(view code\)](<./Utf8_test.hx#L162>)


## class T\_\_testSequence\_0\_\_\_localname\_\_\_info


```haxe
var _index:stdgo.GoInt
```


```haxe
var _r:stdgo.GoInt32
```


### T\_\_testSequence\_0\_\_\_localname\_\_\_info function new


```haxe
function new(?_index:stdgo.GoInt, ?_r:stdgo.GoInt32):Void
```


[\(view code\)](<./Utf8_test.hx#L549>)


## class Utf8Map


```haxe
var _r:stdgo.GoInt32
```


```haxe
var _str:stdgo.GoString
```


### Utf8Map function new


```haxe
function new(?_r:stdgo.GoInt32, ?_str:stdgo.GoString):Void
```


[\(view code\)](<./Utf8_test.hx#L138>)


## class ValidRuneTest


```haxe
var _ok:Bool
```


```haxe
var _r:stdgo.GoInt32
```


### ValidRuneTest function new


```haxe
function new(?_r:stdgo.GoInt32, ?_ok:Bool):Void
```


[\(view code\)](<./Utf8_test.hx#L186>)


## class ValidTest


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:Bool
```


### ValidTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:Bool):Void
```


[\(view code\)](<./Utf8_test.hx#L174>)


# Typedefs


```haxe
import stdgo._internal.unicode.utf8_test.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_name:stdgo.GoString;
	_data:stdgo.Slice<stdgo.GoUInt8>;
};
```



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

- [class T\_\_testSequence\_\_\_localname\_\_\_info\_8684](<#class-ttestsequence_localname___info_8684>)

  - [`function new(?_index:stdgo.GoInt, ?_r:stdgo.GoInt32):Void`](<#ttestsequence_localname___info_8684-function-new>)

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


[\(view code\)](<./Utf8.hx#L491>)


## function \_runtimeRuneCount


```haxe
function _runtimeRuneCount(_s:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Utf8.hx#L461>)


## function \_testSequence


```haxe
function _testSequence(_t:stdgo.Ref<stdgo._internal.testing.T_>, _s:stdgo.GoString):Void
```


[\(view code\)](<./Utf8.hx#L538>)


## function benchmarkAppendASCIIRune


```haxe
function benchmarkAppendASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L789>)


## function benchmarkAppendJapaneseRune


```haxe
function benchmarkAppendJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L798>)


## function benchmarkDecodeASCIIRune


```haxe
function benchmarkDecodeASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L807>)


## function benchmarkDecodeJapaneseRune


```haxe
function benchmarkDecodeJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L816>)


## function benchmarkEncodeASCIIRune


```haxe
function benchmarkEncodeASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L771>)


## function benchmarkEncodeJapaneseRune


```haxe
function benchmarkEncodeJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L780>)


## function benchmarkFullRune


```haxe
function benchmarkFullRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L825>)


## function benchmarkRuneCountInStringTenASCIIChars


```haxe
function benchmarkRuneCountInStringTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L670>)


## function benchmarkRuneCountInStringTenJapaneseChars


```haxe
function benchmarkRuneCountInStringTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L678>)


## function benchmarkRuneCountTenASCIIChars


```haxe
function benchmarkRuneCountTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L652>)


## function benchmarkRuneCountTenJapaneseChars


```haxe
function benchmarkRuneCountTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L661>)


## function benchmarkValid100KASCIIChars


```haxe
function benchmarkValid100KASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L695>)


## function benchmarkValidLongJapanese


```haxe
function benchmarkValidLongJapanese(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L722>)


## function benchmarkValidLongMostlyASCII


```haxe
function benchmarkValidLongMostlyASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L713>)


## function benchmarkValidString100KASCIIChars


```haxe
function benchmarkValidString100KASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L739>)


## function benchmarkValidStringLongJapanese


```haxe
function benchmarkValidStringLongJapanese(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L763>)


## function benchmarkValidStringLongMostlyASCII


```haxe
function benchmarkValidStringLongMostlyASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L755>)


## function benchmarkValidStringTenASCIIChars


```haxe
function benchmarkValidStringTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L731>)


## function benchmarkValidStringTenJapaneseChars


```haxe
function benchmarkValidStringTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L747>)


## function benchmarkValidTenASCIIChars


```haxe
function benchmarkValidTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L686>)


## function benchmarkValidTenJapaneseChars


```haxe
function benchmarkValidTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Utf8.hx#L704>)


## function exampleAppendRune


```haxe
function exampleAppendRune():Void
```


[\(view code\)](<./Utf8.hx#L286>)


## function exampleDecodeLastRune


```haxe
function exampleDecodeLastRune():Void
```


[\(view code\)](<./Utf8.hx#L191>)


## function exampleDecodeLastRuneInString


```haxe
function exampleDecodeLastRuneInString():Void
```


[\(view code\)](<./Utf8.hx#L199>)


## function exampleDecodeRune


```haxe
function exampleDecodeRune():Void
```


[\(view code\)](<./Utf8.hx#L207>)


## function exampleDecodeRuneInString


```haxe
function exampleDecodeRuneInString():Void
```


[\(view code\)](<./Utf8.hx#L215>)


## function exampleEncodeRune


```haxe
function exampleEncodeRune():Void
```


[\(view code\)](<./Utf8.hx#L223>)


## function exampleEncodeRune\_outOfRange


```haxe
function exampleEncodeRune_outOfRange():Void
```


[\(view code\)](<./Utf8.hx#L230>)


## function exampleFullRune


```haxe
function exampleFullRune():Void
```


[\(view code\)](<./Utf8.hx#L238>)


## function exampleFullRuneInString


```haxe
function exampleFullRuneInString():Void
```


[\(view code\)](<./Utf8.hx#L243>)


## function exampleRuneCount


```haxe
function exampleRuneCount():Void
```


[\(view code\)](<./Utf8.hx#L248>)


## function exampleRuneCountInString


```haxe
function exampleRuneCountInString():Void
```


[\(view code\)](<./Utf8.hx#L253>)


## function exampleRuneLen


```haxe
function exampleRuneLen():Void
```


[\(view code\)](<./Utf8.hx#L258>)


## function exampleRuneStart


```haxe
function exampleRuneStart():Void
```


[\(view code\)](<./Utf8.hx#L262>)


## function exampleValid


```haxe
function exampleValid():Void
```


[\(view code\)](<./Utf8.hx#L268>)


## function exampleValidRune


```haxe
function exampleValidRune():Void
```


[\(view code\)](<./Utf8.hx#L274>)


## function exampleValidString


```haxe
function exampleValidString():Void
```


[\(view code\)](<./Utf8.hx#L280>)


## function testAppendRune


```haxe
function testAppendRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L340>)


## function testConstants


```haxe
function testConstants(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L292>)


## function testDecodeInvalidSequence


```haxe
function testDecodeInvalidSequence(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L497>)


## function testDecodeRune


```haxe
function testDecodeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L356>)


## function testDecodeSurrogateRune


```haxe
function testDecodeSurrogateRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L434>)


## function testEncodeRune


```haxe
function testEncodeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L329>)


## function testFullRune


```haxe
function testFullRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L300>)


## function testNegativeRune


```haxe
function testNegativeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L597>)


## function testRuneCount


```haxe
function testRuneCount(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L606>)


## function testRuneLen


```haxe
function testRuneLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L622>)


## function testRuntimeConversion


```haxe
function testRuntimeConversion(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L464>)


## function testSequencing


```haxe
function testSequencing(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L452>)


## function testValid


```haxe
function testValid(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L632>)


## function testValidRune


```haxe
function testValidRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Utf8.hx#L642>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Utf8.hx#L59>)


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


[\(view code\)](<./Utf8_test.hx#L130>)


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


[\(view code\)](<./Utf8_test.hx#L142>)


## class T\_\_testSequence\_\_\_localname\_\_\_info\_8684


```haxe
var _index:stdgo.GoInt
```


```haxe
var _r:stdgo.GoInt32
```


### T\_\_testSequence\_\_\_localname\_\_\_info\_8684 function new


```haxe
function new(?_index:stdgo.GoInt, ?_r:stdgo.GoInt32):Void
```


[\(view code\)](<./Utf8_test.hx#L529>)


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


[\(view code\)](<./Utf8_test.hx#L118>)


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


[\(view code\)](<./Utf8_test.hx#L166>)


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


[\(view code\)](<./Utf8_test.hx#L154>)


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



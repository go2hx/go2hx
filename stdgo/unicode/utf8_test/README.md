# Module: stdgo.unicode.utf8


[(view library index)](../../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

- [function \_runtimeDecodeRune\(\_s:stdgo.GoString\):stdgo.GoRune](<#function-_runtimedecoderune>)

- [function \_runtimeRuneCount\(\_s:stdgo.GoString\):stdgo.GoInt](<#function-_runtimerunecount>)

- [function \_testSequence\(\_t:stdgo.Ref\<stdgo.testing.T\>, \_s:stdgo.GoString\):Void](<#function-_testsequence>)

- [function benchmarkAppendASCIIRune\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkappendasciirune>)

- [function benchmarkAppendJapaneseRune\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkappendjapaneserune>)

- [function benchmarkDecodeASCIIRune\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkdecodeasciirune>)

- [function benchmarkDecodeJapaneseRune\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkdecodejapaneserune>)

- [function benchmarkEncodeASCIIRune\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkencodeasciirune>)

- [function benchmarkEncodeJapaneseRune\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkencodejapaneserune>)

- [function benchmarkFullRune\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkfullrune>)

- [function benchmarkRuneCountInStringTenASCIIChars\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkrunecountinstringtenasciichars>)

- [function benchmarkRuneCountInStringTenJapaneseChars\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkrunecountinstringtenjapanesechars>)

- [function benchmarkRuneCountTenASCIIChars\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkrunecounttenasciichars>)

- [function benchmarkRuneCountTenJapaneseChars\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkrunecounttenjapanesechars>)

- [function benchmarkValid100KASCIIChars\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkvalid100kasciichars>)

- [function benchmarkValidLongJapanese\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkvalidlongjapanese>)

- [function benchmarkValidLongMostlyASCII\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkvalidlongmostlyascii>)

- [function benchmarkValidString100KASCIIChars\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkvalidstring100kasciichars>)

- [function benchmarkValidStringLongJapanese\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkvalidstringlongjapanese>)

- [function benchmarkValidStringLongMostlyASCII\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkvalidstringlongmostlyascii>)

- [function benchmarkValidStringTenASCIIChars\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkvalidstringtenasciichars>)

- [function benchmarkValidStringTenJapaneseChars\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkvalidstringtenjapanesechars>)

- [function benchmarkValidTenASCIIChars\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkvalidtenasciichars>)

- [function benchmarkValidTenJapaneseChars\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkvalidtenjapanesechars>)

- [function exampleAppendRune\(\):Void](<#function-exampleappendrune>)

- [function exampleDecodeLastRune\(\):Void](<#function-exampledecodelastrune>)

- [function exampleDecodeLastRuneInString\(\):Void](<#function-exampledecodelastruneinstring>)

- [function exampleDecodeRune\(\):Void](<#function-exampledecoderune>)

- [function exampleDecodeRuneInString\(\):Void](<#function-exampledecoderuneinstring>)

- [function exampleEncodeRune\(\):Void](<#function-exampleencoderune>)

- [function exampleEncodeRune\_outOfRange\(\):Void](<#function-exampleencoderune_outofrange>)

- [function exampleFullRune\(\):Void](<#function-examplefullrune>)

- [function exampleFullRuneInString\(\):Void](<#function-examplefullruneinstring>)

- [function exampleRuneCount\(\):Void](<#function-examplerunecount>)

- [function exampleRuneCountInString\(\):Void](<#function-examplerunecountinstring>)

- [function exampleRuneLen\(\):Void](<#function-examplerunelen>)

- [function exampleRuneStart\(\):Void](<#function-examplerunestart>)

- [function exampleValid\(\):Void](<#function-examplevalid>)

- [function exampleValidRune\(\):Void](<#function-examplevalidrune>)

- [function exampleValidString\(\):Void](<#function-examplevalidstring>)

- [function testAppendRune\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testappendrune>)

- [function testConstants\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testconstants>)

- [function testDecodeInvalidSequence\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testdecodeinvalidsequence>)

- [function testDecodeRune\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testdecoderune>)

- [function testDecodeSurrogateRune\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testdecodesurrogaterune>)

- [function testEncodeRune\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testencoderune>)

- [function testFullRune\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testfullrune>)

- [function testNegativeRune\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testnegativerune>)

- [function testRuneCount\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testrunecount>)

- [function testRuneLen\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testrunelen>)

- [function testRuntimeConversion\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testruntimeconversion>)

- [function testSequencing\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsequencing>)

- [function testValid\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testvalid>)

- [function testValidRune\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testvalidrune>)

- [function main\(\):Void](<#function-main>)

- [class RuneCountTest](<#class-runecounttest>)

  - [function new\(?\_in:stdgo.GoString, ?\_out:Null\<stdgo.GoInt\>\):Void](<#runecounttest-function-new>)

- [class RuneLenTest](<#class-runelentest>)

  - [function new\(?\_r:stdgo.GoInt32, ?\_size:Null\<stdgo.GoInt\>\):Void](<#runelentest-function-new>)

- [class Utf8Map](<#class-utf8map>)

  - [function new\(?\_r:stdgo.GoInt32, ?\_str:stdgo.GoString\):Void](<#utf8map-function-new>)

- [class ValidRuneTest](<#class-validrunetest>)

  - [function new\(?\_r:stdgo.GoInt32, ?\_ok:Bool\):Void](<#validrunetest-function-new>)

- [class ValidTest](<#class-validtest>)

  - [function new\(?\_in:stdgo.GoString, ?\_out:Bool\):Void](<#validtest-function-new>)

# Variables


```haxe
import stdgo.unicode.utf8_test.Utf8
```


```haxe
var _:Bool
```


```haxe
var _:Bool
```


# Functions


```haxe
import stdgo.unicode.utf8_test.Utf8
```


## function \`\_runtimeDecodeRune\`


```haxe
function _runtimeDecodeRune(_s:stdgo.GoString):stdgo.GoRune
```


 


[\(view code\)](<./Utf8.hx#L615>)


## function \`\_runtimeRuneCount\`


```haxe
function _runtimeRuneCount(_s:stdgo.GoString):stdgo.GoInt
```


 


[\(view code\)](<./Utf8.hx#L574>)


## function \`\_testSequence\`


```haxe
function _testSequence(_t:stdgo.Ref<stdgo.testing.T>, _s:stdgo.GoString):Void
```


 


[\(view code\)](<./Utf8.hx#L677>)


## function \`benchmarkAppendASCIIRune\`


```haxe
function benchmarkAppendASCIIRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L970>)


## function \`benchmarkAppendJapaneseRune\`


```haxe
function benchmarkAppendJapaneseRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L980>)


## function \`benchmarkDecodeASCIIRune\`


```haxe
function benchmarkDecodeASCIIRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L990>)


## function \`benchmarkDecodeJapaneseRune\`


```haxe
function benchmarkDecodeJapaneseRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L1000>)


## function \`benchmarkEncodeASCIIRune\`


```haxe
function benchmarkEncodeASCIIRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L950>)


## function \`benchmarkEncodeJapaneseRune\`


```haxe
function benchmarkEncodeJapaneseRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L960>)


## function \`benchmarkFullRune\`


```haxe
function benchmarkFullRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L1010>)


## function \`benchmarkRuneCountInStringTenASCIIChars\`


```haxe
function benchmarkRuneCountInStringTenASCIIChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L837>)


## function \`benchmarkRuneCountInStringTenJapaneseChars\`


```haxe
function benchmarkRuneCountInStringTenJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L846>)


## function \`benchmarkRuneCountTenASCIIChars\`


```haxe
function benchmarkRuneCountTenASCIIChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L817>)


## function \`benchmarkRuneCountTenJapaneseChars\`


```haxe
function benchmarkRuneCountTenJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L827>)


## function \`benchmarkValid100KASCIIChars\`


```haxe
function benchmarkValid100KASCIIChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L865>)


## function \`benchmarkValidLongJapanese\`


```haxe
function benchmarkValidLongJapanese(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L895>)


## function \`benchmarkValidLongMostlyASCII\`


```haxe
function benchmarkValidLongMostlyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L885>)


## function \`benchmarkValidString100KASCIIChars\`


```haxe
function benchmarkValidString100KASCIIChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L914>)


## function \`benchmarkValidStringLongJapanese\`


```haxe
function benchmarkValidStringLongJapanese(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L941>)


## function \`benchmarkValidStringLongMostlyASCII\`


```haxe
function benchmarkValidStringLongMostlyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L932>)


## function \`benchmarkValidStringTenASCIIChars\`


```haxe
function benchmarkValidStringTenASCIIChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L905>)


## function \`benchmarkValidStringTenJapaneseChars\`


```haxe
function benchmarkValidStringTenJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L923>)


## function \`benchmarkValidTenASCIIChars\`


```haxe
function benchmarkValidTenASCIIChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L855>)


## function \`benchmarkValidTenJapaneseChars\`


```haxe
function benchmarkValidTenJapaneseChars(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Utf8.hx#L875>)


## function \`exampleAppendRune\`


```haxe
function exampleAppendRune():Void
```


 


[\(view code\)](<./Utf8.hx#L368>)


## function \`exampleDecodeLastRune\`


```haxe
function exampleDecodeLastRune():Void
```


 


[\(view code\)](<./Utf8.hx#L250>)


## function \`exampleDecodeLastRuneInString\`


```haxe
function exampleDecodeLastRuneInString():Void
```


 


[\(view code\)](<./Utf8.hx#L261>)


## function \`exampleDecodeRune\`


```haxe
function exampleDecodeRune():Void
```


 


[\(view code\)](<./Utf8.hx#L272>)


## function \`exampleDecodeRuneInString\`


```haxe
function exampleDecodeRuneInString():Void
```


 


[\(view code\)](<./Utf8.hx#L283>)


## function \`exampleEncodeRune\`


```haxe
function exampleEncodeRune():Void
```


 


[\(view code\)](<./Utf8.hx#L294>)


## function \`exampleEncodeRune\_outOfRange\`


```haxe
function exampleEncodeRune_outOfRange():Void
```


 


[\(view code\)](<./Utf8.hx#L302>)


## function \`exampleFullRune\`


```haxe
function exampleFullRune():Void
```


 


[\(view code\)](<./Utf8.hx#L311>)


## function \`exampleFullRuneInString\`


```haxe
function exampleFullRuneInString():Void
```


 


[\(view code\)](<./Utf8.hx#L317>)


## function \`exampleRuneCount\`


```haxe
function exampleRuneCount():Void
```


 


[\(view code\)](<./Utf8.hx#L323>)


## function \`exampleRuneCountInString\`


```haxe
function exampleRuneCountInString():Void
```


 


[\(view code\)](<./Utf8.hx#L329>)


## function \`exampleRuneLen\`


```haxe
function exampleRuneLen():Void
```


 


[\(view code\)](<./Utf8.hx#L335>)


## function \`exampleRuneStart\`


```haxe
function exampleRuneStart():Void
```


 


[\(view code\)](<./Utf8.hx#L340>)


## function \`exampleValid\`


```haxe
function exampleValid():Void
```


 


[\(view code\)](<./Utf8.hx#L347>)


## function \`exampleValidRune\`


```haxe
function exampleValidRune():Void
```


 


[\(view code\)](<./Utf8.hx#L354>)


## function \`exampleValidString\`


```haxe
function exampleValidString():Void
```


 


[\(view code\)](<./Utf8.hx#L361>)


## function \`testAppendRune\`


```haxe
function testAppendRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Utf8.hx#L429>)


## function \`testConstants\`


```haxe
function testConstants(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Validate the constants redefined from unicode. 


[\(view code\)](<./Utf8.hx#L378>)


## function \`testDecodeInvalidSequence\`


```haxe
function testDecodeInvalidSequence(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Utf8.hx#L622>)


## function \`testDecodeRune\`


```haxe
function testDecodeRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Utf8.hx#L447>)


## function \`testDecodeSurrogateRune\`


```haxe
function testDecodeSurrogateRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Utf8.hx#L537>)


## function \`testEncodeRune\`


```haxe
function testEncodeRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Utf8.hx#L417>)


## function \`testFullRune\`


```haxe
function testFullRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Utf8.hx#L387>)


## function \`testNegativeRune\`


```haxe
function testNegativeRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Check that negative runes encode as U\+FFFD. 


[\(view code\)](<./Utf8.hx#L757>)


## function \`testRuneCount\`


```haxe
function testRuneCount(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Utf8.hx#L767>)


## function \`testRuneLen\`


```haxe
function testRuneLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Utf8.hx#L784>)


## function \`testRuntimeConversion\`


```haxe
function testRuntimeConversion(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Check that a range loop, len\(\[\]rune\(string\)\) optimization and \[\]rune conversions visit the same runes. Not really a test of this package, but the assumption is used here and it's good to verify. 


[\(view code\)](<./Utf8.hx#L584>)


## function \`testSequencing\`


```haxe
function testSequencing(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Check that DecodeRune and DecodeLastRune correspond to the equivalent range loop. 


[\(view code\)](<./Utf8.hx#L564>)


## function \`testValid\`


```haxe
function testValid(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Utf8.hx#L795>)


## function \`testValidRune\`


```haxe
function testValidRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Utf8.hx#L806>)


## function \`main\`


```haxe
function main():Void
```


 


[\(view code\)](<./Utf8.hx#L126>)


# Classes


```haxe
import stdgo.unicode.utf8_test.*
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
function new(?_in:stdgo.GoString, ?_out:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Utf8_test.hx#L173>)


## class RuneLenTest


 


```haxe
var _r:stdgo.GoInt32
```


```haxe
var _size:stdgo.GoInt
```


### RuneLenTest function new


```haxe
function new(?_r:stdgo.GoInt32, ?_size:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Utf8_test.hx#L192>)


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


 


[\(view code\)](<./Utf8_test.hx#L154>)


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


 


[\(view code\)](<./Utf8_test.hx#L230>)


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


 


[\(view code\)](<./Utf8_test.hx#L211>)


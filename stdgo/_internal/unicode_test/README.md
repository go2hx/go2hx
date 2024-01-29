# Module: `stdgo._internal.unicode`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _binary(_ranges:stdgo.Slice<stdgo._internal.unicode.Range16>, _r:stdgo.GoUInt16):Bool`](<#function-_binary>)

- [`function _caseString(_c:stdgo.GoInt):stdgo.GoString`](<#function-_casestring>)

- [`function _fakeTable(_n:stdgo.GoInt):stdgo.Slice<stdgo._internal.unicode.Range16>`](<#function-_faketable>)

- [`function _linear(_ranges:stdgo.Slice<stdgo._internal.unicode.Range16>, _r:stdgo.GoUInt16):Bool`](<#function-_linear>)

- [`function exampleIsDigit():Void`](<#function-exampleisdigit>)

- [`function exampleIsLetter():Void`](<#function-exampleisletter>)

- [`function exampleIsLower():Void`](<#function-exampleislower>)

- [`function exampleIsNumber():Void`](<#function-exampleisnumber>)

- [`function exampleIsSpace():Void`](<#function-exampleisspace>)

- [`function exampleIsTitle():Void`](<#function-exampleistitle>)

- [`function exampleIsUpper():Void`](<#function-exampleisupper>)

- [`function exampleSimpleFold():Void`](<#function-examplesimplefold>)

- [`function exampleSpecialCase():Void`](<#function-examplespecialcase>)

- [`function exampleTo():Void`](<#function-exampleto>)

- [`function exampleToLower():Void`](<#function-exampletolower>)

- [`function exampleToTitle():Void`](<#function-exampletotitle>)

- [`function exampleToUpper():Void`](<#function-exampletoupper>)

- [`function example_is():Void`](<#function-example_is>)

- [`function testCalibrate(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcalibrate>)

- [`function testCategories(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcategories>)

- [`function testDigit(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdigit>)

- [`function testDigitOptimization(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdigitoptimization>)

- [`function testIsControlLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testiscontrollatin1>)

- [`function testIsGraphicLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testisgraphiclatin1>)

- [`function testIsLetter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testisletter>)

- [`function testIsLetterLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testisletterlatin1>)

- [`function testIsLowerLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testislowerlatin1>)

- [`function testIsPrintLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testisprintlatin1>)

- [`function testIsPunctLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testispunctlatin1>)

- [`function testIsSpace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testisspace>)

- [`function testIsSpaceLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testisspacelatin1>)

- [`function testIsSymbolLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testissymbollatin1>)

- [`function testIsUpper(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testisupper>)

- [`function testIsUpperLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testisupperlatin1>)

- [`function testLatinOffset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlatinoffset>)

- [`function testLetterOptimizations(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testletteroptimizations>)

- [`function testNegativeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnegativerune>)

- [`function testNumberLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnumberlatin1>)

- [`function testProperties(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testproperties>)

- [`function testSimpleFold(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsimplefold>)

- [`function testSpecialCaseNoMapping(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testspecialcasenomapping>)

- [`function testTo(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testto>)

- [`function testToLowerCase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtolowercase>)

- [`function testToTitleCase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtotitlecase>)

- [`function testToUpperCase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtouppercase>)

- [`function testTurkishCase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testturkishcase>)

- [`function main():Void`](<#function-main>)

- [class T\_](<#class-t_>)

  - [`function new(?_rune:stdgo.GoInt32, ?_script:stdgo.GoString):Void`](<#t_-function-new>)

# Variables


```haxe
import stdgo._internal.unicode_test.Unicode
```


```haxe
var _calibrate:stdgo.Pointer<Bool>
```


```haxe
var _caseTest:stdgo.Slice<stdgo._internal.unicode_test.T_caseT>
```


```haxe
var _inCategoryTest:stdgo.Slice<stdgo._internal.unicode_test.T_>
```


```haxe
var _inPropTest:stdgo.Slice<stdgo._internal.unicode_test.T_>
```


```haxe
var _letterTest:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _notletterTest:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _notupperTest:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _simpleFoldTests:stdgo.Slice<stdgo.GoString>
```


```haxe
var _spaceTest:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _testDigit:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _testLetter:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _upperTest:stdgo.Slice<stdgo.GoInt32>
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
import stdgo._internal.unicode_test.Unicode
```


## function \_binary


```haxe
function _binary(_ranges:stdgo.Slice<stdgo._internal.unicode.Range16>, _r:stdgo.GoUInt16):Bool
```


[\(view code\)](<./Unicode.hx#L910>)


## function \_caseString


```haxe
function _caseString(_c:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Unicode.hx#L699>)


## function \_fakeTable


```haxe
function _fakeTable(_n:stdgo.GoInt):stdgo.Slice<stdgo._internal.unicode.Range16>
```


[\(view code\)](<./Unicode.hx#L888>)


## function \_linear


```haxe
function _linear(_ranges:stdgo.Slice<stdgo._internal.unicode.Range16>, _r:stdgo.GoUInt16):Bool
```


[\(view code\)](<./Unicode.hx#L898>)


## function exampleIsDigit


```haxe
function exampleIsDigit():Void
```


[\(view code\)](<./Unicode.hx#L507>)


## function exampleIsLetter


```haxe
function exampleIsLetter():Void
```


[\(view code\)](<./Unicode.hx#L515>)


## function exampleIsLower


```haxe
function exampleIsLower():Void
```


[\(view code\)](<./Unicode.hx#L519>)


## function exampleIsNumber


```haxe
function exampleIsNumber():Void
```


[\(view code\)](<./Unicode.hx#L511>)


## function exampleIsSpace


```haxe
function exampleIsSpace():Void
```


[\(view code\)](<./Unicode.hx#L531>)


## function exampleIsTitle


```haxe
function exampleIsTitle():Void
```


[\(view code\)](<./Unicode.hx#L527>)


## function exampleIsUpper


```haxe
function exampleIsUpper():Void
```


[\(view code\)](<./Unicode.hx#L523>)


## function exampleSimpleFold


```haxe
function exampleSimpleFold():Void
```


[\(view code\)](<./Unicode.hx#L466>)


## function exampleSpecialCase


```haxe
function exampleSpecialCase():Void
```


[\(view code\)](<./Unicode.hx#L496>)


## function exampleTo


```haxe
function exampleTo():Void
```


[\(view code\)](<./Unicode.hx#L474>)


## function exampleToLower


```haxe
function exampleToLower():Void
```


[\(view code\)](<./Unicode.hx#L484>)


## function exampleToTitle


```haxe
function exampleToTitle():Void
```


[\(view code\)](<./Unicode.hx#L488>)


## function exampleToUpper


```haxe
function exampleToUpper():Void
```


[\(view code\)](<./Unicode.hx#L492>)


## function example\_is


```haxe
function example_is():Void
```


[\(view code\)](<./Unicode.hx#L418>)


## function testCalibrate


```haxe
function testCalibrate(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L842>)


## function testCategories


```haxe
function testCategories(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L1004>)


## function testDigit


```haxe
function testDigit(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L396>)


## function testDigitOptimization


```haxe
function testDigitOptimization(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L408>)


## function testIsControlLatin1


```haxe
function testIsControlLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L537>)


## function testIsGraphicLatin1


```haxe
function testIsGraphicLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L617>)


## function testIsLetter


```haxe
function testIsLetter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L665>)


## function testIsLetterLatin1


```haxe
function testIsLetterLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L554>)


## function testIsLowerLatin1


```haxe
function testIsLowerLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L578>)


## function testIsPrintLatin1


```haxe
function testIsPrintLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L602>)


## function testIsPunctLatin1


```haxe
function testIsPunctLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L629>)


## function testIsSpace


```haxe
function testIsSpace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L753>)


## function testIsSpaceLatin1


```haxe
function testIsSpaceLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L641>)


## function testIsSymbolLatin1


```haxe
function testIsSymbolLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L653>)


## function testIsUpper


```haxe
function testIsUpper(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L682>)


## function testIsUpperLatin1


```haxe
function testIsUpperLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L566>)


## function testLatinOffset


```haxe
function testLatinOffset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L927>)


## function testLetterOptimizations


```haxe
function testLetterOptimizations(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L765>)


## function testNegativeRune


```haxe
function testNegativeRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L949>)


## function testNumberLatin1


```haxe
function testNumberLatin1(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L590>)


## function testProperties


```haxe
function testProperties(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L1030>)


## function testSimpleFold


```haxe
function testSimpleFold(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L821>)


## function testSpecialCaseNoMapping


```haxe
function testSpecialCaseNoMapping(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L941>)


## function testTo


```haxe
function testTo(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L712>)


## function testToLowerCase


```haxe
function testToLowerCase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L731>)


## function testToTitleCase


```haxe
function testToTitleCase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L742>)


## function testToUpperCase


```haxe
function testToUpperCase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L720>)


## function testTurkishCase


```haxe
function testTurkishCase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Unicode.hx#L796>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Unicode.hx#L54>)


# Classes


```haxe
import stdgo._internal.unicode_test.*
```


## class T\_


```haxe
var _rune:stdgo.GoInt32
```


```haxe
var _script:stdgo.GoString
```


### T\_ function new


```haxe
function new(?_rune:stdgo.GoInt32, ?_script:stdgo.GoString):Void
```


[\(view code\)](<./Unicode_test.hx#L387>)



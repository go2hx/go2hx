# Module: `stdgo.syscall.js`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function benchmarkDOM(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdom>)

- [`function exampleFuncOf():Void`](<#function-examplefuncof>)

- [`function testBool(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbool>)

- [`function testCall(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcall>)

- [`function testCopyBytesToGo(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcopybytestogo>)

- [`function testCopyBytesToJS(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcopybytestojs>)

- [`function testDelete(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdelete>)

- [`function testEqual(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testequal>)

- [`function testFloat(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfloat>)

- [`function testFrozenObject(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfrozenobject>)

- [`function testFuncOf(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfuncof>)

- [`function testGarbageCollection(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testgarbagecollection>)

- [`function testGet(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testget>)

- [`function testGlobal(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testglobal>)

- [`function testIndex(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindex>)

- [`function testInstanceOf(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testinstanceof>)

- [`function testInt(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testint>)

- [`function testIntConversion(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testintconversion>)

- [`function testInterleavedFunctions(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testinterleavedfunctions>)

- [`function testInvoke(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testinvoke>)

- [`function testInvokeFunction(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testinvokefunction>)

- [`function testLength(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlength>)

- [`function testNaN(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnan>)

- [`function testNew(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnew>)

- [`function testNull(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnull>)

- [`function testObject(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testobject>)

- [`function testSet(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testset>)

- [`function testSetIndex(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsetindex>)

- [`function testString(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-teststring>)

- [`function testTruthy(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtruthy>)

- [`function testType(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtype>)

- [`function testUndefined(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testundefined>)

- [`function testValueOf(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testvalueof>)

- [`function testZeroValue(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testzerovalue>)

# Variables


```haxe
import stdgo.syscall.js_test.Js
```


```haxe
var _:Bool
```


# Functions


```haxe
import stdgo.syscall.js_test.Js
```


## function benchmarkDOM


```haxe
function benchmarkDOM(_b:stdgo.Ref<stdgo.testing.B>):Void
```



BenchmarkDOM is a simple benchmark which emulates a webapp making DOM operations.
It creates a div, and sets its id. Then searches by that id and sets some data.
Finally it removes that div.  

[\(view code\)](<./Js.hx#L854>)


## function exampleFuncOf


```haxe
function exampleFuncOf():Void
```


[\(view code\)](<./Js.hx#L623>)


## function testBool


```haxe
function testBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L56>)


## function testCall


```haxe
function testCall(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L342>)


## function testCopyBytesToGo


```haxe
function testCopyBytesToGo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L785>)


## function testCopyBytesToJS


```haxe
function testCopyBytesToJS(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L810>)


## function testDelete


```haxe
function testDelete(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L309>)


## function testEqual


```haxe
function testEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L223>)


## function testFloat


```haxe
function testFloat(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L183>)


## function testFrozenObject


```haxe
function testFrozenObject(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L213>)


## function testFuncOf


```haxe
function testFuncOf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L491>)


## function testGarbageCollection


```haxe
function testGarbageCollection(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L835>)


## function testGet


```haxe
function testGet(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L299>)


## function testGlobal


```haxe
function testGlobal(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L878>)


## function testIndex


```haxe
function testIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L319>)


## function testInstanceOf


```haxe
function testInstanceOf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L386>)


## function testInt


```haxe
function testInt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L138>)


## function testIntConversion


```haxe
function testIntConversion(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L164>)


## function testInterleavedFunctions


```haxe
function testInterleavedFunctions(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L608>)


## function testInvoke


```haxe
function testInvoke(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L363>)


## function testInvokeFunction


```haxe
function testInvokeFunction(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L532>)


## function testLength


```haxe
function testLength(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L291>)


## function testNaN


```haxe
function testNaN(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L234>)


## function testNew


```haxe
function testNew(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L375>)


## function testNull


```haxe
function testNull(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L265>)


## function testObject


```haxe
function testObject(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L203>)


## function testSet


```haxe
function testSet(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L304>)


## function testSetIndex


```haxe
function testSetIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L330>)


## function testString


```haxe
function testString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L76>)


## function testTruthy


```haxe
function testTruthy(_t:stdgo.Ref<stdgo.testing.T>):Void
```



See
\- https://developer.mozilla.org/en-US/docs/Glossary/Truthy
\- https://stackoverflow.com/questions/19839952/all-falsey-values-in-javascript/19839953#19839953
\- http://www.ecma-international.org/ecma-262/5.1/#sec-9.2  

[\(view code\)](<./Js.hx#L638>)


## function testType


```haxe
function testType(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L401>)


## function testUndefined


```haxe
function testUndefined(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L245>)


## function testValueOf


```haxe
function testValueOf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L457>)


## function testZeroValue


```haxe
function testZeroValue(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Js.hx#L485>)



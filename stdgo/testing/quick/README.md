# Module: `stdgo.testing.quick`

[(view library index)](../../stdgo.md)


# Overview


Package quick implements utility functions to help with black box testing.  



The testing/quick package is frozen and is not accepting new features.  



<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
stdgo/internal/Macro.macro.hx:35: define
=== RUN  TestCheckEqual
Exception: reflect.call is not yet implemented
Called from stdgo.testing.quick._Quick.$Quick_Fields_.checkEqual (stdgo/testing/quick/Quick.hx line 481)
Called from stdgo.testing.quick._Quick.$Quick_Fields_.testCheckEqual (stdgo/testing/quick/Quick.hx line 683)
Called from stdgo.testing.M.run (stdgo/testing/Testing.hx line 355)
Called from stdgo.testing.quick_test._Quick.$Quick_Fields_.main (stdgo/testing/quick_test/Quick.hx line 37)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
stdgo/internal/Macro.macro.hx:35: define
=== RUN  TestCheckEqual
Exception: reflect.call is not yet implemented
Called from stdgo.testing.quick._Quick.Quick_Fields_.testCheckEqual (stdgo/testing/quick/Quick.hx line 683 column 45)
Called from stdgo.testing.quick._Quick.Quick_Fields_.checkEqual (stdgo/testing/quick/Quick.hx line 481 column 43)
Called from stdgo.reflect.Value_static_extension.call (stdgo/reflect/Reflect.hx line 2594 column 75)
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
stdgo/internal/Macro.macro.hx:35: define
```
</p>
</details>


# Index


- [`function check(_f:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):stdgo.Error`](<#function-check>)

- [`function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):stdgo.Error`](<#function-checkequal>)

- [`function testCheckEqual(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcheckequal>)

- [`function testCheckProperty(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcheckproperty>)

- [`function testEmptyStruct(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testemptystruct>)

- [`function testFailure(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfailure>)

- [`function testInt64(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testint64>)

- [`function testMutuallyRecursive(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmutuallyrecursive>)

- [`function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnonzerosliceandmap>)

- [`function testRecursive(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrecursive>)

- [`function value(_t:stdgo.reflect.Type, _rand:stdgo.Ref<stdgo.math.rand.Rand>):{_1:Bool, _0:stdgo.reflect.Value}`](<#function-value>)

- [class A](<#class-a>)

  - [`function new(?b:stdgo.Ref<stdgo.testing.quick.B>):Void`](<#a-function-new>)

- [class B](<#class-b>)

  - [`function new(?a:stdgo.Ref<stdgo.testing.quick.A>):Void`](<#b-function-new>)

- [class CheckEqualError](<#class-checkequalerror>)

  - [`function new(?checkError:stdgo.testing.quick.CheckError, ?out1:stdgo.Slice<stdgo.AnyInterface>, ?out2:stdgo.Slice<stdgo.AnyInterface>):Void`](<#checkequalerror-function-new>)

  - [`function error():stdgo.GoString`](<#checkequalerror-function-error>)

- [class CheckError](<#class-checkerror>)

  - [`function new(?count:Null<stdgo.GoInt>, ?in_:stdgo.Slice<stdgo.AnyInterface>):Void`](<#checkerror-function-new>)

  - [`function error():stdgo.GoString`](<#checkerror-function-error>)

- [class Config](<#class-config>)

  - [`function new(?maxCount:Null<stdgo.GoInt>, ?maxCountScale:stdgo.GoFloat64, ?rand:stdgo.Ref<stdgo.math.rand.Rand>, ?values:(:stdgo.Slice<stdgo.reflect.Value>, :stdgo.Ref<stdgo.math.rand.Rand>):Void):Void`](<#config-function-new>)

  - [`function values(:stdgo.Slice<stdgo.reflect.Value>, :stdgo.Ref<stdgo.math.rand.Rand>):Void`](<#config-function-values>)

  - [`function _getMaxCount():stdgo.GoInt`](<#config-function-_getmaxcount>)

  - [`function _getRand():stdgo.Ref<stdgo.math.rand.Rand>`](<#config-function-_getrand>)

- [class Q\_testNonZeroSliceAndMap\_0](<#class-q_testnonzerosliceandmap_0>)

  - [`function new(?m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoInt>):Void`](<#q_testnonzerosliceandmap_0-function-new>)

- [class R\_testRecursive\_0](<#class-r_testrecursive_0>)

  - [`function new(?ptr:stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>, ?sliceP:stdgo.Slice<stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>>, ?slice:stdgo.Slice<stdgo.testing.quick.R_testRecursive_0>, ?map:stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.R_testRecursive_0>, ?mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>>, ?mapR:stdgo.GoMap<stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>, stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>>, ?sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.R_testRecursive_0>>):Void`](<#r_testrecursive_0-function-new>)

- [class T\_myStruct](<#class-t_mystruct>)

  - [`function new(?_x:Null<stdgo.GoInt>):Void`](<#t_mystruct-function-new>)

  - [`function generate( _r:stdgo.Ref<stdgo.math.rand.Rand>, _0:stdgo.GoInt):stdgo.reflect.Value`](<#t_mystruct-function-generate>)

- [class TestStruct](<#class-teststruct>)

  - [`function new(?a:Null<stdgo.GoInt>, ?b:stdgo.GoString):Void`](<#teststruct-function-new>)

- [typedef Generator](<#typedef-generator>)

- [typedef SetupError](<#typedef-setuperror>)

  - [`function error():stdgo.GoString`](<#setuperror-function-error>)

- [typedef TestArrayAlias](<#typedef-testarrayalias>)

- [typedef TestBoolAlias](<#typedef-testboolalias>)

- [typedef TestComplex128Alias](<#typedef-testcomplex128alias>)

- [typedef TestComplex64Alias](<#typedef-testcomplex64alias>)

- [typedef TestFloat32Alias](<#typedef-testfloat32alias>)

- [typedef TestFloat64Alias](<#typedef-testfloat64alias>)

- [typedef TestInt16Alias](<#typedef-testint16alias>)

- [typedef TestInt32Alias](<#typedef-testint32alias>)

- [typedef TestInt64Alias](<#typedef-testint64alias>)

- [typedef TestInt8Alias](<#typedef-testint8alias>)

- [typedef TestIntAlias](<#typedef-testintalias>)

- [typedef TestMapAlias](<#typedef-testmapalias>)

- [typedef TestPtrAlias](<#typedef-testptralias>)

- [typedef TestSliceAlias](<#typedef-testslicealias>)

- [typedef TestStringAlias](<#typedef-teststringalias>)

- [typedef TestStructAlias](<#typedef-teststructalias>)

- [typedef TestUint16Alias](<#typedef-testuint16alias>)

- [typedef TestUint32Alias](<#typedef-testuint32alias>)

- [typedef TestUint64Alias](<#typedef-testuint64alias>)

- [typedef TestUint8Alias](<#typedef-testuint8alias>)

- [typedef TestUintAlias](<#typedef-testuintalias>)

- [typedef TestUintptrAlias](<#typedef-testuintptralias>)

# Functions


```haxe
import stdgo.testing.quick.Quick
```


## function check


```haxe
function check(_f:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):stdgo.Error
```


Check looks for an input to f, any function that returns bool,  
such that f returns false. It calls f repeatedly, with arbitrary  
values for each argument. If f returns false on a given input,  
Check returns that input as a \*CheckError.  
For example:  






func TestOddMultipleOfThree\(t \*testing.T\) \{  



f := func\(x int\) bool \{  



y := OddMultipleOfThree\(x\)  



return y%2 == 1 && y%3 == 0  



\}  



if err := quick.Check\(f, nil\); err \!= nil \{  



t.Error\(err\)  



\}  



\}  



[\(view code\)](<./Quick.hx#L419>)


## function checkEqual


```haxe
function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):stdgo.Error
```


CheckEqual looks for an input on which f and g return different results.  
It calls f and g repeatedly with arbitrary values for each argument.  
If f and g return different answers, CheckEqual returns a \*CheckEqualError  
describing the input and the outputs.  



[\(view code\)](<./Quick.hx#L456>)


## function testCheckEqual


```haxe
function testCheckEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Quick.hx#L682>)


## function testCheckProperty


```haxe
function testCheckProperty(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Quick.hx#L733>)


## function testEmptyStruct


```haxe
function testEmptyStruct(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Quick.hx#L839>)


## function testFailure


```haxe
function testFailure(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Quick.hx#L736>)


## function testInt64


```haxe
function testInt64(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Quick.hx#L883>)


## function testMutuallyRecursive


```haxe
function testMutuallyRecursive(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Quick.hx#L845>)


## function testNonZeroSliceAndMap


```haxe
function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Some serialization formats \(e.g. encoding/pem\) cannot distinguish  
between a nil and an empty map or slice, so avoid generating the  
zero value for these.  



[\(view code\)](<./Quick.hx#L873>)


## function testRecursive


```haxe
function testRecursive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Recursive data structures didn't terminate.  
Issues 8818 and 11148.  



[\(view code\)](<./Quick.hx#L832>)


## function value


```haxe
function value(_t:stdgo.reflect.Type, _rand:stdgo.Ref<stdgo.math.rand.Rand>):{_1:Bool, _0:stdgo.reflect.Value}
```


Value returns an arbitrary value of the given type.  
If the type implements the Generator interface, that will be used.  
Note: To create arbitrary values for structs, all the fields must be exported.  



[\(view code\)](<./Quick.hx#L262>)


# Classes


```haxe
import stdgo.testing.quick.*
```


## class A





```haxe
var b:stdgo.Ref<stdgo.testing.quick.B>
```


### A function new


```haxe
function new(?b:stdgo.Ref<stdgo.testing.quick.B>):Void
```





[\(view code\)](<./Quick.hx#L168>)


## class B





```haxe
var a:stdgo.Ref<stdgo.testing.quick.A>
```


### B function new


```haxe
function new(?a:stdgo.Ref<stdgo.testing.quick.A>):Void
```





[\(view code\)](<./Quick.hx#L183>)


## class CheckEqualError


A CheckEqualError is the result CheckEqual finding an error.  



```haxe
var checkError:stdgo.testing.quick.CheckError
```


```haxe
var out1:stdgo.Slice<stdgo.AnyInterface>
```


```haxe
var out2:stdgo.Slice<stdgo.AnyInterface>
```


### CheckEqualError function new


```haxe
function new(?checkError:stdgo.testing.quick.CheckError, ?out1:stdgo.Slice<stdgo.AnyInterface>, ?out2:stdgo.Slice<stdgo.AnyInterface>):Void
```





[\(view code\)](<./Quick.hx#L118>)


### CheckEqualError function error


```haxe
function error():stdgo.GoString
```





[\(view code\)](<./Quick.hx#L979>)


## class CheckError


A CheckError is the result of Check finding an error.  



```haxe
var count:stdgo.GoInt
```


```haxe
var in_:stdgo.Slice<stdgo.AnyInterface>
```


### CheckError function new


```haxe
function new(?count:Null<stdgo.GoInt>, ?in_:stdgo.Slice<stdgo.AnyInterface>):Void
```





[\(view code\)](<./Quick.hx#L99>)


### CheckError function error


```haxe
function error():stdgo.GoString
```





[\(view code\)](<./Quick.hx#L962>)


## class Config


A Config structure contains options for running a test.  



```haxe
var maxCount:stdgo.GoInt
```


MaxCount sets the maximum number of iterations.  
If zero, MaxCountScale is used.  



```haxe
var maxCountScale:stdgo.GoFloat64
```


MaxCountScale is a non\-negative scale factor applied to the  
default maximum.  
A count of zero implies the default, which is usually 100  
but can be set by the \-quickchecks flag.  



```haxe
var rand:stdgo.Ref<stdgo.math.rand.Rand>
```


Rand specifies a source of random numbers.  
If nil, a default pseudo\-random source will be used.  



### Config function new


```haxe
function new(?maxCount:Null<stdgo.GoInt>, ?maxCountScale:stdgo.GoFloat64, ?rand:stdgo.Ref<stdgo.math.rand.Rand>, ?values:(:stdgo.Slice<stdgo.reflect.Value>, :stdgo.Ref<stdgo.math.rand.Rand>):Void):Void
```





[\(view code\)](<./Quick.hx#L80>)


### Config function values


```haxe
function values(:stdgo.Slice<stdgo.reflect.Value>, :stdgo.Ref<stdgo.math.rand.Rand>):Void
```


Values specifies a function to generate a slice of  
arbitrary reflect.Values that are congruent with the  
arguments to the function being tested.  
If nil, the top\-level Value function is used to generate them.  



### Config function \_getMaxCount


```haxe
function _getMaxCount():stdgo.GoInt
```


getMaxCount returns the maximum number of iterations to run for a given  
Config.  



[\(view code\)](<./Quick.hx#L926>)


### Config function \_getRand


```haxe
function _getRand():stdgo.Ref<stdgo.math.rand.Rand>
```


getRand returns the \*rand.Rand to use for a given Config.  



[\(view code\)](<./Quick.hx#L942>)


## class Q\_testNonZeroSliceAndMap\_0





```haxe
var m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>
```


```haxe
var s:stdgo.Slice<stdgo.GoInt>
```


### Q\_testNonZeroSliceAndMap\_0 function new


```haxe
function new(?m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoInt>):Void
```





[\(view code\)](<./Quick.hx#L859>)


## class R\_testRecursive\_0





```haxe
var map:stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.R_testRecursive_0>
```


```haxe
var mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>>
```


```haxe
var mapR:stdgo.GoMap<stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>, stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>>
```


```haxe
var ptr:stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>
```


```haxe
var slice:stdgo.Slice<stdgo.testing.quick.R_testRecursive_0>
```


```haxe
var sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.R_testRecursive_0>>
```


```haxe
var sliceP:stdgo.Slice<stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>>
```


### R\_testRecursive\_0 function new


```haxe
function new(?ptr:stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>, ?sliceP:stdgo.Slice<stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>>, ?slice:stdgo.Slice<stdgo.testing.quick.R_testRecursive_0>, ?map:stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.R_testRecursive_0>, ?mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>>, ?mapR:stdgo.GoMap<stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>, stdgo.Ref<stdgo.testing.quick.R_testRecursive_0>>, ?sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.R_testRecursive_0>>):Void
```





[\(view code\)](<./Quick.hx#L814>)


## class T\_myStruct


This tests that ArbitraryValue is working by checking that all the arbitrary  
values of type MyStruct have x = 42.  



```haxe
var _x:stdgo.GoInt
```


### T\_myStruct function new


```haxe
function new(?_x:Null<stdgo.GoInt>):Void
```





[\(view code\)](<./Quick.hx#L153>)


### T\_myStruct function generate


```haxe
function generate( _r:stdgo.Ref<stdgo.math.rand.Rand>, _0:stdgo.GoInt):stdgo.reflect.Value
```





[\(view code\)](<./Quick.hx#L996>)


## class TestStruct





```haxe
var a:stdgo.GoInt
```


```haxe
var b:stdgo.GoString
```


### TestStruct function new


```haxe
function new(?a:Null<stdgo.GoInt>, ?b:stdgo.GoString):Void
```





[\(view code\)](<./Quick.hx#L136>)


# Typedefs


```haxe
import stdgo.testing.quick.*
```


## typedef Generator


```haxe
typedef Generator = var a:{<__underlying__> | (_rand:stdgo.Ref<stdgo.math.rand.Rand>, _size:stdgo.GoInt):stdgo.reflect.Value | {<haxe_doc>} | ():stdgo.AnyInterface}
```


A Generator can generate random values of its own type.  



## typedef SetupError


```haxe
typedef SetupError = var x:{<>}
```


A SetupError is the result of an error in the way that check is being  
used, independent of the functions being tested.  



### SetupError function error


```haxe
function error():stdgo.GoString
```





[\(view code\)](<./Quick.hx#L1013>)


## typedef TestArrayAlias


```haxe
typedef TestArrayAlias = var x:stdgo.GoUInt8
```





## typedef TestBoolAlias


```haxe
typedef TestBoolAlias = var x:{<>}
```





## typedef TestComplex128Alias


```haxe
typedef TestComplex128Alias = var x:{<>}
```





## typedef TestComplex64Alias


```haxe
typedef TestComplex64Alias = var x:{<>}
```





## typedef TestFloat32Alias


```haxe
typedef TestFloat32Alias = var x:{<>}
```





## typedef TestFloat64Alias


```haxe
typedef TestFloat64Alias = var x:{<>}
```





## typedef TestInt16Alias


```haxe
typedef TestInt16Alias = var x:{<>}
```





## typedef TestInt32Alias


```haxe
typedef TestInt32Alias = var x:{<>}
```





## typedef TestInt64Alias


```haxe
typedef TestInt64Alias = var x:{<>}
```





## typedef TestInt8Alias


```haxe
typedef TestInt8Alias = var x:{<>}
```





## typedef TestIntAlias


```haxe
typedef TestIntAlias = var t:{<>}
```





## typedef TestMapAlias


```haxe
typedef TestMapAlias = var x:stdgo.GoInt
```





## typedef TestPtrAlias


```haxe
typedef TestPtrAlias = var x:stdgo.GoInt
```





## typedef TestSliceAlias


```haxe
typedef TestSliceAlias = var x:stdgo.GoUInt8
```





## typedef TestStringAlias


```haxe
typedef TestStringAlias = var x:{<>}
```





## typedef TestStructAlias


```haxe
typedef TestStructAlias = var c:{<>}
```





## typedef TestUint16Alias


```haxe
typedef TestUint16Alias = var x:{<>}
```





## typedef TestUint32Alias


```haxe
typedef TestUint32Alias = var x:{<>}
```





## typedef TestUint64Alias


```haxe
typedef TestUint64Alias = var x:{<>}
```





## typedef TestUint8Alias


```haxe
typedef TestUint8Alias = var x:{<>}
```





## typedef TestUintAlias


```haxe
typedef TestUintAlias = var t:{<>}
```





## typedef TestUintptrAlias


```haxe
typedef TestUintptrAlias = var x:{<>}
```






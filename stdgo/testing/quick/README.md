# Module: `stdgo.testing.quick`

[(view library index)](../../stdgo.md)


# Overview



Package quick implements utility functions to help with black box testing.  


The testing/quick package is frozen and is not accepting new features.  

<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
=== RUN  TestCheckEqual
Exception: Null access .__name__
Called from stdgo.reflect.$Value_static_extension.set (stdgo/reflect/Reflect.hx line 2097)
Called from stdgo.testing.quick._Quick.$Quick_Fields_._sizedValue (stdgo/testing/quick/Quick.hx line 367)
Called from stdgo.testing.quick._Quick.$Quick_Fields_.value (stdgo/testing/quick/Quick.hx line 264)
Called from stdgo.testing.quick._Quick.$Quick_Fields_._arbitraryValues (stdgo/testing/quick/Quick.hx line 508)
Called from stdgo.testing.quick._Quick.$Quick_Fields_.checkEqual (stdgo/testing/quick/Quick.hx line 480)
Called from stdgo.testing.quick._Quick.$Quick_Fields_.testCheckEqual (stdgo/testing/quick/Quick.hx line 686)
Called from stdgo.testing.M.run (stdgo/testing/Testing.hx line 355)
Called from stdgo.testing.quick_test._Quick.$Quick_Fields_.main (stdgo/testing/quick_test/Quick.hx line 38)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
=== RUN  TestCheckEqual
Exception: field access on null
Called from stdgo.testing.quick._Quick.Quick_Fields_.testCheckEqual (stdgo/testing/quick/Quick.hx line 686 column 45)
Called from stdgo.testing.quick._Quick.Quick_Fields_.checkEqual (stdgo/testing/quick/Quick.hx line 480 column 34)
Called from stdgo.testing.quick._Quick.Quick_Fields_._arbitraryValues (stdgo/testing/quick/Quick.hx line 508 column 35)
Called from stdgo.testing.quick._Quick.Quick_Fields_.value (stdgo/testing/quick/Quick.hx line 264 column 16)
Called from stdgo.testing.quick._Quick.Quick_Fields_._sizedValue (stdgo/testing/quick/Quick.hx line 367 column 29)
Called from stdgo.reflect.Value_static_extension.set (stdgo/reflect/Reflect.hx line 2098 column 17)
Called from StringTools.endsWith (/home/runner/haxe/versions/1cbe856/std/StringTools.hx line 264 column 14)
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

- [`function value(_t:stdgo.reflect.Type, _rand:stdgo.Ref<stdgo.math.rand.Rand>):{
	_1:Bool;
	_0:stdgo.reflect.Value;
}`](<#function-value>)

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

- [class T\_testNonZeroSliceAndMap\_0\_\_\_localname\_\_\_Q](<#class-t_testnonzerosliceandmap_0localnameq>)

  - [`function new(?m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoInt>):Void`](<#t_testnonzerosliceandmap_0localnameq-function-new>)

- [class T\_testRecursive\_0\_\_\_localname\_\_\_R](<#class-t_testrecursive_0localnamer>)

  - [`function new(?ptr:stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>, ?sliceP:stdgo.Slice<stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>>, ?slice:stdgo.Slice<stdgo.testing.quick.T_testRecursive_0___localname___R>, ?map:stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.T_testRecursive_0___localname___R>, ?mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>>, ?mapR:stdgo.GoMap<stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>, stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>>, ?sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.T_testRecursive_0___localname___R>>):Void`](<#t_testrecursive_0localnamer-function-new>)

- [class TestStruct](<#class-teststruct>)

  - [`function new(?a:Null<stdgo.GoInt>, ?b:stdgo.GoString):Void`](<#teststruct-function-new>)

- [typedef Generator](<#typedef-generator>)

- [typedef SetupError](<#typedef-setuperror>)

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

```
	func TestOddMultipleOfThree(t *testing.T) {
		f := func(x int) bool {
			y := OddMultipleOfThree(x)
			return y%2 == 1 && y%3 == 0
		}
		if err := quick.Check(f, nil); err != nil {
			t.Error(err)
		}
	}
```
[\(view code\)](<./Quick.hx#L422>)


## function checkEqual


```haxe
function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<stdgo.testing.quick.Config>):stdgo.Error
```



CheckEqual looks for an input on which f and g return different results.
It calls f and g repeatedly with arbitrary values for each argument.
If f and g return different answers, CheckEqual returns a \*CheckEqualError
describing the input and the outputs.  

[\(view code\)](<./Quick.hx#L459>)


## function testCheckEqual


```haxe
function testCheckEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Quick.hx#L685>)


## function testCheckProperty


```haxe
function testCheckProperty(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Quick.hx#L736>)


## function testEmptyStruct


```haxe
function testEmptyStruct(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Quick.hx#L842>)


## function testFailure


```haxe
function testFailure(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Quick.hx#L739>)


## function testInt64


```haxe
function testInt64(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Quick.hx#L886>)


## function testMutuallyRecursive


```haxe
function testMutuallyRecursive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Quick.hx#L848>)


## function testNonZeroSliceAndMap


```haxe
function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Some serialization formats \(e.g. encoding/pem\) cannot distinguish
between a nil and an empty map or slice, so avoid generating the
zero value for these.  

[\(view code\)](<./Quick.hx#L876>)


## function testRecursive


```haxe
function testRecursive(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Recursive data structures didn't terminate.
Issues 8818 and 11148.  

[\(view code\)](<./Quick.hx#L835>)


## function value


```haxe
function value(_t:stdgo.reflect.Type, _rand:stdgo.Ref<stdgo.math.rand.Rand>):{
	_1:Bool;
	_0:stdgo.reflect.Value;
}
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


[\(view code\)](<./Quick.hx#L982>)


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


[\(view code\)](<./Quick.hx#L965>)


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

[\(view code\)](<./Quick.hx#L929>)


### Config function \_getRand


```haxe
function _getRand():stdgo.Ref<stdgo.math.rand.Rand>
```



getRand returns the \*rand.Rand to use for a given Config.  

[\(view code\)](<./Quick.hx#L945>)


## class T\_testNonZeroSliceAndMap\_0\_\_\_localname\_\_\_Q


```haxe
var m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>
```


```haxe
var s:stdgo.Slice<stdgo.GoInt>
```


### T\_testNonZeroSliceAndMap\_0\_\_\_localname\_\_\_Q function new


```haxe
function new(?m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoInt>):Void
```


[\(view code\)](<./Quick.hx#L862>)


## class T\_testRecursive\_0\_\_\_localname\_\_\_R


```haxe
var map:stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.T_testRecursive_0___localname___R>
```


```haxe
var mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>>
```


```haxe
var mapR:stdgo.GoMap<stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>, stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>>
```


```haxe
var ptr:stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>
```


```haxe
var slice:stdgo.Slice<stdgo.testing.quick.T_testRecursive_0___localname___R>
```


```haxe
var sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.T_testRecursive_0___localname___R>>
```


```haxe
var sliceP:stdgo.Slice<stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>>
```


### T\_testRecursive\_0\_\_\_localname\_\_\_R function new


```haxe
function new(?ptr:stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>, ?sliceP:stdgo.Slice<stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>>, ?slice:stdgo.Slice<stdgo.testing.quick.T_testRecursive_0___localname___R>, ?map:stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.T_testRecursive_0___localname___R>, ?mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>>, ?mapR:stdgo.GoMap<stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>, stdgo.Ref<stdgo.testing.quick.T_testRecursive_0___localname___R>>, ?sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo.testing.quick.T_testRecursive_0___localname___R>>):Void
```


[\(view code\)](<./Quick.hx#L817>)


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
typedef Generator = {
	public function generate(_rand:stdgo.Ref<stdgo.math.rand.Rand>, _size:stdgo.GoInt):stdgo.reflect.Value;	//  Generate returns a random instance of the type on which it is a method using the size as a size hint.
};
```



A Generator can generate random values of its own type.  

## typedef SetupError


```haxe
typedef SetupError = stdgo.GoString;
```



A SetupError is the result of an error in the way that check is being
used, independent of the functions being tested.  

## typedef TestArrayAlias


```haxe
typedef TestArrayAlias = stdgo.GoArray<stdgo.GoUInt8>;
```


## typedef TestBoolAlias


```haxe
typedef TestBoolAlias = Bool;
```


## typedef TestComplex128Alias


```haxe
typedef TestComplex128Alias = stdgo.GoComplex128;
```


## typedef TestComplex64Alias


```haxe
typedef TestComplex64Alias = stdgo.GoComplex64;
```


## typedef TestFloat32Alias


```haxe
typedef TestFloat32Alias = stdgo.GoFloat32;
```


## typedef TestFloat64Alias


```haxe
typedef TestFloat64Alias = stdgo.GoFloat64;
```


## typedef TestInt16Alias


```haxe
typedef TestInt16Alias = stdgo.GoInt16;
```


## typedef TestInt32Alias


```haxe
typedef TestInt32Alias = stdgo.GoInt32;
```


## typedef TestInt64Alias


```haxe
typedef TestInt64Alias = stdgo.GoInt64;
```


## typedef TestInt8Alias


```haxe
typedef TestInt8Alias = stdgo.GoInt8;
```


## typedef TestIntAlias


```haxe
typedef TestIntAlias = stdgo.GoInt;
```


## typedef TestMapAlias


```haxe
typedef TestMapAlias = stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>;
```


## typedef TestPtrAlias


```haxe
typedef TestPtrAlias = stdgo.Pointer<stdgo.GoInt>;
```


## typedef TestSliceAlias


```haxe
typedef TestSliceAlias = stdgo.Slice<stdgo.GoUInt8>;
```


## typedef TestStringAlias


```haxe
typedef TestStringAlias = stdgo.GoString;
```


## typedef TestStructAlias


```haxe
typedef TestStructAlias = stdgo.testing.quick.TestStruct;
```


## typedef TestUint16Alias


```haxe
typedef TestUint16Alias = stdgo.GoUInt16;
```


## typedef TestUint32Alias


```haxe
typedef TestUint32Alias = stdgo.GoUInt32;
```


## typedef TestUint64Alias


```haxe
typedef TestUint64Alias = stdgo.GoUInt64;
```


## typedef TestUint8Alias


```haxe
typedef TestUint8Alias = stdgo.GoUInt8;
```


## typedef TestUintAlias


```haxe
typedef TestUintAlias = stdgo.GoUInt;
```


## typedef TestUintptrAlias


```haxe
typedef TestUintptrAlias = stdgo.GoUIntptr;
```



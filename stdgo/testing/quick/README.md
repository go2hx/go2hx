# Module: `stdgo.testing.quick`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Quick](<#class-quick>)

  - [`function check(f:stdgo.AnyInterface, config:stdgo.testing.quick.Config):stdgo.Error`](<#quick-function-check>)

  - [`function checkEqual(f:stdgo.AnyInterface, g:stdgo.AnyInterface, config:stdgo.testing.quick.Config):stdgo.Error`](<#quick-function-checkequal>)

  - [`function testCheckEqual(t:stdgo._internal.testing.T_):Void`](<#quick-function-testcheckequal>)

  - [`function testCheckProperty(t:stdgo._internal.testing.T_):Void`](<#quick-function-testcheckproperty>)

  - [`function testEmptyStruct(t:stdgo._internal.testing.T_):Void`](<#quick-function-testemptystruct>)

  - [`function testFailure(t:stdgo._internal.testing.T_):Void`](<#quick-function-testfailure>)

  - [`function testInt64(t:stdgo._internal.testing.T_):Void`](<#quick-function-testint64>)

  - [`function testMutuallyRecursive(t:stdgo._internal.testing.T_):Void`](<#quick-function-testmutuallyrecursive>)

  - [`function testNonZeroSliceAndMap(t:stdgo._internal.testing.T_):Void`](<#quick-function-testnonzerosliceandmap>)

  - [`function testRecursive(t:stdgo._internal.testing.T_):Void`](<#quick-function-testrecursive>)

  - [`function value(t:stdgo._internal.reflect.Type_, rand:stdgo._internal.math.rand.Rand):stdgo.Tuple<stdgo._internal.reflect.Value, Bool>`](<#quick-function-value>)

- [typedef Generator](<#typedef-generator>)

- [typedef SetupError](<#typedef-setuperror>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

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

- [abstract Config](<#abstract-config>)

- [abstract CheckError](<#abstract-checkerror>)

- [abstract CheckEqualError](<#abstract-checkequalerror>)

- [abstract TestStruct](<#abstract-teststruct>)

- [abstract T\_myStruct](<#abstract-t_mystruct>)

- [abstract A](<#abstract-a>)

- [abstract B](<#abstract-b>)

- [abstract T\_testRecursive\_35\_\_\_localname\_\_\_R](<#abstract-t_testrecursive_35localnamer>)

- [abstract T\_testNonZeroSliceAndMap\_36\_\_\_localname\_\_\_Q](<#abstract-t_testnonzerosliceandmap_36localnameq>)

# Classes


```haxe
import
```


## class Quick



Package quick implements utility functions to help with black box testing.  


The testing/quick package is frozen and is not accepting new features.  

### Quick function check


```haxe
function check(f:stdgo.AnyInterface, config:stdgo.testing.quick.Config):stdgo.Error
```


```
Check looks for an input to f, any function that returns bool,
        such that f returns false. It calls f repeatedly, with arbitrary
        values for each argument. If f returns false on a given input,
        Check returns that input as a *CheckError.
        For example:
```
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
[\(view code\)](<./Quick.hx#L280>)


### Quick function checkEqual


```haxe
function checkEqual(f:stdgo.AnyInterface, g:stdgo.AnyInterface, config:stdgo.testing.quick.Config):stdgo.Error
```


```
CheckEqual looks for an input on which f and g return different results.
        It calls f and g repeatedly with arbitrary values for each argument.
        If f and g return different answers, CheckEqual returns a *CheckEqualError
        describing the input and the outputs.
```
[\(view code\)](<./Quick.hx#L289>)


### Quick function testCheckEqual


```haxe
function testCheckEqual(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Quick.hx#L292>)


### Quick function testCheckProperty


```haxe
function testCheckProperty(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Quick.hx#L295>)


### Quick function testEmptyStruct


```haxe
function testEmptyStruct(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Quick.hx#L308>)


### Quick function testFailure


```haxe
function testFailure(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Quick.hx#L298>)


### Quick function testInt64


```haxe
function testInt64(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Quick.hx#L322>)


### Quick function testMutuallyRecursive


```haxe
function testMutuallyRecursive(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Quick.hx#L311>)


### Quick function testNonZeroSliceAndMap


```haxe
function testNonZeroSliceAndMap(t:stdgo._internal.testing.T_):Void
```


```
Some serialization formats (e.g. encoding/pem) cannot distinguish
        between a nil and an empty map or slice, so avoid generating the
        zero value for these.
```
[\(view code\)](<./Quick.hx#L319>)


### Quick function testRecursive


```haxe
function testRecursive(t:stdgo._internal.testing.T_):Void
```


```
Recursive data structures didn't terminate.
        Issues 8818 and 11148.
```
[\(view code\)](<./Quick.hx#L305>)


### Quick function value


```haxe
function value(t:stdgo._internal.reflect.Type_, rand:stdgo._internal.math.rand.Rand):stdgo.Tuple<stdgo._internal.reflect.Value, Bool>
```


```
Value returns an arbitrary value of the given type.
        If the type implements the Generator interface, that will be used.
        Note: To create arbitrary values for structs, all the fields must be exported.
```
[\(view code\)](<./Quick.hx#L257>)


# Typedefs


```haxe
import
```


## typedef Generator


```haxe
typedef Generator = stdgo._internal.testing.quick.Generator;
```


## typedef SetupError


```haxe
typedef SetupError = stdgo._internal.testing.quick.SetupError;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.testing.quick.T__struct_0;
```


## typedef TestArrayAlias


```haxe
typedef TestArrayAlias = stdgo._internal.testing.quick.TestArrayAlias;
```


## typedef TestBoolAlias


```haxe
typedef TestBoolAlias = stdgo._internal.testing.quick.TestBoolAlias;
```


## typedef TestComplex128Alias


```haxe
typedef TestComplex128Alias = stdgo._internal.testing.quick.TestComplex128Alias;
```


## typedef TestComplex64Alias


```haxe
typedef TestComplex64Alias = stdgo._internal.testing.quick.TestComplex64Alias;
```


## typedef TestFloat32Alias


```haxe
typedef TestFloat32Alias = stdgo._internal.testing.quick.TestFloat32Alias;
```


## typedef TestFloat64Alias


```haxe
typedef TestFloat64Alias = stdgo._internal.testing.quick.TestFloat64Alias;
```


## typedef TestInt16Alias


```haxe
typedef TestInt16Alias = stdgo._internal.testing.quick.TestInt16Alias;
```


## typedef TestInt32Alias


```haxe
typedef TestInt32Alias = stdgo._internal.testing.quick.TestInt32Alias;
```


## typedef TestInt64Alias


```haxe
typedef TestInt64Alias = stdgo._internal.testing.quick.TestInt64Alias;
```


## typedef TestInt8Alias


```haxe
typedef TestInt8Alias = stdgo._internal.testing.quick.TestInt8Alias;
```


## typedef TestIntAlias


```haxe
typedef TestIntAlias = stdgo._internal.testing.quick.TestIntAlias;
```


## typedef TestMapAlias


```haxe
typedef TestMapAlias = stdgo._internal.testing.quick.TestMapAlias;
```


## typedef TestPtrAlias


```haxe
typedef TestPtrAlias = stdgo._internal.testing.quick.TestPtrAlias;
```


## typedef TestSliceAlias


```haxe
typedef TestSliceAlias = stdgo._internal.testing.quick.TestSliceAlias;
```


## typedef TestStringAlias


```haxe
typedef TestStringAlias = stdgo._internal.testing.quick.TestStringAlias;
```


## typedef TestStructAlias


```haxe
typedef TestStructAlias = stdgo._internal.testing.quick.TestStructAlias;
```


## typedef TestUint16Alias


```haxe
typedef TestUint16Alias = stdgo._internal.testing.quick.TestUint16Alias;
```


## typedef TestUint32Alias


```haxe
typedef TestUint32Alias = stdgo._internal.testing.quick.TestUint32Alias;
```


## typedef TestUint64Alias


```haxe
typedef TestUint64Alias = stdgo._internal.testing.quick.TestUint64Alias;
```


## typedef TestUint8Alias


```haxe
typedef TestUint8Alias = stdgo._internal.testing.quick.TestUint8Alias;
```


## typedef TestUintAlias


```haxe
typedef TestUintAlias = stdgo._internal.testing.quick.TestUintAlias;
```


## typedef TestUintptrAlias


```haxe
typedef TestUintptrAlias = stdgo._internal.testing.quick.TestUintptrAlias;
```


# Abstracts


## abstract Config


[\(view file containing code\)](<./Quick.hx>)


## abstract CheckError


[\(view file containing code\)](<./Quick.hx>)


## abstract CheckEqualError


[\(view file containing code\)](<./Quick.hx>)


## abstract TestStruct


[\(view file containing code\)](<./Quick.hx>)


## abstract T\_myStruct


[\(view file containing code\)](<./Quick.hx>)


## abstract A


[\(view file containing code\)](<./Quick.hx>)


## abstract B


[\(view file containing code\)](<./Quick.hx>)


## abstract T\_testRecursive\_35\_\_\_localname\_\_\_R


[\(view file containing code\)](<./Quick.hx>)


## abstract T\_testNonZeroSliceAndMap\_36\_\_\_localname\_\_\_Q


[\(view file containing code\)](<./Quick.hx>)



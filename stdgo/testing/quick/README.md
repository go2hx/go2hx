# Module: `stdgo.testing.quick`

[(view library index)](../../stdgo.md)


# Overview



Package quick implements utility functions to help with black box testing.  


The testing/quick package is frozen and is not accepting new features.  

# Index


- [`function check(f:stdgo.AnyInterface, config:stdgo.testing.quick.Config):stdgo.Error`](<#function-check>)

- [`function checkEqual(f:stdgo.AnyInterface, g:stdgo.AnyInterface, config:stdgo.testing.quick.Config):stdgo.Error`](<#function-checkequal>)

- [`function testCheckEqual(t:stdgo._internal.testing.T_):Void`](<#function-testcheckequal>)

- [`function testCheckProperty(t:stdgo._internal.testing.T_):Void`](<#function-testcheckproperty>)

- [`function testEmptyStruct(t:stdgo._internal.testing.T_):Void`](<#function-testemptystruct>)

- [`function testFailure(t:stdgo._internal.testing.T_):Void`](<#function-testfailure>)

- [`function testInt64(t:stdgo._internal.testing.T_):Void`](<#function-testint64>)

- [`function testMutuallyRecursive(t:stdgo._internal.testing.T_):Void`](<#function-testmutuallyrecursive>)

- [`function testNonZeroSliceAndMap(t:stdgo._internal.testing.T_):Void`](<#function-testnonzerosliceandmap>)

- [`function testRecursive(t:stdgo._internal.testing.T_):Void`](<#function-testrecursive>)

- [`function value(t:stdgo._internal.reflect.Type_, rand:stdgo._internal.math.rand.Rand):stdgo.Tuple<stdgo._internal.reflect.Value, Bool>`](<#function-value>)

- [typedef A](<#typedef-a>)

- [typedef B](<#typedef-b>)

- [typedef CheckEqualError](<#typedef-checkequalerror>)

- [typedef CheckEqualError\_asInterface](<#typedef-checkequalerror_asinterface>)

- [typedef CheckEqualError\_static\_extension](<#typedef-checkequalerror_static_extension>)

- [typedef CheckError](<#typedef-checkerror>)

- [typedef CheckError\_asInterface](<#typedef-checkerror_asinterface>)

- [typedef CheckError\_static\_extension](<#typedef-checkerror_static_extension>)

- [typedef Config](<#typedef-config>)

- [typedef Config\_asInterface](<#typedef-config_asinterface>)

- [typedef Config\_static\_extension](<#typedef-config_static_extension>)

- [typedef Generator](<#typedef-generator>)

- [typedef Generator\_static\_extension](<#typedef-generator_static_extension>)

- [typedef SetupError](<#typedef-setuperror>)

- [typedef SetupError\_asInterface](<#typedef-setuperror_asinterface>)

- [typedef SetupError\_static\_extension](<#typedef-setuperror_static_extension>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_myStruct](<#typedef-t_mystruct>)

- [typedef T\_myStruct\_asInterface](<#typedef-t_mystruct_asinterface>)

- [typedef T\_myStruct\_static\_extension](<#typedef-t_mystruct_static_extension>)

- [typedef T\_testNonZeroSliceAndMap\_35\_\_\_localname\_\_\_Q](<#typedef-t_testnonzerosliceandmap_35localnameq>)

- [typedef T\_testRecursive\_34\_\_\_localname\_\_\_R](<#typedef-t_testrecursive_34localnamer>)

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

- [typedef TestStruct](<#typedef-teststruct>)

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
[\(view code\)](<./Quick.hx#L66>)


## function checkEqual


```haxe
function checkEqual(f:stdgo.AnyInterface, g:stdgo.AnyInterface, config:stdgo.testing.quick.Config):stdgo.Error
```


```
CheckEqual looks for an input on which f and g return different results.
    It calls f and g repeatedly with arbitrary values for each argument.
    If f and g return different answers, CheckEqual returns a *CheckEqualError
    describing the input and the outputs.
```
[\(view code\)](<./Quick.hx#L73>)


## function testCheckEqual


```haxe
function testCheckEqual(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Quick.hx#L74>)


## function testCheckProperty


```haxe
function testCheckProperty(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Quick.hx#L75>)


## function testEmptyStruct


```haxe
function testEmptyStruct(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Quick.hx#L83>)


## function testFailure


```haxe
function testFailure(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Quick.hx#L76>)


## function testInt64


```haxe
function testInt64(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Quick.hx#L92>)


## function testMutuallyRecursive


```haxe
function testMutuallyRecursive(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Quick.hx#L84>)


## function testNonZeroSliceAndMap


```haxe
function testNonZeroSliceAndMap(t:stdgo._internal.testing.T_):Void
```


```
Some serialization formats (e.g. encoding/pem) cannot distinguish
    between a nil and an empty map or slice, so avoid generating the
    zero value for these.
```
[\(view code\)](<./Quick.hx#L91>)


## function testRecursive


```haxe
function testRecursive(t:stdgo._internal.testing.T_):Void
```


```
Recursive data structures didn't terminate.
    Issues 8818 and 11148.
```
[\(view code\)](<./Quick.hx#L82>)


## function value


```haxe
function value(t:stdgo._internal.reflect.Type_, rand:stdgo._internal.math.rand.Rand):stdgo.Tuple<stdgo._internal.reflect.Value, Bool>
```


```
Value returns an arbitrary value of the given type.
    If the type implements the Generator interface, that will be used.
    Note: To create arbitrary values for structs, all the fields must be exported.
```
[\(view code\)](<./Quick.hx#L48>)


# Typedefs


```haxe
import stdgo.testing.quick.*
```


## typedef A


```haxe
typedef A = Dynamic;
```


## typedef B


```haxe
typedef B = Dynamic;
```


## typedef CheckEqualError


```haxe
typedef CheckEqualError = Dynamic;
```


## typedef CheckEqualError\_asInterface


```haxe
typedef CheckEqualError_asInterface = Dynamic;
```


## typedef CheckEqualError\_static\_extension


```haxe
typedef CheckEqualError_static_extension = Dynamic;
```


## typedef CheckError


```haxe
typedef CheckError = Dynamic;
```


## typedef CheckError\_asInterface


```haxe
typedef CheckError_asInterface = Dynamic;
```


## typedef CheckError\_static\_extension


```haxe
typedef CheckError_static_extension = Dynamic;
```


## typedef Config


```haxe
typedef Config = Dynamic;
```


## typedef Config\_asInterface


```haxe
typedef Config_asInterface = Dynamic;
```


## typedef Config\_static\_extension


```haxe
typedef Config_static_extension = Dynamic;
```


## typedef Generator


```haxe
typedef Generator = stdgo._internal.testing.quick.Generator;
```


## typedef Generator\_static\_extension


```haxe
typedef Generator_static_extension = Dynamic;
```


## typedef SetupError


```haxe
typedef SetupError = stdgo._internal.testing.quick.SetupError;
```


## typedef SetupError\_asInterface


```haxe
typedef SetupError_asInterface = Dynamic;
```


## typedef SetupError\_static\_extension


```haxe
typedef SetupError_static_extension = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.testing.quick.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_myStruct


```haxe
typedef T_myStruct = Dynamic;
```


## typedef T\_myStruct\_asInterface


```haxe
typedef T_myStruct_asInterface = Dynamic;
```


## typedef T\_myStruct\_static\_extension


```haxe
typedef T_myStruct_static_extension = Dynamic;
```


## typedef T\_testNonZeroSliceAndMap\_35\_\_\_localname\_\_\_Q


```haxe
typedef T_testNonZeroSliceAndMap_35___localname___Q = Dynamic;
```


## typedef T\_testRecursive\_34\_\_\_localname\_\_\_R


```haxe
typedef T_testRecursive_34___localname___R = Dynamic;
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


## typedef TestStruct


```haxe
typedef TestStruct = Dynamic;
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



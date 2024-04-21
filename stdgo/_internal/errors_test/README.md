# Module: `stdgo._internal.errors`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _oops():stdgo.Error`](<#function-_oops>)

- [`function example():Void`](<#function-example>)

- [`function exampleAs():Void`](<#function-exampleas>)

- [`function exampleIs():Void`](<#function-exampleis>)

- [`function exampleJoin():Void`](<#function-examplejoin>)

- [`function exampleNew():Void`](<#function-examplenew>)

- [`function exampleNew_errorf():Void`](<#function-examplenew_errorf>)

- [`function exampleUnwrap():Void`](<#function-exampleunwrap>)

- [`function testAs(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testas>)

- [`function testAsValidation(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testasvalidation>)

- [`function testErrorMethod(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testerrormethod>)

- [`function testIs(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testis>)

- [`function testJoin(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testjoin>)

- [`function testJoinErrorMethod(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testjoinerrormethod>)

- [`function testJoinReturnsNil(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testjoinreturnsnil>)

- [`function testNewEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnewequal>)

- [`function testUnwrap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testunwrap>)

- [`function main():Void`](<#function-main>)

- [class MyError](<#class-myerror>)

  - [`function new(?when:stdgo._internal.time.Time, ?what:stdgo.GoString):Void`](<#myerror-function-new>)

  - [`function error():stdgo.GoString`](<#myerror-function-error>)

- [typedef T\_\_interface\_4](<#typedef-t__interface_4>)

- [typedef T\_\_interface\_5](<#typedef-t__interface_5>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_multiErr](<#typedef-t_multierr>)

# Variables


```haxe
import stdgo._internal.errors_test.Errors
```


```haxe
var _poserPathErr:stdgo.Ref<stdgo._internal.io.fs.PathError>
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
import stdgo._internal.errors_test.Errors
```


## function \_oops


```haxe
function _oops():stdgo.Error
```


[\(view code\)](<./Errors.hx#L184>)


## function example


```haxe
function example():Void
```


[\(view code\)](<./Errors.hx#L187>)


## function exampleAs


```haxe
function exampleAs():Void
```


[\(view code\)](<./Errors.hx#L232>)


## function exampleIs


```haxe
function exampleIs():Void
```


[\(view code\)](<./Errors.hx#L220>)


## function exampleJoin


```haxe
function exampleJoin():Void
```


[\(view code\)](<./Errors.hx#L208>)


## function exampleNew


```haxe
function exampleNew():Void
```


[\(view code\)](<./Errors.hx#L195>)


## function exampleNew\_errorf


```haxe
function exampleNew_errorf():Void
```


[\(view code\)](<./Errors.hx#L201>)


## function exampleUnwrap


```haxe
function exampleUnwrap():Void
```


[\(view code\)](<./Errors.hx#L245>)


## function testAs


```haxe
function testAs(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L343>)


## function testAsValidation


```haxe
function testAsValidation(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L390>)


## function testErrorMethod


```haxe
function testErrorMethod(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L178>)


## function testIs


```haxe
function testIs(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L294>)


## function testJoin


```haxe
function testJoin(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L271>)


## function testJoinErrorMethod


```haxe
function testJoinErrorMethod(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L284>)


## function testJoinReturnsNil


```haxe
function testJoinReturnsNil(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L251>)


## function testNewEqual


```haxe
function testNewEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L166>)


## function testUnwrap


```haxe
function testUnwrap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L441>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Errors.hx#L8>)


# Classes


```haxe
import stdgo._internal.errors_test.*
```


## class MyError


```haxe
var what:stdgo.GoString
```


```haxe
var when:stdgo._internal.time.Time
```


### MyError function new


```haxe
function new(?when:stdgo._internal.time.Time, ?what:stdgo.GoString):Void
```


[\(view code\)](<./Errors_test.hx#L29>)


### MyError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Errors_test.hx#L467>)


# Typedefs


```haxe
import stdgo._internal.errors_test.*
```


## typedef T\_\_interface\_4


```haxe
typedef T__interface_4 = {
	public function unwrap():stdgo.Slice<stdgo.Error>;
};
```


## typedef T\_\_interface\_5


```haxe
typedef T__interface_5 = {
	public function timeout():Bool;
};
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_want:stdgo.Slice<stdgo.Error>;
	_errs:stdgo.Slice<stdgo.Error>;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_want:stdgo.GoString;
	_errs:stdgo.Slice<stdgo.Error>;
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	_target:stdgo.Error;
	_match:Bool;
	_err:stdgo.Error;
};
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = {
	_want:stdgo.AnyInterface;
	_target:stdgo.AnyInterface;
	_match:Bool;
	_err:stdgo.Error;
};
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = {
	_want:stdgo.Error;
	_err:stdgo.Error;
};
```


## typedef T\_multiErr


```haxe
typedef T_multiErr = stdgo.Slice<stdgo.Error>;
```



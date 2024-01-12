# Module: `stdgo.errors`

[(view library index)](../stdgo.md)


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

- [`function testAs(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testas>)

- [`function testAsValidation(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testasvalidation>)

- [`function testErrorMethod(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testerrormethod>)

- [`function testIs(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testis>)

- [`function testJoin(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testjoin>)

- [`function testJoinErrorMethod(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testjoinerrormethod>)

- [`function testJoinReturnsNil(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testjoinreturnsnil>)

- [`function testNewEqual(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnewequal>)

- [`function testUnwrap(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testunwrap>)

- [`function main():Void`](<#function-main>)

- [class MyError](<#class-myerror>)

  - [`function new(?when:stdgo.time.Time, ?what:stdgo.GoString):Void`](<#myerror-function-new>)

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
import stdgo.errors_test.Errors
```


```haxe
var _poserPathErr:stdgo.Ref<stdgo.io.fs.PathError>
```


```haxe
var _:Bool
```


```haxe
var _benchmarks:stdgo.Slice<stdgo.testing.InternalBenchmark>
```


```haxe
var _examples:stdgo.Slice<stdgo.testing.InternalExample>
```


```haxe
var _fuzzTargets:stdgo.Slice<stdgo.testing.InternalFuzzTarget>
```


```haxe
var _tests:stdgo.Slice<stdgo.testing.InternalTest>
```


# Functions


```haxe
import stdgo.errors_test.Errors
```


## function \_oops


```haxe
function _oops():stdgo.Error
```


[\(view code\)](<./Errors.hx#L218>)


## function example


```haxe
function example():Void
```


[\(view code\)](<./Errors.hx#L221>)


## function exampleAs


```haxe
function exampleAs():Void
```


[\(view code\)](<./Errors.hx#L270>)


## function exampleIs


```haxe
function exampleIs():Void
```


[\(view code\)](<./Errors.hx#L258>)


## function exampleJoin


```haxe
function exampleJoin():Void
```


[\(view code\)](<./Errors.hx#L246>)


## function exampleNew


```haxe
function exampleNew():Void
```


[\(view code\)](<./Errors.hx#L229>)


## function exampleNew\_errorf


```haxe
function exampleNew_errorf():Void
```



The fmt package's Errorf function lets us use the package's formatting
features to create descriptive error messages.  

[\(view code\)](<./Errors.hx#L239>)


## function exampleUnwrap


```haxe
function exampleUnwrap():Void
```


[\(view code\)](<./Errors.hx#L283>)


## function testAs


```haxe
function testAs(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L383>)


## function testAsValidation


```haxe
function testAsValidation(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L432>)


## function testErrorMethod


```haxe
function testErrorMethod(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L212>)


## function testIs


```haxe
function testIs(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L332>)


## function testJoin


```haxe
function testJoin(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L309>)


## function testJoinErrorMethod


```haxe
function testJoinErrorMethod(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L322>)


## function testJoinReturnsNil


```haxe
function testJoinReturnsNil(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L289>)


## function testNewEqual


```haxe
function testNewEqual(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L200>)


## function testUnwrap


```haxe
function testUnwrap(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Errors.hx#L483>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Errors.hx#L39>)


# Classes


```haxe
import stdgo.errors_test.*
```


## class MyError



MyError is an error implementation that includes a time and message.  

```haxe
var what:stdgo.GoString
```


```haxe
var when:stdgo.time.Time
```


### MyError function new


```haxe
function new(?when:stdgo.time.Time, ?what:stdgo.GoString):Void
```


[\(view code\)](<./Errors_test.hx#L43>)


### MyError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Errors_test.hx#L509>)


# Typedefs


```haxe
import stdgo.errors_test.*
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



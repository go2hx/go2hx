# Module: `stdgo.errors`

[(view library index)](../stdgo.md)


# Overview





# Index


- [Variables](<#variables>)

- [`function example():Void`](<#function-example>)

- [`function exampleAs():Void`](<#function-exampleas>)

- [`function exampleIs():Void`](<#function-exampleis>)

- [`function exampleJoin():Void`](<#function-examplejoin>)

- [`function exampleNew():Void`](<#function-examplenew>)

- [`function exampleNew_errorf():Void`](<#function-examplenew_errorf>)

- [`function exampleUnwrap():Void`](<#function-exampleunwrap>)

- [`function testAs(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testas>)

- [`function testAsValidation(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testasvalidation>)

- [`function testErrorMethod(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testerrormethod>)

- [`function testIs(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testis>)

- [`function testJoin(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testjoin>)

- [`function testJoinErrorMethod(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testjoinerrormethod>)

- [`function testJoinReturnsNil(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testjoinreturnsnil>)

- [`function testNewEqual(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnewequal>)

- [`function testUnwrap(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testunwrap>)

- [class MyError](<#class-myerror>)

  - [`function new(?when:stdgo.time.Time, ?what:stdgo.GoString):Void`](<#myerror-function-new>)

  - [`function error():stdgo.GoString`](<#myerror-function-error>)

- [class T\_errorT](<#class-t_errort>)

  - [`function new(?_s:stdgo.GoString):Void`](<#t_errort-function-new>)

  - [`function error():stdgo.GoString`](<#t_errort-function-error>)

- [class T\_errorUncomparable](<#class-t_erroruncomparable>)

  - [`function new(?_f:stdgo.Slice<stdgo.GoString>):Void`](<#t_erroruncomparable-function-new>)

  - [`function error():stdgo.GoString`](<#t_erroruncomparable-function-error>)

  - [`function is_( _target:stdgo.Error):Bool`](<#terroruncomparable-function-is>)

- [class T\_poser](<#class-t_poser>)

  - [`function _f()`](<#t_poser-function-_f>)

  - [`function new(?_msg:stdgo.GoString, ?_f:()):Void`](<#t_poser-function-new>)

  - [`function as( _err:stdgo.AnyInterface):Bool`](<#t_poser-function-as>)

  - [`function error():stdgo.GoString`](<#t_poser-function-error>)

  - [`function is_( _err:stdgo.Error):Bool`](<#tposer-function-is>)

- [class T\_wrapped](<#class-t_wrapped>)

  - [`function new(?_msg:stdgo.GoString, ?_err:Null<stdgo.Error>):Void`](<#t_wrapped-function-new>)

  - [`function error():stdgo.GoString`](<#t_wrapped-function-error>)

  - [`function unwrap():stdgo.Error`](<#t_wrapped-function-unwrap>)

# Variables


```haxe
import stdgo.errors_test.Errors
```


```haxe
var _:Bool
```


# Functions


```haxe
import stdgo.errors_test.Errors
```


## function example


```haxe
function example():Void
```





[\(view code\)](<./Errors.hx#L258>)


## function exampleAs


```haxe
function exampleAs():Void
```





[\(view code\)](<./Errors.hx#L484>)


## function exampleIs


```haxe
function exampleIs():Void
```





[\(view code\)](<./Errors.hx#L472>)


## function exampleJoin


```haxe
function exampleJoin():Void
```





[\(view code\)](<./Errors.hx#L243>)


## function exampleNew


```haxe
function exampleNew():Void
```





[\(view code\)](<./Errors.hx#L226>)


## function exampleNew\_errorf


```haxe
function exampleNew_errorf():Void
```


The fmt package's Errorf function lets us use the package's formatting  
features to create descriptive error messages.  



[\(view code\)](<./Errors.hx#L236>)


## function exampleUnwrap


```haxe
function exampleUnwrap():Void
```





[\(view code\)](<./Errors.hx#L497>)


## function testAs


```haxe
function testAs(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Errors.hx#L360>)


## function testAsValidation


```haxe
function testAsValidation(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Errors.hx#L409>)


## function testErrorMethod


```haxe
function testErrorMethod(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Errors.hx#L220>)


## function testIs


```haxe
function testIs(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Errors.hx#L309>)


## function testJoin


```haxe
function testJoin(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Errors.hx#L286>)


## function testJoinErrorMethod


```haxe
function testJoinErrorMethod(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Errors.hx#L299>)


## function testJoinReturnsNil


```haxe
function testJoinReturnsNil(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Errors.hx#L266>)


## function testNewEqual


```haxe
function testNewEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Errors.hx#L208>)


## function testUnwrap


```haxe
function testUnwrap(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Errors.hx#L459>)


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





[\(view code\)](<./Errors_test.hx#L51>)


### MyError function error


```haxe
function error():stdgo.GoString
```





[\(view code\)](<./Errors_test.hx#L516>)


## class T\_errorT





```haxe
var _s:stdgo.GoString
```


### T\_errorT function new


```haxe
function new(?_s:stdgo.GoString):Void
```





[\(view code\)](<./Errors_test.hx#L84>)


### T\_errorT function error


```haxe
function error():stdgo.GoString
```





[\(view code\)](<./Errors_test.hx#L581>)


## class T\_errorUncomparable





```haxe
var _f:stdgo.Slice<stdgo.GoString>
```


### T\_errorUncomparable function new


```haxe
function new(?_f:stdgo.Slice<stdgo.GoString>):Void
```





[\(view code\)](<./Errors_test.hx#L116>)


### T\_errorUncomparable function error


```haxe
function error():stdgo.GoString
```





[\(view code\)](<./Errors_test.hx#L632>)


### T\_errorUncomparable function is\_


```haxe
function is_( _target:stdgo.Error):Bool
```





[\(view code\)](<./Errors_test.hx#L623>)


## class T\_poser





```haxe
var _msg:stdgo.GoString
```


### T\_poser function \_f


```haxe
function _f()
```





### T\_poser function new


```haxe
function new(?_msg:stdgo.GoString, ?_f:()):Void
```





[\(view code\)](<./Errors_test.hx#L68>)


### T\_poser function as


```haxe
function as( _err:stdgo.AnyInterface):Bool
```





[\(view code\)](<./Errors_test.hx#L537>)


### T\_poser function error


```haxe
function error():stdgo.GoString
```





[\(view code\)](<./Errors_test.hx#L564>)


### T\_poser function is\_


```haxe
function is_( _err:stdgo.Error):Bool
```





[\(view code\)](<./Errors_test.hx#L560>)


## class T\_wrapped





```haxe
var _err:stdgo.Error
```


```haxe
var _msg:stdgo.GoString
```


### T\_wrapped function new


```haxe
function new(?_msg:stdgo.GoString, ?_err:Null<stdgo.Error>):Void
```





[\(view code\)](<./Errors_test.hx#L100>)


### T\_wrapped function error


```haxe
function error():stdgo.GoString
```





[\(view code\)](<./Errors_test.hx#L604>)


### T\_wrapped function unwrap


```haxe
function unwrap():stdgo.Error
```





[\(view code\)](<./Errors_test.hx#L600>)



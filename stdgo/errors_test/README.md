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





[\(view code\)](<./Errors.hx#L488>)


## function exampleIs


```haxe
function exampleIs():Void
```





[\(view code\)](<./Errors.hx#L476>)


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





[\(view code\)](<./Errors.hx#L501>)


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





[\(view code\)](<./Errors.hx#L463>)


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





[\(view code\)](<./Errors_test.hx#L520>)



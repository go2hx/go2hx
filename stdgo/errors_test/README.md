# Module: stdgo.errors


[(view library index)](../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

- [function \_oops\(\):stdgo.Error](<#function-_oops>)

- [function example\(\):Void](<#function-example>)

- [function exampleAs\(\):Void](<#function-exampleas>)

- [function exampleIs\(\):Void](<#function-exampleis>)

- [function exampleNew\(\):Void](<#function-examplenew>)

- [function exampleNew\_errorf\(\):Void](<#function-examplenew_errorf>)

- [function exampleUnwrap\(\):Void](<#function-exampleunwrap>)

- [function testAs\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testas>)

- [function testAsValidation\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testasvalidation>)

- [function testErrorMethod\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testerrormethod>)

- [function testIs\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testis>)

- [function testNewEqual\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testnewequal>)

- [function testUnwrap\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testunwrap>)

- [function main\(\):Void](<#function-main>)

- [class MyError](<#class-myerror>)

  - [function new\(?when:stdgo.time.Time, ?what:stdgo.GoString\):Void](<#myerror-function-new>)

  - [function error\(\):stdgo.GoString](<#myerror-function-error>)

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


## function \`\_oops\`


```haxe
function _oops():stdgo.Error
```


 


[\(view code\)](<./Errors.hx#L174>)


## function \`example\`


```haxe
function example():Void
```


 


[\(view code\)](<./Errors.hx#L183>)


## function \`exampleAs\`


```haxe
function exampleAs():Void
```


 


[\(view code\)](<./Errors.hx#L429>)


## function \`exampleIs\`


```haxe
function exampleIs():Void
```


 


[\(view code\)](<./Errors.hx#L414>)


## function \`exampleNew\`


```haxe
function exampleNew():Void
```


 


[\(view code\)](<./Errors.hx#L153>)


## function \`exampleNew\_errorf\`


```haxe
function exampleNew_errorf():Void
```


The fmt package's Errorf function lets us use the package's formatting features to create descriptive error messages. 


[\(view code\)](<./Errors.hx#L164>)


## function \`exampleUnwrap\`


```haxe
function exampleUnwrap():Void
```


 


[\(view code\)](<./Errors.hx#L445>)


## function \`testAs\`


```haxe
function testAs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Errors.hx#L242>)


## function \`testAsValidation\`


```haxe
function testAsValidation(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Errors.hx#L339>)


## function \`testErrorMethod\`


```haxe
function testErrorMethod(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Errors.hx#L146>)


## function \`testIs\`


```haxe
function testIs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Errors.hx#L192>)


## function \`testNewEqual\`


```haxe
function testNewEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Errors.hx#L133>)


## function \`testUnwrap\`


```haxe
function testUnwrap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Errors.hx#L394>)


## function \`main\`


```haxe
function main():Void
```


 


[\(view code\)](<./Errors.hx#L44>)


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


 


[\(view code\)](<./Errors_test.hx#L26>)


### MyError function error


```haxe
function error():stdgo.GoString
```


 


[\(view code\)](<./Errors_test.hx#L470>)



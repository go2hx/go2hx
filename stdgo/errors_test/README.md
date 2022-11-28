# Module: `stdgo.errors`

[(view library index)](../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

- [`function _oops():stdgo.Error`](<#function-_oops>)

- [`function example():Void`](<#function-example>)

- [`function exampleAs():Void`](<#function-exampleas>)

- [`function exampleIs():Void`](<#function-exampleis>)

- [`function exampleNew():Void`](<#function-examplenew>)

- [`function exampleNew_errorf():Void`](<#function-examplenew_errorf>)

- [`function exampleUnwrap():Void`](<#function-exampleunwrap>)

- [`function testAs(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testas>)

- [`function testAsValidation(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testasvalidation>)

- [`function testErrorMethod(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testerrormethod>)

- [`function testIs(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testis>)

- [`function testNewEqual(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnewequal>)

- [`function testUnwrap(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testunwrap>)

- [`function main():Void`](<#function-main>)

- [class MyError](<#class-myerror>)

  - [`function new(?when:stdgo.time.Time, ?what:stdgo.GoString):Void`](<#myerror-function-new>)

  - [`function error():stdgo.GoString`](<#myerror-function-error>)

- [class MyError\_static\_extension](<#class-myerror_static_extension>)

  - [`function error():stdgo.GoString`](<#myerror_static_extension-function-error>)

- [class T\_errorT\_static\_extension](<#class-t_errort_static_extension>)

  - [`function error(_e:stdgo.errors_test._Errors_test.T_errorT):stdgo.GoString`](<#t_errort_static_extension-function-error>)

- [class T\_errorUncomparable\_static\_extension](<#class-t_erroruncomparable_static_extension>)

  - [`function error(_:stdgo.errors_test._Errors_test.T_errorUncomparable):stdgo.GoString`](<#t_erroruncomparable_static_extension-function-error>)

  - [`function is_(_:stdgo.errors_test._Errors_test.T_errorUncomparable, _target:stdgo.Error):Bool`](<#t_erroruncomparable_staticextension-function-is>)

- [class T\_poser\_static\_extension](<#class-t_poser_static_extension>)

  - [`function as(_p:stdgo.Ref<stdgo.errors_test._Errors_test.T_poser>, _err:stdgo.AnyInterface):Bool`](<#t_poser_static_extension-function-as>)

  - [`function error(_p:stdgo.Ref<stdgo.errors_test._Errors_test.T_poser>):stdgo.GoString`](<#t_poser_static_extension-function-error>)

  - [`function is_(_p:stdgo.Ref<stdgo.errors_test._Errors_test.T_poser>, _err:stdgo.Error):Bool`](<#t_poser_staticextension-function-is>)

- [class T\_wrapped\_static\_extension](<#class-t_wrapped_static_extension>)

  - [`function error(_e:stdgo.errors_test._Errors_test.T_wrapped):stdgo.GoString`](<#t_wrapped_static_extension-function-error>)

  - [`function unwrap(_e:stdgo.errors_test._Errors_test.T_wrapped):stdgo.Error`](<#t_wrapped_static_extension-function-unwrap>)

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


## function \_oops


```haxe
function _oops():stdgo.Error
```


 


[\(view code\)](<./Errors.hx#L157>)


## function example


```haxe
function example():Void
```


 


[\(view code\)](<./Errors.hx#L166>)


## function exampleAs


```haxe
function exampleAs():Void
```


 


[\(view code\)](<./Errors.hx#L409>)


## function exampleIs


```haxe
function exampleIs():Void
```


 


[\(view code\)](<./Errors.hx#L394>)


## function exampleNew


```haxe
function exampleNew():Void
```


 


[\(view code\)](<./Errors.hx#L138>)


## function exampleNew\_errorf


```haxe
function exampleNew_errorf():Void
```


The fmt package's Errorf function lets us use the package's formatting features to create descriptive error messages. 


[\(view code\)](<./Errors.hx#L149>)


## function exampleUnwrap


```haxe
function exampleUnwrap():Void
```


 


[\(view code\)](<./Errors.hx#L425>)


## function testAs


```haxe
function testAs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Errors.hx#L225>)


## function testAsValidation


```haxe
function testAsValidation(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Errors.hx#L319>)


## function testErrorMethod


```haxe
function testErrorMethod(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Errors.hx#L131>)


## function testIs


```haxe
function testIs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Errors.hx#L175>)


## function testNewEqual


```haxe
function testNewEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Errors.hx#L118>)


## function testUnwrap


```haxe
function testUnwrap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Errors.hx#L374>)


## function main


```haxe
function main():Void
```


 


[\(view code\)](<./Errors.hx#L40>)


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


 


[\(view code\)](<./Errors_test.hx#L453>)


## class MyError\_static\_extension


 


### MyError\_static\_extension function error


```haxe
function error():stdgo.GoString
```


 


[\(view code\)](<./Errors_test.hx#L453>)


## class T\_errorT\_static\_extension


 


### T\_errorT\_static\_extension function error


```haxe
function error(_e:stdgo.errors_test._Errors_test.T_errorT):stdgo.GoString
```


 


[\(view code\)](<./Errors_test.hx#L542>)


## class T\_errorUncomparable\_static\_extension


 


### T\_errorUncomparable\_static\_extension function error


```haxe
function error(_:stdgo.errors_test._Errors_test.T_errorUncomparable):stdgo.GoString
```


 


[\(view code\)](<./Errors_test.hx#L617>)


### T\_errorUncomparable\_static\_extension function is\_


```haxe
function is_(_:stdgo.errors_test._Errors_test.T_errorUncomparable, _target:stdgo.Error):Bool
```


 


[\(view code\)](<./Errors_test.hx#L607>)


## class T\_poser\_static\_extension


 


### T\_poser\_static\_extension function as


```haxe
function as(_p:stdgo.Ref<stdgo.errors_test._Errors_test.T_poser>, _err:stdgo.AnyInterface):Bool
```


 


[\(view code\)](<./Errors_test.hx#L487>)


### T\_poser\_static\_extension function error


```haxe
function error(_p:stdgo.Ref<stdgo.errors_test._Errors_test.T_poser>):stdgo.GoString
```


 


[\(view code\)](<./Errors_test.hx#L516>)


### T\_poser\_static\_extension function is\_


```haxe
function is_(_p:stdgo.Ref<stdgo.errors_test._Errors_test.T_poser>, _err:stdgo.Error):Bool
```


 


[\(view code\)](<./Errors_test.hx#L511>)


## class T\_wrapped\_static\_extension


 


### T\_wrapped\_static\_extension function error


```haxe
function error(_e:stdgo.errors_test._Errors_test.T_wrapped):stdgo.GoString
```


 


[\(view code\)](<./Errors_test.hx#L577>)


### T\_wrapped\_static\_extension function unwrap


```haxe
function unwrap(_e:stdgo.errors_test._Errors_test.T_wrapped):stdgo.Error
```


 


[\(view code\)](<./Errors_test.hx#L572>)


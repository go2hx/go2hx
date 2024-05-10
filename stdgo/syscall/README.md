# Module: `stdgo.syscall`

[(view library index)](../stdgo.md)


# Overview


```
Package js gives access to the WebAssembly host environment when using the js/wasm architecture.
    Its API is based on JavaScript semantics.
```

This package is EXPERIMENTAL. Its current scope is only to allow tests to run, but not yet to provide a
comprehensive API for users. It is exempt from the Go compatibility promise.  

# Index


- [Constants](<#constants>)

- [class Js](<#class-js>)

  - [`function copyBytesToGo(dst:Array<Int>, src:stdgo.syscall.Value):Int`](<#js-function-copybytestogo>)

  - [`function copyBytesToJS(dst:stdgo.syscall.Value, src:Array<Int>):Int`](<#js-function-copybytestojs>)

  - [`function funcOf(fn:(_this:stdgo.syscall.Value, _args:stdgo.Slice<stdgo.syscall.Value>):stdgo.AnyInterface):stdgo.syscall.Func`](<#js-function-funcof>)

  - [`function global():stdgo.syscall.Value`](<#js-function-global>)

  - [`function null_():stdgo.syscall.Value`](<#js-function-null_>)

  - [`function undefined():stdgo.syscall.Value`](<#js-function-undefined>)

  - [`function valueOf(x:stdgo.AnyInterface):stdgo.syscall.Value`](<#js-function-valueof>)

- [typedef T\_ref](<#typedef-t_ref>)

- [typedef Type\_](<#typedef-type_>)

- [abstract Func](<#abstract-func>)

- [abstract Value](<#abstract-value>)

- [abstract Error](<#abstract-error>)

- [abstract ValueError](<#abstract-valueerror>)

# Constants


```haxe
import stdgo.syscall.Js
```


```haxe
final typeBoolean:stdgo._internal.syscall.js.Type_ = stdgo._internal.syscall.js.Js.typeBoolean
```


```haxe
final typeFunction:stdgo._internal.syscall.js.Type_ = stdgo._internal.syscall.js.Js.typeFunction
```


```haxe
final typeNull:stdgo._internal.syscall.js.Type_ = stdgo._internal.syscall.js.Js.typeNull
```


```haxe
final typeNumber:stdgo._internal.syscall.js.Type_ = stdgo._internal.syscall.js.Js.typeNumber
```


```haxe
final typeObject:stdgo._internal.syscall.js.Type_ = stdgo._internal.syscall.js.Js.typeObject
```


```haxe
final typeString:stdgo._internal.syscall.js.Type_ = stdgo._internal.syscall.js.Js.typeString
```


```haxe
final typeSymbol:stdgo._internal.syscall.js.Type_ = stdgo._internal.syscall.js.Js.typeSymbol
```


```haxe
final typeUndefined:stdgo._internal.syscall.js.Type_ = stdgo._internal.syscall.js.Js.typeUndefined
```


# Classes


```haxe
import stdgo.syscall.*
```


## class Js


### Js function copyBytesToGo


```haxe
function copyBytesToGo(dst:Array<Int>, src:stdgo.syscall.Value):Int
```


```
CopyBytesToGo copies bytes from src to dst.
        It panics if src is not a Uint8Array or Uint8ClampedArray.
        It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
```
[\(view code\)](<./Js.hx#L155>)


### Js function copyBytesToJS


```haxe
function copyBytesToJS(dst:stdgo.syscall.Value, src:Array<Int>):Int
```


```
CopyBytesToJS copies bytes from src to dst.
        It panics if dst is not a Uint8Array or Uint8ClampedArray.
        It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
```
[\(view code\)](<./Js.hx#L164>)


### Js function funcOf


```haxe
function funcOf(fn:(_this:stdgo.syscall.Value, _args:stdgo.Slice<stdgo.syscall.Value>):stdgo.AnyInterface):stdgo.syscall.Func
```



FuncOf returns a function to be used by JavaScript.  


The Go function fn is called with the value of JavaScript's "this" keyword and the
arguments of the invocation. The return value of the invocation is
the result of the Go function mapped back to JavaScript according to ValueOf.  


Invoking the wrapped Go function from JavaScript will
pause the event loop and spawn a new goroutine.
Other wrapped functions which are triggered during a call from Go to JavaScript
get executed on the same goroutine.  


As a consequence, if one wrapped function blocks, JavaScript's event loop
is blocked until that function returns. Hence, calling any async JavaScript
API, which requires the event loop, like fetch \(http.Client\), will cause an
immediate deadlock. Therefore a blocking function should explicitly start a
new goroutine.  


Func.Release must be called to free up resources when the function will not be invoked any more.  

[\(view code\)](<./Js.hx#L109>)


### Js function global


```haxe
function global():stdgo.syscall.Value
```



Global returns the JavaScript global object, usually "window" or "global".  

[\(view code\)](<./Js.hx#L128>)


### Js function null\_


```haxe
function null_():stdgo.syscall.Value
```



Null returns the JavaScript value "null".  

[\(view code\)](<./Js.hx#L122>)


### Js function undefined


```haxe
function undefined():stdgo.syscall.Value
```



Undefined returns the JavaScript value "undefined".  

[\(view code\)](<./Js.hx#L116>)


### Js function valueOf


```haxe
function valueOf(x:stdgo.AnyInterface):stdgo.syscall.Value
```



ValueOf returns x as a JavaScript value:  

```
        	| Go                     | JavaScript             |
        	| ---------------------- | ---------------------- |
        	| js.Value               | [its value]            |
        	| js.Func                | function               |
        	| nil                    | null                   |
        	| bool                   | boolean                |
        	| integers and floats    | number                 |
        	| string                 | string                 |
        	| []interface{}          | new array              |
        	| map[string]interface{} | new object             |
```

Panics if x is not one of the expected types.  

[\(view code\)](<./Js.hx#L147>)


# Typedefs


```haxe
import stdgo.syscall.*
```


## typedef T\_ref


```haxe
typedef T_ref = stdgo._internal.syscall.js.T_ref;
```


## typedef Type\_


```haxe
typedef Type_ = stdgo._internal.syscall.js.Type_;
```


# Abstracts


## abstract Func


[\(view file containing code\)](<./Js.hx>)


## abstract Value


[\(view file containing code\)](<./Js.hx>)


## abstract Error


[\(view file containing code\)](<./Js.hx>)


## abstract ValueError


[\(view file containing code\)](<./Js.hx>)



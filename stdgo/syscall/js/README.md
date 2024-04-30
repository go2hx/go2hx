# Module: `stdgo.syscall.js`

[(view library index)](../../stdgo.md)


# Overview


```
Package js gives access to the WebAssembly host environment when using the js/wasm architecture.
    Its API is based on JavaScript semantics.
```

This package is EXPERIMENTAL. Its current scope is only to allow tests to run, but not yet to provide a
comprehensive API for users. It is exempt from the Go compatibility promise.  

# Index


- [Constants](<#constants>)

- [`function copyBytesToGo(dst:Array<Int>, src:stdgo.syscall.js.Value):Int`](<#function-copybytestogo>)

- [`function copyBytesToJS(dst:stdgo.syscall.js.Value, src:Array<Int>):Int`](<#function-copybytestojs>)

- [`function funcOf(fn:(_this:stdgo.syscall.js.Value, _args:stdgo.Slice<stdgo.syscall.js.Value>):stdgo.AnyInterface):stdgo.syscall.js.Func`](<#function-funcof>)

- [`function global():stdgo.syscall.js.Value`](<#function-global>)

- [`function null_():stdgo.syscall.js.Value`](<#function-null_>)

- [`function undefined():stdgo.syscall.js.Value`](<#function-undefined>)

- [`function valueOf(x:stdgo.AnyInterface):stdgo.syscall.js.Value`](<#function-valueof>)

- [typedef Error](<#typedef-error>)

- [typedef Error\_asInterface](<#typedef-error_asinterface>)

- [typedef Error\_static\_extension](<#typedef-error_static_extension>)

- [typedef Func](<#typedef-func>)

- [typedef Func\_asInterface](<#typedef-func_asinterface>)

- [typedef Func\_static\_extension](<#typedef-func_static_extension>)

- [typedef T\_ref](<#typedef-t_ref>)

- [typedef Type\_](<#typedef-type_>)

- [typedef Type\_\_asInterface](<#typedef-type__asinterface>)

- [typedef Type\_\_static\_extension](<#typedef-type__static_extension>)

- [typedef Value](<#typedef-value>)

- [typedef ValueError](<#typedef-valueerror>)

- [typedef ValueError\_asInterface](<#typedef-valueerror_asinterface>)

- [typedef ValueError\_static\_extension](<#typedef-valueerror_static_extension>)

- [typedef Value\_asInterface](<#typedef-value_asinterface>)

- [typedef Value\_static\_extension](<#typedef-value_static_extension>)

# Constants


```haxe
import stdgo.syscall.js.Js
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


# Functions


```haxe
import stdgo.syscall.js.Js
```


## function copyBytesToGo


```haxe
function copyBytesToGo(dst:Array<Int>, src:stdgo.syscall.js.Value):Int
```


```
CopyBytesToGo copies bytes from src to dst.
    It panics if src is not a Uint8Array or Uint8ClampedArray.
    It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
```
[\(view code\)](<./Js.hx#L79>)


## function copyBytesToJS


```haxe
function copyBytesToJS(dst:stdgo.syscall.js.Value, src:Array<Int>):Int
```


```
CopyBytesToJS copies bytes from src to dst.
    It panics if dst is not a Uint8Array or Uint8ClampedArray.
    It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
```
[\(view code\)](<./Js.hx#L85>)


## function funcOf


```haxe
function funcOf(fn:(_this:stdgo.syscall.js.Value, _args:stdgo.Slice<stdgo.syscall.js.Value>):stdgo.AnyInterface):stdgo.syscall.js.Func
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

[\(view code\)](<./Js.hx#L44>)


## function global


```haxe
function global():stdgo.syscall.js.Value
```



Global returns the JavaScript global object, usually "window" or "global".  

[\(view code\)](<./Js.hx#L56>)


## function null\_


```haxe
function null_():stdgo.syscall.js.Value
```



Null returns the JavaScript value "null".  

[\(view code\)](<./Js.hx#L52>)


## function undefined


```haxe
function undefined():stdgo.syscall.js.Value
```



Undefined returns the JavaScript value "undefined".  

[\(view code\)](<./Js.hx#L48>)


## function valueOf


```haxe
function valueOf(x:stdgo.AnyInterface):stdgo.syscall.js.Value
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

[\(view code\)](<./Js.hx#L73>)


# Typedefs


```haxe
import stdgo.syscall.js.*
```


## typedef Error


```haxe
typedef Error = Dynamic;
```


## typedef Error\_asInterface


```haxe
typedef Error_asInterface = Dynamic;
```


## typedef Error\_static\_extension


```haxe
typedef Error_static_extension = Dynamic;
```


## typedef Func


```haxe
typedef Func = Dynamic;
```


## typedef Func\_asInterface


```haxe
typedef Func_asInterface = Dynamic;
```


## typedef Func\_static\_extension


```haxe
typedef Func_static_extension = Dynamic;
```


## typedef T\_ref


```haxe
typedef T_ref = stdgo._internal.syscall.js.T_ref;
```


## typedef Type\_


```haxe
typedef Type_ = stdgo._internal.syscall.js.Type_;
```


## typedef Type\_\_asInterface


```haxe
typedef Type__asInterface = Dynamic;
```


## typedef Type\_\_static\_extension


```haxe
typedef Type__static_extension = Dynamic;
```


## typedef Value


```haxe
typedef Value = Dynamic;
```


## typedef ValueError


```haxe
typedef ValueError = Dynamic;
```


## typedef ValueError\_asInterface


```haxe
typedef ValueError_asInterface = Dynamic;
```


## typedef ValueError\_static\_extension


```haxe
typedef ValueError_static_extension = Dynamic;
```


## typedef Value\_asInterface


```haxe
typedef Value_asInterface = Dynamic;
```


## typedef Value\_static\_extension


```haxe
typedef Value_static_extension = Dynamic;
```



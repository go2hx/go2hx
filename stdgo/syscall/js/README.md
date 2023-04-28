# Module: `stdgo.syscall.js`

[(view library index)](../../stdgo.md)


# Overview



Package js gives access to the WebAssembly host environment when using the js/wasm architecture.
Its API is based on JavaScript semantics.  


This package is EXPERIMENTAL. Its current scope is only to allow tests to run, but not yet to provide a
comprehensive API for users. It is exempt from the Go compatibility promise.  

<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
Uncaught exception: syscall.js.global is not yet implemented
Called from stdgo.syscall.js._Js.$Js_Fields_.global(stdgo/syscall/js/Js.hx:406)
Called from fun$16484(stdgo/syscall/js_test/Js_test.hx:17)
Called from .init(stdgo/syscall/js_test/Js_test.hx:17)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
stdgo/syscall/js/Js.hx:406: characters 25-30 : Uncaught exception syscall.js.global is not yet implemented
stdgo/syscall/js_test/Js_test.hx:17: characters 23-51 : Called from here
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
```
</p>
</details>


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.syscall.js.Value):stdgo.GoInt`](<#function-copybytestogo>)

- [`function copyBytesToJS(_dst:stdgo.syscall.js.Value, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-copybytestojs>)

- [`function funcOf(_fn:(_this:stdgo.syscall.js.Value, _args:stdgo.Slice<stdgo.syscall.js.Value>):stdgo.AnyInterface):stdgo.syscall.js.Func`](<#function-funcof>)

- [`function global():stdgo.syscall.js.Value`](<#function-global>)

- [`function null_():stdgo.syscall.js.Value`](<#function-null_>)

- [`function undefined():stdgo.syscall.js.Value`](<#function-undefined>)

- [`function valueOf(_x:stdgo.AnyInterface):stdgo.syscall.js.Value`](<#function-valueof>)

- [class Func](<#class-func>)

  - [`function _float(_p:stdgo.GoString):stdgo.GoFloat64`](<#func-function-_float>)

  - [`function _isNumber():Bool`](<#func-function-_isnumber>)

  - [`function bool_():Bool`](<#func-function-bool_>)

  - [`function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#func-function-call>)

  - [`function delete(_p:stdgo.GoString):Void`](<#func-function-delete>)

  - [`function equal(__0:stdgo.syscall.js.Value):Bool`](<#func-function-equal>)

  - [`function float_():stdgo.GoFloat64`](<#func-function-float_>)

  - [`function get(_p:stdgo.GoString):stdgo.syscall.js.Value`](<#func-function-get>)

  - [`function index(_i:stdgo.GoInt):stdgo.syscall.js.Value`](<#func-function-index>)

  - [`function instanceOf(__0:stdgo.syscall.js.Value):Bool`](<#func-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#func-function-int_>)

  - [`function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#func-function-invoke>)

  - [`function isNaN():Bool`](<#func-function-isnan>)

  - [`function isNull():Bool`](<#func-function-isnull>)

  - [`function isUndefined():Bool`](<#func-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#func-function-length_>)

  - [`function new(?value:stdgo.syscall.js.Value, ?_id:stdgo.GoUInt32):Void`](<#func-function-new>)

  - [`function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#func-function-new_>)

  - [`function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#func-function-set>)

  - [`function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#func-function-setindex>)

  - [`function string():stdgo.GoString`](<#func-function-string>)

  - [`function truthy():Bool`](<#func-function-truthy>)

  - [`function type():stdgo.syscall.js.Type`](<#func-function-type>)

  - [`function _float( _p:stdgo.GoString):stdgo.GoFloat64`](<#func-function-_float>)

  - [`function _isNumber():Bool`](<#func-function-_isnumber>)

  - [`function bool_():Bool`](<#func-function-bool_>)

  - [`function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#func-function-call>)

  - [`function delete( _p:stdgo.GoString):Void`](<#func-function-delete>)

  - [`function equal( __0:stdgo.syscall.js.Value):Bool`](<#func-function-equal>)

  - [`function float_():stdgo.GoFloat64`](<#func-function-float_>)

  - [`function get( _p:stdgo.GoString):stdgo.syscall.js.Value`](<#func-function-get>)

  - [`function index( _i:stdgo.GoInt):stdgo.syscall.js.Value`](<#func-function-index>)

  - [`function instanceOf( __0:stdgo.syscall.js.Value):Bool`](<#func-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#func-function-int_>)

  - [`function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#func-function-invoke>)

  - [`function isNaN():Bool`](<#func-function-isnan>)

  - [`function isNull():Bool`](<#func-function-isnull>)

  - [`function isUndefined():Bool`](<#func-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#func-function-length_>)

  - [`function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#func-function-new_>)

  - [`function release():Void`](<#func-function-release>)

  - [`function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#func-function-set>)

  - [`function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#func-function-setindex>)

  - [`function string():stdgo.GoString`](<#func-function-string>)

  - [`function truthy():Bool`](<#func-function-truthy>)

  - [`function type():stdgo.syscall.js.Type`](<#func-function-type>)

- [class T\_error](<#class-t_error>)

  - [`function _float(_p:stdgo.GoString):stdgo.GoFloat64`](<#t_error-function-_float>)

  - [`function _isNumber():Bool`](<#t_error-function-_isnumber>)

  - [`function bool_():Bool`](<#terror-function-bool>)

  - [`function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#t_error-function-call>)

  - [`function delete(_p:stdgo.GoString):Void`](<#t_error-function-delete>)

  - [`function equal(__0:stdgo.syscall.js.Value):Bool`](<#t_error-function-equal>)

  - [`function float_():stdgo.GoFloat64`](<#terror-function-float>)

  - [`function get(_p:stdgo.GoString):stdgo.syscall.js.Value`](<#t_error-function-get>)

  - [`function index(_i:stdgo.GoInt):stdgo.syscall.js.Value`](<#t_error-function-index>)

  - [`function instanceOf(__0:stdgo.syscall.js.Value):Bool`](<#t_error-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#terror-function-int>)

  - [`function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#t_error-function-invoke>)

  - [`function isNaN():Bool`](<#t_error-function-isnan>)

  - [`function isNull():Bool`](<#t_error-function-isnull>)

  - [`function isUndefined():Bool`](<#t_error-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#terror-function-length>)

  - [`function new(?value:stdgo.syscall.js.Value):Void`](<#t_error-function-new>)

  - [`function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#terror-function-new>)

  - [`function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#t_error-function-set>)

  - [`function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#t_error-function-setindex>)

  - [`function string():stdgo.GoString`](<#t_error-function-string>)

  - [`function truthy():Bool`](<#t_error-function-truthy>)

  - [`function type():stdgo.syscall.js.Type`](<#t_error-function-type>)

  - [`function _float( _p:stdgo.GoString):stdgo.GoFloat64`](<#t_error-function-_float>)

  - [`function _isNumber():Bool`](<#t_error-function-_isnumber>)

  - [`function bool_():Bool`](<#terror-function-bool>)

  - [`function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#t_error-function-call>)

  - [`function delete( _p:stdgo.GoString):Void`](<#t_error-function-delete>)

  - [`function equal( __0:stdgo.syscall.js.Value):Bool`](<#t_error-function-equal>)

  - [`function error():stdgo.GoString`](<#t_error-function-error>)

  - [`function float_():stdgo.GoFloat64`](<#terror-function-float>)

  - [`function get( _p:stdgo.GoString):stdgo.syscall.js.Value`](<#t_error-function-get>)

  - [`function index( _i:stdgo.GoInt):stdgo.syscall.js.Value`](<#t_error-function-index>)

  - [`function instanceOf( __0:stdgo.syscall.js.Value):Bool`](<#t_error-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#terror-function-int>)

  - [`function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#t_error-function-invoke>)

  - [`function isNaN():Bool`](<#t_error-function-isnan>)

  - [`function isNull():Bool`](<#t_error-function-isnull>)

  - [`function isUndefined():Bool`](<#t_error-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#terror-function-length>)

  - [`function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#terror-function-new>)

  - [`function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#t_error-function-set>)

  - [`function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#t_error-function-setindex>)

  - [`function string():stdgo.GoString`](<#t_error-function-string>)

  - [`function truthy():Bool`](<#t_error-function-truthy>)

  - [`function type():stdgo.syscall.js.Type`](<#t_error-function-type>)

- [class Value](<#class-value>)

  - [`function new(?__10:stdgo.GoArray<():Void>, ?_ref:Null<stdgo.syscall.js._Js.T_ref>, ?_gcPtr:stdgo.Pointer<stdgo.syscall.js._Js.T_ref>):Void`](<#value-function-new>)

  - [`function _float( _method:stdgo.GoString):stdgo.GoFloat64`](<#value-function-_float>)

  - [`function _isNumber():Bool`](<#value-function-_isnumber>)

  - [`function bool_():Bool`](<#value-function-bool_>)

  - [`function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#value-function-call>)

  - [`function delete( _p:stdgo.GoString):Void`](<#value-function-delete>)

  - [`function equal( _w:stdgo.syscall.js.Value):Bool`](<#value-function-equal>)

  - [`function float_():stdgo.GoFloat64`](<#value-function-float_>)

  - [`function get( _p:stdgo.GoString):stdgo.syscall.js.Value`](<#value-function-get>)

  - [`function index( _i:stdgo.GoInt):stdgo.syscall.js.Value`](<#value-function-index>)

  - [`function instanceOf( _t:stdgo.syscall.js.Value):Bool`](<#value-function-instanceof>)

  - [`function int_():stdgo.GoInt`](<#value-function-int_>)

  - [`function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#value-function-invoke>)

  - [`function isNaN():Bool`](<#value-function-isnan>)

  - [`function isNull():Bool`](<#value-function-isnull>)

  - [`function isUndefined():Bool`](<#value-function-isundefined>)

  - [`function length_():stdgo.GoInt`](<#value-function-length_>)

  - [`function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value`](<#value-function-new_>)

  - [`function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void`](<#value-function-set>)

  - [`function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void`](<#value-function-setindex>)

  - [`function string():stdgo.GoString`](<#value-function-string>)

  - [`function truthy():Bool`](<#value-function-truthy>)

  - [`function type():stdgo.syscall.js.Type`](<#value-function-type>)

- [class ValueError](<#class-valueerror>)

  - [`function new(?method:stdgo.GoString, ?type:Null<stdgo.syscall.js.Type>):Void`](<#valueerror-function-new>)

  - [`function error():stdgo.GoString`](<#valueerror-function-error>)

- [typedef Type](<#typedef-type>)

# Examples


- [`exampleFuncOf`](<#examplefuncof>)

# Constants


```haxe
import stdgo.syscall.js.Js
```


```haxe
final typeBoolean:stdgo.syscall.js.Type = ((((0 : GoInt)) : stdgo.syscall.js.Js.Type))
```


```haxe
final typeFunction:stdgo.syscall.js.Type = ((((0 : GoInt)) : stdgo.syscall.js.Js.Type))
```


```haxe
final typeNull:stdgo.syscall.js.Type = ((((0 : GoInt)) : stdgo.syscall.js.Js.Type))
```


```haxe
final typeNumber:stdgo.syscall.js.Type = ((((0 : GoInt)) : stdgo.syscall.js.Js.Type))
```


```haxe
final typeObject:stdgo.syscall.js.Type = ((((0 : GoInt)) : stdgo.syscall.js.Js.Type))
```


```haxe
final typeString:stdgo.syscall.js.Type = ((((0 : GoInt)) : stdgo.syscall.js.Js.Type))
```


```haxe
final typeSymbol:stdgo.syscall.js.Type = ((((0 : GoInt)) : stdgo.syscall.js.Js.Type))
```


```haxe
final typeUndefined:stdgo.syscall.js.Type = ((((0 : GoInt)) : stdgo.syscall.js.Js.Type))
```


# Variables


```haxe
import stdgo.syscall.js.Js
```


```haxe
var jsgo:stdgo.syscall.js.Value
```


# Functions


```haxe
import stdgo.syscall.js.Js
```


## function copyBytesToGo


```haxe
function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.syscall.js.Value):stdgo.GoInt
```



CopyBytesToGo copies bytes from src to dst.
It panics if src is not an Uint8Array or Uint8ClampedArray.
It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.  

[\(view code\)](<./Js.hx#L444>)


## function copyBytesToJS


```haxe
function copyBytesToJS(_dst:stdgo.syscall.js.Value, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



CopyBytesToJS copies bytes from src to dst.
It panics if dst is not an Uint8Array or Uint8ClampedArray.
It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.  

[\(view code\)](<./Js.hx#L451>)


## function funcOf


```haxe
function funcOf(_fn:(_this:stdgo.syscall.js.Value, _args:stdgo.Slice<stdgo.syscall.js.Value>):stdgo.AnyInterface):stdgo.syscall.js.Func
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

### exampleFuncOf


<details><summary></summary>
<p>


```haxe
function exampleFuncOf():Void {
        var _cb:stdgo.syscall.js.Js.Func = ({} : stdgo.syscall.js.Js.Func);
        _cb = stdgo.syscall.js.Js.funcOf(function(_this:stdgo.syscall.js.Js.Value, _args:Slice<stdgo.syscall.js.Js.Value>):AnyInterface {
            stdgo.fmt.Fmt.println(Go.toInterface(("button clicked" : GoString)));
            _cb.release();
            return (null : AnyInterface);
        })?.__copy__();
        stdgo.syscall.js.Js.global().get(("document" : GoString)).call(("getElementById" : GoString), Go.toInterface(("myButton" : GoString))).call(("addEventListener" : GoString), Go.toInterface(("click" : GoString)), Go.toInterface(Go.asInterface(_cb)));
    }
```


</p>
</details>


[\(view code\)](<./Js.hx#L385>)


## function global


```haxe
function global():stdgo.syscall.js.Value
```



Global returns the JavaScript global object, usually "window" or "global".  

[\(view code\)](<./Js.hx#L406>)


## function null\_


```haxe
function null_():stdgo.syscall.js.Value
```



Null returns the JavaScript value "null".  

[\(view code\)](<./Js.hx#L402>)


## function undefined


```haxe
function undefined():stdgo.syscall.js.Value
```



Undefined returns the JavaScript value "undefined".  

[\(view code\)](<./Js.hx#L398>)


## function valueOf


```haxe
function valueOf(_x:stdgo.AnyInterface):stdgo.syscall.js.Value
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

[\(view code\)](<./Js.hx#L423>)


# Classes


```haxe
import stdgo.syscall.js.*
```


## class Func



Func is a wrapped Go function to be called by JavaScript.  

```haxe
var _id:stdgo.GoUInt32
```


```haxe
var value:stdgo.syscall.js.Value
```


### Func function \_float


```haxe
function _float(_p:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L242>)


### Func function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L244>)


### Func function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L202>)


### Func function call


```haxe
function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L204>)


### Func function delete


```haxe
function delete(_p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L206>)


### Func function equal


```haxe
function equal(__0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L208>)


### Func function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L210>)


### Func function get


```haxe
function get(_p:stdgo.GoString):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L212>)


### Func function index


```haxe
function index(_i:stdgo.GoInt):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L214>)


### Func function instanceOf


```haxe
function instanceOf(__0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L216>)


### Func function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L218>)


### Func function invoke


```haxe
function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L220>)


### Func function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L222>)


### Func function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L224>)


### Func function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L226>)


### Func function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L228>)


### Func function new


```haxe
function new(?value:stdgo.syscall.js.Value, ?_id:stdgo.GoUInt32):Void
```


[\(view code\)](<./Js.hx#L196>)


### Func function new\_


```haxe
function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L230>)


### Func function set


```haxe
function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L232>)


### Func function setIndex


```haxe
function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L234>)


### Func function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L236>)


### Func function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L238>)


### Func function type


```haxe
function type():stdgo.syscall.js.Type
```


[\(view code\)](<./Js.hx#L240>)


### Func function \_float


```haxe
function _float( _p:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L524>)


### Func function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L522>)


### Func function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L564>)


### Func function call


```haxe
function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L562>)


### Func function delete


```haxe
function delete( _p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L560>)


### Func function equal


```haxe
function equal( __0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L558>)


### Func function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L556>)


### Func function get


```haxe
function get( _p:stdgo.GoString):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L554>)


### Func function index


```haxe
function index( _i:stdgo.GoInt):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L552>)


### Func function instanceOf


```haxe
function instanceOf( __0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L550>)


### Func function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L548>)


### Func function invoke


```haxe
function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L546>)


### Func function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L544>)


### Func function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L542>)


### Func function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L540>)


### Func function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L538>)


### Func function new\_


```haxe
function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L536>)


### Func function release


```haxe
function release():Void
```



Release frees up resources allocated for the function.
The function must not be invoked after calling Release.
It is allowed to call Release while the function is still running.  

[\(view code\)](<./Js.hx#L520>)


### Func function set


```haxe
function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L534>)


### Func function setIndex


```haxe
function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L532>)


### Func function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L530>)


### Func function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L528>)


### Func function type


```haxe
function type():stdgo.syscall.js.Type
```


[\(view code\)](<./Js.hx#L526>)


## class T\_error



Error wraps a JavaScript error.  

```haxe
var value:stdgo.syscall.js.Value
```



Value is the underlying JavaScript error value.  

### T\_error function \_float


```haxe
function _float(_p:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L326>)


### T\_error function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L328>)


### T\_error function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L286>)


### T\_error function call


```haxe
function call(_m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L288>)


### T\_error function delete


```haxe
function delete(_p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L290>)


### T\_error function equal


```haxe
function equal(__0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L292>)


### T\_error function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L294>)


### T\_error function get


```haxe
function get(_p:stdgo.GoString):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L296>)


### T\_error function index


```haxe
function index(_i:stdgo.GoInt):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L298>)


### T\_error function instanceOf


```haxe
function instanceOf(__0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L300>)


### T\_error function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L302>)


### T\_error function invoke


```haxe
function invoke(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L304>)


### T\_error function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L306>)


### T\_error function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L308>)


### T\_error function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L310>)


### T\_error function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L312>)


### T\_error function new


```haxe
function new(?value:stdgo.syscall.js.Value):Void
```


[\(view code\)](<./Js.hx#L281>)


### T\_error function new\_


```haxe
function new_(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L314>)


### T\_error function set


```haxe
function set(_p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L316>)


### T\_error function setIndex


```haxe
function setIndex(_i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L318>)


### T\_error function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L320>)


### T\_error function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L322>)


### T\_error function type


```haxe
function type():stdgo.syscall.js.Type
```


[\(view code\)](<./Js.hx#L324>)


### T\_error function \_float


```haxe
function _float( _p:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L894>)


### T\_error function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L892>)


### T\_error function bool\_


```haxe
function bool_():Bool
```


[\(view code\)](<./Js.hx#L934>)


### T\_error function call


```haxe
function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L932>)


### T\_error function delete


```haxe
function delete( _p:stdgo.GoString):Void
```


[\(view code\)](<./Js.hx#L930>)


### T\_error function equal


```haxe
function equal( __0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L928>)


### T\_error function error


```haxe
function error():stdgo.GoString
```



Error implements the error interface.  

[\(view code\)](<./Js.hx#L890>)


### T\_error function float\_


```haxe
function float_():stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L926>)


### T\_error function get


```haxe
function get( _p:stdgo.GoString):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L924>)


### T\_error function index


```haxe
function index( _i:stdgo.GoInt):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L922>)


### T\_error function instanceOf


```haxe
function instanceOf( __0:stdgo.syscall.js.Value):Bool
```


[\(view code\)](<./Js.hx#L920>)


### T\_error function int\_


```haxe
function int_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L918>)


### T\_error function invoke


```haxe
function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L916>)


### T\_error function isNaN


```haxe
function isNaN():Bool
```


[\(view code\)](<./Js.hx#L914>)


### T\_error function isNull


```haxe
function isNull():Bool
```


[\(view code\)](<./Js.hx#L912>)


### T\_error function isUndefined


```haxe
function isUndefined():Bool
```


[\(view code\)](<./Js.hx#L910>)


### T\_error function length\_


```haxe
function length_():stdgo.GoInt
```


[\(view code\)](<./Js.hx#L908>)


### T\_error function new\_


```haxe
function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```


[\(view code\)](<./Js.hx#L906>)


### T\_error function set


```haxe
function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L904>)


### T\_error function setIndex


```haxe
function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```


[\(view code\)](<./Js.hx#L902>)


### T\_error function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Js.hx#L900>)


### T\_error function truthy


```haxe
function truthy():Bool
```


[\(view code\)](<./Js.hx#L898>)


### T\_error function type


```haxe
function type():stdgo.syscall.js.Type
```


[\(view code\)](<./Js.hx#L896>)


## class Value



Value represents a JavaScript value. The zero value is the JavaScript value "undefined".
Values can be checked for equality with the Equal method.  

```haxe
var __10:stdgo.GoArray<():Void>
```


```haxe
var _gcPtr:stdgo.Pointer<stdgo.syscall.js._Js.T_ref>
```


```haxe
var _ref:stdgo.syscall.js._Js.T_ref
```


### Value function new


```haxe
function new(?__10:stdgo.GoArray<():Void>, ?_ref:Null<stdgo.syscall.js._Js.T_ref>, ?_gcPtr:stdgo.Pointer<stdgo.syscall.js._Js.T_ref>):Void
```


[\(view code\)](<./Js.hx#L260>)


### Value function \_float


```haxe
function _float( _method:stdgo.GoString):stdgo.GoFloat64
```


[\(view code\)](<./Js.hx#L740>)


### Value function \_isNumber


```haxe
function _isNumber():Bool
```


[\(view code\)](<./Js.hx#L742>)


### Value function bool\_


```haxe
function bool_():Bool
```



Bool returns the value v as a bool.
It panics if v is not a JavaScript boolean.  

[\(view code\)](<./Js.hx#L726>)


### Value function call


```haxe
function call( _m:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```



Call does a JavaScript call to the method m of value v with the given arguments.
It panics if v has no method m.
The arguments get mapped to JavaScript values according to the ValueOf function.  

[\(view code\)](<./Js.hx#L763>)


### Value function delete


```haxe
function delete( _p:stdgo.GoString):Void
```



Delete deletes the JavaScript property p of value v.
It panics if v is not a JavaScript object.  

[\(view code\)](<./Js.hx#L787>)


### Value function equal


```haxe
function equal( _w:stdgo.syscall.js.Value):Bool
```



Equal reports whether v and w are equal according to JavaScript's === operator.  

[\(view code\)](<./Js.hx#L825>)


### Value function float\_


```haxe
function float_():stdgo.GoFloat64
```



Float returns the value v as a float64.
It panics if v is not a JavaScript number.  

[\(view code\)](<./Js.hx#L738>)


### Value function get


```haxe
function get( _p:stdgo.GoString):stdgo.syscall.js.Value
```



Get returns the JavaScript property p of value v.
It panics if v is not a JavaScript object.  

[\(view code\)](<./Js.hx#L799>)


### Value function index


```haxe
function index( _i:stdgo.GoInt):stdgo.syscall.js.Value
```



Index returns JavaScript index i of value v.
It panics if v is not a JavaScript object.  

[\(view code\)](<./Js.hx#L781>)


### Value function instanceOf


```haxe
function instanceOf( _t:stdgo.syscall.js.Value):Bool
```



InstanceOf reports whether v is an instance of type t according to JavaScript's instanceof operator.  

[\(view code\)](<./Js.hx#L705>)


### Value function int\_


```haxe
function int_():stdgo.GoInt
```



Int returns the value v truncated to an int.
It panics if v is not a JavaScript number.  

[\(view code\)](<./Js.hx#L732>)


### Value function invoke


```haxe
function invoke( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```



Invoke does a JavaScript call of the value v with the given arguments.
It panics if v is not a JavaScript function.
The arguments get mapped to JavaScript values according to the ValueOf function.  

[\(view code\)](<./Js.hx#L756>)


### Value function isNaN


```haxe
function isNaN():Bool
```



IsNaN reports whether v is the JavaScript value "NaN".  

[\(view code\)](<./Js.hx#L810>)


### Value function isNull


```haxe
function isNull():Bool
```



IsNull reports whether v is the JavaScript value "null".  

[\(view code\)](<./Js.hx#L815>)


### Value function isUndefined


```haxe
function isUndefined():Bool
```



IsUndefined reports whether v is the JavaScript value "undefined".  

[\(view code\)](<./Js.hx#L820>)


### Value function length\_


```haxe
function length_():stdgo.GoInt
```



Length returns the JavaScript property "length" of v.
It panics if v is not a JavaScript object.  

[\(view code\)](<./Js.hx#L769>)


### Value function new\_


```haxe
function new_( _args:haxe.Rest<stdgo.AnyInterface>):stdgo.syscall.js.Value
```



New uses JavaScript's "new" operator with value v as constructor and the given arguments.
It panics if v is not a JavaScript function.
The arguments get mapped to JavaScript values according to the ValueOf function.  

[\(view code\)](<./Js.hx#L749>)


### Value function set


```haxe
function set( _p:stdgo.GoString, _x:stdgo.AnyInterface):Void
```



Set sets the JavaScript property p of value v to ValueOf\(x\).
It panics if v is not a JavaScript object.  

[\(view code\)](<./Js.hx#L793>)


### Value function setIndex


```haxe
function setIndex( _i:stdgo.GoInt, _x:stdgo.AnyInterface):Void
```



SetIndex sets the JavaScript index i of value v to ValueOf\(x\).
It panics if v is not a JavaScript object.  

[\(view code\)](<./Js.hx#L775>)


### Value function string


```haxe
function string():stdgo.GoString
```



String returns the value v as a string.
String is a special case because of Go's String method convention. Unlike the other getters,
it does not panic if v's Type is not TypeString. Instead, it returns a string of the form "\<T\>"
or "\<T: V\>" where T is v's type and V is a string representation of v's value.  

[\(view code\)](<./Js.hx#L713>)


### Value function truthy


```haxe
function truthy():Bool
```



Truthy returns the JavaScript "truthiness" of the value v. In JavaScript,
false, 0, "", null, undefined, and NaN are "falsy", and everything else is
"truthy". See https://developer.mozilla.org/en-US/docs/Glossary/Truthy.  

[\(view code\)](<./Js.hx#L720>)


### Value function type


```haxe
function type():stdgo.syscall.js.Type
```



Type returns the JavaScript type of the value v. It is similar to JavaScript's typeof operator,
except that it returns TypeNull instead of TypeObject for null.  

[\(view code\)](<./Js.hx#L805>)


## class ValueError



A ValueError occurs when a Value method is invoked on
a Value that does not support it. Such cases are documented
in the description of each method.  

```haxe
var method:stdgo.GoString
```


```haxe
var type:stdgo.syscall.js.Type
```


### ValueError function new


```haxe
function new(?method:stdgo.GoString, ?type:Null<stdgo.syscall.js.Type>):Void
```


[\(view code\)](<./Js.hx#L343>)


### ValueError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Js.hx#L949>)


# Typedefs


```haxe
import stdgo.syscall.js.*
```


## typedef Type


```haxe
typedef Type = stdgo.GoInt;
```



Type represents the JavaScript type of a Value.  


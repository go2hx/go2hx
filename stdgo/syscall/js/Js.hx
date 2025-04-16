package stdgo.syscall.js;
var typeUndefined : Type_ = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js_type_.Type_);
var typeNull : Type_ = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js_type_.Type_);
var typeBoolean : Type_ = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js_type_.Type_);
var typeNumber : Type_ = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js_type_.Type_);
var typeString : Type_ = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js_type_.Type_);
var typeSymbol : Type_ = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js_type_.Type_);
var typeObject : Type_ = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js_type_.Type_);
var typeFunction : Type_ = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js_type_.Type_);
var jSGo(get, set) : Value;
private function get_jSGo():Value return stdgo._internal.syscall.js.Js_jsgo.jSGo;
private function set_jSGo(v:Value):stdgo._internal.syscall.js.Js_value.Value {
        stdgo._internal.syscall.js.Js_jsgo.jSGo = v;
        return v;
    }
typedef Func = stdgo._internal.syscall.js.Js_func.Func;
typedef Value = stdgo._internal.syscall.js.Js_value.Value;
typedef Error = stdgo._internal.syscall.js.Js_error.Error;
typedef ValueError = stdgo._internal.syscall.js.Js_valueerror.ValueError;
typedef Type_ = stdgo._internal.syscall.js.Js_type_.Type_;
typedef FuncPointer = stdgo._internal.syscall.js.Js_funcpointer.FuncPointer;
typedef ValuePointer = stdgo._internal.syscall.js.Js_valuepointer.ValuePointer;
typedef ErrorPointer = stdgo._internal.syscall.js.Js_errorpointer.ErrorPointer;
typedef ValueErrorPointer = stdgo._internal.syscall.js.Js_valueerrorpointer.ValueErrorPointer;
typedef Type_Pointer = stdgo._internal.syscall.js.Js_type_pointer.Type_Pointer;
/**
    * Package js gives access to the WebAssembly host environment when using the js/wasm architecture.
    * Its API is based on JavaScript semantics.
    * 
    * This package is EXPERIMENTAL. Its current scope is only to allow tests to run, but not yet to provide a
    * comprehensive API for users. It is exempt from the Go compatibility promise.
**/
class Js {
    /**
        * FuncOf returns a function to be used by JavaScript.
        * 
        * The Go function fn is called with the value of JavaScript's "this" keyword and the
        * arguments of the invocation. The return value of the invocation is
        * the result of the Go function mapped back to JavaScript according to ValueOf.
        * 
        * Invoking the wrapped Go function from JavaScript will
        * pause the event loop and spawn a new goroutine.
        * Other wrapped functions which are triggered during a call from Go to JavaScript
        * get executed on the same goroutine.
        * 
        * As a consequence, if one wrapped function blocks, JavaScript's event loop
        * is blocked until that function returns. Hence, calling any async JavaScript
        * API, which requires the event loop, like fetch (http.Client), will cause an
        * immediate deadlock. Therefore a blocking function should explicitly start a
        * new goroutine.
        * 
        * Func.Release must be called to free up resources when the function will not be invoked any more.
    **/
    static public inline function funcOf(_fn:(Value, stdgo.Slice<stdgo._internal.syscall.js.Js_value.Value>) -> stdgo.AnyInterface):stdgo._internal.syscall.js.Js_func.Func return stdgo._internal.syscall.js.Js_funcof.funcOf(_fn);
    /**
        * Undefined returns the JavaScript value "undefined".
    **/
    static public inline function undefined():stdgo._internal.syscall.js.Js_value.Value return stdgo._internal.syscall.js.Js_undefined.undefined();
    /**
        * Null returns the JavaScript value "null".
    **/
    static public inline function null_():stdgo._internal.syscall.js.Js_value.Value return stdgo._internal.syscall.js.Js_null_.null_();
    /**
        * Global returns the JavaScript global object, usually "window" or "global".
    **/
    static public inline function global():stdgo._internal.syscall.js.Js_value.Value return stdgo._internal.syscall.js.Js_global.global();
    /**
        * ValueOf returns x as a JavaScript value:
        * 
        * 	| Go                     | JavaScript             |
        * 	| ---------------------- | ---------------------- |
        * 	| js.Value               | [its value]            |
        * 	| js.Func                | function               |
        * 	| nil                    | null                   |
        * 	| bool                   | boolean                |
        * 	| integers and floats    | number                 |
        * 	| string                 | string                 |
        * 	| []interface{}          | new array              |
        * 	| map[string]interface{} | new object             |
        * 
        * Panics if x is not one of the expected types.
    **/
    static public inline function valueOf(_x:stdgo.AnyInterface):stdgo._internal.syscall.js.Js_value.Value return stdgo._internal.syscall.js.Js_valueof.valueOf(_x);
    /**
        * CopyBytesToGo copies bytes from src to dst.
        * It panics if src is not a Uint8Array or Uint8ClampedArray.
        * It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
    **/
    static public inline function copyBytesToGo(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:Value):stdgo.GoInt return stdgo._internal.syscall.js.Js_copybytestogo.copyBytesToGo(_dst, _src);
    /**
        * CopyBytesToJS copies bytes from src to dst.
        * It panics if dst is not a Uint8Array or Uint8ClampedArray.
        * It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
    **/
    static public inline function copyBytesToJS(_dst:Value, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return stdgo._internal.syscall.js.Js_copybytestojs.copyBytesToJS(_dst, _src);
}

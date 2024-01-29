package stdgo.syscall.js;
/**
    // Package js gives access to the WebAssembly host environment when using the js/wasm architecture.
    // Its API is based on JavaScript semantics.
    //
    // This package is EXPERIMENTAL. Its current scope is only to allow tests to run, but not yet to provide a
    // comprehensive API for users. It is exempt from the Go compatibility promise.
**/
private var __go2hxdoc__package : Bool;
final typeUndefined : stdgo._internal.syscall.js.Js.Type_ = stdgo._internal.syscall.js.Js.typeUndefined;
final typeNull = stdgo._internal.syscall.js.Js.typeNull;
final typeBoolean = stdgo._internal.syscall.js.Js.typeBoolean;
final typeNumber = stdgo._internal.syscall.js.Js.typeNumber;
final typeString = stdgo._internal.syscall.js.Js.typeString;
final typeSymbol = stdgo._internal.syscall.js.Js.typeSymbol;
final typeObject = stdgo._internal.syscall.js.Js.typeObject;
final typeFunction = stdgo._internal.syscall.js.Js.typeFunction;
@:invalid typedef Func = Dynamic;
@:invalid typedef Value = Dynamic;
@:invalid typedef Error = Dynamic;
@:invalid typedef ValueError = Dynamic;
typedef T_ref = stdgo._internal.syscall.js.Js.T_ref;
typedef Type_ = stdgo._internal.syscall.js.Js.Type_;
/**
    // FuncOf returns a function to be used by JavaScript.
    //
    // The Go function fn is called with the value of JavaScript's "this" keyword and the
    // arguments of the invocation. The return value of the invocation is
    // the result of the Go function mapped back to JavaScript according to ValueOf.
    //
    // Invoking the wrapped Go function from JavaScript will
    // pause the event loop and spawn a new goroutine.
    // Other wrapped functions which are triggered during a call from Go to JavaScript
    // get executed on the same goroutine.
    //
    // As a consequence, if one wrapped function blocks, JavaScript's event loop
    // is blocked until that function returns. Hence, calling any async JavaScript
    // API, which requires the event loop, like fetch (http.Client), will cause an
    // immediate deadlock. Therefore a blocking function should explicitly start a
    // new goroutine.
    //
    // Func.Release must be called to free up resources when the function will not be invoked any more.
**/
inline function funcOf(fn:(_this:Value, _args:stdgo.Slice<Value>) -> stdgo.AnyInterface):Func throw "not implemented";
/**
    // Undefined returns the JavaScript value "undefined".
**/
inline function undefined():Value throw "not implemented";
/**
    // Null returns the JavaScript value "null".
**/
inline function null_():Value throw "not implemented";
/**
    // Global returns the JavaScript global object, usually "window" or "global".
**/
inline function global():Value throw "not implemented";
/**
    // ValueOf returns x as a JavaScript value:
    //
    //	| Go                     | JavaScript             |
    //	| ---------------------- | ---------------------- |
    //	| js.Value               | [its value]            |
    //	| js.Func                | function               |
    //	| nil                    | null                   |
    //	| bool                   | boolean                |
    //	| integers and floats    | number                 |
    //	| string                 | string                 |
    //	| []interface{}          | new array              |
    //	| map[string]interface{} | new object             |
    //
    // Panics if x is not one of the expected types.
**/
inline function valueOf(x:stdgo.AnyInterface):Value throw "not implemented";
/**
    // CopyBytesToGo copies bytes from src to dst.
    // It panics if src is not a Uint8Array or Uint8ClampedArray.
    // It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
**/
inline function copyBytesToGo(dst:Array<Int>, src:Value):Int throw "not implemented";
/**
    // CopyBytesToJS copies bytes from src to dst.
    // It panics if dst is not a Uint8Array or Uint8ClampedArray.
    // It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
**/
inline function copyBytesToJS(dst:Value, src:Array<Int>):Int throw "not implemented";
@:invalid typedef Func_asInterface = Dynamic;
@:invalid typedef Func_static_extension = Dynamic;
@:invalid typedef Value_asInterface = Dynamic;
@:invalid typedef Value_static_extension = Dynamic;
@:invalid typedef Error_asInterface = Dynamic;
@:invalid typedef Error_static_extension = Dynamic;
@:invalid typedef ValueError_asInterface = Dynamic;
@:invalid typedef ValueError_static_extension = Dynamic;
@:invalid typedef Type__asInterface = Dynamic;
@:invalid typedef Type__static_extension = Dynamic;

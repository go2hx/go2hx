package stdgo.syscall.js;
/**
    Package js gives access to the WebAssembly host environment when using the js/wasm architecture.
    Its API is based on JavaScript semantics.
    
    This package is EXPERIMENTAL. Its current scope is only to allow tests to run, but not yet to provide a
    comprehensive API for users. It is exempt from the Go compatibility promise.
**/
class Js {
    /**
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
        API, which requires the event loop, like fetch (http.Client), will cause an
        immediate deadlock. Therefore a blocking function should explicitly start a
        new goroutine.
        
        Func.Release must be called to free up resources when the function will not be invoked any more.
    **/
    static public inline function funcOf(_fn:(stdgo._internal.syscall.js.Js_Value.Value, stdgo.Slice<stdgo._internal.syscall.js.Js_Value.Value>) -> stdgo.AnyInterface):Func {
        final _fn = _fn;
        return stdgo._internal.syscall.js.Js_funcOf.funcOf(_fn);
    }
    /**
        Undefined returns the JavaScript value "undefined".
    **/
    static public inline function undefined():Value {
        return stdgo._internal.syscall.js.Js_undefined.undefined();
    }
    /**
        Null returns the JavaScript value "null".
    **/
    static public inline function null_():Value {
        return stdgo._internal.syscall.js.Js_null_.null_();
    }
    /**
        Global returns the JavaScript global object, usually "window" or "global".
    **/
    static public inline function global():Value {
        return stdgo._internal.syscall.js.Js_global.global();
    }
    /**
        ValueOf returns x as a JavaScript value:
        
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
        
        Panics if x is not one of the expected types.
    **/
    static public inline function valueOf(_x:stdgo.AnyInterface):Value {
        final _x = (_x : stdgo.AnyInterface);
        return stdgo._internal.syscall.js.Js_valueOf.valueOf(_x);
    }
    /**
        CopyBytesToGo copies bytes from src to dst.
        It panics if src is not a Uint8Array or Uint8ClampedArray.
        It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
    **/
    static public inline function copyBytesToGo(_dst:Array<std.UInt>, _src:Value):StdTypes.Int {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.syscall.js.Js_copyBytesToGo.copyBytesToGo(_dst, _src);
    }
    /**
        CopyBytesToJS copies bytes from src to dst.
        It panics if dst is not a Uint8Array or Uint8ClampedArray.
        It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
    **/
    static public inline function copyBytesToJS(_dst:Value, _src:Array<std.UInt>):StdTypes.Int {
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.syscall.js.Js_copyBytesToJS.copyBytesToJS(_dst, _src);
    }
}

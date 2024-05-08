package stdgo.syscall;
/**
    Package js gives access to the WebAssembly host environment when using the js/wasm architecture.
    Its API is based on JavaScript semantics.
    
    This package is EXPERIMENTAL. Its current scope is only to allow tests to run, but not yet to provide a
    comprehensive API for users. It is exempt from the Go compatibility promise.
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
@:forward @:forward.new abstract Func(stdgo._internal.syscall.js.Js.Func) from stdgo._internal.syscall.js.Js.Func to stdgo._internal.syscall.js.Js.Func {

}
@:forward @:forward.new abstract Value(stdgo._internal.syscall.js.Js.Value) from stdgo._internal.syscall.js.Js.Value to stdgo._internal.syscall.js.Js.Value {

}
@:forward @:forward.new abstract Error(stdgo._internal.syscall.js.Js.Error) from stdgo._internal.syscall.js.Js.Error to stdgo._internal.syscall.js.Js.Error {

}
@:forward @:forward.new abstract ValueError(stdgo._internal.syscall.js.Js.ValueError) from stdgo._internal.syscall.js.Js.ValueError to stdgo._internal.syscall.js.Js.ValueError {

}
typedef T_ref = stdgo._internal.syscall.js.Js.T_ref;
typedef Type_ = stdgo._internal.syscall.js.Js.Type_;
@:forward @:forward.new abstract Func_asInterface(stdgo._internal.syscall.js.Js.Func_asInterface) from stdgo._internal.syscall.js.Js.Func_asInterface to stdgo._internal.syscall.js.Js.Func_asInterface {

}
@:forward @:forward.new abstract Func_static_extension(stdgo._internal.syscall.js.Js.Func_static_extension) from stdgo._internal.syscall.js.Js.Func_static_extension to stdgo._internal.syscall.js.Js.Func_static_extension {

}
@:forward @:forward.new abstract Value_asInterface(stdgo._internal.syscall.js.Js.Value_asInterface) from stdgo._internal.syscall.js.Js.Value_asInterface to stdgo._internal.syscall.js.Js.Value_asInterface {

}
@:forward @:forward.new abstract Value_static_extension(stdgo._internal.syscall.js.Js.Value_static_extension) from stdgo._internal.syscall.js.Js.Value_static_extension to stdgo._internal.syscall.js.Js.Value_static_extension {

}
@:forward @:forward.new abstract Error_asInterface(stdgo._internal.syscall.js.Js.Error_asInterface) from stdgo._internal.syscall.js.Js.Error_asInterface to stdgo._internal.syscall.js.Js.Error_asInterface {

}
@:forward @:forward.new abstract Error_static_extension(stdgo._internal.syscall.js.Js.Error_static_extension) from stdgo._internal.syscall.js.Js.Error_static_extension to stdgo._internal.syscall.js.Js.Error_static_extension {

}
@:forward @:forward.new abstract ValueError_asInterface(stdgo._internal.syscall.js.Js.ValueError_asInterface) from stdgo._internal.syscall.js.Js.ValueError_asInterface to stdgo._internal.syscall.js.Js.ValueError_asInterface {

}
@:forward @:forward.new abstract ValueError_static_extension(stdgo._internal.syscall.js.Js.ValueError_static_extension) from stdgo._internal.syscall.js.Js.ValueError_static_extension to stdgo._internal.syscall.js.Js.ValueError_static_extension {

}
@:forward @:forward.new abstract Type__asInterface(stdgo._internal.syscall.js.Js.Type__asInterface) from stdgo._internal.syscall.js.Js.Type__asInterface to stdgo._internal.syscall.js.Js.Type__asInterface {

}
@:forward @:forward.new abstract Type__static_extension(stdgo._internal.syscall.js.Js.Type__static_extension) from stdgo._internal.syscall.js.Js.Type__static_extension to stdgo._internal.syscall.js.Js.Type__static_extension {

}
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
    static public function funcOf(fn:(_this:Value, _args:stdgo.Slice<Value>) -> stdgo.AnyInterface):Func {
        final fn = fn;
        return stdgo._internal.syscall.js.Js.funcOf(fn);
    }
    /**
        Undefined returns the JavaScript value "undefined".
    **/
    static public function undefined():Value {
        return stdgo._internal.syscall.js.Js.undefined();
    }
    /**
        Null returns the JavaScript value "null".
    **/
    static public function null_():Value {
        return stdgo._internal.syscall.js.Js.null_();
    }
    /**
        Global returns the JavaScript global object, usually "window" or "global".
    **/
    static public function global():Value {
        return stdgo._internal.syscall.js.Js.global();
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
    static public function valueOf(x:stdgo.AnyInterface):Value {
        return stdgo._internal.syscall.js.Js.valueOf(x);
    }
    /**
        CopyBytesToGo copies bytes from src to dst.
        It panics if src is not a Uint8Array or Uint8ClampedArray.
        It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
    **/
    static public function copyBytesToGo(dst:Array<StdTypes.Int>, src:Value):StdTypes.Int {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.syscall.js.Js.copyBytesToGo(dst, src);
    }
    /**
        CopyBytesToJS copies bytes from src to dst.
        It panics if dst is not a Uint8Array or Uint8ClampedArray.
        It returns the number of bytes copied, which will be the minimum of the lengths of src and dst.
    **/
    static public function copyBytesToJS(dst:Value, src:Array<StdTypes.Int>):StdTypes.Int {
        final src = ([for (i in src) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.syscall.js.Js.copyBytesToJS(dst, src);
    }
}

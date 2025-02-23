package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_arrayReader_asInterface) class T_arrayReader_static_extension {
    @:keep
    @:tdfield
    static public function close( _r:stdgo.Ref<stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
            (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.net.http.Http__errclosed._errClosed;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader> = _r;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            if (!(@:checkr _r ?? throw "null pointer dereference")._read) {
                (@:checkr _r ?? throw "null pointer dereference")._read = true;
                var __0 = (new stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>), __1 = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
var _errCh = __1, _bCh = __0;
                var _success = (stdgo._internal.net.http.Http__js._js.funcOf(function(_this:stdgo._internal.syscall.js.Js_value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_value.Value>):stdgo.AnyInterface {
                    var _uint8arrayWrapper = (stdgo._internal.net.http.Http__uint8array._uint8Array.new_(stdgo.Go.toInterface(stdgo.Go.asInterface(_args[(0 : stdgo.GoInt)])))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
                    var _value = (new stdgo.Slice<stdgo.GoUInt8>((_uint8arrayWrapper.get(("byteLength" : stdgo.GoString)).int_() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    stdgo._internal.net.http.Http__js._js.copyBytesToGo(_value, _uint8arrayWrapper?.__copy__());
                    _bCh.__send__(_value);
                    return (null : stdgo.AnyInterface);
                })?.__copy__() : stdgo._internal.syscall.js.Js_func.Func);
                {
                    final __f__ = _success.release;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                var _failure = (stdgo._internal.net.http.Http__js._js.funcOf(function(_this:stdgo._internal.syscall.js.Js_value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_value.Value>):stdgo.AnyInterface {
                    _errCh.__send__(stdgo._internal.net.http.Http__errors._errors.new_((_args[(0 : stdgo.GoInt)].get(("message" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__()));
                    return (null : stdgo.AnyInterface);
                })?.__copy__() : stdgo._internal.syscall.js.Js_func.Func);
                {
                    final __f__ = _failure.release;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                (@:checkr _r ?? throw "null pointer dereference")._arrayPromise.call(("then" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_success)), stdgo.Go.toInterface(stdgo.Go.asInterface(_failure)));
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_bCh != null && _bCh.__isGet__()) {
                            __select__ = false;
                            {
                                var _b = _bCh.__get__();
                                {
                                    (@:checkr _r ?? throw "null pointer dereference")._pending = _b;
                                };
                            };
                        } else if (_errCh != null && _errCh.__isGet__()) {
                            __select__ = false;
                            {
                                var _err = _errCh.__get__();
                                {
                                    {
                                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                                            _n = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
            if (((@:checkr _r ?? throw "null pointer dereference")._pending.length) == ((0 : stdgo.GoInt))) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__io._io.eOF };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            _n = _p.__copyTo__((@:checkr _r ?? throw "null pointer dereference")._pending);
            (@:checkr _r ?? throw "null pointer dereference")._pending = ((@:checkr _r ?? throw "null pointer dereference")._pending.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _n, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : _n, _1 : _err };
            };
        };
    }
}

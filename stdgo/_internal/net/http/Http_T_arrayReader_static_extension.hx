package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_arrayReader_asInterface) class T_arrayReader_static_extension {
    @:keep
    static public function close( _r:stdgo.Ref<stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader> = _r;
        if (_r._err == null) {
            _r._err = stdgo._internal.net.http.Http__errClosed._errClosed;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader> = _r;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            if (_r._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _r._err };
            };
            if (!_r._read) {
                _r._read = true;
                var __0:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>> = (new stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>), __1:stdgo.Chan<stdgo.Error> = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
var _errCh = __1, _bCh = __0;
                var _success = (stdgo._internal.syscall.js.Js_funcOf.funcOf(function(_this:stdgo._internal.syscall.js.Js_Value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_Value.Value>):stdgo.AnyInterface {
                    var _uint8arrayWrapper = (stdgo._internal.net.http.Http__uint8Array._uint8Array.new_(stdgo.Go.toInterface(stdgo.Go.asInterface(_args[(0 : stdgo.GoInt)])))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
                    var _value = (new stdgo.Slice<stdgo.GoUInt8>((_uint8arrayWrapper.get(("byteLength" : stdgo.GoString)).int_() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    stdgo._internal.syscall.js.Js_copyBytesToGo.copyBytesToGo(_value, _uint8arrayWrapper?.__copy__());
                    _bCh.__send__(_value);
                    return (null : stdgo.AnyInterface);
                })?.__copy__() : stdgo._internal.syscall.js.Js_Func.Func);
                __deferstack__.unshift(() -> _success.release());
                var _failure = (stdgo._internal.syscall.js.Js_funcOf.funcOf(function(_this:stdgo._internal.syscall.js.Js_Value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_Value.Value>):stdgo.AnyInterface {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _errCh.__send__(stdgo._internal.errors.Errors_new_.new_((_args[(0 : stdgo.GoInt)].get(("message" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__()));
                        {
                            final __ret__:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        {
                            final __ret__:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return __ret__;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        final __ret__:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return __ret__;
                    };
                })?.__copy__() : stdgo._internal.syscall.js.Js_Func.Func);
                __deferstack__.unshift(() -> _failure.release());
                _r._arrayPromise.call(("then" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_success)), stdgo.Go.toInterface(stdgo.Go.asInterface(_failure)));
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_bCh != null && _bCh.__isGet__()) {
                            __select__ = false;
                            {
                                var _b = _bCh.__get__();
                                {
                                    _r._pending = _b;
                                };
                            };
                        } else if (_errCh != null && _errCh.__isGet__()) {
                            __select__ = false;
                            {
                                var _err = _errCh.__get__();
                                {
                                    {
                                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                                        for (defer in __deferstack__) {
                                            defer();
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
            if ((_r._pending.length) == ((0 : stdgo.GoInt))) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _n = stdgo.Go.copySlice(_p, _r._pending);
            _r._pending = (_r._pending.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
}
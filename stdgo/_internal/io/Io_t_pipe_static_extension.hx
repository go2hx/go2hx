package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.T_pipe_asInterface) class T_pipe_static_extension {
    @:keep
    @:tdfield
    static public function _writeCloseError( _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = _p;
        var _werr = (@:check2 (@:checkr _p ?? throw "null pointer dereference")._werr.load() : stdgo.Error);
        {
            var _rerr = (@:check2 (@:checkr _p ?? throw "null pointer dereference")._rerr.load() : stdgo.Error);
            if (((_werr == null) && (_rerr != null) : Bool)) {
                return _rerr;
            };
        };
        return stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
    }
    @:keep
    @:tdfield
    static public function _readCloseError( _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = _p;
        var _rerr = (@:check2 (@:checkr _p ?? throw "null pointer dereference")._rerr.load() : stdgo.Error);
        {
            var _werr = (@:check2 (@:checkr _p ?? throw "null pointer dereference")._werr.load() : stdgo.Error);
            if (((_rerr == null) && (_werr != null) : Bool)) {
                return _werr;
            };
        };
        return stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
    }
    @:keep
    @:tdfield
    static public function _closeWrite( _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>, _err:stdgo.Error):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = _p;
        if (_err == null) {
            _err = stdgo._internal.io.Io_eof.eOF;
        };
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._werr.store(_err);
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._once.do_(function():Void {
            if ((@:checkr _p ?? throw "null pointer dereference")._done != null) (@:checkr _p ?? throw "null pointer dereference")._done.__close__();
        });
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _write( _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            {
                var __select__ = true;
                while (__select__) {
                    if ((@:checkr _p ?? throw "null pointer dereference")._done != null && (@:checkr _p ?? throw "null pointer dereference")._done.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _p ?? throw "null pointer dereference")._done.__get__();
                            {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : @:check2r _p._writeCloseError() };
                                    _n = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    } else {
                        __select__ = false;
                        {
                            @:check2 (@:checkr _p ?? throw "null pointer dereference")._wrMu.lock();
                            {
                                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._wrMu.unlock;
                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            {
                var _once = (true : Bool);
                while ((_once || ((_b.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if ((@:checkr _p ?? throw "null pointer dereference")._wrCh != null && (@:checkr _p ?? throw "null pointer dereference")._wrCh.__isSend__()) {
                                __select__ = false;
                                {
                                    (@:checkr _p ?? throw "null pointer dereference")._wrCh.__send__(_b);
                                    {
                                        var _nw = ((@:checkr _p ?? throw "null pointer dereference")._rdCh.__get__() : stdgo.GoInt);
                                        _b = (_b.__slice__(_nw) : stdgo.Slice<stdgo.GoUInt8>);
                                        _n = (_n + (_nw) : stdgo.GoInt);
                                    };
                                };
                            } else if ((@:checkr _p ?? throw "null pointer dereference")._done != null && (@:checkr _p ?? throw "null pointer dereference")._done.__isGet__()) {
                                __select__ = false;
                                {
                                    (@:checkr _p ?? throw "null pointer dereference")._done.__get__();
                                    {
                                        {
                                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                                                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : @:check2r _p._writeCloseError() };
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
                    _once = false;
                };
            };
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
    @:keep
    @:tdfield
    static public function _closeRead( _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>, _err:stdgo.Error):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = _p;
        if (_err == null) {
            _err = stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
        };
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._rerr.store(_err);
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._once.do_(function():Void {
            if ((@:checkr _p ?? throw "null pointer dereference")._done != null) (@:checkr _p ?? throw "null pointer dereference")._done.__close__();
        });
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _read( _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __select__ = true;
            while (__select__) {
                if ((@:checkr _p ?? throw "null pointer dereference")._done != null && (@:checkr _p ?? throw "null pointer dereference")._done.__isGet__()) {
                    __select__ = false;
                    {
                        (@:checkr _p ?? throw "null pointer dereference")._done.__get__();
                        {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : @:check2r _p._readCloseError() };
                                _n = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        {
            {
                var __select__ = true;
                while (__select__) {
                    if ((@:checkr _p ?? throw "null pointer dereference")._wrCh != null && (@:checkr _p ?? throw "null pointer dereference")._wrCh.__isGet__()) {
                        __select__ = false;
                        {
                            var _bw = (@:checkr _p ?? throw "null pointer dereference")._wrCh.__get__();
                            {
                                var _nr = (_b.__copyTo__(_bw) : stdgo.GoInt);
                                (@:checkr _p ?? throw "null pointer dereference")._rdCh.__send__(_nr);
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _nr, _1 : (null : stdgo.Error) };
                                    _n = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    } else if ((@:checkr _p ?? throw "null pointer dereference")._done != null && (@:checkr _p ?? throw "null pointer dereference")._done.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _p ?? throw "null pointer dereference")._done.__get__();
                            {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : @:check2r _p._readCloseError() };
                                    _n = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            return { _0 : _n, _1 : _err };
        };
    }
}

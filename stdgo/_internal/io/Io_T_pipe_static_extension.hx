package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.T_pipe_asInterface) class T_pipe_static_extension {
    @:keep
    static public function _writeCloseError( _p:stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe> = _p;
        var _werr = (_p._werr.load() : stdgo.Error);
        {
            var _rerr = (_p._rerr.load() : stdgo.Error);
            if (((_werr == null) && (_rerr != null) : Bool)) {
                return _rerr;
            };
        };
        return stdgo._internal.io.Io_errClosedPipe.errClosedPipe;
    }
    @:keep
    static public function _readCloseError( _p:stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe> = _p;
        var _rerr = (_p._rerr.load() : stdgo.Error);
        {
            var _werr = (_p._werr.load() : stdgo.Error);
            if (((_rerr == null) && (_werr != null) : Bool)) {
                return _werr;
            };
        };
        return stdgo._internal.io.Io_errClosedPipe.errClosedPipe;
    }
    @:keep
    static public function _closeWrite( _p:stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>, _err:stdgo.Error):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe> = _p;
        if (_err == null) {
            _err = stdgo._internal.io.Io_eof.eof;
        };
        _p._werr.store(_err);
        _p._once.do_(function():Void {
            if (_p._done != null) _p._done.__close__();
        });
        return (null : stdgo.Error);
    }
    @:keep
    static public function _write( _p:stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            {
                var __select__ = true;
                while (__select__) {
                    if (_p._done != null && _p._done.__isGet__()) {
                        __select__ = false;
                        {
                            _p._done.__get__();
                            {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _p._writeCloseError() };
                                    _n = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    } else {
                        __select__ = false;
                        {
                            _p._wrMu.lock();
                            __deferstack__.unshift(() -> _p._wrMu.unlock());
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
                            if (_p._wrCh != null && _p._wrCh.__isSend__()) {
                                __select__ = false;
                                {
                                    _p._wrCh.__send__(_b);
                                    {
                                        var _nw = (_p._rdCh.__get__() : stdgo.GoInt);
                                        _b = (_b.__slice__(_nw) : stdgo.Slice<stdgo.GoUInt8>);
                                        _n = (_n + (_nw) : stdgo.GoInt);
                                    };
                                };
                            } else if (_p._done != null && _p._done.__isGet__()) {
                                __select__ = false;
                                {
                                    _p._done.__get__();
                                    {
                                        {
                                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                                                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _p._writeCloseError() };
                                                _n = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
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
    @:keep
    static public function _closeRead( _p:stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>, _err:stdgo.Error):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe> = _p;
        if (_err == null) {
            _err = stdgo._internal.io.Io_errClosedPipe.errClosedPipe;
        };
        _p._rerr.store(_err);
        _p._once.do_(function():Void {
            if (_p._done != null) _p._done.__close__();
        });
        return (null : stdgo.Error);
    }
    @:keep
    static public function _read( _p:stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_T_pipe.T_pipe> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __select__ = true;
            while (__select__) {
                if (_p._done != null && _p._done.__isGet__()) {
                    __select__ = false;
                    {
                        _p._done.__get__();
                        {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _p._readCloseError() };
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
                    if (_p._wrCh != null && _p._wrCh.__isGet__()) {
                        __select__ = false;
                        {
                            var _bw = _p._wrCh.__get__();
                            {
                                var _nr = (stdgo.Go.copySlice(_b, _bw) : stdgo.GoInt);
                                _p._rdCh.__send__(_nr);
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _nr, _1 : (null : stdgo.Error) };
                                    _n = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    } else if (_p._done != null && _p._done.__isGet__()) {
                        __select__ = false;
                        {
                            _p._done.__get__();
                            {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _p._readCloseError() };
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

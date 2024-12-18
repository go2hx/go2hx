package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2pipe_asInterface) class T_http2pipe_static_extension {
    @:keep
    static public function done( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _p._mu.lock();
            {
                final __f__ = _p._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_p._donec == null) {
                _p._donec = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
                if (((_p._err != null) || (_p._breakErr != null) : Bool)) {
                    _p._closeDoneLocked();
                };
            };
            {
                final __ret__:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = _p._donec;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
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
            final __ret__:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function err( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _p._mu.lock();
            {
                final __f__ = _p._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_p._breakErr != null) {
                {
                    final __ret__:stdgo.Error = _p._breakErr;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = _p._err;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _closeDoneLocked( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = _p;
        if (_p._donec == null) {
            return;
        };
        {
            var __select__ = true;
            while (__select__) {
                if (_p._donec != null && _p._donec.__isGet__()) {
                    __select__ = false;
                    {
                        _p._donec.__get__();
                        {};
                    };
                } else {
                    __select__ = false;
                    {
                        if (_p._donec != null) _p._donec.__close__();
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
    @:keep
    static public function _closeWithError( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>, _dst:stdgo.Ref<stdgo.Error>, _err:stdgo.Error, _fn:() -> Void):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_err == null) {
                throw stdgo.Go.toInterface(("err must be non-nil" : stdgo.GoString));
            };
            _p._mu.lock();
            {
                final __f__ = _p._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_p._c.l == null) {
                _p._c.l = stdgo.Go.asInterface((stdgo.Go.setRef(_p._mu) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>));
            };
            {
                final __f__ = _p._c.signal;
                __deferstack__.unshift(() -> __f__());
            };
            if ((_dst : stdgo.Error) != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _p._readFn = _fn;
            if (stdgo.Go.toInterface(_dst) == (stdgo.Go.toInterface((stdgo.Go.setRef(_p._breakErr) : stdgo.Ref<stdgo.Error>)))) {
                if (_p._b != null) {
                    _p._unread = (_p._unread + (_p._b.len()) : stdgo.GoInt);
                };
                _p._b = (null : stdgo._internal.net.http.Http_T_http2pipeBuffer.T_http2pipeBuffer);
            };
            {
                var __tmp__ = _err;
                var x = (_dst : stdgo.Error);
                x.error = __tmp__.error;
            };
            _p._closeDoneLocked();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _closeWithErrorAndCode( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>, _err:stdgo.Error, _fn:() -> Void):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = _p;
        _p._closeWithError((stdgo.Go.setRef(_p._err) : stdgo.Ref<stdgo.Error>), _err, _fn);
    }
    @:keep
    static public function breakWithError( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>, _err:stdgo.Error):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = _p;
        _p._closeWithError((stdgo.Go.setRef(_p._breakErr) : stdgo.Ref<stdgo.Error>), _err, null);
    }
    @:keep
    static public function closeWithError( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>, _err:stdgo.Error):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = _p;
        _p._closeWithError((stdgo.Go.setRef(_p._err) : stdgo.Ref<stdgo.Error>), _err, null);
    }
    @:keep
    static public function write( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            _p._mu.lock();
            {
                final __f__ = _p._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_p._c.l == null) {
                _p._c.l = stdgo.Go.asInterface((stdgo.Go.setRef(_p._mu) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>));
            };
            {
                final __f__ = _p._c.signal;
                __deferstack__.unshift(() -> __f__());
            };
            if (((_p._err != null) || (_p._breakErr != null) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__http2errClosedPipeWrite._http2errClosedPipeWrite };
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
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _p._b.write(_d);
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
    static public function read( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            _p._mu.lock();
            {
                final __f__ = _p._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_p._c.l == null) {
                _p._c.l = stdgo.Go.asInterface((stdgo.Go.setRef(_p._mu) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>));
            };
            while (true) {
                if (_p._breakErr != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _p._breakErr };
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
                if (((_p._b != null) && (_p._b.len() > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _p._b.read(_d);
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
                if (_p._err != null) {
                    if (_p._readFn != null) {
                        _p._readFn();
                        _p._readFn = null;
                    };
                    _p._b = (null : stdgo._internal.net.http.Http_T_http2pipeBuffer.T_http2pipeBuffer);
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _p._err };
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
                _p._c.wait_();
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
    static public function len( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _p._mu.lock();
            {
                final __f__ = _p._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_p._b == null) {
                {
                    final __ret__:stdgo.GoInt = _p._unread;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.GoInt = _p._b.len();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.GoInt = (0 : stdgo.GoInt);
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
            final __ret__:stdgo.GoInt = (0 : stdgo.GoInt);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _setBuffer( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe>, _b:stdgo._internal.net.http.Http_T_http2pipeBuffer.T_http2pipeBuffer):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _p._mu.lock();
            {
                final __f__ = _p._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (((_p._err != null) || (_p._breakErr != null) : Bool)) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _p._b = _b;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
}

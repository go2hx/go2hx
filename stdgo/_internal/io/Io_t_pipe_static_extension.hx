package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.T_pipe_asInterface) class T_pipe_static_extension {
    @:keep
    @:tdfield
    static public function _writeCloseError( _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = _p;
        var _werr = ((@:checkr _p ?? throw "null pointer dereference")._werr.load() : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L119"
        {
            var _rerr = ((@:checkr _p ?? throw "null pointer dereference")._rerr.load() : stdgo.Error);
            if (((_werr == null) && (_rerr != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L120"
                return _rerr;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L122"
        return stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
    }
    @:keep
    @:tdfield
    static public function _readCloseError( _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = _p;
        var _rerr = ((@:checkr _p ?? throw "null pointer dereference")._rerr.load() : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L110"
        {
            var _werr = ((@:checkr _p ?? throw "null pointer dereference")._werr.load() : stdgo.Error);
            if (((_rerr == null) && (_werr != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L111"
                return _werr;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L113"
        return stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
    }
    @:keep
    @:tdfield
    static public function _closeWrite( _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>, _err:stdgo.Error):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = _p;
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L99"
        if (_err == null) {
            _err = stdgo._internal.io.Io_eof.eOF;
        };
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L102"
        (@:checkr _p ?? throw "null pointer dereference")._werr.store(_err);
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L103"
        (@:checkr _p ?? throw "null pointer dereference")._once.do_(function():Void {
            //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L103"
            if ((@:checkr _p ?? throw "null pointer dereference")._done != null) (@:checkr _p ?? throw "null pointer dereference")._done.__close__();
        });
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L104"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _write( _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L77"
            {
                var __select__ = true;
                var __c__0 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = (@:checkr _p ?? throw "null pointer dereference")._done;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L79"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _p._writeCloseError() };
                                    _n = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    } else {
                        __select__ = false;
                        {
                            //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L81"
                            (@:checkr _p ?? throw "null pointer dereference")._wrMu.lock();
                            {
                                final __f__ = (@:checkr _p ?? throw "null pointer dereference")._wrMu.unlock;
                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
            };
            //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L85"
            {
                var _once = (true : Bool);
                while ((_once || ((_b.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L86"
                    {
                        var __select__ = true;
                        var __c__0 = (@:checkr _p ?? throw "null pointer dereference")._wrCh;
var __c__1 = null;
                        while (__select__) {
                            if ((@:checkr _p ?? throw "null pointer dereference")._wrCh != null && __c__0.__isSend__(true)) {
                                __select__ = false;
                                {
                                    __c__0.__send__(_b);
                                    {
                                        var _nw = ((@:checkr _p ?? throw "null pointer dereference")._rdCh.__get__() : stdgo.GoInt);
                                        _b = (_b.__slice__(_nw) : stdgo.Slice<stdgo.GoUInt8>);
                                        _n = (_n + (_nw) : stdgo.GoInt);
                                    };
                                };
                            } else if ({
                                if (__c__1 == null) {
                                    __c__1 = (@:checkr _p ?? throw "null pointer dereference")._done;
                                };
                                __c__1 != null && __c__1.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__1.__get__();
                                    {
                                        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L92"
                                        {
                                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _p._writeCloseError() };
                                                _n = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                            _n = __ret__._0;
                                            _err = __ret__._1;
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
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
__c__1.__reset__();
                    };
                    _once = false;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L95"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _n = __ret__._0;
                _err = __ret__._1;
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L68"
        if (_err == null) {
            _err = stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
        };
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L71"
        (@:checkr _p ?? throw "null pointer dereference")._rerr.store(_err);
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L72"
        (@:checkr _p ?? throw "null pointer dereference")._once.do_(function():Void {
            //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L72"
            if ((@:checkr _p ?? throw "null pointer dereference")._done != null) (@:checkr _p ?? throw "null pointer dereference")._done.__close__();
        });
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L73"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _read( _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L51"
        {
            var __select__ = true;
            var __c__0 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = (@:checkr _p ?? throw "null pointer dereference")._done;
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {
                            //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L53"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _p._readCloseError() };
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
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
        };
        //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L57"
        {
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = (@:checkr _p ?? throw "null pointer dereference")._wrCh;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _bw = __c__0.__get__();
                            {
                                var _nr = (_b.__copyTo__(_bw) : stdgo.GoInt);
                                //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L60"
                                (@:checkr _p ?? throw "null pointer dereference")._rdCh.__send__(_nr);
                                //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L61"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _nr, _1 : (null : stdgo.Error) };
                                    _n = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr _p ?? throw "null pointer dereference")._done;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///home/runner/.go/go1.21.3/src/io/pipe.go#L63"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _p._readCloseError() };
                                    _n = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
            };
            return { _0 : _n, _1 : _err };
        };
    }
}

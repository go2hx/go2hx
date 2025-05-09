package stdgo._internal.log.syslog;
@:keep @:allow(stdgo._internal.log.syslog.Syslog.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function _write( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>, _p:stdgo._internal.log.syslog.Syslog_priority.Priority, _msg:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        var _nl = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L272"
        if (!stdgo._internal.strings.Strings_hassuffix.hasSuffix(_msg?.__copy__(), ("\n" : stdgo.GoString))) {
            _nl = ("\n" : stdgo.GoString);
        };
        var _err = ((@:checkr _w ?? throw "null pointer dereference")._conn._writeString(_p, (@:checkr _w ?? throw "null pointer dereference")._hostname?.__copy__(), (@:checkr _w ?? throw "null pointer dereference")._tag?.__copy__(), _msg?.__copy__(), _nl?.__copy__()) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L277"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L278"
            return { _0 : (0 : stdgo.GoInt), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L283"
        return { _0 : (_msg.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _writeAndRetry( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>, _p:stdgo._internal.log.syslog.Syslog_priority.Priority, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _pr = ((((@:checkr _w ?? throw "null pointer dereference")._priority & (248 : stdgo._internal.log.syslog.Syslog_priority.Priority) : stdgo._internal.log.syslog.Syslog_priority.Priority)) | ((_p & (7 : stdgo._internal.log.syslog.Syslog_priority.Priority) : stdgo._internal.log.syslog.Syslog_priority.Priority)) : stdgo._internal.log.syslog.Syslog_priority.Priority);
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L253"
            (@:checkr _w ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _w ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L256"
            if ((@:checkr _w ?? throw "null pointer dereference")._conn != null) {
                //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L257"
                {
                    var __tmp__ = _w._write(_pr, _s?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L258"
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
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
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L261"
            {
                var _err = (_w._connect() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L262"
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L264"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _w._write(_pr, _s?.__copy__());
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function debug( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((7 : stdgo._internal.log.syslog.Syslog_priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L247"
        return _err;
    }
    @:keep
    @:tdfield
    static public function info( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((6 : stdgo._internal.log.syslog.Syslog_priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L240"
        return _err;
    }
    @:keep
    @:tdfield
    static public function notice( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((5 : stdgo._internal.log.syslog.Syslog_priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L233"
        return _err;
    }
    @:keep
    @:tdfield
    static public function warning( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((4 : stdgo._internal.log.syslog.Syslog_priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L226"
        return _err;
    }
    @:keep
    @:tdfield
    static public function err( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((3 : stdgo._internal.log.syslog.Syslog_priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L219"
        return _err;
    }
    @:keep
    @:tdfield
    static public function crit( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((2 : stdgo._internal.log.syslog.Syslog_priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L212"
        return _err;
    }
    @:keep
    @:tdfield
    static public function alert( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((1 : stdgo._internal.log.syslog.Syslog_priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L205"
        return _err;
    }
    @:keep
    @:tdfield
    static public function emerg( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((0 : stdgo._internal.log.syslog.Syslog_priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L198"
        return _err;
    }
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L183"
            (@:checkr _w ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _w ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L186"
            if ((@:checkr _w ?? throw "null pointer dereference")._conn != null) {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._conn._close() : stdgo.Error);
                (@:checkr _w ?? throw "null pointer dereference")._conn = (null : stdgo._internal.log.syslog.Syslog_t_serverconn.T_serverConn);
                //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L189"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L191"
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L178"
        return _w._writeAndRetry((@:checkr _w ?? throw "null pointer dereference")._priority, (_b : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _connect( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer> = _w;
        var _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L149"
        if ((@:checkr _w ?? throw "null pointer dereference")._conn != null) {
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L151"
            (@:checkr _w ?? throw "null pointer dereference")._conn._close();
            (@:checkr _w ?? throw "null pointer dereference")._conn = (null : stdgo._internal.log.syslog.Syslog_t_serverconn.T_serverConn);
        };
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L155"
        if ((@:checkr _w ?? throw "null pointer dereference")._network == ((stdgo.Go.str() : stdgo.GoString))) {
            {
                var __tmp__ = stdgo._internal.log.syslog.Syslog__unixsyslog._unixSyslog();
                (@:checkr _w ?? throw "null pointer dereference")._conn = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L157"
            if ((@:checkr _w ?? throw "null pointer dereference")._hostname == ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _w ?? throw "null pointer dereference")._hostname = ("localhost" : stdgo.GoString);
            };
        } else {
            var _c:stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
            {
                var __tmp__ = stdgo._internal.net.Net_dial.dial((@:checkr _w ?? throw "null pointer dereference")._network?.__copy__(), (@:checkr _w ?? throw "null pointer dereference")._raddr?.__copy__());
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L163"
            if (_err == null) {
                (@:checkr _w ?? throw "null pointer dereference")._conn = stdgo.Go.asInterface((stdgo.Go.setRef(({ _conn : _c, _local : (((@:checkr _w ?? throw "null pointer dereference")._network == ("unixgram" : stdgo.GoString)) || ((@:checkr _w ?? throw "null pointer dereference")._network == ("unix" : stdgo.GoString)) : Bool) } : stdgo._internal.log.syslog.Syslog_t_netconn.T_netConn)) : stdgo.Ref<stdgo._internal.log.syslog.Syslog_t_netconn.T_netConn>));
                //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L168"
                if ((@:checkr _w ?? throw "null pointer dereference")._hostname == ((stdgo.Go.str() : stdgo.GoString))) {
                    (@:checkr _w ?? throw "null pointer dereference")._hostname = (_c.localAddr().string() : stdgo.GoString)?.__copy__();
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/log/syslog/syslog.go#L173"
        return _err;
    }
}

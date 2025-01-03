package stdgo._internal.log.syslog;
@:keep @:allow(stdgo._internal.log.syslog.Syslog.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function _write( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _p:stdgo._internal.log.syslog.Syslog_Priority.Priority, _msg:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var _nl = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_msg?.__copy__(), ("\n" : stdgo.GoString))) {
            _nl = ("\n" : stdgo.GoString);
        };
        var _err = ((@:checkr _w ?? throw "null pointer dereference")._conn._writeString(_p, (@:checkr _w ?? throw "null pointer dereference")._hostname?.__copy__(), (@:checkr _w ?? throw "null pointer dereference")._tag?.__copy__(), _msg?.__copy__(), _nl?.__copy__()) : stdgo.Error);
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _err };
        };
        return { _0 : (_msg.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _writeAndRetry( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _p:stdgo._internal.log.syslog.Syslog_Priority.Priority, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _pr = ((((@:checkr _w ?? throw "null pointer dereference")._priority & (248 : stdgo._internal.log.syslog.Syslog_Priority.Priority) : stdgo._internal.log.syslog.Syslog_Priority.Priority)) | ((_p & (7 : stdgo._internal.log.syslog.Syslog_Priority.Priority) : stdgo._internal.log.syslog.Syslog_Priority.Priority)) : stdgo._internal.log.syslog.Syslog_Priority.Priority);
            @:check2 (@:checkr _w ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _w ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if ((@:checkr _w ?? throw "null pointer dereference")._conn != null) {
                {
                    var __tmp__ = @:check2r _w._write(_pr, _s?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            {
                var _err = (@:check2r _w._connect() : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = @:check2r _w._write(_pr, _s?.__copy__());
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
    }
    @:keep
    @:tdfield
    static public function debug( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = @:check2r _w._writeAndRetry((7 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function info( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = @:check2r _w._writeAndRetry((6 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function notice( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = @:check2r _w._writeAndRetry((5 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function warning( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = @:check2r _w._writeAndRetry((4 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function err( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = @:check2r _w._writeAndRetry((3 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function crit( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = @:check2r _w._writeAndRetry((2 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function alert( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = @:check2r _w._writeAndRetry((1 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function emerg( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = @:check2r _w._writeAndRetry((0 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 (@:checkr _w ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _w ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if ((@:checkr _w ?? throw "null pointer dereference")._conn != null) {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._conn._close() : stdgo.Error);
                (@:checkr _w ?? throw "null pointer dereference")._conn = (null : stdgo._internal.log.syslog.Syslog_T_serverConn.T_serverConn);
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return _err;
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        return @:check2r _w._writeAndRetry((@:checkr _w ?? throw "null pointer dereference")._priority, (_b : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _connect( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var _err = (null : stdgo.Error);
        if ((@:checkr _w ?? throw "null pointer dereference")._conn != null) {
            (@:checkr _w ?? throw "null pointer dereference")._conn._close();
            (@:checkr _w ?? throw "null pointer dereference")._conn = (null : stdgo._internal.log.syslog.Syslog_T_serverConn.T_serverConn);
        };
        if ((@:checkr _w ?? throw "null pointer dereference")._network == (stdgo.Go.str())) {
            {
                var __tmp__ = stdgo._internal.log.syslog.Syslog__unixSyslog._unixSyslog();
                (@:checkr _w ?? throw "null pointer dereference")._conn = __tmp__._0;
                _err = __tmp__._1;
            };
            if ((@:checkr _w ?? throw "null pointer dereference")._hostname == (stdgo.Go.str())) {
                (@:checkr _w ?? throw "null pointer dereference")._hostname = ("localhost" : stdgo.GoString);
            };
        } else {
            var _c:stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
            {
                var __tmp__ = stdgo._internal.net.Net_dial.dial((@:checkr _w ?? throw "null pointer dereference")._network?.__copy__(), (@:checkr _w ?? throw "null pointer dereference")._raddr?.__copy__());
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err == null) {
                (@:checkr _w ?? throw "null pointer dereference")._conn = stdgo.Go.asInterface((stdgo.Go.setRef(({ _conn : _c, _local : (((@:checkr _w ?? throw "null pointer dereference")._network == ("unixgram" : stdgo.GoString)) || ((@:checkr _w ?? throw "null pointer dereference")._network == ("unix" : stdgo.GoString)) : Bool) } : stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn)) : stdgo.Ref<stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn>));
                if ((@:checkr _w ?? throw "null pointer dereference")._hostname == (stdgo.Go.str())) {
                    (@:checkr _w ?? throw "null pointer dereference")._hostname = (_c.localAddr().string() : stdgo.GoString)?.__copy__();
                };
            };
        };
        return _err;
    }
}

package stdgo._internal.log.syslog;
@:keep @:allow(stdgo._internal.log.syslog.Syslog.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function _write( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _p:stdgo._internal.log.syslog.Syslog_Priority.Priority, _msg:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var _nl = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_msg?.__copy__(), ("\n" : stdgo.GoString))) {
            _nl = ("\n" : stdgo.GoString);
        };
        var _err = (_w._conn._writeString(_p, _w._hostname?.__copy__(), _w._tag?.__copy__(), _msg?.__copy__(), _nl?.__copy__()) : stdgo.Error);
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _err };
        };
        return { _0 : (_msg.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _writeAndRetry( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _p:stdgo._internal.log.syslog.Syslog_Priority.Priority, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _pr = (((_w._priority & (248 : stdgo._internal.log.syslog.Syslog_Priority.Priority) : stdgo._internal.log.syslog.Syslog_Priority.Priority)) | ((_p & (7 : stdgo._internal.log.syslog.Syslog_Priority.Priority) : stdgo._internal.log.syslog.Syslog_Priority.Priority)) : stdgo._internal.log.syslog.Syslog_Priority.Priority);
            _w._mu.lock();
            __deferstack__.unshift(() -> _w._mu.unlock());
            if (_w._conn != null) {
                {
                    var __tmp__ = _w._write(_pr, _s?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            {
                var _err = (_w._connect() : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _w._write(_pr, _s?.__copy__());
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function debug( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((7 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function info( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((6 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function notice( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((5 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function warning( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((4 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function err( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((3 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function crit( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((2 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function alert( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((1 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function emerg( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _m:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __tmp__ = _w._writeAndRetry((0 : stdgo._internal.log.syslog.Syslog_Priority.Priority), _m?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function close( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _w._mu.lock();
            __deferstack__.unshift(() -> _w._mu.unlock());
            if (_w._conn != null) {
                var _err = (_w._conn._close() : stdgo.Error);
                _w._conn = (null : stdgo._internal.log.syslog.Syslog_T_serverConn.T_serverConn);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
    static public function write( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        return _w._writeAndRetry(_w._priority, (_b : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function _connect( _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer> = _w;
        var _err = (null : stdgo.Error);
        if (_w._conn != null) {
            _w._conn._close();
            _w._conn = (null : stdgo._internal.log.syslog.Syslog_T_serverConn.T_serverConn);
        };
        if (_w._network == (stdgo.Go.str())) {
            {
                var __tmp__ = stdgo._internal.log.syslog.Syslog__unixSyslog._unixSyslog();
                _w._conn = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_w._hostname == (stdgo.Go.str())) {
                _w._hostname = ("localhost" : stdgo.GoString);
            };
        } else {
            var _c:stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
            {
                var __tmp__ = stdgo._internal.net.Net_dial.dial(_w._network?.__copy__(), _w._raddr?.__copy__());
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err == null) {
                _w._conn = stdgo.Go.asInterface((stdgo.Go.setRef(({ _conn : _c, _local : ((_w._network == ("unixgram" : stdgo.GoString)) || (_w._network == ("unix" : stdgo.GoString)) : Bool) } : stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn)) : stdgo.Ref<stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn>));
                if (_w._hostname == (stdgo.Go.str())) {
                    _w._hostname = (_c.localAddr().string() : stdgo.GoString)?.__copy__();
                };
            };
        };
        return _err;
    }
}

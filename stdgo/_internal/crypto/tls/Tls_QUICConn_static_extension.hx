package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.QUICConn_asInterface) class QUICConn_static_extension {
    @:keep
    static public function setTransportParameters( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>, _params:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        if (_params == null) {
            _params = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _q._conn._quic._transportParams = _params;
        if (_q._conn._quic._started) {
            _q._conn._quic._signalc.__get__();
            _q._conn._quic._blockedc.__get__();
        };
    }
    @:keep
    static public function connectionState( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        return _q._conn.connectionState()?.__copy__();
    }
    @:keep
    static public function sendSessionTicket( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>, _opts:stdgo._internal.crypto.tls.Tls_QUICSessionTicketOptions.QUICSessionTicketOptions):stdgo.Error {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        var _c = _q._conn;
        if (!_c._isHandshakeComplete.load()) {
            return stdgo._internal.crypto.tls.Tls__quicError._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: SendSessionTicket called before handshake completed" : stdgo.GoString)));
        };
        if (_c._isClient) {
            return stdgo._internal.crypto.tls.Tls__quicError._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: SendSessionTicket called on the client" : stdgo.GoString)));
        };
        if (_q._sessionTicketSent) {
            return stdgo._internal.crypto.tls.Tls__quicError._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: SendSessionTicket called multiple times" : stdgo.GoString)));
        };
        _q._sessionTicketSent = true;
        return stdgo._internal.crypto.tls.Tls__quicError._quicError(_c._sendSessionTicket(_opts.earlyData));
    }
    @:keep
    static public function handleData( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>, _level:stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _c = _q._conn;
            if (_c._in._level != (_level)) {
                return stdgo._internal.crypto.tls.Tls__quicError._quicError(_c._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: handshake data received at wrong level" : stdgo.GoString))));
            };
            _c._quic._readbuf = _data;
            _c._quic._signalc.__get__();
            var __tmp__ = _c._quic._blockedc.__smartGet__(), __113 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return (null : stdgo.Error);
            };
            _c._handshakeMutex.lock();
            {
                final __f__ = _c._handshakeMutex.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _c._hand.write(_c._quic._readbuf);
            _c._quic._readbuf = (null : stdgo.Slice<stdgo.GoUInt8>);
            while (((_q._conn._hand.len() >= (4 : stdgo.GoInt) : Bool) && (_q._conn._handshakeErr == null) : Bool)) {
                var _b = _q._conn._hand.bytes();
                var _n = ((((_b[(1 : stdgo.GoInt)] : stdgo.GoInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | (_b[(3 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
                if ((_n > (65536 : stdgo.GoInt) : Bool)) {
                    _q._conn._handshakeErr = stdgo._internal.fmt.Fmt_errorf.errorf(("tls: handshake message of length %d bytes exceeds maximum of %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((65536 : stdgo.GoInt)));
                    break;
                };
                if (((_b.length) < ((4 : stdgo.GoInt) + _n : stdgo.GoInt) : Bool)) {
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                {
                    var _err = (_q._conn._handlePostHandshakeMessage() : stdgo.Error);
                    if (_err != null) {
                        _q._conn._handshakeErr = _err;
                    };
                };
            };
            if (_q._conn._handshakeErr != null) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.crypto.tls.Tls__quicError._quicError(_q._conn._handshakeErr);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
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
                for (defer in __deferstack__) {
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
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    static public function close( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>):stdgo.Error {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        if (_q._conn._quic._cancel == null) {
            return (null : stdgo.Error);
        };
        _q._conn._quic._cancel();
        for (_ => _ in _q._conn._quic._blockedc) {};
        return _q._conn._handshakeErr;
    }
    @:keep
    static public function nextEvent( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>):stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        var _qs = _q._conn._quic;
        {
            var _last = (_qs._nextEvent - (1 : stdgo.GoInt) : stdgo.GoInt);
            if (((_last >= (0 : stdgo.GoInt) : Bool) && ((_qs._events[(_last : stdgo.GoInt)].data.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                _qs._events[(_last : stdgo.GoInt)].data[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
        };
        if ((_qs._nextEvent >= (_qs._events.length) : Bool)) {
            _qs._events = (_qs._events.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>);
            _qs._nextEvent = (0 : stdgo.GoInt);
            return ({ kind : (0 : stdgo._internal.crypto.tls.Tls_QUICEventKind.QUICEventKind) } : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent);
        };
        var _e = (_qs._events[(_qs._nextEvent : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent);
        _qs._events[(_qs._nextEvent : stdgo.GoInt)] = (new stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent() : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent);
        _qs._nextEvent++;
        return _e?.__copy__();
    }
    @:keep
    static public function start( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        if (_q._conn._quic._started) {
            return stdgo._internal.crypto.tls.Tls__quicError._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: Start called more than once" : stdgo.GoString)));
        };
        _q._conn._quic._started = true;
        if ((_q._conn._config.minVersion < (772 : stdgo.GoUInt16) : Bool)) {
            return stdgo._internal.crypto.tls.Tls__quicError._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: Config MinVersion must be at least TLS 1.13" : stdgo.GoString)));
        };
        stdgo.Go.routine(() -> _q._conn.handshakeContext(_ctx));
        {
            var __tmp__ = _q._conn._quic._blockedc.__smartGet__(), __165 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                return _q._conn._handshakeErr;
            };
        };
        return (null : stdgo.Error);
    }
}

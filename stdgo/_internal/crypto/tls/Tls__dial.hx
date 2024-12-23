package stdgo._internal.crypto.tls;
function _dial(_ctx:stdgo._internal.context.Context_Context.Context, _netDialer:stdgo.Ref<stdgo._internal.net.Net_Dialer.Dialer>, _network:stdgo.GoString, _addr:stdgo.GoString, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_netDialer.timeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                var _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
                {
                    var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(_ctx, _netDialer.timeout);
                    _ctx = __tmp__._0;
                    _cancel = __tmp__._1;
                };
                {
                    final __f__ = _cancel;
                    __deferstack__.unshift(() -> __f__());
                };
            };
            if (!_netDialer.deadline.isZero()) {
                var _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
                {
                    var __tmp__ = stdgo._internal.context.Context_withDeadline.withDeadline(_ctx, _netDialer.deadline?.__copy__());
                    _ctx = __tmp__._0;
                    _cancel = __tmp__._1;
                };
                {
                    final __f__ = _cancel;
                    __deferstack__.unshift(() -> __f__());
                };
            };
            var __tmp__ = _netDialer.dialContext(_ctx, _network?.__copy__(), _addr?.__copy__()), _rawConn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _colonPos = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_addr?.__copy__(), (":" : stdgo.GoString)) : stdgo.GoInt);
            if (_colonPos == ((-1 : stdgo.GoInt))) {
                _colonPos = (_addr.length);
            };
            var _hostname = ((_addr.__slice__(0, _colonPos) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if ((_config == null || (_config : Dynamic).__nil__)) {
                _config = stdgo._internal.crypto.tls.Tls__defaultConfig._defaultConfig();
            };
            if (_config.serverName == (stdgo.Go.str())) {
                var _c = _config.clone();
                _c.serverName = _hostname?.__copy__();
                _config = _c;
            };
            var _conn = stdgo._internal.crypto.tls.Tls_client.client(_rawConn, _config);
            {
                var _err = (_conn.handshakeContext(_ctx) : stdgo.Error);
                if (_err != null) {
                    _rawConn.close();
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; } = { _0 : _conn, _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : (null : stdgo.Error) };
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
            return { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _1 : (null : stdgo.Error) };
        };
    }

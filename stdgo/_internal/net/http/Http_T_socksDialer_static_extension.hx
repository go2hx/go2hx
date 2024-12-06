package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_socksDialer_asInterface) class T_socksDialer_static_extension {
    @:keep
    static public function _pathAddrs( _d:stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer>, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo._internal.net.Net_Addr.Addr; var _2 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer> = _d;
        var _proxy = (null : stdgo._internal.net.Net_Addr.Addr), _dst = (null : stdgo._internal.net.Net_Addr.Addr), _err = (null : stdgo.Error);
        for (_i => _s in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_d._proxyAddress?.__copy__(), _address?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var __tmp__ = stdgo._internal.net.http.Http__sockssplitHostPort._sockssplitHostPort(_s?.__copy__()), _host:stdgo.GoString = __tmp__._0, _port:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo._internal.net.Net_Addr.Addr; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : (null : stdgo._internal.net.Net_Addr.Addr), _2 : _err };
                    _proxy = __tmp__._0;
                    _dst = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var _a = (stdgo.Go.setRef(({ port : _port } : stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr)) : stdgo.Ref<stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr>);
            _a.ip = stdgo._internal.net.Net_parseIP.parseIP(_host?.__copy__());
            if (_a.ip == null) {
                _a.name = _host?.__copy__();
            };
            if (_i == ((0 : stdgo.GoInt))) {
                _proxy = stdgo.Go.asInterface(_a);
            } else {
                _dst = stdgo.Go.asInterface(_a);
            };
        };
        return { _0 : _proxy, _1 : _dst, _2 : _err };
    }
    @:keep
    static public function _validateTarget( _d:stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer>, _network:stdgo.GoString, _address:stdgo.GoString):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer> = _d;
        {
            final __value__ = _network;
            if (__value__ == (("tcp" : stdgo.GoString)) || __value__ == (("tcp6" : stdgo.GoString)) || __value__ == (("tcp4" : stdgo.GoString))) {} else {
                return stdgo._internal.errors.Errors_new_.new_(("network not implemented" : stdgo.GoString));
            };
        };
        {
            final __value__ = _d._cmd;
            if (__value__ == ((1 : stdgo._internal.net.http.Http_T_socksCommand.T_socksCommand)) || __value__ == ((2 : stdgo._internal.net.http.Http_T_socksCommand.T_socksCommand))) {} else {
                return stdgo._internal.errors.Errors_new_.new_(("command not implemented" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function dial( _d:stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer>, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer> = _d;
        {
            var _err = (_d._validateTarget(_network?.__copy__(), _address?.__copy__()) : stdgo.Error);
            if (_err != null) {
                var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_Addr.Addr = __tmp__._1, __35172:stdgo.Error = __tmp__._2;
                return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : (_d._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) };
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        var _c:stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
        if (_d.proxyDial != null) {
            {
                var __tmp__ = _d.proxyDial(stdgo._internal.context.Context_background.background(), _d._proxyNetwork?.__copy__(), _d._proxyAddress?.__copy__());
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.net.Net_dial.dial(_d._proxyNetwork?.__copy__(), _d._proxyAddress?.__copy__());
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_Addr.Addr = __tmp__._1, __35172:stdgo.Error = __tmp__._2;
            return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : (_d._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) };
        };
        {
            var __tmp__ = _d.dialWithConn(stdgo._internal.context.Context_background.background(), _c, _network?.__copy__(), _address?.__copy__()), __35172:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _c.close();
                return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : _err };
            };
        };
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function dialWithConn( _d:stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer>, _ctx:stdgo._internal.context.Context_Context.Context, _c:stdgo._internal.net.Net_Conn.Conn, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer> = _d;
        {
            var _err = (_d._validateTarget(_network?.__copy__(), _address?.__copy__()) : stdgo.Error);
            if (_err != null) {
                var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_Addr.Addr = __tmp__._1, __35172:stdgo.Error = __tmp__._2;
                return { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : (_d._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) };
            };
        };
        if (_ctx == null) {
            var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_Addr.Addr = __tmp__._1, __35172:stdgo.Error = __tmp__._2;
            return { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : (_d._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : stdgo._internal.errors.Errors_new_.new_(("nil context" : stdgo.GoString)) } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) };
        };
        var __tmp__ = _d._connect(_ctx, _c, _address?.__copy__()), _a:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_Addr.Addr = __tmp__._1, __35172:stdgo.Error = __tmp__._2;
            return { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : (_d._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) };
        };
        return { _0 : _a, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function dialContext( _d:stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer>, _ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer> = _d;
        {
            var _err = (_d._validateTarget(_network?.__copy__(), _address?.__copy__()) : stdgo.Error);
            if (_err != null) {
                var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_Addr.Addr = __tmp__._1, __35172:stdgo.Error = __tmp__._2;
                return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : (_d._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) };
            };
        };
        if (_ctx == null) {
            var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_Addr.Addr = __tmp__._1, __35172:stdgo.Error = __tmp__._2;
            return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : (_d._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : stdgo._internal.errors.Errors_new_.new_(("nil context" : stdgo.GoString)) } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        var _c:stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
        if (_d.proxyDial != null) {
            {
                var __tmp__ = _d.proxyDial(_ctx, _d._proxyNetwork?.__copy__(), _d._proxyAddress?.__copy__());
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
        } else {
            var _dd:stdgo._internal.net.Net_Dialer.Dialer = ({} : stdgo._internal.net.Net_Dialer.Dialer);
            {
                var __tmp__ = _dd.dialContext(_ctx, _d._proxyNetwork?.__copy__(), _d._proxyAddress?.__copy__());
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_Addr.Addr = __tmp__._1, __35172:stdgo.Error = __tmp__._2;
            return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : (_d._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) };
        };
        var __tmp__ = _d._connect(_ctx, _c, _address?.__copy__()), _a:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c.close();
            var __tmp__ = _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_Addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_Addr.Addr = __tmp__._1, __35172:stdgo.Error = __tmp__._2;
            return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : (_d._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ conn : _c, _boundAddr : _a } : stdgo._internal.net.http.Http_T_socksConn.T_socksConn)) : stdgo.Ref<stdgo._internal.net.http.Http_T_socksConn.T_socksConn>)), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _connect( _d:stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer>, _ctx:stdgo._internal.context.Context_Context.Context, _c:stdgo._internal.net.Net_Conn.Conn, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer> = _d;
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo._internal.net.Net_Addr.Addr), _ctxErr = (null : stdgo.Error);
        try {
            var __tmp__ = stdgo._internal.net.http.Http__sockssplitHostPort._sockssplitHostPort(_address?.__copy__()), _host:stdgo.GoString = __tmp__._0, _port:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : _err };
                    _0 = __tmp__._0;
                    _ctxErr = __tmp__._1;
                    __tmp__;
                };
            };
            {
                var __tmp__ = _ctx.deadline(), _deadline:stdgo._internal.time.Time_Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && !_deadline.isZero() : Bool)) {
                    _c.setDeadline(_deadline?.__copy__());
                    {
                        var _a0 = stdgo._internal.net.http.Http__socksnoDeadline._socksnoDeadline;
                        __deferstack__.unshift(() -> _c.setDeadline(_a0?.__copy__()));
                    };
                };
            };
            if (stdgo.Go.toInterface(_ctx) != (stdgo.Go.toInterface(stdgo._internal.context.Context_background.background()))) {
                var _errCh = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
                var _done = (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        if (_done != null) _done.__close__();
                        if (_ctxErr == null) {
                            _ctxErr = _errCh.__get__();
                        };
                    };
                    a();
                }));
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        {
                            var __select__ = true;
                            while (__select__) {
                                if (_ctx.done() != null && _ctx.done().__isGet__()) {
                                    __select__ = false;
                                    {
                                        _ctx.done().__get__();
                                        {
                                            _c.setDeadline(stdgo._internal.net.http.Http__socksaLongTimeAgo._socksaLongTimeAgo?.__copy__());
                                            _errCh.__send__(_ctx.err());
                                        };
                                    };
                                } else if (_done != null && _done.__isGet__()) {
                                    __select__ = false;
                                    {
                                        _done.__get__();
                                        {
                                            _errCh.__send__(null);
                                        };
                                    };
                                };
                                #if !js Sys.sleep(0.01) #else null #end;
                                stdgo._internal.internal.Async.tick();
                            };
                        };
                    };
                    a();
                }));
            };
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((6 : stdgo.GoInt) + (_host.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _b = (_b.__append__((5 : stdgo.GoUInt8)));
            if (((_d.authMethods.length == (0 : stdgo.GoInt)) || (_d.authenticate == null) : Bool)) {
                _b = (_b.__append__((1 : stdgo.GoUInt8), ((0 : stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) : stdgo.GoUInt8)));
            } else {
                var _ams = _d.authMethods;
                if (((_ams.length) > (255 : stdgo.GoInt) : Bool)) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_(("too many authentication methods" : stdgo.GoString)) };
                            _0 = __tmp__._0;
                            _ctxErr = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                _b = (_b.__append__((_ams.length : stdgo.GoUInt8)));
                for (__35172 => _am in _ams) {
                    _b = (_b.__append__((_am : stdgo.GoUInt8)));
                };
            };
            {
                {
                    var __tmp__ = _c.write(_b);
                    _ctxErr = __tmp__._1;
                };
                if (_ctxErr != null) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : _0, _1 : _ctxErr };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_c, (_b.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _ctxErr = __tmp__._1;
                };
                if (_ctxErr != null) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : _0, _1 : _ctxErr };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            if (_b[(0 : stdgo.GoInt)] != ((5 : stdgo.GoUInt8))) {
                {
                    final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_((("unexpected protocol version " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_b[(0 : stdgo.GoInt)] : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__()) };
                        _0 = __tmp__._0;
                        _ctxErr = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _am = (_b[(1 : stdgo.GoInt)] : stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod);
            if (_am == ((255 : stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod))) {
                {
                    final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_(("no acceptable authentication methods" : stdgo.GoString)) };
                        _0 = __tmp__._0;
                        _ctxErr = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_d.authenticate != null) {
                {
                    _ctxErr = _d.authenticate(_ctx, _c, _am);
                    if (_ctxErr != null) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : _0, _1 : _ctxErr };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            _b = (_b.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _b = (_b.__append__((5 : stdgo.GoUInt8), (_d._cmd : stdgo.GoUInt8), (0 : stdgo.GoUInt8)));
            {
                var _ip = (stdgo._internal.net.Net_parseIP.parseIP(_host?.__copy__()) : stdgo._internal.net.Net_IP.IP);
                if (_ip != null) {
                    {
                        var _ip4 = (_ip.to4() : stdgo._internal.net.Net_IP.IP);
                        if (_ip4 != null) {
                            _b = (_b.__append__((1 : stdgo.GoUInt8)));
                            _b = (_b.__append__(...(_ip4 : Array<stdgo.GoUInt8>)));
                        } else {
                            var _ip6 = (_ip.to16() : stdgo._internal.net.Net_IP.IP);
                            if (_ip6 != null) {
                                _b = (_b.__append__((4 : stdgo.GoUInt8)));
                                _b = (_b.__append__(...(_ip6 : Array<stdgo.GoUInt8>)));
                            } else {
                                {
                                    final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = {
                                        final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_(("unknown address type" : stdgo.GoString)) };
                                        _0 = __tmp__._0;
                                        _ctxErr = __tmp__._1;
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
                } else {
                    if (((_host.length) > (255 : stdgo.GoInt) : Bool)) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_(("FQDN too long" : stdgo.GoString)) };
                                _0 = __tmp__._0;
                                _ctxErr = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    _b = (_b.__append__((3 : stdgo.GoUInt8)));
                    _b = (_b.__append__((_host.length : stdgo.GoUInt8)));
                    _b = (_b.__append__(...(_host : Array<stdgo.GoUInt8>)));
                };
            };
            _b = (_b.__append__(((_port >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8), (_port : stdgo.GoUInt8)));
            {
                {
                    var __tmp__ = _c.write(_b);
                    _ctxErr = __tmp__._1;
                };
                if (_ctxErr != null) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : _0, _1 : _ctxErr };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_c, (_b.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _ctxErr = __tmp__._1;
                };
                if (_ctxErr != null) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : _0, _1 : _ctxErr };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            if (_b[(0 : stdgo.GoInt)] != ((5 : stdgo.GoUInt8))) {
                {
                    final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_((("unexpected protocol version " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_b[(0 : stdgo.GoInt)] : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__()) };
                        _0 = __tmp__._0;
                        _ctxErr = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                var _cmdErr = (_b[(1 : stdgo.GoInt)] : stdgo._internal.net.http.Http_T_socksReply.T_socksReply);
                if (_cmdErr != ((0 : stdgo._internal.net.http.Http_T_socksReply.T_socksReply))) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_((("unknown error " : stdgo.GoString) + (_cmdErr.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
                            _0 = __tmp__._0;
                            _ctxErr = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            if (_b[(2 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                {
                    final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_(("non-zero reserved field" : stdgo.GoString)) };
                        _0 = __tmp__._0;
                        _ctxErr = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _l = (2 : stdgo.GoInt);
            var _a:stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr = ({} : stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr);
            var _a__pointer__ = (stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr>);
            {
                final __value__ = _b[(3 : stdgo.GoInt)];
                if (__value__ == ((1 : stdgo.GoUInt8))) {
                    _l = (_l + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    _a.ip = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.net.Net_IP.IP);
                } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                    _l = (_l + ((16 : stdgo.GoInt)) : stdgo.GoInt);
                    _a.ip = (new stdgo.Slice<stdgo.GoUInt8>((16 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.net.Net_IP.IP);
                } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                    {
                        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_c, (_b.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __35172:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = {
                                    final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : _err };
                                    _0 = __tmp__._0;
                                    _ctxErr = __tmp__._1;
                                    __tmp__;
                                };
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
                    _l = (_l + ((_b[(0 : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_Addr.Addr), _1 : stdgo._internal.errors.Errors_new_.new_((("unknown address type " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_b[(3 : stdgo.GoInt)] : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__()) };
                            _0 = __tmp__._0;
                            _ctxErr = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            if ((_b.capacity < _l : Bool)) {
                _b = (new stdgo.Slice<stdgo.GoUInt8>((_l : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _b = (_b.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>);
            };
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_c, _b);
                    _ctxErr = __tmp__._1;
                };
                if (_ctxErr != null) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : _0, _1 : _ctxErr };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            if (_a.ip != null) {
                stdgo.Go.copySlice(_a.ip, _b);
            } else {
                _a.name = ((_b.__slice__(0, ((_b.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
            };
            _a.port = (((_b[((_b.length) - (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
            {
                final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(_a__pointer__), _1 : (null : stdgo.Error) };
                    _0 = __tmp__._0;
                    _ctxErr = __tmp__._1;
                    __tmp__;
                };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : _0, _1 : _ctxErr };
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
            final __ret__:{ var _0 : stdgo._internal.net.Net_Addr.Addr; var _1 : stdgo.Error; } = { _0 : _0, _1 : _ctxErr };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
}

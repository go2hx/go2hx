package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2clientConnPool_asInterface) class T_http2clientConnPool_static_extension {
    @:keep
    static public function _closeIdleConnections( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _p._mu.lock();
            {
                final __f__ = _p._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            for (__30156 => _vv in _p._conns) {
                for (__30157 => _cc in _vv) {
                    _cc._closeIfIdle();
                };
            };
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
    static public function markDead( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _p._mu.lock();
            {
                final __f__ = _p._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            for (__30156 => _key in (_p._keys[_cc] ?? (null : stdgo.Slice<stdgo.GoString>))) {
                var __tmp__ = (_p._conns != null && _p._conns.exists(_key?.__copy__()) ? { _0 : _p._conns[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>), _1 : false }), _vv:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    continue;
                };
                var _newList = stdgo._internal.net.http.Http__http2filterOutClientConn._http2filterOutClientConn(_vv, _cc);
                if (((_newList.length) > (0 : stdgo.GoInt) : Bool)) {
                    _p._conns[_key] = _newList;
                } else {
                    if (_p._conns != null) _p._conns.remove(_key);
                };
            };
            if (_p._keys != null) _p._keys.remove(_cc);
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
    static public function _addConnLocked( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, _key:stdgo.GoString, _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        for (__30140 => _v in (_p._conns[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>))) {
            if (_v == (_cc)) {
                return;
            };
        };
        if (_p._conns == null) {
            _p._conns = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>>);
        };
        if (_p._keys == null) {
            _p._keys = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>);
        };
        _p._conns[_key] = ((_p._conns[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>)).__append__(_cc));
        _p._keys[_cc] = ((_p._keys[_cc] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_key?.__copy__()));
    }
    @:keep
    static public function _addConnIfNeeded( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, _key:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        var _used = false, _err = (null : stdgo.Error);
        _p._mu.lock();
        for (__30148 => _cc in (_p._conns[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>))) {
            if (_cc.canTakeNewRequest()) {
                _p._mu.unlock();
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                    _used = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        var __tmp__ = (_p._addConnCalls != null && _p._addConnCalls.exists(_key?.__copy__()) ? { _0 : _p._addConnCalls[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>), _1 : false }), _call:stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall> = __tmp__._0, _dup:Bool = __tmp__._1;
        if (!_dup) {
            if (_p._addConnCalls == null) {
                _p._addConnCalls = ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>>();
                    x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>>);
            };
            _call = (stdgo.Go.setRef(({ _p : _p, _done : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) } : stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>);
            _p._addConnCalls[_key] = _call;
            stdgo.Go.routine(() -> _call._run(_t, _key?.__copy__(), _c));
        };
        _p._mu.unlock();
        _call._done.__get__();
        if (_call._err != null) {
            return {
                final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _call._err };
                _used = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !_dup, _1 : (null : stdgo.Error) };
            _used = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function _getStartDialLocked( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, _ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString):stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall> {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        {
            var __tmp__ = (_p._dialing != null && _p._dialing.exists(_addr?.__copy__()) ? { _0 : _p._dialing[_addr?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>), _1 : false }), _call:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _call;
            };
        };
        var _call = (stdgo.Go.setRef(({ _p : _p, _done : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _ctx : _ctx } : stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>);
        if (_p._dialing == null) {
            _p._dialing = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>>);
        };
        _p._dialing[_addr] = _call;
        stdgo.Go.routine(() -> _call._dial(_call._ctx, _addr?.__copy__()));
        return _call;
    }
    @:keep
    static public function _getClientConn( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString, _dialOnMiss:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        if ((stdgo._internal.net.http.Http__http2isConnectionCloseRequest._http2isConnectionCloseRequest(_req) && _dialOnMiss : Bool)) {
            stdgo._internal.net.http.Http__http2traceGetConn._http2traceGetConn(_req, _addr?.__copy__());
            {};
            var __tmp__ = _p._t._dialClientConn(_req.context(), _addr?.__copy__(), true), _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            return { _0 : _cc, _1 : (null : stdgo.Error) };
        };
        while (true) {
            _p._mu.lock();
            for (__30148 => _cc in (_p._conns[_addr] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>))) {
                if (_cc.reserveNewRequest()) {
                    if (!_cc._getConnCalled) {
                        stdgo._internal.net.http.Http__http2traceGetConn._http2traceGetConn(_req, _addr?.__copy__());
                    };
                    _cc._getConnCalled = false;
                    _p._mu.unlock();
                    return { _0 : _cc, _1 : (null : stdgo.Error) };
                };
            };
            if (!_dialOnMiss) {
                _p._mu.unlock();
                return { _0 : null, _1 : stdgo._internal.net.http.Http__http2ErrNoCachedConn._http2ErrNoCachedConn };
            };
            stdgo._internal.net.http.Http__http2traceGetConn._http2traceGetConn(_req, _addr?.__copy__());
            var _call = _p._getStartDialLocked(_req.context(), _addr?.__copy__());
            _p._mu.unlock();
            _call._done.__get__();
            if (stdgo._internal.net.http.Http__http2shouldRetryDial._http2shouldRetryDial(_call, _req)) {
                continue;
            };
            var __0 = _call._res, __1 = (_call._err : stdgo.Error);
var _err = __1, _cc = __0;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (_cc.reserveNewRequest()) {
                return { _0 : _cc, _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    static public function getClientConn( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        return _p._getClientConn(_req, _addr?.__copy__(), true);
    }
}

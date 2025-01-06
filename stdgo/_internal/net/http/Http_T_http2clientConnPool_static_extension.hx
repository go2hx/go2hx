package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2clientConnPool_asInterface) class T_http2clientConnPool_static_extension {
    @:keep
    @:tdfield
    static public function _closeIdleConnections( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            for (__30161 => _vv in (@:checkr _p ?? throw "null pointer dereference")._conns) {
                for (__30162 => _cc in _vv) {
                    @:check2r _cc._closeIfIdle();
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function markDead( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            for (__30161 => _key in ((@:checkr _p ?? throw "null pointer dereference")._keys[_cc] ?? (null : stdgo.Slice<stdgo.GoString>))) {
                var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._conns != null && (@:checkr _p ?? throw "null pointer dereference")._conns.exists(_key?.__copy__()) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._conns[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>), _1 : false }), _vv:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    continue;
                };
                var _newList = stdgo._internal.net.http.Http__http2filterOutClientConn._http2filterOutClientConn(_vv, _cc);
                if (((_newList.length) > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._conns[_key] = _newList;
                } else {
                    if ((@:checkr _p ?? throw "null pointer dereference")._conns != null) (@:checkr _p ?? throw "null pointer dereference")._conns.remove(_key);
                };
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._keys != null) (@:checkr _p ?? throw "null pointer dereference")._keys.remove(_cc);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    @:tdfield
    static public function _addConnLocked( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, _key:stdgo.GoString, _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        for (__30145 => _v in ((@:checkr _p ?? throw "null pointer dereference")._conns[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>))) {
            if (_v == (_cc)) {
                return;
            };
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._conns == null) {
            (@:checkr _p ?? throw "null pointer dereference")._conns = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>>);
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._keys == null) {
            (@:checkr _p ?? throw "null pointer dereference")._keys = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>);
        };
        (@:checkr _p ?? throw "null pointer dereference")._conns[_key] = (((@:checkr _p ?? throw "null pointer dereference")._conns[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>)).__append__(_cc));
        (@:checkr _p ?? throw "null pointer dereference")._keys[_cc] = (((@:checkr _p ?? throw "null pointer dereference")._keys[_cc] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_key?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function _addConnIfNeeded( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, _key:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        var _used = false, _err = (null : stdgo.Error);
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
        for (__30153 => _cc in ((@:checkr _p ?? throw "null pointer dereference")._conns[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>))) {
            if (@:check2r _cc.canTakeNewRequest()) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock();
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                    _used = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._addConnCalls != null && (@:checkr _p ?? throw "null pointer dereference")._addConnCalls.exists(_key?.__copy__()) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._addConnCalls[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>), _1 : false }), _call:stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall> = __tmp__._0, _dup:Bool = __tmp__._1;
        if (!_dup) {
            if ((@:checkr _p ?? throw "null pointer dereference")._addConnCalls == null) {
                (@:checkr _p ?? throw "null pointer dereference")._addConnCalls = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>>();
                    x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>>);
            };
            _call = (stdgo.Go.setRef(({ _p : _p, _done : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) } : stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>);
            (@:checkr _p ?? throw "null pointer dereference")._addConnCalls[_key] = _call;
            stdgo.Go.routine(() -> @:check2r _call._run(_t, _key?.__copy__(), _c));
        };
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock();
        (@:checkr _call ?? throw "null pointer dereference")._done.__get__();
        if ((@:checkr _call ?? throw "null pointer dereference")._err != null) {
            return {
                final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (@:checkr _call ?? throw "null pointer dereference")._err };
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
    @:tdfield
    static public function _getStartDialLocked( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, _ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString):stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall> {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        {
            var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._dialing != null && (@:checkr _p ?? throw "null pointer dereference")._dialing.exists(_addr?.__copy__()) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._dialing[_addr?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>), _1 : false }), _call:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _call;
            };
        };
        var _call = (stdgo.Go.setRef(({ _p : _p, _done : (new stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>(0, () -> ({} : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError)) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>), _ctx : _ctx } : stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>);
        if ((@:checkr _p ?? throw "null pointer dereference")._dialing == null) {
            (@:checkr _p ?? throw "null pointer dereference")._dialing = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>>);
        };
        (@:checkr _p ?? throw "null pointer dereference")._dialing[_addr] = _call;
        stdgo.Go.routine(() -> @:check2r _call._dial((@:checkr _call ?? throw "null pointer dereference")._ctx, _addr?.__copy__()));
        return _call;
    }
    @:keep
    @:tdfield
    static public function _getClientConn( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString, _dialOnMiss:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        if ((stdgo._internal.net.http.Http__http2isConnectionCloseRequest._http2isConnectionCloseRequest(_req) && _dialOnMiss : Bool)) {
            stdgo._internal.net.http.Http__http2traceGetConn._http2traceGetConn(_req, _addr?.__copy__());
            {};
            var __tmp__ = @:check2r (@:checkr _p ?? throw "null pointer dereference")._t._dialClientConn(@:check2r _req.context(), _addr?.__copy__(), true), _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            return { _0 : _cc, _1 : (null : stdgo.Error) };
        };
        while (true) {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
            for (__30153 => _cc in ((@:checkr _p ?? throw "null pointer dereference")._conns[_addr] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>))) {
                if (@:check2r _cc.reserveNewRequest()) {
                    if (!(@:checkr _cc ?? throw "null pointer dereference")._getConnCalled) {
                        stdgo._internal.net.http.Http__http2traceGetConn._http2traceGetConn(_req, _addr?.__copy__());
                    };
                    (@:checkr _cc ?? throw "null pointer dereference")._getConnCalled = false;
                    @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock();
                    return { _0 : _cc, _1 : (null : stdgo.Error) };
                };
            };
            if (!_dialOnMiss) {
                @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock();
                return { _0 : null, _1 : stdgo._internal.net.http.Http__http2ErrNoCachedConn._http2ErrNoCachedConn };
            };
            stdgo._internal.net.http.Http__http2traceGetConn._http2traceGetConn(_req, _addr?.__copy__());
            var _call = @:check2r _p._getStartDialLocked(@:check2r _req.context(), _addr?.__copy__());
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock();
            (@:checkr _call ?? throw "null pointer dereference")._done.__get__();
            if (stdgo._internal.net.http.Http__http2shouldRetryDial._http2shouldRetryDial(_call, _req)) {
                continue;
            };
            var __0 = (@:checkr _call ?? throw "null pointer dereference")._res, __1 = ((@:checkr _call ?? throw "null pointer dereference")._err : stdgo.Error);
var _err = __1, _cc = __0;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (@:check2r _cc.reserveNewRequest()) {
                return { _0 : _cc, _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function getClientConn( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = _p;
        return @:check2r _p._getClientConn(_req, _addr?.__copy__(), true);
    }
}

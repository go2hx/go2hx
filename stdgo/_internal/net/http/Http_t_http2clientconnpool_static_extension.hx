package stdgo._internal.net.http;
@:keep class T_http2ClientConnPool_static_extension {
    @:interfacetypeffun
    static public function markDead(t:stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool, _0:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void t.markDead(_0);
    @:interfacetypeffun
    static public function getClientConn(t:stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return t.getClientConn(_req, _addr);
}
@:keep @:allow(stdgo._internal.net.http.Http.T_http2clientConnPool_asInterface) class T_http2clientConnPool_static_extension {
    @:keep
    @:tdfield
    static public function markDead( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>, _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            for (__2030 => _key in ((@:checkr _p ?? throw "null pointer dereference")._keys[_cc] ?? (null : stdgo.Slice<stdgo.GoString>))) {
                var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._conns != null && (@:checkr _p ?? throw "null pointer dereference")._conns.__exists__(_key?.__copy__()) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._conns[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>), _1 : false }), _vv:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    continue;
                };
                var _newList = stdgo._internal.net.http.Http__http2filteroutclientconn._http2filterOutClientConn(_vv, _cc);
                if (((_newList.length) > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._conns[_key] = _newList;
                } else {
                    if ((@:checkr _p ?? throw "null pointer dereference")._conns != null) (@:checkr _p ?? throw "null pointer dereference")._conns.__remove__(_key);
                };
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._keys != null) (@:checkr _p ?? throw "null pointer dereference")._keys.__remove__(_cc);
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
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function getClientConn( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool> = _p;
        return @:check2r _p._getClientConn(_req, _addr?.__copy__(), true);
    }
}

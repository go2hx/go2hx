package stdgo._internal.net.http.httptest;
@:keep @:allow(stdgo._internal.net.http.httptest.Httptest.Server_asInterface) class Server_static_extension {
    @:keep
    @:tdfield
    static public function _closeConnChan( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>, _c:stdgo._internal.net.Net_Conn.Conn, _done:stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        _c.close();
        if (_done != null) {
            _done.__send__(({  } : stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0));
        };
    }
    @:keep
    @:tdfield
    static public function _closeConn( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>, _c:stdgo._internal.net.Net_Conn.Conn):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        @:check2r _s._closeConnChan(_c, (null : stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>));
    }
    @:keep
    @:tdfield
    static public function _wrap( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        var _oldHook = ((@:checkr (@:checkr _s ?? throw "null pointer dereference").config ?? throw "null pointer dereference").connState : (stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void);
        (@:checkr (@:checkr _s ?? throw "null pointer dereference").config ?? throw "null pointer dereference").connState = function(_c:stdgo._internal.net.Net_Conn.Conn, _cs:stdgo._internal.net.http.Http_ConnState.ConnState):Void {
            var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
            try {
                @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
                {
                    final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                {
                    final __value__ = _cs;
                    if (__value__ == ((0 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                        {
                            var __tmp__ = ((@:checkr _s ?? throw "null pointer dereference")._conns != null && (@:checkr _s ?? throw "null pointer dereference")._conns.exists(_c) ? { _0 : (@:checkr _s ?? throw "null pointer dereference")._conns[_c], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_ConnState.ConnState), _1 : false }), __208:stdgo._internal.net.http.Http_ConnState.ConnState = __tmp__._0, _exists:Bool = __tmp__._1;
                            if (_exists) {
                                throw stdgo.Go.toInterface(("invalid state transition" : stdgo.GoString));
                            };
                        };
                        if ((@:checkr _s ?? throw "null pointer dereference")._conns == null) {
                            (@:checkr _s ?? throw "null pointer dereference")._conns = (({
                                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>();
                                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_Conn.Conn", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                                x.__defaultValue__ = () -> ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_ConnState.ConnState);
                                {};
                                cast x;
                            } : stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>) : stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>);
                        };
                        @:check2 (@:checkr _s ?? throw "null pointer dereference")._wg.add((1 : stdgo.GoInt));
                        (@:checkr _s ?? throw "null pointer dereference")._conns[_c] = _cs;
                        if ((@:checkr _s ?? throw "null pointer dereference")._closed) {
                            @:check2r _s._closeConn(_c);
                        };
                    } else if (__value__ == ((1 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                        {
                            var __tmp__ = ((@:checkr _s ?? throw "null pointer dereference")._conns != null && (@:checkr _s ?? throw "null pointer dereference")._conns.exists(_c) ? { _0 : (@:checkr _s ?? throw "null pointer dereference")._conns[_c], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_ConnState.ConnState), _1 : false }), _oldState:stdgo._internal.net.http.Http_ConnState.ConnState = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                if (((_oldState != (0 : stdgo._internal.net.http.Http_ConnState.ConnState)) && (_oldState != (2 : stdgo._internal.net.http.Http_ConnState.ConnState)) : Bool)) {
                                    throw stdgo.Go.toInterface(("invalid state transition" : stdgo.GoString));
                                };
                                (@:checkr _s ?? throw "null pointer dereference")._conns[_c] = _cs;
                            };
                        };
                    } else if (__value__ == ((2 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                        {
                            var __tmp__ = ((@:checkr _s ?? throw "null pointer dereference")._conns != null && (@:checkr _s ?? throw "null pointer dereference")._conns.exists(_c) ? { _0 : (@:checkr _s ?? throw "null pointer dereference")._conns[_c], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_ConnState.ConnState), _1 : false }), _oldState:stdgo._internal.net.http.Http_ConnState.ConnState = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                if (_oldState != ((1 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                                    throw stdgo.Go.toInterface(("invalid state transition" : stdgo.GoString));
                                };
                                (@:checkr _s ?? throw "null pointer dereference")._conns[_c] = _cs;
                            };
                        };
                        if ((@:checkr _s ?? throw "null pointer dereference")._closed) {
                            @:check2r _s._closeConn(_c);
                        };
                    } else if (__value__ == ((3 : stdgo._internal.net.http.Http_ConnState.ConnState)) || __value__ == ((4 : stdgo._internal.net.http.Http_ConnState.ConnState))) {
                        {
                            var __tmp__ = ((@:checkr _s ?? throw "null pointer dereference")._conns != null && (@:checkr _s ?? throw "null pointer dereference")._conns.exists(_c) ? { _0 : (@:checkr _s ?? throw "null pointer dereference")._conns[_c], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_ConnState.ConnState), _1 : false }), __208:stdgo._internal.net.http.Http_ConnState.ConnState = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                if ((@:checkr _s ?? throw "null pointer dereference")._conns != null) (@:checkr _s ?? throw "null pointer dereference")._conns.remove(_c);
                                {
                                    final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._wg.done;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                                };
                            };
                        };
                    };
                };
                if (_oldHook != null) {
                    _oldHook(_c, _cs);
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
        };
    }
    @:keep
    @:tdfield
    static public function _goServe( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._wg.add((1 : stdgo.GoInt));
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    {
                        final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._wg.done;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    @:check2r (@:checkr _s ?? throw "null pointer dereference").config.serve((@:checkr _s ?? throw "null pointer dereference").listener);
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
            };
            a();
        }));
    }
    @:keep
    @:tdfield
    static public function client( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._client;
    }
    @:keep
    @:tdfield
    static public function certificate( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._certificate;
    }
    @:keep
    @:tdfield
    static public function closeClientConnections( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            var _nconn = ((@:checkr _s ?? throw "null pointer dereference")._conns.length : stdgo.GoInt);
            var _ch = (new stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>((_nconn : stdgo.GoInt).toBasic(), () -> ({  } : stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0)) : stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>);
            for (_c => _ in (@:checkr _s ?? throw "null pointer dereference")._conns) {
                stdgo.Go.routine(() -> @:check2r _s._closeConnChan(_c, _ch));
            };
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
            var _timer = stdgo._internal.time.Time_newTimer.newTimer((5000000000i64 : stdgo._internal.time.Time_Duration.Duration));
            {
                final __f__ = @:check2r _timer.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _nconn : Bool)) {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_ch != null && _ch.__isGet__()) {
                                __select__ = false;
                                {
                                    _ch.__get__();
                                    {};
                                };
                            } else if ((@:checkr _timer ?? throw "null pointer dereference").c != null && (@:checkr _timer ?? throw "null pointer dereference").c.__isGet__()) {
                                __select__ = false;
                                {
                                    (@:checkr _timer ?? throw "null pointer dereference").c.__get__();
                                    {
                                        {
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return;
                                        };
                                    };
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                    _i++;
                };
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
    static public function _logCloseHangDebugInfo( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            @:check2 _buf.writeString(("httptest.Server blocked in Close after 5 seconds, waiting for connections:\n" : stdgo.GoString));
            for (_c => _st in (@:checkr _s ?? throw "null pointer dereference")._conns) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("  %T %p %v in state %v\n" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_c.remoteAddr()), stdgo.Go.toInterface(stdgo.Go.asInterface(_st)));
            };
            stdgo._internal.log.Log_print.print(stdgo.Go.toInterface((@:check2 _buf.string() : stdgo.GoString)));
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
    static public function close( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            if (!(@:checkr _s ?? throw "null pointer dereference")._closed) {
                (@:checkr _s ?? throw "null pointer dereference")._closed = true;
                (@:checkr _s ?? throw "null pointer dereference").listener.close();
                @:check2r (@:checkr _s ?? throw "null pointer dereference").config.setKeepAlivesEnabled(false);
                for (_c => _st in (@:checkr _s ?? throw "null pointer dereference")._conns) {
                    if (((_st == (2 : stdgo._internal.net.http.Http_ConnState.ConnState)) || (_st == (0 : stdgo._internal.net.http.Http_ConnState.ConnState)) : Bool)) {
                        @:check2r _s._closeConn(_c);
                    };
                };
                var _t = stdgo._internal.time.Time_afterFunc.afterFunc((5000000000i64 : stdgo._internal.time.Time_Duration.Duration), @:check2r _s._logCloseHangDebugInfo);
                {
                    final __f__ = @:check2r _t.stop;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.net.http.Http_defaultTransport.defaultTransport) : stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport)) : stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport), _1 : false };
                }, _t = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _t.closeIdleConnections();
                };
            };
            if (((@:checkr _s ?? throw "null pointer dereference")._client != null && (((@:checkr _s ?? throw "null pointer dereference")._client : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference")._client : Dynamic).__nil__))) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (@:checkr _s ?? throw "null pointer dereference")._client ?? throw "null pointer dereference").transport) : stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport)) : stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport), _1 : false };
                    }, _t = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _t.closeIdleConnections();
                    };
                };
            };
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._wg.wait_();
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
    static public function startTLS( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference").uRL != (stdgo.Go.str())) {
            throw stdgo.Go.toInterface(("Server already started" : stdgo.GoString));
        };
        if (((@:checkr _s ?? throw "null pointer dereference")._client == null || ((@:checkr _s ?? throw "null pointer dereference")._client : Dynamic).__nil__)) {
            (@:checkr _s ?? throw "null pointer dereference")._client = (stdgo.Go.setRef(({ transport : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_Transport.Transport() : stdgo._internal.net.http.Http_Transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>)) } : stdgo._internal.net.http.Http_Client.Client)) : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls_x509KeyPair.x509KeyPair(stdgo._internal.net.http.internal.testcert.Testcert_localhostCert.localhostCert, stdgo._internal.net.http.internal.testcert.Testcert_localhostKey.localhostKey), _cert:stdgo._internal.crypto.tls.Tls_Certificate.Certificate = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("httptest: NewTLSServer: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
        };
        var _existingConfig = (@:checkr _s ?? throw "null pointer dereference").tLS;
        if ((_existingConfig != null && ((_existingConfig : Dynamic).__nil__ == null || !(_existingConfig : Dynamic).__nil__))) {
            (@:checkr _s ?? throw "null pointer dereference").tLS = @:check2r _existingConfig.clone();
        } else {
            (@:checkr _s ?? throw "null pointer dereference").tLS = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_Config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        };
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference").tLS ?? throw "null pointer dereference").nextProtos == null) {
            var _nextProtos = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("http/1.1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            if ((@:checkr _s ?? throw "null pointer dereference").enableHTTP2) {
                _nextProtos = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("h2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            (@:checkr (@:checkr _s ?? throw "null pointer dereference").tLS ?? throw "null pointer dereference").nextProtos = _nextProtos;
        };
        if (((@:checkr (@:checkr _s ?? throw "null pointer dereference").tLS ?? throw "null pointer dereference").certificates.length) == ((0 : stdgo.GoInt))) {
            (@:checkr (@:checkr _s ?? throw "null pointer dereference").tLS ?? throw "null pointer dereference").certificates = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>(1, 1, ...[_cert?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_Certificate.Certificate)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        };
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate((@:checkr (@:checkr _s ?? throw "null pointer dereference").tLS ?? throw "null pointer dereference").certificates[(0 : stdgo.GoInt)].certificate[(0 : stdgo.GoInt)]);
            (@:checkr _s ?? throw "null pointer dereference")._certificate = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("httptest: NewTLSServer: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
        };
        var _certpool = stdgo._internal.crypto.x509.X509_newCertPool.newCertPool();
        @:check2r _certpool.addCert((@:checkr _s ?? throw "null pointer dereference")._certificate);
        (@:checkr (@:checkr _s ?? throw "null pointer dereference")._client ?? throw "null pointer dereference").transport = stdgo.Go.asInterface((stdgo.Go.setRef(({ tLSClientConfig : (stdgo.Go.setRef(({ rootCAs : _certpool } : stdgo._internal.crypto.tls.Tls_Config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>), forceAttemptHTTP2 : (@:checkr _s ?? throw "null pointer dereference").enableHTTP2 } : stdgo._internal.net.http.Http_Transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>));
        (@:checkr _s ?? throw "null pointer dereference").listener = stdgo._internal.crypto.tls.Tls_newListener.newListener((@:checkr _s ?? throw "null pointer dereference").listener, (@:checkr _s ?? throw "null pointer dereference").tLS);
        (@:checkr _s ?? throw "null pointer dereference").uRL = (("https://" : stdgo.GoString) + ((@:checkr _s ?? throw "null pointer dereference").listener.addr().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        @:check2r _s._wrap();
        @:check2r _s._goServe();
    }
    @:keep
    @:tdfield
    static public function start( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference").uRL != (stdgo.Go.str())) {
            throw stdgo.Go.toInterface(("Server already started" : stdgo.GoString));
        };
        if (((@:checkr _s ?? throw "null pointer dereference")._client == null || ((@:checkr _s ?? throw "null pointer dereference")._client : Dynamic).__nil__)) {
            (@:checkr _s ?? throw "null pointer dereference")._client = (stdgo.Go.setRef(({ transport : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_Transport.Transport() : stdgo._internal.net.http.Http_Transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>)) } : stdgo._internal.net.http.Http_Client.Client)) : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        };
        (@:checkr _s ?? throw "null pointer dereference").uRL = (("http://" : stdgo.GoString) + ((@:checkr _s ?? throw "null pointer dereference").listener.addr().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        @:check2r _s._wrap();
        @:check2r _s._goServe();
        if (stdgo._internal.net.http.httptest.Httptest__serveFlag._serveFlag != (stdgo.Go.str())) {
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.toInterface(("httptest: serving on" : stdgo.GoString)), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").uRL));
            @:null_select {};
        };
    }
}

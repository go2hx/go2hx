package stdgo._internal.net.http.httptest;
@:keep @:allow(stdgo._internal.net.http.httptest.Httptest.Server_asInterface) class Server_static_extension {
    @:keep
    @:tdfield
    static public function _closeConnChan( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>, _c:stdgo._internal.net.Net_conn.Conn, _done:stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_t__struct_0.T__struct_0>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> = _s;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L381"
        _c.close();
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L382"
        if (_done != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L383"
            _done.__send__(({  } : stdgo._internal.net.http.httptest.Httptest_t__struct_0.T__struct_0));
        };
    }
    @:keep
    @:tdfield
    static public function _closeConn( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>, _c:stdgo._internal.net.Net_conn.Conn):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> = _s;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L376"
        _s._closeConnChan(_c, (null : stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_t__struct_0.T__struct_0>));
    }
    @:keep
    @:tdfield
    static public function _wrap( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> = _s;
        var _oldHook = ((@:checkr (@:checkr _s ?? throw "null pointer dereference").config ?? throw "null pointer dereference").connState : (stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState) -> Void);
        (@:checkr (@:checkr _s ?? throw "null pointer dereference").config ?? throw "null pointer dereference").connState = function(_c:stdgo._internal.net.Net_conn.Conn, _cs:stdgo._internal.net.http.Http_connstate.ConnState):Void {
            var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
            try {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L319"
                (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
                {
                    final __f__ = (@:checkr _s ?? throw "null pointer dereference")._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L322"
                {
                    final __value__ = _cs;
                    if (__value__ == ((0 : stdgo._internal.net.http.Http_connstate.ConnState))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L324"
                        {
                            var __tmp__ = ((@:checkr _s ?? throw "null pointer dereference")._conns != null && (@:checkr _s ?? throw "null pointer dereference")._conns.__exists__(_c) ? { _0 : (@:checkr _s ?? throw "null pointer dereference")._conns[_c], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_connstate.ConnState), _1 : false }), __208:stdgo._internal.net.http.Http_connstate.ConnState = __tmp__._0, _exists:Bool = __tmp__._1;
                            if (_exists) {
                                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L325"
                                throw stdgo.Go.toInterface(("invalid state transition" : stdgo.GoString));
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L327"
                        if ((@:checkr _s ?? throw "null pointer dereference")._conns == null) {
                            (@:checkr _s ?? throw "null pointer dereference")._conns = (({
                                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState>();
                                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.net.Net_conn.Conn", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                                x.__defaultValue__ = () -> ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_connstate.ConnState);
                                {};
                                cast x;
                            } : stdgo.GoMap<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState>) : stdgo.GoMap<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState>);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L332"
                        (@:checkr _s ?? throw "null pointer dereference")._wg.add((1 : stdgo.GoInt));
                        (@:checkr _s ?? throw "null pointer dereference")._conns[_c] = _cs;
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L334"
                        if ((@:checkr _s ?? throw "null pointer dereference")._closed) {
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L339"
                            _s._closeConn(_c);
                        };
                    } else if (__value__ == ((1 : stdgo._internal.net.http.Http_connstate.ConnState))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L342"
                        {
                            var __tmp__ = ((@:checkr _s ?? throw "null pointer dereference")._conns != null && (@:checkr _s ?? throw "null pointer dereference")._conns.__exists__(_c) ? { _0 : (@:checkr _s ?? throw "null pointer dereference")._conns[_c], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_connstate.ConnState), _1 : false }), _oldState:stdgo._internal.net.http.Http_connstate.ConnState = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L343"
                                if (((_oldState != (0 : stdgo._internal.net.http.Http_connstate.ConnState)) && (_oldState != (2 : stdgo._internal.net.http.Http_connstate.ConnState)) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L344"
                                    throw stdgo.Go.toInterface(("invalid state transition" : stdgo.GoString));
                                };
                                (@:checkr _s ?? throw "null pointer dereference")._conns[_c] = _cs;
                            };
                        };
                    } else if (__value__ == ((2 : stdgo._internal.net.http.Http_connstate.ConnState))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L349"
                        {
                            var __tmp__ = ((@:checkr _s ?? throw "null pointer dereference")._conns != null && (@:checkr _s ?? throw "null pointer dereference")._conns.__exists__(_c) ? { _0 : (@:checkr _s ?? throw "null pointer dereference")._conns[_c], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_connstate.ConnState), _1 : false }), _oldState:stdgo._internal.net.http.Http_connstate.ConnState = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L350"
                                if (_oldState != ((1 : stdgo._internal.net.http.Http_connstate.ConnState))) {
                                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L351"
                                    throw stdgo.Go.toInterface(("invalid state transition" : stdgo.GoString));
                                };
                                (@:checkr _s ?? throw "null pointer dereference")._conns[_c] = _cs;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L355"
                        if ((@:checkr _s ?? throw "null pointer dereference")._closed) {
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L356"
                            _s._closeConn(_c);
                        };
                    } else if (__value__ == ((3 : stdgo._internal.net.http.Http_connstate.ConnState)) || __value__ == ((4 : stdgo._internal.net.http.Http_connstate.ConnState))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L361"
                        {
                            var __tmp__ = ((@:checkr _s ?? throw "null pointer dereference")._conns != null && (@:checkr _s ?? throw "null pointer dereference")._conns.__exists__(_c) ? { _0 : (@:checkr _s ?? throw "null pointer dereference")._conns[_c], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_connstate.ConnState), _1 : false }), __208:stdgo._internal.net.http.Http_connstate.ConnState = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L362"
                                if ((@:checkr _s ?? throw "null pointer dereference")._conns != null) (@:checkr _s ?? throw "null pointer dereference")._conns.__remove__(_c);
                                {
                                    final __f__ = (@:checkr _s ?? throw "null pointer dereference")._wg.done;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                                };
                            };
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L368"
                if (_oldHook != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L369"
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
                    return;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _goServe( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> = _s;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L307"
        (@:checkr _s ?? throw "null pointer dereference")._wg.add((1 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L308"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    {
                        final __f__ = (@:checkr _s ?? throw "null pointer dereference")._wg.done;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L310"
                    (@:checkr _s ?? throw "null pointer dereference").config.serve((@:checkr _s ?? throw "null pointer dereference").listener);
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
                        return;
                    };
                };
            };
            a();
        }));
    }
    @:keep
    @:tdfield
    static public function client( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>):stdgo.Ref<stdgo._internal.net.http.Http_client.Client> {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> = _s;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L303"
        return (@:checkr _s ?? throw "null pointer dereference")._client;
    }
    @:keep
    @:tdfield
    static public function certificate( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>):stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> = _s;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L296"
        return (@:checkr _s ?? throw "null pointer dereference")._certificate;
    }
    @:keep
    @:tdfield
    static public function closeClientConnections( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L267"
            (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            var _nconn = ((@:checkr _s ?? throw "null pointer dereference")._conns.length : stdgo.GoInt);
            var _ch = (new stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_t__struct_0.T__struct_0>((_nconn : stdgo.GoInt).toBasic(), () -> ({  } : stdgo._internal.net.http.httptest.Httptest_t__struct_0.T__struct_0)) : stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_t__struct_0.T__struct_0>);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L270"
            for (_c => _ in (@:checkr _s ?? throw "null pointer dereference")._conns) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L271"
                {
                    final __tmp__0 = _c;
final __tmp__1 = _ch;
                    stdgo.Go.routine(() -> _s._closeConnChan(__tmp__0, __tmp__1));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L273"
            (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
            var _timer = stdgo._internal.time.Time_newtimer.newTimer((5000000000i64 : stdgo._internal.time.Time_duration.Duration));
            {
                final __f__ = _timer.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L283"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _nconn : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L284"
                    {
                        var __select__ = true;
                        var __c__0 = null;
var __c__1 = null;
                        while (__select__) {
                            if ({
                                if (__c__0 == null) {
                                    __c__0 = _ch;
                                };
                                __c__0 != null && __c__0.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__0.__get__();
                                    {};
                                };
                            } else if ({
                                if (__c__1 == null) {
                                    __c__1 = (@:checkr _timer ?? throw "null pointer dereference").c;
                                };
                                __c__1 != null && __c__1.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__1.__get__();
                                    {
                                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L288"
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
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
__c__1.__reset__();
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _logCloseHangDebugInfo( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L255"
            (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _s ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L258"
            _buf.writeString(("httptest.Server blocked in Close after 5 seconds, waiting for connections:\n" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L259"
            for (_c => _st in (@:checkr _s ?? throw "null pointer dereference")._conns) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L260"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("  %T %p %v in state %v\n" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_c.remoteAddr()), stdgo.Go.toInterface(stdgo.Go.asInterface(_st)));
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L262"
            stdgo._internal.log.Log_print.print(stdgo.Go.toInterface((_buf.string() : stdgo.GoString)));
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function close( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L203"
            (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L204"
            if (!(@:checkr _s ?? throw "null pointer dereference")._closed) {
                (@:checkr _s ?? throw "null pointer dereference")._closed = true;
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L206"
                (@:checkr _s ?? throw "null pointer dereference").listener.close();
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L207"
                (@:checkr _s ?? throw "null pointer dereference").config.setKeepAlivesEnabled(false);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L208"
                for (_c => _st in (@:checkr _s ?? throw "null pointer dereference")._conns) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L227"
                    if (((_st == (2 : stdgo._internal.net.http.Http_connstate.ConnState)) || (_st == (0 : stdgo._internal.net.http.Http_connstate.ConnState)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L228"
                        _s._closeConn(_c);
                    };
                };
                var _t = stdgo._internal.time.Time_afterfunc.afterFunc((5000000000i64 : stdgo._internal.time.Time_duration.Duration), _s._logCloseHangDebugInfo);
                {
                    final __f__ = _t.stop;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L235"
            (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L240"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.net.http.Http_defaulttransport.defaultTransport) : stdgo._internal.net.http.httptest.Httptest_t_closeidletransport.T_closeIdleTransport)) : stdgo._internal.net.http.httptest.Httptest_t_closeidletransport.T_closeIdleTransport), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.net.http.httptest.Httptest_t_closeidletransport.T_closeIdleTransport), _1 : false };
                }, _t = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L241"
                    _t.closeIdleConnections();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L245"
            if (({
                final value = (@:checkr _s ?? throw "null pointer dereference")._client;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L246"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (@:checkr _s ?? throw "null pointer dereference")._client ?? throw "null pointer dereference").transport) : stdgo._internal.net.http.httptest.Httptest_t_closeidletransport.T_closeIdleTransport)) : stdgo._internal.net.http.httptest.Httptest_t_closeidletransport.T_closeIdleTransport), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.net.http.httptest.Httptest_t_closeidletransport.T_closeIdleTransport), _1 : false };
                    }, _t = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L247"
                        _t.closeIdleConnections();
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L251"
            (@:checkr _s ?? throw "null pointer dereference")._wg.wait_();
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function startTLS( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> = _s;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L143"
        if ((@:checkr _s ?? throw "null pointer dereference").uRL != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L144"
            throw stdgo.Go.toInterface(("Server already started" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L146"
        if (({
            final value = (@:checkr _s ?? throw "null pointer dereference")._client;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _s ?? throw "null pointer dereference")._client = (stdgo.Go.setRef(({ transport : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_transport.Transport() : stdgo._internal.net.http.Http_transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>)) } : stdgo._internal.net.http.Http_client.Client)) : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>);
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls_x509keypair.x509KeyPair(stdgo._internal.net.http.internal.testcert.Testcert_localhostcert.localhostCert, stdgo._internal.net.http.internal.testcert.Testcert_localhostkey.localhostKey), _cert:stdgo._internal.crypto.tls.Tls_certificate.Certificate = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L150"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L151"
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("httptest: NewTLSServer: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
        };
        var _existingConfig = (@:checkr _s ?? throw "null pointer dereference").tLS;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L155"
        if (({
            final value = _existingConfig;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _s ?? throw "null pointer dereference").tLS = _existingConfig.clone();
        } else {
            (@:checkr _s ?? throw "null pointer dereference").tLS = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L160"
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference").tLS ?? throw "null pointer dereference").nextProtos == null) {
            var _nextProtos = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("http/1.1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L162"
            if ((@:checkr _s ?? throw "null pointer dereference").enableHTTP2) {
                _nextProtos = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("h2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            (@:checkr (@:checkr _s ?? throw "null pointer dereference").tLS ?? throw "null pointer dereference").nextProtos = _nextProtos;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L167"
        if (((@:checkr (@:checkr _s ?? throw "null pointer dereference").tLS ?? throw "null pointer dereference").certificates.length) == ((0 : stdgo.GoInt))) {
            (@:checkr (@:checkr _s ?? throw "null pointer dereference").tLS ?? throw "null pointer dereference").certificates = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_certificate.Certificate>(1, 1, ...[_cert?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_certificate.Certificate)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_certificate.Certificate>);
        };
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate((@:checkr (@:checkr _s ?? throw "null pointer dereference").tLS ?? throw "null pointer dereference").certificates[(0 : stdgo.GoInt)].certificate[(0 : stdgo.GoInt)]);
            (@:checkr _s ?? throw "null pointer dereference")._certificate = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L171"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L172"
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("httptest: NewTLSServer: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
        };
        var _certpool = stdgo._internal.crypto.x509.X509_newcertpool.newCertPool();
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L175"
        _certpool.addCert((@:checkr _s ?? throw "null pointer dereference")._certificate);
        (@:checkr (@:checkr _s ?? throw "null pointer dereference")._client ?? throw "null pointer dereference").transport = stdgo.Go.asInterface((stdgo.Go.setRef(({ tLSClientConfig : (stdgo.Go.setRef(({ rootCAs : _certpool } : stdgo._internal.crypto.tls.Tls_config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>), forceAttemptHTTP2 : (@:checkr _s ?? throw "null pointer dereference").enableHTTP2 } : stdgo._internal.net.http.Http_transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>));
        (@:checkr _s ?? throw "null pointer dereference").listener = stdgo._internal.crypto.tls.Tls_newlistener.newListener((@:checkr _s ?? throw "null pointer dereference").listener, (@:checkr _s ?? throw "null pointer dereference").tLS);
        (@:checkr _s ?? throw "null pointer dereference").uRL = (("https://" : stdgo.GoString) + ((@:checkr _s ?? throw "null pointer dereference").listener.addr().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L184"
        _s._wrap();
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L185"
        _s._goServe();
    }
    @:keep
    @:tdfield
    static public function start( _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server> = _s;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L126"
        if ((@:checkr _s ?? throw "null pointer dereference").uRL != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L127"
            throw stdgo.Go.toInterface(("Server already started" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L129"
        if (({
            final value = (@:checkr _s ?? throw "null pointer dereference")._client;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _s ?? throw "null pointer dereference")._client = (stdgo.Go.setRef(({ transport : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_transport.Transport() : stdgo._internal.net.http.Http_transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>)) } : stdgo._internal.net.http.Http_client.Client)) : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>);
        };
        (@:checkr _s ?? throw "null pointer dereference").uRL = (("http://" : stdgo.GoString) + ((@:checkr _s ?? throw "null pointer dereference").listener.addr().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L133"
        _s._wrap();
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L134"
        _s._goServe();
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L135"
        if (stdgo._internal.net.http.httptest.Httptest__serveflag._serveFlag != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L136"
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.toInterface(("httptest: serving on" : stdgo.GoString)), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").uRL));
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L137"
            @:null_select {};
        };
    }
}

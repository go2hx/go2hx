package stdgo._internal.net.http.fcgi;
function serve(_l:stdgo._internal.net.Net_listener.Listener, _handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L340"
            if (_l == null) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.net.Net_filelistener.fileListener(stdgo._internal.os.Os_stdin.stdin);
                    _l = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L343"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L344"
                    return _err;
                };
                {
                    final __f__ = _l.close;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L348"
            if (_handler == null) {
                _handler = stdgo.Go.asInterface(stdgo._internal.net.http.Http_defaultservemux.defaultServeMux);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L351"
            while (true) {
                var __tmp__ = _l.accept(), _rw:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L353"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L354"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
                var _c = stdgo._internal.net.http.fcgi.Fcgi__newchild._newChild(_rw, _handler);
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L357"
                {
                    {};
                    stdgo.Go.routine(() -> _c._serve());
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }

package stdgo._internal.net.http.fcgi;
function serve(_l:stdgo._internal.net.Net_Listener.Listener, _handler:stdgo._internal.net.http.Http_Handler.Handler):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (_l == null) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.net.Net_fileListener.fileListener(stdgo._internal.os.Os_stdin.stdin);
                    _l = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
                {
                    final __f__ = _l.close;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            if (_handler == null) {
                _handler = stdgo.Go.asInterface(stdgo._internal.net.http.Http_defaultServeMux.defaultServeMux);
            };
            while (true) {
                var __tmp__ = _l.accept(), _rw:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
                var _c = stdgo._internal.net.http.fcgi.Fcgi__newChild._newChild(_rw, _handler);
                stdgo.Go.routine(() -> @:check2r _c._serve());
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
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
                if (defer.ran) continue;
                defer.ran = true;
                defer.f();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }

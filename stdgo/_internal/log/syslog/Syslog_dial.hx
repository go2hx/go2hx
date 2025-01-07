package stdgo._internal.log.syslog;
function dial(_network:stdgo.GoString, _raddr:stdgo.GoString, _priority:stdgo._internal.log.syslog.Syslog_Priority.Priority, _tag:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (((_priority < (0 : stdgo._internal.log.syslog.Syslog_Priority.Priority) : Bool) || (_priority > (191 : stdgo._internal.log.syslog.Syslog_Priority.Priority) : Bool) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("log/syslog: invalid priority" : stdgo.GoString)) };
            };
            if (_tag == (stdgo.Go.str())) {
                _tag = stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__();
            };
            var __tmp__ = stdgo._internal.os.Os_hostname.hostname(), _hostname:stdgo.GoString = __tmp__._0, __4:stdgo.Error = __tmp__._1;
            var _w = (stdgo.Go.setRef(({ _priority : _priority, _tag : _tag?.__copy__(), _hostname : _hostname?.__copy__(), _network : _network?.__copy__(), _raddr : _raddr?.__copy__() } : stdgo._internal.log.syslog.Syslog_Writer.Writer)) : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>);
            @:check2 (@:checkr _w ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _w ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _err = (@:check2r _w._connect() : stdgo.Error);
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>; var _1 : stdgo.Error; } = { _0 : _w, _1 : _err };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>), _1 : (null : stdgo.Error) };
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.Ref<stdgo._internal.log.syslog.Syslog_Writer.Writer>), _1 : (null : stdgo.Error) };
            };
        };
    }

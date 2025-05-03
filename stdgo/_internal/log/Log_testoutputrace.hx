package stdgo._internal.log;
function testOutputRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt));
        var _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L113"
        _wg.add((100 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L114"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L115"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                        try {
                            {
                                final __f__ = _wg.done;
                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
                            };
                            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L117"
                            _l.setFlags((0 : stdgo.GoInt));
                            //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L118"
                            _l.output((0 : stdgo.GoInt), (stdgo.Go.str() : stdgo.GoString).__copy__());
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
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L121"
        _wg.wait_();
    }

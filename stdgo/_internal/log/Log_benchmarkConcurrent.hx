package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.runtime.Runtime;
function benchmarkConcurrent(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((new stdgo._internal.log.Log_T_discard.T_discard() : stdgo._internal.log.Log_T_discard.T_discard)), ("prefix: " : stdgo.GoString), (79 : stdgo.GoInt));
        var _group:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        {
            var _i = (stdgo._internal.runtime.Runtime_numCPU.numCPU() : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2 _group.add((1 : stdgo.GoInt));
stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                        try {
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                                    @:check2r _l.output((0 : stdgo.GoInt), ("hello, world!" : stdgo.GoString));
                                    _i++;
                                };
                            };
                            {
                                final __f__ = @:check2 _group.done;
                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
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
                    a();
                }));
                _i--;
            };
        };
        @:check2 _group.wait_();
    }

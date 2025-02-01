package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
function runFuzzWorker(_ctx:stdgo._internal.context.Context_Context.Context, _fn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry -> stdgo.Error):stdgo.Error {
        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__getWorkerComm._getWorkerComm(), _comm:stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var _srv = (stdgo.Go.setRef(({ _workerComm : _comm?.__copy__(), _fuzzFn : function(_e:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry):{ var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; } {
            var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
            try {
                var _timer = stdgo._internal.time.Time_afterFunc.afterFunc((10000000000i64 : stdgo._internal.time.Time_Duration.Duration), function():Void {
                    throw stdgo.Go.toInterface(("deadlocked!" : stdgo.GoString));
                });
                {
                    final __f__ = @:check2r _timer.stop;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
                var _err = (_fn(_e?.__copy__()) : stdgo.Error);
                {
                    final __ret__:{ var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Error; } = { _0 : stdgo._internal.time.Time_since.since(_start?.__copy__()), _1 : _err };
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
                    if (stdgo.Go.recover_exception != null) {
                        final e = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        throw e;
                    };
                    return { _0 : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration), _1 : (null : stdgo.Error) };
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
                    return { _0 : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration), _1 : (null : stdgo.Error) };
                };
            };
        }, _m : stdgo._internal.internal.fuzz.Fuzz__newMutator._newMutator() } : stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer>);
        return @:check2r _srv._serve(_ctx);
    }

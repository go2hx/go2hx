package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testPanicRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.Macro.controlFlow({
            stdgo._internal.internal.testenv.Testenv_mustHaveGoRun.mustHaveGoRun(stdgo.Go.asInterface(_t));
            var __tmp__ = _internal.runtime_test.Runtime_test__buildTestProg._buildTestProg(_t, ("testprog" : stdgo.GoString)), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {};
            @:label("retry") {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    var __tmp__ = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(stdgo._internal.os.exec.Exec_command.command(_exe?.__copy__(), ("PanicRace" : stdgo.GoString))).combinedOutput(), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        _t.logf(("try %d: program exited successfully, should have failed" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)));
                        continue;
                    };
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        _t.logf(("try %d:\n" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)));
                    };
                    _t.logf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_got));
                    var _wants = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("panic: crash" : stdgo.GoString), ("PanicRace" : stdgo.GoString), ("created by " : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                    for (__20 => _want in _wants) {
                        if (!stdgo._internal.bytes.Bytes_contains.contains(_got, (_want : stdgo.Slice<stdgo.GoUInt8>))) {
                            _t.logf(("did not find expected string %q" : stdgo.GoString), stdgo.Go.toInterface(_want));
                            @:jump("retry") continue;
                        };
                    };
                    return;
                });
            };
            _t.errorf(("test ran %d times without producing expected output" : stdgo.GoString), stdgo.Go.toInterface((10 : stdgo.GoInt)));
        });
    }

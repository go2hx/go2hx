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
function testLockOSThreadTemplateThreadRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveGoRun.mustHaveGoRun(stdgo.Go.asInterface(_t));
        var __tmp__ = _internal.runtime_test.Runtime_test__buildTestProg._buildTestProg(_t, ("testprog" : stdgo.GoString)), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _iterations = (100 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _iterations = (5 : stdgo.GoInt);
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _iterations : Bool), _i++, {
                var _want = ("OK\n" : stdgo.GoString);
                var _output = (_internal.runtime_test.Runtime_test__runBuiltTestProg._runBuiltTestProg(_t, _exe?.__copy__(), ("LockOSThreadTemplateThreadRace" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                if (_output != (_want)) {
                    _t.fatalf(("run %d: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_output));
                };
            });
        };
    }

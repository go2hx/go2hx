package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testKillFindProcess(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.os_test.Os_test__testKillProcess._testKillProcess(_t, function(_p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>):Void {
            var __tmp__ = stdgo._internal.os.Os_findProcess.findProcess(_p.pid), _p2:stdgo.Ref<stdgo._internal.os.Os_Process.Process> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Failed to find test process: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = _p2.kill();
            if (_err != null) {
                _t.fatalf(("Failed to kill test process: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
    }

package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testKillStartProcess(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.os_test.Os_test__testKillProcess._testKillProcess(_t, function(_p:stdgo.Ref<stdgo._internal.os.Os_Process.Process>):Void {
            var _err = (_p.kill() : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("Failed to kill test process: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
    }

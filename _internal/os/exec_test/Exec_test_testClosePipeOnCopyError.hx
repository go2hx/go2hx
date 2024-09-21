package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testClosePipeOnCopyError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("yes" : stdgo.GoString));
        _cmd.stdout = stdgo.Go.asInterface((stdgo.Go.setRef(({} : _internal.os.exec_test.Exec_test_T_badWriter.T_badWriter)) : stdgo.Ref<_internal.os.exec_test.Exec_test_T_badWriter.T_badWriter>));
        var _err = (_cmd.run() : stdgo.Error);
        if (_err == null) {
            _t.errorf(("yes unexpectedly completed successfully" : stdgo.GoString));
        };
    }

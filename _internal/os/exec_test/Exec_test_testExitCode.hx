package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testExitCode(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("exit" : stdgo.GoString), ("42" : stdgo.GoString));
        _cmd.run();
        var _want = (42 : stdgo.GoInt);
        if (false) {
            _want = (1 : stdgo.GoInt);
        };
        var _got = (_cmd.processState.exitCode() : stdgo.GoInt);
        if (_want != (_got)) {
            _t.errorf(("ExitCode got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("/no-exist-executable" : stdgo.GoString));
        _cmd.run();
        _want = (2 : stdgo.GoInt);
        if (false) {
            _want = (1 : stdgo.GoInt);
        };
        _got = _cmd.processState.exitCode();
        if (_want != (_got)) {
            _t.errorf(("ExitCode got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("exit" : stdgo.GoString), ("255" : stdgo.GoString));
        _cmd.run();
        _want = (255 : stdgo.GoInt);
        if (false) {
            _want = (1 : stdgo.GoInt);
        };
        _got = _cmd.processState.exitCode();
        if (_want != (_got)) {
            _t.errorf(("ExitCode got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("cat" : stdgo.GoString));
        _cmd.run();
        _want = (0 : stdgo.GoInt);
        _got = _cmd.processState.exitCode();
        if (_want != (_got)) {
            _t.errorf(("ExitCode got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("cat" : stdgo.GoString));
        _want = (-1 : stdgo.GoInt);
        _got = _cmd.processState.exitCode();
        if (_want != (_got)) {
            _t.errorf(("ExitCode got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }

package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testOutputStderrCapture(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("stderrfail" : stdgo.GoString));
        var __tmp__ = _cmd.output(), __14:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : false };
        }, _ee = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.fatalf(("Output error type = %T; want ExitError" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _got = ((_ee.stderr : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _want = ("some stderr text\n" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("ExitError.Stderr = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }

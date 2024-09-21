package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testExitStatus(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var _cmd = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("exit" : stdgo.GoString), ("42" : stdgo.GoString));
        var _err = (_cmd.run() : stdgo.Error);
        var _want = ("exit status 42" : stdgo.GoString);
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("plan9" : stdgo.GoString))) {
                _want = stdgo._internal.fmt.Fmt_sprintf.sprintf(("exit status: \'%s %d: 42\'" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_base.base(_cmd.path?.__copy__())), stdgo.Go.toInterface(_cmd.processState.pid()))?.__copy__();
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : false };
            }, _werr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var _s = (_werr.error()?.__copy__() : stdgo.GoString);
                    if (_s != (_want)) {
                        _t.errorf(("from exit 42 got exit %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_want));
                    };
                };
            } else {
                _t.fatalf(("expected *exec.ExitError from exit 42; got %T: %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
            };
        };
    }

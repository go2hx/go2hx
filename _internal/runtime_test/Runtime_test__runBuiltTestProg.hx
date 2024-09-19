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
function _runBuiltTestProg(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _exe:stdgo.GoString, _name:stdgo.GoString, _env:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _env = new stdgo.Slice<stdgo.GoString>(_env.length, 0, ..._env);
        _t.helper();
        if (_internal.runtime_test.Runtime_test__flagQuick._flagQuick.value) {
            _t.skip(stdgo.Go.toInterface(("-quick" : stdgo.GoString)));
        };
        var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _cmd = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), _exe?.__copy__(), _name?.__copy__()));
        _cmd.env = (_cmd.env.__append__(...(_env : Array<stdgo.GoString>)));
        if (stdgo._internal.testing.Testing_short.short()) {
            _cmd.env = (_cmd.env.__append__(("RUNTIME_TEST_SHORT=1" : stdgo.GoString)));
        };
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.logf(("%v (%v): ok" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_since.since(_start?.__copy__()))));
        } else {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : false };
                }, __32 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _t.logf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_err));
                } else if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.exec.Exec_errWaitDelay.errWaitDelay)) {
                    _t.fatalf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_err));
                } else {
                    _t.fatalf(("%v failed to start: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_cmd)), stdgo.Go.toInterface(_err));
                };
            };
        };
        return (_out : stdgo.GoString)?.__copy__();
    }

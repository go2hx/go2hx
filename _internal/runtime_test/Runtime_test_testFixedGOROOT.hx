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
function testFixedGOROOT(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var __tmp__ = stdgo._internal.syscall.Syscall_getenv.getenv(("GOROOT" : stdgo.GoString)), _orig:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    {
                        var _a0 = ("GOROOT" : stdgo.GoString);
                        var _a1 = _orig;
                        __deferstack__.unshift(() -> stdgo._internal.syscall.Syscall_setenv.setenv(_a0?.__copy__(), _a1?.__copy__()));
                    };
                } else {
                    {
                        var _a0 = ("GOROOT" : stdgo.GoString);
                        __deferstack__.unshift(() -> stdgo._internal.syscall.Syscall_unsetenv.unsetenv(_a0?.__copy__()));
                    };
                };
            };
            var _envs = stdgo._internal.runtime.Runtime_envs.envs();
            var _oldenvs = ((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_envs : Array<stdgo.GoString>)));
            {
                var _a0 = _oldenvs;
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_setEnvs.setEnvs(_a0));
            };
            var _want = (stdgo._internal.runtime.Runtime_goroot.goroot()?.__copy__() : stdgo.GoString);
            stdgo._internal.runtime.Runtime_setEnvs.setEnvs(((_envs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>).__append__((("GOROOT=" : stdgo.GoString) + _want?.__copy__() : stdgo.GoString)?.__copy__())));
            {
                var _got = (stdgo._internal.runtime.Runtime_goroot.goroot()?.__copy__() : stdgo.GoString);
                if (_got != (_want)) {
                    _t.errorf(("initial runtime.GOROOT()=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            {
                var _err = (stdgo._internal.syscall.Syscall_setenv.setenv(("GOROOT" : stdgo.GoString), ("/os" : stdgo.GoString)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _got = (stdgo._internal.runtime.Runtime_goroot.goroot()?.__copy__() : stdgo.GoString);
                if (_got != (_want)) {
                    _t.errorf(("after setenv runtime.GOROOT()=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            {
                var _err = (stdgo._internal.syscall.Syscall_unsetenv.unsetenv(("GOROOT" : stdgo.GoString)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _got = (stdgo._internal.runtime.Runtime_goroot.goroot()?.__copy__() : stdgo.GoString);
                if (_got != (_want)) {
                    _t.errorf(("after unsetenv runtime.GOROOT()=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }

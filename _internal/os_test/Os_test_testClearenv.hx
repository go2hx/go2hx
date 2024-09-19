package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testClearenv(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            {};
            {
                var _a0 = stdgo._internal.os.Os_environ_.environ_();
                __deferstack__.unshift(() -> {
                    var a = function(_origEnv:stdgo.Slice<stdgo.GoString>):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            for (__0 => _pair in _origEnv) {
                                var _i = (stdgo._internal.strings.Strings_index.index((_pair.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("=" : stdgo.GoString)) + (1 : stdgo.GoInt) : stdgo.GoInt);
                                {
                                    var _err = (stdgo._internal.os.Os_setenv.setenv((_pair.__slice__(0, _i) : stdgo.GoString)?.__copy__(), (_pair.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo.Error);
                                    if (_err != null) {
                                        _t.errorf(("Setenv(%q, %q) failed during reset: %v" : stdgo.GoString), stdgo.Go.toInterface((_pair.__slice__(0, _i) : stdgo.GoString)), stdgo.Go.toInterface((_pair.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)), stdgo.Go.toInterface(_err));
                                    };
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
                    };
                    a(_a0);
                });
            };
            {
                var _err = (stdgo._internal.os.Os_setenv.setenv(("GO_TEST_CLEARENV" : stdgo.GoString), ("1" : stdgo.GoString)) : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("Setenv(%q, %q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(("GO_TEST_CLEARENV" : stdgo.GoString)), stdgo.Go.toInterface(("1" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = stdgo._internal.os.Os_lookupEnv.lookupEnv(("GO_TEST_CLEARENV" : stdgo.GoString)), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("Setenv(%q, %q) didn\'t set $%s" : stdgo.GoString), stdgo.Go.toInterface(("GO_TEST_CLEARENV" : stdgo.GoString)), stdgo.Go.toInterface(("1" : stdgo.GoString)), stdgo.Go.toInterface(("GO_TEST_CLEARENV" : stdgo.GoString)));
                };
            };
            stdgo._internal.os.Os_clearenv.clearenv();
            {
                var __tmp__ = stdgo._internal.os.Os_lookupEnv.lookupEnv(("GO_TEST_CLEARENV" : stdgo.GoString)), _val:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _t.errorf(("Clearenv() didn\'t clear $%s, remained with value %q" : stdgo.GoString), stdgo.Go.toInterface(("GO_TEST_CLEARENV" : stdgo.GoString)), stdgo.Go.toInterface(_val));
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

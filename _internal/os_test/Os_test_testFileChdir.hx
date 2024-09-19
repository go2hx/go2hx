package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testFileChdir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Getwd: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_chdir.chdir(_a0?.__copy__()));
            };
            var __tmp__ = stdgo._internal.os.Os_open.open(("." : stdgo.GoString)), _fd:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Open .: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _fd.close());
            {
                var _err = (stdgo._internal.os.Os_chdir.chdir(("/" : stdgo.GoString)) : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("Chdir /: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err = (_fd.chdir() : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("fd.Chdir: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _wdNew:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Getwd: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (!_internal.os_test.Os_test__equal._equal(_wdNew?.__copy__(), _wd?.__copy__())) {
                _t.fatalf(("fd.Chdir failed, got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_wdNew), stdgo.Go.toInterface(_wd));
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

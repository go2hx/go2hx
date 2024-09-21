package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testDevNullFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _devNullName:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_devNullName?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Open(%s): %v" : stdgo.GoString), stdgo.Go.toInterface(_devNullName), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.stat(), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Stat(%s): %v" : stdgo.GoString), stdgo.Go.toInterface(_devNullName), stdgo.Go.toInterface(_err));
            };
            _internal.os_test.Os_test__testDevNullFileInfo._testDevNullFileInfo(_t, ("f.Stat" : stdgo.GoString), _devNullName?.__copy__(), _fi);
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_devNullName?.__copy__());
                _fi = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Stat(%s): %v" : stdgo.GoString), stdgo.Go.toInterface(_devNullName), stdgo.Go.toInterface(_err));
            };
            _internal.os_test.Os_test__testDevNullFileInfo._testDevNullFileInfo(_t, ("Stat" : stdgo.GoString), _devNullName?.__copy__(), _fi);
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

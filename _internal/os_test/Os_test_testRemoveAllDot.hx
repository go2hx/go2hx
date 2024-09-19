package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRemoveAllDot(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _prevDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Could not get wd: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(stdgo.Go.str()?.__copy__(), ("TestRemoveAllDot-" : stdgo.GoString)), _tempDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Could not create TempDir: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _tempDir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            _err = stdgo._internal.os.Os_chdir.chdir(_tempDir?.__copy__());
            if (_err != null) {
                _t.fatalf(("Could not chdir to tempdir: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os_removeAll.removeAll(("." : stdgo.GoString));
            if (_err == null) {
                _t.errorf(("RemoveAll succeed to remove ." : stdgo.GoString));
            };
            _err = stdgo._internal.os.Os_chdir.chdir(_prevDir?.__copy__());
            if (_err != null) {
                _t.fatalf(("Could not chdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_prevDir), stdgo.Go.toInterface(_err));
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

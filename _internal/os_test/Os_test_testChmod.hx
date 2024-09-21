package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testChmod(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                _t.skip(stdgo.Go.toInterface(("Chmod is not supported on js" : stdgo.GoString)));
            };
            _t.parallel();
            var _f = _internal.os_test.Os_test__newFile._newFile(("TestChmod" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            var _fm = ((302u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            if (false) {
                _fm = (292u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            };
            {
                var _err = (stdgo._internal.os.Os_chmod.chmod(_f.name()?.__copy__(), _fm) : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("chmod %s %#o: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(stdgo.Go.asInterface(_fm)), stdgo.Go.toInterface(_err));
                };
            };
            _internal.os_test.Os_test__checkMode._checkMode(_t, _f.name()?.__copy__(), _fm);
            _fm = (83u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            if (false) {
                _fm = (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            };
            {
                var _err = (_f.chmod(_fm) : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("chmod %s %#o: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(stdgo.Go.asInterface(_fm)), stdgo.Go.toInterface(_err));
                };
            };
            _internal.os_test.Os_test__checkMode._checkMode(_t, _f.name()?.__copy__(), _fm);
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

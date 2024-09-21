package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testEvalSymlinksIsNotExist(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
            __deferstack__.unshift(() -> _internal.path.filepath_test.Filepath_test__chtmpdir._chtmpdir(_t)());
            var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(("notexist" : stdgo.GoString)), __0:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!stdgo._internal.os.Os_isNotExist.isNotExist(_err)) {
                _t.errorf(("expected the file is not found, got %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os_symlink.symlink(("notexist" : stdgo.GoString), ("link" : stdgo.GoString));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = ("link" : stdgo.GoString);
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(("link" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (!stdgo._internal.os.Os_isNotExist.isNotExist(_err)) {
                _t.errorf(("expected the file is not found, got %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
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

package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testEvalSymlinksAboveRootChdir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
            var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(stdgo.Go.str()?.__copy__(), ("TestEvalSymlinksAboveRootChdir" : stdgo.GoString)), _tmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            _internal.path.filepath_test.Filepath_test__chdir._chdir(_t, _tmpDir?.__copy__());
            var _subdir = (stdgo._internal.path.filepath.Filepath_join.join(("a" : stdgo.GoString), ("b" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_subdir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err = (stdgo._internal.os.Os_symlink.symlink(_subdir?.__copy__(), ("c" : stdgo.GoString)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err = (stdgo._internal.os.Os_writeFile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_subdir?.__copy__(), ("file" : stdgo.GoString))?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _subdir = stdgo._internal.path.filepath.Filepath_join.join(("d" : stdgo.GoString), ("e" : stdgo.GoString), ("f" : stdgo.GoString))?.__copy__();
            {
                var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_subdir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err = (stdgo._internal.os.Os_chdir.chdir(_subdir?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _check = (stdgo._internal.path.filepath.Filepath_join.join((".." : stdgo.GoString), (".." : stdgo.GoString), (".." : stdgo.GoString), ("c" : stdgo.GoString), ("file" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _wantSuffix = (stdgo._internal.path.filepath.Filepath_join.join(("a" : stdgo.GoString), ("b" : stdgo.GoString), ("file" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_check?.__copy__()), _resolved:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("EvalSymlinks(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_err));
                } else if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_resolved?.__copy__(), _wantSuffix?.__copy__())) {
                    _t.errorf(("EvalSymlinks(%q) = %q does not end with %q" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_resolved), stdgo.Go.toInterface(_wantSuffix));
                } else {
                    _t.logf(("EvalSymlinks(%q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_resolved));
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

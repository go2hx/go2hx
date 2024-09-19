package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRemoveAllButReadOnlyAndPathError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("js" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString)) || __value__ == (("windows" : stdgo.GoString))) {
                    _t.skipf(("skipping test on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
                };
            };
            if (stdgo._internal.os.Os_getuid.getuid() == ((0 : stdgo.GoInt))) {
                _t.skip(stdgo.Go.toInterface(("skipping test when running as root" : stdgo.GoString)));
            };
            _t.parallel();
            var _tempDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var _dirs = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("a" : stdgo.GoString), ("a/x" : stdgo.GoString), ("a/x/1" : stdgo.GoString), ("b" : stdgo.GoString), ("b/y" : stdgo.GoString), ("b/y/2" : stdgo.GoString), ("c" : stdgo.GoString), ("c/z" : stdgo.GoString), ("c/z/3" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _readonly = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _inReadonly = (function(_d:stdgo.GoString):Bool {
                for (__16 => _ro in _readonly) {
                    if (_d == (_ro)) {
                        return true;
                    };
                    var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(_d?.__copy__()), _dd:stdgo.GoString = __tmp__._0, __17:stdgo.GoString = __tmp__._1;
                    if (stdgo._internal.path.filepath.Filepath_clean.clean(_dd?.__copy__()) == (_ro)) {
                        return true;
                    };
                };
                return false;
            } : stdgo.GoString -> Bool);
            for (__16 => _dir in _dirs) {
                {
                    var _err = (stdgo._internal.os.Os_mkdir.mkdir(stdgo._internal.path.filepath.Filepath_join.join(_tempDir?.__copy__(), _dir?.__copy__())?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
            for (__17 => _dir in _readonly) {
                var _d = (stdgo._internal.path.filepath.Filepath_join.join(_tempDir?.__copy__(), _dir?.__copy__())?.__copy__() : stdgo.GoString);
                {
                    var _err = (stdgo._internal.os.Os_chmod.chmod(_d?.__copy__(), (365u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var _a0 = _d;
                    var _a1 = (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
                    __deferstack__.unshift(() -> stdgo._internal.os.Os_chmod.chmod(_a0?.__copy__(), _a1));
                };
            };
            var _err = (stdgo._internal.os.Os_removeAll.removeAll(_tempDir?.__copy__()) : stdgo.Error);
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("RemoveAll succeeded unexpectedly" : stdgo.GoString)));
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
                }, _pathErr = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    var _want = (stdgo._internal.path.filepath.Filepath_join.join(_tempDir?.__copy__(), ("b" : stdgo.GoString), ("y" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    if (_pathErr.path != (_want)) {
                        _t.errorf(("RemoveAll(%q): err.Path=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tempDir), stdgo.Go.toInterface(_pathErr.path), stdgo.Go.toInterface(_want));
                    };
                } else {
                    _t.errorf(("RemoveAll(%q): error has type %T, want *fs.PathError" : stdgo.GoString), stdgo.Go.toInterface(_tempDir), stdgo.Go.toInterface(_err));
                };
            };
            for (__18 => _dir in _dirs) {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(stdgo._internal.path.filepath.Filepath_join.join(_tempDir?.__copy__(), _dir?.__copy__())?.__copy__()), __19:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_inReadonly(_dir?.__copy__())) {
                    if (_err != null) {
                        _t.errorf(("file %q was deleted but should still exist" : stdgo.GoString), stdgo.Go.toInterface(_dir));
                    };
                } else {
                    if (_err == null) {
                        _t.errorf(("file %q still exists but should have been deleted" : stdgo.GoString), stdgo.Go.toInterface(_dir));
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
    }

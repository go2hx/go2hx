package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testMkdirAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _tmpDir = (stdgo._internal.os.Os_tempDir.tempDir()?.__copy__() : stdgo.GoString);
            var _path = ((_tmpDir + ("/_TestMkdirAll_/dir/./dir2" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = (_tmpDir + ("/_TestMkdirAll_" : stdgo.GoString)?.__copy__() : stdgo.GoString);
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            _err = stdgo._internal.os.Os_mkdirAll.mkdirAll(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
            if (_err != null) {
                _t.fatalf(("MkdirAll %q (second time): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
            var _fpath = ((_path + ("/file" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_create.create(_fpath?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            _err = stdgo._internal.os.Os_mkdirAll.mkdirAll(_fpath?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
            if (_err == null) {
                _t.fatalf(("MkdirAll %q: no error" : stdgo.GoString), stdgo.Go.toInterface(_fpath));
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
            }, _perr = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.fatalf(("MkdirAll %q returned %T, not *PathError" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
            };
            if (stdgo._internal.path.filepath.Filepath_clean.clean(_perr.path?.__copy__()) != (stdgo._internal.path.filepath.Filepath_clean.clean(_fpath?.__copy__()))) {
                _t.fatalf(("MkdirAll %q returned wrong error path: %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_clean.clean(_perr.path?.__copy__())), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_clean.clean(_fpath?.__copy__())));
            };
            var _ffpath = ((_fpath + ("/subdir" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            _err = stdgo._internal.os.Os_mkdirAll.mkdirAll(_ffpath?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
            if (_err == null) {
                _t.fatalf(("MkdirAll %q: no error" : stdgo.GoString), stdgo.Go.toInterface(_ffpath));
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
                };
                _perr = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (!_ok) {
                _t.fatalf(("MkdirAll %q returned %T, not *PathError" : stdgo.GoString), stdgo.Go.toInterface(_ffpath), stdgo.Go.toInterface(_err));
            };
            if (stdgo._internal.path.filepath.Filepath_clean.clean(_perr.path?.__copy__()) != (stdgo._internal.path.filepath.Filepath_clean.clean(_fpath?.__copy__()))) {
                _t.fatalf(("MkdirAll %q returned wrong error path: %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_ffpath), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_clean.clean(_perr.path?.__copy__())), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath_clean.clean(_fpath?.__copy__())));
            };
            if (false) {
                var _path = ((_tmpDir + ("\\_TestMkdirAll_\\dir\\.\\dir2\\" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
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

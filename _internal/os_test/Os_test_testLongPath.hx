package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testLongPath(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _tmpdir = (_internal.os_test.Os_test__newDir._newDir(("TestLongPath" : stdgo.GoString), _t)?.__copy__() : stdgo.GoString);
            {
                var _a0 = _tmpdir;
                __deferstack__.unshift(() -> {
                    var a = function(_d:stdgo.GoString):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            {
                                var _err = (stdgo._internal.os.Os_removeAll.removeAll(_d?.__copy__()) : stdgo.Error);
                                if (_err != null) {
                                    _t.fatalf(("RemoveAll failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
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
                    a(_a0?.__copy__());
                });
            };
            var _sizes = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(247 : stdgo.GoInt), (248 : stdgo.GoInt), (249 : stdgo.GoInt), (400 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            while (((_tmpdir.length) < (400 : stdgo.GoInt) : Bool)) {
                _tmpdir = (_tmpdir + (("/dir3456789" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            for (__8 => _sz in _sizes) {
                _t.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("length=%d" : stdgo.GoString), stdgo.Go.toInterface(_sz))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _sizedTempDir = (((_tmpdir.__slice__(0, (_sz - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) + ("x" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        {
                            var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_sizedTempDir?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                            if (_err != null) {
                                _t.fatalf(("MkdirAll failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
                        var _data = (("hello world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                        {
                            var _err = (stdgo._internal.os.Os_writeFile.writeFile((_sizedTempDir + ("/foo.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _data, (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                            if (_err != null) {
                                _t.fatalf(("os.WriteFile() failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
                        {
                            var _err = (stdgo._internal.os.Os_rename.rename((_sizedTempDir + ("/foo.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (_sizedTempDir + ("/bar.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                _t.fatalf(("Rename failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
                        var _mtime = (stdgo._internal.time.Time_now.now().truncate((60000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
                        {
                            var _err = (stdgo._internal.os.Os_chtimes.chtimes((_sizedTempDir + ("/bar.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _mtime?.__copy__(), _mtime?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                _t.fatalf(("Chtimes failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
                        var _names = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("bar.txt" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                        if (stdgo._internal.internal.testenv.Testenv_hasSymlink.hasSymlink()) {
                            {
                                var _err = (stdgo._internal.os.Os_symlink.symlink((_sizedTempDir + ("/bar.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (_sizedTempDir + ("/symlink.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Error);
                                if (_err != null) {
                                    _t.fatalf(("Symlink failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                };
                            };
                            _names = (_names.__append__(("symlink.txt" : stdgo.GoString)));
                        };
                        if (stdgo._internal.internal.testenv.Testenv_hasLink.hasLink()) {
                            {
                                var _err = (stdgo._internal.os.Os_link.link((_sizedTempDir + ("/bar.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (_sizedTempDir + ("/link.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Error);
                                if (_err != null) {
                                    _t.fatalf(("Link failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                };
                            };
                            _names = (_names.__append__(("link.txt" : stdgo.GoString)));
                        };
                        for (__17 => _wantSize in (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[(_data.length : stdgo.GoInt64), (0i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
                            for (__18 => _name in _names) {
                                var _path = (((_sizedTempDir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.fatalf(("Stat(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                                };
                                var _filesize = (_internal.os_test.Os_test__size._size(_path?.__copy__(), _t) : stdgo.GoInt64);
                                if (((_dir.size() != _filesize) || (_filesize != _wantSize) : Bool)) {
                                    _t.errorf(("Size(%q) is %d, len(ReadFile()) is %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_dir.size()), stdgo.Go.toInterface(_filesize), stdgo.Go.toInterface(_wantSize));
                                };
                                if (true) {
                                    _err = stdgo._internal.os.Os_chmod.chmod(_path?.__copy__(), _dir.mode());
                                    if (_err != null) {
                                        _t.fatalf(("Chmod(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                                    };
                                };
                            };
                            {
                                var _err = (stdgo._internal.os.Os_truncate.truncate((_sizedTempDir + ("/bar.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (0i64 : stdgo.GoInt64)) : stdgo.Error);
                                if (_err != null) {
                                    _t.fatalf(("Truncate failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
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
                });
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

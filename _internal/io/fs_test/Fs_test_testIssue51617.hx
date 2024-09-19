package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testIssue51617(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            for (__8 => _sub in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), stdgo._internal.path.filepath.Filepath_join.join(("a" : stdgo.GoString), ("bad" : stdgo.GoString))?.__copy__(), stdgo._internal.path.filepath.Filepath_join.join(("a" : stdgo.GoString), ("next" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                {
                    var _err = (stdgo._internal.os.Os_mkdir.mkdir(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _sub?.__copy__())?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
            var _bad = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("a" : stdgo.GoString), ("bad" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.os.Os_chmod.chmod(_bad?.__copy__(), (0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _bad;
                var _a1 = (448u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
                __deferstack__.unshift(() -> stdgo._internal.os.Os_chmod.chmod(_a0?.__copy__(), _a1));
            };
            var _saw:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _err = (stdgo._internal.io.fs.Fs_walkDir.walkDir(stdgo._internal.os.Os_dirFS.dirFS(_dir?.__copy__()), ("." : stdgo.GoString), function(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_DirEntry.DirEntry, _err:stdgo.Error):stdgo.Error {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (_err != null) {
                        {
                            final __ret__:stdgo.Error = stdgo._internal.path.filepath.Filepath_skipDir.skipDir;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    if (_d.isDir()) {
                        _saw = (_saw.__append__(_path?.__copy__()));
                    };
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return __ret__;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            }) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _want = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("." : stdgo.GoString), ("a" : stdgo.GoString), ("a/bad" : stdgo.GoString), ("a/next" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_saw), stdgo.Go.toInterface(_want))) {
                _t.errorf(("got directories %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_saw), stdgo.Go.toInterface(_want));
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

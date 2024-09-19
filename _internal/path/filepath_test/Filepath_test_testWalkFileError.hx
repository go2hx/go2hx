package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testWalkFileError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _td = (_t.tempDir()?.__copy__() : stdgo.GoString);
            _internal.path.filepath_test.Filepath_test__touch._touch(_t, stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("foo" : stdgo.GoString))?.__copy__());
            _internal.path.filepath_test.Filepath_test__touch._touch(_t, stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("bar" : stdgo.GoString))?.__copy__());
            var _dir = (stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(stdgo._internal.path.filepath.Filepath_join.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _internal.path.filepath_test.Filepath_test__touch._touch(_t, stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("baz" : stdgo.GoString))?.__copy__());
            _internal.path.filepath_test.Filepath_test__touch._touch(_t, stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("stat-error" : stdgo.GoString))?.__copy__());
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        stdgo._internal.path.filepath.Filepath_lstatP.lstatP = stdgo._internal.os.Os_lstat.lstat;
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
                a();
            });
            var _statErr = (stdgo._internal.errors.Errors_new_.new_(("some stat error" : stdgo.GoString)) : stdgo.Error);
            stdgo._internal.path.filepath.Filepath_lstatP.lstatP = function(_path:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_path?.__copy__(), ("stat-error" : stdgo.GoString))) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo), _1 : _statErr };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    {
                        final __ret__:{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } = stdgo._internal.os.Os_lstat.lstat(_path?.__copy__());
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        final __ret__:{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo), _1 : (null : stdgo.Error) };
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
                    final __ret__:{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo), _1 : (null : stdgo.Error) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            };
            var _got = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Error>();
                x.__defaultValue__ = () -> (null : stdgo.Error);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Error>);
            var _err = (stdgo._internal.path.filepath.Filepath_walk.walk(_td?.__copy__(), function(_path:stdgo.GoString, _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo, _err:stdgo.Error):stdgo.Error {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var __tmp__ = stdgo._internal.path.filepath.Filepath_rel.rel(_td?.__copy__(), _path?.__copy__()), _rel:stdgo.GoString = __tmp__._0, __8:stdgo.Error = __tmp__._1;
                    _got[stdgo._internal.path.filepath.Filepath_toSlash.toSlash(_rel?.__copy__())] = _err;
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
                _t.errorf(("Walk error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _want = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Error>();
                x.__defaultValue__ = () -> (null : stdgo.Error);
                x.set(("." : stdgo.GoString), (null : stdgo.Error));
x.set(("foo" : stdgo.GoString), (null : stdgo.Error));
x.set(("bar" : stdgo.GoString), (null : stdgo.Error));
x.set(("dir" : stdgo.GoString), (null : stdgo.Error));
x.set(("dir/baz" : stdgo.GoString), (null : stdgo.Error));
x.set(("dir/stat-error" : stdgo.GoString), _statErr);
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Error>);
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
                _t.errorf(("Walked %#v; want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
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

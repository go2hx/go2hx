package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _testWalk(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _walk:(stdgo.GoString, stdgo._internal.io.fs.Fs_WalkDirFunc.WalkDirFunc) -> stdgo.Error, _errVisit:stdgo.GoInt):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                var _restore = (_internal.path.filepath_test.Filepath_test__chtmpdir._chtmpdir(_t) : () -> Void);
                __deferstack__.unshift(() -> _restore());
            };
            var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _origDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("finding working dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                _err = stdgo._internal.os.Os_chdir.chdir(_tmpDir?.__copy__());
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(("entering temp dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _origDir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_chdir.chdir(_a0?.__copy__()));
            };
            _internal.path.filepath_test.Filepath_test__makeTree._makeTree(_t);
            var _errors = (new stdgo.Slice<stdgo.Error>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Error>);
            var _clear = (true : Bool);
            var _markFn = (function(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_DirEntry.DirEntry, _err:stdgo.Error):stdgo.Error {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    {
                        final __ret__:stdgo.Error = _internal.path.filepath_test.Filepath_test__mark._mark(_d, _err, (stdgo.Go.setRef(_errors) : stdgo.Ref<stdgo.Slice<stdgo.Error>>), _clear);
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
            } : (stdgo.GoString, stdgo._internal.io.fs.Fs_DirEntry.DirEntry, stdgo.Error) -> stdgo.Error);
            _err = _walk(_internal.path.filepath_test.Filepath_test__tree._tree._name?.__copy__(), _markFn);
            if (_err != null) {
                _t.fatalf(("no error expected, found: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if ((_errors.length) != ((0 : stdgo.GoInt))) {
                _t.fatalf(("unexpected errors: %s" : stdgo.GoString), stdgo.Go.toInterface(_errors));
            };
            _internal.path.filepath_test.Filepath_test__checkMarks._checkMarks(_t, true);
            _errors = (_errors.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Error>);
            _t.run(("PermErr" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (false) {
                        _t.skip(stdgo.Go.toInterface(("skipping on js" : stdgo.GoString)));
                    };
                    if (stdgo._internal.os.Os_getuid.getuid() == ((0 : stdgo.GoInt))) {
                        _t.skip(stdgo.Go.toInterface(("skipping as root" : stdgo.GoString)));
                    };
                    if (stdgo._internal.testing.Testing_short.short()) {
                        _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
                    };
                    stdgo._internal.os.Os_chmod.chmod(stdgo._internal.path.filepath.Filepath_join.join(_internal.path.filepath_test.Filepath_test__tree._tree._name?.__copy__(), _internal.path.filepath_test.Filepath_test__tree._tree._entries[(1 : stdgo.GoInt)]._name?.__copy__())?.__copy__(), (0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
                    stdgo._internal.os.Os_chmod.chmod(stdgo._internal.path.filepath.Filepath_join.join(_internal.path.filepath_test.Filepath_test__tree._tree._name?.__copy__(), _internal.path.filepath_test.Filepath_test__tree._tree._entries[(3 : stdgo.GoInt)]._name?.__copy__())?.__copy__(), (0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
                    _internal.path.filepath_test.Filepath_test__markTree._markTree(_internal.path.filepath_test.Filepath_test__tree._tree._entries[(1 : stdgo.GoInt)]);
                    _internal.path.filepath_test.Filepath_test__markTree._markTree(_internal.path.filepath_test.Filepath_test__tree._tree._entries[(3 : stdgo.GoInt)]);
                    _internal.path.filepath_test.Filepath_test__tree._tree._entries[(1 : stdgo.GoInt)]._mark = (_internal.path.filepath_test.Filepath_test__tree._tree._entries[(1 : stdgo.GoInt)]._mark - (_errVisit) : stdgo.GoInt);
                    _internal.path.filepath_test.Filepath_test__tree._tree._entries[(3 : stdgo.GoInt)]._mark = (_internal.path.filepath_test.Filepath_test__tree._tree._entries[(3 : stdgo.GoInt)]._mark - (_errVisit) : stdgo.GoInt);
                    var _err = (_walk(_internal.path.filepath_test.Filepath_test__tree._tree._name?.__copy__(), _markFn) : stdgo.Error);
                    if (_err != null) {
                        _t.fatalf(("expected no error return from Walk, got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                    if ((_errors.length) != ((2 : stdgo.GoInt))) {
                        _t.errorf(("expected 2 errors, got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_errors.length)), stdgo.Go.toInterface(_errors));
                    };
                    _internal.path.filepath_test.Filepath_test__checkMarks._checkMarks(_t, true);
                    _errors = (_errors.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Error>);
                    _internal.path.filepath_test.Filepath_test__markTree._markTree(_internal.path.filepath_test.Filepath_test__tree._tree._entries[(1 : stdgo.GoInt)]);
                    _internal.path.filepath_test.Filepath_test__markTree._markTree(_internal.path.filepath_test.Filepath_test__tree._tree._entries[(3 : stdgo.GoInt)]);
                    _internal.path.filepath_test.Filepath_test__tree._tree._entries[(1 : stdgo.GoInt)]._mark = (_internal.path.filepath_test.Filepath_test__tree._tree._entries[(1 : stdgo.GoInt)]._mark - (_errVisit) : stdgo.GoInt);
                    _internal.path.filepath_test.Filepath_test__tree._tree._entries[(3 : stdgo.GoInt)]._mark = (_internal.path.filepath_test.Filepath_test__tree._tree._entries[(3 : stdgo.GoInt)]._mark - (_errVisit) : stdgo.GoInt);
                    _clear = false;
                    _err = _walk(_internal.path.filepath_test.Filepath_test__tree._tree._name?.__copy__(), _markFn);
                    if (_err == null) {
                        _t.fatalf(("expected error return from Walk" : stdgo.GoString));
                    };
                    if ((_errors.length) != ((1 : stdgo.GoInt))) {
                        _t.errorf(("expected 1 error, got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_errors.length)), stdgo.Go.toInterface(_errors));
                    };
                    _internal.path.filepath_test.Filepath_test__checkMarks._checkMarks(_t, false);
                    _errors = (_errors.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Error>);
                    stdgo._internal.os.Os_chmod.chmod(stdgo._internal.path.filepath.Filepath_join.join(_internal.path.filepath_test.Filepath_test__tree._tree._name?.__copy__(), _internal.path.filepath_test.Filepath_test__tree._tree._entries[(1 : stdgo.GoInt)]._name?.__copy__())?.__copy__(), (504u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
                    stdgo._internal.os.Os_chmod.chmod(stdgo._internal.path.filepath.Filepath_join.join(_internal.path.filepath_test.Filepath_test__tree._tree._name?.__copy__(), _internal.path.filepath_test.Filepath_test__tree._tree._entries[(3 : stdgo.GoInt)]._name?.__copy__())?.__copy__(), (504u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
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

package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function exampleWalk():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = _internal.path.filepath_test.Filepath_test__prepareTestDirTree._prepareTestDirTree(("dir/to/walk/skip" : stdgo.GoString)), _tmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.fmt.Fmt_printf.printf(("unable to create test dir tree: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            stdgo._internal.os.Os_chdir.chdir(_tmpDir?.__copy__());
            var _subDirToSkip = ("skip" : stdgo.GoString);
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
            _err = stdgo._internal.path.filepath.Filepath_walk.walk(("." : stdgo.GoString), function(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo, _err:stdgo.Error):stdgo.Error {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (_err != null) {
                        stdgo._internal.fmt.Fmt_printf.printf(("prevent panic by handling failure accessing a path %q: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _err;
                        };
                    };
                    if ((_info.isDir() && (_info.name() == _subDirToSkip) : Bool)) {
                        stdgo._internal.fmt.Fmt_printf.printf(("skipping a dir without errors: %+v \n" : stdgo.GoString), stdgo.Go.toInterface(_info.name()));
                        {
                            final __ret__:stdgo.Error = stdgo._internal.path.filepath.Filepath_skipDir.skipDir;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    stdgo._internal.fmt.Fmt_printf.printf(("visited file or dir: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_path));
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
            });
            if (_err != null) {
                stdgo._internal.fmt.Fmt_printf.printf(("error walking the path %q: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir), stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
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

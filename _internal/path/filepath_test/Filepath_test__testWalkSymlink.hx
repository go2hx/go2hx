package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function _testWalkSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _mklink:(stdgo.GoString, stdgo.GoString) -> stdgo.Error):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_chdir.chdir(_a0?.__copy__()));
            };
            _err = stdgo._internal.os.Os_chdir.chdir(_tmpdir?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _err = _mklink(_tmpdir?.__copy__(), ("link" : stdgo.GoString));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _visited:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            _err = stdgo._internal.path.filepath.Filepath_walk.walk(_tmpdir?.__copy__(), function(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo, _err:stdgo.Error):stdgo.Error {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    var __tmp__ = stdgo._internal.path.filepath.Filepath_rel.rel(_tmpdir?.__copy__(), _path?.__copy__()), _rel:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    _visited = (_visited.__append__(_rel?.__copy__()));
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
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            stdgo._internal.sort.Sort_strings.strings(_visited);
            var _want = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("." : stdgo.GoString), ("link" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            if (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_visited)) != (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_want)))) {
                _t.errorf(("unexpected paths visited %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_visited), stdgo.Go.toInterface(_want));
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

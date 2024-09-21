package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _root = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("getwd failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os_chdir.chdir(_root?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("chdir failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_chdir.chdir(_a0?.__copy__()));
            };
            for (__8 => _dir in _internal.path.filepath_test.Filepath_test__absTestDirs._absTestDirs) {
                _err = stdgo._internal.os.Os_mkdir.mkdir(_dir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(("Mkdir failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            if (false) {
                var _vol = (stdgo._internal.path.filepath.Filepath_volumeName.volumeName(_root?.__copy__())?.__copy__() : stdgo.GoString);
                var _extra:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                for (__9 => _path in _internal.path.filepath_test.Filepath_test__absTests._absTests) {
                    if (stdgo._internal.strings.Strings_contains.contains(_path?.__copy__(), ("$" : stdgo.GoString))) {
                        continue;
                    };
                    _path = (_vol + _path?.__copy__() : stdgo.GoString)?.__copy__();
                    _extra = (_extra.__append__(_path?.__copy__()));
                };
                _internal.path.filepath_test.Filepath_test__absTests._absTests = (_internal.path.filepath_test.Filepath_test__absTests._absTests.__append__(...(_extra : Array<stdgo.GoString>)));
            };
            _err = stdgo._internal.os.Os_chdir.chdir(_internal.path.filepath_test.Filepath_test__absTestDirs._absTestDirs[(0 : stdgo.GoInt)]?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("chdir failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            for (__9 => _path in _internal.path.filepath_test.Filepath_test__absTests._absTests) {
                _path = stdgo._internal.strings.Strings_replaceAll.replaceAll(_path?.__copy__(), ("$" : stdgo.GoString), _root?.__copy__())?.__copy__();
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo._internal.path.filepath.Filepath_abs.abs(_path?.__copy__()), _abspath:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Abs(%q) error: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_abspath?.__copy__()), _absinfo:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) || !stdgo._internal.os.Os_sameFile.sameFile(_absinfo, _info) : Bool)) {
                    _t.errorf(("Abs(%q)=%q, not the same file" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_abspath));
                };
                if (!stdgo._internal.path.filepath.Filepath_isAbs.isAbs(_abspath?.__copy__())) {
                    _t.errorf(("Abs(%q)=%q, not an absolute path" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_abspath));
                };
                if ((stdgo._internal.path.filepath.Filepath_isAbs.isAbs(_abspath?.__copy__()) && (_abspath != stdgo._internal.path.filepath.Filepath_clean.clean(_abspath?.__copy__())) : Bool)) {
                    _t.errorf(("Abs(%q)=%q, isn\'t clean" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_abspath));
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

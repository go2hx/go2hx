package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testWindowsGlob(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skipf(("skipping windows specific test" : stdgo.GoString));
            };
            var _tmpDir = (_internal.path.filepath_test.Filepath_test__tempDirCanonical._tempDirCanonical(_t)?.__copy__() : stdgo.GoString);
            if (((_tmpDir.length) < (3 : stdgo.GoInt) : Bool)) {
                _t.fatalf(("tmpDir path %q is too short" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir));
            };
            if (_tmpDir[(1 : stdgo.GoInt)] != ((58 : stdgo.GoUInt8))) {
                _t.fatalf(("tmpDir path %q must have drive letter in it" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir));
            };
            var _dirs = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("dir/d/bin" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _files = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("dir/d/bin/git.exe" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (__0 => _dir in _dirs) {
                var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), _dir?.__copy__())?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            for (__1 => _file in _files) {
                var _err = (stdgo._internal.os.Os_writeFile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), _file?.__copy__())?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _tests = (new stdgo.Slice<_internal.path.filepath_test.Filepath_test_T_globTest.T_globTest>(10, 10, ...[(new _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest(("a" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest), (new _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest(("b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest), (new _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest(("c" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest), (new _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest(("*" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("dir" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest), (new _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest(("d*" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("dir" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest), (new _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest(("*i*" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("dir" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest), (new _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest(("*r" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("dir" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest), (new _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest(("?ir" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("dir" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest), (new _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest(("?r" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest), (new _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest(("d*/*/bin/git.exe" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("dir/d/bin/git.exe" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({} : _internal.path.filepath_test.Filepath_test_T_globTest.T_globTest)])) : stdgo.Slice<_internal.path.filepath_test.Filepath_test_T_globTest.T_globTest>);
            for (__2 => _test in _tests) {
                var _p:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var _err = (_test._globAbs(_tmpDir?.__copy__(), _tmpDir?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
                _p = _tmpDir?.__copy__();
                _p = stdgo._internal.strings.Strings_replace.replace(_p?.__copy__(), (":\\" : stdgo.GoString), (":\\*" : stdgo.GoString), (1 : stdgo.GoInt))?.__copy__();
                {
                    var _err = (_test._globAbs(_tmpDir?.__copy__(), _p?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
                _p = _tmpDir?.__copy__();
                _p = stdgo._internal.strings.Strings_replace.replace(_p?.__copy__(), (":\\" : stdgo.GoString), (":" : stdgo.GoString), (1 : stdgo.GoInt))?.__copy__();
                _p = stdgo._internal.strings.Strings_replace.replace(_p?.__copy__(), ("\\" : stdgo.GoString), ("*\\" : stdgo.GoString), (1 : stdgo.GoInt))?.__copy__();
                _p = stdgo._internal.strings.Strings_replace.replace(_p?.__copy__(), (":" : stdgo.GoString), (":\\" : stdgo.GoString), (1 : stdgo.GoInt))?.__copy__();
                {
                    var _err = (_test._globAbs(_tmpDir?.__copy__(), _p?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
            };
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os_chdir.chdir(_tmpDir?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _err = (stdgo._internal.os.Os_chdir.chdir(_wd?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            _t.fatal(stdgo.Go.toInterface(_err));
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
                a();
            });
            for (__3 => _test in _tests) {
                var _err = (_test._globRel(stdgo.Go.str()?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
                _err = _test._globRel((".\\" : stdgo.GoString));
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
                _err = _test._globRel((_tmpDir.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
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

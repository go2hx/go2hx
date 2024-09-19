package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testLookPath(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
            var _tmpDir = (stdgo._internal.path.filepath.Filepath_join.join(_t.tempDir()?.__copy__(), ("testdir" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.os.Os_mkdir.mkdir(_tmpDir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _executable = ("execabs-test" : stdgo.GoString);
            if (false) {
                _executable = (_executable + ((".exe" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            {
                var _err = (stdgo._internal.os.Os_writeFile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), _executable?.__copy__())?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _err = (stdgo._internal.os.Os_chdir.chdir(_cwd?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                throw stdgo.Go.toInterface(_err);
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
                a();
            });
            {
                _err = stdgo._internal.os.Os_chdir.chdir(_tmpDir?.__copy__());
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _t.setenv(("PWD" : stdgo.GoString), _tmpDir?.__copy__());
            _t.logf((". is %#q" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir));
            var _origPath = (stdgo._internal.os.Os_getenv.getenv(_internal.os.exec_test.Exec_test__pathVar._pathVar?.__copy__())?.__copy__() : stdgo.GoString);
            for (__24 => _errdot in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("1" : stdgo.GoString), ("0" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                _t.run((("GODEBUG=execerrdot=" : stdgo.GoString) + _errdot?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _t.setenv(("GODEBUG" : stdgo.GoString), ((("execerrdot=" : stdgo.GoString) + _errdot?.__copy__() : stdgo.GoString) + (",execwait=2" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        for (__41 => _dir in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("." : stdgo.GoString), ("../testdir" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                            _t.run(((_internal.os.exec_test.Exec_test__pathVar._pathVar + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _dir?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    _t.setenv(_internal.os.exec_test.Exec_test__pathVar._pathVar?.__copy__(), ((_dir + ((58 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString) + _origPath?.__copy__() : stdgo.GoString)?.__copy__());
                                    var _good = ((_dir + ("/execabs-test" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                    {
                                        var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(_good?.__copy__()), _found:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                        if (((_err != null) || !stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_found?.__copy__(), _good?.__copy__()) : Bool)) {
                                            _t.fatalf(("LookPath(%#q) = %#q, %v, want \"%s...\", nil" : stdgo.GoString), stdgo.Go.toInterface(_good), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_good));
                                        };
                                    };
                                    if (false) {
                                        _good = (_dir + ("\\execabs-test" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                        {
                                            var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(_good?.__copy__()), _found:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (((_err != null) || !stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_found?.__copy__(), _good?.__copy__()) : Bool)) {
                                                _t.fatalf(("LookPath(%#q) = %#q, %v, want \"%s...\", nil" : stdgo.GoString), stdgo.Go.toInterface(_good), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_good));
                                            };
                                        };
                                    };
                                    var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(("execabs-test" : stdgo.GoString)), __58:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    if (_errdot == (("1" : stdgo.GoString))) {
                                        if (_err == null) {
                                            _t.fatalf(("LookPath didn\'t fail when finding a non-relative path" : stdgo.GoString));
                                        } else if (!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.exec.Exec_errDot.errDot)) {
                                            _t.fatalf(("LookPath returned unexpected error: want Is ErrDot, got %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                        };
                                    } else {
                                        if (_err != null) {
                                            _t.fatalf(("LookPath failed unexpectedly: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                        };
                                    };
                                    var _cmd = stdgo._internal.os.exec.Exec_command.command(("execabs-test" : stdgo.GoString));
                                    if (_errdot == (("1" : stdgo.GoString))) {
                                        if (_cmd.err == null) {
                                            _t.fatalf(("Command didn\'t fail when finding a non-relative path" : stdgo.GoString));
                                        } else if (!stdgo._internal.errors.Errors_is_.is_(_cmd.err, stdgo._internal.os.exec.Exec_errDot.errDot)) {
                                            _t.fatalf(("Command returned unexpected error: want Is ErrDot, got %q" : stdgo.GoString), stdgo.Go.toInterface(_cmd.err));
                                        };
                                        _cmd.err = (null : stdgo.Error);
                                    } else {
                                        if (_cmd.err != null) {
                                            _t.fatalf(("Command failed unexpectedly: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                        };
                                    };
                                    {
                                        var _err = (_cmd.run() : stdgo.Error);
                                        if (_err == null) {
                                            _t.fatalf(("Run did not fail: expected exec error" : stdgo.GoString));
                                        } else if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.exec.Exec_errDot.errDot)) {
                                            _t.fatalf(("Run returned unexpected error ErrDot: want error like ENOEXEC: %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
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
                });
            };
            _t.run((_internal.os.exec_test.Exec_test__pathVar._pathVar + ("=$PWD" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _t.setenv(_internal.os.exec_test.Exec_test__pathVar._pathVar?.__copy__(), ((_tmpDir + ((58 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString) + _origPath?.__copy__() : stdgo.GoString)?.__copy__());
                    var _good = (stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), ("execabs-test" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    {
                        var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(_good?.__copy__()), _found:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_err != null) || !stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_found?.__copy__(), _good?.__copy__()) : Bool)) {
                            _t.fatalf(("LookPath(%#q) = %#q, %v, want \\\"%s...\\\", nil" : stdgo.GoString), stdgo.Go.toInterface(_good), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_good));
                        };
                    };
                    {
                        var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(("execabs-test" : stdgo.GoString)), _found:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_err != null) || !stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_found?.__copy__(), _good?.__copy__()) : Bool)) {
                            _t.fatalf(("LookPath(%#q) = %#q, %v, want \\\"%s...\\\", nil" : stdgo.GoString), stdgo.Go.toInterface(("execabs-test" : stdgo.GoString)), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_good));
                        };
                    };
                    var _cmd = stdgo._internal.os.exec.Exec_command.command(("execabs-test" : stdgo.GoString));
                    if (_cmd.err != null) {
                        _t.fatalf(("Command(%#q).Err = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(("execabs-test" : stdgo.GoString)), stdgo.Go.toInterface(_cmd.err));
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
            _t.run((_internal.os.exec_test.Exec_test__pathVar._pathVar + ("=$OTHER" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _wantErrDot = (false : Bool);
                    _t.setenv(_internal.os.exec_test.Exec_test__pathVar._pathVar?.__copy__(), stdgo.Go.str()?.__copy__());
                    {
                        var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(("execabs-test" : stdgo.GoString)), _found:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.exec.Exec_errDot.errDot)) {
                            _wantErrDot = true;
                        } else if (_err == null) {
                            _t.fatalf(("with PATH=\'\', LookPath(%#q) = %#q; want non-nil error" : stdgo.GoString), stdgo.Go.toInterface(("execabs-test" : stdgo.GoString)), stdgo.Go.toInterface(_found));
                        };
                    };
                    var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
                    var _executable = ("execabs-test" : stdgo.GoString);
                    if (false) {
                        _executable = (_executable + ((".exe" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                    {
                        var _err = (stdgo._internal.os.Os_writeFile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _executable?.__copy__())?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                        if (_err != null) {
                            _t.fatal(stdgo.Go.toInterface(_err));
                        };
                    };
                    _t.setenv(_internal.os.exec_test.Exec_test__pathVar._pathVar?.__copy__(), ((_dir + ((58 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString) + _origPath?.__copy__() : stdgo.GoString)?.__copy__());
                    var __tmp__ = stdgo._internal.os.exec.Exec_lookPath.lookPath(("execabs-test" : stdgo.GoString)), _found:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_wantErrDot) {
                        var _wantFound = (stdgo._internal.path.filepath.Filepath_join.join(("." : stdgo.GoString), _executable?.__copy__())?.__copy__() : stdgo.GoString);
                        if (((_found != _wantFound) || !stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.exec.Exec_errDot.errDot) : Bool)) {
                            _t.fatalf(("LookPath(%#q) = %#q, %v, want %#q, Is ErrDot" : stdgo.GoString), stdgo.Go.toInterface(("execabs-test" : stdgo.GoString)), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantFound));
                        };
                    } else {
                        var _wantFound = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _executable?.__copy__())?.__copy__() : stdgo.GoString);
                        if (((_found != _wantFound) || (_err != null) : Bool)) {
                            _t.fatalf(("LookPath(%#q) = %#q, %v, want %#q, nil" : stdgo.GoString), stdgo.Go.toInterface(("execabs-test" : stdgo.GoString)), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantFound));
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

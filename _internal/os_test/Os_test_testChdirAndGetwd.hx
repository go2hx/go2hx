package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testChdirAndGetwd(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.os.Os_open.open(("." : stdgo.GoString)), _fd:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Open .: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _dirs = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("/" : stdgo.GoString), ("/usr/bin" : stdgo.GoString), ("/tmp" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString))) {
                _dirs = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("/system/bin" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            } else if (__value__ == (("plan9" : stdgo.GoString))) {
                _dirs = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/" : stdgo.GoString), ("/usr" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            } else if (__value__ == (("ios" : stdgo.GoString)) || __value__ == (("windows" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString))) {
                _dirs = (null : stdgo.Slice<stdgo.GoString>);
                for (__16 => _dir in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_t.tempDir()?.__copy__(), _t.tempDir()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalSymlinks.evalSymlinks(_dir?.__copy__());
                        _dir = __tmp__._0?.__copy__();
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _t.fatalf(("EvalSymlinks: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                    _dirs = (_dirs.__append__(_dir?.__copy__()));
                };
            };
        };
        var _oldwd = (stdgo._internal.os.Os_getenv.getenv(("PWD" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _mode = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_mode < (2 : stdgo.GoInt) : Bool), _mode++, {
                for (__0 => _d in _dirs) {
                    if (_mode == ((0 : stdgo.GoInt))) {
                        _err = stdgo._internal.os.Os_chdir.chdir(_d?.__copy__());
                    } else {
                        var __tmp__ = stdgo._internal.os.Os_open.open(_d?.__copy__()), _fd1:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                        if (_err1 != null) {
                            _t.errorf(("Open %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err1));
                            continue;
                        };
                        _err = _fd1.chdir();
                        _fd1.close();
                    };
                    if (_d == (("/tmp" : stdgo.GoString))) {
                        stdgo._internal.os.Os_setenv.setenv(("PWD" : stdgo.GoString), ("/tmp" : stdgo.GoString));
                    };
                    var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _pwd:stdgo.GoString = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                    stdgo._internal.os.Os_setenv.setenv(("PWD" : stdgo.GoString), _oldwd?.__copy__());
                    var _err2 = (_fd.chdir() : stdgo.Error);
                    if (_err2 != null) {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("fchdir back to dot failed: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_err2));
                        stdgo._internal.os.Os_exit.exit((1 : stdgo.GoInt));
                    };
                    if (_err != null) {
                        _fd.close();
                        _t.fatalf(("Chdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err));
                    };
                    if (_err1 != null) {
                        _fd.close();
                        _t.fatalf(("Getwd in %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err1));
                    };
                    if (!_internal.os_test.Os_test__equal._equal(_pwd?.__copy__(), _d?.__copy__())) {
                        _fd.close();
                        _t.fatalf(("Getwd returned %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_pwd), stdgo.Go.toInterface(_d));
                    };
                };
            });
        };
        _fd.close();
    }

package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testReaddirStatFailures(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("windows" : stdgo.GoString)) || __value__ == (("plan9" : stdgo.GoString))) {
                    _t.skipf(("skipping test on %v" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
                };
            };
            var _xerr:stdgo.Error = (null : stdgo.Error);
            stdgo._internal.os.Os_lstatP.lstatP = function(_path:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
                if (((_xerr != null) && stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_path?.__copy__(), ("x" : stdgo.GoString)) : Bool)) {
                    return { _0 : (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo), _1 : _xerr };
                };
                return stdgo._internal.os.Os_lstat.lstat(_path?.__copy__());
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        stdgo._internal.os.Os_lstatP.lstatP = stdgo._internal.os.Os_lstat.lstat;
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
            var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            _internal.os_test.Os_test__touch._touch(_t, stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("good1" : stdgo.GoString))?.__copy__());
            _internal.os_test.Os_test__touch._touch(_t, stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("x" : stdgo.GoString))?.__copy__());
            _internal.os_test.Os_test__touch._touch(_t, stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("good2" : stdgo.GoString))?.__copy__());
            var _readDir = (function():{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; } {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var __tmp__ = stdgo._internal.os.Os_open.open(_dir?.__copy__()), _d:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    __deferstack__.unshift(() -> _d.close());
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; } = _d.readdir((-1 : stdgo.GoInt));
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>), _1 : (null : stdgo.Error) };
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
                    final __ret__:{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>), _1 : (null : stdgo.Error) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            } : () -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>; var _1 : stdgo.Error; });
            var _mustReadDir = function(_testName:stdgo.GoString):stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo> {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var __tmp__ = _readDir(), _fis:stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("%s: Readdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_err));
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _fis;
                    };
                    {
                        final __ret__:stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo> = (null : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>);
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
                    final __ret__:stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo> = (null : stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            };
            var _names = function(_fis:stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>):stdgo.Slice<stdgo.GoString> {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _s = (new stdgo.Slice<stdgo.GoString>((_fis.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                    for (_i => _fi in _fis) {
                        _s[(_i : stdgo.GoInt)] = _fi.name()?.__copy__();
                    };
                    stdgo._internal.sort.Sort_strings.strings(_s);
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _s;
                    };
                    {
                        final __ret__:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
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
                    final __ret__:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            };
            {
                var __0 = _names(_mustReadDir(("initial readdir" : stdgo.GoString))), __1 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("good1" : stdgo.GoString), ("good2" : stdgo.GoString), ("x" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _want = __1, _got = __0;
                if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
                    _t.errorf(("initial readdir got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            _xerr = stdgo._internal.os.Os_errNotExist.errNotExist;
            {
                var __0 = _names(_mustReadDir(("with x disappearing" : stdgo.GoString))), __1 = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("good1" : stdgo.GoString), ("good2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _want = __1, _got = __0;
                if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
                    _t.errorf(("with x disappearing, got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            _xerr = stdgo._internal.errors.Errors_new_.new_(("some real error" : stdgo.GoString));
            {
                var __tmp__ = _readDir(), __8:stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_xerr))) {
                    _t.errorf(("with a non-ErrNotExist error, got error %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_xerr));
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

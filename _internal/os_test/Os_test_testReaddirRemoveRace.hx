package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testReaddirRemoveRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _oldStat = (stdgo._internal.os.Os_lstatP.lstatP : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; });
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        stdgo._internal.os.Os_lstatP.lstatP = _oldStat;
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
            stdgo._internal.os.Os_lstatP.lstatP = function(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_name?.__copy__(), ("some-file" : stdgo.GoString))) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo), _1 : stdgo._internal.os.Os_errNotExist.errNotExist };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    {
                        final __ret__:{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } = _oldStat(_name?.__copy__());
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
            var _dir = (_internal.os_test.Os_test__newDir._newDir(("TestReaddirRemoveRace" : stdgo.GoString), _t)?.__copy__() : stdgo.GoString);
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            {
                var _err = (stdgo._internal.os.Os_writeFile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("some-file" : stdgo.GoString))?.__copy__(), (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = stdgo._internal.os.Os_open.open(_dir?.__copy__()), _d:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _d.close());
            var __tmp__ = _d.readdir((2 : stdgo.GoInt)), _fis:stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_fis.length == (0 : stdgo.GoInt)) && (_err == null) : Bool)) {
                _t.fatal(stdgo.Go.toInterface(("Readdir = empty slice & err == nil" : stdgo.GoString)));
            };
            if (((_fis.length != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                _t.errorf(("Readdir = %d entries: %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface((_fis.length)), stdgo.Go.toInterface(_err));
                for (_i => _fi in _fis) {
                    _t.errorf(("  entry[%d]: %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_fi.name()), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
                };
                _t.failNow();
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

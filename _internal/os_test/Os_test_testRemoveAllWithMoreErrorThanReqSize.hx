package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRemoveAllWithMoreErrorThanReqSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.testing.Testing_short.short()) {
                _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
            };
            _t.parallel();
            var _tmpDir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var _path = (stdgo._internal.path.filepath.Filepath_join.join(_tmpDir?.__copy__(), ("_TestRemoveAllWithMoreErrorThanReqSize_" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.os.Os_mkdirAll.mkdirAll(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1025 : stdgo.GoInt) : Bool), _i++, {
                    var _fpath = (stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("file%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__())?.__copy__() : stdgo.GoString);
                    var __tmp__ = stdgo._internal.os.Os_create.create(_fpath?.__copy__()), _fd:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
                    };
                    _fd.close();
                });
            };
            {
                var _err = (stdgo._internal.os.Os_chmod.chmod(_path?.__copy__(), (365u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _path;
                var _a1 = (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
                __deferstack__.unshift(() -> stdgo._internal.os.Os_chmod.chmod(_a0?.__copy__(), _a1));
            };
            var _err = (stdgo._internal.os.Os_removeAll.removeAll(_path?.__copy__()) : stdgo.Error);
            if (stdgo._internal.os.Os_getuid.getuid() == ((0 : stdgo.GoInt))) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_err == null) {
                if (false) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                _t.fatal(stdgo.Go.toInterface(("RemoveAll(<read-only directory>) = nil; want error" : stdgo.GoString)));
            };
            var __tmp__ = stdgo._internal.os.Os_open.open(_path?.__copy__()), _dir:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _dir.close());
            var __tmp__ = _dir.readdirnames((1025 : stdgo.GoInt)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, __16:stdgo.Error = __tmp__._1;
            if (((_names.length) < (1025 : stdgo.GoInt) : Bool)) {
                _t.fatalf(("RemoveAll(<read-only directory>) unexpectedly removed %d read-only files from that directory" : stdgo.GoString), stdgo.Go.toInterface(((1025 : stdgo.GoInt) - (_names.length) : stdgo.GoInt)));
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

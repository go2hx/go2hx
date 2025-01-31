package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function stat(_fsys:stdgo._internal.io.fs.Fs_FS.FS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : stdgo._internal.io.fs.Fs_StatFS.StatFS)) : stdgo._internal.io.fs.Fs_StatFS.StatFS), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.fs.Fs_StatFS.StatFS), _1 : false };
                }, _fsys = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return _fsys.stat(_name?.__copy__());
                };
            };
            var __tmp__ = _fsys.open(_name?.__copy__()), _file:stdgo._internal.io.fs.Fs_File.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo), _1 : _err };
            };
            {
                final __f__ = _file.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } = _file.stat();
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo), _1 : (null : stdgo.Error) };
            };
        };
    }

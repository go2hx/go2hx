package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testMkdirStickyUmask(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                _t.skip(stdgo.Go.toInterface(("file permissions not supported on js" : stdgo.GoString)));
            };
            _t.parallel();
            {};
            var _dir = (_internal.os_test.Os_test__newDir._newDir(("TestMkdirStickyUmask" : stdgo.GoString), _t)?.__copy__() : stdgo.GoString);
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            var _oldUmask = (stdgo._internal.syscall.Syscall_umask.umask((63 : stdgo.GoInt)) : stdgo.GoInt);
            {
                var _a0 = _oldUmask;
                __deferstack__.unshift(() -> stdgo._internal.syscall.Syscall_umask.umask(_a0));
            };
            var _p = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("dir1" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.os.Os_mkdir.mkdir(_p?.__copy__(), (1049069u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_p?.__copy__()), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _mode = (_fi.mode() : stdgo._internal.io.fs.Fs_FileMode.FileMode);
                if ((((_mode & (63u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != (0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) || ((_mode & (((511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != (-2146435072u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : Bool)) {
                    _t.errorf(("unexpected mode %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)));
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

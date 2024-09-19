package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testStatRelativeSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv_mustHaveSymlink.mustHaveSymlink(stdgo.Go.asInterface(_t));
            _t.parallel();
            var _tmpdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var _target = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("target" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_create.create(_target?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.stat(), _st:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _link = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("link" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            _err = stdgo._internal.os.Os_symlink.symlink(stdgo._internal.path.filepath.Filepath_base.base(_target?.__copy__())?.__copy__(), _link?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_link?.__copy__()), _st1:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.os.Os_sameFile.sameFile(_st, _st1)) {
                _t.error(stdgo.Go.toInterface(("Stat doesn\'t follow relative symlink" : stdgo.GoString)));
            };
            if (false) {
                stdgo._internal.os.Os_remove.remove(_link?.__copy__());
                _err = stdgo._internal.os.Os_symlink.symlink((_target.__slice__((stdgo._internal.path.filepath.Filepath_volumeName.volumeName(_target?.__copy__()).length)) : stdgo.GoString)?.__copy__(), _link?.__copy__());
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_link?.__copy__()), _st1:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                if (!stdgo._internal.os.Os_sameFile.sameFile(_st, _st1)) {
                    _t.error(stdgo.Go.toInterface(("Stat doesn\'t follow relative symlink" : stdgo.GoString)));
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

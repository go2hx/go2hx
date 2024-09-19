package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleMkdirTemp():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(stdgo.Go.str()?.__copy__(), ("example" : stdgo.GoString)), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            var _file = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("tmpfile" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.os.Os_writeFile.writeFile(_file?.__copy__(), (("content" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
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

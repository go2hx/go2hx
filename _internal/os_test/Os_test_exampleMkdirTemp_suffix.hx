package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function exampleMkdirTemp_suffix():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(stdgo.Go.str()?.__copy__(), ("*-logs" : stdgo.GoString)), _logsDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _logsDir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os_removeAll.removeAll(_a0?.__copy__()));
            };
            var _globPattern = (stdgo._internal.path.filepath.Filepath_join.join(stdgo._internal.os.Os_tempDir.tempDir()?.__copy__(), ("*-logs" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(_globPattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatalf.fatalf(("Failed to match %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_globPattern), stdgo.Go.toInterface(_err));
            };
            for (__0 => _match in _matches) {
                {
                    var _err = (stdgo._internal.os.Os_removeAll.removeAll(_match?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        stdgo._internal.log.Log_printf.printf(("Failed to remove %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_match), stdgo.Go.toInterface(_err));
                    };
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

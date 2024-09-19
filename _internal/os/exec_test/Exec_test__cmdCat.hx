package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _cmdCat(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_args.length) == ((0 : stdgo.GoInt))) {
                stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin));
                return;
            };
            var _exit = (0 : stdgo.GoInt);
            for (__0 => _fn in _args) {
                var __tmp__ = stdgo._internal.os.Os_open.open(_fn?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("Error: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    _exit = (2 : stdgo.GoInt);
                } else {
                    __deferstack__.unshift(() -> _f.close());
                    stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), stdgo.Go.asInterface(_f));
                };
            };
            Sys.exit(_exit);
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

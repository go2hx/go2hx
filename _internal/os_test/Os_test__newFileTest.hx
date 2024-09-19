package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _newFileTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _blocking:Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skipf(("syscall.Pipe is not available on %s." : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
            var _p = (new stdgo.Slice<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            {
                var _err = (stdgo._internal.syscall.Syscall_pipe.pipe(_p) : stdgo.Error);
                if (_err != null) {
                    _t.fatalf(("pipe: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _p[(1 : stdgo.GoInt)];
                __deferstack__.unshift(() -> stdgo._internal.syscall.Syscall_close.close(_a0));
            };
            if (!_blocking) {
                {
                    var _err = (stdgo._internal.syscall.Syscall_setNonblock.setNonblock(_p[(0 : stdgo.GoInt)], true) : stdgo.Error);
                    if (_err != null) {
                        stdgo._internal.syscall.Syscall_close.close(_p[(0 : stdgo.GoInt)]);
                        _t.fatalf(("SetNonblock: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
            };
            var _file = stdgo._internal.os.Os_newFile.newFile((_p[(0 : stdgo.GoInt)] : stdgo.GoUIntptr), ("notapipe" : stdgo.GoString));
            if (_file == null || (_file : Dynamic).__nil__) {
                stdgo._internal.syscall.Syscall_close.close(_p[(0 : stdgo.GoInt)]);
                _t.fatalf(("failed to convert fd to file!" : stdgo.GoString));
            };
            __deferstack__.unshift(() -> _file.close());
            var _timeToWrite = (100000000i64 : stdgo._internal.time.Time_Duration.Duration);
            var _timeToDeadline = (1000000i64 : stdgo._internal.time.Time_Duration.Duration);
            if (!_blocking) {
                _timeToWrite = (1000000000i64 : stdgo._internal.time.Time_Duration.Duration);
            };
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _timer = stdgo._internal.time.Time_afterFunc.afterFunc(_timeToWrite, function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    stdgo._internal.syscall.Syscall_write.write(_p[(1 : stdgo.GoInt)], (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
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
            });
            __deferstack__.unshift(() -> _timer.stop());
            _file.setReadDeadline(stdgo._internal.time.Time_now.now().add(_timeToDeadline)?.__copy__());
            var __tmp__ = _file.read(_b), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!_blocking) {
                if (!_internal.os_test.Os_test__isDeadlineExceeded._isDeadlineExceeded(_err)) {
                    _t.fatalf(("No timeout reading from file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            } else {
                if (_err != null) {
                    _t.fatalf(("Error reading from file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
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

package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testPipeIOCloseRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skipf(("skipping on %s: no pipes" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
            _t.parallel();
            var __tmp__ = stdgo._internal.os.Os_pipe.pipe(), _r:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            _wg.add((3 : stdgo.GoInt));
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        while (true) {
                            var __tmp__ = _w.write((("hi" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.Os_errClosed.errClosed) || stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("broken pipe" : stdgo.GoString)) || stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("pipe is being closed" : stdgo.GoString)) || stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("hungup channel" : stdgo.GoString))) {} else {
                                    _t.error(stdgo.Go.toInterface(_err));
                                };
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
                                };
                            };
                            if (_n != ((2 : stdgo.GoInt))) {
                                _t.errorf(("wrote %d bytes, expected 2" : stdgo.GoString), stdgo.Go.toInterface(_n));
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
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
                };
                a();
            });
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        while (true) {
                            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt8)]);
                            var __tmp__ = _r.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                if (((stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) && !stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.os.Os_errClosed.errClosed) : Bool)) {
                                    _t.error(stdgo.Go.toInterface(_err));
                                };
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
                                };
                            };
                            if (_n != ((2 : stdgo.GoInt))) {
                                _t.errorf(("read %d bytes, want 2" : stdgo.GoString), stdgo.Go.toInterface(_n));
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
                };
                a();
            });
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
                        {
                            var _err = (_r.close() : stdgo.Error);
                            if (_err != null) {
                                _t.error(stdgo.Go.toInterface(_err));
                            };
                        };
                        {
                            var _err = (_w.close() : stdgo.Error);
                            if (_err != null) {
                                _t.error(stdgo.Go.toInterface(_err));
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
                };
                a();
            });
            _wg.wait_();
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

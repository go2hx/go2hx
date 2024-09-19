package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testProgWideChdir(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            var _hold = (new stdgo.Chan<_internal.os_test.Os_test_T__struct_4.T__struct_4>(0, () -> ({  } : _internal.os_test.Os_test_T__struct_4.T__struct_4)) : stdgo.Chan<_internal.os_test.Os_test_T__struct_4.T__struct_4>);
            var _done = (new stdgo.Chan<_internal.os_test.Os_test_T__struct_4.T__struct_4>(0, () -> ({  } : _internal.os_test.Os_test_T__struct_4.T__struct_4)) : stdgo.Chan<_internal.os_test.Os_test_T__struct_4.T__struct_4>);
            var _d = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _oldwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Getwd: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _err = (stdgo._internal.os.Os_chdir.chdir(_oldwd?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                throw stdgo.Go.toInterface(_err);
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
            __deferstack__.unshift(() -> _wg.wait_());
            {
                var _a0 = _done;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function(_i:stdgo.GoInt):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                if ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                                    stdgo._internal.runtime.Runtime_lockOSThread.lockOSThread();
                                };
                                {
                                    var __select__ = true;
                                    while (__select__) {
                                        if (_done != null && _done.__isGet__()) {
                                            __select__ = false;
                                            {
                                                _done.__get__();
                                                {
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                };
                                            };
                                        } else if (_hold != null && _hold.__isGet__()) {
                                            __select__ = false;
                                            {
                                                _hold.__get__();
                                                {};
                                            };
                                        };
                                        #if !js Sys.sleep(0.01) #else null #end;
                                        stdgo._internal.internal.Async.tick();
                                    };
                                };
                                var __tmp__ = stdgo._internal.os.Os_stat.stat(("." : stdgo.GoString)), _f0:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.error(stdgo.Go.toInterface(_err));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                                var __tmp__ = stdgo._internal.os.Os_getwd.getwd(), _pwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.errorf(("Getwd: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                                if (_pwd != (_d)) {
                                    _t.errorf(("Getwd() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_pwd), stdgo.Go.toInterface(_d));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                                var __tmp__ = stdgo._internal.os.Os_stat.stat(_pwd?.__copy__()), _f1:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.error(stdgo.Go.toInterface(_err));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                                if (!stdgo._internal.os.Os_sameFile.sameFile(_f0, _f1)) {
                                    _t.errorf(("Samefile(Stat(\".\"), Getwd()) reports false (%s != %s)" : stdgo.GoString), stdgo.Go.toInterface(_f0.name()), stdgo.Go.toInterface(_f1.name()));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
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
                        a(_i);
                    });
                });
            };
            {
                _err = stdgo._internal.os.Os_chdir.chdir(_d?.__copy__());
                if (_err != null) {
                    _t.fatalf(("Chdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = stdgo._internal.os.Os_getwd.getwd();
                _d = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Getwd: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (_hold != null) _hold.__close__();
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

package _internal.internal.poll_test;
import stdgo._internal.internal.poll.Poll;
function testRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.run(("SpecialFile" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
                    for (__8 => _p in _internal.internal.poll_test.Poll_test__specialFiles._specialFiles()) {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                                _wg.add((1 : stdgo.GoInt));
                                stdgo.Go.routine(() -> {
                                    var a = function(_p:stdgo.GoString):Void {
                                        var __deferstack__:Array<Void -> Void> = [];
                                        try {
                                            __deferstack__.unshift(() -> _wg.done());
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                                    {
                                                        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(_p?.__copy__()), __17:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                        if (_err != null) {
                                                            _t.error(stdgo.Go.toInterface(_err));
                                                            {
                                                                for (defer in __deferstack__) {
                                                                    defer();
                                                                };
                                                                return;
                                                            };
                                                        };
                                                    };
                                                    stdgo._internal.time.Time_sleep.sleep((1i64 : stdgo._internal.time.Time_Duration.Duration));
                                                });
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
                                    a(_p?.__copy__());
                                });
                            });
                        };
                    };
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
            });
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

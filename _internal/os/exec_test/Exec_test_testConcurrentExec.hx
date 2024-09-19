package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testConcurrentExec(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            var __0:stdgo.GoInt = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)), __1:stdgo.GoInt = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)), __2:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup), __3:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
var _exits = __3, _hangs = __2, _nExits = __1, _nHangs = __0;
            _hangs.add(_nHangs);
            _exits.add(_nExits);
            var _ready:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            _ready.add((_nHangs + _nExits : stdgo.GoInt));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _nHangs : Bool), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _hangs.done());
                                var _cmd = _internal.os.exec_test.Exec_test__helperCommandContext._helperCommandContext(_t, _ctx, ("pipetest" : stdgo.GoString));
                                var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io_WriteCloser.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _ready.done();
                                    _t.error(stdgo.Go.toInterface(_err));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                                _cmd.cancel = _stdin.close;
                                _ready.done();
                                _ready.wait_();
                                {
                                    var _err = (_cmd.start() : stdgo.Error);
                                    if (_err != null) {
                                        if (!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.context.Context_canceled.canceled)) {
                                            _t.error(stdgo.Go.toInterface(_err));
                                        };
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return;
                                        };
                                    };
                                };
                                _cmd.wait_();
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
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _nExits : Bool), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _exits.done());
                                var _cmd = _internal.os.exec_test.Exec_test__helperCommandContext._helperCommandContext(_t, _ctx, ("exit" : stdgo.GoString), ("0" : stdgo.GoString));
                                _ready.done();
                                _ready.wait_();
                                {
                                    var _err = (_cmd.run() : stdgo.Error);
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
                });
            };
            _exits.wait_();
            _cancel();
            _hangs.wait_();
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

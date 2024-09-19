package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function benchmarkDeepValueNewGoRoutine(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            for (__0 => _depth in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(10 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (50 : stdgo.GoInt), (100 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                var _ctx = (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_Context.Context);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _depth : Bool), _i++, {
                        _ctx = stdgo._internal.context.Context_withValue.withValue(_ctx, stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                    });
                };
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("depth=%d" : stdgo.GoString), stdgo.Go.toInterface(_depth))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
                                _wg.add((1 : stdgo.GoInt));
                                stdgo.Go.routine(() -> {
                                    var a = function():Void {
                                        var __deferstack__:Array<Void -> Void> = [];
                                        try {
                                            __deferstack__.unshift(() -> _wg.done());
                                            _ctx.value(stdgo.Go.toInterface((-1 : stdgo.GoInt)));
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
    }

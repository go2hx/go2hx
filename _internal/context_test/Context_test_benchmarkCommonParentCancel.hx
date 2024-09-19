package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function benchmarkCommonParentCancel(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _root = (stdgo._internal.context.Context_withValue.withValue(stdgo._internal.context.Context_background.background(), stdgo.Go.toInterface(("key" : stdgo.GoString)), stdgo.Go.toInterface(("value" : stdgo.GoString))) : stdgo._internal.context.Context_Context.Context);
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_root), _shared:stdgo._internal.context.Context_Context.Context = __tmp__._0, _sharedcancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            __deferstack__.unshift(() -> _sharedcancel());
            _b.resetTimer();
            _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _x = (0 : stdgo.GoInt);
                    while (_pb.next()) {
                        var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_shared), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
                        if ((stdgo.Go.typeAssert((_ctx.value(stdgo.Go.toInterface(("key" : stdgo.GoString))) : stdgo.GoString)) : stdgo.GoString) != (("value" : stdgo.GoString))) {
                            _b.fatal(stdgo.Go.toInterface(("should not be reached" : stdgo.GoString)));
                        };
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                _x = (_x / ((_x + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                            });
                        };
                        _cancel();
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                _x = (_x / ((_x + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                            });
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

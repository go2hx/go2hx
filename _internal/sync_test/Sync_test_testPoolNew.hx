package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testPoolNew(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            var _i = (0 : stdgo.GoInt);
            var _p = ({ new_ : function():stdgo.AnyInterface {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _i++;
                    {
                        final __ret__:stdgo.AnyInterface = stdgo.Go.toInterface(_i);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        final __ret__:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return __ret__;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    final __ret__:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            } } : stdgo._internal.sync.Sync_Pool.Pool);
            {
                var _v = (_p.get() : stdgo.AnyInterface);
                if (_v != (stdgo.Go.toInterface((1 : stdgo.GoInt)))) {
                    _t.fatalf(("got %v; want 1" : stdgo.GoString), _v);
                };
            };
            {
                var _v = (_p.get() : stdgo.AnyInterface);
                if (_v != (stdgo.Go.toInterface((2 : stdgo.GoInt)))) {
                    _t.fatalf(("got %v; want 2" : stdgo.GoString), _v);
                };
            };
            stdgo._internal.sync.Sync_runtime_procPin.runtime_procPin();
            _p.put(stdgo.Go.toInterface((42 : stdgo.GoInt)));
            {
                var _v = (_p.get() : stdgo.AnyInterface);
                if (_v != (stdgo.Go.toInterface((42 : stdgo.GoInt)))) {
                    _t.fatalf(("got %v; want 42" : stdgo.GoString), _v);
                };
            };
            stdgo._internal.sync.Sync_runtime_procUnpin.runtime_procUnpin();
            {
                var _v = (_p.get() : stdgo.AnyInterface);
                if (_v != (stdgo.Go.toInterface((3 : stdgo.GoInt)))) {
                    _t.fatalf(("got %v; want 3" : stdgo.GoString), _v);
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

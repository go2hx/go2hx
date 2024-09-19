package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testPool(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            var _p:stdgo._internal.sync.Sync_Pool.Pool = ({} : stdgo._internal.sync.Sync_Pool.Pool);
            if (_p.get() != null) {
                _t.fatal(stdgo.Go.toInterface(("expected empty" : stdgo.GoString)));
            };
            stdgo._internal.sync.Sync_runtime_procPin.runtime_procPin();
            _p.put(stdgo.Go.toInterface(("a" : stdgo.GoString)));
            _p.put(stdgo.Go.toInterface(("b" : stdgo.GoString)));
            {
                var _g = (_p.get() : stdgo.AnyInterface);
                if (_g != (stdgo.Go.toInterface(("a" : stdgo.GoString)))) {
                    _t.fatalf(("got %#v; want a" : stdgo.GoString), _g);
                };
            };
            {
                var _g = (_p.get() : stdgo.AnyInterface);
                if (_g != (stdgo.Go.toInterface(("b" : stdgo.GoString)))) {
                    _t.fatalf(("got %#v; want b" : stdgo.GoString), _g);
                };
            };
            {
                var _g = (_p.get() : stdgo.AnyInterface);
                if (_g != null) {
                    _t.fatalf(("got %#v; want nil" : stdgo.GoString), _g);
                };
            };
            stdgo._internal.sync.Sync_runtime_procUnpin.runtime_procUnpin();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                    _p.put(stdgo.Go.toInterface(("c" : stdgo.GoString)));
                });
            };
            stdgo._internal.runtime.Runtime_gc.gc();
            {
                var _g = (_p.get() : stdgo.AnyInterface);
                if (_g != (stdgo.Go.toInterface(("c" : stdgo.GoString)))) {
                    _t.fatalf(("got %#v; want c after GC" : stdgo.GoString), _g);
                };
            };
            stdgo._internal.runtime.Runtime_gc.gc();
            {
                var _g = (_p.get() : stdgo.AnyInterface);
                if (_g != null) {
                    _t.fatalf(("got %#v; want nil after second GC" : stdgo.GoString), _g);
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

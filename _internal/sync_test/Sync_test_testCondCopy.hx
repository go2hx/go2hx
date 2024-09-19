package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testCondCopy(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (((_err == null) || ((stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString) != ("sync.Cond is copied" : stdgo.GoString)) : Bool)) {
                            _t.fatalf(("got %v, expect sync.Cond is copied" : stdgo.GoString), _err);
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
            var _c = ({ l : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sync.Sync_Mutex.Mutex() : stdgo._internal.sync.Sync_Mutex.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>)) } : stdgo._internal.sync.Sync_Cond.Cond);
            _c.signal();
            var _c2:stdgo._internal.sync.Sync_Cond.Cond = ({} : stdgo._internal.sync.Sync_Cond.Cond);
            stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c2) : stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>)))).elem().set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>)))).elem()?.__copy__());
            _c2.signal();
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

package _internal.internal.poll_test;
import stdgo._internal.internal.poll.Poll;
function testMutexOverflowPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _r = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_r == null) {
                            _t.fatal(stdgo.Go.toInterface(("did not panic" : stdgo.GoString)));
                        };
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_r : stdgo.GoString)) : stdgo.GoString), _1 : true };
                        } catch(_) {
                            { _0 : ("" : stdgo.GoString), _1 : false };
                        }, _msg = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            _t.fatalf(("unexpected panic type %T" : stdgo.GoString), _r);
                        };
                        if ((!stdgo._internal.strings.Strings_contains.contains(_msg?.__copy__(), ("too many" : stdgo.GoString)) || stdgo._internal.strings.Strings_contains.contains(_msg?.__copy__(), ("inconsistent" : stdgo.GoString)) : Bool)) {
                            _t.fatalf(("wrong panic message %q" : stdgo.GoString), stdgo.Go.toInterface(_msg));
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
            var _mu1:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex = ({} : stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2097152 : stdgo.GoInt) : Bool), _i++, {
                    _mu1.incref();
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

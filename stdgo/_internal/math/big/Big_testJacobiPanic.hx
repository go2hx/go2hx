package stdgo._internal.math.big;
function testJacobiPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _msg = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    } : stdgo.AnyInterface);
                    if (((_msg == null) || (_msg == stdgo.Go.toInterface(("test failure" : stdgo.GoString))) : Bool)) {
                        throw stdgo.Go.toInterface(_msg);
                    };
                    _t.log(_msg);
                };
                a();
            });
            var _x = stdgo._internal.math.big.Big_newInt.newInt((1i64 : stdgo.GoInt64));
            var _y = stdgo._internal.math.big.Big_newInt.newInt((2i64 : stdgo.GoInt64));
            stdgo._internal.math.big.Big_jacobi.jacobi(_x, _y);
            throw stdgo.Go.toInterface(("test failure" : stdgo.GoString));
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

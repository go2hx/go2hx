package stdgo._internal.math.big;
function testMulUnbalanced(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            var _x = (stdgo._internal.math.big.Big__rndNat._rndNat((50000 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
            var _y = (stdgo._internal.math.big.Big__rndNat._rndNat((40 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
            var _allocSize = (stdgo._internal.math.big.Big__allocBytes._allocBytes(function():Void {
                (new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._mul(_x, _y);
            }) : stdgo.GoUInt64);
            var _inputSize = ((((_x.length) + (_y.length) : stdgo.GoInt) : stdgo.GoUInt64) * (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            {
                var _ratio = (_allocSize / (_inputSize : stdgo.GoUInt64) : stdgo.GoUInt64);
                if ((_ratio > (10i64 : stdgo.GoUInt64) : Bool)) {
                    _t.errorf(("multiplication uses too much memory (%d > %d times the size of inputs)" : stdgo.GoString), stdgo.Go.toInterface(_allocSize), stdgo.Go.toInterface(_ratio));
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

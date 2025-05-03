package stdgo._internal.math.big;
function benchmarkZeroShifts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x = (stdgo._internal.math.big.Big__rndnat._rndNat((800 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L308"
        _b.run(("Shl" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L309"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
//"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L311"
                    _z._shl(_x, (0u32 : stdgo.GoUInt));
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L314"
        _b.run(("ShlSame" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L315"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L316"
                    _x._shl(_x, (0u32 : stdgo.GoUInt));
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L320"
        _b.run(("Shr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L321"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
//"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L323"
                    _z._shr(_x, (0u32 : stdgo.GoUInt));
                    _i++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L326"
        _b.run(("ShrSame" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L327"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L328"
                    _x._shr(_x, (0u32 : stdgo.GoUInt));
                    _i++;
                };
            };
        });
    }

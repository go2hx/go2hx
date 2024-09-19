package stdgo._internal.math.big;
function benchmarkZeroShifts(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = (stdgo._internal.math.big.Big__rndNat._rndNat((800 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        _b.run(("Shl" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _z:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
                    _z._shl(_x, (0u32 : stdgo.GoUInt));
                });
            };
        });
        _b.run(("ShlSame" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _x._shl(_x, (0u32 : stdgo.GoUInt));
                });
            };
        });
        _b.run(("Shr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _z:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
                    _z._shr(_x, (0u32 : stdgo.GoUInt));
                });
            };
        });
        _b.run(("ShrSame" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _x._shr(_x, (0u32 : stdgo.GoUInt));
                });
            };
        });
    }

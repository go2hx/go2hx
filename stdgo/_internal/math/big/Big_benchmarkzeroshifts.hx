package stdgo._internal.math.big;
function benchmarkZeroShifts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x = (stdgo._internal.math.big.Big__rndnat._rndNat((800 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        @:check2r _b.run(("Shl" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
_z._shl(_x, (0u32 : stdgo.GoUInt));
                    _i++;
                };
            };
        });
        @:check2r _b.run(("ShlSame" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    _x._shl(_x, (0u32 : stdgo.GoUInt));
                    _i++;
                };
            };
        });
        @:check2r _b.run(("Shr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
_z._shr(_x, (0u32 : stdgo.GoUInt));
                    _i++;
                };
            };
        });
        @:check2r _b.run(("ShrSame" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    _x._shr(_x, (0u32 : stdgo.GoUInt));
                    _i++;
                };
            };
        });
    }

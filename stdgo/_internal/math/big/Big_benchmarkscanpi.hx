package stdgo._internal.math.big;
function benchmarkScanPi(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _x:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
_x._scan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(stdgo._internal.math.big.Big__pi._pi.__copy__())), (10 : stdgo.GoInt), false);
                _i++;
            };
        };
    }

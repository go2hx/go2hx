package stdgo._internal.math.big;
function testMulRangeN(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _r in stdgo._internal.math.big.Big__mulrangesn._mulRangesN) {
            var _prod = (((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._mulRange(_r._a, _r._b)._utoa((10 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_prod != (_r._prod)) {
                @:check2r _t.errorf(("#%d: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prod), stdgo.Go.toInterface(_r._prod));
            };
        };
    }

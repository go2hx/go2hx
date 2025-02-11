package stdgo._internal.math.big;
function testExpNN(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__expnntests._expNNTests) {
            var _x = (stdgo._internal.math.big.Big__natfromstring._natFromString(_test._x?.__copy__()) : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _y = (stdgo._internal.math.big.Big__natfromstring._natFromString(_test._y?.__copy__()) : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _out = (stdgo._internal.math.big.Big__natfromstring._natFromString(_test._out?.__copy__()) : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _m:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
            if (((_test._m.length) > (0 : stdgo.GoInt) : Bool)) {
                _m = stdgo._internal.math.big.Big__natfromstring._natFromString(_test._m?.__copy__());
            };
            var _z = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._expNN(_x, _y, _m, false) : stdgo._internal.math.big.Big_t_nat.T_nat);
            if (_z._cmp(_out) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("#%d got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_z._utoa((10 : stdgo.GoInt))), stdgo.Go.toInterface(_out._utoa((10 : stdgo.GoInt))));
            };
        };
    }

package stdgo._internal.math.big;
function testNatDiv(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(17, 17, ...[
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(5 : stdgo.GoInt),
(8 : stdgo.GoInt),
(15 : stdgo.GoInt),
(25 : stdgo.GoInt),
(40 : stdgo.GoInt),
(65 : stdgo.GoInt),
(100 : stdgo.GoInt),
(200 : stdgo.GoInt),
(500 : stdgo.GoInt),
(800 : stdgo.GoInt),
(1500 : stdgo.GoInt),
(2500 : stdgo.GoInt),
(4000 : stdgo.GoInt),
(6500 : stdgo.GoInt),
(10000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (__8 => _i in _sizes) {
            for (__9 => _j in _sizes) {
                var _a = (stdgo._internal.math.big.Big__rndnat1._rndNat1(_i) : stdgo._internal.math.big.Big_t_nat.T_nat);
                var _b = (stdgo._internal.math.big.Big__rndnat1._rndNat1(_j) : stdgo._internal.math.big.Big_t_nat.T_nat);
                if (((_b.length == (1 : stdgo.GoInt)) && (_b[(0 : stdgo.GoInt)] == (1u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                    _b[(0 : stdgo.GoInt)] = (2u32 : stdgo._internal.math.big.Big_word.Word);
                };
                var _c = (stdgo._internal.math.big.Big__rndnat1._rndNat1((_b.length)) : stdgo._internal.math.big.Big_t_nat.T_nat);
                if (((_c.length == (_b.length)) && (_c[((_c.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] >= _b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool)) {
                    _c[((_c.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0u32 : stdgo._internal.math.big.Big_word.Word);
                    _c = _c._norm();
                };
                var _x = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._mul(_a, _b) : stdgo._internal.math.big.Big_t_nat.T_nat);
                _x = _x._add(_x, _c);
                var __0:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), __1:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
var _r = __1, _q = __0;
                {
                    var __tmp__ = _q._div(_r, _x, _b);
                    _q = @:tmpset0 __tmp__._0;
                    _r = @:tmpset0 __tmp__._1;
                };
                if (_q._cmp(_a) != ((0 : stdgo.GoInt))) {
                    @:check2r _t.fatalf(("wrong quotient: got %s; want %s for %s/%s" : stdgo.GoString), stdgo.Go.toInterface(_q._utoa((10 : stdgo.GoInt))), stdgo.Go.toInterface(_a._utoa((10 : stdgo.GoInt))), stdgo.Go.toInterface(_x._utoa((10 : stdgo.GoInt))), stdgo.Go.toInterface(_b._utoa((10 : stdgo.GoInt))));
                };
                if (_r._cmp(_c) != ((0 : stdgo.GoInt))) {
                    @:check2r _t.fatalf(("wrong remainder: got %s; want %s for %s/%s" : stdgo.GoString), stdgo.Go.toInterface(_r._utoa((10 : stdgo.GoInt))), stdgo.Go.toInterface(_c._utoa((10 : stdgo.GoInt))), stdgo.Go.toInterface(_x._utoa((10 : stdgo.GoInt))), stdgo.Go.toInterface(_b._utoa((10 : stdgo.GoInt))));
                };
            };
        };
    }

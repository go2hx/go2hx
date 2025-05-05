package stdgo._internal.math.big;
function testMulAddWWW(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L580"
        for (_i => _test in stdgo._internal.math.big.Big__muladdwwwtests._mulAddWWWTests) {
            var __tmp__ = stdgo._internal.math.big.Big__muladdwww_g._mulAddWWW_g(_test._x, _test._y, _test._c), _q:stdgo._internal.math.big.Big_word.Word = __tmp__._0, _r:stdgo._internal.math.big.Big_word.Word = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L582"
            if (((_q != _test._q) || (_r != _test._r) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L583"
                _t.errorf(("#%d got (%x, %x) want (%x, %x)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_test._q), stdgo.Go.toInterface(_test._r));
            };
        };
    }

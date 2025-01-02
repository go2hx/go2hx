package stdgo._internal.math.big;
function testMulWW(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__mulWWTests._mulWWTests) {
            var __tmp__ = stdgo._internal.math.big.Big__mulWW._mulWW(_test._x, _test._y), _q:stdgo._internal.math.big.Big_Word.Word = __tmp__._0, _r:stdgo._internal.math.big.Big_Word.Word = __tmp__._1;
            if (((_q != _test._q) || (_r != _test._r) : Bool)) {
                @:check2r _t.errorf(("#%d got (%x, %x) want (%x, %x)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_test._q), stdgo.Go.toInterface(_test._r));
            };
        };
    }

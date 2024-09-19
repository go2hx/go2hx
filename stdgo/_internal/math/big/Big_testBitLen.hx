package stdgo._internal.math.big;
function testBitLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__bitLenTests._bitLenTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._in?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _t.errorf(("#%d test input invalid: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                continue;
            };
            {
                var _n = (_x.bitLen() : stdgo.GoInt);
                if (_n != (_test._out)) {
                    _t.errorf(("#%d got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_test._out));
                };
            };
        };
    }

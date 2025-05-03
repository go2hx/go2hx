package stdgo._internal.math.big;
function testBitLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L516"
        for (_i => _test in stdgo._internal.math.big.Big__bitlentests._bitLenTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._in?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L518"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L519"
                _t.errorf(("#%d test input invalid: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L520"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L523"
            {
                var _n = (_x.bitLen() : stdgo.GoInt);
                if (_n != (_test._out)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L524"
                    _t.errorf(("#%d got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_test._out));
                };
            };
        };
    }

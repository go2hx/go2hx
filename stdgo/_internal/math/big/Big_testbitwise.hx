package stdgo._internal.math.big;
function testBitwise(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1514"
        for (__8 => _test in stdgo._internal.math.big.Big__bitwisetests._bitwiseTests) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1515"
            _x.setString(_test._x?.__copy__(), (0 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1516"
            _y.setString(_test._y?.__copy__(), (0 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1518"
            stdgo._internal.math.big.Big__testbitfun._testBitFun(_t, ("and" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.and, _x, _y, _test._and?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1519"
            stdgo._internal.math.big.Big__testbitfunself._testBitFunSelf(_t, ("and" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.and, _x, _y, _test._and?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1520"
            stdgo._internal.math.big.Big__testbitfun._testBitFun(_t, ("andNot" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.andNot, _x, _y, _test._andNot?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1521"
            stdgo._internal.math.big.Big__testbitfunself._testBitFunSelf(_t, ("andNot" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.andNot, _x, _y, _test._andNot?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1522"
            stdgo._internal.math.big.Big__testbitfun._testBitFun(_t, ("or" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.or, _x, _y, _test._or?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1523"
            stdgo._internal.math.big.Big__testbitfunself._testBitFunSelf(_t, ("or" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.or, _x, _y, _test._or?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1524"
            stdgo._internal.math.big.Big__testbitfun._testBitFun(_t, ("xor" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.xor, _x, _y, _test._xor?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1525"
            stdgo._internal.math.big.Big__testbitfunself._testBitFunSelf(_t, ("xor" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.xor, _x, _y, _test._xor?.__copy__());
        };
    }

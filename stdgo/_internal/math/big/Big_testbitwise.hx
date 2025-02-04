package stdgo._internal.math.big;
function testBitwise(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        for (__8 => _test in stdgo._internal.math.big.Big__bitwisetests._bitwiseTests) {
            @:check2r _x.setString(_test._x?.__copy__(), (0 : stdgo.GoInt));
            @:check2r _y.setString(_test._y?.__copy__(), (0 : stdgo.GoInt));
            stdgo._internal.math.big.Big__testbitfun._testBitFun(_t, ("and" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.and, _x, _y, _test._and?.__copy__());
            stdgo._internal.math.big.Big__testbitfunself._testBitFunSelf(_t, ("and" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.and, _x, _y, _test._and?.__copy__());
            stdgo._internal.math.big.Big__testbitfun._testBitFun(_t, ("andNot" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.andNot, _x, _y, _test._andNot?.__copy__());
            stdgo._internal.math.big.Big__testbitfunself._testBitFunSelf(_t, ("andNot" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.andNot, _x, _y, _test._andNot?.__copy__());
            stdgo._internal.math.big.Big__testbitfun._testBitFun(_t, ("or" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.or, _x, _y, _test._or?.__copy__());
            stdgo._internal.math.big.Big__testbitfunself._testBitFunSelf(_t, ("or" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.or, _x, _y, _test._or?.__copy__());
            stdgo._internal.math.big.Big__testbitfun._testBitFun(_t, ("xor" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.xor, _x, _y, _test._xor?.__copy__());
            stdgo._internal.math.big.Big__testbitfunself._testBitFunSelf(_t, ("xor" : stdgo.GoString), stdgo._internal.math.big.Big_int__static_extension.Int__static_extension.xor, _x, _y, _test._xor?.__copy__());
        };
    }

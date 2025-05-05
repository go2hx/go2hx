package stdgo._internal.math.big;
function testGcd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L888"
        for (__8 => _test in stdgo._internal.math.big.Big__gcdtests._gcdTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._d?.__copy__(), (0 : stdgo.GoInt)), _d:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __9:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._x?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __10:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._y?.__copy__(), (0 : stdgo.GoInt)), _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __11:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._a?.__copy__(), (0 : stdgo.GoInt)), _a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __12:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._b?.__copy__(), (0 : stdgo.GoInt)), _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __13:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L895"
            stdgo._internal.math.big.Big__testgcd._testGcd(_t, _d, null, null, _a, _b);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L896"
            stdgo._internal.math.big.Big__testgcd._testGcd(_t, _d, _x, null, _a, _b);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L897"
            stdgo._internal.math.big.Big__testgcd._testGcd(_t, _d, null, _y, _a, _b);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L898"
            stdgo._internal.math.big.Big__testgcd._testGcd(_t, _d, _x, _y, _a, _b);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L901"
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.math.big.Big__checkgcd._checkGcd), null) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L902"
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L905"
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.math.big.Big__checklehmergcd._checkLehmerGcd), null) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L906"
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L909"
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.math.big.Big__checklehmerextgcd._checkLehmerExtGcd), null) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L910"
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }

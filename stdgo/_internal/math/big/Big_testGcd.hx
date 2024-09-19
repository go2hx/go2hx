package stdgo._internal.math.big;
function testGcd(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _test in stdgo._internal.math.big.Big__gcdTests._gcdTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._d?.__copy__(), (0 : stdgo.GoInt)), _d:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __15:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._x?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __16:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._y?.__copy__(), (0 : stdgo.GoInt)), _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __17:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._a?.__copy__(), (0 : stdgo.GoInt)), _a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __18:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._b?.__copy__(), (0 : stdgo.GoInt)), _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __19:Bool = __tmp__._1;
            stdgo._internal.math.big.Big__testGcd._testGcd(_t, _d, null, null, _a, _b);
            stdgo._internal.math.big.Big__testGcd._testGcd(_t, _d, _x, null, _a, _b);
            stdgo._internal.math.big.Big__testGcd._testGcd(_t, _d, null, _y, _a, _b);
            stdgo._internal.math.big.Big__testGcd._testGcd(_t, _d, _x, _y, _a, _b);
        };
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.math.big.Big__checkGcd._checkGcd), null) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.math.big.Big__checkLehmerGcd._checkLehmerGcd), null) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.math.big.Big__checkLehmerExtGcd._checkLehmerExtGcd), null) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
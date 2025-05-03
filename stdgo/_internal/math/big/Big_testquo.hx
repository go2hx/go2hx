package stdgo._internal.math.big;
function testQuo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L447"
        {
            var _err = (stdgo._internal.testing.quick.Quick_check.check(stdgo.Go.toInterface(stdgo._internal.math.big.Big__checkquo._checkQuo), null) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L448"
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L451"
        for (_i => _test in stdgo._internal.math.big.Big__quotests._quoTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._x?.__copy__(), (10 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._y?.__copy__(), (10 : stdgo.GoInt)), _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __9:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._q?.__copy__(), (10 : stdgo.GoInt)), _expectedQ:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __10:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._r?.__copy__(), (10 : stdgo.GoInt)), _expectedR:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __11:Bool = __tmp__._1;
            var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).quoRem(_x, _y, _r), _q:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L460"
            if (((_q.cmp(_expectedQ) != (0 : stdgo.GoInt)) || (_r.cmp(_expectedR) != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L461"
                _t.errorf(("#%d got (%s, %s) want (%s, %s)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(stdgo.Go.asInterface(_expectedQ)), stdgo.Go.toInterface(stdgo.Go.asInterface(_expectedR)));
            };
        };
    }

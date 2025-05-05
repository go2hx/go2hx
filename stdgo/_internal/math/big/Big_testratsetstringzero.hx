package stdgo._internal.math.big;
function testRatSetStringZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setString(("0" : stdgo.GoString)), _got:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, __8:Bool = __tmp__._1;
        var _want = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>).setInt64((0i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L212"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L213"
            _t.errorf(("got %#+v, want %#+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }

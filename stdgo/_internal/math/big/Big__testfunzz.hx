package stdgo._internal.math.big;
function _testFunZZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _msg:stdgo.GoString, _f:stdgo._internal.math.big.Big_t_funzz.T_funZZ, _a:stdgo._internal.math.big.Big_t_argzz.T_argZZ):Void {
        var _z:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L92"
        _f((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _a._x, _a._y);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L93"
        if (!stdgo._internal.math.big.Big__isnormalized._isNormalized((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L94"
            _t.errorf(("%s%v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L96"
        if ((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).cmp(_a._z) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L97"
            _t.errorf(("%v %s %v\n\tgot z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._x)), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._y)), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
        };
    }

package stdgo._internal.math.big;
function _testFunNN(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _msg:stdgo.GoString, _f:stdgo._internal.math.big.Big_t_funnn.T_funNN, _a:stdgo._internal.math.big.Big_t_argnn.T_argNN):Void {
        var _z = (_f(null, _a._x, _a._y) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L109"
        if (_z._cmp(_a._z) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L110"
            _t.errorf(("%s%+v\n\tgot z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
        };
    }

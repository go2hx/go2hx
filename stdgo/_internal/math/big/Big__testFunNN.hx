package stdgo._internal.math.big;
function _testFunNN(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _msg:stdgo.GoString, _f:stdgo._internal.math.big.Big_T_funNN.T_funNN, _a:stdgo._internal.math.big.Big_T_argNN.T_argNN):Void {
        var _z = (_f(null, _a._x, _a._y) : stdgo._internal.math.big.Big_T_nat.T_nat);
        if (_z._cmp(_a._z) != ((0 : stdgo.GoInt))) {
            _t.errorf(("%s%+v\n\tgot z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
        };
    }
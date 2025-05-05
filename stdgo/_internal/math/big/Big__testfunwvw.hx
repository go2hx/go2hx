package stdgo._internal.math.big;
function _testFunWVW(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _msg:stdgo.GoString, _f:stdgo._internal.math.big.Big_t_funwvw.T_funWVW, _a:stdgo._internal.math.big.Big_t_argwvw.T_argWVW):Void {
        var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_a._z.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _r = (_f(_z, _a._xn, _a._x, _a._y) : stdgo._internal.math.big.Big_word.Word);
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L527"
        for (_i => _zi in _z) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L528"
            if (_zi != (_a._z[(_i : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L529"
                _t.errorf(("%s%+v\n\tgot z[%d] = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_zi), stdgo.Go.toInterface(_a._z[(_i : stdgo.GoInt)]));
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L530"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L533"
        if (_r != (_a._r)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L534"
            _t.errorf(("%s%+v\n\tgot r = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_a._r));
        };
    }

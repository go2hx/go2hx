package stdgo._internal.math.big;
function _testFunVWW(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _msg:stdgo.GoString, _f:stdgo._internal.math.big.Big_t_funvww.T_funVWW, _a:stdgo._internal.math.big.Big_t_argvww.T_argVWW):Void {
        var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>((_a._z.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _c = (_f(_z, _a._x, _a._y, _a._r) : stdgo._internal.math.big.Big_word.Word);
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L501"
        for (_i => _zi in _z) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L502"
            if (_zi != (_a._z[(_i : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L503"
                _t.errorf(("%s%+v\n\tgot z[%d] = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_zi), stdgo.Go.toInterface(_a._z[(_i : stdgo.GoInt)]));
                //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L504"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L507"
        if (_c != (_a._c)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L508"
            _t.errorf(("%s%+v\n\tgot c = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_a._c));
        };
    }

package stdgo._internal.math.big;
function _testFunWVW(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _msg:stdgo.GoString, _f:stdgo._internal.math.big.Big_T_funWVW.T_funWVW, _a:stdgo._internal.math.big.Big_T_argWVW.T_argWVW):Void {
        var _z = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>((_a._z.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _r = (_f(_z, _a._xn, _a._x, _a._y) : stdgo._internal.math.big.Big_Word.Word);
        for (_i => _zi in _z) {
            if (_zi != (_a._z[(_i : stdgo.GoInt)])) {
                _t.errorf(("%s%+v\n\tgot z[%d] = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_zi), stdgo.Go.toInterface(_a._z[(_i : stdgo.GoInt)]));
                break;
            };
        };
        if (_r != (_a._r)) {
            _t.errorf(("%s%+v\n\tgot r = %#x; want %#x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_a._r));
        };
    }
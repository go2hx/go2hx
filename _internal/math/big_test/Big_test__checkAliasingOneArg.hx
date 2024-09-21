package _internal.math.big_test;
function _checkAliasingOneArg(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:(stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) -> stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool {
        var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_x), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_x);
var _v1 = __1, _x1 = __0;
        {
            var _out = _f(_v, _x);
            if (_out != (_v)) {
                return false;
            };
        };
        {
            var _out = _f(_v1, _v1);
            if (((_out != _v1) || !_internal.math.big_test.Big_test__equal._equal(_v1, _v) : Bool)) {
                _t.logf(("f(v, x) != f(x, x)" : stdgo.GoString));
                return false;
            };
        };
        return _internal.math.big_test.Big_test__equal._equal(_x, _x1);
    }

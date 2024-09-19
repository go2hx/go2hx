package _internal.math.big_test;
function _checkAliasingTwoArgs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:(stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) -> stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _v:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool {
        var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_x), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_y), __2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_v);
var _v1 = __2, _y1 = __1, _x1 = __0;
        {
            var _out = _f(_v, _x, _y);
            if (_out == null || (_out : Dynamic).__nil__) {
                return ((_internal.math.big_test.Big_test__equal._equal(_x, _x1) && _internal.math.big_test.Big_test__equal._equal(_y, _y1) : Bool) && _internal.math.big_test.Big_test__equal._equal(_v, _v1) : Bool);
            } else if (_out != (_v)) {
                return false;
            };
        };
        _v1.set(_x);
        {
            var _out = _f(_v1, _v1, _y);
            if (((_out != _v1) || !_internal.math.big_test.Big_test__equal._equal(_v1, _v) : Bool)) {
                _t.logf(("f(v, x, y) != f(x, x, y)" : stdgo.GoString));
                return false;
            };
        };
        _v1.set(_y);
        {
            var _out = _f(_v1, _x, _v1);
            if (((_out != _v1) || !_internal.math.big_test.Big_test__equal._equal(_v1, _v) : Bool)) {
                _t.logf(("f(v, x, y) != f(y, x, y)" : stdgo.GoString));
                return false;
            };
        };
        _v1.set(_v);
        var _y2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_y);
        {
            var _out = _f(_v, _y, _y2);
            if (_out == null || (_out : Dynamic).__nil__) {
                return ((_internal.math.big_test.Big_test__equal._equal(_y, _y1) && _internal.math.big_test.Big_test__equal._equal(_y2, _y1) : Bool) && _internal.math.big_test.Big_test__equal._equal(_v, _v1) : Bool);
            } else if (_out != (_v)) {
                return false;
            };
        };
        {
            var _out = _f(_v1, _y, _y);
            if (((_out != _v1) || !_internal.math.big_test.Big_test__equal._equal(_v1, _v) : Bool)) {
                _t.logf(("f(v, y1, y2) != f(v, y, y)" : stdgo.GoString));
                return false;
            };
        };
        _v1.set(_y);
        {
            var _out = _f(_v1, _v1, _v1);
            if (((_out != _v1) || !_internal.math.big_test.Big_test__equal._equal(_v1, _v) : Bool)) {
                _t.logf(("f(v, y1, y2) != f(y, y, y)" : stdgo.GoString));
                return false;
            };
        };
        return (_internal.math.big_test.Big_test__equal._equal(_x, _x1) && _internal.math.big_test.Big_test__equal._equal(_y, _y1) : Bool);
    }

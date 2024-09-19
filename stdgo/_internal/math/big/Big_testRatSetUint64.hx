package stdgo._internal.math.big;
function testRatSetUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testCases:stdgo.Slice<stdgo.GoUInt64> = (new stdgo.Slice<stdgo.GoUInt64>(4, 4, ...[(0i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (12345i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _r:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        for (_i => _want in _testCases) {
            _r.setUint64(_want);
            if (!_r.isInt()) {
                _t.errorf(("#%d: Rat.SetUint64(%d) is not an integer" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
            };
            var _num = _r.num();
            if (!_num.isUint64()) {
                _t.errorf(("#%d: Rat.SetUint64(%d) numerator is not a uint64" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
            };
            var _got = (_num.uint64() : stdgo.GoUInt64);
            if (_got != (_want)) {
                _t.errorf(("#%d: Rat.SetUint64(%d) = %d, but expected %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }

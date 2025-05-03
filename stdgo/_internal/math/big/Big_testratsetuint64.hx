package stdgo._internal.math.big;
function testRatSetUint64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo.GoUInt64>(4, 4, ...[(0i64 : stdgo.GoUInt64), (1i64 : stdgo.GoUInt64), (12345i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L681"
        for (_i => _want in _testCases) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L682"
            _r.setUint64(_want);
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L683"
            if (!_r.isInt()) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L684"
                _t.errorf(("#%d: Rat.SetUint64(%d) is not an integer" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
            };
            var _num = _r.num();
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L687"
            if (!_num.isUint64()) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L688"
                _t.errorf(("#%d: Rat.SetUint64(%d) numerator is not a uint64" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
            };
            var _got = (_num.uint64() : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L691"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/rat_test.go#L692"
                _t.errorf(("#%d: Rat.SetUint64(%d) = %d, but expected %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }

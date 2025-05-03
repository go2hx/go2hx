package stdgo._internal.math.big;
function testIssue20490(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_24.T__struct_24>(4, 4, ...[({ _a : (4 : stdgo.GoFloat64), _b : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_24.T__struct_24), ({ _a : (-4 : stdgo.GoFloat64), _b : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_24.T__struct_24), ({ _a : (4 : stdgo.GoFloat64), _b : (-1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_24.T__struct_24), ({ _a : (-4 : stdgo.GoFloat64), _b : (-1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_24.T__struct_24)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _a : (0 : stdgo.GoFloat64), _b : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_24.T__struct_24)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_24.T__struct_24>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1363"
        for (__8 => _test in _tests) {
            var __0 = stdgo._internal.math.big.Big_newfloat.newFloat(_test._a), __1 = stdgo._internal.math.big.Big_newfloat.newFloat(_test._b);
var _b = __1, _a = __0;
            var _diff = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).sub(_a, _b);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1366"
            _b.sub(_a, _b);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1367"
            if (_b.cmp(_diff) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1368"
                _t.errorf(("got %g - %g = %g; want %g\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.math.big.Big_newfloat.newFloat(_test._b))), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_diff)));
            };
            _b = stdgo._internal.math.big.Big_newfloat.newFloat(_test._b);
            var _sum = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).add(_a, _b);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1373"
            _b.add(_a, _b);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1374"
            if (_b.cmp(_sum) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1375"
                _t.errorf(("got %g + %g = %g; want %g\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.math.big.Big_newfloat.newFloat(_test._b))), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_sum)));
            };
        };
    }

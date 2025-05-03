package stdgo._internal.math.big;
function testFloatCmpSpecialValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero = (0 : stdgo.GoFloat64);
        var _args = (new stdgo.Slice<stdgo.GoFloat64>(8, 8, ...[stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), (-2.71828 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), -_zero, _zero, (1 : stdgo.GoFloat64), (2.71828 : stdgo.GoFloat64), stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        var _xx = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _yy = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1795"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (4 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1796"
                for (__8 => _x in _args) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1797"
                    _xx.setFloat64(_x);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1801"
                    {
                        var __tmp__ = _xx.float64(), _got:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                        if (((_got != _x) || (_acc != (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1802"
                            _t.errorf(("Float(%g) == %g (%s)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)));
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1804"
                    for (__9 => _y in _args) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1805"
                        _yy.setFloat64(_y);
                        var _got = (_xx.cmp(_yy) : stdgo.GoInt);
                        var _want = (0 : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1808"
                        if ((_x < _y : Bool)) {
                            _want = (-1 : stdgo.GoInt);
                        } else if ((_x > _y : Bool)) {
                            _want = (1 : stdgo.GoInt);
                        };
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1814"
                        if (_got != (_want)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1815"
                            _t.errorf(("(%g).Cmp(%g) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                        };
                    };
                };
                _i++;
            };
        };
    }

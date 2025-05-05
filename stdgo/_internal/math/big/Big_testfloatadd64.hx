package stdgo._internal.math.big;
function testFloatAdd64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1325"
        {
            var _d = (0 : stdgo.GoInt);
            while ((_d <= (16 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1326"
                for (_i => _ in (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>).__copy__()) {
                    var __0 = ((3.602879701896395e+16 : stdgo.GoFloat64) : stdgo.GoFloat64), __1 = (_d : stdgo.GoFloat64);
var _y0 = __1, _x0 = __0;
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1328"
                    if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        {
                            final __tmp__0 = _y0;
                            final __tmp__1 = _x0;
                            _x0 = @:binopAssign __tmp__0;
                            _y0 = @:binopAssign __tmp__1;
                        };
                    };
                    var _x = stdgo._internal.math.big.Big_newfloat.newFloat(_x0);
                    var _y = stdgo._internal.math.big.Big_newfloat.newFloat(_y0);
                    var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((53u32 : stdgo.GoUInt));
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1336"
                    _z.add(_x, _y);
                    var __tmp__ = _z.float64(), _got:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                    var _want = (_x0 + _y0 : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1339"
                    if (((_got != _want) || (_acc != (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1340"
                        _t.errorf(("d = %d: %g + %g = %g (%s); want %g (Exact)" : stdgo.GoString), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_x0), stdgo.Go.toInterface(_y0), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_want));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1343"
                    _z.sub(_z, _y);
                    {
                        var __tmp__ = _z.float64();
                        _got = @:tmpset0 __tmp__._0;
                        _acc = @:tmpset0 __tmp__._1;
                    };
                    _want = (_want - (_y0) : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1346"
                    if (((_got != _want) || (_acc != (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1347"
                        _t.errorf(("d = %d: %g - %g = %g (%s); want %g (Exact)" : stdgo.GoString), stdgo.Go.toInterface(_d), stdgo.Go.toInterface((_x0 + _y0 : stdgo.GoFloat64)), stdgo.Go.toInterface(_y0), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_want));
                    };
                };
                _d++;
            };
        };
    }

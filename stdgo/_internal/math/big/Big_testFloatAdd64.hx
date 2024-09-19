package stdgo._internal.math.big;
function testFloatAdd64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {
            var _d = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_d <= (16 : stdgo.GoInt) : Bool), _d++, {
                for (_i => _ in (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) {
                    var __0 = (3.602879701896395e+16 : stdgo.GoFloat64), __1 = (_d : stdgo.GoFloat64);
var _y0 = __1, _x0 = __0;
                    if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        {
                            final __tmp__0 = _y0;
                            final __tmp__1 = _x0;
                            _x0 = __tmp__0;
                            _y0 = __tmp__1;
                        };
                    };
                    var _x = stdgo._internal.math.big.Big_newFloat.newFloat(_x0);
                    var _y = stdgo._internal.math.big.Big_newFloat.newFloat(_y0);
                    var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((53u32 : stdgo.GoUInt));
                    _z.add(_x, _y);
                    var __tmp__ = _z.float64(), _got:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_Accuracy.Accuracy = __tmp__._1;
                    var _want = (_x0 + _y0 : stdgo.GoFloat64);
                    if (((_got != _want) || (_acc != (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy)) : Bool)) {
                        _t.errorf(("d = %d: %g + %g = %g (%s); want %g (Exact)" : stdgo.GoString), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_x0), stdgo.Go.toInterface(_y0), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_want));
                    };
                    _z.sub(_z, _y);
                    {
                        var __tmp__ = _z.float64();
                        _got = __tmp__._0;
                        _acc = __tmp__._1;
                    };
                    _want = (_want - (_y0) : stdgo.GoFloat64);
                    if (((_got != _want) || (_acc != (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy)) : Bool)) {
                        _t.errorf(("d = %d: %g - %g = %g (%s); want %g (Exact)" : stdgo.GoString), stdgo.Go.toInterface(_d), stdgo.Go.toInterface((_x0 + _y0 : stdgo.GoFloat64)), stdgo.Go.toInterface(_y0), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_want));
                    };
                };
            });
        };
    }

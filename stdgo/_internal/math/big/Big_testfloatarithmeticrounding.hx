package stdgo._internal.math.big;
function testFloatArithmeticRounding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1741"
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_27.T__struct_27>(12, 12, ...[
({ _mode : (2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (3u32 : stdgo.GoUInt), _x : (-8i64 : stdgo.GoInt64), _y : (-1i64 : stdgo.GoInt64), _want : (-8i64 : stdgo.GoInt64), _op : (43 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27),
({ _mode : (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (3u32 : stdgo.GoUInt), _x : (-8i64 : stdgo.GoInt64), _y : (-1i64 : stdgo.GoInt64), _want : (-10i64 : stdgo.GoInt64), _op : (43 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27),
({ _mode : (4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (3u32 : stdgo.GoUInt), _x : (-8i64 : stdgo.GoInt64), _y : (-1i64 : stdgo.GoInt64), _want : (-10i64 : stdgo.GoInt64), _op : (43 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27),
({ _mode : (2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (3u32 : stdgo.GoUInt), _x : (-8i64 : stdgo.GoInt64), _y : (1i64 : stdgo.GoInt64), _want : (-8i64 : stdgo.GoInt64), _op : (45 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27),
({ _mode : (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (3u32 : stdgo.GoUInt), _x : (-8i64 : stdgo.GoInt64), _y : (1i64 : stdgo.GoInt64), _want : (-10i64 : stdgo.GoInt64), _op : (45 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27),
({ _mode : (4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (3u32 : stdgo.GoUInt), _x : (-8i64 : stdgo.GoInt64), _y : (1i64 : stdgo.GoInt64), _want : (-10i64 : stdgo.GoInt64), _op : (45 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27),
({ _mode : (2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (3u32 : stdgo.GoUInt), _x : (-9i64 : stdgo.GoInt64), _y : (1i64 : stdgo.GoInt64), _want : (-8i64 : stdgo.GoInt64), _op : (42 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27),
({ _mode : (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (3u32 : stdgo.GoUInt), _x : (-9i64 : stdgo.GoInt64), _y : (1i64 : stdgo.GoInt64), _want : (-10i64 : stdgo.GoInt64), _op : (42 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27),
({ _mode : (4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (3u32 : stdgo.GoUInt), _x : (-9i64 : stdgo.GoInt64), _y : (1i64 : stdgo.GoInt64), _want : (-10i64 : stdgo.GoInt64), _op : (42 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27),
({ _mode : (2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (3u32 : stdgo.GoUInt), _x : (-9i64 : stdgo.GoInt64), _y : (1i64 : stdgo.GoInt64), _want : (-8i64 : stdgo.GoInt64), _op : (47 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27),
({ _mode : (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (3u32 : stdgo.GoUInt), _x : (-9i64 : stdgo.GoInt64), _y : (1i64 : stdgo.GoInt64), _want : (-10i64 : stdgo.GoInt64), _op : (47 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27),
({ _mode : (4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (3u32 : stdgo.GoUInt), _x : (-9i64 : stdgo.GoInt64), _y : (1i64 : stdgo.GoInt64), _want : (-10i64 : stdgo.GoInt64), _op : (47 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _mode : ((0 : stdgo.GoUInt8) : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _prec : (0 : stdgo.GoUInt), _x : (0 : stdgo.GoInt64), _y : (0 : stdgo.GoInt64), _want : (0 : stdgo.GoInt64), _op : (0 : stdgo.GoUInt8) } : stdgo._internal.math.big.Big_t__struct_27.T__struct_27)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_27.T__struct_27>)) {
            var _x:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_), _y:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_), _z:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1764"
            _x.setInt64(_test._x);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1765"
            _y.setInt64(_test._y);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1766"
            _z.setPrec(_test._prec).setMode(_test._mode);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1767"
            {
                final __value__ = _test._op;
                if (__value__ == ((43 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1769"
                    _z.add((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>));
                } else if (__value__ == ((45 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1771"
                    _z.sub((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>));
                } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1773"
                    _z.mul((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>));
                } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1775"
                    _z.quo((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1777"
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1779"
            {
                var __tmp__ = _z.int64(), _got:stdgo.GoInt64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                if (((_got != _test._want) || (_acc != (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1780"
                    _t.errorf(("%s, %d bits: %d %c %d = %d (%s); want %d (Exact)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._mode)), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._op), stdgo.Go.toInterface(_test._y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }

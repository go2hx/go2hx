package stdgo._internal.math.big;
function testFloatArithmeticOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1672"
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_26.T__struct_26>(23, 23, ...[
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (43 : stdgo.GoUInt8), _x : ("0" : stdgo.GoString), _y : ("0" : stdgo.GoString), _want : ("0" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (43 : stdgo.GoUInt8), _x : ("0x.8p+0" : stdgo.GoString), _y : ("0x.8p+0" : stdgo.GoString), _want : ("0x.8p+1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (43 : stdgo.GoUInt8), _x : ("0" : stdgo.GoString), _y : ("0x.8p2147483647" : stdgo.GoString), _want : ("0x.8p+2147483647" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (43 : stdgo.GoUInt8), _x : ("0x.8p2147483500" : stdgo.GoString), _y : ("0x.8p2147483647" : stdgo.GoString), _want : ("0x.8p+2147483647" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (43 : stdgo.GoUInt8), _x : ("0x.8p2147483647" : stdgo.GoString), _y : ("0x.8p2147483647" : stdgo.GoString), _want : ("+Inf" : stdgo.GoString), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (43 : stdgo.GoUInt8), _x : ("-0x.8p2147483647" : stdgo.GoString), _y : ("-0x.8p2147483647" : stdgo.GoString), _want : ("-Inf" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (45 : stdgo.GoUInt8), _x : ("-0x.8p2147483647" : stdgo.GoString), _y : ("0x.8p2147483647" : stdgo.GoString), _want : ("-Inf" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (43 : stdgo.GoUInt8), _x : ("0x.fp2147483647" : stdgo.GoString), _y : ("0x.8p2147483643" : stdgo.GoString), _want : ("0x.fp+2147483647" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (43 : stdgo.GoUInt8), _x : ("0x.fp2147483647" : stdgo.GoString), _y : ("0x.8p2147483643" : stdgo.GoString), _want : ("+Inf" : stdgo.GoString), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (43 : stdgo.GoUInt8), _x : ("0x.fp2147483647" : stdgo.GoString), _y : ("0x.8p2147483643" : stdgo.GoString), _want : ("+Inf" : stdgo.GoString), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (45 : stdgo.GoUInt8), _x : ("-0x.fp2147483647" : stdgo.GoString), _y : ("0x.8p2147483644" : stdgo.GoString), _want : ("-Inf" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (45 : stdgo.GoUInt8), _x : ("-0x.fp2147483647" : stdgo.GoString), _y : ("0x.8p2147483643" : stdgo.GoString), _want : ("-Inf" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (45 : stdgo.GoUInt8), _x : ("-0x.fp2147483647" : stdgo.GoString), _y : ("0x.8p2147483643" : stdgo.GoString), _want : ("-0x.fp+2147483647" : stdgo.GoString), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (43 : stdgo.GoUInt8), _x : ("0" : stdgo.GoString), _y : ("0x.8p-2147483648" : stdgo.GoString), _want : ("0x.8p-2147483648" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (43 : stdgo.GoUInt8), _x : ("0x.8p-2147483648" : stdgo.GoString), _y : ("0x.8p-2147483648" : stdgo.GoString), _want : ("0x.8p-2147483647" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (42 : stdgo.GoUInt8), _x : ("1" : stdgo.GoString), _y : ("0x.8p2147483647" : stdgo.GoString), _want : ("0x.8p+2147483647" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (42 : stdgo.GoUInt8), _x : ("2" : stdgo.GoString), _y : ("0x.8p2147483647" : stdgo.GoString), _want : ("+Inf" : stdgo.GoString), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (42 : stdgo.GoUInt8), _x : ("-2" : stdgo.GoString), _y : ("0x.8p2147483647" : stdgo.GoString), _want : ("-Inf" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (47 : stdgo.GoUInt8), _x : ("0.5" : stdgo.GoString), _y : ("0x.8p2147483647" : stdgo.GoString), _want : ("0x.8p-2147483646" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (47 : stdgo.GoUInt8), _x : ("0x.8p+0" : stdgo.GoString), _y : ("0x.8p2147483647" : stdgo.GoString), _want : ("0x.8p-2147483646" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (47 : stdgo.GoUInt8), _x : ("0x.8p-1" : stdgo.GoString), _y : ("0x.8p2147483647" : stdgo.GoString), _want : ("0x.8p-2147483647" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (47 : stdgo.GoUInt8), _x : ("0x.8p-2" : stdgo.GoString), _y : ("0x.8p2147483647" : stdgo.GoString), _want : ("0x.8p-2147483648" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26),
({ _prec : (4u32 : stdgo.GoUInt), _mode : (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (47 : stdgo.GoUInt8), _x : ("0x.8p-3" : stdgo.GoString), _y : ("0x.8p2147483647" : stdgo.GoString), _want : ("0" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26)].concat([for (i in 23 ... (23 > 23 ? 23 : 23 : stdgo.GoInt).toBasic()) ({ _prec : (0 : stdgo.GoUInt), _mode : ((0 : stdgo.GoUInt8) : stdgo._internal.math.big.Big_roundingmode.RoundingMode), _op : (0 : stdgo.GoUInt8), _x : ("" : stdgo.GoString), _y : ("" : stdgo.GoString), _want : ("" : stdgo.GoString), _acc : ((0 : stdgo.GoInt8) : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_26.T__struct_26)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_26.T__struct_26>)) {
            var _x = stdgo._internal.math.big.Big__makefloat._makeFloat(_test._x?.__copy__());
            var _y = stdgo._internal.math.big.Big__makefloat._makeFloat(_test._y?.__copy__());
            var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_test._prec).setMode(_test._mode);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1712"
            {
                final __value__ = _test._op;
                if (__value__ == ((43 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1714"
                    _z.add(_x, _y);
                } else if (__value__ == ((45 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1716"
                    _z.sub(_x, _y);
                } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1718"
                    _z.mul(_x, _y);
                } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1720"
                    _z.quo(_x, _y);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1722"
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1724"
            {
                var _got = (_z.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                if (((_got != _test._want) || (_z.acc() != _test._acc) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1725"
                    _t.errorf(("prec = %d (%s): %s %c %s = %s (%s); want %s (%s)" : stdgo.GoString), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._mode)), stdgo.Go.toInterface(_x.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_test._op), stdgo.Go.toInterface(_y.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_z.acc())), stdgo.Go.toInterface(_test._want), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._acc)));
                };
            };
        };
    }

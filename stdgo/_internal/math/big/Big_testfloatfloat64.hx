package stdgo._internal.math.big;
function testFloatFloat64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L940"
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_22.T__struct_22>(49, 49, ...[
({ _x : ("0" : stdgo.GoString), _out : (0 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("1e-1000" : stdgo.GoString), _out : (0 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.0000000000001p-1023" : stdgo.GoString), _out : (0 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.00000000000008p-1022" : stdgo.GoString), _out : (0 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.0000000000000cp-1022" : stdgo.GoString), _out : (5e-324 : stdgo.GoFloat64), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.00000000000010p-1022" : stdgo.GoString), _out : (5e-324 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x.8p-1073" : stdgo.GoString), _out : (5e-324 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("1p-1074" : stdgo.GoString), _out : (5e-324 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x.fffffffffffffp-1022" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((4503599627370495i64 : stdgo.GoUInt64)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.00000000000001p-1022" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((0i64 : stdgo.GoUInt64)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.00000000000004p-1022" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((0i64 : stdgo.GoUInt64)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.00000000000008p-1022" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((0i64 : stdgo.GoUInt64)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.00000000000009p-1022" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((1i64 : stdgo.GoUInt64)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.0000000000000ap-1022" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((1i64 : stdgo.GoUInt64)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.8p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((0i64 : stdgo.GoUInt64)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.9p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((1i64 : stdgo.GoUInt64)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.ap-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((1i64 : stdgo.GoUInt64)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.bp-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((1i64 : stdgo.GoUInt64)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x0.cp-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((1i64 : stdgo.GoUInt64)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x1.0p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((1i64 : stdgo.GoUInt64)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x1.7p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((1i64 : stdgo.GoUInt64)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x1.8p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((2i64 : stdgo.GoUInt64)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x1.9p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((2i64 : stdgo.GoUInt64)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x2.0p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((2i64 : stdgo.GoUInt64)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x2.8p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((2i64 : stdgo.GoUInt64)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x2.9p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((3i64 : stdgo.GoUInt64)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x3.0p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((3i64 : stdgo.GoUInt64)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x3.7p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((3i64 : stdgo.GoUInt64)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x3.8p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((4i64 : stdgo.GoUInt64)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x4.0p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((4i64 : stdgo.GoUInt64)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x4.8p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((4i64 : stdgo.GoUInt64)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x4.9p-1074" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((5i64 : stdgo.GoUInt64)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x.fffffffffffff8p-1022" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((4503599627370496i64 : stdgo.GoUInt64)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("1p-1022" : stdgo.GoString), _out : stdgo._internal.math.Math_float64frombits.float64frombits((4503599627370496i64 : stdgo.GoUInt64)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("1" : stdgo.GoString), _out : (1 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("1.000000000000000000001" : stdgo.GoString), _out : (1 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("12345.0" : stdgo.GoString), _out : (12345 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("12345.000000000000000000001" : stdgo.GoString), _out : (12345 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x1.fffffffffffff0p1023" : stdgo.GoString), _out : (1.7976931348623157e+308 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x1.fffffffffffff4p1023" : stdgo.GoString), _out : (1.7976931348623157e+308 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x1.fffffffffffff8p1023" : stdgo.GoString), _out : stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x1p1024" : stdgo.GoString), _out : stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("1e10000" : stdgo.GoString), _out : stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x1.fffffffffffff8p2147483646" : stdgo.GoString), _out : stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("Inf" : stdgo.GoString), _out : stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("0x.fffffffffffffp-1022" : stdgo.GoString), _out : (2.225073858507201e-308 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("4503599627370495p-1074" : stdgo.GoString), _out : (2.225073858507201e-308 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("2.2250738585072011e-308" : stdgo.GoString), _out : (2.225073858507201e-308 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22),
({ _x : ("2.2250738585072012e-308" : stdgo.GoString), _out : (2.2250738585072014e-308 : stdgo.GoFloat64), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22)].concat([for (i in 49 ... (49 > 49 ? 49 : 49 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _out : (0 : stdgo.GoFloat64), _acc : ((0 : stdgo.GoInt8) : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_22.T__struct_22)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_22.T__struct_22>)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1015"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (2 : stdgo.GoInt) : Bool)) {
                    var __0 = (_test._x.__copy__() : stdgo.GoString), __1 = (_test._out : stdgo.GoFloat64), __2 = (_test._acc : stdgo._internal.math.big.Big_accuracy.Accuracy);
var _tacc = __2, _tout = __1, _tx = __0;
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1018"
                    if (_i != ((0 : stdgo.GoInt))) {
                        _tx = (("-" : stdgo.GoString) + _tx.__copy__() : stdgo.GoString).__copy__();
                        _tout = -_tout;
                        _tacc = -_tacc;
                    };
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1025"
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_tx.__copy__(), (64 : stdgo.GoInt)), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_err == null) && !stdgo._internal.math.big.Big__alike64._alike64(_f, _tout) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1026"
                            _t.errorf(("%s: got %g; want %g (incorrect test data)" : stdgo.GoString), stdgo.Go.toInterface(_tx), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_tout));
                        };
                    };
var _x = stdgo._internal.math.big.Big__makefloat._makeFloat(_tx.__copy__());
var __tmp__ = _x.float64(), _out:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1031"
                    if ((!stdgo._internal.math.big.Big__alike64._alike64(_out, _tout) || (_acc != _tacc) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1032"
                        _t.errorf(("%s: got %g (%#016x, %s); want %g (%#016x, %s)" : stdgo.GoString), stdgo.Go.toInterface(_tx), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(stdgo._internal.math.Math_float64bits.float64bits(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(stdgo._internal.math.Math_float64bits.float64bits(_test._out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tacc)));
                    };
var _x2:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
var __tmp__ = _x2.setFloat64(_out).float64(), _out2:stdgo.GoFloat64 = __tmp__._0, _acc2:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1038"
                    if ((!stdgo._internal.math.big.Big__alike64._alike64(_out2, _out) || (_acc2 != (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1039"
                        _t.errorf(("idempotency test: got %g (%s); want %g (Exact)" : stdgo.GoString), stdgo.Go.toInterface(_out2), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc2)), stdgo.Go.toInterface(_out));
                    };
                    _i++;
                };
            };
        };
    }

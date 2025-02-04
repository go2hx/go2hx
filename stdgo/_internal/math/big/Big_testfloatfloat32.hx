package stdgo._internal.math.big;
function testFloatFloat32(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_21.T__struct_21>(56, 56, ...[
({ _x : ("0" : stdgo.GoString), _out : (0 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("1e-1000" : stdgo.GoString), _out : (0 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.000002p-127" : stdgo.GoString), _out : (0 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x.0000010p-126" : stdgo.GoString), _out : (0 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("1.401298464e-45" : stdgo.GoString), _out : (1.401298464324817e-45 : stdgo.GoFloat64), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x.ffffff8p-149" : stdgo.GoString), _out : (1.401298464324817e-45 : stdgo.GoFloat64), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x.0000018p-126" : stdgo.GoString), _out : (1.401298464324817e-45 : stdgo.GoFloat64), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x.0000020p-126" : stdgo.GoString), _out : (1.401298464324817e-45 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x.8p-148" : stdgo.GoString), _out : (1.401298464324817e-45 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("1p-149" : stdgo.GoString), _out : (1.401298464324817e-45 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x.fffffep-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((8388607u32 : stdgo.GoUInt32)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.0000001p-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((0u32 : stdgo.GoUInt32)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.0000008p-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((0u32 : stdgo.GoUInt32)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.0000010p-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((0u32 : stdgo.GoUInt32)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.0000011p-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((1u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.0000018p-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((1u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1.0000000p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((1u32 : stdgo.GoUInt32)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.0000020p-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((1u32 : stdgo.GoUInt32)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.fffffe0p-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((8388607u32 : stdgo.GoUInt32)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1.0000000p-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((8388608u32 : stdgo.GoUInt32)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.8p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((0u32 : stdgo.GoUInt32)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.9p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((1u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.ap-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((1u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.bp-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((1u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x0.cp-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((1u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1.0p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((1u32 : stdgo.GoUInt32)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1.7p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((1u32 : stdgo.GoUInt32)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1.8p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((2u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1.9p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((2u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x2.0p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((2u32 : stdgo.GoUInt32)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x2.8p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((2u32 : stdgo.GoUInt32)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x2.9p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((3u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x3.0p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((3u32 : stdgo.GoUInt32)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x3.7p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((3u32 : stdgo.GoUInt32)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x3.8p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((4u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x4.0p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((4u32 : stdgo.GoUInt32)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x4.8p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((4u32 : stdgo.GoUInt32)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x4.9p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((5u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x7.7p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((7u32 : stdgo.GoUInt32)), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x7.8p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((8u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x7.9p-149" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((8u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x.ffffffp-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((8388608u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("1p-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((8388608u32 : stdgo.GoUInt32)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1.fffffep-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((16777215u32 : stdgo.GoUInt32)), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1.ffffffp-126" : stdgo.GoString), _out : stdgo._internal.math.Math_float32frombits.float32frombits((16777216u32 : stdgo.GoUInt32)), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("1" : stdgo.GoString), _out : (1 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("1.000000000000000000001" : stdgo.GoString), _out : (1 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("12345.0" : stdgo.GoString), _out : (12345 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("12345.000000000000000000001" : stdgo.GoString), _out : (12345 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1.fffffe0p127" : stdgo.GoString), _out : (3.4028234663852886e+38 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1.fffffe8p127" : stdgo.GoString), _out : (3.4028234663852886e+38 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1.ffffff0p127" : stdgo.GoString), _out : (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat32), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1p128" : stdgo.GoString), _out : (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat32), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("1e10000" : stdgo.GoString), _out : (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat32), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("0x1.ffffff0p2147483646" : stdgo.GoString), _out : (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat32), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21),
({ _x : ("Inf" : stdgo.GoString), _out : (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat32), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21)].concat([for (i in 56 ... (56 > 56 ? 56 : 56 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _out : (0 : stdgo.GoFloat32), _acc : ((0 : stdgo.GoInt8) : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_21.T__struct_21)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_21.T__struct_21>)) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (2 : stdgo.GoInt) : Bool)) {
                    var __0 = (_test._x.__copy__() : stdgo.GoString), __1 = (_test._out : stdgo.GoFloat32), __2 = (_test._acc : stdgo._internal.math.big.Big_accuracy.Accuracy);
var _tacc = __2, _tout = __1, _tx = __0;
if (_i != ((0 : stdgo.GoInt))) {
                        _tx = (("-" : stdgo.GoString) + _tx.__copy__() : stdgo.GoString).__copy__();
                        _tout = -_tout;
                        _tacc = -_tacc;
                    };
{
                        var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_tx.__copy__(), (32 : stdgo.GoInt)), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (((_err == null) && !stdgo._internal.math.big.Big__alike32._alike32((_f : stdgo.GoFloat32), _tout) : Bool)) {
                            @:check2r _t.errorf(("%s: got %g; want %g (incorrect test data)" : stdgo.GoString), stdgo.Go.toInterface(_tx), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_tout));
                        };
                    };
var _x = stdgo._internal.math.big.Big__makefloat._makeFloat(_tx.__copy__());
var __tmp__ = @:check2r _x.float32(), _out:stdgo.GoFloat32 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
if ((!stdgo._internal.math.big.Big__alike32._alike32(_out, _tout) || (_acc != _tacc) : Bool)) {
                        @:check2r _t.errorf(("%s: got %g (%#08x, %s); want %g (%#08x, %s)" : stdgo.GoString), stdgo.Go.toInterface(_tx), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(stdgo._internal.math.Math_float32bits.float32bits(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(stdgo._internal.math.Math_float32bits.float32bits(_test._out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tacc)));
                    };
var _x2:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
var __tmp__ = @:check2r @:check2 _x2.setFloat64((_out : stdgo.GoFloat64)).float32(), _out2:stdgo.GoFloat32 = __tmp__._0, _acc2:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
if ((!stdgo._internal.math.big.Big__alike32._alike32(_out2, _out) || (_acc2 != (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                        @:check2r _t.errorf(("idempotency test: got %g (%s); want %g (Exact)" : stdgo.GoString), stdgo.Go.toInterface(_out2), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc2)), stdgo.Go.toInterface(_out));
                    };
                    _i++;
                };
            };
        };
    }

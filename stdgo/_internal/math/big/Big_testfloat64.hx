package stdgo._internal.math.big;
function testFloat64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_48.T__struct_48>(22, 22, ...[
({ _istr : ("-1000000000000000000000000000000000000000000000000000000" : stdgo.GoString), _f : (-1e+54 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-9223372036854775809" : stdgo.GoString), _f : (-9.223372036854776e+18 : stdgo.GoFloat64), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-9223372036854775808" : stdgo.GoString), _f : (-9.223372036854776e+18 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-9223372036854775807" : stdgo.GoString), _f : (-9.223372036854776e+18 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-18014398509481985" : stdgo.GoString), _f : (-1.8014398509481984e+16 : stdgo.GoFloat64), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-18014398509481984" : stdgo.GoString), _f : (-1.8014398509481984e+16 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-18014398509481983" : stdgo.GoString), _f : (-1.8014398509481984e+16 : stdgo.GoFloat64), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-9007199254740993" : stdgo.GoString), _f : (-9.007199254740992e+15 : stdgo.GoFloat64), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-9007199254740992" : stdgo.GoString), _f : (-9.007199254740992e+15 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-9007199254740991" : stdgo.GoString), _f : (-9.007199254740991e+15 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-4503599627370497" : stdgo.GoString), _f : (-4.503599627370497e+15 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-4503599627370496" : stdgo.GoString), _f : (-4.503599627370496e+15 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-4503599627370495" : stdgo.GoString), _f : (-4.503599627370495e+15 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-12345" : stdgo.GoString), _f : (-12345 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("-1" : stdgo.GoString), _f : (-1 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("0" : stdgo.GoString), _f : (0 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("1" : stdgo.GoString), _f : (1 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("12345" : stdgo.GoString), _f : (12345 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("0x1010000000000000" : stdgo.GoString), _f : (1.1574251042342175e+18 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("9223372036854775807" : stdgo.GoString), _f : (9.223372036854776e+18 : stdgo.GoFloat64), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("9223372036854775808" : stdgo.GoString), _f : (9.223372036854776e+18 : stdgo.GoFloat64), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48),
({ _istr : ("1000000000000000000000000000000000000000000000000000000" : stdgo.GoString), _f : (1e+54 : stdgo.GoFloat64), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48)].concat([for (i in 22 ... (22 > 22 ? 22 : 22 : stdgo.GoInt).toBasic()) ({ _istr : ("" : stdgo.GoString), _f : (0 : stdgo.GoFloat64), _acc : ((0 : stdgo.GoInt8) : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_48.T__struct_48)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_48.T__struct_48>)) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._istr?.__copy__(), (0 : stdgo.GoInt)), _i:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("SetString(%s) failed" : stdgo.GoString), stdgo.Go.toInterface(_test._istr));
                continue;
            };
            var __tmp__ = @:check2r _i.float64(), _f:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
            if (((_f != _test._f) || (_acc != _test._acc) : Bool)) {
                @:check2r _t.errorf(("%s: got %f (%s); want %f (%s)" : stdgo.GoString), stdgo.Go.toInterface(_test._istr), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_test._f), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._acc)));
            };
            var __tmp__ = @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setInt(_i).float64(), _f2:stdgo.GoFloat64 = __tmp__._0, _acc2:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
            if (((_f != _f2) || (_acc != _acc2) : Bool)) {
                @:check2r _t.errorf(("%s: got %f (%s); Float.Float64 gives %f (%s)" : stdgo.GoString), stdgo.Go.toInterface(_test._istr), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc2)));
            };
        };
    }

package stdgo._internal.math.big;
function testFloatSetPrec(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L104"
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_11.T__struct_11>(14, 14, ...[
({ _x : ("0" : stdgo.GoString), _prec : (0u32 : stdgo.GoUInt), _want : ("0" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("-0" : stdgo.GoString), _prec : (0u32 : stdgo.GoUInt), _want : ("-0" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("-Inf" : stdgo.GoString), _prec : (0u32 : stdgo.GoUInt), _want : ("-Inf" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("+Inf" : stdgo.GoString), _prec : (0u32 : stdgo.GoUInt), _want : ("+Inf" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("123" : stdgo.GoString), _prec : (0u32 : stdgo.GoUInt), _want : ("0" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("-123" : stdgo.GoString), _prec : (0u32 : stdgo.GoUInt), _want : ("-0" : stdgo.GoString), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("0" : stdgo.GoString), _prec : (-1u32 : stdgo.GoUInt), _want : ("0" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("-0" : stdgo.GoString), _prec : (-1u32 : stdgo.GoUInt), _want : ("-0" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("-Inf" : stdgo.GoString), _prec : (-1u32 : stdgo.GoUInt), _want : ("-Inf" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("+Inf" : stdgo.GoString), _prec : (-1u32 : stdgo.GoUInt), _want : ("+Inf" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("1.5" : stdgo.GoString), _prec : (1u32 : stdgo.GoUInt), _want : ("2" : stdgo.GoString), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("-1.5" : stdgo.GoString), _prec : (1u32 : stdgo.GoUInt), _want : ("-2" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("123" : stdgo.GoString), _prec : (1000000u32 : stdgo.GoUInt), _want : ("123" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11),
({ _x : ("-123" : stdgo.GoString), _prec : (1000000u32 : stdgo.GoUInt), _want : ("-123" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _prec : (0 : stdgo.GoUInt), _want : ("" : stdgo.GoString), _acc : ((0 : stdgo.GoInt8) : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_11.T__struct_11)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_11.T__struct_11>)) {
            var _x = stdgo._internal.math.big.Big__makefloat._makeFloat(_test._x?.__copy__()).setPrec(_test._prec);
            var _prec = (_test._prec : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L132"
            if ((_prec > (-1u32 : stdgo.GoUInt) : Bool)) {
                _prec = (-1u32 : stdgo.GoUInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L135"
            {
                var _got = (_x.prec() : stdgo.GoUInt);
                if (_got != (_prec)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L136"
                    _t.errorf(("%s.SetPrec(%d).Prec() == %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_prec));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L138"
            {
                var __0 = ((_x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (_x.acc() : stdgo._internal.math.big.Big_accuracy.Accuracy);
var _acc = __1, _got = __0;
                if (((_got != _test._want) || (_acc != _test._acc) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L139"
                    _t.errorf(("%s.SetPrec(%d) = %s (%s); want %s (%s)" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_test._want), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._acc)));
                };
            };
        };
    }

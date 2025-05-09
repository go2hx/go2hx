package stdgo._internal.math.big;
function testFloatRat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1091"
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_23.T__struct_23>(14, 14, ...[
({ _x : ("0" : stdgo.GoString), _want : ("0/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("+0" : stdgo.GoString), _want : ("0/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("-0" : stdgo.GoString), _want : ("0/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("Inf" : stdgo.GoString), _want : ("nil" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("+Inf" : stdgo.GoString), _want : ("nil" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("-Inf" : stdgo.GoString), _want : ("nil" : stdgo.GoString), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("1" : stdgo.GoString), _want : ("1/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("-1" : stdgo.GoString), _want : ("-1/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("1.25" : stdgo.GoString), _want : ("5/4" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("-1.25" : stdgo.GoString), _want : ("-5/4" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("1e10" : stdgo.GoString), _want : ("10000000000/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("1p10" : stdgo.GoString), _want : ("1024/1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("-1p-10" : stdgo.GoString), _want : ("-1/1024" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("3.14159265" : stdgo.GoString), _want : ("7244019449799623199/2305843009213693952" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _want : ("" : stdgo.GoString), _acc : ((0 : stdgo.GoInt8) : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_23.T__struct_23>)) {
            var _x = stdgo._internal.math.big.Big__makefloat._makeFloat(_test._x?.__copy__()).setPrec((64u32 : stdgo.GoUInt));
            var __tmp__ = _x.rat(null), _res:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
            var _got = (("nil" : stdgo.GoString) : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1113"
            if (({
                final value = _res;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _got = (_res.string() : stdgo.GoString)?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1116"
            if (_got != (_test._want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1117"
                _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1118"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1120"
            if (_acc != (_test._acc)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1121"
                _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._acc)));
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1122"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1126"
            if (({
                final value = _res;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((64u32 : stdgo.GoUInt)).setRat(_res);
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1128"
                if (_got.cmp(_x) != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1129"
                    _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1135"
        for (__9 => _f in (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("-1" : stdgo.GoString), ("1234" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _x = stdgo._internal.math.big.Big__makefloat._makeFloat(_f?.__copy__());
            var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1138"
            {
                var __tmp__ = _x.rat(_r), _res:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, __10:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                if (_res != (_r)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1139"
                    _t.errorf(("(%s).Rat is not using supplied *Rat" : stdgo.GoString), stdgo.Go.toInterface(_f));
                };
            };
        };
    }

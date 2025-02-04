package stdgo._internal.math.big;
function testFloatInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_23.T__struct_23>(17, 17, ...[
({ _x : ("0" : stdgo.GoString), _want : ("0" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("+0" : stdgo.GoString), _want : ("0" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("-0" : stdgo.GoString), _want : ("0" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("Inf" : stdgo.GoString), _want : ("nil" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("+Inf" : stdgo.GoString), _want : ("nil" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("-Inf" : stdgo.GoString), _want : ("nil" : stdgo.GoString), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("1" : stdgo.GoString), _want : ("1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("-1" : stdgo.GoString), _want : ("-1" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("1.23" : stdgo.GoString), _want : ("1" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("-1.23" : stdgo.GoString), _want : ("-1" : stdgo.GoString), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("123e-2" : stdgo.GoString), _want : ("1" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("123e-3" : stdgo.GoString), _want : ("0" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("123e-4" : stdgo.GoString), _want : ("0" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("1e-1000" : stdgo.GoString), _want : ("0" : stdgo.GoString), _acc : (-1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("-1e-1000" : stdgo.GoString), _want : ("0" : stdgo.GoString), _acc : (1 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("1e+10" : stdgo.GoString), _want : ("10000000000" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23),
({ _x : ("1e+100" : stdgo.GoString), _want : ("10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" : stdgo.GoString), _acc : (0 : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _want : ("" : stdgo.GoString), _acc : ((0 : stdgo.GoInt8) : stdgo._internal.math.big.Big_accuracy.Accuracy) } : stdgo._internal.math.big.Big_t__struct_23.T__struct_23)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_23.T__struct_23>)) {
            var _x = stdgo._internal.math.big.Big__makefloat._makeFloat(_test._x?.__copy__());
            var __tmp__ = @:check2r _x.int_(null), _res:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
            var _got = (("nil" : stdgo.GoString) : stdgo.GoString);
            if ((_res != null && ((_res : Dynamic).__nil__ == null || !(_res : Dynamic).__nil__))) {
                _got = (@:check2r _res.string() : stdgo.GoString)?.__copy__();
            };
            if (((_got != _test._want) || (_acc != _test._acc) : Bool)) {
                @:check2r _t.errorf(("%s: got %s (%s); want %s (%s)" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_test._want), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._acc)));
            };
        };
        for (__9 => _f in (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("-1" : stdgo.GoString), ("1234" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _x = stdgo._internal.math.big.Big__makefloat._makeFloat(_f?.__copy__());
            var _i = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            {
                var __tmp__ = @:check2r _x.int_(_i), _res:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __10:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                if (_res != (_i)) {
                    @:check2r _t.errorf(("(%s).Int is not using supplied *Int" : stdgo.GoString), stdgo.Go.toInterface(_f));
                };
            };
        };
    }

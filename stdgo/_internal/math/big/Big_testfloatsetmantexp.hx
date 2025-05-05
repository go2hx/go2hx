package stdgo._internal.math.big;
function testFloatSetMantExp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L243"
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_15.T__struct_15>(16, 16, ...[
({ _frac : ("0" : stdgo.GoString), _exp : (0 : stdgo.GoInt), _z : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("+0" : stdgo.GoString), _exp : (0 : stdgo.GoInt), _z : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("-0" : stdgo.GoString), _exp : (0 : stdgo.GoInt), _z : ("-0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("Inf" : stdgo.GoString), _exp : (1234 : stdgo.GoInt), _z : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("+Inf" : stdgo.GoString), _exp : (-1234 : stdgo.GoInt), _z : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("-Inf" : stdgo.GoString), _exp : (-1234 : stdgo.GoInt), _z : ("-Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("0" : stdgo.GoString), _exp : (-2147483648 : stdgo.GoInt), _z : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("0.25" : stdgo.GoString), _exp : (-2147483648 : stdgo.GoInt), _z : ("+0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("-0.25" : stdgo.GoString), _exp : (-2147483648 : stdgo.GoInt), _z : ("-0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("1" : stdgo.GoString), _exp : (2147483647 : stdgo.GoInt), _z : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("2" : stdgo.GoString), _exp : (2147483646 : stdgo.GoInt), _z : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("0.75" : stdgo.GoString), _exp : (1 : stdgo.GoInt), _z : ("1.5" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("0.5" : stdgo.GoString), _exp : (11 : stdgo.GoInt), _z : ("1024" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("-0.5" : stdgo.GoString), _exp : (-2 : stdgo.GoInt), _z : ("-0.125" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("32" : stdgo.GoString), _exp : (5 : stdgo.GoInt), _z : ("1024" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15),
({ _frac : ("1024" : stdgo.GoString), _exp : (-10 : stdgo.GoInt), _z : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({ _frac : ("" : stdgo.GoString), _exp : (0 : stdgo.GoInt), _z : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_15.T__struct_15)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_15.T__struct_15>)) {
            var _frac = stdgo._internal.math.big.Big__makefloat._makeFloat(_test._frac?.__copy__());
            var _want = stdgo._internal.math.big.Big__makefloat._makeFloat(_test._z?.__copy__());
            var _z:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L268"
            _z.setMantExp(_frac, _test._exp);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L269"
            if (!stdgo._internal.math.big.Big__alike._alike((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>), _want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L270"
                _t.errorf(("SetMantExp(%s, %d) = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._frac), stdgo.Go.toInterface(_test._exp), stdgo.Go.toInterface(_z.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_test._z));
            };
            var _mant = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L274"
            if (_z.setMantExp(_mant, _want.mantExp(_mant)).cmp(_want) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L275"
                _t.errorf(("Inverse property not satisfied: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_z.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_test._z));
            };
        };
    }

package stdgo._internal.math.big;
function testFloatSetFloat64String(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _inf = (stdgo._internal.math.Math_inf.inf((0 : stdgo.GoInt)) : stdgo.GoFloat64);
        var _nan = (stdgo._internal.math.Math_nan.naN() : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L22"
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_28.T__struct_28>(117, 117, ...[
({ _s : ("0" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0" : stdgo.GoString), _x : -stdgo._internal.math.big.Big__zero_._zero_ } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("+0" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1" : stdgo.GoString), _x : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-1" : stdgo.GoString), _x : (-1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("+1" : stdgo.GoString), _x : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1.234" : stdgo.GoString), _x : (1.234 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-1.234" : stdgo.GoString), _x : (-1.234 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("+1.234" : stdgo.GoString), _x : (1.234 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : (".1" : stdgo.GoString), _x : (0.1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1." : stdgo.GoString), _x : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("+1." : stdgo.GoString), _x : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0e100" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0e+100" : stdgo.GoString), _x : -stdgo._internal.math.big.Big__zero_._zero_ } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("+0e-100" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0E100" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0E+100" : stdgo.GoString), _x : -stdgo._internal.math.big.Big__zero_._zero_ } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("+0E-100" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1.e10" : stdgo.GoString), _x : (1e+10 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1e+10" : stdgo.GoString), _x : (1e+10 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("+1e-10" : stdgo.GoString), _x : (1e-10 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1E10" : stdgo.GoString), _x : (1e+10 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1.E+10" : stdgo.GoString), _x : (1e+10 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("+1E-10" : stdgo.GoString), _x : (1e-10 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("Inf" : stdgo.GoString), _x : _inf } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("+Inf" : stdgo.GoString), _x : _inf } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-Inf" : stdgo.GoString), _x : -_inf } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("inf" : stdgo.GoString), _x : _inf } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("+inf" : stdgo.GoString), _x : _inf } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-inf" : stdgo.GoString), _x : -_inf } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0x" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0e" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1.2ef" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("2..3" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("123.." : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("infinity" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("foobar" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("_" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0_" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1__0" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("123_." : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("123._" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("123._4" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1_2.3_4_" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("_.123" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("_123.456" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("10._0" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("10.0e_0" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("10.0e0_" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0P-0__0" : stdgo.GoString), _x : _nan } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("3.14159265" : stdgo.GoString), _x : (3.14159265 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-687436.79457e-245" : stdgo.GoString), _x : (-6.8743679457e-240 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-687436.79457E245" : stdgo.GoString), _x : (-6.8743679457e+250 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : (".0000000000000000000000000000000000000001" : stdgo.GoString), _x : (1e-40 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("+10000000000000000000000000000000000000000e-0" : stdgo.GoString), _x : (1e+40 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0p0" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0p0" : stdgo.GoString), _x : -stdgo._internal.math.big.Big__zero_._zero_ } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1p10" : stdgo.GoString), _x : (1024 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1p+10" : stdgo.GoString), _x : (1024 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("+1p-10" : stdgo.GoString), _x : (0.0009765625 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1024p-12" : stdgo.GoString), _x : (0.25 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-1p10" : stdgo.GoString), _x : (-1024 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1.5p1" : stdgo.GoString), _x : (3 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b0" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0b0" : stdgo.GoString), _x : -stdgo._internal.math.big.Big__zero_._zero_ } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b0e+10" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0b0e-10" : stdgo.GoString), _x : -stdgo._internal.math.big.Big__zero_._zero_ } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b1010" : stdgo.GoString), _x : (10 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0B1010E2" : stdgo.GoString), _x : (1000 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b.1" : stdgo.GoString), _x : (0.5 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b.001" : stdgo.GoString), _x : (0.125 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b.001e3" : stdgo.GoString), _x : (125 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b0p+10" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0b0p-10" : stdgo.GoString), _x : -stdgo._internal.math.big.Big__zero_._zero_ } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b.1010p4" : stdgo.GoString), _x : (10 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b1p-1" : stdgo.GoString), _x : (0.5 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b001p-3" : stdgo.GoString), _x : (0.125 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b.001p3" : stdgo.GoString), _x : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b0.01p2" : stdgo.GoString), _x : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b0.01P+2" : stdgo.GoString), _x : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0o0" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0o0" : stdgo.GoString), _x : -stdgo._internal.math.big.Big__zero_._zero_ } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0o0e+10" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0o0e-10" : stdgo.GoString), _x : -stdgo._internal.math.big.Big__zero_._zero_ } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0o12" : stdgo.GoString), _x : (10 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0O12E2" : stdgo.GoString), _x : (1000 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0o.4" : stdgo.GoString), _x : (0.5 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0o.01" : stdgo.GoString), _x : (0.015625 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0o.01e3" : stdgo.GoString), _x : (15.625 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0o0p+10" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0o0p-10" : stdgo.GoString), _x : -stdgo._internal.math.big.Big__zero_._zero_ } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0o.12p6" : stdgo.GoString), _x : (10 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0o4p-3" : stdgo.GoString), _x : (0.5 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0o0014p-6" : stdgo.GoString), _x : (0.1875 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0o.001p9" : stdgo.GoString), _x : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0o0.01p7" : stdgo.GoString), _x : (2 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0O0.01P+2" : stdgo.GoString), _x : (0.0625 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0x0" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0x0" : stdgo.GoString), _x : -stdgo._internal.math.big.Big__zero_._zero_ } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0x0p+10" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0x0p-10" : stdgo.GoString), _x : -stdgo._internal.math.big.Big__zero_._zero_ } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0xff" : stdgo.GoString), _x : (255 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0X.8p1" : stdgo.GoString), _x : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0X0.00008p16" : stdgo.GoString), _x : (-0.5 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("-0X0.00008P+16" : stdgo.GoString), _x : (-0.5 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0x0.0000000000001p-1022" : stdgo.GoString), _x : (5e-324 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0x1.fffffffffffffp1023" : stdgo.GoString), _x : (1.7976931348623157e+308 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0_0" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1_000." : stdgo.GoString), _x : (1000 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1_2_3.4_5_6" : stdgo.GoString), _x : (123.456 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1.0e0_0" : stdgo.GoString), _x : (1 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("1p+1_0" : stdgo.GoString), _x : (1024 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b_1000" : stdgo.GoString), _x : (8 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0b_1011_1101" : stdgo.GoString), _x : (189 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28),
({ _s : ("0x_f0_0d_1eP+0_8" : stdgo.GoString), _x : (4.027391488e+09 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28)].concat([for (i in 117 ... (117 > 117 ? 117 : 117 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _x : (0 : stdgo.GoFloat64) } : stdgo._internal.math.big.Big_t__struct_28.T__struct_28)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_28.T__struct_28>)) {
            var _x:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L172"
            _x.setPrec((53u32 : stdgo.GoUInt));
            var __tmp__ = _x.setString(_test._s?.__copy__()), __9:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L174"
            if (stdgo._internal.math.Math_isnan.isNaN(_test._x)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L176"
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L177"
                    _t.errorf(("%s: want parse error" : stdgo.GoString), stdgo.Go.toInterface(_test._s));
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L179"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L182"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L183"
                _t.errorf(("%s: got parse error" : stdgo.GoString), stdgo.Go.toInterface(_test._s));
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L184"
                continue;
            };
            var __tmp__ = _x.float64(), _f:stdgo.GoFloat64 = __tmp__._0, __10:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
            var _want = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setFloat64(_test._x);
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L188"
            if (((_x.cmp(_want) != (0 : stdgo.GoInt)) || (_x.signbit() != _want.signbit()) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L189"
                _t.errorf(("%s: got %v (%v); want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>))), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_test._x));
            };
        };
    }

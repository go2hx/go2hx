package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testFormatComplex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T__struct_1.T__struct_1>(9, 9, ...[({ _c : ((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64)), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (128 : stdgo.GoInt), _out : ("(1+2i)" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_1.T__struct_1), ({ _c : ((3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -4f64)), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (128 : stdgo.GoInt), _out : ("(3-4i)" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_1.T__struct_1), ({ _c : ((-5f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 6f64)), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (128 : stdgo.GoInt), _out : ("(-5+6i)" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_1.T__struct_1), ({ _c : ((-7f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -8f64)), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (128 : stdgo.GoInt), _out : ("(-7-8i)" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_1.T__struct_1), ({ _c : ((3.14159f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0.00123f64)), _fmt : (101 : stdgo.GoUInt8), _prec : (3 : stdgo.GoInt), _bitSize : (128 : stdgo.GoInt), _out : ("(3.142e+00+1.230e-03i)" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_1.T__struct_1), ({ _c : ((3.14159f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0.00123f64)), _fmt : (102 : stdgo.GoUInt8), _prec : (3 : stdgo.GoInt), _bitSize : (128 : stdgo.GoInt), _out : ("(3.142+0.001i)" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_1.T__struct_1), ({ _c : ((3.14159f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0.00123f64)), _fmt : (103 : stdgo.GoUInt8), _prec : (3 : stdgo.GoInt), _bitSize : (128 : stdgo.GoInt), _out : ("(3.14+0.00123i)" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_1.T__struct_1), ({ _c : ((1.2345678901234567f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 9.876543210987654f64)), _fmt : (102 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (128 : stdgo.GoInt), _out : ("(1.2345678901234567+9.876543210987654i)" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_1.T__struct_1), ({ _c : ((1.2345678901234567f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 9.876543210987654f64)), _fmt : (102 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt), _out : ("(1.2345679+9.876543i)" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_1.T__struct_1)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _c : new stdgo.GoComplex128(0, 0), _fmt : (0 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _bitSize : (0 : stdgo.GoInt), _out : ("" : stdgo.GoString) } : _internal.strconv_test.Strconv_test_T__struct_1.T__struct_1)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T__struct_1.T__struct_1>);
        for (__0 => _test in _tests) {
            var _out = (stdgo._internal.strconv.Strconv_formatComplex.formatComplex(_test._c, _test._fmt, _test._prec, _test._bitSize)?.__copy__() : stdgo.GoString);
            if (_out != (_test._out)) {
                _t.fatalf(("FormatComplex(%v, %q, %d, %d) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._c), stdgo.Go.toInterface(_test._fmt), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(_test._bitSize), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_test._out));
            };
        };
    }

package stdgo._internal.math.big;
function testFloat64Text(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L202"
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_29.T__struct_29>(107, 107, ...[
({ _x : (0 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), _format : (102 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("-0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (-1 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("-1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.001 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("1e-03" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.459 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("5e-01" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.459 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("1e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (2.459 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (1 : stdgo.GoInt), _want : ("2.5e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (3.459 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (2 : stdgo.GoInt), _want : ("3.46e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (4.459 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (3 : stdgo.GoInt), _want : ("4.459e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (5.459 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (4 : stdgo.GoInt), _want : ("5.4590e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.001 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.459 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.459 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (2.459 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (1 : stdgo.GoInt), _want : ("2.5" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (3.459 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (2 : stdgo.GoInt), _want : ("3.46" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (4.459 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (3 : stdgo.GoInt), _want : ("4.459" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (5.459 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (4 : stdgo.GoInt), _want : ("5.4590" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0 : stdgo.GoFloat64), _format : (98 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), _format : (98 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("-0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1 : stdgo.GoFloat64), _format : (98 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("4503599627370496p-52" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (-1 : stdgo.GoFloat64), _format : (98 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("-4503599627370496p-52" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (4.503599627370496e+15 : stdgo.GoFloat64), _format : (98 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("4503599627370496p+0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0 : stdgo.GoFloat64), _format : (112 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), _format : (112 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("-0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1024 : stdgo.GoFloat64), _format : (112 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("0x.8p+11" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (-1024 : stdgo.GoFloat64), _format : (112 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("-0x.8p+11" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("1.00000e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("1.00000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (20 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("20" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.2345678e+06 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("1.2345678e+06" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (200000 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("200000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (2e+06 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("2e+06" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (400 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (2 : stdgo.GoInt), _want : ("4e+02" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (40 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (2 : stdgo.GoInt), _want : ("40" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (4 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (2 : stdgo.GoInt), _want : ("4" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.4 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (2 : stdgo.GoInt), _want : ("0.4" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.04 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (2 : stdgo.GoInt), _want : ("0.04" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.004 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (2 : stdgo.GoInt), _want : ("0.004" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.0004 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (2 : stdgo.GoInt), _want : ("0.0004" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (4e-05 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (2 : stdgo.GoInt), _want : ("4e-05" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (4e-06 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (2 : stdgo.GoInt), _want : ("4e-06" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("0.00000e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("0.00000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (-1 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("-1.00000e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (-1 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("-1.00000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (-1 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("-1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (-1 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("-1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (12 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("1.20000e+01" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (12 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("12.00000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (12 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("12" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (12 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("12" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.234567e+08 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("1.23457e+08" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.234567e+08 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("123456700.00000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.234567e+08 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("1.2346e+08" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.234567e+08 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("1.234567e+08" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.2345e+06 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("1.23450e+06" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.2345e+06 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("1234500.00000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.2345e+06 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (5 : stdgo.GoInt), _want : ("1.2345e+06" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1e+23 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (17 : stdgo.GoInt), _want : ("9.99999999999999916e+22" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1e+23 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (17 : stdgo.GoInt), _want : ("99999999999999991611392.00000000000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1e+23 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (17 : stdgo.GoInt), _want : ("9.9999999999999992e+22" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1e+23 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("1e+23" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1e+23 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("100000000000000000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1e+23 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("1e+23" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (9.999999999999997e+22 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (17 : stdgo.GoInt), _want : ("9.99999999999999748e+22" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (9.999999999999997e+22 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (17 : stdgo.GoInt), _want : ("99999999999999974834176.00000000000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (9.999999999999997e+22 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (17 : stdgo.GoInt), _want : ("9.9999999999999975e+22" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (9.999999999999997e+22 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("9.999999999999997e+22" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (9.999999999999997e+22 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("99999999999999970000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (9.999999999999997e+22 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("9.999999999999997e+22" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.0000000000000001e+23 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (17 : stdgo.GoInt), _want : ("1.00000000000000008e+23" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.0000000000000001e+23 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (17 : stdgo.GoInt), _want : ("100000000000000008388608.00000000000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.0000000000000001e+23 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (17 : stdgo.GoInt), _want : ("1.0000000000000001e+23" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.0000000000000001e+23 : stdgo.GoFloat64), _format : (101 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("1.0000000000000001e+23" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.0000000000000001e+23 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("100000000000000010000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.0000000000000001e+23 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("1.0000000000000001e+23" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (5e-324 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("5e-324" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (-5e-324 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("-5e-324" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : stdgo._internal.math.big.Big__fdiv._fdiv((5e-304 : stdgo.GoFloat64), (1e+20 : stdgo.GoFloat64)), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("5e-324" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : stdgo._internal.math.big.Big__fdiv._fdiv((-5e-304 : stdgo.GoFloat64), (1e+20 : stdgo.GoFloat64)), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("-5e-324" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (32 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("32" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (32 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("3e+01" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (100 : stdgo.GoFloat64), _format : (120 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("0x1.9p+06" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : stdgo._internal.math.Math_inf.inf((0 : stdgo.GoInt)), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("+Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("-Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : -stdgo._internal.math.Math_inf.inf((0 : stdgo.GoInt)), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("-Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (-1 : stdgo.GoFloat64), _format : (98 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("-4503599627370496p-52" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.9 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (1 : stdgo.GoInt), _want : ("0.9" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.09 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (1 : stdgo.GoInt), _want : ("0.1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.0999 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (1 : stdgo.GoInt), _want : ("0.1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.05 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (1 : stdgo.GoInt), _want : ("0.1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.05 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.5 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (1 : stdgo.GoInt), _want : ("0.5" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (0.5 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1.5 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("2" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (2.2250738585072014e-308 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("2.2250738585072014e-308" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (2.225073858507201e-308 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("2.225073858507201e-308" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (3.8326057576481645e+17 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("383260575764816448" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (3.8326057576481645e+17 : stdgo.GoFloat64), _format : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _want : ("3.8326057576481645e+17" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (-10 : stdgo.GoInt), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (-11 : stdgo.GoInt), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29),
({ _x : (1 : stdgo.GoFloat64), _format : (102 : stdgo.GoUInt8), _prec : (-12 : stdgo.GoInt), _want : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29)].concat([for (i in 107 ... (107 > 107 ? 107 : 107 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoFloat64), _format : (0 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_29.T__struct_29)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_29.T__struct_29>)) {
            var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(stdgo._internal.math.big.Big__actualprec._actualPrec(_test._x)).setFloat64(_test._x);
            var _got = (_f.text(_test._format, _test._prec)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L358"
            if (_got != (_test._want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L359"
                _t.errorf(("%v: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L360"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L363"
            if (((_test._format == (98 : stdgo.GoUInt8)) && (_test._x == (0 : stdgo.GoFloat64)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L364"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L366"
            if (_test._format == ((112 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L367"
                continue;
            };
            var _want = (stdgo._internal.strconv.Strconv_formatfloat.formatFloat(_test._x, _test._format, _test._prec, (64 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L372"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/floatconv_test.go#L373"
                _t.errorf(("%v: got %s; want %s (strconv)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }

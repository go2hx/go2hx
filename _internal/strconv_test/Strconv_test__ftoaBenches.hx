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
var _ftoaBenches : stdgo.Slice<_internal.strconv_test.Strconv_test_T__struct_2.T__struct_2> = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T__struct_2.T__struct_2>(26, 26, ...[
({ _name : ("Decimal" : stdgo.GoString), _float : (33909 : stdgo.GoFloat64), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("Float" : stdgo.GoString), _float : (339.7784 : stdgo.GoFloat64), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("Exp" : stdgo.GoString), _float : (-5.09e+75 : stdgo.GoFloat64), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("NegExp" : stdgo.GoString), _float : (-5.11e-95 : stdgo.GoFloat64), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("LongExp" : stdgo.GoString), _float : (1.234567890123456e-78 : stdgo.GoFloat64), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("Big" : stdgo.GoString), _float : (1.2345678912345679e+26 : stdgo.GoFloat64), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("BinaryExp" : stdgo.GoString), _float : (-1 : stdgo.GoFloat64), _fmt : (98 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("32Integer" : stdgo.GoString), _float : (33909 : stdgo.GoFloat64), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (32 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("32ExactFraction" : stdgo.GoString), _float : (3.375 : stdgo.GoFloat64), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (32 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("32Point" : stdgo.GoString), _float : (339.7784 : stdgo.GoFloat64), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (32 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("32Exp" : stdgo.GoString), _float : (-5.09e+25 : stdgo.GoFloat64), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (32 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("32NegExp" : stdgo.GoString), _float : (-5.11e-25 : stdgo.GoFloat64), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (32 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("32Shortest" : stdgo.GoString), _float : (1.234567e-08 : stdgo.GoFloat64), _fmt : (103 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (32 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("32Fixed8Hard" : stdgo.GoString), _float : stdgo._internal.math.Math_ldexp.ldexp((1.5961084e+07 : stdgo.GoFloat64), (-125 : stdgo.GoInt)), _fmt : (101 : stdgo.GoUInt8), _prec : (8 : stdgo.GoInt), _bitSize : (32 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("32Fixed9Hard" : stdgo.GoString), _float : stdgo._internal.math.Math_ldexp.ldexp((1.4855922e+07 : stdgo.GoFloat64), (-83 : stdgo.GoInt)), _fmt : (101 : stdgo.GoUInt8), _prec : (9 : stdgo.GoInt), _bitSize : (32 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("64Fixed1" : stdgo.GoString), _float : (123456 : stdgo.GoFloat64), _fmt : (101 : stdgo.GoUInt8), _prec : (3 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("64Fixed2" : stdgo.GoString), _float : (123.456 : stdgo.GoFloat64), _fmt : (101 : stdgo.GoUInt8), _prec : (3 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("64Fixed3" : stdgo.GoString), _float : (1.23456e+78 : stdgo.GoFloat64), _fmt : (101 : stdgo.GoUInt8), _prec : (3 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("64Fixed4" : stdgo.GoString), _float : (1.23456e-78 : stdgo.GoFloat64), _fmt : (101 : stdgo.GoUInt8), _prec : (3 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("64Fixed12" : stdgo.GoString), _float : (1.23456e-78 : stdgo.GoFloat64), _fmt : (101 : stdgo.GoUInt8), _prec : (12 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("64Fixed16" : stdgo.GoString), _float : (1.23456e-78 : stdgo.GoFloat64), _fmt : (101 : stdgo.GoUInt8), _prec : (16 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("64Fixed12Hard" : stdgo.GoString), _float : stdgo._internal.math.Math_ldexp.ldexp((6.965949469487146e+15 : stdgo.GoFloat64), (-249 : stdgo.GoInt)), _fmt : (101 : stdgo.GoUInt8), _prec : (12 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("64Fixed17Hard" : stdgo.GoString), _float : stdgo._internal.math.Math_ldexp.ldexp((8.887055249355788e+15 : stdgo.GoFloat64), (665 : stdgo.GoInt)), _fmt : (101 : stdgo.GoUInt8), _prec : (17 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("64Fixed18Hard" : stdgo.GoString), _float : stdgo._internal.math.Math_ldexp.ldexp((6.994187472632449e+15 : stdgo.GoFloat64), (690 : stdgo.GoInt)), _fmt : (101 : stdgo.GoUInt8), _prec : (18 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("Slowpath64" : stdgo.GoString), _float : (8.034137530808823e+43 : stdgo.GoFloat64), _fmt : (101 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2),
({ _name : ("SlowpathDenormal64" : stdgo.GoString), _float : (6.226662346353213e-309 : stdgo.GoFloat64), _fmt : (101 : stdgo.GoUInt8), _prec : (-1 : stdgo.GoInt), _bitSize : (64 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2)].concat([for (i in 26 ... (26 > 26 ? 26 : 26 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _float : (0 : stdgo.GoFloat64), _fmt : (0 : stdgo.GoUInt8), _prec : (0 : stdgo.GoInt), _bitSize : (0 : stdgo.GoInt) } : _internal.strconv_test.Strconv_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T__struct_2.T__struct_2>);

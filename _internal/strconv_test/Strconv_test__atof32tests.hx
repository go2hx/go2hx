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
var _atof32tests : stdgo.Slice<_internal.strconv_test.Strconv_test_T_atofTest.T_atofTest> = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T_atofTest.T_atofTest>(54, 54, ...[
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x1p-100" : stdgo.GoString), ("7.888609e-31" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x1p100" : stdgo.GoString), ("1.2676506e+30" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("1.000000059604644775390625" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x1.000001p0" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("1.000000059604644775390624" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x1.0000008p0" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x1.000000fp0" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("1.000000059604644775390626" : stdgo.GoString), ("1.0000001" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x1.000002p0" : stdgo.GoString), ("1.0000001" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x1.0000018p0" : stdgo.GoString), ("1.0000001" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x1.0000011p0" : stdgo.GoString), ("1.0000001" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(((("1.000000059604644775390625" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("1" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ("1.0000001" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(((("0x1.000001" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("1p0" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ("1.0000001" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("340282346638528859811704183484516925440" : stdgo.GoString), ("3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("-340282346638528859811704183484516925440" : stdgo.GoString), ("-3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x.ffffffp128" : stdgo.GoString), ("3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("-340282346638528859811704183484516925440" : stdgo.GoString), ("-3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("-0x.ffffffp128" : stdgo.GoString), ("-3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("3.4028236e38" : stdgo.GoString), ("+Inf" : stdgo.GoString), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("-3.4028236e38" : stdgo.GoString), ("-Inf" : stdgo.GoString), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x1.0p128" : stdgo.GoString), ("+Inf" : stdgo.GoString), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("-0x1.0p128" : stdgo.GoString), ("-Inf" : stdgo.GoString), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("3.402823567e38" : stdgo.GoString), ("3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("-3.402823567e38" : stdgo.GoString), ("-3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x.ffffff7fp128" : stdgo.GoString), ("3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("-0x.ffffff7fp128" : stdgo.GoString), ("-3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("3.4028235678e38" : stdgo.GoString), ("+Inf" : stdgo.GoString), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("-3.4028235678e38" : stdgo.GoString), ("-Inf" : stdgo.GoString), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x.ffffff8p128" : stdgo.GoString), ("+Inf" : stdgo.GoString), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("-0x.ffffff8p128" : stdgo.GoString), ("-Inf" : stdgo.GoString), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("1e-38" : stdgo.GoString), ("1e-38" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("1e-39" : stdgo.GoString), ("1e-39" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("1e-40" : stdgo.GoString), ("1e-40" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("1e-41" : stdgo.GoString), ("1e-41" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("1e-42" : stdgo.GoString), ("1e-42" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("1e-43" : stdgo.GoString), ("1e-43" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("1e-44" : stdgo.GoString), ("1e-44" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("6e-45" : stdgo.GoString), ("6e-45" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("5e-45" : stdgo.GoString), ("6e-45" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("1e-45" : stdgo.GoString), ("1e-45" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("2e-45" : stdgo.GoString), ("1e-45" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("3e-45" : stdgo.GoString), ("3e-45" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x0.89aBcDp-125" : stdgo.GoString), ("1.2643093e-38" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x0.8000000p-125" : stdgo.GoString), ("1.1754944e-38" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x0.1234560p-125" : stdgo.GoString), ("1.671814e-39" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x0.1234567p-125" : stdgo.GoString), ("1.671814e-39" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x0.1234568p-125" : stdgo.GoString), ("1.671814e-39" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x0.1234569p-125" : stdgo.GoString), ("1.671815e-39" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x0.1234570p-125" : stdgo.GoString), ("1.671815e-39" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x0.0000010p-125" : stdgo.GoString), ("1e-45" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x0.00000081p-125" : stdgo.GoString), ("1e-45" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x0.0000008p-125" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("0x0.0000007p-125" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest),
(new _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest(("4951760157141521099596496896" : stdgo.GoString), ("4.9517602e+27" : stdgo.GoString), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest)].concat([for (i in 54 ... (54 > 54 ? 54 : 54 : stdgo.GoInt).toBasic()) ({} : _internal.strconv_test.Strconv_test_T_atofTest.T_atofTest)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T_atofTest.T_atofTest>);

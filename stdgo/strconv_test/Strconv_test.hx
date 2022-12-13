package stdgo.strconv_test;

import stdgo.strconv.Strconv;
import stdgo.strconv.Strconv;
import stdgo.strconv.Strconv;
import stdgo.strconv.Strconv;
import stdgo.strconv.Strconv;
import stdgo.strconv.Strconv;
import stdgo.strconv.Strconv;
import stdgo.strconv.Strconv;
import stdgo.strconv.Strconv;
import stdgo.strconv.Strconv;
import stdgo.strconv.Strconv;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _atobtests:Slice<stdgo.strconv_test.Strconv_test.T_atobTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_atobTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str(), false, errSyntax) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("asdf"), false, errSyntax) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("0"), false, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("f"), false, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("F"), false, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("FALSE"), false, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("false"), false, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("False"), false, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("1"), true, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("t"), true, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("T"), true, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("TRUE"), true, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("true"), true, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
	(new stdgo.strconv_test.Strconv_test.T_atobTest(Go.str("True"), true,
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atobTest)) : Slice<stdgo.strconv_test.Strconv_test.T_atobTest>);

private var _boolString:GoMap<Bool, GoString> = {
	final x = new stdgo.GoMap.GoObjectMap<Bool, GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.internal.reflect.Reflect.GoType.basic(bool_kind)}, {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)})));
	@:privateAccess x._keys = [true, false];
	@:privateAccess x._values = [Go.str("true"), Go.str("false")];
	x;
};

private var _appendBoolTests:Slice<stdgo.strconv_test.Strconv_test.T_appendBoolTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_appendBoolTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_appendBoolTest(true, (Go.str("foo ") : Slice<GoByte>),
		(Go.str("foo true") : Slice<GoByte>)) : stdgo.strconv_test.Strconv_test.T_appendBoolTest),
	(new stdgo.strconv_test.Strconv_test.T_appendBoolTest(false, (Go.str("foo ") : Slice<GoByte>),
		(Go.str("foo false") : Slice<GoByte>)) : stdgo.strconv_test.Strconv_test.T_appendBoolTest)) : Slice<stdgo.strconv_test.Strconv_test.T_appendBoolTest>);

private var _infp0:GoComplex128 = new GoComplex128(stdgo.math.Math.inf((1 : GoInt)), (0 : GoFloat64));
private var _infm0:GoComplex128 = new GoComplex128(stdgo.math.Math.inf((-1 : GoInt)), (0 : GoFloat64));
private var _inf0p:GoComplex128 = new GoComplex128((0 : GoFloat64), stdgo.math.Math.inf((1 : GoInt)));
private var _inf0m:GoComplex128 = new GoComplex128((0 : GoFloat64), stdgo.math.Math.inf((-1 : GoInt)));
private var _infpp:GoComplex128 = new GoComplex128(stdgo.math.Math.inf((1 : GoInt)), stdgo.math.Math.inf((1 : GoInt)));
private var _infpm:GoComplex128 = new GoComplex128(stdgo.math.Math.inf((1 : GoInt)), stdgo.math.Math.inf((-1 : GoInt)));
private var _infmp:GoComplex128 = new GoComplex128(stdgo.math.Math.inf((-1 : GoInt)), stdgo.math.Math.inf((1 : GoInt)));
private var _infmm:GoComplex128 = new GoComplex128(stdgo.math.Math.inf((-1 : GoInt)), stdgo.math.Math.inf((-1 : GoInt)));

private var _atoftests:Slice<stdgo.strconv_test.Strconv_test.T_atofTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_atofTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str(), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1"), Go.str("1"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("+1"), Go.str("1"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1x"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1.1."), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e23"), Go.str("1e+23"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1E23"), Go.str("1e+23"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("100000000000000000000000"), Go.str("1e+23"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-100"), Go.str("1e-100"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("123456700"), Go.str("1.234567e+08"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("99999999999999974834176"), Go.str("9.999999999999997e+22"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("100000000000000000000001"), Go.str("1.0000000000000001e+23"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("100000000000000008388608"), Go.str("1.0000000000000001e+23"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("100000000000000016777215"), Go.str("1.0000000000000001e+23"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("100000000000000016777216"), Go.str("1.0000000000000003e+23"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-1"), Go.str("-1"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0.1"), Go.str("-0.1"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-20"), Go.str("1e-20"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("625e-3"), Go.str("0.625"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p0"), Go.str("1"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p1"), Go.str("2"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p-1"), Go.str("0.5"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1ep-1"), Go.str("15"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x1ep-1"), Go.str("-15"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x1_ep-1"), Go.str("-15"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p-200"), Go.str("6.223015277861142e-61"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p200"), Go.str("1.6069380442589903e+60"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1fFe2.p0"), Go.str("131042"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1fFe2.P0"), Go.str("131042"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x2p3"), Go.str("-16"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.fp4"), Go.str("15"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.fp0"), Go.str("0.9375"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1e2"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1p2"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0e0"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0e0"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("+0e0"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0e-0"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0e-0"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("+0e-0"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0e+0"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0e+0"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("+0e+0"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0e+01234567890123456789"), Go.str("0"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0.00e-01234567890123456789"), Go.str("0"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0e+01234567890123456789"), Go.str("-0"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0.00e-01234567890123456789"), Go.str("-0"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0p+01234567890123456789"), Go.str("0"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00p-01234567890123456789"), Go.str("0"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x0p+01234567890123456789"), Go.str("-0"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x0.00p-01234567890123456789"), Go.str("-0"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0e291"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0e292"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0e347"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0e348"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0e291"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0e292"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0e347"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0e348"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0p126"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0p127"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0p128"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0p129"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0p130"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0p1022"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0p1023"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0p1024"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0p1025"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0p1026"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x0p126"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x0p127"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x0p128"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x0p129"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x0p130"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x0p1022"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x0p1023"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x0p1024"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x0p1025"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x0p1026"), Go.str("-0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("nan"), Go.str("NaN"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("NaN"), Go.str("NaN"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("NAN"), Go.str("NaN"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("inf"), Go.str("+Inf"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-Inf"), Go.str("-Inf"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("+INF"), Go.str("+Inf"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-Infinity"), Go.str("-Inf"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("+INFINITY"), Go.str("+Inf"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("Infinity"), Go.str("+Inf"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1.7976931348623157e308"), Go.str("1.7976931348623157e+308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-1.7976931348623157e308"), Go.str("-1.7976931348623157e+308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.fffffffffffffp1023"), Go.str("1.7976931348623157e+308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x1.fffffffffffffp1023"), Go.str("-1.7976931348623157e+308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1fffffffffffffp+971"), Go.str("1.7976931348623157e+308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x1fffffffffffffp+971"), Go.str("-1.7976931348623157e+308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.1fffffffffffffp1027"), Go.str("1.7976931348623157e+308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x.1fffffffffffffp1027"), Go.str("-1.7976931348623157e+308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1.7976931348623159e308"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-1.7976931348623159e308"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p1024"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x1p1024"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x2p1023"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x2p1023"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.1p1028"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x.1p1028"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.2p1027"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x.2p1027"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1.7976931348623158e308"), Go.str("1.7976931348623157e+308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-1.7976931348623158e308"), Go.str("-1.7976931348623157e+308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.fffffffffffff7fffp1023"), Go.str("1.7976931348623157e+308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x1.fffffffffffff7fffp1023"), Go.str("-1.7976931348623157e+308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1.797693134862315808e308"), Go.str("+Inf"),
		errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-1.797693134862315808e308"), Go.str("-Inf"),
		errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.fffffffffffff8p1023"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x1.fffffffffffff8p1023"), Go.str("-Inf"),
		errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1fffffffffffff.8p+971"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x1fffffffffffff8p+967"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.1fffffffffffff8p1027"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x.1fffffffffffff9p1027"), Go.str("-Inf"),
		errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e308"), Go.str("1e+308"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("2e308"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e309"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p1025"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e310"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-1e310"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e400"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-1e400"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e400000"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-1e400000"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p1030"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p2000"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p2000000000"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x1p1030"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x1p2000"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x1p2000000000"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-305"), Go.str("1e-305"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-306"), Go.str("1e-306"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-307"), Go.str("1e-307"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-308"), Go.str("1e-308"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-309"), Go.str("1e-309"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-310"), Go.str("1e-310"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-322"), Go.str("1e-322"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("5e-324"), Go.str("5e-324"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("4e-324"), Go.str("5e-324"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("3e-324"), Go.str("5e-324"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("2e-324"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-350"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-400000"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x2.00000000000000p-1010"), Go.str("1.8227805048890994e-304"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.fffffffffffff0p-1010"), Go.str("1.8227805048890992e-304"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.fffffffffffff7p-1010"), Go.str("1.8227805048890992e-304"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.fffffffffffff8p-1010"), Go.str("1.8227805048890994e-304"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.fffffffffffff9p-1010"), Go.str("1.8227805048890994e-304"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x2.00000000000000p-1022"), Go.str("4.450147717014403e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.fffffffffffff0p-1022"), Go.str("4.4501477170144023e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.fffffffffffff7p-1022"), Go.str("4.4501477170144023e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.fffffffffffff8p-1022"), Go.str("4.450147717014403e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.fffffffffffff9p-1022"), Go.str("4.450147717014403e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.00000000000000p-1022"), Go.str("2.2250738585072014e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.fffffffffffff0p-1022"), Go.str("2.225073858507201e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.ffffffffffffe0p-1022"), Go.str("2.2250738585072004e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.ffffffffffffe7p-1022"), Go.str("2.2250738585072004e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.ffffffffffffe8p-1023"), Go.str("2.225073858507201e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.ffffffffffffe9p-1023"), Go.str("2.225073858507201e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000003fffff0p-1022"), Go.str("2.072261e-317"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000003456780p-1022"), Go.str("1.694649e-317"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000003456787p-1022"), Go.str("1.694649e-317"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000003456788p-1022"), Go.str("1.694649e-317"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000003456790p-1022"), Go.str("1.6946496e-317"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000003456789p-1022"), Go.str("1.6946496e-317"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.0000000345678800000000000000000000000001p-1022"), Go.str("1.6946496e-317"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.000000000000f0p-1022"), Go.str("7.4e-323"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000000000060p-1022"), Go.str("3e-323"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000000000058p-1022"), Go.str("3e-323"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000000000057p-1022"), Go.str("2.5e-323"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000000000050p-1022"), Go.str("2.5e-323"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000000000010p-1022"), Go.str("5e-324"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.000000000000081p-1022"), Go.str("5e-324"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000000000008p-1022"), Go.str("0"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000000000007fp-1022"), Go.str("0"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-4294967296"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e+4294967296"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-18446744073709551616"), Go.str("0"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e+18446744073709551616"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p-4294967296"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p+4294967296"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p-18446744073709551616"), Go.str("0"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p+18446744073709551616"), Go.str("+Inf"),
		errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str(".e-1"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1", 0, ".2"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x."), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.1"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.1p"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p+"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.1p+"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p-"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.1p-"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p+2"), Go.str("4"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.1p+2"), Go.str("0.25"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p-2"), Go.str("0.25"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.1p-2"), Go.str("0.015625"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("2.2250738585072012e-308"), Go.str("2.2250738585072014e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("2.2250738585072011e-308"), Go.str("2.225073858507201e-308"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("4.630813248087435e+307"), Go.str("4.630813248087435e+307"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("22.222222222222222"), Go.str("22.22222222222222"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest((Go.str("2.") + stdgo.strings.Strings.repeat(Go.str("2"), (4000 : GoInt))) + Go.str("e+1"),
		Go.str("22.22222222222222"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.1111111111111p222"), Go.str("7.18931911124017e+66"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x2.2222222222222p221"), Go.str("7.18931911124017e+66"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest((Go.str("0x2.") + stdgo.strings.Strings.repeat(Go.str("2"), (4000 : GoInt))) + Go.str("p221"),
		Go.str("7.18931911124017e+66"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1.00000000000000011102230246251565404236316680908203125"), Go.str("1"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.00000000000008p0"), Go.str("1"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1.00000000000000011102230246251565404236316680908203124"), Go.str("1"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.00000000000007Fp0"), Go.str("1"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1.00000000000000011102230246251565404236316680908203126"), Go.str("1.0000000000000002"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.000000000000081p0"), Go.str("1.0000000000000002"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.00000000000009p0"), Go.str("1.0000000000000002"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest((Go.str("1.00000000000000011102230246251565404236316680908203125")
		+ stdgo.strings.Strings.repeat(Go.str("0"), (10000 : GoInt)))
		+ Go.str("1"),
		Go.str("1.0000000000000002"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest((Go.str("0x1.00000000000008") + stdgo.strings.Strings.repeat(Go.str("0"), (10000 : GoInt)))
		+ Go.str("1p0"), Go.str("1.0000000000000002"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1.00000000000000033306690738754696212708950042724609375"), Go.str("1.0000000000000004"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.00000000000018p0"), Go.str("1.0000000000000004"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1090544144181609348671888949248"), Go.str("1.0905441441816093e+30"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1090544144181609348835077142190"), Go.str("1.0905441441816094e+30"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1_23.50_0_0e+1_2"), Go.str("1.235e+14"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-_123.5e+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("+_123.5e+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("_123.5e+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1__23.5e+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("123_.5e+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("123._5e+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("123.5_e+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("123.5__0e+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("123.5e_+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("123.5e+_12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("123.5e_-12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("123.5e-_12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("123.5e+1__2"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("123.5e+12_"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x_1_2.3_4_5p+1_2"), Go.str("74565"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-_0x12.345p+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("+_0x12.345p+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("_0x12.345p+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x__12.345p+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1__2.345p+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x12_.345p+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x12._345p+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x12.3__45p+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x12.345_p+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x12.345p_+12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x12.345p+_12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x12.345p_-12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x12.345p-_12"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x12.345p+1__2"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x12.345p+12_"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e100x"), Go.str("0"), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e1000x"), Go.str("0"),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest)) : Slice<stdgo.strconv_test.Strconv_test.T_atofTest>);

private var _atof32tests:Slice<stdgo.strconv_test.Strconv_test.T_atofTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_atofTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p-100"), Go.str("7.888609e-31"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1p100"), Go.str("1.2676506e+30"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1.000000059604644775390625"), Go.str("1"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.000001p0"), Go.str("1"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1.000000059604644775390624"), Go.str("1"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.0000008p0"), Go.str("1"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.000000fp0"), Go.str("1"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1.000000059604644775390626"), Go.str("1.0000001"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.000002p0"), Go.str("1.0000001"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.0000018p0"), Go.str("1.0000001"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.0000011p0"), Go.str("1.0000001"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest((Go.str("1.000000059604644775390625") + stdgo.strings.Strings.repeat(Go.str("0"), (10000 : GoInt)))
		+ Go.str("1"), Go.str("1.0000001"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest((Go.str("0x1.000001") + stdgo.strings.Strings.repeat(Go.str("0"), (10000 : GoInt))) + Go.str("1p0"),
		Go.str("1.0000001"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("340282346638528859811704183484516925440"), Go.str("3.4028235e+38"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-340282346638528859811704183484516925440"), Go.str("-3.4028235e+38"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.ffffffp128"), Go.str("3.4028235e+38"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-340282346638528859811704183484516925440"), Go.str("-3.4028235e+38"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x.ffffffp128"), Go.str("-3.4028235e+38"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("3.4028236e38"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-3.4028236e38"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x1.0p128"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x1.0p128"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("3.402823567e38"), Go.str("3.4028235e+38"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-3.402823567e38"), Go.str("-3.4028235e+38"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.ffffff7fp128"), Go.str("3.4028235e+38"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x.ffffff7fp128"), Go.str("-3.4028235e+38"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("3.4028235678e38"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-3.4028235678e38"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x.ffffff8p128"), Go.str("+Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("-0x.ffffff8p128"), Go.str("-Inf"), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-38"), Go.str("1e-38"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-39"), Go.str("1e-39"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-40"), Go.str("1e-40"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-41"), Go.str("1e-41"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-42"), Go.str("1e-42"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-43"), Go.str("1e-43"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-44"), Go.str("1e-44"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("6e-45"), Go.str("6e-45"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("5e-45"), Go.str("6e-45"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("1e-45"), Go.str("1e-45"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("2e-45"), Go.str("1e-45"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("3e-45"), Go.str("3e-45"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.89aBcDp-125"), Go.str("1.2643093e-38"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.8000000p-125"), Go.str("1.1754944e-38"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.1234560p-125"), Go.str("1.671814e-39"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.1234567p-125"), Go.str("1.671814e-39"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.1234568p-125"), Go.str("1.671814e-39"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.1234569p-125"), Go.str("1.671815e-39"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.1234570p-125"), Go.str("1.671815e-39"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.0000010p-125"), Go.str("1e-45"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.00000081p-125"), Go.str("1e-45"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.0000008p-125"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("0x0.0000007p-125"), Go.str("0"), (null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
	(new stdgo.strconv_test.Strconv_test.T_atofTest(Go.str("4951760157141521099596496896"), Go.str("4.9517602e+27"),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_atofTest)) : Slice<stdgo.strconv_test.Strconv_test.T_atofTest>);

private var _roundTripCases:Slice<T__struct_0> = (new Slice<T__struct_0>(0, 0,
	({_f: (4.87402195346389e+27 : GoFloat64), _s: Go.str("4.87402195346389e+27")} : T__struct_0),
	({_f: (4.8740219534638903e+27 : GoFloat64), _s: Go.str("4.8740219534638903e+27")} : T__struct_0)) : Slice<T__struct_0>);

private var _parseUint64Tests:Slice<stdgo.strconv_test.Strconv_test.T_parseUint64Test> = (new Slice<stdgo.strconv_test.Strconv_test.T_parseUint64Test>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str(), ("0" : GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("0"), ("0" : GoUInt64), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("1"), ("1" : GoUInt64), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("12345"), ("12345" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("012345"), ("12345" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("12345x"), ("0" : GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("98765432100"), ("98765432100" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("18446744073709551615"), ("18446744073709551615" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("18446744073709551616"), ("18446744073709551615" : GoUInt64),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("18446744073709551620"), ("18446744073709551615" : GoUInt64),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("1_2_3_4_5"), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("_12345"), ("0" : GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("1__2345"), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("12345_"), ("0" : GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("-0"), ("0" : GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("-1"), ("0" : GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(Go.str("+1"), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test)) : Slice<stdgo.strconv_test.Strconv_test.T_parseUint64Test>);

private var _parseUint64BaseTests:Slice<stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest>(0,
	0,
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str(), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0"), (0 : GoInt), ("0" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0x"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0X"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("1"), (0 : GoInt), ("1" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("12345"), (0 : GoInt), ("12345" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("012345"), (0 : GoInt), ("5349" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0x12345"), (0 : GoInt), ("74565" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0X12345"), (0 : GoInt), ("74565" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("12345x"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0xabcdefg123"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("123456789abc"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("98765432100"), (0 : GoInt), ("98765432100" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("18446744073709551615"), (0 : GoInt), ("18446744073709551615" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("18446744073709551616"), (0 : GoInt), ("18446744073709551615" : GoUInt64),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("18446744073709551620"), (0 : GoInt), ("18446744073709551615" : GoUInt64),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0xFFFFFFFFFFFFFFFF"), (0 : GoInt), ("18446744073709551615" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0x10000000000000000"), (0 : GoInt), ("18446744073709551615" : GoUInt64),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("01777777777777777777777"), (0 : GoInt), ("18446744073709551615" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("01777777777777777777778"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("02000000000000000000000"), (0 : GoInt), ("18446744073709551615" : GoUInt64),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0200000000000000000000"), (0 : GoInt), ("2305843009213693952" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0b"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0B"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0b101"), (0 : GoInt), ("5" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0B101"), (0 : GoInt), ("5" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0o"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0O"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0o377"), (0 : GoInt), ("255" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0O377"), (0 : GoInt), ("255" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("1_2_3_4_5"), (0 : GoInt), ("12345" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("_12345"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("1__2345"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("12345_"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("1_2_3_4_5"), (10 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("_12345"), (10 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("1__2345"), (10 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("12345_"), (10 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0x_1_2_3_4_5"), (0 : GoInt), ("74565" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("_0x12345"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0x__12345"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0x1__2345"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0x1234__5"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0x12345_"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("1_2_3_4_5"), (16 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("_12345"), (16 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("1__2345"), (16 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("1234__5"), (16 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("12345_"), (16 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0_1_2_3_4_5"), (0 : GoInt), ("5349" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("_012345"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0__12345"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("01234__5"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("012345_"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0o_1_2_3_4_5"), (0 : GoInt), ("5349" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("_0o12345"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0o__12345"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0o1234__5"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0o12345_"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0_1_2_3_4_5"), (8 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("_012345"), (8 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0__12345"), (8 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("01234__5"), (8 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("012345_"), (8 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0b_1_0_1"), (0 : GoInt), ("5" : GoUInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("_0b101"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0b__101"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0b1__01"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0b10__1"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("0b101_"), (0 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("1_0_1"), (2 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("_101"), (2 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("1_01"), (2 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("10_1"), (2 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(Go.str("101_"), (2 : GoInt), ("0" : GoUInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest)) : Slice<stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest>);

private var _parseInt64Tests:Slice<stdgo.strconv_test.Strconv_test.T_parseInt64Test> = (new Slice<stdgo.strconv_test.Strconv_test.T_parseInt64Test>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str(), ("0" : GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("0"), ("0" : GoInt64), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("-0"), ("0" : GoInt64), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("+0"), ("0" : GoInt64), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("1"), ("1" : GoInt64), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("-1"), ("-1" : GoInt64), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("+1"), ("1" : GoInt64), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("12345"), ("12345" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("-12345"), ("-12345" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("012345"), ("12345" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("-012345"), ("-12345" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("98765432100"), ("98765432100" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("-98765432100"), ("-98765432100" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("9223372036854775807"), ("9223372036854775807" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("-9223372036854775807"), ("-9223372036854775807" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("9223372036854775808"), ("9223372036854775807" : GoInt64),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("-9223372036854775808"), ("-9223372036854775808" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("9223372036854775809"), ("9223372036854775807" : GoInt64),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("-9223372036854775809"), ("-9223372036854775808" : GoInt64),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("-1_2_3_4_5"), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("-_12345"), ("0" : GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("_12345"), ("0" : GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("1__2345"), ("0" : GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(Go.str("12345_"), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test)) : Slice<stdgo.strconv_test.Strconv_test.T_parseInt64Test>);

private var _parseInt64BaseTests:Slice<stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest>(0,
	0,
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str(), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("0"), (0 : GoInt), ("0" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-0"), (0 : GoInt), ("0" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("1"), (0 : GoInt), ("1" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-1"), (0 : GoInt), ("-1" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("12345"), (0 : GoInt), ("12345" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-12345"), (0 : GoInt), ("-12345" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("012345"), (0 : GoInt), ("5349" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-012345"), (0 : GoInt), ("-5349" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("0x12345"), (0 : GoInt), ("74565" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-0X12345"), (0 : GoInt), ("-74565" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("12345x"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-12345x"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("98765432100"), (0 : GoInt), ("98765432100" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-98765432100"), (0 : GoInt), ("-98765432100" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("9223372036854775807"), (0 : GoInt), ("9223372036854775807" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-9223372036854775807"), (0 : GoInt), ("-9223372036854775807" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("9223372036854775808"), (0 : GoInt), ("9223372036854775807" : GoInt64),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-9223372036854775808"), (0 : GoInt), ("-9223372036854775808" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("9223372036854775809"), (0 : GoInt), ("9223372036854775807" : GoInt64),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-9223372036854775809"), (0 : GoInt), ("-9223372036854775808" : GoInt64),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("g"), (17 : GoInt), ("16" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("10"), (25 : GoInt), ("25" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("holycow"), (35 : GoInt), ("32544027072" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("holycow"), (36 : GoInt), ("38493362624" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("0"), (2 : GoInt), ("0" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-1"), (2 : GoInt), ("-1" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("1010"), (2 : GoInt), ("10" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("1000000000000000"), (2 : GoInt), ("32768" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("111111111111111111111111111111111111111111111111111111111111111"), (2 : GoInt),
		("9223372036854775807" : GoInt64), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("1000000000000000000000000000000000000000000000000000000000000000"), (2 : GoInt),
		("9223372036854775807" : GoInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-1000000000000000000000000000000000000000000000000000000000000000"), (2 : GoInt),
		("-9223372036854775808" : GoInt64), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-1000000000000000000000000000000000000000000000000000000000000001"), (2 : GoInt),
		("-9223372036854775808" : GoInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-10"), (8 : GoInt), ("-8" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("57635436545"), (8 : GoInt), ("6416645477" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("100000000"), (8 : GoInt), ("16777216" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("10"), (16 : GoInt), ("16" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-123456789abcdef"), (16 : GoInt), ("-81985529216486895" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("7fffffffffffffff"), (16 : GoInt), ("9223372036854775807" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-0x_1_2_3_4_5"), (0 : GoInt), ("-74565" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("0x_1_2_3_4_5"), (0 : GoInt), ("74565" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-_0x12345"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("_-0x12345"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("_0x12345"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("0x__12345"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("0x1__2345"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("0x1234__5"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("0x12345_"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-0_1_2_3_4_5"), (0 : GoInt), ("-5349" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("0_1_2_3_4_5"), (0 : GoInt), ("5349" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-_012345"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("_-012345"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("_012345"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("0__12345"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("01234__5"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("012345_"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("+0xf"), (0 : GoInt), ("15" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("-0xf"), (0 : GoInt), ("-15" : GoInt64),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("0x+f"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
	(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(Go.str("0x-f"), (0 : GoInt), ("0" : GoInt64),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest)) : Slice<stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest>);

private var _parseUint32Tests:Slice<stdgo.strconv_test.Strconv_test.T_parseUint32Test> = (new Slice<stdgo.strconv_test.Strconv_test.T_parseUint32Test>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str(), ("0" : GoUInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("0"), ("0" : GoUInt32), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("1"), ("1" : GoUInt32), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("12345"), ("12345" : GoUInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("012345"), ("12345" : GoUInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("12345x"), ("0" : GoUInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("987654321"), ("987654321" : GoUInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("4294967295"), ("4294967295" : GoUInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("4294967296"), ("4294967295" : GoUInt32),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("1_2_3_4_5"), ("0" : GoUInt32),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("_12345"), ("0" : GoUInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("_12345"), ("0" : GoUInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("1__2345"), ("0" : GoUInt32),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(Go.str("12345_"), ("0" : GoUInt32),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test)) : Slice<stdgo.strconv_test.Strconv_test.T_parseUint32Test>);

private var _parseInt32Tests:Slice<stdgo.strconv_test.Strconv_test.T_parseInt32Test> = (new Slice<stdgo.strconv_test.Strconv_test.T_parseInt32Test>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str(), (0 : GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("0"), (0 : GoInt32), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("-0"), (0 : GoInt32), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("1"), (1 : GoInt32), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("-1"), (-1 : GoInt32), (null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("12345"), (12345 : GoInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("-12345"), (-12345 : GoInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("012345"), (12345 : GoInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("-012345"), (-12345 : GoInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("12345x"), (0 : GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("-12345x"), (0 : GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("987654321"), (987654321 : GoInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("-987654321"), (-987654321 : GoInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("2147483647"), (2147483647 : GoInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("-2147483647"), (-2147483647 : GoInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("2147483648"), (2147483647 : GoInt32),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("-2147483648"), (-2147483648 : GoInt32),
		(null : Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("2147483649"), (2147483647 : GoInt32),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("-2147483649"), (-2147483648 : GoInt32),
		errRange) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("-1_2_3_4_5"), (0 : GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("-_12345"), (0 : GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("_12345"), (0 : GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("1__2345"), (0 : GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
	(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(Go.str("12345_"), (0 : GoInt32),
		errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test)) : Slice<stdgo.strconv_test.Strconv_test.T_parseInt32Test>);

private var _numErrorTests:Slice<stdgo.strconv_test.Strconv_test.T_numErrorTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_numErrorTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_numErrorTest(Go.str("0"),
		Go.str("strconv.ParseFloat: parsing \"0\": failed")) : stdgo.strconv_test.Strconv_test.T_numErrorTest),
	(new stdgo.strconv_test.Strconv_test.T_numErrorTest(Go.str("`"),
		Go.str("strconv.ParseFloat: parsing \"`\": failed")) : stdgo.strconv_test.Strconv_test.T_numErrorTest),
	(new stdgo.strconv_test.Strconv_test.T_numErrorTest(Go.str("1", 0, ".2"),
		Go.str("strconv.ParseFloat: parsing \"1\\x00.2\": failed")) : stdgo.strconv_test.Strconv_test.T_numErrorTest)) : Slice<stdgo.strconv_test.Strconv_test.T_numErrorTest>);

private var _parseBitSizeTests:Slice<stdgo.strconv_test.Strconv_test.T_parseErrorTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_parseErrorTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_parseErrorTest((-1 : GoInt), _bitSizeErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest),
	(new stdgo.strconv_test.Strconv_test.T_parseErrorTest((0 : GoInt), _noErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest),
	(new stdgo.strconv_test.Strconv_test.T_parseErrorTest((64 : GoInt), _noErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest),
	(new stdgo.strconv_test.Strconv_test.T_parseErrorTest((65 : GoInt),
		_bitSizeErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest)) : Slice<stdgo.strconv_test.Strconv_test.T_parseErrorTest>);

private var _parseBaseTests:Slice<stdgo.strconv_test.Strconv_test.T_parseErrorTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_parseErrorTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_parseErrorTest((-1 : GoInt), _baseErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest),
	(new stdgo.strconv_test.Strconv_test.T_parseErrorTest((0 : GoInt), _noErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest),
	(new stdgo.strconv_test.Strconv_test.T_parseErrorTest((1 : GoInt), _baseErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest),
	(new stdgo.strconv_test.Strconv_test.T_parseErrorTest((2 : GoInt), _noErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest),
	(new stdgo.strconv_test.Strconv_test.T_parseErrorTest((36 : GoInt), _noErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest),
	(new stdgo.strconv_test.Strconv_test.T_parseErrorTest((37 : GoInt),
		_baseErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest)) : Slice<stdgo.strconv_test.Strconv_test.T_parseErrorTest>);

private var _shifttests:Slice<stdgo.strconv_test.Strconv_test.T_shiftTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_shiftTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_shiftTest(("0" : GoUInt64), (-100 : GoInt), Go.str("0")) : stdgo.strconv_test.Strconv_test.T_shiftTest),
	(new stdgo.strconv_test.Strconv_test.T_shiftTest(("0" : GoUInt64), (100 : GoInt), Go.str("0")) : stdgo.strconv_test.Strconv_test.T_shiftTest),
	(new stdgo.strconv_test.Strconv_test.T_shiftTest(("1" : GoUInt64), (100 : GoInt),
		Go.str("1267650600228229401496703205376")) : stdgo.strconv_test.Strconv_test.T_shiftTest),
	(new stdgo.strconv_test.Strconv_test.T_shiftTest(("1" : GoUInt64), (-100 : GoInt),
		Go.str("0.0000000000000000000000000000007888609052210118054117285652827862296732064351090230047702789306640625")) : stdgo.strconv_test.Strconv_test.T_shiftTest),
	(new stdgo.strconv_test.Strconv_test.T_shiftTest(("12345678" : GoUInt64), (8 : GoInt),
		Go.str("3160493568")) : stdgo.strconv_test.Strconv_test.T_shiftTest),
	(new stdgo.strconv_test.Strconv_test.T_shiftTest(("12345678" : GoUInt64), (-8 : GoInt),
		Go.str("48225.3046875")) : stdgo.strconv_test.Strconv_test.T_shiftTest),
	(new stdgo.strconv_test.Strconv_test.T_shiftTest(("195312" : GoUInt64), (9 : GoInt), Go.str("99999744")) : stdgo.strconv_test.Strconv_test.T_shiftTest),
	(new stdgo.strconv_test.Strconv_test.T_shiftTest(("1953125" : GoUInt64), (9 : GoInt),
		Go.str("1000000000")) : stdgo.strconv_test.Strconv_test.T_shiftTest)) : Slice<stdgo.strconv_test.Strconv_test.T_shiftTest>);

private var _roundtests:Slice<stdgo.strconv_test.Strconv_test.T_roundTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_roundTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("0" : GoUInt64), (4 : GoInt), Go.str("0"), Go.str("0"), Go.str("0"),
		("0" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("12344999" : GoUInt64), (4 : GoInt), Go.str("12340000"), Go.str("12340000"), Go.str("12350000"),
		("12340000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("12345000" : GoUInt64), (4 : GoInt), Go.str("12340000"), Go.str("12340000"), Go.str("12350000"),
		("12340000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("12345001" : GoUInt64), (4 : GoInt), Go.str("12340000"), Go.str("12350000"), Go.str("12350000"),
		("12350000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("23454999" : GoUInt64), (4 : GoInt), Go.str("23450000"), Go.str("23450000"), Go.str("23460000"),
		("23450000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("23455000" : GoUInt64), (4 : GoInt), Go.str("23450000"), Go.str("23460000"), Go.str("23460000"),
		("23460000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("23455001" : GoUInt64), (4 : GoInt), Go.str("23450000"), Go.str("23460000"), Go.str("23460000"),
		("23460000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("99994999" : GoUInt64), (4 : GoInt), Go.str("99990000"), Go.str("99990000"), Go.str("100000000"),
		("99990000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("99995000" : GoUInt64), (4 : GoInt), Go.str("99990000"), Go.str("100000000"), Go.str("100000000"),
		("100000000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("99999999" : GoUInt64), (4 : GoInt), Go.str("99990000"), Go.str("100000000"), Go.str("100000000"),
		("100000000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("12994999" : GoUInt64), (4 : GoInt), Go.str("12990000"), Go.str("12990000"), Go.str("13000000"),
		("12990000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("12995000" : GoUInt64), (4 : GoInt), Go.str("12990000"), Go.str("13000000"), Go.str("13000000"),
		("13000000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
	(new stdgo.strconv_test.Strconv_test.T_roundTest(("12999999" : GoUInt64), (4 : GoInt), Go.str("12990000"), Go.str("13000000"), Go.str("13000000"),
		("13000000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest)) : Slice<stdgo.strconv_test.Strconv_test.T_roundTest>);

private var _roundinttests:Slice<stdgo.strconv_test.Strconv_test.T_roundIntTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_roundIntTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_roundIntTest(("0" : GoUInt64), (100 : GoInt), ("0" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
	(new stdgo.strconv_test.Strconv_test.T_roundIntTest(("512" : GoUInt64), (-8 : GoInt), ("2" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
	(new stdgo.strconv_test.Strconv_test.T_roundIntTest(("513" : GoUInt64), (-8 : GoInt), ("2" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
	(new stdgo.strconv_test.Strconv_test.T_roundIntTest(("640" : GoUInt64), (-8 : GoInt), ("2" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
	(new stdgo.strconv_test.Strconv_test.T_roundIntTest(("641" : GoUInt64), (-8 : GoInt), ("3" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
	(new stdgo.strconv_test.Strconv_test.T_roundIntTest(("384" : GoUInt64), (-8 : GoInt), ("2" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
	(new stdgo.strconv_test.Strconv_test.T_roundIntTest(("385" : GoUInt64), (-8 : GoInt), ("2" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
	(new stdgo.strconv_test.Strconv_test.T_roundIntTest(("383" : GoUInt64), (-8 : GoInt), ("1" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
	(new stdgo.strconv_test.Strconv_test.T_roundIntTest(("1" : GoUInt64), (100 : GoInt),
		("18446744073709551615" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
	(new stdgo.strconv_test.Strconv_test.T_roundIntTest(("1000" : GoUInt64), (0 : GoInt),
		("1000" : GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest)) : Slice<stdgo.strconv_test.Strconv_test.T_roundIntTest>);

private var _ftoatests:Slice<stdgo.strconv_test.Strconv_test.T_ftoaTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_ftoaTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1 : GoFloat64), (101 : GoUInt8), (5 : GoInt),
		Go.str("1.00000e+00")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1 : GoFloat64), (102 : GoUInt8), (5 : GoInt),
		Go.str("1.00000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1 : GoFloat64), (103 : GoUInt8), (5 : GoInt), Go.str("1")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1 : GoFloat64), (103 : GoUInt8), (-1 : GoInt), Go.str("1")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1 : GoFloat64), (120 : GoUInt8), (-1 : GoInt),
		Go.str("0x1p+00")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1 : GoFloat64), (120 : GoUInt8), (5 : GoInt),
		Go.str("0x1.00000p+00")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((20 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("20")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((20 : GoFloat64), (120 : GoUInt8), (-1 : GoInt),
		Go.str("0x1.4p+04")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345678e+06 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("1.2345678e+06")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345678e+06 : GoFloat64), (120 : GoUInt8), (-1 : GoInt),
		Go.str("0x1.2d687cccccccdp+20")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((200000 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("200000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((200000 : GoFloat64), (120 : GoUInt8), (-1 : GoInt),
		Go.str("0x1.86ap+17")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((200000 : GoFloat64), (88 : GoUInt8), (-1 : GoInt),
		Go.str("0X1.86AP+17")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2e+06 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("2e+06")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+10 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("1e+10")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((400 : GoFloat64), (103 : GoUInt8), (2 : GoInt),
		Go.str("4e+02")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((40 : GoFloat64), (103 : GoUInt8), (2 : GoInt),
		Go.str("40")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((4 : GoFloat64), (103 : GoUInt8), (2 : GoInt), Go.str("4")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.4 : GoFloat64), (103 : GoUInt8), (2 : GoInt),
		Go.str("0.4")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.04 : GoFloat64), (103 : GoUInt8), (2 : GoInt),
		Go.str("0.04")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.004 : GoFloat64), (103 : GoUInt8), (2 : GoInt),
		Go.str("0.004")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.0004 : GoFloat64), (103 : GoUInt8), (2 : GoInt),
		Go.str("0.0004")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((4e-05 : GoFloat64), (103 : GoUInt8), (2 : GoInt),
		Go.str("4e-05")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((4e-06 : GoFloat64), (103 : GoUInt8), (2 : GoInt),
		Go.str("4e-06")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0 : GoFloat64), (101 : GoUInt8), (5 : GoInt),
		Go.str("0.00000e+00")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0 : GoFloat64), (102 : GoUInt8), (5 : GoInt),
		Go.str("0.00000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0 : GoFloat64), (103 : GoUInt8), (5 : GoInt), Go.str("0")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0 : GoFloat64), (103 : GoUInt8), (-1 : GoInt), Go.str("0")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0 : GoFloat64), (120 : GoUInt8), (5 : GoInt),
		Go.str("0x0.00000p+00")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((-1 : GoFloat64), (101 : GoUInt8), (5 : GoInt),
		Go.str("-1.00000e+00")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((-1 : GoFloat64), (102 : GoUInt8), (5 : GoInt),
		Go.str("-1.00000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((-1 : GoFloat64), (103 : GoUInt8), (5 : GoInt),
		Go.str("-1")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((-1 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("-1")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((12 : GoFloat64), (101 : GoUInt8), (5 : GoInt),
		Go.str("1.20000e+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((12 : GoFloat64), (102 : GoUInt8), (5 : GoInt),
		Go.str("12.00000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((12 : GoFloat64), (103 : GoUInt8), (5 : GoInt),
		Go.str("12")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((12 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("12")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.234567e+08 : GoFloat64), (101 : GoUInt8), (5 : GoInt),
		Go.str("1.23457e+08")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.234567e+08 : GoFloat64), (102 : GoUInt8), (5 : GoInt),
		Go.str("123456700.00000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.234567e+08 : GoFloat64), (103 : GoUInt8), (5 : GoInt),
		Go.str("1.2346e+08")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.234567e+08 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("1.234567e+08")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345e+06 : GoFloat64), (101 : GoUInt8), (5 : GoInt),
		Go.str("1.23450e+06")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345e+06 : GoFloat64), (102 : GoUInt8), (5 : GoInt),
		Go.str("1234500.00000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345e+06 : GoFloat64), (103 : GoUInt8), (5 : GoInt),
		Go.str("1.2345e+06")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345e+06 : GoFloat64), (101 : GoUInt8), (3 : GoInt),
		Go.str("1.234e+06")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2355e+06 : GoFloat64), (101 : GoUInt8), (3 : GoInt),
		Go.str("1.236e+06")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345 : GoFloat64), (102 : GoUInt8), (3 : GoInt),
		Go.str("1.234")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2355 : GoFloat64), (102 : GoUInt8), (3 : GoInt),
		Go.str("1.236")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345678901234565e+15 : GoFloat64), (101 : GoUInt8), (15 : GoInt),
		Go.str("1.234567890123456e+15")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345678901234575e+15 : GoFloat64), (101 : GoUInt8), (15 : GoInt),
		Go.str("1.234567890123458e+15")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0867823635813762e+14 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("1.0867823635813762e+14")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+23 : GoFloat64), (101 : GoUInt8), (17 : GoInt),
		Go.str("9.99999999999999916e+22")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+23 : GoFloat64), (102 : GoUInt8), (17 : GoInt),
		Go.str("99999999999999991611392.00000000000000000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+23 : GoFloat64), (103 : GoUInt8), (17 : GoInt),
		Go.str("9.9999999999999992e+22")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+23 : GoFloat64), (101 : GoUInt8), (-1 : GoInt),
		Go.str("1e+23")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+23 : GoFloat64), (102 : GoUInt8), (-1 : GoInt),
		Go.str("100000000000000000000000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+23 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("1e+23")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((9.999999999999997e+22 : GoFloat64), (101 : GoUInt8), (17 : GoInt),
		Go.str("9.99999999999999748e+22")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((9.999999999999997e+22 : GoFloat64), (102 : GoUInt8), (17 : GoInt),
		Go.str("99999999999999974834176.00000000000000000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((9.999999999999997e+22 : GoFloat64), (103 : GoUInt8), (17 : GoInt),
		Go.str("9.9999999999999975e+22")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((9.999999999999997e+22 : GoFloat64), (101 : GoUInt8), (-1 : GoInt),
		Go.str("9.999999999999997e+22")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((9.999999999999997e+22 : GoFloat64), (102 : GoUInt8), (-1 : GoInt),
		Go.str("99999999999999970000000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((9.999999999999997e+22 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("9.999999999999997e+22")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0000000000000001e+23 : GoFloat64), (101 : GoUInt8), (17 : GoInt),
		Go.str("1.00000000000000008e+23")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0000000000000001e+23 : GoFloat64), (102 : GoUInt8), (17 : GoInt),
		Go.str("100000000000000008388608.00000000000000000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0000000000000001e+23 : GoFloat64), (103 : GoUInt8), (17 : GoInt),
		Go.str("1.0000000000000001e+23")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0000000000000001e+23 : GoFloat64), (101 : GoUInt8), (-1 : GoInt),
		Go.str("1.0000000000000001e+23")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0000000000000001e+23 : GoFloat64), (102 : GoUInt8), (-1 : GoInt),
		Go.str("100000000000000010000000")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0000000000000001e+23 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("1.0000000000000001e+23")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest(_fdiv((5e-304 : GoFloat64), (1e+20 : GoFloat64)), (103 : GoUInt8), (-1 : GoInt),
		Go.str("5e-324")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest(_fdiv((-5e-304 : GoFloat64), (1e+20 : GoFloat64)), (103 : GoUInt8), (-1 : GoInt),
		Go.str("-5e-324")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((32 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("32")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((32 : GoFloat64), (103 : GoUInt8), (0 : GoInt),
		Go.str("3e+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((100 : GoFloat64), (120 : GoUInt8), (-1 : GoInt),
		Go.str("0x1.9p+06")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((100 : GoFloat64), (121 : GoUInt8), (-1 : GoInt),
		Go.str("%y")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest(stdgo.math.Math.naN(), (103 : GoUInt8), (-1 : GoInt),
		Go.str("NaN")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest(-stdgo.math.Math.naN(), (103 : GoUInt8), (-1 : GoInt),
		Go.str("NaN")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest(stdgo.math.Math.inf((0 : GoInt)), (103 : GoUInt8), (-1 : GoInt),
		Go.str("+Inf")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest(stdgo.math.Math.inf((-1 : GoInt)), (103 : GoUInt8), (-1 : GoInt),
		Go.str("-Inf")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest(-stdgo.math.Math.inf((0 : GoInt)), (103 : GoUInt8), (-1 : GoInt),
		Go.str("-Inf")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((-1 : GoFloat64), (98 : GoUInt8), (-1 : GoInt),
		Go.str("-4503599627370496p-52")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.9 : GoFloat64), (102 : GoUInt8), (1 : GoInt),
		Go.str("0.9")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.09 : GoFloat64), (102 : GoUInt8), (1 : GoInt),
		Go.str("0.1")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.0999 : GoFloat64), (102 : GoUInt8), (1 : GoInt),
		Go.str("0.1")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.05 : GoFloat64), (102 : GoUInt8), (1 : GoInt),
		Go.str("0.1")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.05 : GoFloat64), (102 : GoUInt8), (0 : GoInt),
		Go.str("0")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.5 : GoFloat64), (102 : GoUInt8), (1 : GoInt),
		Go.str("0.5")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.5 : GoFloat64), (102 : GoUInt8), (0 : GoInt),
		Go.str("0")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.5 : GoFloat64), (102 : GoUInt8), (0 : GoInt),
		Go.str("2")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.2250738585072014e-308 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("2.2250738585072014e-308")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.225073858507201e-308 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("2.225073858507201e-308")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.8326057576481645e+17 : GoFloat64), (102 : GoUInt8), (0 : GoInt),
		Go.str("383260575764816448")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.8326057576481645e+17 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("3.8326057576481645e+17")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((4.9848468198408557e+17 : GoFloat64), (102 : GoUInt8), (-1 : GoInt),
		Go.str("498484681984085570")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((-5.8339553793802237e+23 : GoFloat64), (103 : GoUInt8), (-1 : GoInt),
		Go.str("-5.8339553793802237e+23")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((123.45 : GoFloat64), (63 : GoUInt8), (0 : GoInt),
		Go.str("%?")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((123.45 : GoFloat64), (63 : GoUInt8), (1 : GoInt),
		Go.str("%?")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((123.45 : GoFloat64), (63 : GoUInt8), (-1 : GoInt),
		Go.str("%?")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555555555555 : GoFloat64), (120 : GoUInt8), (-1 : GoInt),
		Go.str("0x1.23456789abcdep+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555555555555 : GoFloat64), (120 : GoUInt8), (0 : GoInt),
		Go.str("0x1p+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555555555555 : GoFloat64), (120 : GoUInt8), (2 : GoInt),
		Go.str("0x1.23p+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555555555555 : GoFloat64), (120 : GoUInt8), (16 : GoInt),
		Go.str("0x1.23456789abcde000p+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555555555555 : GoFloat64), (120 : GoUInt8), (21 : GoInt),
		Go.str("0x1.23456789abcde00000000p+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.2755555510520935 : GoFloat64), (120 : GoUInt8), (-1 : GoInt),
		Go.str("0x1.2345678p+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.2755555510520935 : GoFloat64), (120 : GoUInt8), (6 : GoInt),
		Go.str("0x1.234568p+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555431842804 : GoFloat64), (120 : GoUInt8), (-1 : GoInt),
		Go.str("0x1.2345668p+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555431842804 : GoFloat64), (120 : GoUInt8), (6 : GoInt),
		Go.str("0x1.234566p+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.999969482421875 : GoFloat64), (120 : GoUInt8), (-1 : GoInt),
		Go.str("0x1.ffffp+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.999969482421875 : GoFloat64), (120 : GoUInt8), (4 : GoInt),
		Go.str("0x1.ffffp+01")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.999969482421875 : GoFloat64), (120 : GoUInt8), (3 : GoInt),
		Go.str("0x1.000p+02")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.999969482421875 : GoFloat64), (120 : GoUInt8), (2 : GoInt),
		Go.str("0x1.00p+02")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.999969482421875 : GoFloat64), (120 : GoUInt8), (1 : GoInt),
		Go.str("0x1.0p+02")) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
	(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.999969482421875 : GoFloat64), (120 : GoUInt8), (0 : GoInt),
		Go.str("0x1p+02")) : stdgo.strconv_test.Strconv_test.T_ftoaTest)) : Slice<stdgo.strconv_test.Strconv_test.T_ftoaTest>);

private var _ftoaBenches:Slice<T__struct_2> = (new Slice<T__struct_2>(0, 0, ({
	_name: Go.str("Decimal"),
	_float: (33909 : GoFloat64),
	_fmt: (103 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (64 : GoInt)
} : T__struct_2), ({
	_name: Go.str("Float"),
	_float: (339.7784 : GoFloat64),
	_fmt: (103 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("Exp"),
	_float: (-5.09e+75 : GoFloat64),
	_fmt: (103 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("NegExp"),
	_float: (-5.11e-95 : GoFloat64),
	_fmt: (103 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("LongExp"),
	_float: (1.234567890123456e-78 : GoFloat64),
	_fmt: (103 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("Big"),
	_float: (1.2345678912345679e+26 : GoFloat64),
	_fmt: (103 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("BinaryExp"),
	_float: (-1 : GoFloat64),
	_fmt: (98 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("32Integer"),
	_float: (33909 : GoFloat64),
	_fmt: (103 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (32 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("32ExactFraction"),
	_float: (3.375 : GoFloat64),
	_fmt: (103 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (32 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("32Point"),
	_float: (339.7784 : GoFloat64),
	_fmt: (103 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (32 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("32Exp"),
	_float: (-5.09e+25 : GoFloat64),
	_fmt: (103 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (32 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("32NegExp"),
	_float: (-5.11e-25 : GoFloat64),
	_fmt: (103 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (32 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("32Shortest"),
	_float: (1.234567e-08 : GoFloat64),
	_fmt: (103 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (32 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("32Fixed8Hard"),
	_float: stdgo.math.Math.ldexp((1.5961084e+07 : GoFloat64), (-125 : GoInt)),
	_fmt: (101 : GoUInt8),
	_prec: (8 : GoInt),
	_bitSize: (32 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("32Fixed9Hard"),
	_float: stdgo.math.Math.ldexp((1.4855922e+07 : GoFloat64), (-83 : GoInt)),
	_fmt: (101 : GoUInt8),
	_prec: (9 : GoInt),
	_bitSize: (32 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("64Fixed1"),
	_float: (123456 : GoFloat64),
	_fmt: (101 : GoUInt8),
	_prec: (3 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("64Fixed2"),
	_float: (123.456 : GoFloat64),
	_fmt: (101 : GoUInt8),
	_prec: (3 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("64Fixed3"),
	_float: (1.23456e+78 : GoFloat64),
	_fmt: (101 : GoUInt8),
	_prec: (3 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("64Fixed4"),
	_float: (1.23456e-78 : GoFloat64),
	_fmt: (101 : GoUInt8),
	_prec: (3 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("64Fixed12"),
	_float: (1.23456e-78 : GoFloat64),
	_fmt: (101 : GoUInt8),
	_prec: (12 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("64Fixed16"),
	_float: (1.23456e-78 : GoFloat64),
	_fmt: (101 : GoUInt8),
	_prec: (16 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("64Fixed12Hard"),
	_float: stdgo.math.Math.ldexp((6.965949469487146e+15 : GoFloat64), (-249 : GoInt)),
	_fmt: (101 : GoUInt8),
	_prec: (12 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("64Fixed17Hard"),
	_float: stdgo.math.Math.ldexp((8.887055249355788e+15 : GoFloat64), (665 : GoInt)),
	_fmt: (101 : GoUInt8),
	_prec: (17 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("64Fixed18Hard"),
	_float: stdgo.math.Math.ldexp((6.994187472632449e+15 : GoFloat64), (690 : GoInt)),
	_fmt: (101 : GoUInt8),
	_prec: (18 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("Slowpath64"),
	_float: (8.034137530808823e+43 : GoFloat64),
	_fmt: (101 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2), ({
	_name: Go.str("SlowpathDenormal64"),
	_float: (6.226662346353213e-309 : GoFloat64),
	_fmt: (101 : GoUInt8),
	_prec: (-1 : GoInt),
	_bitSize: (64 : GoInt)
	} : T__struct_2)) : Slice<T__struct_2>);

private var _itob64tests:Slice<stdgo.strconv_test.Strconv_test.T_itob64Test> = (new Slice<stdgo.strconv_test.Strconv_test.T_itob64Test>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("0" : GoInt64), (10 : GoInt), Go.str("0")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("1" : GoInt64), (10 : GoInt), Go.str("1")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-1" : GoInt64), (10 : GoInt), Go.str("-1")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("12345678" : GoInt64), (10 : GoInt),
		Go.str("12345678")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-987654321" : GoInt64), (10 : GoInt),
		Go.str("-987654321")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("2147483647" : GoInt64), (10 : GoInt),
		Go.str("2147483647")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-2147483647" : GoInt64), (10 : GoInt),
		Go.str("-2147483647")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("2147483648" : GoInt64), (10 : GoInt),
		Go.str("2147483648")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-2147483648" : GoInt64), (10 : GoInt),
		Go.str("-2147483648")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("2147483649" : GoInt64), (10 : GoInt),
		Go.str("2147483649")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-2147483649" : GoInt64), (10 : GoInt),
		Go.str("-2147483649")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("4294967295" : GoInt64), (10 : GoInt),
		Go.str("4294967295")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-4294967295" : GoInt64), (10 : GoInt),
		Go.str("-4294967295")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("4294967296" : GoInt64), (10 : GoInt),
		Go.str("4294967296")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-4294967296" : GoInt64), (10 : GoInt),
		Go.str("-4294967296")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("4294967297" : GoInt64), (10 : GoInt),
		Go.str("4294967297")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-4294967297" : GoInt64), (10 : GoInt),
		Go.str("-4294967297")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("1125899906842624" : GoInt64), (10 : GoInt),
		Go.str("1125899906842624")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("9223372036854775807" : GoInt64), (10 : GoInt),
		Go.str("9223372036854775807")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-9223372036854775807" : GoInt64), (10 : GoInt),
		Go.str("-9223372036854775807")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-9223372036854775808" : GoInt64), (10 : GoInt),
		Go.str("-9223372036854775808")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("0" : GoInt64), (2 : GoInt), Go.str("0")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("10" : GoInt64), (2 : GoInt), Go.str("1010")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-1" : GoInt64), (2 : GoInt), Go.str("-1")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("32768" : GoInt64), (2 : GoInt),
		Go.str("1000000000000000")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-8" : GoInt64), (8 : GoInt), Go.str("-10")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("6416645477" : GoInt64), (8 : GoInt),
		Go.str("57635436545")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("16777216" : GoInt64), (8 : GoInt),
		Go.str("100000000")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("16" : GoInt64), (16 : GoInt), Go.str("10")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-81985529216486895" : GoInt64), (16 : GoInt),
		Go.str("-123456789abcdef")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("9223372036854775807" : GoInt64), (16 : GoInt),
		Go.str("7fffffffffffffff")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("9223372036854775807" : GoInt64), (2 : GoInt),
		Go.str("111111111111111111111111111111111111111111111111111111111111111")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("-9223372036854775808" : GoInt64), (2 : GoInt),
		Go.str("-1000000000000000000000000000000000000000000000000000000000000000")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("16" : GoInt64), (17 : GoInt), Go.str("g")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("25" : GoInt64), (25 : GoInt), Go.str("10")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("32544027072" : GoInt64), (35 : GoInt),
		Go.str("holycow")) : stdgo.strconv_test.Strconv_test.T_itob64Test),
	(new stdgo.strconv_test.Strconv_test.T_itob64Test(("38493362624" : GoInt64), (36 : GoInt),
		Go.str("holycow")) : stdgo.strconv_test.Strconv_test.T_itob64Test)) : Slice<stdgo.strconv_test.Strconv_test.T_itob64Test>);

private var _uitob64tests:Slice<stdgo.strconv_test.Strconv_test.T_uitob64Test> = (new Slice<stdgo.strconv_test.Strconv_test.T_uitob64Test>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_uitob64Test(("9223372036854775807" : GoUInt64), (10 : GoInt),
		Go.str("9223372036854775807")) : stdgo.strconv_test.Strconv_test.T_uitob64Test),
	(new stdgo.strconv_test.Strconv_test.T_uitob64Test(("9223372036854775808" : GoUInt64), (10 : GoInt),
		Go.str("9223372036854775808")) : stdgo.strconv_test.Strconv_test.T_uitob64Test),
	(new stdgo.strconv_test.Strconv_test.T_uitob64Test(("9223372036854775809" : GoUInt64), (10 : GoInt),
		Go.str("9223372036854775809")) : stdgo.strconv_test.Strconv_test.T_uitob64Test),
	(new stdgo.strconv_test.Strconv_test.T_uitob64Test(("18446744073709551614" : GoUInt64), (10 : GoInt),
		Go.str("18446744073709551614")) : stdgo.strconv_test.Strconv_test.T_uitob64Test),
	(new stdgo.strconv_test.Strconv_test.T_uitob64Test(("18446744073709551615" : GoUInt64), (10 : GoInt),
		Go.str("18446744073709551615")) : stdgo.strconv_test.Strconv_test.T_uitob64Test),
	(new stdgo.strconv_test.Strconv_test.T_uitob64Test(("18446744073709551615" : GoUInt64), (2 : GoInt),
		Go.str("1111111111111111111111111111111111111111111111111111111111111111")) : stdgo.strconv_test.Strconv_test.T_uitob64Test)) : Slice<stdgo.strconv_test.Strconv_test.T_uitob64Test>);

private var _varlenUints:Slice<T__struct_3> = (new Slice<T__struct_3>(0, 0, ({_in: ("1" : GoUInt64), _out: Go.str("1")} : T__struct_3),
	({_in: ("12" : GoUInt64), _out: Go.str("12")} : T__struct_3), ({_in: ("123" : GoUInt64), _out: Go.str("123")} : T__struct_3),
	({_in: ("1234" : GoUInt64), _out: Go.str("1234")} : T__struct_3), ({_in: ("12345" : GoUInt64), _out: Go.str("12345")} : T__struct_3),
	({_in: ("123456" : GoUInt64), _out: Go.str("123456")} : T__struct_3), ({_in: ("1234567" : GoUInt64), _out: Go.str("1234567")} : T__struct_3),
	({_in: ("12345678" : GoUInt64), _out: Go.str("12345678")} : T__struct_3), ({_in: ("123456789" : GoUInt64), _out: Go.str("123456789")} : T__struct_3),
	({_in: ("1234567890" : GoUInt64), _out: Go.str("1234567890")} : T__struct_3),
	({_in: ("12345678901" : GoUInt64), _out: Go.str("12345678901")} : T__struct_3),
	({_in: ("123456789012" : GoUInt64), _out: Go.str("123456789012")} : T__struct_3),
	({_in: ("1234567890123" : GoUInt64), _out: Go.str("1234567890123")} : T__struct_3),
	({_in: ("12345678901234" : GoUInt64), _out: Go.str("12345678901234")} : T__struct_3),
	({_in: ("123456789012345" : GoUInt64), _out: Go.str("123456789012345")} : T__struct_3),
	({_in: ("1234567890123456" : GoUInt64), _out: Go.str("1234567890123456")} : T__struct_3),
	({_in: ("12345678901234567" : GoUInt64), _out: Go.str("12345678901234567")} : T__struct_3),
	({_in: ("123456789012345678" : GoUInt64), _out: Go.str("123456789012345678")} : T__struct_3),
	({_in: ("1234567890123456789" : GoUInt64), _out: Go.str("1234567890123456789")} : T__struct_3),
	({_in: ("12345678901234567890" : GoUInt64), _out: Go.str("12345678901234567890")} : T__struct_3)) : Slice<T__struct_3>);

private var _quotetests:Slice<stdgo.strconv_test.Strconv_test.T_quoteTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_quoteTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_quoteTest(Go.str("\x07\x08\x0C\r\n\t\x0B"), Go.str("\"\\a\\b\\f\\r\\n\\t\\v\""),
		Go.str("\"\\a\\b\\f\\r\\n\\t\\v\""), Go.str("\"\\a\\b\\f\\r\\n\\t\\v\"")) : stdgo.strconv_test.Strconv_test.T_quoteTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteTest(Go.str("\\"), Go.str("\"\\\\\""), Go.str("\"\\\\\""),
		Go.str("\"\\\\\"")) : stdgo.strconv_test.Strconv_test.T_quoteTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteTest(Go.str("abc", 255, "def"), Go.str("\"abc\\xffdef\""), Go.str("\"abc\\xffdef\""),
		Go.str("\"abc\\xffdef\"")) : stdgo.strconv_test.Strconv_test.T_quoteTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteTest(Go.str("☺"), Go.str("\"☺\""), Go.str("\"\\u263a\""),
		Go.str("\"☺\"")) : stdgo.strconv_test.Strconv_test.T_quoteTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteTest(Go.str("\u{0010ffff}"), Go.str("\"\\U0010ffff\""), Go.str("\"\\U0010ffff\""),
		Go.str("\"\\U0010ffff\"")) : stdgo.strconv_test.Strconv_test.T_quoteTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteTest(Go.str(4), Go.str("\"\\x04\""), Go.str("\"\\x04\""),
		Go.str("\"\\x04\"")) : stdgo.strconv_test.Strconv_test.T_quoteTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteTest(Go.str("!\u00a0!\u2000!\u3000!"), Go.str("\"!\\u00a0!\\u2000!\\u3000!\""),
		Go.str("\"!\\u00a0!\\u2000!\\u3000!\""), Go.str("\"!\u00a0!\u2000!\u3000!\"")) : stdgo.strconv_test.Strconv_test.T_quoteTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteTest(Go.str(127), Go.str("\"\\x7f\""), Go.str("\"\\x7f\""),
		Go.str("\"\\x7f\"")) : stdgo.strconv_test.Strconv_test.T_quoteTest)) : Slice<stdgo.strconv_test.Strconv_test.T_quoteTest>);

private var _quoterunetests:Slice<stdgo.strconv_test.Strconv_test.T_quoteRuneTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_quoteRuneTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((97 : GoInt32), Go.str("\'a\'"), Go.str("\'a\'"),
		Go.str("\'a\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((7 : GoInt32), Go.str("\'\\a\'"), Go.str("\'\\a\'"),
		Go.str("\'\\a\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((92 : GoInt32), Go.str("\'\\\\\'"), Go.str("\'\\\\\'"),
		Go.str("\'\\\\\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((255 : GoInt32), Go.str("\'ÿ\'"), Go.str("\'\\u00ff\'"),
		Go.str("\'ÿ\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((9786 : GoInt32), Go.str("\'☺\'"), Go.str("\'\\u263a\'"),
		Go.str("\'☺\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((57005 : GoInt32), Go.str("\'�\'"), Go.str("\'\\ufffd\'"),
		Go.str("\'�\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((65533 : GoInt32), Go.str("\'�\'"), Go.str("\'\\ufffd\'"),
		Go.str("\'�\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((1114111 : GoInt32), Go.str("\'\\U0010ffff\'"), Go.str("\'\\U0010ffff\'"),
		Go.str("\'\\U0010ffff\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((1114112 : GoInt32), Go.str("\'�\'"), Go.str("\'\\ufffd\'"),
		Go.str("\'�\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((4 : GoInt32), Go.str("\'\\x04\'"), Go.str("\'\\x04\'"),
		Go.str("\'\\x04\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((160 : GoInt32), Go.str("\'\\u00a0\'"), Go.str("\'\\u00a0\'"),
		Go.str("\'\u00a0\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((8192 : GoInt32), Go.str("\'\\u2000\'"), Go.str("\'\\u2000\'"),
		Go.str("\'\u2000\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
	(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((12288 : GoInt32), Go.str("\'\\u3000\'"), Go.str("\'\\u3000\'"),
		Go.str("\'\u3000\'")) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest)) : Slice<stdgo.strconv_test.Strconv_test.T_quoteRuneTest>);

private var _canbackquotetests:Slice<stdgo.strconv_test.Strconv_test.T_canBackquoteTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_canBackquoteTest>(0,
	0, (new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(Go.str("`"), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((0 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((1 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((2 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((3 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((4 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((5 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((6 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((7 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((8 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((9 : GoInt32) : GoRune) : GoString), true) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((10 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((11 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((12 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((13 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((14 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((15 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((16 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((17 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((18 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((19 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((20 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((21 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((22 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((23 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((24 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((25 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((26 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((27 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((28 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((29 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((30 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((31 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((127 : GoInt32) : GoRune) : GoString),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(Go.str("\' !\"#$$%&\'()*+,-./:;<=>?@[\\]^_{|}~"),
		true) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(Go.str("0123456789"), true) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(Go.str("ABCDEFGHIJKLMNOPQRSTUVWXYZ"), true) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(Go.str("abcdefghijklmnopqrstuvwxyz"), true) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(Go.str("☺"), true) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(Go.str(128), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(Go.str("a", 224, 160, "z"), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(Go.str("\ufeffabc"), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
	(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(Go.str("a\ufeffz"),
		false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest)) : Slice<stdgo.strconv_test.Strconv_test.T_canBackquoteTest>);

private var _unquotetests:Slice<stdgo.strconv_test.Strconv_test.T_unQuoteTest> = (new Slice<stdgo.strconv_test.Strconv_test.T_unQuoteTest>(0, 0,
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\"\""), Go.str()) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\"a\""), Go.str("a")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\"abc\""), Go.str("abc")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\"☺\""), Go.str("☺")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\"hello world\""), Go.str("hello world")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\"\\xFF\""), Go.str(255)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\"\\377\""), Go.str(255)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\"\\u1234\""), Go.str("ሴ")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\"\\U00010111\""), Go.str("𐄑")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\"\\U0001011111\""), Go.str("𐄑11")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\"\\a\\b\\f\\n\\r\\t\\v\\\\\\\"\""),
		Go.str("\x07\x08\x0C\n\r\t\x0B\\\"")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\"\'\""), Go.str("\'")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\'a\'"), Go.str("a")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\'☹\'"), Go.str("☹")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\'\\a\'"), Go.str("\x07")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\'\\x10\'"), Go.str(16)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\'\\377\'"), Go.str(255)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\'\\u1234\'"), Go.str("ሴ")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\'\\U00010111\'"), Go.str("𐄑")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\'\\t\'"), Go.str("\t")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\' \'"), Go.str(" ")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\'\\\'\'"), Go.str("\'")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("\'\"\'"), Go.str("\"")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("``"), Go.str()) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("`a`"), Go.str("a")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("`abc`"), Go.str("abc")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("`☺`"), Go.str("☺")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("`hello world`"), Go.str("hello world")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("`\\xFF`"), Go.str("\\xFF")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("`\\377`"), Go.str("\\377")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("`\\`"), Go.str("\\")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("`\n`"), Go.str("\n")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("`\t`"), Go.str("\t")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("` `"), Go.str(" ")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
	(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(Go.str("`a\rb`"),
		Go.str("ab")) : stdgo.strconv_test.Strconv_test.T_unQuoteTest)) : Slice<stdgo.strconv_test.Strconv_test.T_unQuoteTest>);

private var _misquoted:Slice<GoString> = (new Slice<GoString>(0, 0, Go.str(), Go.str("\""), Go.str("\"a"), Go.str("\"\'"), Go.str("b\""), Go.str("\"\\\""),
	Go.str("\"\\9\""), Go.str("\"\\19\""), Go.str("\"\\129\""), Go.str("\'\\\'"), Go.str("\'\\9\'"), Go.str("\'\\19\'"), Go.str("\'\\129\'"),
	Go.str("\'ab\'"), Go.str("\"\\x1!\""), Go.str("\"\\U12345678\""), Go.str("\"\\z\""), Go.str("`"), Go.str("`xxx"), Go.str("``x\r"), Go.str("`\""),
	Go.str("\"\\\'\""), Go.str("\'\\\"\'"), Go.str("\"\n\""), Go.str("\"\\n\n\""), Go.str("\'\n\'"), Go.str("\"\\udead\""),
	Go.str("\"\\ud83d\\ude4f\"")) : Slice<GoString>);

private var _nextToOne:GoString = (Go.str("1.00000000000000011102230246251565404236316680908203125")
	+ stdgo.strings.Strings.repeat(Go.str("0"), (10000 : GoInt)))
	+ Go.str("1");

private var _mallocTest:Slice<T__struct_5> = (new Slice<T__struct_5>(0, 0, ({
	_count: (0 : GoInt),
	_desc: Go.str("AppendInt(localBuf[:0], 123, 10)"),
	_fn: function():Void {
		var _localBuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...64) (0 : GoUInt8)]);
		appendInt((_localBuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), ("123" : GoInt64), (10 : GoInt));
	}
} : T__struct_5), ({
	_count: (0 : GoInt),
	_desc: Go.str("AppendInt(globalBuf[:0], 123, 10)"),
	_fn: function():Void {
		appendInt((_globalBuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), ("123" : GoInt64), (10 : GoInt));
	}
	} : T__struct_5), ({
	_count: (0 : GoInt),
	_desc: Go.str("AppendFloat(localBuf[:0], 1.23, \'g\', 5, 64)"),
	_fn: function():Void {
		var _localBuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...64) (0 : GoUInt8)]);
		appendFloat((_localBuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), (1.23 : GoFloat64), (103 : GoUInt8), (5 : GoInt), (64 : GoInt));
	}
	} : T__struct_5), ({
	_count: (0 : GoInt),
	_desc: Go.str("AppendFloat(globalBuf[:0], 1.23, \'g\', 5, 64)"),
	_fn: function():Void {
		appendFloat((_globalBuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), (1.23 : GoFloat64), (103 : GoUInt8), (5 : GoInt), (64 : GoInt));
	}
	} : T__struct_5), ({
	_count: (10 : GoInt),
	_desc: Go.str("AppendQuoteToASCII(nil, oneMB)"),
	_fn: function():Void {
		appendQuoteToASCII((null : Slice<GoUInt8>), (_oneMB : GoString));
	}
	} : T__struct_5), ({
	_count: (0 : GoInt),
	_desc: Go.str("ParseFloat(\"123.45\", 64)"),
	_fn: function():Void {
		parseFloat(Go.str("123.45"), (64 : GoInt));
	}
	} : T__struct_5), ({
	_count: (0 : GoInt),
	_desc: Go.str("ParseFloat(\"123.456789123456789\", 64)"),
	_fn: function():Void {
		parseFloat(Go.str("123.456789123456789"), (64 : GoInt));
	}
	} : T__struct_5), ({
	_count: (0 : GoInt),
	_desc: Go.str("ParseFloat(\"1.000000000000000111022302462515654042363166809082031251\", 64)"),
	_fn: function():Void {
		parseFloat(Go.str("1.000000000000000111022302462515654042363166809082031251"), (64 : GoInt));
	}
	} : T__struct_5), ({
	_count: (0 : GoInt),
	_desc: Go.str("ParseFloat(\"1.0000000000000001110223024625156540423631668090820312500...001\", 64)"),
	_fn: function():Void {
		parseFloat(_nextToOne, (64 : GoInt));
	}
	} : T__struct_5)) : Slice<T__struct_5>);

private var _atofOnce:stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
private var _atofRandomTests:Slice<T_atofSimpleTest> = (null : Slice<stdgo.strconv_test.Strconv_test.T_atofSimpleTest>);
private var _benchmarksRandomBits:GoArray<GoString> = new GoArray<GoString>(...[for (i in 0...1024) ("" : GoString)]);
private var _benchmarksRandomNormal:GoArray<GoString> = new GoArray<GoString>(...[for (i in 0...1024) ("" : GoString)]);
private final _below1e23:GoUInt64 = ("0" : GoUInt64);
private final _above1e23:GoUInt64 = ("0" : GoUInt64);

/**
	// make sure compiler cannot optimize away benchmarks
**/
var benchSink:GoInt = (0 : GoInt);

private var _benchQuoteBuf:Slice<GoByte> = (null : Slice<GoUInt8>);
private var _benchQuoteRuneBuf:Slice<GoByte> = (null : Slice<GoUInt8>);
private var _globalBuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...64) (0 : GoUInt8)]);

/**
	// Will be allocated to 1MB of random data by TestCountMallocs.
**/
private var _oneMB:Slice<GoByte> = (null : Slice<GoUInt8>);

@:structInit private class T_atobTest {
	public var _in:GoString = "";
	public var _out:Bool = false;
	public var _err:Error = (null : Error);

	public function new(?_in:GoString, ?_out:Bool, ?_err:Error) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
		if (_err != null)
			this._err = _err;
	}

	public function __copy__() {
		return new T_atobTest(_in, _out, _err);
	}
}

@:structInit private class T_appendBoolTest {
	public var _b:Bool = false;
	public var _in:Slice<GoUInt8> = (null : Slice<GoUInt8>);
	public var _out:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	public function new(?_b:Bool, ?_in:Slice<GoUInt8>, ?_out:Slice<GoUInt8>) {
		if (_b != null)
			this._b = _b;
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
	}

	public function __copy__() {
		return new T_appendBoolTest(_b, _in, _out);
	}
}

@:structInit private class T_atocTest {
	public var _in:GoString = "";
	public var _out:GoComplex128 = new GoComplex128(0, 0);
	public var _err:Error = (null : Error);

	public function new(?_in:GoString, ?_out:GoComplex128, ?_err:Error) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
		if (_err != null)
			this._err = _err;
	}

	public function __copy__() {
		return new T_atocTest(_in, _out, _err);
	}
}

@:structInit private class T_atofTest {
	public var _in:GoString = "";
	public var _out:GoString = "";
	public var _err:Error = (null : Error);

	public function new(?_in:GoString, ?_out:GoString, ?_err:Error) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
		if (_err != null)
			this._err = _err;
	}

	public function __copy__() {
		return new T_atofTest(_in, _out, _err);
	}
}

@:structInit private class T_atofSimpleTest {
	public var _x:GoFloat64 = 0;
	public var _s:GoString = "";

	public function new(?_x:GoFloat64, ?_s:GoString) {
		if (_x != null)
			this._x = _x;
		if (_s != null)
			this._s = _s;
	}

	public function __copy__() {
		return new T_atofSimpleTest(_x, _s);
	}
}

@:structInit private class T_parseUint64Test {
	public var _in:GoString = "";
	public var _out:GoUInt64 = 0;
	public var _err:Error = (null : Error);

	public function new(?_in:GoString, ?_out:GoUInt64, ?_err:Error) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
		if (_err != null)
			this._err = _err;
	}

	public function __copy__() {
		return new T_parseUint64Test(_in, _out, _err);
	}
}

@:structInit private class T_parseUint64BaseTest {
	public var _in:GoString = "";
	public var _base:GoInt = 0;
	public var _out:GoUInt64 = 0;
	public var _err:Error = (null : Error);

	public function new(?_in:GoString, ?_base:GoInt, ?_out:GoUInt64, ?_err:Error) {
		if (_in != null)
			this._in = _in;
		if (_base != null)
			this._base = _base;
		if (_out != null)
			this._out = _out;
		if (_err != null)
			this._err = _err;
	}

	public function __copy__() {
		return new T_parseUint64BaseTest(_in, _base, _out, _err);
	}
}

@:structInit private class T_parseInt64Test {
	public var _in:GoString = "";
	public var _out:GoInt64 = 0;
	public var _err:Error = (null : Error);

	public function new(?_in:GoString, ?_out:GoInt64, ?_err:Error) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
		if (_err != null)
			this._err = _err;
	}

	public function __copy__() {
		return new T_parseInt64Test(_in, _out, _err);
	}
}

@:structInit private class T_parseInt64BaseTest {
	public var _in:GoString = "";
	public var _base:GoInt = 0;
	public var _out:GoInt64 = 0;
	public var _err:Error = (null : Error);

	public function new(?_in:GoString, ?_base:GoInt, ?_out:GoInt64, ?_err:Error) {
		if (_in != null)
			this._in = _in;
		if (_base != null)
			this._base = _base;
		if (_out != null)
			this._out = _out;
		if (_err != null)
			this._err = _err;
	}

	public function __copy__() {
		return new T_parseInt64BaseTest(_in, _base, _out, _err);
	}
}

@:structInit private class T_parseUint32Test {
	public var _in:GoString = "";
	public var _out:GoUInt32 = 0;
	public var _err:Error = (null : Error);

	public function new(?_in:GoString, ?_out:GoUInt32, ?_err:Error) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
		if (_err != null)
			this._err = _err;
	}

	public function __copy__() {
		return new T_parseUint32Test(_in, _out, _err);
	}
}

@:structInit private class T_parseInt32Test {
	public var _in:GoString = "";
	public var _out:GoInt32 = 0;
	public var _err:Error = (null : Error);

	public function new(?_in:GoString, ?_out:GoInt32, ?_err:Error) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
		if (_err != null)
			this._err = _err;
	}

	public function __copy__() {
		return new T_parseInt32Test(_in, _out, _err);
	}
}

@:structInit private class T_numErrorTest {
	public var _num:GoString = "";
	public var _want:GoString = "";

	public function new(?_num:GoString, ?_want:GoString) {
		if (_num != null)
			this._num = _num;
		if (_want != null)
			this._want = _want;
	}

	public function __copy__() {
		return new T_numErrorTest(_num, _want);
	}
}

@:structInit private class T_parseErrorTest {
	public var _arg:GoInt = 0;
	public var _errStub:(GoString, GoInt) -> Error = null;

	public function new(?_arg:GoInt, ?_errStub:(GoString, GoInt) -> Error) {
		if (_arg != null)
			this._arg = _arg;
		if (_errStub != null)
			this._errStub = _errStub;
	}

	public function __copy__() {
		return new T_parseErrorTest(_arg, _errStub);
	}
}

@:structInit private class T_benchCase {
	public var _name:GoString = "";
	public var _num:GoInt64 = 0;

	public function new(?_name:GoString, ?_num:GoInt64) {
		if (_name != null)
			this._name = _name;
		if (_num != null)
			this._num = _num;
	}

	public function __copy__() {
		return new T_benchCase(_name, _num);
	}
}

@:structInit private class T_shiftTest {
	public var _i:GoUInt64 = 0;
	public var _shift:GoInt = 0;
	public var _out:GoString = "";

	public function new(?_i:GoUInt64, ?_shift:GoInt, ?_out:GoString) {
		if (_i != null)
			this._i = _i;
		if (_shift != null)
			this._shift = _shift;
		if (_out != null)
			this._out = _out;
	}

	public function __copy__() {
		return new T_shiftTest(_i, _shift, _out);
	}
}

@:structInit private class T_roundTest {
	public var _i:GoUInt64 = 0;
	public var _nd:GoInt = 0;
	public var _down:GoString = "";
	public var _round:GoString = "";
	public var _up:GoString = "";
	public var _int:GoUInt64 = 0;

	public function new(?_i:GoUInt64, ?_nd:GoInt, ?_down:GoString, ?_round:GoString, ?_up:GoString, ?_int:GoUInt64) {
		if (_i != null)
			this._i = _i;
		if (_nd != null)
			this._nd = _nd;
		if (_down != null)
			this._down = _down;
		if (_round != null)
			this._round = _round;
		if (_up != null)
			this._up = _up;
		if (_int != null)
			this._int = _int;
	}

	public function __copy__() {
		return new T_roundTest(_i, _nd, _down, _round, _up, _int);
	}
}

@:structInit private class T_roundIntTest {
	public var _i:GoUInt64 = 0;
	public var _shift:GoInt = 0;
	public var _int:GoUInt64 = 0;

	public function new(?_i:GoUInt64, ?_shift:GoInt, ?_int:GoUInt64) {
		if (_i != null)
			this._i = _i;
		if (_shift != null)
			this._shift = _shift;
		if (_int != null)
			this._int = _int;
	}

	public function __copy__() {
		return new T_roundIntTest(_i, _shift, _int);
	}
}

@:structInit private class T_ftoaTest {
	public var _f:GoFloat64 = 0;
	public var _fmt:GoUInt8 = 0;
	public var _prec:GoInt = 0;
	public var _s:GoString = "";

	public function new(?_f:GoFloat64, ?_fmt:GoUInt8, ?_prec:GoInt, ?_s:GoString) {
		if (_f != null)
			this._f = _f;
		if (_fmt != null)
			this._fmt = _fmt;
		if (_prec != null)
			this._prec = _prec;
		if (_s != null)
			this._s = _s;
	}

	public function __copy__() {
		return new T_ftoaTest(_f, _fmt, _prec, _s);
	}
}

@:structInit private class T_itob64Test {
	public var _in:GoInt64 = 0;
	public var _base:GoInt = 0;
	public var _out:GoString = "";

	public function new(?_in:GoInt64, ?_base:GoInt, ?_out:GoString) {
		if (_in != null)
			this._in = _in;
		if (_base != null)
			this._base = _base;
		if (_out != null)
			this._out = _out;
	}

	public function __copy__() {
		return new T_itob64Test(_in, _base, _out);
	}
}

@:structInit private class T_uitob64Test {
	public var _in:GoUInt64 = 0;
	public var _base:GoInt = 0;
	public var _out:GoString = "";

	public function new(?_in:GoUInt64, ?_base:GoInt, ?_out:GoString) {
		if (_in != null)
			this._in = _in;
		if (_base != null)
			this._base = _base;
		if (_out != null)
			this._out = _out;
	}

	public function __copy__() {
		return new T_uitob64Test(_in, _base, _out);
	}
}

@:structInit private class T_quoteTest {
	public var _in:GoString = "";
	public var _out:GoString = "";
	public var _ascii:GoString = "";
	public var _graphic:GoString = "";

	public function new(?_in:GoString, ?_out:GoString, ?_ascii:GoString, ?_graphic:GoString) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
		if (_ascii != null)
			this._ascii = _ascii;
		if (_graphic != null)
			this._graphic = _graphic;
	}

	public function __copy__() {
		return new T_quoteTest(_in, _out, _ascii, _graphic);
	}
}

@:structInit private class T_quoteRuneTest {
	public var _in:GoInt32 = 0;
	public var _out:GoString = "";
	public var _ascii:GoString = "";
	public var _graphic:GoString = "";

	public function new(?_in:GoInt32, ?_out:GoString, ?_ascii:GoString, ?_graphic:GoString) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
		if (_ascii != null)
			this._ascii = _ascii;
		if (_graphic != null)
			this._graphic = _graphic;
	}

	public function __copy__() {
		return new T_quoteRuneTest(_in, _out, _ascii, _graphic);
	}
}

@:structInit private class T_canBackquoteTest {
	public var _in:GoString = "";
	public var _out:Bool = false;

	public function new(?_in:GoString, ?_out:Bool) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
	}

	public function __copy__() {
		return new T_canBackquoteTest(_in, _out);
	}
}

@:structInit private class T_unQuoteTest {
	public var _in:GoString = "";
	public var _out:GoString = "";

	public function new(?_in:GoString, ?_out:GoString) {
		if (_in != null)
			this._in = _in;
		if (_out != null)
			this._out = _out;
	}

	public function __copy__() {
		return new T_unQuoteTest(_in, _out);
	}
}

@:local private typedef T__struct_0 = {
	public var _f:GoFloat64;
	public var _s:GoString;
};

@:local private typedef T__struct_1 = {
	public var _c:GoComplex128;
	public var _fmt:GoUInt8;
	public var _prec:GoInt;
	public var _bitSize:GoInt;
	public var _out:GoString;
};

@:local private typedef T__struct_2 = {
	public var _name:GoString;
	public var _float:GoFloat64;
	public var _fmt:GoUInt8;
	public var _prec:GoInt;
	public var _bitSize:GoInt;
};

@:local private typedef T__struct_3 = {
	public var _in:GoUInt64;
	public var _out:GoString;
};

@:local private typedef T__struct_4 = {
	public var _in:GoString;

	/**
		// one of:
	**/
	public var _want:GoString;

	public var _wantErr:Error;
};

@:local private typedef T__struct_5 = {
	public var _count:GoInt;
	public var _desc:GoString;
	public var _fn:() -> Void;
};

@:local private typedef T__struct_6 = {
	/**
		// Input error
	**/
	public var _err:Error;

	/**
		// Function name wanted
	**/
	public var _want:GoString;
};

function testParseBool(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _atobtests) {
		var __tmp__ = parseBool(_test._in),
			_b:Bool = __tmp__._0,
			_e:Error = __tmp__._1;
		if (_test._err != null) {
			if (_e == null) {
				_t.errorf(Go.str("%s: expected %s but got nil"), Go.toInterface(_test._in), Go.toInterface(_test._err));
			} else {
				if (Go.toInterface(_test._err) != (Go.toInterface((Go.typeAssert((Go.toInterface(_e) : Ref<NumError>)) : Ref<NumError>).err))) {
					_t.errorf(Go.str("%s: expected %s but got %s"), Go.toInterface(_test._in), Go.toInterface(_test._err), Go.toInterface(_e));
				};
			};
		} else {
			if (_e != null) {
				_t.errorf(Go.str("%s: expected no error but got %s"), Go.toInterface(_test._in), Go.toInterface(_e));
			};
			if (_b != (_test._out)) {
				_t.errorf(Go.str("%s: expected %t but got %t"), Go.toInterface(_test._in), Go.toInterface(_test._out), Go.toInterface(_b));
			};
		};
	};
}

function testFormatBool(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_b => _s in _boolString) {
		{
			var _f:GoString = formatBool(_b);
			if (_f != (_s)) {
				_t.errorf(Go.str("FormatBool(%v): expected %q but got %q"), Go.toInterface(_b), Go.toInterface(_s), Go.toInterface(_f));
			};
		};
	};
}

function testAppendBool(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _appendBoolTests) {
		var _b = appendBool(_test._in, _test._b);
		if (!stdgo.bytes.Bytes.equal(_b, _test._out)) {
			_t.errorf(Go.str("AppendBool(%q, %v): expected %q but got %q"), Go.toInterface(_test._in), Go.toInterface(_test._b), Go.toInterface(_test._out),
				Go.toInterface(_b));
		};
	};
}

function testParseComplex(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tests = (new Slice<stdgo.strconv_test.Strconv_test.T_atocTest>(0, 0,
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str(), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str(" "), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("("), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str(")"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1I"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("10  + 5i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("3+"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("3+5"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("3+5+5i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("()"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("(i)"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("(0)"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("(1i)"), ((0 : GoFloat64) + new GoComplex128(0, 1)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("(3.0+5.5i)"), ((3 : GoFloat64) + new GoComplex128(0, 5.5)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("(1)+1i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("(3.0+5.5i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("3.0+5.5i)"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("NaN"), new GoComplex128(stdgo.math.Math.naN(), (0 : GoFloat64)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("NANi"), new GoComplex128((0 : GoFloat64), stdgo.math.Math.naN()),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("nan+nAni"), new GoComplex128(stdgo.math.Math.naN(), stdgo.math.Math.naN()),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+NaN"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-NaN"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("NaN-NaNi"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("Inf"), _infp0, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+inf"), _infp0, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-inf"), _infm0, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("Infinity"), _infp0, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+INFINITY"), _infp0, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-infinity"), _infm0, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+infi"), _inf0p, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0-infinityi"), _inf0m, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("Inf+Infi"), _infpp, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+Inf-Infi"), _infpm, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-Infinity+Infi"), _infmp, (null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("inf-inf"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0.0i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0+0.0i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0e+0i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0e-0+0i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0.0-0.0i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0e+012345"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x0p+012345i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x0.00p-012345i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0e-0+0e-0i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0e+0+0e+0i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0e+0-0e+0i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0.1"), ((0.1 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0.1i"), ((0 : GoFloat64) + new GoComplex128(0, 0.1)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0.123"), ((0.123 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0.123i"), ((0 : GoFloat64) + new GoComplex128(0, 0.123)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0.123+0.123i"), ((0.123 : GoFloat64) + new GoComplex128(0, 0.123)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("99"), ((99 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+99"), ((99 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-99"), ((-99 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+1i"), ((0 : GoFloat64) + new GoComplex128(0, 1)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-1i"), ((0 : GoFloat64) + new GoComplex128(0, -1)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+3+1i"), ((3 : GoFloat64) + new GoComplex128(0, 1)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("30+3i"), ((30 : GoFloat64) + new GoComplex128(0, 3)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+3e+3-3e+3i"), ((3000 : GoFloat64) + new GoComplex128(0, -3000)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+3e+3+3e+3i"), ((3000 : GoFloat64) + new GoComplex128(0, 3000)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+3e+3+3e+3i+"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0.1"), ((0.1 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0.1i"), ((0 : GoFloat64) + new GoComplex128(0, 0.1)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0.1_2_3"), ((0.123 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x_3p3i"), ((0 : GoFloat64) + new GoComplex128(0, 24)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0_0+0x_0p0i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x_10.3p-8+0x3p3i"), ((0.063232421875 : GoFloat64) + new GoComplex128(0, 24)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x_1_0.3p-8+0x_3_0p3i"), ((0.063232421875 : GoFloat64) + new GoComplex128(0, 384)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x1_0.3p+8-0x_3p3i"), ((4144 : GoFloat64) + new GoComplex128(0, -24)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x10.3p-8+0x3p3i"), ((0.063232421875 : GoFloat64) + new GoComplex128(0, 24)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x10.3p-8+0x3p3i"), ((0.063232421875 : GoFloat64) + new GoComplex128(0, 24)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x10.3p+8-0x3p3i"), ((4144 : GoFloat64) + new GoComplex128(0, -24)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x1p0"), ((1 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x1p1"), ((2 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x1p-1"), ((0.5 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x1ep-1"), ((15 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0x1ep-1"), ((-15 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0x2p3"), ((-16 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x1e2"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1p2"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x1e2i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x1p1024"), _infp0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0x1p1024"), _infm0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x1p1024i"), _inf0p, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0x1p1024i"), _inf0m, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x1p1024+0x1p1024i"), _infpp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x1p1024-0x1p1024i"), _infpm, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0x1p1024+0x1p1024i"), _infmp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0x1p1024-0x1p1024i"), _infmm, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x1.fffffffffffff7fffp1023+0x1.fffffffffffff7fffp1023i"),
			((1.7976931348623157e+308 : GoFloat64) + new GoComplex128(0, 1.7976931348623157e+308)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x1.fffffffffffff7fffp1023-0x1.fffffffffffff7fffp1023i"),
			((1.7976931348623157e+308 : GoFloat64) + new GoComplex128(0, -1.7976931348623157e+308)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0x1.fffffffffffff7fffp1023+0x1.fffffffffffff7fffp1023i"),
			((-1.7976931348623157e+308 : GoFloat64) + new GoComplex128(0, 1.7976931348623157e+308)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0x1.fffffffffffff7fffp1023-0x1.fffffffffffff7fffp1023i"),
			((-1.7976931348623157e+308 : GoFloat64) + new GoComplex128(0, -1.7976931348623157e+308)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x1.fffffffffffff8p1023"), _infp0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0x1fffffffffffff.8p+971"), _infm0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x1.fffffffffffff8p1023i"), _inf0p, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0x1fffffffffffff.8p+971i"), _inf0m, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x1.fffffffffffff8p1023+0x1.fffffffffffff8p1023i"), _infpp,
			errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+0x1.fffffffffffff8p1023-0x1.fffffffffffff8p1023i"), _infpm,
			errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0x1fffffffffffff.8p+971+0x1fffffffffffff.8p+971i"), _infmp,
			errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-0x1fffffffffffff8p+967-0x1fffffffffffff8p+967i"), _infmm,
			errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1e308+1e308i"), ((1e+308 : GoFloat64) + new GoComplex128(0, 1e+308)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("2e308+2e308i"), _infpp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1e309+1e309i"), _infpp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x1p1025+0x1p1025i"), _infpp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("2e308"), _infp0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1e309"), _infp0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x1p1025"), _infp0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("2e308i"), _inf0p, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1e309i"), _inf0p, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("0x1p1025i"), _inf0p, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+1e310+1e310i"), _infpp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("+1e310-1e310i"), _infpm, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-1e310+1e310i"), _infmp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("-1e310-1e310i"), _infmm, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1e-4294967296"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1e-4294967296i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1e-4294967296+1i"), ((0 : GoFloat64) + new GoComplex128(0, 1)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1+1e-4294967296i"), ((1 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1e-4294967296+1e-4294967296i"), ((0 : GoFloat64) + new GoComplex128(0, 0)),
			(null : Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1e+4294967296"), _infp0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1e+4294967296i"), _inf0p, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1e+4294967296+1e+4294967296i"), _infpp,
			errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
		(new stdgo.strconv_test.Strconv_test.T_atocTest(Go.str("1e+4294967296-1e+4294967296i"), _infpm,
			errRange) : stdgo.strconv_test.Strconv_test.T_atocTest)) : Slice<stdgo.strconv_test.Strconv_test.T_atocTest>);
	for (_i in 0..._tests.length.toBasic()) {
		var _test = (_tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_atocTest>);
		if (_test._err != null) {
			_test._err = Go.asInterface((({func: Go.str("ParseComplex"), num: _test._in, err: _test._err} : NumError) : Ref<NumError>));
		};
		var __tmp__ = parseComplex(_test._in, (128 : GoInt)),
			_got:GoComplex128 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_err), Go.toInterface(_test._err))) {
			_t.fatalf(Go.str("ParseComplex(%q, 128) = %v, %v; want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_got), Go.toInterface(_err),
				Go.toInterface(_test._out), Go.toInterface(_test._err));
		};
		if (!(stdgo.math.cmplx.Cmplx.isNaN(_test._out) && stdgo.math.cmplx.Cmplx.isNaN(_got)) && (_got != _test._out)) {
			_t.fatalf(Go.str("ParseComplex(%q, 128) = %v, %v; want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_got), Go.toInterface(_err),
				Go.toInterface(_test._out), Go.toInterface(_test._err));
		};
		if (((_test._out : GoComplex64) : GoComplex128) == (_test._out)) {
			var __tmp__ = parseComplex(_test._in, (64 : GoInt)),
				_got:GoComplex128 = __tmp__._0,
				_err:Error = __tmp__._1;
			if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_err), Go.toInterface(_test._err))) {
				_t.fatalf(Go.str("ParseComplex(%q, 64) = %v, %v; want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_got), Go.toInterface(_err),
					Go.toInterface(_test._out), Go.toInterface(_test._err));
			};
			var _got64:GoComplex64 = (_got : GoComplex64);
			if ((_got64 : GoComplex128) != (_test._out)) {
				_t.fatalf(Go.str("ParseComplex(%q, 64) = %v, %v; want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_got), Go.toInterface(_err),
					Go.toInterface(_test._out), Go.toInterface(_test._err));
			};
		};
	};
}

/**
	// Issue 42297: allow ParseComplex(s, not_32_or_64) for legacy reasons
**/
function testParseComplexIncorrectBitSize(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	{};
	for (_0 => _bitSize in (new Slice<GoInt>(0, 0, (0 : GoInt), (10 : GoInt), (100 : GoInt), (256 : GoInt)) : Slice<GoInt>)) {
		var __tmp__ = parseComplex(Go.str("1.5e308+1.0e307i"), _bitSize),
			_c:GoComplex128 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("ParseComplex(%q, %d) gave error %s"), Go.toInterface(Go.str("1.5e308+1.0e307i")), Go.toInterface(_bitSize),
				Go.toInterface(_err));
		};
		if (_c != (((1.5e+308 : GoFloat64) + new GoComplex128(0, 1e+307)))) {
			_t.fatalf(Go.str("ParseComplex(%q, %d) = %g (expected %g)"), Go.toInterface(Go.str("1.5e308+1.0e307i")), Go.toInterface(_bitSize),
				Go.toInterface(_c), Go.toInterface(((1.5e+308 : GoFloat64) + new GoComplex128(0, 1e+307))));
		};
	};
}

function _initAtof():Void {
	_atofOnce.do_(_initAtofOnce);
}

function _initAtofOnce():Void {
	for (_i in 0..._atoftests.length.toBasic()) {
		var _test = (_atoftests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_atofTest>);
		if (_test._err != null) {
			_test._err = Go.asInterface(((new NumError(Go.str("ParseFloat"), _test._in, _test._err) : NumError) : Ref<NumError>));
		};
	};
	for (_i in 0..._atof32tests.length.toBasic()) {
		var _test = (_atof32tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_atofTest>);
		if (_test._err != null) {
			_test._err = Go.asInterface(((new NumError(Go.str("ParseFloat"), _test._in, _test._err) : NumError) : Ref<NumError>));
		};
	};
	stdgo.math.rand.Rand.seed(stdgo.time.Time.now().unixNano());
	if (stdgo.testing.Testing.short()) {
		_atofRandomTests = new Slice<stdgo.strconv_test.Strconv_test.T_atofSimpleTest>((100 : GoInt).toBasic(), 0, ...[
			for (i in 0...(100 : GoInt).toBasic()) ({} : stdgo.strconv_test.Strconv_test.T_atofSimpleTest)
		]);
	} else {
		_atofRandomTests = new Slice<stdgo.strconv_test.Strconv_test.T_atofSimpleTest>((10000 : GoInt).toBasic(), 0, ...[
			for (i in 0...(10000 : GoInt).toBasic()) ({} : stdgo.strconv_test.Strconv_test.T_atofSimpleTest)
		]);
	};
	for (_i in 0..._atofRandomTests.length.toBasic()) {
		var _n:GoUInt64 = ((stdgo.math.rand.Rand.uint32() : GoUInt64) << (("32" : GoUInt64) : GoUInt64)) | (stdgo.math.rand.Rand.uint32() : GoUInt64);
		var _x:GoFloat64 = stdgo.math.Math.float64frombits(_n);
		var _s:GoString = formatFloat(_x, (103 : GoUInt8), (-1 : GoInt), (64 : GoInt));
		_atofRandomTests[_i] = (new stdgo.strconv_test.Strconv_test.T_atofSimpleTest(_x, _s) : stdgo.strconv_test.Strconv_test.T_atofSimpleTest);
	};
	for (_i in 0..._benchmarksRandomBits.length.toBasic()) {
		var _bits:GoUInt64 = ((stdgo.math.rand.Rand.uint32() : GoUInt64) << (("32" : GoUInt64) : GoUInt64)) | (stdgo.math.rand.Rand.uint32() : GoUInt64);
		var _x:GoFloat64 = stdgo.math.Math.float64frombits(_bits);
		_benchmarksRandomBits[_i] = formatFloat(_x, (103 : GoUInt8), (-1 : GoInt), (64 : GoInt));
	};
	for (_i in 0..._benchmarksRandomNormal.length.toBasic()) {
		var _x:GoFloat64 = stdgo.math.rand.Rand.normFloat64();
		_benchmarksRandomNormal[_i] = formatFloat(_x, (103 : GoUInt8), (-1 : GoInt), (64 : GoInt));
	};
}

function testParseFloatPrefix(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i in 0..._atoftests.length.toBasic()) {
		var _test = (_atoftests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_atofTest>);
		if (_test._err != null) {
			continue;
		};
		for (_0 => _suffix in (new Slice<GoString>(0, 0, Go.str(" "), Go.str("q"), Go.str("+"), Go.str("-"), Go.str("<"), Go.str("="), Go.str(">"),
			Go.str("("), Go.str(")"), Go.str("i"), Go.str("init")) : Slice<GoString>)) {
			var _in:GoString = _test._in + _suffix;
			var __tmp__ = parseFloatPrefix(_in, (64 : GoInt)),
				_1:GoFloat64 = __tmp__._0,
				_n:GoInt = __tmp__._1,
				_err:Error = __tmp__._2;
			if (_err != null) {
				_t.errorf(Go.str("ParseFloatPrefix(%q, 64): err = %v; want no error"), Go.toInterface(_in), Go.toInterface(_err));
			};
			if (_n != ((_test._in.length))) {
				_t.errorf(Go.str("ParseFloatPrefix(%q, 64): n = %d; want %d"), Go.toInterface(_in), Go.toInterface(_n), Go.toInterface((_test._in.length)));
			};
		};
	};
}

function _testAtof(_t:Ref<stdgo.testing.Testing.T>, _opt:Bool):Void {
	_initAtof();
	var _oldopt:Bool = setOptimize(_opt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_atoftests.length), _i++, {
			var _test = (_atoftests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_atofTest>);
			var __tmp__ = parseFloat(_test._in, (64 : GoInt)),
				_out:GoFloat64 = __tmp__._0,
				_err:Error = __tmp__._1;
			var _outs:GoString = formatFloat(_out, (103 : GoUInt8), (-1 : GoInt), (64 : GoInt));
			if ((_outs != _test._out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_err), Go.toInterface(_test._err))) {
				_t.errorf(Go.str("ParseFloat(%v, 64) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_out), Go.toInterface(_err),
					Go.toInterface(_test._out), Go.toInterface(_test._err));
			};
			if (((_out : GoFloat32) : GoFloat64) == (_out)) {
				var __tmp__ = parseFloat(_test._in, (32 : GoInt)),
					_out:GoFloat64 = __tmp__._0,
					_err:Error = __tmp__._1;
				var _out32:GoFloat32 = (_out : GoFloat32);
				if ((_out32 : GoFloat64) != (_out)) {
					_t.errorf(Go.str("ParseFloat(%v, 32) = %v, not a float32 (closest is %v)"), Go.toInterface(_test._in), Go.toInterface(_out),
						Go.toInterface((_out32 : GoFloat64)));
					continue;
				};
				var _outs:GoString = formatFloat((_out32 : GoFloat64), (103 : GoUInt8), (-1 : GoInt), (32 : GoInt));
				if ((_outs != _test._out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_err), Go.toInterface(_test._err))) {
					_t.errorf(Go.str("ParseFloat(%v, 32) = %v, %v want %v, %v  # %v"), Go.toInterface(_test._in), Go.toInterface(_out32),
						Go.toInterface(_err), Go.toInterface(_test._out), Go.toInterface(_test._err), Go.toInterface(_out));
				};
			};
		});
	};
	for (_0 => _test in _atof32tests) {
		var __tmp__ = parseFloat(_test._in, (32 : GoInt)),
			_out:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		var _out32:GoFloat32 = (_out : GoFloat32);
		if ((_out32 : GoFloat64) != (_out)) {
			_t.errorf(Go.str("ParseFloat(%v, 32) = %v, not a float32 (closest is %v)"), Go.toInterface(_test._in), Go.toInterface(_out),
				Go.toInterface((_out32 : GoFloat64)));
			continue;
		};
		var _outs:GoString = formatFloat((_out32 : GoFloat64), (103 : GoUInt8), (-1 : GoInt), (32 : GoInt));
		if ((_outs != _test._out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_err), Go.toInterface(_test._err))) {
			_t.errorf(Go.str("ParseFloat(%v, 32) = %v, %v want %v, %v  # %v"), Go.toInterface(_test._in), Go.toInterface(_out32), Go.toInterface(_err),
				Go.toInterface(_test._out), Go.toInterface(_test._err), Go.toInterface(_out));
		};
	};
	setOptimize(_oldopt);
}

function testAtof(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testAtof(_t, true);
}

function testAtofSlow(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testAtof(_t, false);
}

function testAtofRandom(_t:Ref<stdgo.testing.Testing.T>):Void {
	_initAtof();
	for (_0 => _test in _atofRandomTests) {
		var __tmp__ = parseFloat(_test._s, (64 : GoInt)),
			_x:GoFloat64 = __tmp__._0,
			_1:Error = __tmp__._1;
		if (_x == (_test._x)) {} else if (stdgo.math.Math.isNaN(_test._x) && stdgo.math.Math.isNaN(_x)) {};
	};
	_t.logf(Go.str("tested %d random numbers"), Go.toInterface((_atofRandomTests.length)));
}

function testRoundTrip(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _roundTripCases) {
		var _old:Bool = setOptimize(false);
		var _s:GoString = formatFloat(_tt._f, (103 : GoUInt8), (-1 : GoInt), (64 : GoInt));
		if (_s != (_tt._s)) {
			_t.errorf(Go.str("no-opt FormatFloat(%b) = %s, want %s"), Go.toInterface(_tt._f), Go.toInterface(_s), Go.toInterface(_tt._s));
		};
		var __tmp__ = parseFloat(_tt._s, (64 : GoInt)),
			_f:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_f != _tt._f) || (_err != null)) {
			_t.errorf(Go.str("no-opt ParseFloat(%s) = %b, %v want %b, nil"), Go.toInterface(_tt._s), Go.toInterface(_f), Go.toInterface(_err),
				Go.toInterface(_tt._f));
		};
		setOptimize(true);
		_s = formatFloat(_tt._f, (103 : GoUInt8), (-1 : GoInt), (64 : GoInt));
		if (_s != (_tt._s)) {
			_t.errorf(Go.str("opt FormatFloat(%b) = %s, want %s"), Go.toInterface(_tt._f), Go.toInterface(_s), Go.toInterface(_tt._s));
		};
		{
			var __tmp__ = parseFloat(_tt._s, (64 : GoInt));
			_f = __tmp__._0;
			_err = __tmp__._1;
		};
		if ((_f != _tt._f) || (_err != null)) {
			_t.errorf(Go.str("opt ParseFloat(%s) = %b, %v want %b, nil"), Go.toInterface(_tt._s), Go.toInterface(_f), Go.toInterface(_err),
				Go.toInterface(_tt._f));
		};
		setOptimize(_old);
	};
}

/**
	// TestRoundTrip32 tries a fraction of all finite positive float32 values.
**/
function testRoundTrip32(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _step:GoUInt32 = (("997" : GoUInt32) : GoUInt32);
	if (stdgo.testing.Testing.short()) {
		_step = ("99991" : GoUInt32);
	};
	var _count:GoInt = (0 : GoInt);
	{
		var _i:GoUInt32 = (("0" : GoUInt32) : GoUInt32);
		Go.cfor(_i < ("2139095040":GoUInt32), _i = _i + (_step), {
			var _f:GoFloat32 = stdgo.math.Math.float32frombits(_i);
			if (_i & ("1" : GoUInt32) == (("1" : GoUInt32))) {
				_f = -_f;
			};
			var _s:GoString = formatFloat((_f : GoFloat64), (103 : GoUInt8), (-1 : GoInt), (32 : GoInt));
			var __tmp__ = parseFloat(_s, (32 : GoInt)),
				_parsed:GoFloat64 = __tmp__._0,
				_err:Error = __tmp__._1;
			var _parsed32:GoFloat32 = (_parsed : GoFloat32);
			if (_err != null) {
				_t.errorf(Go.str("ParseFloat(%q, 32) gave error %s"), Go.toInterface(_s), Go.toInterface(_err));
			} else if ((_parsed32 : GoFloat64) != (_parsed)) {
				_t.errorf(Go.str("ParseFloat(%q, 32) = %v, not a float32 (nearest is %v)"), Go.toInterface(_s), Go.toInterface(_parsed),
					Go.toInterface(_parsed32));
			} else if (_parsed32 != (_f)) {
				_t.errorf(Go.str("ParseFloat(%q, 32) = %b (expected %b)"), Go.toInterface(_s), Go.toInterface(_parsed32), Go.toInterface(_f));
			};
			_count++;
		});
	};
	_t.logf(Go.str("tested %d float32\'s"), Go.toInterface(_count));
}

/**
	// Issue 42297: a lot of code in the wild accidentally calls ParseFloat(s, 10)
	// or ParseFloat(s, 0), so allow bitSize values other than 32 and 64.
**/
function testParseFloatIncorrectBitSize(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	{};
	for (_0 => _bitSize in (new Slice<GoInt>(0, 0, (0 : GoInt), (10 : GoInt), (100 : GoInt), (128 : GoInt)) : Slice<GoInt>)) {
		var __tmp__ = parseFloat(Go.str("1.5e308"), _bitSize),
			_f:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("ParseFloat(%q, %d) gave error %s"), Go.toInterface(Go.str("1.5e308")), Go.toInterface(_bitSize), Go.toInterface(_err));
		};
		if (_f != (1.5e+308 : GoFloat64)) {
			_t.fatalf(Go.str("ParseFloat(%q, %d) = %g (expected %g)"), Go.toInterface(Go.str("1.5e308")), Go.toInterface(_bitSize), Go.toInterface(_f),
				Go.toInterface((1.5e+308 : GoFloat64)));
		};
	};
}

function benchmarkAtof64Decimal(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseFloat(Go.str("33909"), (64 : GoInt));
		});
	};
}

function benchmarkAtof64Float(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseFloat(Go.str("339.7784"), (64 : GoInt));
		});
	};
}

function benchmarkAtof64FloatExp(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseFloat(Go.str("-5.09e75"), (64 : GoInt));
		});
	};
}

function benchmarkAtof64Big(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseFloat(Go.str("123456789123456789123456789"), (64 : GoInt));
		});
	};
}

function benchmarkAtof64RandomBits(_b:Ref<stdgo.testing.Testing.B>):Void {
	_initAtof();
	_b.resetTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseFloat(_benchmarksRandomBits[_i % (1024 : GoInt)], (64 : GoInt));
		});
	};
}

function benchmarkAtof64RandomFloats(_b:Ref<stdgo.testing.Testing.B>):Void {
	_initAtof();
	_b.resetTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseFloat(_benchmarksRandomNormal[_i % (1024 : GoInt)], (64 : GoInt));
		});
	};
}

function benchmarkAtof64RandomLongFloats(_b:Ref<stdgo.testing.Testing.B>):Void {
	_initAtof();
	var _samples = new Slice<GoString>((_atofRandomTests.length : GoInt).toBasic(), 0,
		...[for (i in 0...(_atofRandomTests.length : GoInt).toBasic()) ("" : GoString)]);
	for (_i => _t in _atofRandomTests) {
		_samples[_i] = formatFloat(_t._x, (103 : GoUInt8), (20 : GoInt), (64 : GoInt));
	};
	_b.resetTimer();
	var _idx:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseFloat(_samples[_idx], (64 : GoInt));
			_idx++;
			if (_idx == ((_samples.length))) {
				_idx = (0 : GoInt);
			};
		});
	};
}

function benchmarkAtof32Decimal(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseFloat(Go.str("33909"), (32 : GoInt));
		});
	};
}

function benchmarkAtof32Float(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseFloat(Go.str("339.778"), (32 : GoInt));
		});
	};
}

function benchmarkAtof32FloatExp(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseFloat(Go.str("12.3456e32"), (32 : GoInt));
		});
	};
}

function benchmarkAtof32Random(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _n:GoUInt32 = (("997" : GoUInt32) : GoUInt32);
	var _float32strings:GoArray<GoString> = new GoArray<GoString>(...[for (i in 0...4096) ("" : GoString)]);
	for (_i in 0..._float32strings.length.toBasic()) {
		_n = (((("99991" : GoUInt32) : GoUInt32) * _n) + (("42" : GoUInt32) : GoUInt32)) % ("2139095040" : GoUInt32);
		_float32strings[_i] = formatFloat((stdgo.math.Math.float32frombits(_n) : GoFloat64), (103 : GoUInt8), (-1 : GoInt), (32 : GoInt));
	};
	_b.resetTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseFloat(_float32strings[_i % (4096 : GoInt)], (32 : GoInt));
		});
	};
}

function benchmarkAtof32RandomLong(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _n:GoUInt32 = (("997" : GoUInt32) : GoUInt32);
	var _float32strings:GoArray<GoString> = new GoArray<GoString>(...[for (i in 0...4096) ("" : GoString)]);
	for (_i in 0..._float32strings.length.toBasic()) {
		_n = (((("99991" : GoUInt32) : GoUInt32) * _n) + (("42" : GoUInt32) : GoUInt32)) % ("2139095040" : GoUInt32);
		_float32strings[_i] = formatFloat((stdgo.math.Math.float32frombits(_n) : GoFloat64), (103 : GoUInt8), (20 : GoInt), (32 : GoInt));
	};
	_b.resetTimer();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseFloat(_float32strings[_i % (4096 : GoInt)], (32 : GoInt));
		});
	};
}

function testParseUint32(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i in 0..._parseUint32Tests.length.toBasic()) {
		var _test = (_parseUint32Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseUint32Test>);
		var __tmp__ = parseUint(_test._in, (10 : GoInt), (32 : GoInt)),
			_out:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (((_test._out : GoUInt64) != _out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_test._err), Go.toInterface(_err))) {
			_t.errorf(Go.str("ParseUint(%q, 10, 32) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_out), Go.toInterface(_err),
				Go.toInterface(_test._out), Go.toInterface(_test._err));
		};
	};
}

function testParseUint64(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i in 0..._parseUint64Tests.length.toBasic()) {
		var _test = (_parseUint64Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseUint64Test>);
		var __tmp__ = parseUint(_test._in, (10 : GoInt), (64 : GoInt)),
			_out:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_test._out != _out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_test._err), Go.toInterface(_err))) {
			_t.errorf(Go.str("ParseUint(%q, 10, 64) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_out), Go.toInterface(_err),
				Go.toInterface(_test._out), Go.toInterface(_test._err));
		};
	};
}

function testParseUint64Base(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i in 0..._parseUint64BaseTests.length.toBasic()) {
		var _test = (_parseUint64BaseTests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest>);
		var __tmp__ = parseUint(_test._in, _test._base, (64 : GoInt)),
			_out:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_test._out != _out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_test._err), Go.toInterface(_err))) {
			_t.errorf(Go.str("ParseUint(%q, %v, 64) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_test._base), Go.toInterface(_out),
				Go.toInterface(_err), Go.toInterface(_test._out), Go.toInterface(_test._err));
		};
	};
}

function testParseInt32(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i in 0..._parseInt32Tests.length.toBasic()) {
		var _test = (_parseInt32Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseInt32Test>);
		var __tmp__ = parseInt(_test._in, (10 : GoInt), (32 : GoInt)),
			_out:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (((_test._out : GoInt64) != _out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_test._err), Go.toInterface(_err))) {
			_t.errorf(Go.str("ParseInt(%q, 10 ,32) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_out), Go.toInterface(_err),
				Go.toInterface(_test._out), Go.toInterface(_test._err));
		};
	};
}

function testParseInt64(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i in 0..._parseInt64Tests.length.toBasic()) {
		var _test = (_parseInt64Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseInt64Test>);
		var __tmp__ = parseInt(_test._in, (10 : GoInt), (64 : GoInt)),
			_out:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_test._out != _out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_test._err), Go.toInterface(_err))) {
			_t.errorf(Go.str("ParseInt(%q, 10, 64) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_out), Go.toInterface(_err),
				Go.toInterface(_test._out), Go.toInterface(_test._err));
		};
	};
}

function testParseInt64Base(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i in 0..._parseInt64BaseTests.length.toBasic()) {
		var _test = (_parseInt64BaseTests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest>);
		var __tmp__ = parseInt(_test._in, _test._base, (64 : GoInt)),
			_out:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_test._out != _out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_test._err), Go.toInterface(_err))) {
			_t.errorf(Go.str("ParseInt(%q, %v, 64) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_test._base), Go.toInterface(_out),
				Go.toInterface(_err), Go.toInterface(_test._out), Go.toInterface(_test._err));
		};
	};
}

function testParseUint(_t:Ref<stdgo.testing.Testing.T>):Void {
	if ((32 : GoInt) == ((32 : GoInt))) {
		for (_i in 0..._parseUint32Tests.length.toBasic()) {
			var _test = (_parseUint32Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseUint32Test>);
			var __tmp__ = parseUint(_test._in, (10 : GoInt), (0 : GoInt)),
				_out:GoUInt64 = __tmp__._0,
				_err:Error = __tmp__._1;
			if (((_test._out : GoUInt64) != _out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_test._err), Go.toInterface(_err))) {
				_t.errorf(Go.str("ParseUint(%q, 10, 0) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_out), Go.toInterface(_err),
					Go.toInterface(_test._out), Go.toInterface(_test._err));
			};
		};
	} else if ((32 : GoInt) == ((64 : GoInt))) {
		for (_i in 0..._parseUint64Tests.length.toBasic()) {
			var _test = (_parseUint64Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseUint64Test>);
			var __tmp__ = parseUint(_test._in, (10 : GoInt), (0 : GoInt)),
				_out:GoUInt64 = __tmp__._0,
				_err:Error = __tmp__._1;
			if ((_test._out != _out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_test._err), Go.toInterface(_err))) {
				_t.errorf(Go.str("ParseUint(%q, 10, 0) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_out), Go.toInterface(_err),
					Go.toInterface(_test._out), Go.toInterface(_test._err));
			};
		};
	};
}

function testParseInt(_t:Ref<stdgo.testing.Testing.T>):Void {
	if ((32 : GoInt) == ((32 : GoInt))) {
		for (_i in 0..._parseInt32Tests.length.toBasic()) {
			var _test = (_parseInt32Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseInt32Test>);
			var __tmp__ = parseInt(_test._in, (10 : GoInt), (0 : GoInt)),
				_out:GoInt64 = __tmp__._0,
				_err:Error = __tmp__._1;
			if (((_test._out : GoInt64) != _out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_test._err), Go.toInterface(_err))) {
				_t.errorf(Go.str("ParseInt(%q, 10, 0) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_out), Go.toInterface(_err),
					Go.toInterface(_test._out), Go.toInterface(_test._err));
			};
		};
	} else if ((32 : GoInt) == ((64 : GoInt))) {
		for (_i in 0..._parseInt64Tests.length.toBasic()) {
			var _test = (_parseInt64Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseInt64Test>);
			var __tmp__ = parseInt(_test._in, (10 : GoInt), (0 : GoInt)),
				_out:GoInt64 = __tmp__._0,
				_err:Error = __tmp__._1;
			if ((_test._out != _out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_test._err), Go.toInterface(_err))) {
				_t.errorf(Go.str("ParseInt(%q, 10, 0) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_out), Go.toInterface(_err),
					Go.toInterface(_test._out), Go.toInterface(_test._err));
			};
		};
	};
}

function testAtoi(_t:Ref<stdgo.testing.Testing.T>):Void {
	if ((32 : GoInt) == ((32 : GoInt))) {
		for (_i in 0..._parseInt32Tests.length.toBasic()) {
			var _test = (_parseInt32Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseInt32Test>);
			var __tmp__ = atoi(_test._in),
				_out:GoInt = __tmp__._0,
				_err:Error = __tmp__._1;
			var _testErr:Error = (null : Error);
			if (_test._err != null) {
				_testErr = Go.asInterface(((new NumError(Go.str("Atoi"), _test._in,
					(Go.typeAssert((Go.toInterface(_test._err) : Ref<NumError>)) : Ref<NumError>).err) : NumError) : Ref<NumError>));
			};
			if (((_test._out : GoInt) != _out) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_testErr), Go.toInterface(_err))) {
				_t.errorf(Go.str("Atoi(%q) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_out), Go.toInterface(_err),
					Go.toInterface(_test._out), Go.toInterface(_testErr));
			};
		};
	} else if ((32 : GoInt) == ((64 : GoInt))) {
		for (_i in 0..._parseInt64Tests.length.toBasic()) {
			var _test = (_parseInt64Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseInt64Test>);
			var __tmp__ = atoi(_test._in),
				_out:GoInt = __tmp__._0,
				_err:Error = __tmp__._1;
			var _testErr:Error = (null : Error);
			if (_test._err != null) {
				_testErr = Go.asInterface(((new NumError(Go.str("Atoi"), _test._in,
					(Go.typeAssert((Go.toInterface(_test._err) : Ref<NumError>)) : Ref<NumError>).err) : NumError) : Ref<NumError>));
			};
			if ((_test._out != (_out : GoInt64)) || !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_testErr), Go.toInterface(_err))) {
				_t.errorf(Go.str("Atoi(%q) = %v, %v want %v, %v"), Go.toInterface(_test._in), Go.toInterface(_out), Go.toInterface(_err),
					Go.toInterface(_test._out), Go.toInterface(_testErr));
			};
		};
	};
}

function _bitSizeErrStub(_name:GoString, _bitSize:GoInt):Error {
	return Go.asInterface(bitSizeError(_name, Go.str("0"), _bitSize));
}

function _baseErrStub(_name:GoString, _base:GoInt):Error {
	return Go.asInterface(baseError(_name, Go.str("0"), _base));
}

function _noErrStub(_name:GoString, _arg:GoInt):Error {
	return (null : Error);
}

function _equalError(_a:Error, _b:Error):Bool {
	if (_a == null) {
		return _b == null;
	};
	if (_b == null) {
		return _a == null;
	};
	return _a.error() == (_b.error());
}

function testParseIntBitSize(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i in 0..._parseBitSizeTests.length.toBasic()) {
		var _test = (_parseBitSizeTests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseErrorTest>);
		var _testErr:Error = _test._errStub(Go.str("ParseInt"), _test._arg);
		var __tmp__ = parseInt(Go.str("0"), (0 : GoInt), _test._arg),
			_0:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (!_equalError(_testErr, _err)) {
			_t.errorf(Go.str("ParseInt(\"0\", 0, %v) = 0, %v want 0, %v"), Go.toInterface(_test._arg), Go.toInterface(_err), Go.toInterface(_testErr));
		};
	};
}

function testParseUintBitSize(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i in 0..._parseBitSizeTests.length.toBasic()) {
		var _test = (_parseBitSizeTests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseErrorTest>);
		var _testErr:Error = _test._errStub(Go.str("ParseUint"), _test._arg);
		var __tmp__ = parseUint(Go.str("0"), (0 : GoInt), _test._arg),
			_0:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (!_equalError(_testErr, _err)) {
			_t.errorf(Go.str("ParseUint(\"0\", 0, %v) = 0, %v want 0, %v"), Go.toInterface(_test._arg), Go.toInterface(_err), Go.toInterface(_testErr));
		};
	};
}

function testParseIntBase(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i in 0..._parseBaseTests.length.toBasic()) {
		var _test = (_parseBaseTests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseErrorTest>);
		var _testErr:Error = _test._errStub(Go.str("ParseInt"), _test._arg);
		var __tmp__ = parseInt(Go.str("0"), _test._arg, (0 : GoInt)),
			_0:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (!_equalError(_testErr, _err)) {
			_t.errorf(Go.str("ParseInt(\"0\", %v, 0) = 0, %v want 0, %v"), Go.toInterface(_test._arg), Go.toInterface(_err), Go.toInterface(_testErr));
		};
	};
}

function testParseUintBase(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i in 0..._parseBaseTests.length.toBasic()) {
		var _test = (_parseBaseTests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseErrorTest>);
		var _testErr:Error = _test._errStub(Go.str("ParseUint"), _test._arg);
		var __tmp__ = parseUint(Go.str("0"), _test._arg, (0 : GoInt)),
			_0:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (!_equalError(_testErr, _err)) {
			_t.errorf(Go.str("ParseUint(\"0\", %v, 0) = 0, %v want 0, %v"), Go.toInterface(_test._arg), Go.toInterface(_err), Go.toInterface(_testErr));
		};
	};
}

function testNumError(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _numErrorTests) {
		var _err = (({func: Go.str("ParseFloat"), num: _test._num, err: stdgo.errors.Errors.new_(Go.str("failed"))} : NumError) : Ref<NumError>);
		{
			var _got:GoString = _err.error();
			if (_got != (_test._want)) {
				_t.errorf(Go.str("(&NumError{\"ParseFloat\", %q, \"failed\"}).Error() = %v, want %v"), Go.toInterface(_test._num), Go.toInterface(_got),
					Go.toInterface(_test._want));
			};
		};
	};
}

function testNumErrorUnwrap(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _err = (({err: errSyntax} : NumError) : Ref<NumError>);
	if (!stdgo.errors.Errors.is_(Go.asInterface(_err), errSyntax)) {
		_t.error(Go.toInterface(Go.str("errors.Is failed, wanted success")));
	};
}

function benchmarkParseInt(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.run(Go.str("Pos"), function(_b:Ref<stdgo.testing.Testing.B>):Void {
		_benchmarkParseInt(_b, (1 : GoInt));
	});
	_b.run(Go.str("Neg"), function(_b:Ref<stdgo.testing.Testing.B>):Void {
		_benchmarkParseInt(_b, (-1 : GoInt));
	});
}

function _benchmarkParseInt(_b:Ref<stdgo.testing.Testing.B>, _neg:GoInt):Void {
	var _cases = (new Slice<stdgo.strconv_test.Strconv_test.T_benchCase>(0, 0,
		(new stdgo.strconv_test.Strconv_test.T_benchCase(Go.str("7bit"), ("127" : GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase),
		(new stdgo.strconv_test.Strconv_test.T_benchCase(Go.str("26bit"), ("67108863" : GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase),
		(new stdgo.strconv_test.Strconv_test.T_benchCase(Go.str("31bit"), ("2147483647" : GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase),
		(new stdgo.strconv_test.Strconv_test.T_benchCase(Go.str("56bit"), ("72057594037927935" : GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase),
		(new stdgo.strconv_test.Strconv_test.T_benchCase(Go.str("63bit"),
			("9223372036854775807" : GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase)) : Slice<stdgo.strconv_test.Strconv_test.T_benchCase>);
	for (_0 => _cs in _cases) {
		_b.run(_cs._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
			var _s:GoString = stdgo.fmt.Fmt.sprintf(Go.str("%d"), Go.toInterface(_cs._num * (_neg : GoInt64)));
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _b.n, _i++, {
					var __tmp__ = parseInt(_s, (10 : GoInt), (64 : GoInt)),
						_out:GoInt64 = __tmp__._0,
						_0:Error = __tmp__._1;
					benchSink = benchSink + ((_out : GoInt));
				});
			};
		});
	};
}

function benchmarkAtoi(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.run(Go.str("Pos"), function(_b:Ref<stdgo.testing.Testing.B>):Void {
		_benchmarkAtoi(_b, (1 : GoInt));
	});
	_b.run(Go.str("Neg"), function(_b:Ref<stdgo.testing.Testing.B>):Void {
		_benchmarkAtoi(_b, (-1 : GoInt));
	});
}

function _benchmarkAtoi(_b:Ref<stdgo.testing.Testing.B>, _neg:GoInt):Void {
	var _cases = (new Slice<stdgo.strconv_test.Strconv_test.T_benchCase>(0, 0,
		(new stdgo.strconv_test.Strconv_test.T_benchCase(Go.str("7bit"), ("127" : GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase),
		(new stdgo.strconv_test.Strconv_test.T_benchCase(Go.str("26bit"), ("67108863" : GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase),
		(new stdgo.strconv_test.Strconv_test.T_benchCase(Go.str("31bit"),
			("2147483647" : GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase)) : Slice<stdgo.strconv_test.Strconv_test.T_benchCase>);
	if (false) {
		_cases = _cases.__appendref__(...(new Slice<stdgo.strconv_test.Strconv_test.T_benchCase>(0, 0,
			(new stdgo.strconv_test.Strconv_test.T_benchCase(Go.str("56bit"), ("72057594037927935" : GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase),
			(new stdgo.strconv_test.Strconv_test.T_benchCase(Go.str("63bit"),
				("9223372036854775807" : GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase)) : Slice<stdgo.strconv_test.Strconv_test.T_benchCase>)
			.__toArray__());
	};
	for (_0 => _cs in _cases) {
		_b.run(_cs._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
			var _s:GoString = stdgo.fmt.Fmt.sprintf(Go.str("%d"), Go.toInterface(_cs._num * (_neg : GoInt64)));
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _b.n, _i++, {
					var __tmp__ = atoi(_s),
						_out:GoInt = __tmp__._0,
						_0:Error = __tmp__._1;
					benchSink = benchSink + (_out);
				});
			};
		});
	};
}

function testFormatComplex(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tests = (new Slice<T__struct_1>(0, 0, ({
		_c: ((1 : GoFloat64) + new GoComplex128(0, 2)),
		_fmt: (103 : GoUInt8),
		_prec: (-1 : GoInt),
		_bitSize: (128 : GoInt),
		_out: Go.str("(1+2i)")
	} : T__struct_1), ({
		_c: ((3 : GoFloat64) + new GoComplex128(0, -4)),
		_fmt: (103 : GoUInt8),
		_prec: (-1 : GoInt),
		_bitSize: (128 : GoInt),
		_out: Go.str("(3-4i)")
		} : T__struct_1), ({
		_c: ((-5 : GoFloat64) + new GoComplex128(0, 6)),
		_fmt: (103 : GoUInt8),
		_prec: (-1 : GoInt),
		_bitSize: (128 : GoInt),
		_out: Go.str("(-5+6i)")
		} : T__struct_1), ({
		_c: ((-7 : GoFloat64) + new GoComplex128(0, -8)),
		_fmt: (103 : GoUInt8),
		_prec: (-1 : GoInt),
		_bitSize: (128 : GoInt),
		_out: Go.str("(-7-8i)")
		} : T__struct_1), ({
		_c: ((3.14159 : GoFloat64) + new GoComplex128(0, 0.00123)),
		_fmt: (101 : GoUInt8),
		_prec: (3 : GoInt),
		_bitSize: (128 : GoInt),
		_out: Go.str("(3.142e+00+1.230e-03i)")
		} : T__struct_1), ({
		_c: ((3.14159 : GoFloat64) + new GoComplex128(0, 0.00123)),
		_fmt: (102 : GoUInt8),
		_prec: (3 : GoInt),
		_bitSize: (128 : GoInt),
		_out: Go.str("(3.142+0.001i)")
		} : T__struct_1), ({
		_c: ((3.14159 : GoFloat64) + new GoComplex128(0, 0.00123)),
		_fmt: (103 : GoUInt8),
		_prec: (3 : GoInt),
		_bitSize: (128 : GoInt),
		_out: Go.str("(3.14+0.00123i)")
		} : T__struct_1), ({
		_c: ((1.2345678901234567 : GoFloat64) + new GoComplex128(0, 9.876543210987654)),
		_fmt: (102 : GoUInt8),
		_prec: (-1 : GoInt),
		_bitSize: (128 : GoInt),
		_out: Go.str("(1.2345678901234567+9.876543210987654i)")
		} : T__struct_1), ({
		_c: ((1.2345678901234567 : GoFloat64) + new GoComplex128(0, 9.876543210987654)),
		_fmt: (102 : GoUInt8),
		_prec: (-1 : GoInt),
		_bitSize: (64 : GoInt),
		_out: Go.str("(1.2345679+9.876543i)")
		} : T__struct_1)) : Slice<T__struct_1>);
	for (_0 => _test in _tests) {
		var _out:GoString = formatComplex(_test._c, _test._fmt, _test._prec, _test._bitSize);
		if (_out != (_test._out)) {
			_t.fatalf(Go.str("FormatComplex(%v, %q, %d, %d) = %q; want %q"), Go.toInterface(_test._c), Go.toInterface(_test._fmt),
				Go.toInterface(_test._prec), Go.toInterface(_test._bitSize), Go.toInterface(_out), Go.toInterface(_test._out));
		};
	};
}

function testFormatComplexInvalidBitSize(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			{
				var _r:AnyInterface = ({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				});
				if (_r == null) {
					_t.fatalf(Go.str("expected panic due to invalid bitSize"));
				};
			};
		};
		a();
	});
	try {
		formatComplex(((1 : GoFloat64) + new GoComplex128(0, 2)), (103 : GoUInt8), (-1 : GoInt), (100 : GoInt));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testDecimalShift(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_shifttests.length), _i++, {
			var _test = (_shifttests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_shiftTest>);
			var _d = newDecimal(_test._i);
			_d.shift(_test._shift);
			var _s:GoString = (_d.string() : GoString);
			if (_s != (_test._out)) {
				_t.errorf(Go.str("Decimal %v << %v = %v, want %v"), Go.toInterface(_test._i), Go.toInterface(_test._shift), Go.toInterface(_s),
					Go.toInterface(_test._out));
			};
		});
	};
}

function testDecimalRound(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_roundtests.length), _i++, {
			var _test = (_roundtests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_roundTest>);
			var _d = newDecimal(_test._i);
			_d.roundDown(_test._nd);
			var _s:GoString = (_d.string() : GoString);
			if (_s != (_test._down)) {
				_t.errorf(Go.str("Decimal %v RoundDown %d = %v, want %v"), Go.toInterface(_test._i), Go.toInterface(_test._nd), Go.toInterface(_s),
					Go.toInterface(_test._down));
			};
			_d = newDecimal(_test._i);
			_d.round(_test._nd);
			_s = (_d.string() : GoString);
			if (_s != (_test._round)) {
				_t.errorf(Go.str("Decimal %v Round %d = %v, want %v"), Go.toInterface(_test._i), Go.toInterface(_test._nd), Go.toInterface(_s),
					Go.toInterface(_test._down));
			};
			_d = newDecimal(_test._i);
			_d.roundUp(_test._nd);
			_s = (_d.string() : GoString);
			if (_s != (_test._up)) {
				_t.errorf(Go.str("Decimal %v RoundUp %d = %v, want %v"), Go.toInterface(_test._i), Go.toInterface(_test._nd), Go.toInterface(_s),
					Go.toInterface(_test._up));
			};
		});
	};
}

function testDecimalRoundedInteger(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_roundinttests.length), _i++, {
			var _test:stdgo.strconv_test.Strconv_test.T_roundIntTest = (_roundinttests[_i] == null ? null : _roundinttests[_i].__copy__());
			var _d = newDecimal(_test._i);
			_d.shift(_test._shift);
			var _int:GoUInt64 = _d.roundedInteger();
			if (_int != (_test._int)) {
				_t.errorf(Go.str("Decimal %v >> %v RoundedInteger = %v, want %v"), Go.toInterface(_test._i), Go.toInterface(_test._shift),
					Go.toInterface(_int), Go.toInterface(_test._int));
			};
		});
	};
}

function exampleAppendBool():Void {
	var _b = (Go.str("bool:") : Slice<GoByte>);
	_b = stdgo.strconv.Strconv.appendBool(_b, true);
	stdgo.fmt.Fmt.println((_b : GoString));
}

function exampleAppendFloat():Void {
	var _b32 = (Go.str("float32:") : Slice<GoByte>);
	_b32 = stdgo.strconv.Strconv.appendFloat(_b32, (3.1415926535 : GoFloat64), (69 : GoUInt8), (-1 : GoInt), (32 : GoInt));
	stdgo.fmt.Fmt.println((_b32 : GoString));
	var _b64 = (Go.str("float64:") : Slice<GoByte>);
	_b64 = stdgo.strconv.Strconv.appendFloat(_b64, (3.1415926535 : GoFloat64), (69 : GoUInt8), (-1 : GoInt), (64 : GoInt));
	stdgo.fmt.Fmt.println((_b64 : GoString));
}

function exampleAppendInt():Void {
	var _b10 = (Go.str("int (base 10):") : Slice<GoByte>);
	_b10 = stdgo.strconv.Strconv.appendInt(_b10, ("-42" : GoInt64), (10 : GoInt));
	stdgo.fmt.Fmt.println((_b10 : GoString));
	var _b16 = (Go.str("int (base 16):") : Slice<GoByte>);
	_b16 = stdgo.strconv.Strconv.appendInt(_b16, ("-42" : GoInt64), (16 : GoInt));
	stdgo.fmt.Fmt.println((_b16 : GoString));
}

function exampleAppendQuote():Void {
	var _b = (Go.str("quote:") : Slice<GoByte>);
	_b = stdgo.strconv.Strconv.appendQuote(_b, Go.str("\"Fran & Freddie\'s Diner\""));
	stdgo.fmt.Fmt.println((_b : GoString));
}

function exampleAppendQuoteRune():Void {
	var _b = (Go.str("rune:") : Slice<GoByte>);
	_b = stdgo.strconv.Strconv.appendQuoteRune(_b, (9786 : GoInt32));
	stdgo.fmt.Fmt.println((_b : GoString));
}

function exampleAppendQuoteRuneToASCII():Void {
	var _b = (Go.str("rune (ascii):") : Slice<GoByte>);
	_b = stdgo.strconv.Strconv.appendQuoteRuneToASCII(_b, (9786 : GoInt32));
	stdgo.fmt.Fmt.println((_b : GoString));
}

function exampleAppendQuoteToASCII():Void {
	var _b = (Go.str("quote (ascii):") : Slice<GoByte>);
	_b = stdgo.strconv.Strconv.appendQuoteToASCII(_b, Go.str("\"Fran & Freddie\'s Diner\""));
	stdgo.fmt.Fmt.println((_b : GoString));
}

function exampleAppendUint():Void {
	var _b10 = (Go.str("uint (base 10):") : Slice<GoByte>);
	_b10 = stdgo.strconv.Strconv.appendUint(_b10, ("42" : GoUInt64), (10 : GoInt));
	stdgo.fmt.Fmt.println((_b10 : GoString));
	var _b16 = (Go.str("uint (base 16):") : Slice<GoByte>);
	_b16 = stdgo.strconv.Strconv.appendUint(_b16, ("42" : GoUInt64), (16 : GoInt));
	stdgo.fmt.Fmt.println((_b16 : GoString));
}

function exampleAtoi():Void {
	var _v:GoString = Go.str("10");
	{
		var __tmp__ = stdgo.strconv.Strconv.atoi(_v),
			_s:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
}

function exampleCanBackquote():Void {
	stdgo.fmt.Fmt.println(stdgo.strconv.Strconv.canBackquote(Go.str("Fran & Freddie\'s Diner ☺")));
	stdgo.fmt.Fmt.println(stdgo.strconv.Strconv.canBackquote(Go.str("`can\'t backquote this`")));
}

function exampleFormatBool():Void {
	var _v:Bool = true;
	var _s:GoString = stdgo.strconv.Strconv.formatBool(_v);
	stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
}

function exampleFormatFloat():Void {
	var _v:GoFloat64 = (3.1415926535 : GoFloat64);
	var _s32:GoString = stdgo.strconv.Strconv.formatFloat(_v, (69 : GoUInt8), (-1 : GoInt), (32 : GoInt));
	stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s32), Go.toInterface(_s32));
	var _s64:GoString = stdgo.strconv.Strconv.formatFloat(_v, (69 : GoUInt8), (-1 : GoInt), (64 : GoInt));
	stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s64), Go.toInterface(_s64));
}

function exampleFormatInt():Void {
	var _v:GoInt64 = (("-42" : GoInt64) : GoInt64);
	var _s10:GoString = stdgo.strconv.Strconv.formatInt(_v, (10 : GoInt));
	stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s10), Go.toInterface(_s10));
	var _s16:GoString = stdgo.strconv.Strconv.formatInt(_v, (16 : GoInt));
	stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s16), Go.toInterface(_s16));
}

function exampleFormatUint():Void {
	var _v:GoUInt64 = (("42" : GoUInt64) : GoUInt64);
	var _s10:GoString = stdgo.strconv.Strconv.formatUint(_v, (10 : GoInt));
	stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s10), Go.toInterface(_s10));
	var _s16:GoString = stdgo.strconv.Strconv.formatUint(_v, (16 : GoInt));
	stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s16), Go.toInterface(_s16));
}

function exampleIsGraphic():Void {
	var _shamrock:Bool = stdgo.strconv.Strconv.isGraphic((9752 : GoInt32));
	stdgo.fmt.Fmt.println(_shamrock);
	var _a:Bool = stdgo.strconv.Strconv.isGraphic((97 : GoInt32));
	stdgo.fmt.Fmt.println(_a);
	var _bel:Bool = stdgo.strconv.Strconv.isGraphic((7 : GoInt32));
	stdgo.fmt.Fmt.println(_bel);
}

function exampleIsPrint():Void {
	var _c:Bool = stdgo.strconv.Strconv.isPrint((9786 : GoInt32));
	stdgo.fmt.Fmt.println(_c);
	var _bel:Bool = stdgo.strconv.Strconv.isPrint((7 : GoInt32));
	stdgo.fmt.Fmt.println(_bel);
}

function exampleItoa():Void {
	var _i:GoInt = (10 : GoInt);
	var _s:GoString = stdgo.strconv.Strconv.itoa(_i);
	stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
}

function exampleParseBool():Void {
	var _v:GoString = Go.str("true");
	{
		var __tmp__ = stdgo.strconv.Strconv.parseBool(_v),
			_s:Bool = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
}

function exampleParseFloat():Void {
	var _v:GoString = Go.str("3.1415926535");
	{
		var __tmp__ = stdgo.strconv.Strconv.parseFloat(_v, (32 : GoInt)),
			_s:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
	{
		var __tmp__ = stdgo.strconv.Strconv.parseFloat(_v, (64 : GoInt)),
			_s:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
	{
		var __tmp__ = stdgo.strconv.Strconv.parseFloat(Go.str("NaN"), (32 : GoInt)),
			_s:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
	{
		var __tmp__ = stdgo.strconv.Strconv.parseFloat(Go.str("nan"), (32 : GoInt)),
			_s:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
	{
		var __tmp__ = stdgo.strconv.Strconv.parseFloat(Go.str("inf"), (32 : GoInt)),
			_s:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
	{
		var __tmp__ = stdgo.strconv.Strconv.parseFloat(Go.str("+Inf"), (32 : GoInt)),
			_s:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
	{
		var __tmp__ = stdgo.strconv.Strconv.parseFloat(Go.str("-Inf"), (32 : GoInt)),
			_s:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
	{
		var __tmp__ = stdgo.strconv.Strconv.parseFloat(Go.str("-0"), (32 : GoInt)),
			_s:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
	{
		var __tmp__ = stdgo.strconv.Strconv.parseFloat(Go.str("+0"), (32 : GoInt)),
			_s:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
}

function exampleParseInt():Void {
	var _v32:GoString = Go.str("-354634382");
	{
		var __tmp__ = stdgo.strconv.Strconv.parseInt(_v32, (10 : GoInt), (32 : GoInt)),
			_s:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
	{
		var __tmp__ = stdgo.strconv.Strconv.parseInt(_v32, (16 : GoInt), (32 : GoInt)),
			_s:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
	var _v64:GoString = Go.str("-3546343826724305832");
	{
		var __tmp__ = stdgo.strconv.Strconv.parseInt(_v64, (10 : GoInt), (64 : GoInt)),
			_s:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
	{
		var __tmp__ = stdgo.strconv.Strconv.parseInt(_v64, (16 : GoInt), (64 : GoInt)),
			_s:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
}

function exampleParseUint():Void {
	var _v:GoString = Go.str("42");
	{
		var __tmp__ = stdgo.strconv.Strconv.parseUint(_v, (10 : GoInt), (32 : GoInt)),
			_s:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
	{
		var __tmp__ = stdgo.strconv.Strconv.parseUint(_v, (10 : GoInt), (64 : GoInt)),
			_s:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err == null) {
			stdgo.fmt.Fmt.printf(Go.str("%T, %v\n"), Go.toInterface(_s), Go.toInterface(_s));
		};
	};
}

function exampleQuote():Void {
	var _s:GoString = stdgo.strconv.Strconv.quote(Go.str("\"Fran & Freddie\'s Diner\t☺\""));
	stdgo.fmt.Fmt.println(_s);
}

function exampleQuoteRune():Void {
	var _s:GoString = stdgo.strconv.Strconv.quoteRune((9786 : GoInt32));
	stdgo.fmt.Fmt.println(_s);
}

function exampleQuoteRuneToASCII():Void {
	var _s:GoString = stdgo.strconv.Strconv.quoteRuneToASCII((9786 : GoInt32));
	stdgo.fmt.Fmt.println(_s);
}

function exampleQuoteRuneToGraphic():Void {
	var _s:GoString = stdgo.strconv.Strconv.quoteRuneToGraphic((9786 : GoInt32));
	stdgo.fmt.Fmt.println(_s);
	_s = stdgo.strconv.Strconv.quoteRuneToGraphic((9786 : GoInt32));
	stdgo.fmt.Fmt.println(_s);
	_s = stdgo.strconv.Strconv.quoteRuneToGraphic((10 : GoInt32));
	stdgo.fmt.Fmt.println(_s);
	_s = stdgo.strconv.Strconv.quoteRuneToGraphic((9 : GoInt32));
	stdgo.fmt.Fmt.println(_s);
}

function exampleQuoteToASCII():Void {
	var _s:GoString = stdgo.strconv.Strconv.quoteToASCII(Go.str("\"Fran & Freddie\'s Diner\t☺\""));
	stdgo.fmt.Fmt.println(_s);
}

function exampleQuoteToGraphic():Void {
	var _s:GoString = stdgo.strconv.Strconv.quoteToGraphic(Go.str("☺"));
	stdgo.fmt.Fmt.println(_s);
	_s = stdgo.strconv.Strconv.quoteToGraphic(Go.str("This is a ☺\t\n"));
	stdgo.fmt.Fmt.println(_s);
	_s = stdgo.strconv.Strconv.quoteToGraphic(Go.str("\" This is a ☺ \\n \""));
	stdgo.fmt.Fmt.println(_s);
}

function exampleUnquote():Void {
	var __tmp__ = stdgo.strconv.Strconv.unquote(Go.str("You can\'t unquote a string without quotes")),
		_s:GoString = __tmp__._0,
		_err:Error = __tmp__._1;
	stdgo.fmt.Fmt.printf(Go.str("%q, %v\n"), Go.toInterface(_s), Go.toInterface(_err));
	{
		var __tmp__ = stdgo.strconv.Strconv.unquote(Go.str("\"The string must be either double-quoted\""));
		_s = __tmp__._0;
		_err = __tmp__._1;
	};
	stdgo.fmt.Fmt.printf(Go.str("%q, %v\n"), Go.toInterface(_s), Go.toInterface(_err));
	{
		var __tmp__ = stdgo.strconv.Strconv.unquote(Go.str("`or backquoted.`"));
		_s = __tmp__._0;
		_err = __tmp__._1;
	};
	stdgo.fmt.Fmt.printf(Go.str("%q, %v\n"), Go.toInterface(_s), Go.toInterface(_err));
	{
		var __tmp__ = stdgo.strconv.Strconv.unquote(Go.str("\'☺\'"));
		_s = __tmp__._0;
		_err = __tmp__._1;
	};
	stdgo.fmt.Fmt.printf(Go.str("%q, %v\n"), Go.toInterface(_s), Go.toInterface(_err));
	{
		var __tmp__ = stdgo.strconv.Strconv.unquote(Go.str("\'☹☹\'"));
		_s = __tmp__._0;
		_err = __tmp__._1;
	};
	stdgo.fmt.Fmt.printf(Go.str("%q, %v\n"), Go.toInterface(_s), Go.toInterface(_err));
}

function exampleUnquoteChar():Void {
	var __tmp__ = stdgo.strconv.Strconv.unquoteChar(Go.str("\\\"Fran & Freddie\'s Diner\\\""), (34 : GoUInt8)),
		_v:GoInt32 = __tmp__._0,
		_mb:Bool = __tmp__._1,
		_t:GoString = __tmp__._2,
		_err:Error = __tmp__._3;
	if (_err != null) {
		stdgo.log.Log.fatal(Go.toInterface(_err));
	};
	stdgo.fmt.Fmt.println(Go.str("value:"), (_v : GoString));
	stdgo.fmt.Fmt.println(Go.str("multibyte:"), _mb);
	stdgo.fmt.Fmt.println(Go.str("tail:"), _t);
}

function exampleNumError():Void {
	var _str:GoString = Go.str("Not a number");
	{
		var __tmp__ = stdgo.strconv.Strconv.parseFloat(_str, (64 : GoInt)),
			_0:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			var _e = (Go.typeAssert((Go.toInterface(_err) : Ref<NumError>)) : Ref<NumError>);
			stdgo.fmt.Fmt.println(Go.str("Func:"), _e.func);
			stdgo.fmt.Fmt.println(Go.str("Num:"), _e.num);
			stdgo.fmt.Fmt.println(Go.str("Err:"), _e.err);
			stdgo.fmt.Fmt.println(_err);
		};
	};
}

function _pow2(_i:GoInt):GoFloat64 {
	if (_i < (0:GoInt)) {
		return (1 : GoFloat64) / _pow2(-_i);
	} else if (_i == ((0 : GoInt))) {
		return (1 : GoFloat64);
	} else if (_i == ((1 : GoInt))) {
		return (2 : GoFloat64);
	};
	return _pow2(_i / (2 : GoInt)) * _pow2(_i - (_i / (2 : GoInt)));
}

/**
	// Wrapper around strconv.ParseFloat(x, 64).  Handles dddddp+ddd (binary exponent)
	// itself, passes the rest on to strconv.ParseFloat.
**/
function _myatof64(_s:GoString):{var _0:GoFloat64; var _1:Bool;} {
	var _f:GoFloat64 = (0 : GoFloat64), _ok:Bool = false;
	{
		var __tmp__ = stdgo.strings.Strings.cut(_s, Go.str("p")),
			_mant:GoString = __tmp__._0,
			_exp:GoString = __tmp__._1,
			_ok:Bool = __tmp__._2;
		if (_ok) {
			var __tmp__ = stdgo.strconv.Strconv.parseInt(_mant, (10 : GoInt), (64 : GoInt)),
				_n:GoInt64 = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				return {_0: (0 : GoFloat64), _1: false};
			};
			var __tmp__ = stdgo.strconv.Strconv.atoi(_exp),
				_e:GoInt = __tmp__._0,
				_err1:Error = __tmp__._1;
			if (_err1 != null) {
				stdgo.fmt.Fmt.println(Go.str("bad e"), _exp);
				return {_0: (0 : GoFloat64), _1: false};
			};
			var _v:GoFloat64 = (_n : GoFloat64);
			if (_e <= (-1000 : GoInt)) {
				_v = _v * (_pow2((-1000 : GoInt)));
				_e = _e + ((1000 : GoInt));
				while (_e < (0:GoInt)) {
					_v = _v / (2 : GoFloat64);
					_e++;
				};
				return {_0: _v, _1: true};
			};
			if (_e >= (1000 : GoInt)) {
				_v = _v * (_pow2((1000 : GoInt)));
				_e = _e - ((1000 : GoInt));
				while (_e > (0 : GoInt)) {
					_v = _v * (2 : GoFloat64);
					_e--;
				};
				return {_0: _v, _1: true};
			};
			return {_0: _v * _pow2(_e), _1: true};
		};
	};
	var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s, (64 : GoInt)),
		_f1:GoFloat64 = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		return {_0: (0 : GoFloat64), _1: false};
	};
	return {_0: _f1, _1: true};
}

/**
	// Wrapper around strconv.ParseFloat(x, 32).  Handles dddddp+ddd (binary exponent)
	// itself, passes the rest on to strconv.ParseFloat.
**/
function _myatof32(_s:GoString):{var _0:GoFloat32; var _1:Bool;} {
	var _f:GoFloat32 = (0 : GoFloat32), _ok:Bool = false;
	{
		var __tmp__ = stdgo.strings.Strings.cut(_s, Go.str("p")),
			_mant:GoString = __tmp__._0,
			_exp:GoString = __tmp__._1,
			_ok:Bool = __tmp__._2;
		if (_ok) {
			var __tmp__ = stdgo.strconv.Strconv.atoi(_mant),
				_n:GoInt = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				stdgo.fmt.Fmt.println(Go.str("bad n"), _mant);
				return {_0: (0 : GoFloat64), _1: false};
			};
			var __tmp__ = stdgo.strconv.Strconv.atoi(_exp),
				_e:GoInt = __tmp__._0,
				_err1:Error = __tmp__._1;
			if (_err1 != null) {
				stdgo.fmt.Fmt.println(Go.str("bad p"), _exp);
				return {_0: (0 : GoFloat64), _1: false};
			};
			return {_0: ((_n : GoFloat64) * _pow2(_e) : GoFloat32), _1: true};
		};
	};
	var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s, (32 : GoInt)),
		_f64:GoFloat64 = __tmp__._0,
		_err1:Error = __tmp__._1;
	var _f1:GoFloat32 = (_f64 : GoFloat32);
	if (_err1 != null) {
		return {_0: (0 : GoFloat64), _1: false};
	};
	return {_0: _f1, _1: true};
}

function testFp(_t:Ref<stdgo.testing.Testing.T>):Void {
	trace("testFp" + " skip function");
	return;
	var __deferstack__:Array<Void->Void> = [];
	var __tmp__ = stdgo.os.Os.open(Go.str("testdata/testfp.txt")),
		_f:Ref<stdgo.os.Os.File> = __tmp__._0,
		_err:Error = __tmp__._1;
	try {
		if (_err != null) {
			_t.fatal(Go.toInterface(Go.str("testfp: open testdata/testfp.txt:")), Go.toInterface(_err));
		};
		__deferstack__.unshift(() -> _f.close());
		var _s = stdgo.bufio.Bufio.newScanner(Go.asInterface(_f));
		{
			var _lineno:GoInt = (1 : GoInt);
			Go.cfor(_s.scan(), _lineno++, {
				var _line:GoString = _s.text();
				if ((_line.length == (0 : GoInt)) || (_line[(0 : GoInt)] == (35 : GoUInt8))) {
					continue;
				};
				var _a = stdgo.strings.Strings.split(_line, Go.str(" "));
				if ((_a.length) != ((4 : GoInt))) {
					_t.error(Go.toInterface(Go.str("testdata/testfp.txt:")), Go.toInterface(_lineno), Go.toInterface(Go.str(": wrong field count")));
					continue;
				};
				var _s:GoString = ("" : GoString);
				var _v:GoFloat64 = (0 : GoFloat64);
				if (_a[(0 : GoInt)] == (Go.str("float64"))) {
					var _ok:Bool = false;
					{
						var __tmp__ = _myatof64(_a[(2 : GoInt)]);
						_v = __tmp__._0;
						_ok = __tmp__._1;
					};
					if (!_ok) {
						_t.error(Go.toInterface(Go.str("testdata/testfp.txt:")), Go.toInterface(_lineno), Go.toInterface(Go.str(": cannot atof64 ")),
							Go.toInterface(_a[(2 : GoInt)]));
						continue;
					};
					_s = stdgo.fmt.Fmt.sprintf(_a[(1 : GoInt)], Go.toInterface(_v));
				} else if (_a[(0 : GoInt)] == (Go.str("float32"))) {
					var __tmp__ = _myatof32(_a[(2 : GoInt)]),
						_v1:GoFloat32 = __tmp__._0,
						_ok:Bool = __tmp__._1;
					if (!_ok) {
						_t.error(Go.toInterface(Go.str("testdata/testfp.txt:")), Go.toInterface(_lineno), Go.toInterface(Go.str(": cannot atof32 ")),
							Go.toInterface(_a[(2 : GoInt)]));
						continue;
					};
					_s = stdgo.fmt.Fmt.sprintf(_a[(1 : GoInt)], Go.toInterface(_v1));
					_v = (_v1 : GoFloat64);
				};
				if (_s != (_a[(3 : GoInt)])) {
					_t.error(Go.toInterface(Go.str("testdata/testfp.txt:")), Go.toInterface(_lineno), Go.toInterface(Go.str(": ")),
						Go.toInterface(_a[(0 : GoInt)]), Go.toInterface(Go.str(" ")), Go.toInterface(_a[(1 : GoInt)]), Go.toInterface(Go.str(" ")),
						Go.toInterface(_a[(2 : GoInt)]), Go.toInterface(Go.str(" (")), Go.toInterface(_v), Go.toInterface(Go.str(") ")),
						Go.toInterface(Go.str("want ")), Go.toInterface(_a[(3 : GoInt)]), Go.toInterface(Go.str(" got ")), Go.toInterface(_s));
				};
			});
		};
		if (_s.err() != null) {
			_t.fatal(Go.toInterface(Go.str("testfp: read testdata/testfp.txt: ")), Go.toInterface(_s.err()));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _fdiv(_a:GoFloat64, _b:GoFloat64):GoFloat64 {
	return _a / _b;
}

function testFtoa(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_ftoatests.length), _i++, {
			var _test = (_ftoatests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_ftoaTest>);
			var _s:GoString = formatFloat(_test._f, _test._fmt, _test._prec, (64 : GoInt));
			if (_s != (_test._s)) {
				_t.error(Go.toInterface(Go.str("testN=64")), Go.toInterface(_test._f), Go.toInterface((_test._fmt : GoString)), Go.toInterface(_test._prec),
					Go.toInterface(Go.str("want")), Go.toInterface(_test._s), Go.toInterface(Go.str("got")), Go.toInterface(_s));
			};
			var _x = appendFloat((Go.str("abc") : Slice<GoByte>), _test._f, _test._fmt, _test._prec, (64 : GoInt));
			if ((_x : GoString) != (Go.str("abc") + _test._s)) {
				_t.error(Go.toInterface(Go.str("AppendFloat testN=64")), Go.toInterface(_test._f), Go.toInterface((_test._fmt : GoString)),
					Go.toInterface(_test._prec), Go.toInterface(Go.str("want")), Go.toInterface(Go.str("abc") + _test._s), Go.toInterface(Go.str("got")),
					Go.toInterface((_x : GoString)));
			};
			if ((((_test._f : GoFloat32) : GoFloat64) == _test._f) && (_test._fmt != (98 : GoUInt8))) {
				var _s:GoString = formatFloat(_test._f, _test._fmt, _test._prec, (32 : GoInt));
				if (_s != (_test._s)) {
					_t.error(Go.toInterface(Go.str("testN=32")), Go.toInterface(_test._f), Go.toInterface((_test._fmt : GoString)),
						Go.toInterface(_test._prec), Go.toInterface(Go.str("want")), Go.toInterface(_test._s), Go.toInterface(Go.str("got")),
						Go.toInterface(_s));
				};
				var _x = appendFloat((Go.str("abc") : Slice<GoByte>), _test._f, _test._fmt, _test._prec, (32 : GoInt));
				if ((_x : GoString) != (Go.str("abc") + _test._s)) {
					_t.error(Go.toInterface(Go.str("AppendFloat testN=32")), Go.toInterface(_test._f), Go.toInterface((_test._fmt : GoString)),
						Go.toInterface(_test._prec), Go.toInterface(Go.str("want")), Go.toInterface(Go.str("abc") + _test._s), Go.toInterface(Go.str("got")),
						Go.toInterface((_x : GoString)));
				};
			};
		});
	};
}

function testFtoaPowersOfTwo(_t:Ref<stdgo.testing.Testing.T>):Void {
	trace("testFtoaPowersOfTwo" + " skip function");
	return;
	{
		var _exp:GoInt = (-2048 : GoInt);
		Go.cfor(_exp <= (2048 : GoInt), _exp++, {
			var _f:GoFloat64 = stdgo.math.Math.ldexp((1 : GoFloat64), _exp);
			if (!stdgo.math.Math.isInf(_f, (0 : GoInt))) {
				var _s:GoString = formatFloat(_f, (101 : GoUInt8), (-1 : GoInt), (64 : GoInt));
				{
					var __tmp__ = parseFloat(_s, (64 : GoInt)),
						_x:GoFloat64 = __tmp__._0,
						_0:Error = __tmp__._1;
					if (_x != (_f)) {
						_t.errorf(Go.str("failed roundtrip %v => %s => %v"), Go.toInterface(_f), Go.toInterface(_s), Go.toInterface(_x));
					};
				};
			};
			var _f32:GoFloat32 = (_f : GoFloat32);
			if (!stdgo.math.Math.isInf((_f32 : GoFloat64), (0 : GoInt))) {
				var _s:GoString = formatFloat((_f32 : GoFloat64), (101 : GoUInt8), (-1 : GoInt), (32 : GoInt));
				{
					var __tmp__ = parseFloat(_s, (32 : GoInt)),
						_x:GoFloat64 = __tmp__._0,
						_1:Error = __tmp__._1;
					if ((_x : GoFloat32) != (_f32)) {
						_t.errorf(Go.str("failed roundtrip %v => %s => %v"), Go.toInterface(_f32), Go.toInterface(_s), Go.toInterface((_x : GoFloat32)));
					};
				};
			};
		});
	};
}

function testFtoaRandom(_t:Ref<stdgo.testing.Testing.T>):Void {
	var n:GoInt = (10000 : GoInt);
	if (stdgo.testing.Testing.short()) {
		n = (100 : GoInt);
	};
	_t.logf(Go.str("testing %d random numbers with fast and slow FormatFloat"), Go.toInterface(n));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < n, _i++, {
			var _bits:GoUInt64 = ((stdgo.math.rand.Rand.uint32() : GoUInt64) << (("32" : GoUInt64) : GoUInt64)) | (stdgo.math.rand.Rand.uint32() : GoUInt64);
			var _x:GoFloat64 = stdgo.math.Math.float64frombits(_bits);
			var _shortFast:GoString = formatFloat(_x, (103 : GoUInt8), (-1 : GoInt), (64 : GoInt));
			setOptimize(false);
			var _shortSlow:GoString = formatFloat(_x, (103 : GoUInt8), (-1 : GoInt), (64 : GoInt));
			setOptimize(true);
			if (_shortSlow != (_shortFast)) {
				_t.errorf(Go.str("%b printed as %s, want %s"), Go.toInterface(_x), Go.toInterface(_shortFast), Go.toInterface(_shortSlow));
			};
			var _prec:GoInt = stdgo.math.rand.Rand.intn((12 : GoInt)) + (5 : GoInt);
			_shortFast = formatFloat(_x, (101 : GoUInt8), _prec, (64 : GoInt));
			setOptimize(false);
			_shortSlow = formatFloat(_x, (101 : GoUInt8), _prec, (64 : GoInt));
			setOptimize(true);
			if (_shortSlow != (_shortFast)) {
				_t.errorf(Go.str("%b printed as %s, want %s"), Go.toInterface(_x), Go.toInterface(_shortFast), Go.toInterface(_shortSlow));
			};
		});
	};
}

function testFormatFloatInvalidBitSize(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			{
				var _r:AnyInterface = ({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				});
				if (_r == null) {
					_t.fatalf(Go.str("expected panic due to invalid bitSize"));
				};
			};
		};
		a();
	});
	try {
		formatFloat((3.14 : GoFloat64), (103 : GoUInt8), (-1 : GoInt), (100 : GoInt));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function benchmarkFormatFloat(_b:Ref<stdgo.testing.Testing.B>):Void {
	for (_0 => _c in _ftoaBenches) {
		_b.run(_c._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _b.n, _i++, {
					formatFloat(_c._float, _c._fmt, _c._prec, _c._bitSize);
				});
			};
		});
	};
}

function benchmarkAppendFloat(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _dst = new Slice<GoUInt8>((30 : GoInt).toBasic(), 0, ...[for (i in 0...(30 : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_0 => _c in _ftoaBenches) {
		_b.run(_c._name, function(_b:Ref<stdgo.testing.Testing.B>):Void {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _b.n, _i++, {
					appendFloat((_dst.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), _c._float, _c._fmt, _c._prec, _c._bitSize);
				});
			};
		});
	};
}

function testMulByLog2Log10(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _x:GoInt = (-1600 : GoInt);
		Go.cfor(_x <= (1600 : GoInt), _x++, {
			var _iMath:GoInt = mulByLog2Log10(_x);
			var _fMath:GoInt = (stdgo.math.Math.floor(((_x : GoFloat64) * (0.6931471805599453 : GoFloat64)) / (2.302585092994046 : GoFloat64)) : GoInt);
			if (_iMath != (_fMath)) {
				_t.errorf(Go.str("mulByLog2Log10(%d) failed: %d vs %d\n"), Go.toInterface(_x), Go.toInterface(_iMath), Go.toInterface(_fMath));
			};
		});
	};
}

function testMulByLog10Log2(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _x:GoInt = (-500 : GoInt);
		Go.cfor(_x <= (500 : GoInt), _x++, {
			var _iMath:GoInt = mulByLog10Log2(_x);
			var _fMath:GoInt = (stdgo.math.Math.floor(((_x : GoFloat64) * (2.302585092994046 : GoFloat64)) / (0.6931471805599453 : GoFloat64)) : GoInt);
			if (_iMath != (_fMath)) {
				_t.errorf(Go.str("mulByLog10Log2(%d) failed: %d vs %d\n"), Go.toInterface(_x), Go.toInterface(_iMath), Go.toInterface(_fMath));
			};
		});
	};
}

function testItoa(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _itob64tests) {
		var _s:GoString = formatInt(_test._in, _test._base);
		if (_s != (_test._out)) {
			_t.errorf(Go.str("FormatInt(%v, %v) = %v want %v"), Go.toInterface(_test._in), Go.toInterface(_test._base), Go.toInterface(_s),
				Go.toInterface(_test._out));
		};
		var _x = appendInt((Go.str("abc") : Slice<GoByte>), _test._in, _test._base);
		if ((_x : GoString) != (Go.str("abc") + _test._out)) {
			_t.errorf(Go.str("AppendInt(%q, %v, %v) = %q want %v"), Go.toInterface(Go.str("abc")), Go.toInterface(_test._in), Go.toInterface(_test._base),
				Go.toInterface(_x), Go.toInterface(_test._out));
		};
		if (_test._in >= ("0" : GoInt64)) {
			var _s:GoString = formatUint((_test._in : GoUInt64), _test._base);
			if (_s != (_test._out)) {
				_t.errorf(Go.str("FormatUint(%v, %v) = %v want %v"), Go.toInterface(_test._in), Go.toInterface(_test._base), Go.toInterface(_s),
					Go.toInterface(_test._out));
			};
			var _x = appendUint((null : Slice<GoUInt8>), (_test._in : GoUInt64), _test._base);
			if ((_x : GoString) != (_test._out)) {
				_t.errorf(Go.str("AppendUint(%q, %v, %v) = %q want %v"), Go.toInterface(Go.str("abc")), Go.toInterface((_test._in : GoUInt64)),
					Go.toInterface(_test._base), Go.toInterface(_x), Go.toInterface(_test._out));
			};
		};
		if ((_test._base == (10 : GoInt)) && (((_test._in : GoInt) : GoInt64) == _test._in)) {
			var _s:GoString = itoa((_test._in : GoInt));
			if (_s != (_test._out)) {
				_t.errorf(Go.str("Itoa(%v) = %v want %v"), Go.toInterface(_test._in), Go.toInterface(_s), Go.toInterface(_test._out));
			};
		};
	};
}

function testUitoa(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _uitob64tests) {
		var _s:GoString = formatUint(_test._in, _test._base);
		if (_s != (_test._out)) {
			_t.errorf(Go.str("FormatUint(%v, %v) = %v want %v"), Go.toInterface(_test._in), Go.toInterface(_test._base), Go.toInterface(_s),
				Go.toInterface(_test._out));
		};
		var _x = appendUint((Go.str("abc") : Slice<GoByte>), _test._in, _test._base);
		if ((_x : GoString) != (Go.str("abc") + _test._out)) {
			_t.errorf(Go.str("AppendUint(%q, %v, %v) = %q want %v"), Go.toInterface(Go.str("abc")), Go.toInterface(_test._in), Go.toInterface(_test._base),
				Go.toInterface(_x), Go.toInterface(_test._out));
		};
	};
}

function testFormatUintVarlen(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _varlenUints) {
		var _s:GoString = formatUint(_test._in, (10 : GoInt));
		if (_s != (_test._out)) {
			_t.errorf(Go.str("FormatUint(%v, 10) = %v want %v"), Go.toInterface(_test._in), Go.toInterface(_s), Go.toInterface(_test._out));
		};
	};
}

function benchmarkFormatInt(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			for (_0 => _test in _itob64tests) {
				var _s:GoString = formatInt(_test._in, _test._base);
				benchSink = benchSink + ((_s.length));
			};
		});
	};
}

function benchmarkAppendInt(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _dst = new Slice<GoUInt8>((0 : GoInt).toBasic(), (30 : GoInt), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			for (_0 => _test in _itob64tests) {
				_dst = appendInt((_dst.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), _test._in, _test._base);
				benchSink = benchSink + ((_dst.length));
			};
		});
	};
}

function benchmarkFormatUint(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			for (_0 => _test in _uitob64tests) {
				var _s:GoString = formatUint(_test._in, _test._base);
				benchSink = benchSink + ((_s.length));
			};
		});
	};
}

function benchmarkAppendUint(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _dst = new Slice<GoUInt8>((0 : GoInt).toBasic(), (30 : GoInt), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			for (_0 => _test in _uitob64tests) {
				_dst = appendUint((_dst.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), _test._in, _test._base);
				benchSink = benchSink + ((_dst.length));
			};
		});
	};
}

function benchmarkFormatIntSmall(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _smallInts = (new Slice<GoInt64>(0, 0, ("7" : GoInt64), ("42" : GoInt64)) : Slice<GoInt64>);
	for (_0 => _smallInt in _smallInts) {
		_b.run(itoa((_smallInt : GoInt)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _b.n, _i++, {
					var _s:GoString = formatInt(_smallInt, (10 : GoInt));
					benchSink = benchSink + ((_s.length));
				});
			};
		});
	};
}

function benchmarkAppendIntSmall(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _dst = new Slice<GoUInt8>((0 : GoInt).toBasic(), (30 : GoInt), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
	{};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_dst = appendInt((_dst.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), ("42" : GoInt64), (10 : GoInt));
			benchSink = benchSink + ((_dst.length));
		});
	};
}

function benchmarkAppendUintVarlen(_b:Ref<stdgo.testing.Testing.B>):Void {
	for (_0 => _test in _varlenUints) {
		_b.run(_test._out, function(_b:Ref<stdgo.testing.Testing.B>):Void {
			var _dst = new Slice<GoUInt8>((0 : GoInt).toBasic(), (30 : GoInt), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
			{
				var _j:GoInt = (0 : GoInt);
				Go.cfor(_j < _b.n, _j++, {
					_dst = appendUint((_dst.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), _test._in, (10 : GoInt));
					benchSink = benchSink + ((_dst.length));
				});
			};
		});
	};
}

/**
	// Verify that our IsPrint agrees with unicode.IsPrint.
**/
function testIsPrint(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _n:GoInt = (0 : GoInt);
	{
		var _r:GoInt32 = ((0 : GoInt32) : GoRune);
		Go.cfor(_r <= (1114111 : GoInt32), _r++, {
			if (isPrint(_r) != (stdgo.unicode.Unicode.isPrint(_r))) {
				_t.errorf(Go.str("IsPrint(%U)=%t incorrect"), Go.toInterface(_r), Go.toInterface(isPrint(_r)));
				_n++;
				if (_n > (10 : GoInt)) {
					return;
				};
			};
		});
	};
}

/**
	// Verify that our IsGraphic agrees with unicode.IsGraphic.
**/
function testIsGraphic(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _n:GoInt = (0 : GoInt);
	{
		var _r:GoInt32 = ((0 : GoInt32) : GoRune);
		Go.cfor(_r <= (1114111 : GoInt32), _r++, {
			if (isGraphic(_r) != (stdgo.unicode.Unicode.isGraphic(_r))) {
				_t.errorf(Go.str("IsGraphic(%U)=%t incorrect"), Go.toInterface(_r), Go.toInterface(isGraphic(_r)));
				_n++;
				if (_n > (10 : GoInt)) {
					return;
				};
			};
		});
	};
}

function testQuote(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _quotetests) {
		{
			var _out:GoString = quote(_tt._in);
			if (_out != (_tt._out)) {
				_t.errorf(Go.str("Quote(%s) = %s, want %s"), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._out));
			};
		};
		{
			var _out = appendQuote((Go.str("abc") : Slice<GoByte>), _tt._in);
			if ((_out : GoString) != (Go.str("abc") + _tt._out)) {
				_t.errorf(Go.str("AppendQuote(%q, %s) = %s, want %s"), Go.toInterface(Go.str("abc")), Go.toInterface(_tt._in), Go.toInterface(_out),
					Go.toInterface(Go.str("abc") + _tt._out));
			};
		};
	};
}

function testQuoteToASCII(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _quotetests) {
		{
			var _out:GoString = quoteToASCII(_tt._in);
			if (_out != (_tt._ascii)) {
				_t.errorf(Go.str("QuoteToASCII(%s) = %s, want %s"), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._ascii));
			};
		};
		{
			var _out = appendQuoteToASCII((Go.str("abc") : Slice<GoByte>), _tt._in);
			if ((_out : GoString) != (Go.str("abc") + _tt._ascii)) {
				_t.errorf(Go.str("AppendQuoteToASCII(%q, %s) = %s, want %s"), Go.toInterface(Go.str("abc")), Go.toInterface(_tt._in), Go.toInterface(_out),
					Go.toInterface(Go.str("abc") + _tt._ascii));
			};
		};
	};
}

function testQuoteToGraphic(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _quotetests) {
		{
			var _out:GoString = quoteToGraphic(_tt._in);
			if (_out != (_tt._graphic)) {
				_t.errorf(Go.str("QuoteToGraphic(%s) = %s, want %s"), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._graphic));
			};
		};
		{
			var _out = appendQuoteToGraphic((Go.str("abc") : Slice<GoByte>), _tt._in);
			if ((_out : GoString) != (Go.str("abc") + _tt._graphic)) {
				_t.errorf(Go.str("AppendQuoteToGraphic(%q, %s) = %s, want %s"), Go.toInterface(Go.str("abc")), Go.toInterface(_tt._in), Go.toInterface(_out),
					Go.toInterface(Go.str("abc") + _tt._graphic));
			};
		};
	};
}

function benchmarkQuote(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			quote(Go.str("\x07\x08\x0C\r\n\t\x0B\x07\x08\x0C\r\n\t\x0B\x07\x08\x0C\r\n\t\x0B"));
		});
	};
}

function benchmarkQuoteRune(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			quoteRune((7 : GoInt32));
		});
	};
}

function benchmarkAppendQuote(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_benchQuoteBuf = appendQuote((_benchQuoteBuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>),
				Go.str("\x07\x08\x0C\r\n\t\x0B\x07\x08\x0C\r\n\t\x0B\x07\x08\x0C\r\n\t\x0B"));
		});
	};
}

function benchmarkAppendQuoteRune(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_benchQuoteRuneBuf = appendQuoteRune((_benchQuoteRuneBuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), (7 : GoInt32));
		});
	};
}

function testQuoteRune(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _quoterunetests) {
		{
			var _out:GoString = quoteRune(_tt._in);
			if (_out != (_tt._out)) {
				_t.errorf(Go.str("QuoteRune(%U) = %s, want %s"), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._out));
			};
		};
		{
			var _out = appendQuoteRune((Go.str("abc") : Slice<GoByte>), _tt._in);
			if ((_out : GoString) != (Go.str("abc") + _tt._out)) {
				_t.errorf(Go.str("AppendQuoteRune(%q, %U) = %s, want %s"), Go.toInterface(Go.str("abc")), Go.toInterface(_tt._in), Go.toInterface(_out),
					Go.toInterface(Go.str("abc") + _tt._out));
			};
		};
	};
}

function testQuoteRuneToASCII(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _quoterunetests) {
		{
			var _out:GoString = quoteRuneToASCII(_tt._in);
			if (_out != (_tt._ascii)) {
				_t.errorf(Go.str("QuoteRuneToASCII(%U) = %s, want %s"), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._ascii));
			};
		};
		{
			var _out = appendQuoteRuneToASCII((Go.str("abc") : Slice<GoByte>), _tt._in);
			if ((_out : GoString) != (Go.str("abc") + _tt._ascii)) {
				_t.errorf(Go.str("AppendQuoteRuneToASCII(%q, %U) = %s, want %s"), Go.toInterface(Go.str("abc")), Go.toInterface(_tt._in),
					Go.toInterface(_out), Go.toInterface(Go.str("abc") + _tt._ascii));
			};
		};
	};
}

function testQuoteRuneToGraphic(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _quoterunetests) {
		{
			var _out:GoString = quoteRuneToGraphic(_tt._in);
			if (_out != (_tt._graphic)) {
				_t.errorf(Go.str("QuoteRuneToGraphic(%U) = %s, want %s"), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._graphic));
			};
		};
		{
			var _out = appendQuoteRuneToGraphic((Go.str("abc") : Slice<GoByte>), _tt._in);
			if ((_out : GoString) != (Go.str("abc") + _tt._graphic)) {
				_t.errorf(Go.str("AppendQuoteRuneToGraphic(%q, %U) = %s, want %s"), Go.toInterface(Go.str("abc")), Go.toInterface(_tt._in),
					Go.toInterface(_out), Go.toInterface(Go.str("abc") + _tt._graphic));
			};
		};
	};
}

function testCanBackquote(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _canbackquotetests) {
		{
			var _out:Bool = canBackquote(_tt._in);
			if (_out != (_tt._out)) {
				_t.errorf(Go.str("CanBackquote(%q) = %v, want %v"), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._out));
			};
		};
	};
}

function testUnquote(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _unquotetests) {
		_testUnquote(_t, _tt._in, _tt._out, (null : Error));
	};
	for (_1 => _tt in _quotetests) {
		_testUnquote(_t, _tt._out, _tt._in, (null : Error));
	};
	for (_2 => _s in _misquoted) {
		_testUnquote(_t, _s, Go.str(), errSyntax);
	};
}

/**
	// Issue 23685: invalid UTF-8 should not go through the fast path.
**/
function testUnquoteInvalidUTF8(_t:Ref<stdgo.testing.Testing.T>):Void {
	trace("testUnquoteInvalidUTF8" + " skip function");
	return;
	var _tests = (new Slice<T__struct_4>(0, 0, ({_in: ("" : GoString), _want: ("" : GoString), _wantErr: (null : Error)} : T__struct_4),
		({_in: ("" : GoString), _want: ("" : GoString), _wantErr: (null : Error)} : T__struct_4),
		({_in: ("" : GoString), _want: ("" : GoString), _wantErr: (null : Error)} : T__struct_4),
		({_in: ("" : GoString), _want: ("" : GoString), _wantErr: (null : Error)} : T__struct_4),
		({_in: ("" : GoString), _want: ("" : GoString), _wantErr: (null : Error)} : T__struct_4)) : Slice<T__struct_4>);
	for (_0 => _tt in _tests) {
		_testUnquote(_t, _tt._in, _tt._want, _tt._wantErr);
	};
}

function _testUnquote(_t:Ref<stdgo.testing.Testing.T>, _in:GoString, _want:GoString, _wantErr:Error):Void {
	var __tmp__ = unquote(_in),
		_got:GoString = __tmp__._0,
		_gotErr:Error = __tmp__._1;
	if ((_got != _want) || (Go.toInterface(_gotErr) != Go.toInterface(_wantErr))) {
		_t.errorf(Go.str("Unquote(%q) = (%q, %v), want (%q, %v)"), Go.toInterface(_in), Go.toInterface(_got), Go.toInterface(_gotErr), Go.toInterface(_want),
			Go.toInterface(_wantErr));
	};
	if (_gotErr == null) {
		_want = _in;
	};
	var _suffix:GoString = Go.str("\n\r\\\"`\'");
	if ((_in.length) > (0 : GoInt)) {
		_suffix = stdgo.strings.Strings.replaceAll(_suffix, (_in.__slice__(0, (1 : GoInt)) : GoString), Go.str());
	};
	_in = _in + (_suffix);
	{
		var __tmp__ = quotedPrefix(_in);
		_got = __tmp__._0;
		_gotErr = __tmp__._1;
	};
	if ((_gotErr == null) && (_wantErr != null)) {
		{
			var __tmp__ = unquote(_got);
			_wantErr = __tmp__._1;
		};
		_want = _got;
	};
	if ((_got != _want) || (Go.toInterface(_gotErr) != Go.toInterface(_wantErr))) {
		_t.errorf(Go.str("QuotedPrefix(%q) = (%q, %v), want (%q, %v)"), Go.toInterface(_in), Go.toInterface(_got), Go.toInterface(_gotErr),
			Go.toInterface(_want), Go.toInterface(_wantErr));
	};
}

function benchmarkUnquoteEasy(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			unquote(Go.str("\"Give me a rock, paper and scissors and I will move the world.\""));
		});
	};
}

function benchmarkUnquoteHard(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			unquote(Go.str("\"\\x47ive me a \\x72ock, \\x70aper and \\x73cissors and \\x49 will move the world.\""));
		});
	};
}

function testCountMallocs(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (stdgo.testing.Testing.short()) {
		_t.skip(Go.toInterface(Go.str("skipping malloc count in short mode")));
	};
	if (stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) > (1 : GoInt)) {
		_t.skip(Go.toInterface(Go.str("skipping; GOMAXPROCS>1")));
	};
	_oneMB = new Slice<GoUInt8>((1000000 : GoInt).toBasic(), 0, ...[for (i in 0...(1000000 : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_i in 0..._oneMB.length.toBasic()) {
		_oneMB[_i] = (_i : GoByte);
	};
	for (_0 => _mt in _mallocTest) {
		var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), _mt._fn);
		{
			var _max:GoFloat64 = (_mt._count : GoFloat64);
			if (_allocs > _max) {
				_t.errorf(Go.str("%s: %v allocs, want <=%v"), Go.toInterface(_mt._desc), Go.toInterface(_allocs), Go.toInterface(_max));
			};
		};
	};
}

function testErrorPrefixes(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = atoi(Go.str("INVALID")),
		_0:GoInt = __tmp__._0,
		_errInt:Error = __tmp__._1;
	var __tmp__ = parseBool(Go.str("INVALID")),
		_1:Bool = __tmp__._0,
		_errBool:Error = __tmp__._1;
	var __tmp__ = parseFloat(Go.str("INVALID"), (64 : GoInt)),
		_2:GoFloat64 = __tmp__._0,
		_errFloat:Error = __tmp__._1;
	var __tmp__ = parseInt(Go.str("INVALID"), (10 : GoInt), (64 : GoInt)),
		_3:GoInt64 = __tmp__._0,
		_errInt64:Error = __tmp__._1;
	var __tmp__ = parseUint(Go.str("INVALID"), (10 : GoInt), (64 : GoInt)),
		_4:GoUInt64 = __tmp__._0,
		_errUint64:Error = __tmp__._1;
	var _vectors = (new Slice<T__struct_6>(0, 0, ({_err: _errInt, _want: Go.str("Atoi")} : T__struct_6),
		({_err: _errBool, _want: Go.str("ParseBool")} : T__struct_6), ({_err: _errFloat, _want: Go.str("ParseFloat")} : T__struct_6),
		({_err: _errInt64, _want: Go.str("ParseInt")} : T__struct_6), ({_err: _errUint64, _want: Go.str("ParseUint")} : T__struct_6)) : Slice<T__struct_6>);
	for (_5 => _v in _vectors) {
		var __tmp__ = try {
			{value: (Go.typeAssert((Go.toInterface(_v._err) : Ref<NumError>)) : Ref<NumError>), ok: true};
		} catch (_) {
			{value: (null : Ref<NumError>), ok: false};
		}, _nerr = __tmp__.value, _ok = __tmp__.ok;
		if (!_ok) {
			_t.errorf(Go.str("test %s, error was not a *NumError"), Go.toInterface(_v._want));
			continue;
		};
		{
			var _got:GoString = _nerr.func;
			if (_got != (_v._want)) {
				_t.errorf(Go.str("mismatching Func: got %s, want %s"), Go.toInterface(_got), Go.toInterface(_v._want));
			};
		};
	};
}

@:keep var _ = {
	try {
		for (_i in 0..._parseUint64Tests.length.toBasic()) {
			var _test = (_parseUint64Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseUint64Test>);
			if (_test._err != null) {
				_test._err = Go.asInterface(((new NumError(Go.str("ParseUint"), _test._in, _test._err) : NumError) : Ref<NumError>));
			};
		};
		for (_i in 0..._parseUint64BaseTests.length.toBasic()) {
			var _test = (_parseUint64BaseTests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest>);
			if (_test._err != null) {
				_test._err = Go.asInterface(((new NumError(Go.str("ParseUint"), _test._in, _test._err) : NumError) : Ref<NumError>));
			};
		};
		for (_i in 0..._parseInt64Tests.length.toBasic()) {
			var _test = (_parseInt64Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseInt64Test>);
			if (_test._err != null) {
				_test._err = Go.asInterface(((new NumError(Go.str("ParseInt"), _test._in, _test._err) : NumError) : Ref<NumError>));
			};
		};
		for (_i in 0..._parseInt64BaseTests.length.toBasic()) {
			var _test = (_parseInt64BaseTests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest>);
			if (_test._err != null) {
				_test._err = Go.asInterface(((new NumError(Go.str("ParseInt"), _test._in, _test._err) : NumError) : Ref<NumError>));
			};
		};
		for (_i in 0..._parseUint32Tests.length.toBasic()) {
			var _test = (_parseUint32Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseUint32Test>);
			if (_test._err != null) {
				_test._err = Go.asInterface(((new NumError(Go.str("ParseUint"), _test._in, _test._err) : NumError) : Ref<NumError>));
			};
		};
		for (_i in 0..._parseInt32Tests.length.toBasic()) {
			var _test = (_parseInt32Tests[_i] : Ref<stdgo.strconv_test.Strconv_test.T_parseInt32Test>);
			if (_test._err != null) {
				_test._err = Go.asInterface(((new NumError(Go.str("ParseInt"), _test._in, _test._err) : NumError) : Ref<NumError>));
			};
		};
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

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
import stdgo.strconv.Strconv;
/**
    
    
    
**/
var _atobtests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atobTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atobTest>(
14,
14,
(new stdgo.strconv_test.Strconv_test.T_atobTest(stdgo.Go.str()?.__copy__(), false, errSyntax) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("asdf" : stdgo.GoString), false, errSyntax) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("0" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("f" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("F" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("FALSE" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("false" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("False" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("1" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("t" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("T" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("TRUE" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("true" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atobTest),
(new stdgo.strconv_test.Strconv_test.T_atobTest(("True" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atobTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atobTest>);
/**
    
    
    
**/
var _boolString : stdgo.GoMap<Bool, stdgo.GoString> = ({
        final x = new stdgo.GoMap.GoBoolMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set(true, ("true" : stdgo.GoString));
            x.set(false, ("false" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<Bool, stdgo.GoString>);
/**
    
    
    
**/
var _appendBoolTests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_appendBoolTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_appendBoolTest>(2, 2, (new stdgo.strconv_test.Strconv_test.T_appendBoolTest(true, (("foo " : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("foo true" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.strconv_test.Strconv_test.T_appendBoolTest), (new stdgo.strconv_test.Strconv_test.T_appendBoolTest(false, (("foo " : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (("foo false" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)) : stdgo.strconv_test.Strconv_test.T_appendBoolTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_appendBoolTest>);
/**
    
    
    
**/
var _infp0 : stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.inf((1 : stdgo.StdGoTypes.GoInt)), (0 : stdgo.StdGoTypes.GoFloat64));
/**
    
    
    
**/
var _infm0 : stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.inf((-1 : stdgo.StdGoTypes.GoInt)), (0 : stdgo.StdGoTypes.GoFloat64));
/**
    
    
    
**/
var _inf0p : stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128((0 : stdgo.StdGoTypes.GoFloat64), stdgo.math.Math.inf((1 : stdgo.StdGoTypes.GoInt)));
/**
    
    
    
**/
var _inf0m : stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128((0 : stdgo.StdGoTypes.GoFloat64), stdgo.math.Math.inf((-1 : stdgo.StdGoTypes.GoInt)));
/**
    
    
    
**/
var _infpp : stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.inf((1 : stdgo.StdGoTypes.GoInt)), stdgo.math.Math.inf((1 : stdgo.StdGoTypes.GoInt)));
/**
    
    
    
**/
var _infpm : stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.inf((1 : stdgo.StdGoTypes.GoInt)), stdgo.math.Math.inf((-1 : stdgo.StdGoTypes.GoInt)));
/**
    
    
    
**/
var _infmp : stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.inf((-1 : stdgo.StdGoTypes.GoInt)), stdgo.math.Math.inf((1 : stdgo.StdGoTypes.GoInt)));
/**
    
    
    
**/
var _infmm : stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.inf((-1 : stdgo.StdGoTypes.GoInt)), stdgo.math.Math.inf((-1 : stdgo.StdGoTypes.GoInt)));
/**
    
    
    
**/
var _atoftests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atofTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atofTest>(
261,
261,
(new stdgo.strconv_test.Strconv_test.T_atofTest(stdgo.Go.str()?.__copy__(), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("+1" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1x" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.1." : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e23" : stdgo.GoString), ("1e+23" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1E23" : stdgo.GoString), ("1e+23" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("100000000000000000000000" : stdgo.GoString), ("1e+23" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-100" : stdgo.GoString), ("1e-100" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("123456700" : stdgo.GoString), ("1.234567e+08" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("99999999999999974834176" : stdgo.GoString), ("9.999999999999997e+22" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("100000000000000000000001" : stdgo.GoString), ("1.0000000000000001e+23" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("100000000000000008388608" : stdgo.GoString), ("1.0000000000000001e+23" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("100000000000000016777215" : stdgo.GoString), ("1.0000000000000001e+23" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("100000000000000016777216" : stdgo.GoString), ("1.0000000000000003e+23" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-1" : stdgo.GoString), ("-1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0.1" : stdgo.GoString), ("-0.1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-20" : stdgo.GoString), ("1e-20" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("625e-3" : stdgo.GoString), ("0.625" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p0" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p1" : stdgo.GoString), ("2" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p-1" : stdgo.GoString), ("0.5" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1ep-1" : stdgo.GoString), ("15" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x1ep-1" : stdgo.GoString), ("-15" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x1_ep-1" : stdgo.GoString), ("-15" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p-200" : stdgo.GoString), ("6.223015277861142e-61" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p200" : stdgo.GoString), ("1.6069380442589903e+60" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1fFe2.p0" : stdgo.GoString), ("131042" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1fFe2.P0" : stdgo.GoString), ("131042" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x2p3" : stdgo.GoString), ("-16" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.fp4" : stdgo.GoString), ("15" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.fp0" : stdgo.GoString), ("0.9375" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1e2" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1p2" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0e0" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0e0" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("+0e0" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0e-0" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0e-0" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("+0e-0" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0e+0" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0e+0" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("+0e+0" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0e+01234567890123456789" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0.00e-01234567890123456789" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0e+01234567890123456789" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0.00e-01234567890123456789" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0p+01234567890123456789" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00p-01234567890123456789" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x0p+01234567890123456789" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x0.00p-01234567890123456789" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0e291" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0e292" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0e347" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0e348" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0e291" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0e292" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0e347" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0e348" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0p126" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0p127" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0p128" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0p129" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0p130" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0p1022" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0p1023" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0p1024" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0p1025" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0p1026" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x0p126" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x0p127" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x0p128" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x0p129" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x0p130" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x0p1022" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x0p1023" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x0p1024" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x0p1025" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x0p1026" : stdgo.GoString), ("-0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("nan" : stdgo.GoString), ("NaN" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("NaN" : stdgo.GoString), ("NaN" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("NAN" : stdgo.GoString), ("NaN" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("inf" : stdgo.GoString), ("+Inf" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-Inf" : stdgo.GoString), ("-Inf" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("+INF" : stdgo.GoString), ("+Inf" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-Infinity" : stdgo.GoString), ("-Inf" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("+INFINITY" : stdgo.GoString), ("+Inf" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("Infinity" : stdgo.GoString), ("+Inf" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.7976931348623157e308" : stdgo.GoString), ("1.7976931348623157e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-1.7976931348623157e308" : stdgo.GoString), ("-1.7976931348623157e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.fffffffffffffp1023" : stdgo.GoString), ("1.7976931348623157e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x1.fffffffffffffp1023" : stdgo.GoString), ("-1.7976931348623157e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1fffffffffffffp+971" : stdgo.GoString), ("1.7976931348623157e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x1fffffffffffffp+971" : stdgo.GoString), ("-1.7976931348623157e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.1fffffffffffffp1027" : stdgo.GoString), ("1.7976931348623157e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x.1fffffffffffffp1027" : stdgo.GoString), ("-1.7976931348623157e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.7976931348623159e308" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-1.7976931348623159e308" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p1024" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x1p1024" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x2p1023" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x2p1023" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.1p1028" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x.1p1028" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.2p1027" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x.2p1027" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.7976931348623158e308" : stdgo.GoString), ("1.7976931348623157e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-1.7976931348623158e308" : stdgo.GoString), ("-1.7976931348623157e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.fffffffffffff7fffp1023" : stdgo.GoString), ("1.7976931348623157e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x1.fffffffffffff7fffp1023" : stdgo.GoString), ("-1.7976931348623157e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.797693134862315808e308" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-1.797693134862315808e308" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.fffffffffffff8p1023" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x1.fffffffffffff8p1023" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1fffffffffffff.8p+971" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x1fffffffffffff8p+967" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.1fffffffffffff8p1027" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x.1fffffffffffff9p1027" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e308" : stdgo.GoString), ("1e+308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("2e308" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e309" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p1025" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e310" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-1e310" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e400" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-1e400" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e400000" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-1e400000" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p1030" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p2000" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p2000000000" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x1p1030" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x1p2000" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x1p2000000000" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-305" : stdgo.GoString), ("1e-305" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-306" : stdgo.GoString), ("1e-306" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-307" : stdgo.GoString), ("1e-307" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-308" : stdgo.GoString), ("1e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-309" : stdgo.GoString), ("1e-309" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-310" : stdgo.GoString), ("1e-310" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-322" : stdgo.GoString), ("1e-322" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("5e-324" : stdgo.GoString), ("5e-324" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("4e-324" : stdgo.GoString), ("5e-324" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("3e-324" : stdgo.GoString), ("5e-324" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("2e-324" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-350" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-400000" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x2.00000000000000p-1010" : stdgo.GoString), ("1.8227805048890994e-304" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.fffffffffffff0p-1010" : stdgo.GoString), ("1.8227805048890992e-304" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.fffffffffffff7p-1010" : stdgo.GoString), ("1.8227805048890992e-304" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.fffffffffffff8p-1010" : stdgo.GoString), ("1.8227805048890994e-304" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.fffffffffffff9p-1010" : stdgo.GoString), ("1.8227805048890994e-304" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x2.00000000000000p-1022" : stdgo.GoString), ("4.450147717014403e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.fffffffffffff0p-1022" : stdgo.GoString), ("4.4501477170144023e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.fffffffffffff7p-1022" : stdgo.GoString), ("4.4501477170144023e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.fffffffffffff8p-1022" : stdgo.GoString), ("4.450147717014403e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.fffffffffffff9p-1022" : stdgo.GoString), ("4.450147717014403e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.00000000000000p-1022" : stdgo.GoString), ("2.2250738585072014e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.fffffffffffff0p-1022" : stdgo.GoString), ("2.225073858507201e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.ffffffffffffe0p-1022" : stdgo.GoString), ("2.2250738585072004e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.ffffffffffffe7p-1022" : stdgo.GoString), ("2.2250738585072004e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.ffffffffffffe8p-1023" : stdgo.GoString), ("2.225073858507201e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.ffffffffffffe9p-1023" : stdgo.GoString), ("2.225073858507201e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000003fffff0p-1022" : stdgo.GoString), ("2.072261e-317" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000003456780p-1022" : stdgo.GoString), ("1.694649e-317" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000003456787p-1022" : stdgo.GoString), ("1.694649e-317" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000003456788p-1022" : stdgo.GoString), ("1.694649e-317" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000003456790p-1022" : stdgo.GoString), ("1.6946496e-317" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000003456789p-1022" : stdgo.GoString), ("1.6946496e-317" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.0000000345678800000000000000000000000001p-1022" : stdgo.GoString), ("1.6946496e-317" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.000000000000f0p-1022" : stdgo.GoString), ("7.4e-323" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000000000060p-1022" : stdgo.GoString), ("3e-323" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000000000058p-1022" : stdgo.GoString), ("3e-323" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000000000057p-1022" : stdgo.GoString), ("2.5e-323" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000000000050p-1022" : stdgo.GoString), ("2.5e-323" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000000000010p-1022" : stdgo.GoString), ("5e-324" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.000000000000081p-1022" : stdgo.GoString), ("5e-324" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000000000008p-1022" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000000000007fp-1022" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-4294967296" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e+4294967296" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-18446744073709551616" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e+18446744073709551616" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p-4294967296" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p+4294967296" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p-18446744073709551616" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p+18446744073709551616" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest((".e-1" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(stdgo.Go.str("1", 0, ".2")?.__copy__(), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x." : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.1" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.1p" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p+" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.1p+" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p-" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.1p-" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p+2" : stdgo.GoString), ("4" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.1p+2" : stdgo.GoString), ("0.25" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p-2" : stdgo.GoString), ("0.25" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.1p-2" : stdgo.GoString), ("0.015625" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("2.2250738585072012e-308" : stdgo.GoString), ("2.2250738585072014e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("2.2250738585072011e-308" : stdgo.GoString), ("2.225073858507201e-308" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("4.630813248087435e+307" : stdgo.GoString), ("4.630813248087435e+307" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("22.222222222222222" : stdgo.GoString), ("22.22222222222222" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("2." : stdgo.GoString) + stdgo.strings.Strings.repeat(("2" : stdgo.GoString), (4000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("e+1" : stdgo.GoString)?.__copy__()?.__copy__(), ("22.22222222222222" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.1111111111111p222" : stdgo.GoString), ("7.18931911124017e+66" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x2.2222222222222p221" : stdgo.GoString), ("7.18931911124017e+66" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x2." : stdgo.GoString) + stdgo.strings.Strings.repeat(("2" : stdgo.GoString), (4000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("p221" : stdgo.GoString)?.__copy__()?.__copy__(), ("7.18931911124017e+66" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.00000000000000011102230246251565404236316680908203125" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.00000000000008p0" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.00000000000000011102230246251565404236316680908203124" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.00000000000007Fp0" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.00000000000000011102230246251565404236316680908203126" : stdgo.GoString), ("1.0000000000000002" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.000000000000081p0" : stdgo.GoString), ("1.0000000000000002" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.00000000000009p0" : stdgo.GoString), ("1.0000000000000002" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.00000000000000011102230246251565404236316680908203125" : stdgo.GoString) + stdgo.strings.Strings.repeat(("0" : stdgo.GoString), (10000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("1" : stdgo.GoString)?.__copy__()?.__copy__(), ("1.0000000000000002" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.00000000000008" : stdgo.GoString) + stdgo.strings.Strings.repeat(("0" : stdgo.GoString), (10000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("1p0" : stdgo.GoString)?.__copy__()?.__copy__(), ("1.0000000000000002" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.00000000000000033306690738754696212708950042724609375" : stdgo.GoString), ("1.0000000000000004" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.00000000000018p0" : stdgo.GoString), ("1.0000000000000004" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1090544144181609348671888949248" : stdgo.GoString), ("1.0905441441816093e+30" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1090544144181609348835077142190" : stdgo.GoString), ("1.0905441441816094e+30" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1_23.50_0_0e+1_2" : stdgo.GoString), ("1.235e+14" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-_123.5e+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("+_123.5e+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("_123.5e+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1__23.5e+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("123_.5e+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("123._5e+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("123.5_e+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("123.5__0e+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("123.5e_+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("123.5e+_12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("123.5e_-12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("123.5e-_12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("123.5e+1__2" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("123.5e+12_" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x_1_2.3_4_5p+1_2" : stdgo.GoString), ("74565" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-_0x12.345p+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("+_0x12.345p+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("_0x12.345p+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x__12.345p+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1__2.345p+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x12_.345p+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x12._345p+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x12.3__45p+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x12.345_p+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x12.345p_+12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x12.345p+_12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x12.345p_-12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x12.345p-_12" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x12.345p+1__2" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x12.345p+12_" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e100x" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e1000x" : stdgo.GoString), ("0" : stdgo.GoString), errSyntax) : stdgo.strconv_test.Strconv_test.T_atofTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atofTest>);
/**
    
    
    
**/
var _atof32tests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atofTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atofTest>(
54,
54,
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p-100" : stdgo.GoString), ("7.888609e-31" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1p100" : stdgo.GoString), ("1.2676506e+30" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.000000059604644775390625" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.000001p0" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.000000059604644775390624" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.0000008p0" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.000000fp0" : stdgo.GoString), ("1" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.000000059604644775390626" : stdgo.GoString), ("1.0000001" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.000002p0" : stdgo.GoString), ("1.0000001" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.0000018p0" : stdgo.GoString), ("1.0000001" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.0000011p0" : stdgo.GoString), ("1.0000001" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1.000000059604644775390625" : stdgo.GoString) + stdgo.strings.Strings.repeat(("0" : stdgo.GoString), (10000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("1" : stdgo.GoString)?.__copy__()?.__copy__(), ("1.0000001" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.000001" : stdgo.GoString) + stdgo.strings.Strings.repeat(("0" : stdgo.GoString), (10000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("1p0" : stdgo.GoString)?.__copy__()?.__copy__(), ("1.0000001" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("340282346638528859811704183484516925440" : stdgo.GoString), ("3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-340282346638528859811704183484516925440" : stdgo.GoString), ("-3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.ffffffp128" : stdgo.GoString), ("3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-340282346638528859811704183484516925440" : stdgo.GoString), ("-3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x.ffffffp128" : stdgo.GoString), ("-3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("3.4028236e38" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-3.4028236e38" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x1.0p128" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x1.0p128" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("3.402823567e38" : stdgo.GoString), ("3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-3.402823567e38" : stdgo.GoString), ("-3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.ffffff7fp128" : stdgo.GoString), ("3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x.ffffff7fp128" : stdgo.GoString), ("-3.4028235e+38" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("3.4028235678e38" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-3.4028235678e38" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x.ffffff8p128" : stdgo.GoString), ("+Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("-0x.ffffff8p128" : stdgo.GoString), ("-Inf" : stdgo.GoString), errRange) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-38" : stdgo.GoString), ("1e-38" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-39" : stdgo.GoString), ("1e-39" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-40" : stdgo.GoString), ("1e-40" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-41" : stdgo.GoString), ("1e-41" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-42" : stdgo.GoString), ("1e-42" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-43" : stdgo.GoString), ("1e-43" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-44" : stdgo.GoString), ("1e-44" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("6e-45" : stdgo.GoString), ("6e-45" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("5e-45" : stdgo.GoString), ("6e-45" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("1e-45" : stdgo.GoString), ("1e-45" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("2e-45" : stdgo.GoString), ("1e-45" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("3e-45" : stdgo.GoString), ("3e-45" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.89aBcDp-125" : stdgo.GoString), ("1.2643093e-38" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.8000000p-125" : stdgo.GoString), ("1.1754944e-38" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.1234560p-125" : stdgo.GoString), ("1.671814e-39" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.1234567p-125" : stdgo.GoString), ("1.671814e-39" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.1234568p-125" : stdgo.GoString), ("1.671814e-39" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.1234569p-125" : stdgo.GoString), ("1.671815e-39" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.1234570p-125" : stdgo.GoString), ("1.671815e-39" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.0000010p-125" : stdgo.GoString), ("1e-45" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.00000081p-125" : stdgo.GoString), ("1e-45" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.0000008p-125" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("0x0.0000007p-125" : stdgo.GoString), ("0" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest),
(new stdgo.strconv_test.Strconv_test.T_atofTest(("4951760157141521099596496896" : stdgo.GoString), ("4.9517602e+27" : stdgo.GoString), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atofTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atofTest>);
/**
    
    
    
**/
var _roundTripCases : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(2, 2, ({ _f : (4.87402195346389e+27 : stdgo.StdGoTypes.GoFloat64), _s : ("4.87402195346389e+27" : stdgo.GoString) } : T__struct_0), ({ _f : (4.8740219534638903e+27 : stdgo.StdGoTypes.GoFloat64), _s : ("4.8740219534638903e+27" : stdgo.GoString) } : T__struct_0)) : stdgo.Slice<T__struct_0>);
/**
    
    
    
**/
var _parseUint64Tests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseUint64Test> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseUint64Test>(
17,
17,
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(stdgo.Go.str()?.__copy__(), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("0" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("1" : stdgo.GoString), (1i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("12345" : stdgo.GoString), (12345i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("012345" : stdgo.GoString), (12345i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("12345x" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("98765432100" : stdgo.GoString), (98765432100i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("18446744073709551615" : stdgo.GoString), (-1i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("18446744073709551616" : stdgo.GoString), (-1i64 : stdgo.StdGoTypes.GoUInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("18446744073709551620" : stdgo.GoString), (-1i64 : stdgo.StdGoTypes.GoUInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("1_2_3_4_5" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("_12345" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("1__2345" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("12345_" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("-0" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("-1" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint64Test(("+1" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64Test)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseUint64Test>);
/**
    
    
    
**/
var _parseUint64BaseTests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest>(
75,
75,
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(stdgo.Go.str()?.__copy__(), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0x" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0X" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("1" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (1i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (12345i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("012345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (5349i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0x12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (74565i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0X12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (74565i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("12345x" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0xabcdefg123" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("123456789abc" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("98765432100" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (98765432100i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("18446744073709551615" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-1i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("18446744073709551616" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-1i64 : stdgo.StdGoTypes.GoUInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("18446744073709551620" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-1i64 : stdgo.StdGoTypes.GoUInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0xFFFFFFFFFFFFFFFF" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-1i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0x10000000000000000" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-1i64 : stdgo.StdGoTypes.GoUInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("01777777777777777777777" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-1i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("01777777777777777777778" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("02000000000000000000000" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-1i64 : stdgo.StdGoTypes.GoUInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0200000000000000000000" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (2305843009213693952i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0b" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0B" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0b101" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (5i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0B101" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (5i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0o" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0O" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0o377" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (255i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0O377" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (255i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("1_2_3_4_5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (12345i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("_12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("1__2345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("12345_" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("1_2_3_4_5" : stdgo.GoString), (10 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("_12345" : stdgo.GoString), (10 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("1__2345" : stdgo.GoString), (10 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("12345_" : stdgo.GoString), (10 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0x_1_2_3_4_5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (74565i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("_0x12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0x__12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0x1__2345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0x1234__5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0x12345_" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("1_2_3_4_5" : stdgo.GoString), (16 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("_12345" : stdgo.GoString), (16 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("1__2345" : stdgo.GoString), (16 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("1234__5" : stdgo.GoString), (16 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("12345_" : stdgo.GoString), (16 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0_1_2_3_4_5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (5349i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("_012345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0__12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("01234__5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("012345_" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0o_1_2_3_4_5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (5349i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("_0o12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0o__12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0o1234__5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0o12345_" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0_1_2_3_4_5" : stdgo.GoString), (8 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("_012345" : stdgo.GoString), (8 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0__12345" : stdgo.GoString), (8 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("01234__5" : stdgo.GoString), (8 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("012345_" : stdgo.GoString), (8 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0b_1_0_1" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (5i64 : stdgo.StdGoTypes.GoUInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("_0b101" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0b__101" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0b1__01" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0b10__1" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("0b101_" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("1_0_1" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("_101" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("1_01" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("10_1" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest(("101_" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest>);
/**
    
    
    
**/
var _parseInt64Tests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseInt64Test> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseInt64Test>(
25,
25,
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(stdgo.Go.str()?.__copy__(), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("0" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("-0" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("+0" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("1" : stdgo.GoString), (1i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("-1" : stdgo.GoString), (-1i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("+1" : stdgo.GoString), (1i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("12345" : stdgo.GoString), (12345i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("-12345" : stdgo.GoString), (-12345i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("012345" : stdgo.GoString), (12345i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("-012345" : stdgo.GoString), (-12345i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("98765432100" : stdgo.GoString), (98765432100i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("-98765432100" : stdgo.GoString), (-98765432100i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("9223372036854775807" : stdgo.GoString), (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("-9223372036854775807" : stdgo.GoString), (-9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("9223372036854775808" : stdgo.GoString), (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("-9223372036854775808" : stdgo.GoString), (-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("9223372036854775809" : stdgo.GoString), (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("-9223372036854775809" : stdgo.GoString), (-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("-1_2_3_4_5" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("-_12345" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("_12345" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("1__2345" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("12345_" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt64Test(("123%45" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64Test)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseInt64Test>);
/**
    
    
    
**/
var _parseInt64BaseTests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest>(
60,
60,
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(stdgo.Go.str()?.__copy__(), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("0" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-0" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("1" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (1i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-1" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-1i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (12345i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-12345i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("012345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (5349i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-012345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-5349i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("0x12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (74565i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-0X12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-74565i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("12345x" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-12345x" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("98765432100" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (98765432100i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-98765432100" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-98765432100i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("9223372036854775807" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-9223372036854775807" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("9223372036854775808" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-9223372036854775808" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("9223372036854775809" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-9223372036854775809" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("g" : stdgo.GoString), (17 : stdgo.StdGoTypes.GoInt), (16i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("10" : stdgo.GoString), (25 : stdgo.StdGoTypes.GoInt), (25i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("holycow" : stdgo.GoString), (35 : stdgo.StdGoTypes.GoInt), (32544027072i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("holycow" : stdgo.GoString), (36 : stdgo.StdGoTypes.GoInt), (38493362624i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("0" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-1" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (-1i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("1010" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (10i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("1000000000000000" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (32768i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("111111111111111111111111111111111111111111111111111111111111111" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("1000000000000000000000000000000000000000000000000000000000000000" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-1000000000000000000000000000000000000000000000000000000000000000" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-1000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString), (2 : stdgo.StdGoTypes.GoInt), (-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-10" : stdgo.GoString), (8 : stdgo.StdGoTypes.GoInt), (-8i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("57635436545" : stdgo.GoString), (8 : stdgo.StdGoTypes.GoInt), (6416645477i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("100000000" : stdgo.GoString), (8 : stdgo.StdGoTypes.GoInt), (16777216i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("10" : stdgo.GoString), (16 : stdgo.StdGoTypes.GoInt), (16i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-123456789abcdef" : stdgo.GoString), (16 : stdgo.StdGoTypes.GoInt), (-81985529216486895i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("7fffffffffffffff" : stdgo.GoString), (16 : stdgo.StdGoTypes.GoInt), (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-0x_1_2_3_4_5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-74565i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("0x_1_2_3_4_5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (74565i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-_0x12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("_-0x12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("_0x12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("0x__12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("0x1__2345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("0x1234__5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("0x12345_" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-0_1_2_3_4_5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-5349i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("0_1_2_3_4_5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (5349i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-_012345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("_-012345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("_012345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("0__12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("01234__5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("012345_" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("+0xf" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (15i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("-0xf" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (-15i64 : stdgo.StdGoTypes.GoInt64), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("0x+f" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest),
(new stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest(("0x-f" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoInt64), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest>);
/**
    
    
    
**/
var _parseUint32Tests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseUint32Test> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseUint32Test>(
14,
14,
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(stdgo.Go.str()?.__copy__(), (0u32 : stdgo.StdGoTypes.GoUInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("0" : stdgo.GoString), (0u32 : stdgo.StdGoTypes.GoUInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("1" : stdgo.GoString), (1u32 : stdgo.StdGoTypes.GoUInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("12345" : stdgo.GoString), (12345u32 : stdgo.StdGoTypes.GoUInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("012345" : stdgo.GoString), (12345u32 : stdgo.StdGoTypes.GoUInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("12345x" : stdgo.GoString), (0u32 : stdgo.StdGoTypes.GoUInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("987654321" : stdgo.GoString), (987654321u32 : stdgo.StdGoTypes.GoUInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("4294967295" : stdgo.GoString), (-1u32 : stdgo.StdGoTypes.GoUInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("4294967296" : stdgo.GoString), (-1u32 : stdgo.StdGoTypes.GoUInt32), errRange) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("1_2_3_4_5" : stdgo.GoString), (0u32 : stdgo.StdGoTypes.GoUInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("_12345" : stdgo.GoString), (0u32 : stdgo.StdGoTypes.GoUInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("_12345" : stdgo.GoString), (0u32 : stdgo.StdGoTypes.GoUInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("1__2345" : stdgo.GoString), (0u32 : stdgo.StdGoTypes.GoUInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test),
(new stdgo.strconv_test.Strconv_test.T_parseUint32Test(("12345_" : stdgo.GoString), (0u32 : stdgo.StdGoTypes.GoUInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseUint32Test)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseUint32Test>);
/**
    
    
    
**/
var _parseInt32Tests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseInt32Test> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseInt32Test>(
25,
25,
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(stdgo.Go.str()?.__copy__(), (0 : stdgo.StdGoTypes.GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("0" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("-0" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("1" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("-1" : stdgo.GoString), (-1 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("12345" : stdgo.GoString), (12345 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("-12345" : stdgo.GoString), (-12345 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("012345" : stdgo.GoString), (12345 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("-012345" : stdgo.GoString), (-12345 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("12345x" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("-12345x" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("987654321" : stdgo.GoString), (987654321 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("-987654321" : stdgo.GoString), (-987654321 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("2147483647" : stdgo.GoString), (2147483647 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("-2147483647" : stdgo.GoString), (-2147483647 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("2147483648" : stdgo.GoString), (2147483647 : stdgo.StdGoTypes.GoInt32), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("-2147483648" : stdgo.GoString), (-2147483648 : stdgo.StdGoTypes.GoInt32), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("2147483649" : stdgo.GoString), (2147483647 : stdgo.StdGoTypes.GoInt32), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("-2147483649" : stdgo.GoString), (-2147483648 : stdgo.StdGoTypes.GoInt32), errRange) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("-1_2_3_4_5" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("-_12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("_12345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("1__2345" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("12345_" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test),
(new stdgo.strconv_test.Strconv_test.T_parseInt32Test(("123%45" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt32), errSyntax) : stdgo.strconv_test.Strconv_test.T_parseInt32Test)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseInt32Test>);
/**
    
    
    
**/
var _numErrorTests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_numErrorTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_numErrorTest>(3, 3, (new stdgo.strconv_test.Strconv_test.T_numErrorTest(("0" : stdgo.GoString), ("strconv.ParseFloat: parsing \"0\": failed" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_numErrorTest), (new stdgo.strconv_test.Strconv_test.T_numErrorTest(("`" : stdgo.GoString), ("strconv.ParseFloat: parsing \"`\": failed" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_numErrorTest), (new stdgo.strconv_test.Strconv_test.T_numErrorTest(stdgo.Go.str("1", 0, ".2")?.__copy__(), ("strconv.ParseFloat: parsing \"1\\x00.2\": failed" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_numErrorTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_numErrorTest>);
/**
    
    
    
**/
var _parseBitSizeTests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseErrorTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseErrorTest>(4, 4, (new stdgo.strconv_test.Strconv_test.T_parseErrorTest((-1 : stdgo.StdGoTypes.GoInt), _bitSizeErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest), (new stdgo.strconv_test.Strconv_test.T_parseErrorTest((0 : stdgo.StdGoTypes.GoInt), _noErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest), (new stdgo.strconv_test.Strconv_test.T_parseErrorTest((64 : stdgo.StdGoTypes.GoInt), _noErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest), (new stdgo.strconv_test.Strconv_test.T_parseErrorTest((65 : stdgo.StdGoTypes.GoInt), _bitSizeErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseErrorTest>);
/**
    
    
    
**/
var _parseBaseTests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseErrorTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseErrorTest>(6, 6, (new stdgo.strconv_test.Strconv_test.T_parseErrorTest((-1 : stdgo.StdGoTypes.GoInt), _baseErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest), (new stdgo.strconv_test.Strconv_test.T_parseErrorTest((0 : stdgo.StdGoTypes.GoInt), _noErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest), (new stdgo.strconv_test.Strconv_test.T_parseErrorTest((1 : stdgo.StdGoTypes.GoInt), _baseErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest), (new stdgo.strconv_test.Strconv_test.T_parseErrorTest((2 : stdgo.StdGoTypes.GoInt), _noErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest), (new stdgo.strconv_test.Strconv_test.T_parseErrorTest((36 : stdgo.StdGoTypes.GoInt), _noErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest), (new stdgo.strconv_test.Strconv_test.T_parseErrorTest((37 : stdgo.StdGoTypes.GoInt), _baseErrStub) : stdgo.strconv_test.Strconv_test.T_parseErrorTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_parseErrorTest>);
/**
    
    
    
**/
var _shifttests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_shiftTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_shiftTest>(8, 8, (new stdgo.strconv_test.Strconv_test.T_shiftTest((0i64 : stdgo.StdGoTypes.GoUInt64), (-100 : stdgo.StdGoTypes.GoInt), ("0" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_shiftTest), (new stdgo.strconv_test.Strconv_test.T_shiftTest((0i64 : stdgo.StdGoTypes.GoUInt64), (100 : stdgo.StdGoTypes.GoInt), ("0" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_shiftTest), (new stdgo.strconv_test.Strconv_test.T_shiftTest((1i64 : stdgo.StdGoTypes.GoUInt64), (100 : stdgo.StdGoTypes.GoInt), ("1267650600228229401496703205376" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_shiftTest), (new stdgo.strconv_test.Strconv_test.T_shiftTest((1i64 : stdgo.StdGoTypes.GoUInt64), (-100 : stdgo.StdGoTypes.GoInt), ("0.0000000000000000000000000000007888609052210118054117285652827862296732064351090230047702789306640625" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_shiftTest), (new stdgo.strconv_test.Strconv_test.T_shiftTest((12345678i64 : stdgo.StdGoTypes.GoUInt64), (8 : stdgo.StdGoTypes.GoInt), ("3160493568" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_shiftTest), (new stdgo.strconv_test.Strconv_test.T_shiftTest((12345678i64 : stdgo.StdGoTypes.GoUInt64), (-8 : stdgo.StdGoTypes.GoInt), ("48225.3046875" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_shiftTest), (new stdgo.strconv_test.Strconv_test.T_shiftTest((195312i64 : stdgo.StdGoTypes.GoUInt64), (9 : stdgo.StdGoTypes.GoInt), ("99999744" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_shiftTest), (new stdgo.strconv_test.Strconv_test.T_shiftTest((1953125i64 : stdgo.StdGoTypes.GoUInt64), (9 : stdgo.StdGoTypes.GoInt), ("1000000000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_shiftTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_shiftTest>);
/**
    
    
    
**/
var _roundtests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_roundTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_roundTest>(
13,
13,
(new stdgo.strconv_test.Strconv_test.T_roundTest((0i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("0" : stdgo.GoString), ("0" : stdgo.GoString), ("0" : stdgo.GoString), (0i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
(new stdgo.strconv_test.Strconv_test.T_roundTest((12344999i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("12340000" : stdgo.GoString), ("12340000" : stdgo.GoString), ("12350000" : stdgo.GoString), (12340000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
(new stdgo.strconv_test.Strconv_test.T_roundTest((12345000i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("12340000" : stdgo.GoString), ("12340000" : stdgo.GoString), ("12350000" : stdgo.GoString), (12340000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
(new stdgo.strconv_test.Strconv_test.T_roundTest((12345001i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("12340000" : stdgo.GoString), ("12350000" : stdgo.GoString), ("12350000" : stdgo.GoString), (12350000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
(new stdgo.strconv_test.Strconv_test.T_roundTest((23454999i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("23450000" : stdgo.GoString), ("23450000" : stdgo.GoString), ("23460000" : stdgo.GoString), (23450000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
(new stdgo.strconv_test.Strconv_test.T_roundTest((23455000i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("23450000" : stdgo.GoString), ("23460000" : stdgo.GoString), ("23460000" : stdgo.GoString), (23460000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
(new stdgo.strconv_test.Strconv_test.T_roundTest((23455001i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("23450000" : stdgo.GoString), ("23460000" : stdgo.GoString), ("23460000" : stdgo.GoString), (23460000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
(new stdgo.strconv_test.Strconv_test.T_roundTest((99994999i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("99990000" : stdgo.GoString), ("99990000" : stdgo.GoString), ("100000000" : stdgo.GoString), (99990000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
(new stdgo.strconv_test.Strconv_test.T_roundTest((99995000i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("99990000" : stdgo.GoString), ("100000000" : stdgo.GoString), ("100000000" : stdgo.GoString), (100000000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
(new stdgo.strconv_test.Strconv_test.T_roundTest((99999999i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("99990000" : stdgo.GoString), ("100000000" : stdgo.GoString), ("100000000" : stdgo.GoString), (100000000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
(new stdgo.strconv_test.Strconv_test.T_roundTest((12994999i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("12990000" : stdgo.GoString), ("12990000" : stdgo.GoString), ("13000000" : stdgo.GoString), (12990000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
(new stdgo.strconv_test.Strconv_test.T_roundTest((12995000i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("12990000" : stdgo.GoString), ("13000000" : stdgo.GoString), ("13000000" : stdgo.GoString), (13000000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest),
(new stdgo.strconv_test.Strconv_test.T_roundTest((12999999i64 : stdgo.StdGoTypes.GoUInt64), (4 : stdgo.StdGoTypes.GoInt), ("12990000" : stdgo.GoString), ("13000000" : stdgo.GoString), ("13000000" : stdgo.GoString), (13000000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_roundTest>);
/**
    
    
    
**/
var _roundinttests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_roundIntTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_roundIntTest>(
10,
10,
(new stdgo.strconv_test.Strconv_test.T_roundIntTest((0i64 : stdgo.StdGoTypes.GoUInt64), (100 : stdgo.StdGoTypes.GoInt), (0i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
(new stdgo.strconv_test.Strconv_test.T_roundIntTest((512i64 : stdgo.StdGoTypes.GoUInt64), (-8 : stdgo.StdGoTypes.GoInt), (2i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
(new stdgo.strconv_test.Strconv_test.T_roundIntTest((513i64 : stdgo.StdGoTypes.GoUInt64), (-8 : stdgo.StdGoTypes.GoInt), (2i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
(new stdgo.strconv_test.Strconv_test.T_roundIntTest((640i64 : stdgo.StdGoTypes.GoUInt64), (-8 : stdgo.StdGoTypes.GoInt), (2i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
(new stdgo.strconv_test.Strconv_test.T_roundIntTest((641i64 : stdgo.StdGoTypes.GoUInt64), (-8 : stdgo.StdGoTypes.GoInt), (3i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
(new stdgo.strconv_test.Strconv_test.T_roundIntTest((384i64 : stdgo.StdGoTypes.GoUInt64), (-8 : stdgo.StdGoTypes.GoInt), (2i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
(new stdgo.strconv_test.Strconv_test.T_roundIntTest((385i64 : stdgo.StdGoTypes.GoUInt64), (-8 : stdgo.StdGoTypes.GoInt), (2i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
(new stdgo.strconv_test.Strconv_test.T_roundIntTest((383i64 : stdgo.StdGoTypes.GoUInt64), (-8 : stdgo.StdGoTypes.GoInt), (1i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
(new stdgo.strconv_test.Strconv_test.T_roundIntTest((1i64 : stdgo.StdGoTypes.GoUInt64), (100 : stdgo.StdGoTypes.GoInt), (-1i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest),
(new stdgo.strconv_test.Strconv_test.T_roundIntTest((1000i64 : stdgo.StdGoTypes.GoUInt64), (0 : stdgo.StdGoTypes.GoInt), (1000i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.strconv_test.Strconv_test.T_roundIntTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_roundIntTest>);
/**
    
    
    
**/
var _ftoatests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_ftoaTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_ftoaTest>(
113,
113,
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("1.00000e+00" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("1.00000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("1" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("1" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("0x1p+00" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("0x1.00000p+00" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((20 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("20" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((20 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("0x1.4p+04" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345678e+06 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("1.2345678e+06" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345678e+06 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("0x1.2d687cccccccdp+20" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((200000 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("200000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((200000 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("0x1.86ap+17" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((200000 : stdgo.StdGoTypes.GoFloat64), (88 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("0X1.86AP+17" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2e+06 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("2e+06" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+10 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("1e+10" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((400 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoInt), ("4e+02" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((40 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoInt), ("40" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((4 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoInt), ("4" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.4 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoInt), ("0.4" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.04 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoInt), ("0.04" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.004 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoInt), ("0.004" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.0004 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoInt), ("0.0004" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((4e-05 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoInt), ("4e-05" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((4e-06 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoInt), ("4e-06" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("0.00000e+00" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("0.00000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("0" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("0" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("0x0.00000p+00" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((-1 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("-1.00000e+00" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((-1 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("-1.00000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((-1 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("-1" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((-1 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("-1" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((12 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("1.20000e+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((12 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("12.00000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((12 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("12" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((12 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("12" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.234567e+08 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("1.23457e+08" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.234567e+08 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("123456700.00000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.234567e+08 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("1.2346e+08" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.234567e+08 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("1.234567e+08" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345e+06 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("1.23450e+06" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345e+06 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("1234500.00000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345e+06 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), ("1.2345e+06" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345e+06 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoInt), ("1.234e+06" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2355e+06 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoInt), ("1.236e+06" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoInt), ("1.234" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2355 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoInt), ("1.236" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345678901234565e+15 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (15 : stdgo.StdGoTypes.GoInt), ("1.234567890123456e+15" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.2345678901234575e+15 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (15 : stdgo.StdGoTypes.GoInt), ("1.234567890123458e+15" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0867823635813762e+14 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("1.0867823635813762e+14" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+23 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoInt), ("9.99999999999999916e+22" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+23 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoInt), ("99999999999999991611392.00000000000000000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+23 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoInt), ("9.9999999999999992e+22" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+23 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("1e+23" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+23 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("100000000000000000000000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1e+23 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("1e+23" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((9.999999999999997e+22 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoInt), ("9.99999999999999748e+22" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((9.999999999999997e+22 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoInt), ("99999999999999974834176.00000000000000000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((9.999999999999997e+22 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoInt), ("9.9999999999999975e+22" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((9.999999999999997e+22 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("9.999999999999997e+22" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((9.999999999999997e+22 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("99999999999999970000000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((9.999999999999997e+22 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("9.999999999999997e+22" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0000000000000001e+23 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoInt), ("1.00000000000000008e+23" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0000000000000001e+23 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoInt), ("100000000000000008388608.00000000000000000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0000000000000001e+23 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoInt), ("1.0000000000000001e+23" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0000000000000001e+23 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("1.0000000000000001e+23" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0000000000000001e+23 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("100000000000000010000000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.0000000000000001e+23 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("1.0000000000000001e+23" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest(_fdiv((5e-304 : stdgo.StdGoTypes.GoFloat64), (1e+20 : stdgo.StdGoTypes.GoFloat64)), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("5e-324" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest(_fdiv((-5e-304 : stdgo.StdGoTypes.GoFloat64), (1e+20 : stdgo.StdGoTypes.GoFloat64)), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("-5e-324" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((32 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("32" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((32 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoInt), ("3e+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((100 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("0x1.9p+06" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((100 : stdgo.StdGoTypes.GoFloat64), (121 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("%y" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest(stdgo.math.Math.naN(), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("NaN" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest(-stdgo.math.Math.naN(), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("NaN" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest(stdgo.math.Math.inf((0 : stdgo.StdGoTypes.GoInt)), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("+Inf" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest(stdgo.math.Math.inf((-1 : stdgo.StdGoTypes.GoInt)), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("-Inf" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest(-stdgo.math.Math.inf((0 : stdgo.StdGoTypes.GoInt)), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("-Inf" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((-1 : stdgo.StdGoTypes.GoFloat64), (98 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("-4503599627370496p-52" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.9 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoInt), ("0.9" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.09 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoInt), ("0.1" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.0999 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoInt), ("0.1" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.05 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoInt), ("0.1" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.05 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoInt), ("0" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.5 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoInt), ("0.5" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((0.5 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoInt), ("0" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((1.5 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoInt), ("2" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.2250738585072014e-308 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("2.2250738585072014e-308" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.225073858507201e-308 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("2.225073858507201e-308" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.8326057576481645e+17 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoInt), ("383260575764816448" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.8326057576481645e+17 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("3.8326057576481645e+17" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((4.9848468198408557e+17 : stdgo.StdGoTypes.GoFloat64), (102 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("498484681984085570" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((-5.8339553793802237e+23 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("-5.8339553793802237e+23" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((123.45 : stdgo.StdGoTypes.GoFloat64), (63 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoInt), ("%?" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((123.45 : stdgo.StdGoTypes.GoFloat64), (63 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoInt), ("%?" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((123.45 : stdgo.StdGoTypes.GoFloat64), (63 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("%?" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555555555555 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("0x1.23456789abcdep+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555555555555 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoInt), ("0x1p+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555555555555 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoInt), ("0x1.23p+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555555555555 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (16 : stdgo.StdGoTypes.GoInt), ("0x1.23456789abcde000p+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555555555555 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (21 : stdgo.StdGoTypes.GoInt), ("0x1.23456789abcde00000000p+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.2755555510520935 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("0x1.2345678p+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.2755555510520935 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (6 : stdgo.StdGoTypes.GoInt), ("0x1.234568p+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555431842804 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("0x1.2345668p+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((2.275555431842804 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (6 : stdgo.StdGoTypes.GoInt), ("0x1.234566p+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.999969482421875 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), ("0x1.ffffp+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.999969482421875 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (4 : stdgo.StdGoTypes.GoInt), ("0x1.ffffp+01" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.999969482421875 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoInt), ("0x1.000p+02" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.999969482421875 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoInt), ("0x1.00p+02" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.999969482421875 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoInt), ("0x1.0p+02" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest),
(new stdgo.strconv_test.Strconv_test.T_ftoaTest((3.999969482421875 : stdgo.StdGoTypes.GoFloat64), (120 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoInt), ("0x1p+02" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_ftoaTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_ftoaTest>);
/**
    
    
    
**/
var _ftoaBenches : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(
26,
26,
({ _name : ("Decimal" : stdgo.GoString), _float : (33909 : stdgo.StdGoTypes.GoFloat64), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("Float" : stdgo.GoString), _float : (339.7784 : stdgo.StdGoTypes.GoFloat64), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("Exp" : stdgo.GoString), _float : (-5.09e+75 : stdgo.StdGoTypes.GoFloat64), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("NegExp" : stdgo.GoString), _float : (-5.11e-95 : stdgo.StdGoTypes.GoFloat64), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("LongExp" : stdgo.GoString), _float : (1.234567890123456e-78 : stdgo.StdGoTypes.GoFloat64), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("Big" : stdgo.GoString), _float : (1.2345678912345679e+26 : stdgo.StdGoTypes.GoFloat64), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("BinaryExp" : stdgo.GoString), _float : (-1 : stdgo.StdGoTypes.GoFloat64), _fmt : (98 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("32Integer" : stdgo.GoString), _float : (33909 : stdgo.StdGoTypes.GoFloat64), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (32 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("32ExactFraction" : stdgo.GoString), _float : (3.375 : stdgo.StdGoTypes.GoFloat64), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (32 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("32Point" : stdgo.GoString), _float : (339.7784 : stdgo.StdGoTypes.GoFloat64), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (32 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("32Exp" : stdgo.GoString), _float : (-5.09e+25 : stdgo.StdGoTypes.GoFloat64), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (32 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("32NegExp" : stdgo.GoString), _float : (-5.11e-25 : stdgo.StdGoTypes.GoFloat64), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (32 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("32Shortest" : stdgo.GoString), _float : (1.234567e-08 : stdgo.StdGoTypes.GoFloat64), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (32 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("32Fixed8Hard" : stdgo.GoString), _float : stdgo.math.Math.ldexp((1.5961084e+07 : stdgo.StdGoTypes.GoFloat64), (-125 : stdgo.StdGoTypes.GoInt)), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (8 : stdgo.StdGoTypes.GoInt), _bitSize : (32 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("32Fixed9Hard" : stdgo.GoString), _float : stdgo.math.Math.ldexp((1.4855922e+07 : stdgo.StdGoTypes.GoFloat64), (-83 : stdgo.StdGoTypes.GoInt)), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (9 : stdgo.StdGoTypes.GoInt), _bitSize : (32 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("64Fixed1" : stdgo.GoString), _float : (123456 : stdgo.StdGoTypes.GoFloat64), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (3 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("64Fixed2" : stdgo.GoString), _float : (123.456 : stdgo.StdGoTypes.GoFloat64), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (3 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("64Fixed3" : stdgo.GoString), _float : (1.23456e+78 : stdgo.StdGoTypes.GoFloat64), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (3 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("64Fixed4" : stdgo.GoString), _float : (1.23456e-78 : stdgo.StdGoTypes.GoFloat64), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (3 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("64Fixed12" : stdgo.GoString), _float : (1.23456e-78 : stdgo.StdGoTypes.GoFloat64), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (12 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("64Fixed16" : stdgo.GoString), _float : (1.23456e-78 : stdgo.StdGoTypes.GoFloat64), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (16 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("64Fixed12Hard" : stdgo.GoString), _float : stdgo.math.Math.ldexp((6.965949469487146e+15 : stdgo.StdGoTypes.GoFloat64), (-249 : stdgo.StdGoTypes.GoInt)), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (12 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("64Fixed17Hard" : stdgo.GoString), _float : stdgo.math.Math.ldexp((8.887055249355788e+15 : stdgo.StdGoTypes.GoFloat64), (665 : stdgo.StdGoTypes.GoInt)), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (17 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("64Fixed18Hard" : stdgo.GoString), _float : stdgo.math.Math.ldexp((6.994187472632449e+15 : stdgo.StdGoTypes.GoFloat64), (690 : stdgo.StdGoTypes.GoInt)), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (18 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("Slowpath64" : stdgo.GoString), _float : (8.034137530808823e+43 : stdgo.StdGoTypes.GoFloat64), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2),
({ _name : ("SlowpathDenormal64" : stdgo.GoString), _float : (6.226662346353213e-309 : stdgo.StdGoTypes.GoFloat64), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2)) : stdgo.Slice<T__struct_2>);
/**
    
    
    
**/
var _itob64tests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_itob64Test> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_itob64Test>(
37,
37,
(new stdgo.strconv_test.Strconv_test.T_itob64Test((0i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("0" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((1i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("1" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-1i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("-1" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((12345678i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("12345678" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-987654321i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("-987654321" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((2147483647i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("2147483647" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-2147483647i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("-2147483647" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((2147483648i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("2147483648" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-2147483648i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("-2147483648" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((2147483649i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("2147483649" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-2147483649i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("-2147483649" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((4294967295i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("4294967295" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-4294967295i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("-4294967295" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((4294967296i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("4294967296" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-4294967296i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("-4294967296" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((4294967297i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("4294967297" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-4294967297i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("-4294967297" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((1125899906842624i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("1125899906842624" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("9223372036854775807" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("-9223372036854775807" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt), ("-9223372036854775808" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((0i64 : stdgo.StdGoTypes.GoInt64), (2 : stdgo.StdGoTypes.GoInt), ("0" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((10i64 : stdgo.StdGoTypes.GoInt64), (2 : stdgo.StdGoTypes.GoInt), ("1010" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-1i64 : stdgo.StdGoTypes.GoInt64), (2 : stdgo.StdGoTypes.GoInt), ("-1" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((32768i64 : stdgo.StdGoTypes.GoInt64), (2 : stdgo.StdGoTypes.GoInt), ("1000000000000000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-8i64 : stdgo.StdGoTypes.GoInt64), (8 : stdgo.StdGoTypes.GoInt), ("-10" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((6416645477i64 : stdgo.StdGoTypes.GoInt64), (8 : stdgo.StdGoTypes.GoInt), ("57635436545" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((16777216i64 : stdgo.StdGoTypes.GoInt64), (8 : stdgo.StdGoTypes.GoInt), ("100000000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((16i64 : stdgo.StdGoTypes.GoInt64), (16 : stdgo.StdGoTypes.GoInt), ("10" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-81985529216486895i64 : stdgo.StdGoTypes.GoInt64), (16 : stdgo.StdGoTypes.GoInt), ("-123456789abcdef" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), (16 : stdgo.StdGoTypes.GoInt), ("7fffffffffffffff" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), (2 : stdgo.StdGoTypes.GoInt), ("111111111111111111111111111111111111111111111111111111111111111" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64), (2 : stdgo.StdGoTypes.GoInt), ("-1000000000000000000000000000000000000000000000000000000000000000" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((16i64 : stdgo.StdGoTypes.GoInt64), (17 : stdgo.StdGoTypes.GoInt), ("g" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((25i64 : stdgo.StdGoTypes.GoInt64), (25 : stdgo.StdGoTypes.GoInt), ("10" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((32544027072i64 : stdgo.StdGoTypes.GoInt64), (35 : stdgo.StdGoTypes.GoInt), ("holycow" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test),
(new stdgo.strconv_test.Strconv_test.T_itob64Test((38493362624i64 : stdgo.StdGoTypes.GoInt64), (36 : stdgo.StdGoTypes.GoInt), ("holycow" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_itob64Test)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_itob64Test>);
/**
    
    
    
**/
var _uitob64tests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_uitob64Test> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_uitob64Test>(6, 6, (new stdgo.strconv_test.Strconv_test.T_uitob64Test((9223372036854775807i64 : stdgo.StdGoTypes.GoUInt64), (10 : stdgo.StdGoTypes.GoInt), ("9223372036854775807" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_uitob64Test), (new stdgo.strconv_test.Strconv_test.T_uitob64Test((-9223372036854775808i64 : stdgo.StdGoTypes.GoUInt64), (10 : stdgo.StdGoTypes.GoInt), ("9223372036854775808" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_uitob64Test), (new stdgo.strconv_test.Strconv_test.T_uitob64Test((-9223372036854775807i64 : stdgo.StdGoTypes.GoUInt64), (10 : stdgo.StdGoTypes.GoInt), ("9223372036854775809" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_uitob64Test), (new stdgo.strconv_test.Strconv_test.T_uitob64Test((-2i64 : stdgo.StdGoTypes.GoUInt64), (10 : stdgo.StdGoTypes.GoInt), ("18446744073709551614" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_uitob64Test), (new stdgo.strconv_test.Strconv_test.T_uitob64Test((-1i64 : stdgo.StdGoTypes.GoUInt64), (10 : stdgo.StdGoTypes.GoInt), ("18446744073709551615" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_uitob64Test), (new stdgo.strconv_test.Strconv_test.T_uitob64Test((-1i64 : stdgo.StdGoTypes.GoUInt64), (2 : stdgo.StdGoTypes.GoInt), ("1111111111111111111111111111111111111111111111111111111111111111" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_uitob64Test)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_uitob64Test>);
/**
    
    
    
**/
var _varlenUints : stdgo.Slice<T__struct_3> = (new stdgo.Slice<T__struct_3>(
20,
20,
({ _in : (1i64 : stdgo.StdGoTypes.GoUInt64), _out : ("1" : stdgo.GoString) } : T__struct_3),
({ _in : (12i64 : stdgo.StdGoTypes.GoUInt64), _out : ("12" : stdgo.GoString) } : T__struct_3),
({ _in : (123i64 : stdgo.StdGoTypes.GoUInt64), _out : ("123" : stdgo.GoString) } : T__struct_3),
({ _in : (1234i64 : stdgo.StdGoTypes.GoUInt64), _out : ("1234" : stdgo.GoString) } : T__struct_3),
({ _in : (12345i64 : stdgo.StdGoTypes.GoUInt64), _out : ("12345" : stdgo.GoString) } : T__struct_3),
({ _in : (123456i64 : stdgo.StdGoTypes.GoUInt64), _out : ("123456" : stdgo.GoString) } : T__struct_3),
({ _in : (1234567i64 : stdgo.StdGoTypes.GoUInt64), _out : ("1234567" : stdgo.GoString) } : T__struct_3),
({ _in : (12345678i64 : stdgo.StdGoTypes.GoUInt64), _out : ("12345678" : stdgo.GoString) } : T__struct_3),
({ _in : (123456789i64 : stdgo.StdGoTypes.GoUInt64), _out : ("123456789" : stdgo.GoString) } : T__struct_3),
({ _in : (1234567890i64 : stdgo.StdGoTypes.GoUInt64), _out : ("1234567890" : stdgo.GoString) } : T__struct_3),
({ _in : (12345678901i64 : stdgo.StdGoTypes.GoUInt64), _out : ("12345678901" : stdgo.GoString) } : T__struct_3),
({ _in : (123456789012i64 : stdgo.StdGoTypes.GoUInt64), _out : ("123456789012" : stdgo.GoString) } : T__struct_3),
({ _in : (1234567890123i64 : stdgo.StdGoTypes.GoUInt64), _out : ("1234567890123" : stdgo.GoString) } : T__struct_3),
({ _in : (12345678901234i64 : stdgo.StdGoTypes.GoUInt64), _out : ("12345678901234" : stdgo.GoString) } : T__struct_3),
({ _in : (123456789012345i64 : stdgo.StdGoTypes.GoUInt64), _out : ("123456789012345" : stdgo.GoString) } : T__struct_3),
({ _in : (1234567890123456i64 : stdgo.StdGoTypes.GoUInt64), _out : ("1234567890123456" : stdgo.GoString) } : T__struct_3),
({ _in : (12345678901234567i64 : stdgo.StdGoTypes.GoUInt64), _out : ("12345678901234567" : stdgo.GoString) } : T__struct_3),
({ _in : (123456789012345678i64 : stdgo.StdGoTypes.GoUInt64), _out : ("123456789012345678" : stdgo.GoString) } : T__struct_3),
({ _in : (1234567890123456789i64 : stdgo.StdGoTypes.GoUInt64), _out : ("1234567890123456789" : stdgo.GoString) } : T__struct_3),
({ _in : (-6101065172474983726i64 : stdgo.StdGoTypes.GoUInt64), _out : ("12345678901234567890" : stdgo.GoString) } : T__struct_3)) : stdgo.Slice<T__struct_3>);
/**
    
    
    
**/
var _quotetests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_quoteTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_quoteTest>(8, 8, (new stdgo.strconv_test.Strconv_test.T_quoteTest(("\x07\x08\x0C\r\n\t\x0B" : stdgo.GoString), ("\"\\a\\b\\f\\r\\n\\t\\v\"" : stdgo.GoString), ("\"\\a\\b\\f\\r\\n\\t\\v\"" : stdgo.GoString), ("\"\\a\\b\\f\\r\\n\\t\\v\"" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteTest), (new stdgo.strconv_test.Strconv_test.T_quoteTest(("\\" : stdgo.GoString), ("\"\\\\\"" : stdgo.GoString), ("\"\\\\\"" : stdgo.GoString), ("\"\\\\\"" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteTest), (new stdgo.strconv_test.Strconv_test.T_quoteTest(stdgo.Go.str("abc", 255, "def")?.__copy__(), ("\"abc\\xffdef\"" : stdgo.GoString), ("\"abc\\xffdef\"" : stdgo.GoString), ("\"abc\\xffdef\"" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteTest), (new stdgo.strconv_test.Strconv_test.T_quoteTest(("☺" : stdgo.GoString), ("\"☺\"" : stdgo.GoString), ("\"\\u263a\"" : stdgo.GoString), ("\"☺\"" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteTest), (new stdgo.strconv_test.Strconv_test.T_quoteTest(("\u{0010ffff}" : stdgo.GoString), ("\"\\U0010ffff\"" : stdgo.GoString), ("\"\\U0010ffff\"" : stdgo.GoString), ("\"\\U0010ffff\"" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteTest), (new stdgo.strconv_test.Strconv_test.T_quoteTest(stdgo.Go.str(4)?.__copy__(), ("\"\\x04\"" : stdgo.GoString), ("\"\\x04\"" : stdgo.GoString), ("\"\\x04\"" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteTest), (new stdgo.strconv_test.Strconv_test.T_quoteTest(("!\u00a0!\u2000!\u3000!" : stdgo.GoString), ("\"!\\u00a0!\\u2000!\\u3000!\"" : stdgo.GoString), ("\"!\\u00a0!\\u2000!\\u3000!\"" : stdgo.GoString), ("\"!\u00a0!\u2000!\u3000!\"" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteTest), (new stdgo.strconv_test.Strconv_test.T_quoteTest(stdgo.Go.str(127)?.__copy__(), ("\"\\x7f\"" : stdgo.GoString), ("\"\\x7f\"" : stdgo.GoString), ("\"\\x7f\"" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_quoteTest>);
/**
    
    
    
**/
var _quoterunetests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_quoteRuneTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_quoteRuneTest>(
13,
13,
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((97 : stdgo.StdGoTypes.GoInt32), ("\'a\'" : stdgo.GoString), ("\'a\'" : stdgo.GoString), ("\'a\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((7 : stdgo.StdGoTypes.GoInt32), ("\'\\a\'" : stdgo.GoString), ("\'\\a\'" : stdgo.GoString), ("\'\\a\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((92 : stdgo.StdGoTypes.GoInt32), ("\'\\\\\'" : stdgo.GoString), ("\'\\\\\'" : stdgo.GoString), ("\'\\\\\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((255 : stdgo.StdGoTypes.GoInt32), ("\'ÿ\'" : stdgo.GoString), ("\'\\u00ff\'" : stdgo.GoString), ("\'ÿ\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((9786 : stdgo.StdGoTypes.GoInt32), ("\'☺\'" : stdgo.GoString), ("\'\\u263a\'" : stdgo.GoString), ("\'☺\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((57005 : stdgo.StdGoTypes.GoInt32), ("\'�\'" : stdgo.GoString), ("\'\\ufffd\'" : stdgo.GoString), ("\'�\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((65533 : stdgo.StdGoTypes.GoInt32), ("\'�\'" : stdgo.GoString), ("\'\\ufffd\'" : stdgo.GoString), ("\'�\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((1114111 : stdgo.StdGoTypes.GoInt32), ("\'\\U0010ffff\'" : stdgo.GoString), ("\'\\U0010ffff\'" : stdgo.GoString), ("\'\\U0010ffff\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((1114112 : stdgo.StdGoTypes.GoInt32), ("\'�\'" : stdgo.GoString), ("\'\\ufffd\'" : stdgo.GoString), ("\'�\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((4 : stdgo.StdGoTypes.GoInt32), ("\'\\x04\'" : stdgo.GoString), ("\'\\x04\'" : stdgo.GoString), ("\'\\x04\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((160 : stdgo.StdGoTypes.GoInt32), ("\'\\u00a0\'" : stdgo.GoString), ("\'\\u00a0\'" : stdgo.GoString), ("\'\u00a0\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((8192 : stdgo.StdGoTypes.GoInt32), ("\'\\u2000\'" : stdgo.GoString), ("\'\\u2000\'" : stdgo.GoString), ("\'\u2000\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest),
(new stdgo.strconv_test.Strconv_test.T_quoteRuneTest((12288 : stdgo.StdGoTypes.GoInt32), ("\'\\u3000\'" : stdgo.GoString), ("\'\\u3000\'" : stdgo.GoString), ("\'\u3000\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_quoteRuneTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_quoteRuneTest>);
/**
    
    
    
**/
var _canbackquotetests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_canBackquoteTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_canBackquoteTest>(
43,
43,
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(("`" : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((0 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((1 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((2 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((3 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((4 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((5 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((6 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((7 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((8 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((9 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), true) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((10 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((11 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((12 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((13 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((14 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((15 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((16 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((17 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((18 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((19 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((20 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((21 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((22 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((23 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((24 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((25 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((26 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((27 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((28 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((29 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((30 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((31 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest((((127 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune) : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(("\' !\"#$%&\'()*+,-./:;<=>?@[\\]^_{|}~" : stdgo.GoString), true) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(("0123456789" : stdgo.GoString), true) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(("ABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString), true) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString), true) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(("☺" : stdgo.GoString), true) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(stdgo.Go.str(128)?.__copy__(), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(stdgo.Go.str("a", 224, 160, "z")?.__copy__(), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(("\ufeffabc" : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest),
(new stdgo.strconv_test.Strconv_test.T_canBackquoteTest(("a\ufeffz" : stdgo.GoString), false) : stdgo.strconv_test.Strconv_test.T_canBackquoteTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_canBackquoteTest>);
/**
    
    
    
**/
var _unquotetests : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_unQuoteTest> = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_unQuoteTest>(
35,
35,
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\"\"" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\"a\"" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\"abc\"" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\"☺\"" : stdgo.GoString), ("☺" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\"hello world\"" : stdgo.GoString), ("hello world" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\"\\xFF\"" : stdgo.GoString), stdgo.Go.str(255)?.__copy__()) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\"\\377\"" : stdgo.GoString), stdgo.Go.str(255)?.__copy__()) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\"\\u1234\"" : stdgo.GoString), ("ሴ" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\"\\U00010111\"" : stdgo.GoString), ("𐄑" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\"\\U0001011111\"" : stdgo.GoString), ("𐄑11" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\"\\a\\b\\f\\n\\r\\t\\v\\\\\\\"\"" : stdgo.GoString), ("\x07\x08\x0C\n\r\t\x0B\\\"" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\"\'\"" : stdgo.GoString), ("\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\'a\'" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\'☹\'" : stdgo.GoString), ("☹" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\'\\a\'" : stdgo.GoString), ("\x07" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\'\\x10\'" : stdgo.GoString), stdgo.Go.str(16)?.__copy__()) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\'\\377\'" : stdgo.GoString), stdgo.Go.str(255)?.__copy__()) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\'\\u1234\'" : stdgo.GoString), ("ሴ" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\'\\U00010111\'" : stdgo.GoString), ("𐄑" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\'\\t\'" : stdgo.GoString), ("\t" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\' \'" : stdgo.GoString), (" " : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\'\\\'\'" : stdgo.GoString), ("\'" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("\'\"\'" : stdgo.GoString), ("\"" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("``" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("`a`" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("`abc`" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("`☺`" : stdgo.GoString), ("☺" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("`hello world`" : stdgo.GoString), ("hello world" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("`\\xFF`" : stdgo.GoString), ("\\xFF" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("`\\377`" : stdgo.GoString), ("\\377" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("`\\`" : stdgo.GoString), ("\\" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("`\n`" : stdgo.GoString), ("\n" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("`\t`" : stdgo.GoString), ("\t" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("` `" : stdgo.GoString), (" " : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest),
(new stdgo.strconv_test.Strconv_test.T_unQuoteTest(("`a\rb`" : stdgo.GoString), ("ab" : stdgo.GoString)) : stdgo.strconv_test.Strconv_test.T_unQuoteTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_unQuoteTest>);
/**
    
    
    
**/
var _misquoted : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(
28,
28,
stdgo.Go.str()?.__copy__(),
("\"" : stdgo.GoString),
("\"a" : stdgo.GoString),
("\"\'" : stdgo.GoString),
("b\"" : stdgo.GoString),
("\"\\\"" : stdgo.GoString),
("\"\\9\"" : stdgo.GoString),
("\"\\19\"" : stdgo.GoString),
("\"\\129\"" : stdgo.GoString),
("\'\\\'" : stdgo.GoString),
("\'\\9\'" : stdgo.GoString),
("\'\\19\'" : stdgo.GoString),
("\'\\129\'" : stdgo.GoString),
("\'ab\'" : stdgo.GoString),
("\"\\x1!\"" : stdgo.GoString),
("\"\\U12345678\"" : stdgo.GoString),
("\"\\z\"" : stdgo.GoString),
("`" : stdgo.GoString),
("`xxx" : stdgo.GoString),
("``x\r" : stdgo.GoString),
("`\"" : stdgo.GoString),
("\"\\\'\"" : stdgo.GoString),
("\'\\\"\'" : stdgo.GoString),
("\"\n\"" : stdgo.GoString),
("\"\\n\n\"" : stdgo.GoString),
("\'\n\'" : stdgo.GoString),
("\"\\udead\"" : stdgo.GoString),
("\"\\ud83d\\ude4f\"" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _nextToOne : stdgo.GoString = ("1.00000000000000011102230246251565404236316680908203125" : stdgo.GoString) + stdgo.strings.Strings.repeat(("0" : stdgo.GoString), (10000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("1" : stdgo.GoString)?.__copy__();
/**
    
    
    
**/
var _mallocTest : stdgo.Slice<T__struct_5> = (new stdgo.Slice<T__struct_5>(
9,
9,
({ _count : (0 : stdgo.StdGoTypes.GoInt), _desc : ("AppendInt(localBuf[:0], 123, 10)" : stdgo.GoString), _fn : function():Void {
        var _localBuf:stdgo.GoArray<stdgo.StdGoTypes.GoByte> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 64) (0 : stdgo.StdGoTypes.GoUInt8)]);
        appendInt((_localBuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (123i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
    } } : T__struct_5),
({ _count : (0 : stdgo.StdGoTypes.GoInt), _desc : ("AppendInt(globalBuf[:0], 123, 10)" : stdgo.GoString), _fn : function():Void {
        appendInt((_globalBuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (123i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
    } } : T__struct_5),
({ _count : (0 : stdgo.StdGoTypes.GoInt), _desc : ("AppendFloat(localBuf[:0], 1.23, \'g\', 5, 64)" : stdgo.GoString), _fn : function():Void {
        var _localBuf:stdgo.GoArray<stdgo.StdGoTypes.GoByte> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 64) (0 : stdgo.StdGoTypes.GoUInt8)]);
        appendFloat((_localBuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (1.23 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt));
    } } : T__struct_5),
({ _count : (0 : stdgo.StdGoTypes.GoInt), _desc : ("AppendFloat(globalBuf[:0], 1.23, \'g\', 5, 64)" : stdgo.GoString), _fn : function():Void {
        appendFloat((_globalBuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (1.23 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt));
    } } : T__struct_5),
({ _count : (10 : stdgo.StdGoTypes.GoInt), _desc : ("AppendQuoteToASCII(nil, oneMB)" : stdgo.GoString), _fn : function():Void {
        appendQuoteToASCII((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_oneMB : stdgo.GoString)?.__copy__());
    } } : T__struct_5),
({ _count : (0 : stdgo.StdGoTypes.GoInt), _desc : ("ParseFloat(\"123.45\", 64)" : stdgo.GoString), _fn : function():Void {
        parseFloat(("123.45" : stdgo.GoString), (64 : stdgo.StdGoTypes.GoInt));
    } } : T__struct_5),
({ _count : (0 : stdgo.StdGoTypes.GoInt), _desc : ("ParseFloat(\"123.456789123456789\", 64)" : stdgo.GoString), _fn : function():Void {
        parseFloat(("123.456789123456789" : stdgo.GoString), (64 : stdgo.StdGoTypes.GoInt));
    } } : T__struct_5),
({ _count : (0 : stdgo.StdGoTypes.GoInt), _desc : ("ParseFloat(\"1.000000000000000111022302462515654042363166809082031251\", 64)" : stdgo.GoString), _fn : function():Void {
        parseFloat(("1.000000000000000111022302462515654042363166809082031251" : stdgo.GoString), (64 : stdgo.StdGoTypes.GoInt));
    } } : T__struct_5),
({ _count : (0 : stdgo.StdGoTypes.GoInt), _desc : ("ParseFloat(\"1.0000000000000001110223024625156540423631668090820312500...001\", 64)" : stdgo.GoString), _fn : function():Void {
        parseFloat(_nextToOne?.__copy__(), (64 : stdgo.StdGoTypes.GoInt));
    } } : T__struct_5)) : stdgo.Slice<T__struct_5>);
/**
    
    
    
**/
var _atofOnce = ({} : stdgo.sync.Sync.Once);
/**
    
    
    
**/
var _atofRandomTests = (null : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atofSimpleTest>);
/**
    
    
    
**/
var _benchmarksRandomBits = new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 1024) ("" : stdgo.GoString)]);
/**
    
    
    
**/
var _benchmarksRandomNormal = new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 1024) ("" : stdgo.GoString)]);
/**
    
    
    
**/
final _below1e23 : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _above1e23 : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    // make sure compiler cannot optimize away benchmarks
**/
var benchSink = (0 : stdgo.StdGoTypes.GoInt);
/**
    
    
    
**/
var _benchQuoteBuf = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var _benchQuoteRuneBuf = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var _globalBuf = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 64) (0 : stdgo.StdGoTypes.GoUInt8)]);
/**
    
    
    // Will be allocated to 1MB of random data by TestCountMallocs.
**/
var _oneMB = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    // Sink makes sure the compiler cannot optimize away the benchmarks.
    
    
**/
var sink = ({ bool_ : false, int_ : (0 : stdgo.StdGoTypes.GoInt), int64 : (0 : stdgo.StdGoTypes.GoInt64), uint64 : (0 : stdgo.StdGoTypes.GoUInt64), float64 : (0 : stdgo.StdGoTypes.GoFloat64), complex128 : new stdgo.StdGoTypes.GoComplex128(0, 0), error : (null : stdgo.Error), bytes : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) } : T__struct_6);
/**
    
    
    
**/
@:structInit @:private class T_atobTest {
    public var _in : stdgo.GoString = "";
    public var _out : Bool = false;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_out:Bool, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_atobTest(_in, _out, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_appendBoolTest {
    public var _b : Bool = false;
    public var _in : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _out : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public function new(?_b:Bool, ?_in:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_out:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) {
        if (_b != null) this._b = _b;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_appendBoolTest(_b, _in, _out);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_atocTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128(0, 0);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_out:stdgo.StdGoTypes.GoComplex128, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_atocTest(_in, _out, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_atofTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_atofTest(_in, _out, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_atofSimpleTest {
    public var _x : stdgo.StdGoTypes.GoFloat64 = 0;
    public var _s : stdgo.GoString = "";
    public function new(?_x:stdgo.StdGoTypes.GoFloat64, ?_s:stdgo.GoString) {
        if (_x != null) this._x = _x;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_atofSimpleTest(_x, _s);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_parseUint64Test {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_out:stdgo.StdGoTypes.GoUInt64, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseUint64Test(_in, _out, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_parseUint64BaseTest {
    public var _in : stdgo.GoString = "";
    public var _base : stdgo.StdGoTypes.GoInt = 0;
    public var _out : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_base:stdgo.StdGoTypes.GoInt, ?_out:stdgo.StdGoTypes.GoUInt64, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_base != null) this._base = _base;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseUint64BaseTest(_in, _base, _out, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_parseInt64Test {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.StdGoTypes.GoInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_out:stdgo.StdGoTypes.GoInt64, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseInt64Test(_in, _out, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_parseInt64BaseTest {
    public var _in : stdgo.GoString = "";
    public var _base : stdgo.StdGoTypes.GoInt = 0;
    public var _out : stdgo.StdGoTypes.GoInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_base:stdgo.StdGoTypes.GoInt, ?_out:stdgo.StdGoTypes.GoInt64, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_base != null) this._base = _base;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseInt64BaseTest(_in, _base, _out, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_parseUint32Test {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_out:stdgo.StdGoTypes.GoUInt32, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseUint32Test(_in, _out, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_parseInt32Test {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.StdGoTypes.GoInt32 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_out:stdgo.StdGoTypes.GoInt32, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseInt32Test(_in, _out, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_numErrorTest {
    public var _num : stdgo.GoString = "";
    public var _want : stdgo.GoString = "";
    public function new(?_num:stdgo.GoString, ?_want:stdgo.GoString) {
        if (_num != null) this._num = _num;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_numErrorTest(_num, _want);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_parseErrorTest {
    public var _arg : stdgo.StdGoTypes.GoInt = 0;
    public var _errStub : (stdgo.GoString, stdgo.StdGoTypes.GoInt) -> stdgo.Error = null;
    public function new(?_arg:stdgo.StdGoTypes.GoInt, ?_errStub:(stdgo.GoString, stdgo.StdGoTypes.GoInt) -> stdgo.Error) {
        if (_arg != null) this._arg = _arg;
        if (_errStub != null) this._errStub = _errStub;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseErrorTest(_arg, _errStub);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_benchCase {
    public var _name : stdgo.GoString = "";
    public var _num : stdgo.StdGoTypes.GoInt64 = 0;
    public function new(?_name:stdgo.GoString, ?_num:stdgo.StdGoTypes.GoInt64) {
        if (_name != null) this._name = _name;
        if (_num != null) this._num = _num;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchCase(_name, _num);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_shiftTest {
    public var _i : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _shift : stdgo.StdGoTypes.GoInt = 0;
    public var _out : stdgo.GoString = "";
    public function new(?_i:stdgo.StdGoTypes.GoUInt64, ?_shift:stdgo.StdGoTypes.GoInt, ?_out:stdgo.GoString) {
        if (_i != null) this._i = _i;
        if (_shift != null) this._shift = _shift;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_shiftTest(_i, _shift, _out);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_roundTest {
    public var _i : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _nd : stdgo.StdGoTypes.GoInt = 0;
    public var _down : stdgo.GoString = "";
    public var _round : stdgo.GoString = "";
    public var _up : stdgo.GoString = "";
    public var _int : stdgo.StdGoTypes.GoUInt64 = 0;
    public function new(?_i:stdgo.StdGoTypes.GoUInt64, ?_nd:stdgo.StdGoTypes.GoInt, ?_down:stdgo.GoString, ?_round:stdgo.GoString, ?_up:stdgo.GoString, ?_int:stdgo.StdGoTypes.GoUInt64) {
        if (_i != null) this._i = _i;
        if (_nd != null) this._nd = _nd;
        if (_down != null) this._down = _down;
        if (_round != null) this._round = _round;
        if (_up != null) this._up = _up;
        if (_int != null) this._int = _int;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_roundTest(_i, _nd, _down, _round, _up, _int);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_roundIntTest {
    public var _i : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _shift : stdgo.StdGoTypes.GoInt = 0;
    public var _int : stdgo.StdGoTypes.GoUInt64 = 0;
    public function new(?_i:stdgo.StdGoTypes.GoUInt64, ?_shift:stdgo.StdGoTypes.GoInt, ?_int:stdgo.StdGoTypes.GoUInt64) {
        if (_i != null) this._i = _i;
        if (_shift != null) this._shift = _shift;
        if (_int != null) this._int = _int;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_roundIntTest(_i, _shift, _int);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_ftoaTest {
    public var _f : stdgo.StdGoTypes.GoFloat64 = 0;
    public var _fmt : stdgo.StdGoTypes.GoUInt8 = 0;
    public var _prec : stdgo.StdGoTypes.GoInt = 0;
    public var _s : stdgo.GoString = "";
    public function new(?_f:stdgo.StdGoTypes.GoFloat64, ?_fmt:stdgo.StdGoTypes.GoUInt8, ?_prec:stdgo.StdGoTypes.GoInt, ?_s:stdgo.GoString) {
        if (_f != null) this._f = _f;
        if (_fmt != null) this._fmt = _fmt;
        if (_prec != null) this._prec = _prec;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ftoaTest(_f, _fmt, _prec, _s);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_itob64Test {
    public var _in : stdgo.StdGoTypes.GoInt64 = 0;
    public var _base : stdgo.StdGoTypes.GoInt = 0;
    public var _out : stdgo.GoString = "";
    public function new(?_in:stdgo.StdGoTypes.GoInt64, ?_base:stdgo.StdGoTypes.GoInt, ?_out:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_base != null) this._base = _base;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_itob64Test(_in, _base, _out);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_uitob64Test {
    public var _in : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _base : stdgo.StdGoTypes.GoInt = 0;
    public var _out : stdgo.GoString = "";
    public function new(?_in:stdgo.StdGoTypes.GoUInt64, ?_base:stdgo.StdGoTypes.GoInt, ?_out:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_base != null) this._base = _base;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_uitob64Test(_in, _base, _out);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_quoteTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public var _ascii : stdgo.GoString = "";
    public var _graphic : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_ascii:stdgo.GoString, ?_graphic:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_ascii != null) this._ascii = _ascii;
        if (_graphic != null) this._graphic = _graphic;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_quoteTest(_in, _out, _ascii, _graphic);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_quoteRuneTest {
    public var _in : stdgo.StdGoTypes.GoInt32 = 0;
    public var _out : stdgo.GoString = "";
    public var _ascii : stdgo.GoString = "";
    public var _graphic : stdgo.GoString = "";
    public function new(?_in:stdgo.StdGoTypes.GoInt32, ?_out:stdgo.GoString, ?_ascii:stdgo.GoString, ?_graphic:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_ascii != null) this._ascii = _ascii;
        if (_graphic != null) this._graphic = _graphic;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_quoteRuneTest(_in, _out, _ascii, _graphic);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_canBackquoteTest {
    public var _in : stdgo.GoString = "";
    public var _out : Bool = false;
    public function new(?_in:stdgo.GoString, ?_out:Bool) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_canBackquoteTest(_in, _out);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_unQuoteTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unQuoteTest(_in, _out);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strconv_test.Strconv_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.strconv_test.Strconv_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _f : stdgo.StdGoTypes.GoFloat64;
    public var _s : stdgo.GoString;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strconv_test.Strconv_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.strconv_test.Strconv_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _c : stdgo.StdGoTypes.GoComplex128;
    public var _fmt : stdgo.StdGoTypes.GoUInt8;
    public var _prec : stdgo.StdGoTypes.GoInt;
    public var _bitSize : stdgo.StdGoTypes.GoInt;
    public var _out : stdgo.GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strconv_test.Strconv_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.strconv_test.Strconv_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _name : stdgo.GoString;
    public var _float : stdgo.StdGoTypes.GoFloat64;
    public var _fmt : stdgo.StdGoTypes.GoUInt8;
    public var _prec : stdgo.StdGoTypes.GoInt;
    public var _bitSize : stdgo.StdGoTypes.GoInt;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strconv_test.Strconv_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.strconv_test.Strconv_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _in : stdgo.StdGoTypes.GoUInt64;
    public var _out : stdgo.GoString;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strconv_test.Strconv_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.strconv_test.Strconv_test.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _in : stdgo.GoString;
    /**
        // one of:
    **/
    public var _want : stdgo.GoString;
    public var _wantErr : stdgo.Error;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strconv_test.Strconv_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.strconv_test.Strconv_test.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _count : stdgo.StdGoTypes.GoInt;
    public var _desc : stdgo.GoString;
    public var _fn : () -> Void;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strconv_test.Strconv_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.strconv_test.Strconv_test.T__struct_6_static_extension) typedef T__struct_6 = {
    public var bool_ : Bool;
    public var int_ : stdgo.StdGoTypes.GoInt;
    public var int64 : stdgo.StdGoTypes.GoInt64;
    public var uint64 : stdgo.StdGoTypes.GoUInt64;
    public var float64 : stdgo.StdGoTypes.GoFloat64;
    public var complex128 : stdgo.StdGoTypes.GoComplex128;
    public var error : stdgo.Error;
    public var bytes : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strconv_test.Strconv_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.strconv_test.Strconv_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var bool_ : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var number : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var string : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var buffer : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strconv_test.Strconv_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo.strconv_test.Strconv_test.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _err : stdgo.Error;
    public var _want : stdgo.GoString;
};
function testParseBool(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _atobtests) {
            var __tmp__ = parseBool(_test._in?.__copy__()), _b:Bool = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if (_test._err != null) {
                if (_e == null) {
                    _t.errorf(("%s: expected %s but got nil" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._err));
                } else {
                    if (stdgo.Go.toInterface(_test._err) != (stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_e) : stdgo.StdGoTypes.Ref<NumError>)) : stdgo.StdGoTypes.Ref<NumError>).err))) {
                        _t.errorf(("%s: expected %s but got %s" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_e));
                    };
                };
            } else {
                if (_e != null) {
                    _t.errorf(("%s: expected no error but got %s" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_e));
                };
                if (_b != (_test._out)) {
                    _t.errorf(("%s: expected %t but got %t" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_b));
                };
            };
        };
    }
function testFormatBool(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_b => _s in _boolString) {
            {
                var _f:stdgo.GoString = formatBool(_b)?.__copy__();
                if (_f != (_s)) {
                    _t.errorf(("FormatBool(%v): expected %q but got %q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_f));
                };
            };
        };
    }
function testAppendBool(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _appendBoolTests) {
            var _b = appendBool(_test._in, _test._b);
            if (!stdgo.bytes.Bytes.equal(_b, _test._out)) {
                _t.errorf(("AppendBool(%q, %v): expected %q but got %q" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._b), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_b));
            };
        };
    }
function testParseComplex(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atocTest>(
129,
129,
(new stdgo.strconv_test.Strconv_test.T_atocTest(stdgo.Go.str()?.__copy__(), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest((" " : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("(" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest((")" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1I" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("10  + 5i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("3+" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("3+5" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("3+5+5i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("()" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("(i)" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("(0)" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("(1i)" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("(3.0+5.5i)" : stdgo.GoString), ((3f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 5.5f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("(1)+1i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("(3.0+5.5i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("3.0+5.5i)" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("NaN" : stdgo.GoString), new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.naN(), (0 : stdgo.StdGoTypes.GoFloat64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("NANi" : stdgo.GoString), new stdgo.StdGoTypes.GoComplex128((0 : stdgo.StdGoTypes.GoFloat64), stdgo.math.Math.naN()), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("nan+nAni" : stdgo.GoString), new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.naN(), stdgo.math.Math.naN()), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+NaN" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-NaN" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("NaN-NaNi" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("Inf" : stdgo.GoString), _infp0, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+inf" : stdgo.GoString), _infp0, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-inf" : stdgo.GoString), _infm0, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("Infinity" : stdgo.GoString), _infp0, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+INFINITY" : stdgo.GoString), _infp0, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-infinity" : stdgo.GoString), _infm0, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+infi" : stdgo.GoString), _inf0p, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0-infinityi" : stdgo.GoString), _inf0m, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("Inf+Infi" : stdgo.GoString), _infpp, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+Inf-Infi" : stdgo.GoString), _infpm, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-Infinity+Infi" : stdgo.GoString), _infmp, (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("inf-inf" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0.0i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0+0.0i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0e+0i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0e-0+0i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0.0-0.0i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0e+012345" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x0p+012345i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x0.00p-012345i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0e-0+0e-0i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0e+0+0e+0i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0e+0-0e+0i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0.1" : stdgo.GoString), ((0.1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0.1i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0.1f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0.123" : stdgo.GoString), ((0.123f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0.123i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0.123f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0.123+0.123i" : stdgo.GoString), ((0.123f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0.123f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("99" : stdgo.GoString), ((99f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+99" : stdgo.GoString), ((99f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-99" : stdgo.GoString), ((-99f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+1i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-1i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -1f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+3+1i" : stdgo.GoString), ((3f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("30+3i" : stdgo.GoString), ((30f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 3f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+3e+3-3e+3i" : stdgo.GoString), ((3000f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -3000f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+3e+3+3e+3i" : stdgo.GoString), ((3000f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 3000f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+3e+3+3e+3i+" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0.1" : stdgo.GoString), ((0.1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0.1i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0.1f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0.1_2_3" : stdgo.GoString), ((0.123f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x_3p3i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 24f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0_0+0x_0p0i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x_10.3p-8+0x3p3i" : stdgo.GoString), ((0.063232421875f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 24f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x_1_0.3p-8+0x_3_0p3i" : stdgo.GoString), ((0.063232421875f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 384f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x1_0.3p+8-0x_3p3i" : stdgo.GoString), ((4144f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -24f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x10.3p-8+0x3p3i" : stdgo.GoString), ((0.063232421875f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 24f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x10.3p-8+0x3p3i" : stdgo.GoString), ((0.063232421875f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 24f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x10.3p+8-0x3p3i" : stdgo.GoString), ((4144f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -24f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x1p0" : stdgo.GoString), ((1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x1p1" : stdgo.GoString), ((2f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x1p-1" : stdgo.GoString), ((0.5f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x1ep-1" : stdgo.GoString), ((15f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0x1ep-1" : stdgo.GoString), ((-15f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0x2p3" : stdgo.GoString), ((-16f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x1e2" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1p2" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x1e2i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), errSyntax) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x1p1024" : stdgo.GoString), _infp0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0x1p1024" : stdgo.GoString), _infm0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x1p1024i" : stdgo.GoString), _inf0p, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0x1p1024i" : stdgo.GoString), _inf0m, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x1p1024+0x1p1024i" : stdgo.GoString), _infpp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x1p1024-0x1p1024i" : stdgo.GoString), _infpm, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0x1p1024+0x1p1024i" : stdgo.GoString), _infmp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0x1p1024-0x1p1024i" : stdgo.GoString), _infmm, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x1.fffffffffffff7fffp1023+0x1.fffffffffffff7fffp1023i" : stdgo.GoString), ((1.7976931348623157e+308f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1.7976931348623157e+308f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x1.fffffffffffff7fffp1023-0x1.fffffffffffff7fffp1023i" : stdgo.GoString), ((1.7976931348623157e+308f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -1.7976931348623157e+308f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0x1.fffffffffffff7fffp1023+0x1.fffffffffffff7fffp1023i" : stdgo.GoString), ((-1.7976931348623157e+308f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1.7976931348623157e+308f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0x1.fffffffffffff7fffp1023-0x1.fffffffffffff7fffp1023i" : stdgo.GoString), ((-1.7976931348623157e+308f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -1.7976931348623157e+308f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x1.fffffffffffff8p1023" : stdgo.GoString), _infp0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0x1fffffffffffff.8p+971" : stdgo.GoString), _infm0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x1.fffffffffffff8p1023i" : stdgo.GoString), _inf0p, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0x1fffffffffffff.8p+971i" : stdgo.GoString), _inf0m, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x1.fffffffffffff8p1023+0x1.fffffffffffff8p1023i" : stdgo.GoString), _infpp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+0x1.fffffffffffff8p1023-0x1.fffffffffffff8p1023i" : stdgo.GoString), _infpm, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0x1fffffffffffff.8p+971+0x1fffffffffffff.8p+971i" : stdgo.GoString), _infmp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-0x1fffffffffffff8p+967-0x1fffffffffffff8p+967i" : stdgo.GoString), _infmm, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1e308+1e308i" : stdgo.GoString), ((1e+308f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1e+308f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("2e308+2e308i" : stdgo.GoString), _infpp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1e309+1e309i" : stdgo.GoString), _infpp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x1p1025+0x1p1025i" : stdgo.GoString), _infpp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("2e308" : stdgo.GoString), _infp0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1e309" : stdgo.GoString), _infp0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x1p1025" : stdgo.GoString), _infp0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("2e308i" : stdgo.GoString), _inf0p, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1e309i" : stdgo.GoString), _inf0p, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("0x1p1025i" : stdgo.GoString), _inf0p, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+1e310+1e310i" : stdgo.GoString), _infpp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("+1e310-1e310i" : stdgo.GoString), _infpm, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-1e310+1e310i" : stdgo.GoString), _infmp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("-1e310-1e310i" : stdgo.GoString), _infmm, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1e-4294967296" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1e-4294967296i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1e-4294967296+1i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1+1e-4294967296i" : stdgo.GoString), ((1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1e-4294967296+1e-4294967296i" : stdgo.GoString), ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64)), (null : stdgo.Error)) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1e+4294967296" : stdgo.GoString), _infp0, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1e+4294967296i" : stdgo.GoString), _inf0p, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1e+4294967296+1e+4294967296i" : stdgo.GoString), _infpp, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest),
(new stdgo.strconv_test.Strconv_test.T_atocTest(("1e+4294967296-1e+4294967296i" : stdgo.GoString), _infpm, errRange) : stdgo.strconv_test.Strconv_test.T_atocTest)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atocTest>);
        for (_i in 0 ... _tests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_atocTest>);
            if (_test._err != null) {
                _test._err = stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseComplex" : stdgo.GoString), num : _test._in?.__copy__(), err : _test._err } : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>));
            };
            var __tmp__ = parseComplex(_test._in?.__copy__(), (128 : stdgo.StdGoTypes.GoInt)), _got:stdgo.StdGoTypes.GoComplex128 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._err))) {
                _t.fatalf(("ParseComplex(%q, 128) = %v, %v; want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
            };
            if (!(stdgo.math.cmplx.Cmplx.isNaN(_test._out) && stdgo.math.cmplx.Cmplx.isNaN(_got)) && (_got != _test._out)) {
                _t.fatalf(("ParseComplex(%q, 128) = %v, %v; want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
            };
            if (((_test._out : stdgo.StdGoTypes.GoComplex64) : stdgo.StdGoTypes.GoComplex128) == (_test._out)) {
                var __tmp__ = parseComplex(_test._in?.__copy__(), (64 : stdgo.StdGoTypes.GoInt)), _got:stdgo.StdGoTypes.GoComplex128 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._err))) {
                    _t.fatalf(("ParseComplex(%q, 64) = %v, %v; want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
                };
                var _got64:stdgo.StdGoTypes.GoComplex64 = (_got : stdgo.StdGoTypes.GoComplex64);
                if ((_got64 : stdgo.StdGoTypes.GoComplex128) != (_test._out)) {
                    _t.fatalf(("ParseComplex(%q, 64) = %v, %v; want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
                };
            };
        };
    }
/**
    // Issue 42297: allow ParseComplex(s, not_32_or_64) for legacy reasons
**/
function testParseComplexIncorrectBitSize(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        for (__0 => _bitSize in (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(4, 4, (0 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt), (100 : stdgo.StdGoTypes.GoInt), (256 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) {
            var __tmp__ = parseComplex(("1.5e308+1.0e307i" : stdgo.GoString), _bitSize), _c:stdgo.StdGoTypes.GoComplex128 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("ParseComplex(%q, %d) gave error %s" : stdgo.GoString), stdgo.Go.toInterface(("1.5e308+1.0e307i" : stdgo.GoString)), stdgo.Go.toInterface(_bitSize), stdgo.Go.toInterface(_err));
            };
            if (_c != (((1.5e+308f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1e+307f64)))) {
                _t.fatalf(("ParseComplex(%q, %d) = %g (expected %g)" : stdgo.GoString), stdgo.Go.toInterface(("1.5e308+1.0e307i" : stdgo.GoString)), stdgo.Go.toInterface(_bitSize), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(((1.5e+308f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 1e+307f64))));
            };
        };
    }
function _initAtof():Void {
        _atofOnce.do_(_initAtofOnce);
    }
function _initAtofOnce():Void {
        for (_i in 0 ... _atoftests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_atoftests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_atofTest>);
            if (_test._err != null) {
                _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.strconv.Strconv.NumError(("ParseFloat" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>));
            };
        };
        for (_i in 0 ... _atof32tests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_atof32tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_atofTest>);
            if (_test._err != null) {
                _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.strconv.Strconv.NumError(("ParseFloat" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>));
            };
        };
        if (stdgo.testing.Testing.short()) {
            _atofRandomTests = new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atofSimpleTest>((100 : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((100 : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (100 : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.strconv_test.Strconv_test.T_atofSimpleTest)]);
        } else {
            _atofRandomTests = new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_atofSimpleTest>((10000 : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((10000 : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (10000 : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.strconv_test.Strconv_test.T_atofSimpleTest)]);
        };
        for (_i in 0 ... _atofRandomTests.length.toBasic()) {
            var _n:stdgo.StdGoTypes.GoUInt64 = ((stdgo.math.rand.Rand.uint32() : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64)) | (stdgo.math.rand.Rand.uint32() : stdgo.StdGoTypes.GoUInt64);
            var _x:stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.float64frombits(_n);
            var _s:stdgo.GoString = formatFloat(_x, (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
            _atofRandomTests[(_i : stdgo.StdGoTypes.GoInt)] = (new stdgo.strconv_test.Strconv_test.T_atofSimpleTest(_x, _s?.__copy__()) : stdgo.strconv_test.Strconv_test.T_atofSimpleTest);
        };
        for (_i in 0 ... _benchmarksRandomBits.length.toBasic()) {
            var _bits:stdgo.StdGoTypes.GoUInt64 = ((stdgo.math.rand.Rand.uint32() : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64)) | (stdgo.math.rand.Rand.uint32() : stdgo.StdGoTypes.GoUInt64);
            var _x:stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.float64frombits(_bits);
            _benchmarksRandomBits[(_i : stdgo.StdGoTypes.GoInt)] = formatFloat(_x, (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
        };
        for (_i in 0 ... _benchmarksRandomNormal.length.toBasic()) {
            var _x:stdgo.StdGoTypes.GoFloat64 = stdgo.math.rand.Rand.normFloat64();
            _benchmarksRandomNormal[(_i : stdgo.StdGoTypes.GoInt)] = formatFloat(_x, (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
        };
    }
function testParseFloatPrefix(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i in 0 ... _atoftests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_atoftests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_atofTest>);
            if (_test._err != null) {
                continue;
            };
            for (__0 => _suffix in (new stdgo.Slice<stdgo.GoString>(
11,
11,
(" " : stdgo.GoString),
("q" : stdgo.GoString),
("+" : stdgo.GoString),
("-" : stdgo.GoString),
("<" : stdgo.GoString),
("=" : stdgo.GoString),
(">" : stdgo.GoString),
("(" : stdgo.GoString),
(")" : stdgo.GoString),
("i" : stdgo.GoString),
("init" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) {
                var _in:stdgo.GoString = _test._in + _suffix?.__copy__()?.__copy__();
                var __tmp__ = parseFloatPrefix(_in?.__copy__(), (64 : stdgo.StdGoTypes.GoInt)), __1:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.errorf(("ParseFloatPrefix(%q, 64): err = %v; want no error" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_err));
                };
                if (_n != ((_test._in.length))) {
                    _t.errorf(("ParseFloatPrefix(%q, 64): n = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_test._in.length)));
                };
            };
        };
    }
function _testAtof(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _opt:Bool):Void {
        _initAtof();
        var _oldopt:Bool = setOptimize(_opt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_atoftests.length), _i++, {
                var _test = (stdgo.Go.setRef(_atoftests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_atofTest>);
                var __tmp__ = parseFloat(_test._in?.__copy__(), (64 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _outs:stdgo.GoString = formatFloat(_out, (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
                if ((_outs != _test._out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._err))) {
                    _t.errorf(("ParseFloat(%v, 64) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
                };
                if (((_out : stdgo.StdGoTypes.GoFloat32) : stdgo.StdGoTypes.GoFloat64) == (_out)) {
                    var __tmp__ = parseFloat(_test._in?.__copy__(), (32 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    var _out32:stdgo.StdGoTypes.GoFloat32 = (_out : stdgo.StdGoTypes.GoFloat32);
                    if ((_out32 : stdgo.StdGoTypes.GoFloat64) != (_out)) {
                        _t.errorf(("ParseFloat(%v, 32) = %v, not a float32 (closest is %v)" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface((_out32 : stdgo.StdGoTypes.GoFloat64)));
                        continue;
                    };
                    var _outs:stdgo.GoString = formatFloat((_out32 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt))?.__copy__();
                    if ((_outs != _test._out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._err))) {
                        _t.errorf(("ParseFloat(%v, 32) = %v, %v want %v, %v  # %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out32), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_out));
                    };
                };
            });
        };
        for (__24 => _test in _atof32tests) {
            var __tmp__ = parseFloat(_test._in?.__copy__(), (32 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _out32:stdgo.StdGoTypes.GoFloat32 = (_out : stdgo.StdGoTypes.GoFloat32);
            if ((_out32 : stdgo.StdGoTypes.GoFloat64) != (_out)) {
                _t.errorf(("ParseFloat(%v, 32) = %v, not a float32 (closest is %v)" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface((_out32 : stdgo.StdGoTypes.GoFloat64)));
                continue;
            };
            var _outs:stdgo.GoString = formatFloat((_out32 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt))?.__copy__();
            if ((_outs != _test._out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._err))) {
                _t.errorf(("ParseFloat(%v, 32) = %v, %v want %v, %v  # %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out32), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_out));
            };
        };
        setOptimize(_oldopt);
    }
function testAtof(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testAtof" + " skip function");
        return;
        _testAtof(_t, true);
    }
function testAtofSlow(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testAtofSlow" + " skip function");
        return;
        _testAtof(_t, false);
    }
function testAtofRandom(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testAtofRandom" + " skip function");
        return;
        _initAtof();
        for (__0 => _test in _atofRandomTests) {
            var __tmp__ = parseFloat(_test._s?.__copy__(), (64 : stdgo.StdGoTypes.GoInt)), _x:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, __1:stdgo.Error = __tmp__._1;
            if (_x == (_test._x)) {} else if (stdgo.math.Math.isNaN(_test._x) && stdgo.math.Math.isNaN(_x)) {} else {
                _t.errorf(("number %s badly parsed as %b (expected %b)" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._x));
            };
        };
        _t.logf(("tested %d random numbers" : stdgo.GoString), stdgo.Go.toInterface((_atofRandomTests.length)));
    }
function testRoundTrip(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _roundTripCases) {
            var _old:Bool = setOptimize(false);
            var _s:stdgo.GoString = formatFloat(_tt._f, (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
            if (_s != (_tt._s)) {
                _t.errorf(("no-opt FormatFloat(%b) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._f), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._s));
            };
            var __tmp__ = parseFloat(_tt._s?.__copy__(), (64 : stdgo.StdGoTypes.GoInt)), _f:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_f != _tt._f) || (_err != null)) {
                _t.errorf(("no-opt ParseFloat(%s) = %b, %v want %b, nil" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._f));
            };
            setOptimize(true);
            _s = formatFloat(_tt._f, (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
            if (_s != (_tt._s)) {
                _t.errorf(("opt FormatFloat(%b) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._f), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._s));
            };
            {
                var __tmp__ = parseFloat(_tt._s?.__copy__(), (64 : stdgo.StdGoTypes.GoInt));
                _f = __tmp__._0;
                _err = __tmp__._1;
            };
            if ((_f != _tt._f) || (_err != null)) {
                _t.errorf(("opt ParseFloat(%s) = %b, %v want %b, nil" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._f));
            };
            setOptimize(_old);
        };
    }
/**
    // TestRoundTrip32 tries a fraction of all finite positive float32 values.
**/
function testRoundTrip32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _step:stdgo.StdGoTypes.GoUInt32 = (997u32 : stdgo.StdGoTypes.GoUInt32);
        if (stdgo.testing.Testing.short()) {
            _step = (99991u32 : stdgo.StdGoTypes.GoUInt32);
        };
        var _count:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoUInt32 = (0u32 : stdgo.StdGoTypes.GoUInt32);
            stdgo.Go.cfor(_i < (2139095040u32 : stdgo.StdGoTypes.GoUInt32), _i = _i + (_step), {
                var _f:stdgo.StdGoTypes.GoFloat32 = stdgo.math.Math.float32frombits(_i);
                if (_i & (1u32 : stdgo.StdGoTypes.GoUInt32) == ((1u32 : stdgo.StdGoTypes.GoUInt32))) {
                    _f = -_f;
                };
                var _s:stdgo.GoString = formatFloat((_f : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt))?.__copy__();
                var __tmp__ = parseFloat(_s?.__copy__(), (32 : stdgo.StdGoTypes.GoInt)), _parsed:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _parsed32:stdgo.StdGoTypes.GoFloat32 = (_parsed : stdgo.StdGoTypes.GoFloat32);
                if (_err != null) {
                    _t.errorf(("ParseFloat(%q, 32) gave error %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
                } else if ((_parsed32 : stdgo.StdGoTypes.GoFloat64) != (_parsed)) {
                    _t.errorf(("ParseFloat(%q, 32) = %v, not a float32 (nearest is %v)" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_parsed), stdgo.Go.toInterface(_parsed32));
                } else if (_parsed32 != (_f)) {
                    _t.errorf(("ParseFloat(%q, 32) = %b (expected %b)" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_parsed32), stdgo.Go.toInterface(_f));
                };
                _count++;
            });
        };
        _t.logf(("tested %d float32\'s" : stdgo.GoString), stdgo.Go.toInterface(_count));
    }
/**
    // Issue 42297: a lot of code in the wild accidentally calls ParseFloat(s, 10)
    // or ParseFloat(s, 0), so allow bitSize values other than 32 and 64.
**/
function testParseFloatIncorrectBitSize(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        for (__0 => _bitSize in (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(4, 4, (0 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt), (100 : stdgo.StdGoTypes.GoInt), (128 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) {
            var __tmp__ = parseFloat(("1.5e308" : stdgo.GoString), _bitSize), _f:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("ParseFloat(%q, %d) gave error %s" : stdgo.GoString), stdgo.Go.toInterface(("1.5e308" : stdgo.GoString)), stdgo.Go.toInterface(_bitSize), stdgo.Go.toInterface(_err));
            };
            if (_f != (1.5e+308 : stdgo.StdGoTypes.GoFloat64)) {
                _t.fatalf(("ParseFloat(%q, %d) = %g (expected %g)" : stdgo.GoString), stdgo.Go.toInterface(("1.5e308" : stdgo.GoString)), stdgo.Go.toInterface(_bitSize), stdgo.Go.toInterface(_f), stdgo.Go.toInterface((1.5e+308 : stdgo.StdGoTypes.GoFloat64)));
            };
        };
    }
function benchmarkAtof64Decimal(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                parseFloat(("33909" : stdgo.GoString), (64 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkAtof64Float(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                parseFloat(("339.7784" : stdgo.GoString), (64 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkAtof64FloatExp(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                parseFloat(("-5.09e75" : stdgo.GoString), (64 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkAtof64Big(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                parseFloat(("123456789123456789123456789" : stdgo.GoString), (64 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkAtof64RandomBits(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _initAtof();
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                parseFloat(_benchmarksRandomBits[(_i % (1024 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]?.__copy__(), (64 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkAtof64RandomFloats(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _initAtof();
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                parseFloat(_benchmarksRandomNormal[(_i % (1024 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]?.__copy__(), (64 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkAtof64RandomLongFloats(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _initAtof();
        var _samples = new stdgo.Slice<stdgo.GoString>((_atofRandomTests.length : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setString__();
        for (_i => _t in _atofRandomTests) {
            _samples[(_i : stdgo.StdGoTypes.GoInt)] = formatFloat(_t._x, (103 : stdgo.StdGoTypes.GoUInt8), (20 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
        };
        _b.resetTimer();
        var _idx:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                parseFloat(_samples[(_idx : stdgo.StdGoTypes.GoInt)]?.__copy__(), (64 : stdgo.StdGoTypes.GoInt));
                _idx++;
                if (_idx == ((_samples.length))) {
                    _idx = (0 : stdgo.StdGoTypes.GoInt);
                };
            });
        };
    }
function benchmarkAtof32Decimal(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                parseFloat(("33909" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkAtof32Float(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                parseFloat(("339.778" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkAtof32FloatExp(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                parseFloat(("12.3456e32" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkAtof32Random(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _n:stdgo.StdGoTypes.GoUInt32 = (997u32 : stdgo.StdGoTypes.GoUInt32);
        var _float32strings:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 4096) ("" : stdgo.GoString)]);
        for (_i in 0 ... _float32strings.length.toBasic()) {
            _n = (((99991u32 : stdgo.StdGoTypes.GoUInt32) * _n) + (42u32 : stdgo.StdGoTypes.GoUInt32)) % (2139095040u32 : stdgo.StdGoTypes.GoUInt32);
            _float32strings[(_i : stdgo.StdGoTypes.GoInt)] = formatFloat((stdgo.math.Math.float32frombits(_n) : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt))?.__copy__();
        };
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                parseFloat(_float32strings[(_i % (4096 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]?.__copy__(), (32 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkAtof32RandomLong(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _n:stdgo.StdGoTypes.GoUInt32 = (997u32 : stdgo.StdGoTypes.GoUInt32);
        var _float32strings:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 4096) ("" : stdgo.GoString)]);
        for (_i in 0 ... _float32strings.length.toBasic()) {
            _n = (((99991u32 : stdgo.StdGoTypes.GoUInt32) * _n) + (42u32 : stdgo.StdGoTypes.GoUInt32)) % (2139095040u32 : stdgo.StdGoTypes.GoUInt32);
            _float32strings[(_i : stdgo.StdGoTypes.GoInt)] = formatFloat((stdgo.math.Math.float32frombits(_n) : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (20 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt))?.__copy__();
        };
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                parseFloat(_float32strings[(_i % (4096 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]?.__copy__(), (32 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function testParseUint32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i in 0 ... _parseUint32Tests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_parseUint32Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseUint32Test>);
            var __tmp__ = parseUint(_test._in?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_test._out : stdgo.StdGoTypes.GoUInt64) != _out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err))) {
                _t.errorf(("ParseUint(%q, 10, 32) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
            };
        };
    }
function testParseUint64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i in 0 ... _parseUint64Tests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_parseUint64Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseUint64Test>);
            var __tmp__ = parseUint(_test._in?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_test._out != _out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err))) {
                _t.errorf(("ParseUint(%q, 10, 64) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
            };
        };
    }
function testParseUint64Base(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i in 0 ... _parseUint64BaseTests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_parseUint64BaseTests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest>);
            var __tmp__ = parseUint(_test._in?.__copy__(), _test._base, (64 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_test._out != _out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err))) {
                _t.errorf(("ParseUint(%q, %v, 64) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
            };
        };
    }
function testParseInt32(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i in 0 ... _parseInt32Tests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_parseInt32Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseInt32Test>);
            var __tmp__ = parseInt(_test._in?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_test._out : stdgo.StdGoTypes.GoInt64) != _out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err))) {
                _t.errorf(("ParseInt(%q, 10 ,32) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
            };
        };
    }
function testParseInt64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i in 0 ... _parseInt64Tests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_parseInt64Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseInt64Test>);
            var __tmp__ = parseInt(_test._in?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_test._out != _out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err))) {
                _t.errorf(("ParseInt(%q, 10, 64) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
            };
        };
    }
function testParseInt64Base(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i in 0 ... _parseInt64BaseTests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_parseInt64BaseTests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest>);
            var __tmp__ = parseInt(_test._in?.__copy__(), _test._base, (64 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_test._out != _out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err))) {
                _t.errorf(("ParseInt(%q, %v, 64) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
            };
        };
    }
function testParseUint(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            final __value__ = (32 : stdgo.StdGoTypes.GoInt);
            if (__value__ == ((32 : stdgo.StdGoTypes.GoInt))) {
                for (_i in 0 ... _parseUint32Tests.length.toBasic()) {
                    var _test = (stdgo.Go.setRef(_parseUint32Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseUint32Test>);
                    var __tmp__ = parseUint(_test._in?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_test._out : stdgo.StdGoTypes.GoUInt64) != _out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err))) {
                        _t.errorf(("ParseUint(%q, 10, 0) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
                    };
                };
            } else if (__value__ == ((64 : stdgo.StdGoTypes.GoInt))) {
                for (_i in 0 ... _parseUint64Tests.length.toBasic()) {
                    var _test = (stdgo.Go.setRef(_parseUint64Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseUint64Test>);
                    var __tmp__ = parseUint(_test._in?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_test._out != _out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err))) {
                        _t.errorf(("ParseUint(%q, 10, 0) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
                    };
                };
            };
        };
    }
function testParseInt(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            final __value__ = (32 : stdgo.StdGoTypes.GoInt);
            if (__value__ == ((32 : stdgo.StdGoTypes.GoInt))) {
                for (_i in 0 ... _parseInt32Tests.length.toBasic()) {
                    var _test = (stdgo.Go.setRef(_parseInt32Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseInt32Test>);
                    var __tmp__ = parseInt(_test._in?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_test._out : stdgo.StdGoTypes.GoInt64) != _out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err))) {
                        _t.errorf(("ParseInt(%q, 10, 0) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
                    };
                };
            } else if (__value__ == ((64 : stdgo.StdGoTypes.GoInt))) {
                for (_i in 0 ... _parseInt64Tests.length.toBasic()) {
                    var _test = (stdgo.Go.setRef(_parseInt64Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseInt64Test>);
                    var __tmp__ = parseInt(_test._in?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_test._out != _out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err))) {
                        _t.errorf(("ParseInt(%q, 10, 0) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
                    };
                };
            };
        };
    }
function testAtoi(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            final __value__ = (32 : stdgo.StdGoTypes.GoInt);
            if (__value__ == ((32 : stdgo.StdGoTypes.GoInt))) {
                for (_i in 0 ... _parseInt32Tests.length.toBasic()) {
                    var _test = (stdgo.Go.setRef(_parseInt32Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseInt32Test>);
                    var __tmp__ = atoi(_test._in?.__copy__()), _out:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    var _testErr:stdgo.Error = (null : stdgo.Error);
                    if (_test._err != null) {
                        _testErr = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.strconv.Strconv.NumError(("Atoi" : stdgo.GoString), _test._in?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface(_test._err) : stdgo.StdGoTypes.Ref<NumError>)) : stdgo.StdGoTypes.Ref<NumError>).err) : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>));
                    };
                    if (((_test._out : stdgo.StdGoTypes.GoInt) != _out) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_testErr), stdgo.Go.toInterface(_err))) {
                        _t.errorf(("Atoi(%q) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_testErr));
                    };
                };
            } else if (__value__ == ((64 : stdgo.StdGoTypes.GoInt))) {
                for (_i in 0 ... _parseInt64Tests.length.toBasic()) {
                    var _test = (stdgo.Go.setRef(_parseInt64Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseInt64Test>);
                    var __tmp__ = atoi(_test._in?.__copy__()), _out:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    var _testErr:stdgo.Error = (null : stdgo.Error);
                    if (_test._err != null) {
                        _testErr = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.strconv.Strconv.NumError(("Atoi" : stdgo.GoString), _test._in?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface(_test._err) : stdgo.StdGoTypes.Ref<NumError>)) : stdgo.StdGoTypes.Ref<NumError>).err) : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>));
                    };
                    if ((_test._out != (_out : stdgo.StdGoTypes.GoInt64)) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_testErr), stdgo.Go.toInterface(_err))) {
                        _t.errorf(("Atoi(%q) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_testErr));
                    };
                };
            };
        };
    }
function _bitSizeErrStub(_name:stdgo.GoString, _bitSize:stdgo.StdGoTypes.GoInt):stdgo.Error {
        return stdgo.Go.asInterface(bitSizeError(_name?.__copy__(), ("0" : stdgo.GoString), _bitSize));
    }
function _baseErrStub(_name:stdgo.GoString, _base:stdgo.StdGoTypes.GoInt):stdgo.Error {
        return stdgo.Go.asInterface(baseError(_name?.__copy__(), ("0" : stdgo.GoString), _base));
    }
function _noErrStub(_name:stdgo.GoString, _arg:stdgo.StdGoTypes.GoInt):stdgo.Error {
        return (null : stdgo.Error);
    }
function _equalError(_a:stdgo.Error, _b:stdgo.Error):Bool {
        if (_a == null) {
            return _b == null;
        };
        if (_b == null) {
            return _a == null;
        };
        return _a.error() == (_b.error());
    }
function testParseIntBitSize(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i in 0 ... _parseBitSizeTests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_parseBitSizeTests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseErrorTest>);
            var _testErr:stdgo.Error = _test._errStub(("ParseInt" : stdgo.GoString), _test._arg);
            var __tmp__ = parseInt(("0" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), _test._arg), __0:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!_equalError(_testErr, _err)) {
                _t.errorf(("ParseInt(\"0\", 0, %v) = 0, %v want 0, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._arg), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_testErr));
            };
        };
    }
function testParseUintBitSize(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i in 0 ... _parseBitSizeTests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_parseBitSizeTests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseErrorTest>);
            var _testErr:stdgo.Error = _test._errStub(("ParseUint" : stdgo.GoString), _test._arg);
            var __tmp__ = parseUint(("0" : stdgo.GoString), (0 : stdgo.StdGoTypes.GoInt), _test._arg), __0:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!_equalError(_testErr, _err)) {
                _t.errorf(("ParseUint(\"0\", 0, %v) = 0, %v want 0, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._arg), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_testErr));
            };
        };
    }
function testParseIntBase(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i in 0 ... _parseBaseTests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_parseBaseTests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseErrorTest>);
            var _testErr:stdgo.Error = _test._errStub(("ParseInt" : stdgo.GoString), _test._arg);
            var __tmp__ = parseInt(("0" : stdgo.GoString), _test._arg, (0 : stdgo.StdGoTypes.GoInt)), __0:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!_equalError(_testErr, _err)) {
                _t.errorf(("ParseInt(\"0\", %v, 0) = 0, %v want 0, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._arg), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_testErr));
            };
        };
    }
function testParseUintBase(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (_i in 0 ... _parseBaseTests.length.toBasic()) {
            var _test = (stdgo.Go.setRef(_parseBaseTests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseErrorTest>);
            var _testErr:stdgo.Error = _test._errStub(("ParseUint" : stdgo.GoString), _test._arg);
            var __tmp__ = parseUint(("0" : stdgo.GoString), _test._arg, (0 : stdgo.StdGoTypes.GoInt)), __0:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!_equalError(_testErr, _err)) {
                _t.errorf(("ParseUint(\"0\", %v, 0) = 0, %v want 0, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._arg), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_testErr));
            };
        };
    }
function testNumError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _numErrorTests) {
            var _err = (stdgo.Go.setRef(({ func : ("ParseFloat" : stdgo.GoString), num : _test._num?.__copy__(), err : stdgo.errors.Errors.new_(("failed" : stdgo.GoString)) } : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>);
            {
                var _got:stdgo.GoString = _err.error()?.__copy__();
                if (_got != (_test._want)) {
                    _t.errorf(("(&NumError{\"ParseFloat\", %q, \"failed\"}).Error() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._num), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function testNumErrorUnwrap(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _err = (stdgo.Go.setRef(({ err : errSyntax } : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>);
        if (!stdgo.errors.Errors.is_(stdgo.Go.asInterface(_err), errSyntax)) {
            _t.error(stdgo.Go.toInterface(("errors.Is failed, wanted success" : stdgo.GoString)));
        };
    }
function benchmarkParseInt(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("Pos" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _benchmarkParseInt(_b, (1 : stdgo.StdGoTypes.GoInt));
        });
        _b.run(("Neg" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _benchmarkParseInt(_b, (-1 : stdgo.StdGoTypes.GoInt));
        });
    }
function _benchmarkParseInt(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _neg:stdgo.StdGoTypes.GoInt):Void {
        var _cases = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_benchCase>(5, 5, (new stdgo.strconv_test.Strconv_test.T_benchCase(("7bit" : stdgo.GoString), (127i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase), (new stdgo.strconv_test.Strconv_test.T_benchCase(("26bit" : stdgo.GoString), (67108863i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase), (new stdgo.strconv_test.Strconv_test.T_benchCase(("31bit" : stdgo.GoString), (2147483647i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase), (new stdgo.strconv_test.Strconv_test.T_benchCase(("56bit" : stdgo.GoString), (72057594037927935i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase), (new stdgo.strconv_test.Strconv_test.T_benchCase(("63bit" : stdgo.GoString), (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_benchCase>);
        for (__0 => _cs in _cases) {
            _b.run(_cs._name?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                var _s:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_cs._num * (_neg : stdgo.StdGoTypes.GoInt64)))?.__copy__();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        var __tmp__ = parseInt(_s?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _out:stdgo.StdGoTypes.GoInt64 = __tmp__._0, __8:stdgo.Error = __tmp__._1;
                        benchSink = benchSink + ((_out : stdgo.StdGoTypes.GoInt));
                    });
                };
            });
        };
    }
function benchmarkAtoi(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("Pos" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _benchmarkAtoi(_b, (1 : stdgo.StdGoTypes.GoInt));
        });
        _b.run(("Neg" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _benchmarkAtoi(_b, (-1 : stdgo.StdGoTypes.GoInt));
        });
    }
function _benchmarkAtoi(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _neg:stdgo.StdGoTypes.GoInt):Void {
        var _cases = (new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_benchCase>(3, 3, (new stdgo.strconv_test.Strconv_test.T_benchCase(("7bit" : stdgo.GoString), (127i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase), (new stdgo.strconv_test.Strconv_test.T_benchCase(("26bit" : stdgo.GoString), (67108863i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase), (new stdgo.strconv_test.Strconv_test.T_benchCase(("31bit" : stdgo.GoString), (2147483647i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_benchCase>);
        if (false) {
            _cases = (_cases.__append__(...(new stdgo.Slice<stdgo.strconv_test.Strconv_test.T_benchCase>(2, 2, (new stdgo.strconv_test.Strconv_test.T_benchCase(("56bit" : stdgo.GoString), (72057594037927935i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase), (new stdgo.strconv_test.Strconv_test.T_benchCase(("63bit" : stdgo.GoString), (9223372036854775807i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.strconv_test.Strconv_test.T_benchCase)) : stdgo.Slice<stdgo.strconv_test.Strconv_test.T_benchCase>).__toArray__()));
        };
        for (__0 => _cs in _cases) {
            _b.run(_cs._name?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                var _s:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_cs._num * (_neg : stdgo.StdGoTypes.GoInt64)))?.__copy__();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        var __tmp__ = atoi(_s?.__copy__()), _out:stdgo.StdGoTypes.GoInt = __tmp__._0, __8:stdgo.Error = __tmp__._1;
                        benchSink = benchSink + (_out);
                    });
                };
            });
        };
    }
function testFormatComplex(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new stdgo.Slice<T__struct_1>(
9,
9,
({ _c : ((1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 2f64)), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (128 : stdgo.StdGoTypes.GoInt), _out : ("(1+2i)" : stdgo.GoString) } : T__struct_1),
({ _c : ((3f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -4f64)), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (128 : stdgo.StdGoTypes.GoInt), _out : ("(3-4i)" : stdgo.GoString) } : T__struct_1),
({ _c : ((-5f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 6f64)), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (128 : stdgo.StdGoTypes.GoInt), _out : ("(-5+6i)" : stdgo.GoString) } : T__struct_1),
({ _c : ((-7f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, -8f64)), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (128 : stdgo.StdGoTypes.GoInt), _out : ("(-7-8i)" : stdgo.GoString) } : T__struct_1),
({ _c : ((3.14159f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0.00123f64)), _fmt : (101 : stdgo.StdGoTypes.GoUInt8), _prec : (3 : stdgo.StdGoTypes.GoInt), _bitSize : (128 : stdgo.StdGoTypes.GoInt), _out : ("(3.142e+00+1.230e-03i)" : stdgo.GoString) } : T__struct_1),
({ _c : ((3.14159f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0.00123f64)), _fmt : (102 : stdgo.StdGoTypes.GoUInt8), _prec : (3 : stdgo.StdGoTypes.GoInt), _bitSize : (128 : stdgo.StdGoTypes.GoInt), _out : ("(3.142+0.001i)" : stdgo.GoString) } : T__struct_1),
({ _c : ((3.14159f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0.00123f64)), _fmt : (103 : stdgo.StdGoTypes.GoUInt8), _prec : (3 : stdgo.StdGoTypes.GoInt), _bitSize : (128 : stdgo.StdGoTypes.GoInt), _out : ("(3.14+0.00123i)" : stdgo.GoString) } : T__struct_1),
({ _c : ((1.2345678901234567f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 9.876543210987654f64)), _fmt : (102 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (128 : stdgo.StdGoTypes.GoInt), _out : ("(1.2345678901234567+9.876543210987654i)" : stdgo.GoString) } : T__struct_1),
({ _c : ((1.2345678901234567f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 9.876543210987654f64)), _fmt : (102 : stdgo.StdGoTypes.GoUInt8), _prec : (-1 : stdgo.StdGoTypes.GoInt), _bitSize : (64 : stdgo.StdGoTypes.GoInt), _out : ("(1.2345679+9.876543i)" : stdgo.GoString) } : T__struct_1)) : stdgo.Slice<T__struct_1>);
        for (__0 => _test in _tests) {
            var _out:stdgo.GoString = formatComplex(_test._c, _test._fmt, _test._prec, _test._bitSize)?.__copy__();
            if (_out != (_test._out)) {
                _t.fatalf(("FormatComplex(%v, %q, %d, %d) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._c), stdgo.Go.toInterface(_test._fmt), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(_test._bitSize), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_test._out));
            };
        };
    }
function testFormatComplexInvalidBitSize(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_r == null) {
                            _t.fatalf(("expected panic due to invalid bitSize" : stdgo.GoString));
                        };
                    };
                };
                a();
            });
            formatComplex(((1f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 2f64)), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (100 : stdgo.StdGoTypes.GoInt));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testDecimalShift(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_shifttests.length), _i++, {
                var _test = (stdgo.Go.setRef(_shifttests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_shiftTest>);
                var _d = newDecimal(_test._i);
                _d.shift(_test._shift);
                var _s:stdgo.GoString = (_d.string() : stdgo.GoString)?.__copy__();
                if (_s != (_test._out)) {
                    _t.errorf(("Decimal %v << %v = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._shift), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._out));
                };
            });
        };
    }
function testDecimalRound(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_roundtests.length), _i++, {
                var _test = (stdgo.Go.setRef(_roundtests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_roundTest>);
                var _d = newDecimal(_test._i);
                _d.roundDown(_test._nd);
                var _s:stdgo.GoString = (_d.string() : stdgo.GoString)?.__copy__();
                if (_s != (_test._down)) {
                    _t.errorf(("Decimal %v RoundDown %d = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._nd), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._down));
                };
                _d = newDecimal(_test._i);
                _d.round(_test._nd);
                _s = (_d.string() : stdgo.GoString)?.__copy__();
                if (_s != (_test._round)) {
                    _t.errorf(("Decimal %v Round %d = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._nd), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._down));
                };
                _d = newDecimal(_test._i);
                _d.roundUp(_test._nd);
                _s = (_d.string() : stdgo.GoString)?.__copy__();
                if (_s != (_test._up)) {
                    _t.errorf(("Decimal %v RoundUp %d = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._nd), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._up));
                };
            });
        };
    }
function testDecimalRoundedInteger(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_roundinttests.length), _i++, {
                var _test:stdgo.strconv_test.Strconv_test.T_roundIntTest = _roundinttests[(_i : stdgo.StdGoTypes.GoInt)];
                var _d = newDecimal(_test._i);
                _d.shift(_test._shift);
                var _int:stdgo.StdGoTypes.GoUInt64 = _d.roundedInteger();
                if (_int != (_test._int)) {
                    _t.errorf(("Decimal %v >> %v RoundedInteger = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._shift), stdgo.Go.toInterface(_int), stdgo.Go.toInterface(_test._int));
                };
            });
        };
    }
function exampleAppendBool():Void {
        var _b = (("bool:" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b = stdgo.strconv.Strconv.appendBool(_b, true);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
function exampleAppendFloat():Void {
        var _b32 = (("float32:" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b32 = stdgo.strconv.Strconv.appendFloat(_b32, (3.1415926535 : stdgo.StdGoTypes.GoFloat64), (69 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b32 : stdgo.GoString)));
        var _b64 = (("float64:" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b64 = stdgo.strconv.Strconv.appendFloat(_b64, (3.1415926535 : stdgo.StdGoTypes.GoFloat64), (69 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b64 : stdgo.GoString)));
    }
function exampleAppendInt():Void {
        var _b10 = (("int (base 10):" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b10 = stdgo.strconv.Strconv.appendInt(_b10, (-42i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b10 : stdgo.GoString)));
        var _b16 = (("int (base 16):" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b16 = stdgo.strconv.Strconv.appendInt(_b16, (-42i64 : stdgo.StdGoTypes.GoInt64), (16 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b16 : stdgo.GoString)));
    }
function exampleAppendQuote():Void {
        var _b = (("quote:" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b = stdgo.strconv.Strconv.appendQuote(_b, ("\"Fran & Freddie\'s Diner\"" : stdgo.GoString));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
function exampleAppendQuoteRune():Void {
        var _b = (("rune:" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b = stdgo.strconv.Strconv.appendQuoteRune(_b, (9786 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
function exampleAppendQuoteRuneToASCII():Void {
        var _b = (("rune (ascii):" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b = stdgo.strconv.Strconv.appendQuoteRuneToASCII(_b, (9786 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
function exampleAppendQuoteToASCII():Void {
        var _b = (("quote (ascii):" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b = stdgo.strconv.Strconv.appendQuoteToASCII(_b, ("\"Fran & Freddie\'s Diner\"" : stdgo.GoString));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
function exampleAppendUint():Void {
        var _b10 = (("uint (base 10):" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b10 = stdgo.strconv.Strconv.appendUint(_b10, (42i64 : stdgo.StdGoTypes.GoUInt64), (10 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b10 : stdgo.GoString)));
        var _b16 = (("uint (base 16):" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b16 = stdgo.strconv.Strconv.appendUint(_b16, (42i64 : stdgo.StdGoTypes.GoUInt64), (16 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b16 : stdgo.GoString)));
    }
function exampleAtoi():Void {
        var _v:stdgo.GoString = ("10" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.atoi(_v?.__copy__()), _s:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
function exampleCanBackquote():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strconv.Strconv.canBackquote(("Fran & Freddie\'s Diner ☺" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strconv.Strconv.canBackquote(("`can\'t backquote this`" : stdgo.GoString))));
    }
function exampleFormatBool():Void {
        var _v:Bool = true;
        var _s:stdgo.GoString = stdgo.strconv.Strconv.formatBool(_v)?.__copy__();
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
    }
function exampleFormatFloat():Void {
        var _v:stdgo.StdGoTypes.GoFloat64 = (3.1415926535 : stdgo.StdGoTypes.GoFloat64);
        var _s32:stdgo.GoString = stdgo.strconv.Strconv.formatFloat(_v, (69 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt))?.__copy__();
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s32), stdgo.Go.toInterface(_s32));
        var _s64:stdgo.GoString = stdgo.strconv.Strconv.formatFloat(_v, (69 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s64), stdgo.Go.toInterface(_s64));
        var _fmt64:stdgo.GoString = stdgo.strconv.Strconv.formatFloat(_v, (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_fmt64), stdgo.Go.toInterface(_fmt64));
    }
function exampleFormatInt():Void {
        var _v:stdgo.StdGoTypes.GoInt64 = (-42i64 : stdgo.StdGoTypes.GoInt64);
        var _s10:stdgo.GoString = stdgo.strconv.Strconv.formatInt(_v, (10 : stdgo.StdGoTypes.GoInt))?.__copy__();
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s10), stdgo.Go.toInterface(_s10));
        var _s16:stdgo.GoString = stdgo.strconv.Strconv.formatInt(_v, (16 : stdgo.StdGoTypes.GoInt))?.__copy__();
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s16), stdgo.Go.toInterface(_s16));
    }
function exampleFormatUint():Void {
        var _v:stdgo.StdGoTypes.GoUInt64 = (42i64 : stdgo.StdGoTypes.GoUInt64);
        var _s10:stdgo.GoString = stdgo.strconv.Strconv.formatUint(_v, (10 : stdgo.StdGoTypes.GoInt))?.__copy__();
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s10), stdgo.Go.toInterface(_s10));
        var _s16:stdgo.GoString = stdgo.strconv.Strconv.formatUint(_v, (16 : stdgo.StdGoTypes.GoInt))?.__copy__();
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s16), stdgo.Go.toInterface(_s16));
    }
function exampleIsGraphic():Void {
        var _shamrock:Bool = stdgo.strconv.Strconv.isGraphic((9752 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_shamrock));
        var _a:Bool = stdgo.strconv.Strconv.isGraphic((97 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_a));
        var _bel:Bool = stdgo.strconv.Strconv.isGraphic((7 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_bel));
    }
function exampleIsPrint():Void {
        var _c:Bool = stdgo.strconv.Strconv.isPrint((9786 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_c));
        var _bel:Bool = stdgo.strconv.Strconv.isPrint((7 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_bel));
    }
function exampleItoa():Void {
        var _i:stdgo.StdGoTypes.GoInt = (10 : stdgo.StdGoTypes.GoInt);
        var _s:stdgo.GoString = stdgo.strconv.Strconv.itoa(_i)?.__copy__();
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
    }
function exampleParseBool():Void {
        var _v:stdgo.GoString = ("true" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseBool(_v?.__copy__()), _s:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
function exampleParseFloat():Void {
        var _v:stdgo.GoString = ("3.1415926535" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(_v?.__copy__(), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(_v?.__copy__(), (64 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("NaN" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("nan" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("inf" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("+Inf" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("-Inf" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("-0" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("+0" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
function exampleParseInt():Void {
        var _v32:stdgo.GoString = ("-354634382" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_v32?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_v32?.__copy__(), (16 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        var _v64:stdgo.GoString = ("-3546343826724305832" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_v64?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_v64?.__copy__(), (16 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
function exampleParseUint():Void {
        var _v:stdgo.GoString = ("42" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseUint(_v?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseUint(_v?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
function exampleQuote():Void {
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quote(("\"Fran & Freddie\'s Diner\t☺\"" : stdgo.GoString))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
function exampleQuoteRune():Void {
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quoteRune((9786 : stdgo.StdGoTypes.GoInt32))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
function exampleQuoteRuneToASCII():Void {
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quoteRuneToASCII((9786 : stdgo.StdGoTypes.GoInt32))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
function exampleQuoteRuneToGraphic():Void {
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quoteRuneToGraphic((9786 : stdgo.StdGoTypes.GoInt32))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteRuneToGraphic((9786 : stdgo.StdGoTypes.GoInt32))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteRuneToGraphic((10 : stdgo.StdGoTypes.GoInt32))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteRuneToGraphic((9 : stdgo.StdGoTypes.GoInt32))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
function exampleQuoteToASCII():Void {
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quoteToASCII(("\"Fran & Freddie\'s Diner\t☺\"" : stdgo.GoString))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
function exampleQuoteToGraphic():Void {
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quoteToGraphic(("☺" : stdgo.GoString))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteToGraphic(("This is a ☺\t\n" : stdgo.GoString))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteToGraphic(("\" This is a ☺ \\n \"" : stdgo.GoString))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
function exampleUnquote():Void {
        var __tmp__ = stdgo.strconv.Strconv.unquote(("You can\'t unquote a string without quotes" : stdgo.GoString)), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.strconv.Strconv.unquote(("\"The string must be either double-quoted\"" : stdgo.GoString));
            _s = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.strconv.Strconv.unquote(("`or backquoted.`" : stdgo.GoString));
            _s = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.strconv.Strconv.unquote(("\'☺\'" : stdgo.GoString));
            _s = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.strconv.Strconv.unquote(("\'☹☹\'" : stdgo.GoString));
            _s = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
    }
function exampleUnquoteChar():Void {
        var __tmp__ = stdgo.strconv.Strconv.unquoteChar(("\\\"Fran & Freddie\'s Diner\\\"" : stdgo.GoString), (34 : stdgo.StdGoTypes.GoUInt8)), _v:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _mb:Bool = __tmp__._1, _t:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("value:" : stdgo.GoString)), stdgo.Go.toInterface((_v : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("multibyte:" : stdgo.GoString)), stdgo.Go.toInterface(_mb));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("tail:" : stdgo.GoString)), stdgo.Go.toInterface(_t));
    }
function exampleNumError():Void {
        var _str:stdgo.GoString = ("Not a number" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(_str?.__copy__(), (64 : stdgo.StdGoTypes.GoInt)), __0:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                var _e = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>);
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Func:" : stdgo.GoString)), stdgo.Go.toInterface(_e.func));
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Num:" : stdgo.GoString)), stdgo.Go.toInterface(_e.num));
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Err:" : stdgo.GoString)), stdgo.Go.toInterface(_e.err));
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_err));
            };
        };
    }
function _pow2(_i:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoFloat64 {
        if (_i < (0 : stdgo.StdGoTypes.GoInt)) {
            return (1 : stdgo.StdGoTypes.GoFloat64) / _pow2(-_i);
        } else if (_i == ((0 : stdgo.StdGoTypes.GoInt))) {
            return (1 : stdgo.StdGoTypes.GoFloat64);
        } else if (_i == ((1 : stdgo.StdGoTypes.GoInt))) {
            return (2 : stdgo.StdGoTypes.GoFloat64);
        };
        return _pow2(_i / (2 : stdgo.StdGoTypes.GoInt)) * _pow2(_i - (_i / (2 : stdgo.StdGoTypes.GoInt)));
    }
/**
    // Wrapper around strconv.ParseFloat(x, 64).  Handles dddddp+ddd (binary exponent)
    // itself, passes the rest on to strconv.ParseFloat.
**/
function _myatof64(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoFloat64; var _1 : Bool; } {
        var _f:stdgo.StdGoTypes.GoFloat64 = (0 : stdgo.StdGoTypes.GoFloat64), _ok:Bool = false;
        {
            var __tmp__ = stdgo.strings.Strings.cut(_s?.__copy__(), ("p" : stdgo.GoString)), _mant:stdgo.GoString = __tmp__._0, _exp:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_mant?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _n:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (0 : stdgo.StdGoTypes.GoFloat64), _1 : false };
                };
                var __tmp__ = stdgo.strconv.Strconv.atoi(_exp?.__copy__()), _e:stdgo.StdGoTypes.GoInt = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                if (_err1 != null) {
                    stdgo.Go.println(("bad e" : stdgo.GoString), _exp);
                    return { _0 : (0 : stdgo.StdGoTypes.GoFloat64), _1 : false };
                };
                var _v:stdgo.StdGoTypes.GoFloat64 = (_n : stdgo.StdGoTypes.GoFloat64);
                if (_e <= (-1000 : stdgo.StdGoTypes.GoInt)) {
                    _v = _v * (_pow2((-1000 : stdgo.StdGoTypes.GoInt)));
                    _e = _e + ((1000 : stdgo.StdGoTypes.GoInt));
                    while (_e < (0 : stdgo.StdGoTypes.GoInt)) {
                        _v = _v / (2 : stdgo.StdGoTypes.GoFloat64);
                        _e++;
                    };
                    return { _0 : _v, _1 : true };
                };
                if (_e >= (1000 : stdgo.StdGoTypes.GoInt)) {
                    _v = _v * (_pow2((1000 : stdgo.StdGoTypes.GoInt)));
                    _e = _e - ((1000 : stdgo.StdGoTypes.GoInt));
                    while (_e > (0 : stdgo.StdGoTypes.GoInt)) {
                        _v = _v * (2 : stdgo.StdGoTypes.GoFloat64);
                        _e--;
                    };
                    return { _0 : _v, _1 : true };
                };
                return { _0 : _v * _pow2(_e), _1 : true };
            };
        };
        var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s?.__copy__(), (64 : stdgo.StdGoTypes.GoInt)), _f1:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (0 : stdgo.StdGoTypes.GoFloat64), _1 : false };
        };
        return { _0 : _f1, _1 : true };
    }
/**
    // Wrapper around strconv.ParseFloat(x, 32).  Handles dddddp+ddd (binary exponent)
    // itself, passes the rest on to strconv.ParseFloat.
**/
function _myatof32(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoFloat32; var _1 : Bool; } {
        var _f:stdgo.StdGoTypes.GoFloat32 = (0 : stdgo.StdGoTypes.GoFloat32), _ok:Bool = false;
        {
            var __tmp__ = stdgo.strings.Strings.cut(_s?.__copy__(), ("p" : stdgo.GoString)), _mant:stdgo.GoString = __tmp__._0, _exp:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                var __tmp__ = stdgo.strconv.Strconv.atoi(_mant?.__copy__()), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo.Go.println(("bad n" : stdgo.GoString), _mant);
                    return { _0 : (0 : stdgo.StdGoTypes.GoFloat64), _1 : false };
                };
                var __tmp__ = stdgo.strconv.Strconv.atoi(_exp?.__copy__()), _e:stdgo.StdGoTypes.GoInt = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                if (_err1 != null) {
                    stdgo.Go.println(("bad p" : stdgo.GoString), _exp);
                    return { _0 : (0 : stdgo.StdGoTypes.GoFloat64), _1 : false };
                };
                return { _0 : ((_n : stdgo.StdGoTypes.GoFloat64) * _pow2(_e) : stdgo.StdGoTypes.GoFloat32), _1 : true };
            };
        };
        var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s?.__copy__(), (32 : stdgo.StdGoTypes.GoInt)), _f64:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
        var _f1:stdgo.StdGoTypes.GoFloat32 = (_f64 : stdgo.StdGoTypes.GoFloat32);
        if (_err1 != null) {
            return { _0 : (0 : stdgo.StdGoTypes.GoFloat64), _1 : false };
        };
        return { _0 : _f1, _1 : true };
    }
function testFp(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testFp" + " skip function");
        return;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.os.Os.open(("testdata/testfp.txt" : stdgo.GoString)), _f:stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("testfp: open testdata/testfp.txt:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var _s = stdgo.bufio.Bufio.newScanner(stdgo.Go.asInterface(_f));
            {
                var _lineno:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_s.scan(), _lineno++, {
                    var _line:stdgo.GoString = _s.text()?.__copy__();
                    if ((_line.length == (0 : stdgo.StdGoTypes.GoInt)) || (_line[(0 : stdgo.StdGoTypes.GoInt)] == (35 : stdgo.StdGoTypes.GoUInt8))) {
                        continue;
                    };
                    var _a = stdgo.strings.Strings.split(_line?.__copy__(), (" " : stdgo.GoString));
                    if ((_a.length) != ((4 : stdgo.StdGoTypes.GoInt))) {
                        _t.error(stdgo.Go.toInterface(("testdata/testfp.txt:" : stdgo.GoString)), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((": wrong field count" : stdgo.GoString)));
                        continue;
                    };
                    var _s:stdgo.GoString = ("" : stdgo.GoString);
                    var _v:stdgo.StdGoTypes.GoFloat64 = (0 : stdgo.StdGoTypes.GoFloat64);
                    {
                        final __value__ = _a[(0 : stdgo.StdGoTypes.GoInt)];
                        if (__value__ == (("float64" : stdgo.GoString))) {
                            var _ok:Bool = false;
                            {
                                var __tmp__ = _myatof64(_a[(2 : stdgo.StdGoTypes.GoInt)]?.__copy__());
                                _v = __tmp__._0;
                                _ok = __tmp__._1;
                            };
                            if (!_ok) {
                                _t.error(stdgo.Go.toInterface(("testdata/testfp.txt:" : stdgo.GoString)), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((": cannot atof64 " : stdgo.GoString)), stdgo.Go.toInterface(_a[(2 : stdgo.StdGoTypes.GoInt)]));
                                continue;
                            };
                            _s = stdgo.fmt.Fmt.sprintf(_a[(1 : stdgo.StdGoTypes.GoInt)]?.__copy__(), stdgo.Go.toInterface(_v))?.__copy__();
                        } else if (__value__ == (("float32" : stdgo.GoString))) {
                            var __tmp__ = _myatof32(_a[(2 : stdgo.StdGoTypes.GoInt)]?.__copy__()), _v1:stdgo.StdGoTypes.GoFloat32 = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                _t.error(stdgo.Go.toInterface(("testdata/testfp.txt:" : stdgo.GoString)), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((": cannot atof32 " : stdgo.GoString)), stdgo.Go.toInterface(_a[(2 : stdgo.StdGoTypes.GoInt)]));
                                continue;
                            };
                            _s = stdgo.fmt.Fmt.sprintf(_a[(1 : stdgo.StdGoTypes.GoInt)]?.__copy__(), stdgo.Go.toInterface(_v1))?.__copy__();
                            _v = (_v1 : stdgo.StdGoTypes.GoFloat64);
                        };
                    };
                    if (_s != (_a[((3 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) {
                        _t.error(stdgo.Go.toInterface(("testdata/testfp.txt:" : stdgo.GoString)),
stdgo.Go.toInterface(_lineno),
stdgo.Go.toInterface((": " : stdgo.GoString)),
stdgo.Go.toInterface(_a[(0 : stdgo.StdGoTypes.GoInt)]),
stdgo.Go.toInterface((" " : stdgo.GoString)),
stdgo.Go.toInterface(_a[(1 : stdgo.StdGoTypes.GoInt)]),
stdgo.Go.toInterface((" " : stdgo.GoString)),
stdgo.Go.toInterface(_a[(2 : stdgo.StdGoTypes.GoInt)]),
stdgo.Go.toInterface((" (" : stdgo.GoString)),
stdgo.Go.toInterface(_v),
stdgo.Go.toInterface((") " : stdgo.GoString)),
stdgo.Go.toInterface(("want " : stdgo.GoString)),
stdgo.Go.toInterface(_a[(3 : stdgo.StdGoTypes.GoInt)]),
stdgo.Go.toInterface((" got " : stdgo.GoString)),
stdgo.Go.toInterface(_s));
                    };
                });
            };
            if (_s.err() != null) {
                _t.fatal(stdgo.Go.toInterface(("testfp: read testdata/testfp.txt: " : stdgo.GoString)), stdgo.Go.toInterface(_s.err()));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _fdiv(_a:stdgo.StdGoTypes.GoFloat64, _b:stdgo.StdGoTypes.GoFloat64):stdgo.StdGoTypes.GoFloat64 {
        return _a / _b;
    }
function testFtoa(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_ftoatests.length), _i++, {
                var _test = (stdgo.Go.setRef(_ftoatests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_ftoaTest>);
                var _s:stdgo.GoString = formatFloat(_test._f, _test._fmt, _test._prec, (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
                if (_s != (_test._s)) {
                    _t.error(stdgo.Go.toInterface(("testN=64" : stdgo.GoString)), stdgo.Go.toInterface(_test._f), stdgo.Go.toInterface((_test._fmt : stdgo.GoString)), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(("want" : stdgo.GoString)), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(("got" : stdgo.GoString)), stdgo.Go.toInterface(_s));
                };
                var _x = appendFloat((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _test._f, _test._fmt, _test._prec, (64 : stdgo.StdGoTypes.GoInt));
                if ((_x : stdgo.GoString) != (("abc" : stdgo.GoString) + _test._s?.__copy__())) {
                    _t.error(stdgo.Go.toInterface(("AppendFloat testN=64" : stdgo.GoString)), stdgo.Go.toInterface(_test._f), stdgo.Go.toInterface((_test._fmt : stdgo.GoString)), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(("want" : stdgo.GoString)), stdgo.Go.toInterface(("abc" : stdgo.GoString) + _test._s?.__copy__()), stdgo.Go.toInterface(("got" : stdgo.GoString)), stdgo.Go.toInterface((_x : stdgo.GoString)));
                };
                if ((((_test._f : stdgo.StdGoTypes.GoFloat32) : stdgo.StdGoTypes.GoFloat64) == _test._f) && (_test._fmt != (98 : stdgo.StdGoTypes.GoUInt8))) {
                    var _s:stdgo.GoString = formatFloat(_test._f, _test._fmt, _test._prec, (32 : stdgo.StdGoTypes.GoInt))?.__copy__();
                    if (_s != (_test._s)) {
                        _t.error(stdgo.Go.toInterface(("testN=32" : stdgo.GoString)), stdgo.Go.toInterface(_test._f), stdgo.Go.toInterface((_test._fmt : stdgo.GoString)), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(("want" : stdgo.GoString)), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(("got" : stdgo.GoString)), stdgo.Go.toInterface(_s));
                    };
                    var _x = appendFloat((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _test._f, _test._fmt, _test._prec, (32 : stdgo.StdGoTypes.GoInt));
                    if ((_x : stdgo.GoString) != (("abc" : stdgo.GoString) + _test._s?.__copy__())) {
                        _t.error(stdgo.Go.toInterface(("AppendFloat testN=32" : stdgo.GoString)), stdgo.Go.toInterface(_test._f), stdgo.Go.toInterface((_test._fmt : stdgo.GoString)), stdgo.Go.toInterface(_test._prec), stdgo.Go.toInterface(("want" : stdgo.GoString)), stdgo.Go.toInterface(("abc" : stdgo.GoString) + _test._s?.__copy__()), stdgo.Go.toInterface(("got" : stdgo.GoString)), stdgo.Go.toInterface((_x : stdgo.GoString)));
                    };
                };
            });
        };
    }
function testFtoaPowersOfTwo(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testFtoaPowersOfTwo" + " skip function");
        return;
        {
            var _exp:stdgo.StdGoTypes.GoInt = (-2048 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_exp <= (2048 : stdgo.StdGoTypes.GoInt), _exp++, {
                var _f:stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.ldexp((1 : stdgo.StdGoTypes.GoFloat64), _exp);
                if (!stdgo.math.Math.isInf(_f, (0 : stdgo.StdGoTypes.GoInt))) {
                    var _s:stdgo.GoString = formatFloat(_f, (101 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
                    {
                        var __tmp__ = parseFloat(_s?.__copy__(), (64 : stdgo.StdGoTypes.GoInt)), _x:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                        if (_x != (_f)) {
                            _t.errorf(("failed roundtrip %v => %s => %v" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_x));
                        };
                    };
                };
                var _f32:stdgo.StdGoTypes.GoFloat32 = (_f : stdgo.StdGoTypes.GoFloat32);
                if (!stdgo.math.Math.isInf((_f32 : stdgo.StdGoTypes.GoFloat64), (0 : stdgo.StdGoTypes.GoInt))) {
                    var _s:stdgo.GoString = formatFloat((_f32 : stdgo.StdGoTypes.GoFloat64), (101 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt))?.__copy__();
                    {
                        var __tmp__ = parseFloat(_s?.__copy__(), (32 : stdgo.StdGoTypes.GoInt)), _x:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, __9:stdgo.Error = __tmp__._1;
                        if ((_x : stdgo.StdGoTypes.GoFloat32) != (_f32)) {
                            _t.errorf(("failed roundtrip %v => %s => %v" : stdgo.GoString), stdgo.Go.toInterface(_f32), stdgo.Go.toInterface(_s), stdgo.Go.toInterface((_x : stdgo.StdGoTypes.GoFloat32)));
                        };
                    };
                };
            });
        };
    }
function testFtoaRandom(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        trace("testFtoaRandom" + " skip function");
        return;
        var n:stdgo.StdGoTypes.GoInt = (10000 : stdgo.StdGoTypes.GoInt);
        if (stdgo.testing.Testing.short()) {
            n = (100 : stdgo.StdGoTypes.GoInt);
        };
        _t.logf(("testing %d random numbers with fast and slow FormatFloat" : stdgo.GoString), stdgo.Go.toInterface(n));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < n, _i++, {
                var _bits:stdgo.StdGoTypes.GoUInt64 = ((stdgo.math.rand.Rand.uint32() : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64)) | (stdgo.math.rand.Rand.uint32() : stdgo.StdGoTypes.GoUInt64);
                var _x:stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.float64frombits(_bits);
                var _shortFast:stdgo.GoString = formatFloat(_x, (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
                setOptimize(false);
                var _shortSlow:stdgo.GoString = formatFloat(_x, (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
                setOptimize(true);
                if (_shortSlow != (_shortFast)) {
                    _t.errorf(("%b printed as %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_shortFast), stdgo.Go.toInterface(_shortSlow));
                };
                var _prec:stdgo.StdGoTypes.GoInt = stdgo.math.rand.Rand.intn((12 : stdgo.StdGoTypes.GoInt)) + (5 : stdgo.StdGoTypes.GoInt);
                _shortFast = formatFloat(_x, (101 : stdgo.StdGoTypes.GoUInt8), _prec, (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
                setOptimize(false);
                _shortSlow = formatFloat(_x, (101 : stdgo.StdGoTypes.GoUInt8), _prec, (64 : stdgo.StdGoTypes.GoInt))?.__copy__();
                setOptimize(true);
                if (_shortSlow != (_shortFast)) {
                    _t.errorf(("%b printed as %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_shortFast), stdgo.Go.toInterface(_shortSlow));
                };
            });
        };
    }
function testFormatFloatInvalidBitSize(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_r == null) {
                            _t.fatalf(("expected panic due to invalid bitSize" : stdgo.GoString));
                        };
                    };
                };
                a();
            });
            formatFloat((3.14 : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (100 : stdgo.StdGoTypes.GoInt));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function benchmarkFormatFloat(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _c in _ftoaBenches) {
            _b.run(_c._name?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        formatFloat(_c._float, _c._fmt, _c._prec, _c._bitSize);
                    });
                };
            });
        };
    }
function benchmarkAppendFloat(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _dst = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((30 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (__0 => _c in _ftoaBenches) {
            _b.run(_c._name?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        appendFloat((_dst.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _c._float, _c._fmt, _c._prec, _c._bitSize);
                    });
                };
            });
        };
    }
function testMulByLog2Log10(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _x:stdgo.StdGoTypes.GoInt = (-1600 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_x <= (1600 : stdgo.StdGoTypes.GoInt), _x++, {
                var _iMath:stdgo.StdGoTypes.GoInt = mulByLog2Log10(_x);
                var _fMath:stdgo.StdGoTypes.GoInt = (stdgo.math.Math.floor(((_x : stdgo.StdGoTypes.GoFloat64) * (0.6931471805599453 : stdgo.StdGoTypes.GoFloat64)) / (2.302585092994046 : stdgo.StdGoTypes.GoFloat64)) : stdgo.StdGoTypes.GoInt);
                if (_iMath != (_fMath)) {
                    _t.errorf(("mulByLog2Log10(%d) failed: %d vs %d\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_iMath), stdgo.Go.toInterface(_fMath));
                };
            });
        };
    }
function testMulByLog10Log2(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _x:stdgo.StdGoTypes.GoInt = (-500 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_x <= (500 : stdgo.StdGoTypes.GoInt), _x++, {
                var _iMath:stdgo.StdGoTypes.GoInt = mulByLog10Log2(_x);
                var _fMath:stdgo.StdGoTypes.GoInt = (stdgo.math.Math.floor(((_x : stdgo.StdGoTypes.GoFloat64) * (2.302585092994046 : stdgo.StdGoTypes.GoFloat64)) / (0.6931471805599453 : stdgo.StdGoTypes.GoFloat64)) : stdgo.StdGoTypes.GoInt);
                if (_iMath != (_fMath)) {
                    _t.errorf(("mulByLog10Log2(%d) failed: %d vs %d\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_iMath), stdgo.Go.toInterface(_fMath));
                };
            });
        };
    }
function testItoa(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            for (__0 => _test in _itob64tests) {
                var _s:stdgo.GoString = formatInt(_test._in, _test._base)?.__copy__();
                if (_s != (_test._out)) {
                    _t.errorf(("FormatInt(%v, %v) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._out));
                };
                var _x = appendInt((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _test._in, _test._base);
                if ((_x : stdgo.GoString) != (("abc" : stdgo.GoString) + _test._out?.__copy__())) {
                    _t.errorf(("AppendInt(%q, %v, %v) = %q want %v" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._out));
                };
                if (_test._in >= (0i64 : stdgo.StdGoTypes.GoInt64)) {
                    var _s:stdgo.GoString = formatUint((_test._in : stdgo.StdGoTypes.GoUInt64), _test._base)?.__copy__();
                    if (_s != (_test._out)) {
                        _t.errorf(("FormatUint(%v, %v) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._out));
                    };
                    var _x = appendUint((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_test._in : stdgo.StdGoTypes.GoUInt64), _test._base);
                    if ((_x : stdgo.GoString) != (_test._out)) {
                        _t.errorf(("AppendUint(%q, %v, %v) = %q want %v" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface((_test._in : stdgo.StdGoTypes.GoUInt64)), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._out));
                    };
                };
                if ((_test._base == (10 : stdgo.StdGoTypes.GoInt)) && (((_test._in : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt64) == _test._in)) {
                    var _s:stdgo.GoString = itoa((_test._in : stdgo.StdGoTypes.GoInt))?.__copy__();
                    if (_s != (_test._out)) {
                        _t.errorf(("Itoa(%v) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._out));
                    };
                };
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_r == null) {
                            _t.fatalf(("expected panic due to illegal base" : stdgo.GoString));
                        };
                    };
                };
                a();
            });
            formatUint((12345678i64 : stdgo.StdGoTypes.GoUInt64), (1 : stdgo.StdGoTypes.GoInt));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testUitoa(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _uitob64tests) {
            var _s:stdgo.GoString = formatUint(_test._in, _test._base)?.__copy__();
            if (_s != (_test._out)) {
                _t.errorf(("FormatUint(%v, %v) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._out));
            };
            var _x = appendUint((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _test._in, _test._base);
            if ((_x : stdgo.GoString) != (("abc" : stdgo.GoString) + _test._out?.__copy__())) {
                _t.errorf(("AppendUint(%q, %v, %v) = %q want %v" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._base), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._out));
            };
        };
    }
function testFormatUintVarlen(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _varlenUints) {
            var _s:stdgo.GoString = formatUint(_test._in, (10 : stdgo.StdGoTypes.GoInt))?.__copy__();
            if (_s != (_test._out)) {
                _t.errorf(("FormatUint(%v, 10) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._out));
            };
        };
    }
function benchmarkFormatInt(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                for (__8 => _test in _itob64tests) {
                    var _s:stdgo.GoString = formatInt(_test._in, _test._base)?.__copy__();
                    benchSink = benchSink + ((_s.length));
                };
            });
        };
    }
function benchmarkAppendInt(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _dst = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (30 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                for (__8 => _test in _itob64tests) {
                    _dst = appendInt((_dst.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _test._in, _test._base);
                    benchSink = benchSink + ((_dst.length));
                };
            });
        };
    }
function benchmarkFormatUint(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                for (__8 => _test in _uitob64tests) {
                    var _s:stdgo.GoString = formatUint(_test._in, _test._base)?.__copy__();
                    benchSink = benchSink + ((_s.length));
                };
            });
        };
    }
function benchmarkAppendUint(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _dst = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (30 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                for (__8 => _test in _uitob64tests) {
                    _dst = appendUint((_dst.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _test._in, _test._base);
                    benchSink = benchSink + ((_dst.length));
                };
            });
        };
    }
function benchmarkFormatIntSmall(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _smallInts = (new stdgo.Slice<stdgo.StdGoTypes.GoInt64>(2, 2, (7i64 : stdgo.StdGoTypes.GoInt64), (42i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoInt64>);
        for (__0 => _smallInt in _smallInts) {
            _b.run(itoa((_smallInt : stdgo.StdGoTypes.GoInt))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _b.n, _i++, {
                        var _s:stdgo.GoString = formatInt(_smallInt, (10 : stdgo.StdGoTypes.GoInt))?.__copy__();
                        benchSink = benchSink + ((_s.length));
                    });
                };
            });
        };
    }
function benchmarkAppendIntSmall(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _dst = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (30 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
        {};
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _dst = appendInt((_dst.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (42i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
                benchSink = benchSink + ((_dst.length));
            });
        };
    }
function benchmarkAppendUintVarlen(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        for (__0 => _test in _varlenUints) {
            _b.run(_test._out?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                var _dst = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (30 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < _b.n, _j++, {
                        _dst = appendUint((_dst.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _test._in, (10 : stdgo.StdGoTypes.GoInt));
                        benchSink = benchSink + ((_dst.length));
                    });
                };
            });
        };
    }
/**
    // Verify that our IsPrint agrees with unicode.IsPrint.
**/
function testIsPrint(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _r:stdgo.StdGoTypes.GoInt32 = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune);
            stdgo.Go.cfor(_r <= (1114111 : stdgo.StdGoTypes.GoInt32), _r++, {
                if (isPrint(_r) != (stdgo.unicode.Unicode.isPrint(_r))) {
                    _t.errorf(("IsPrint(%U)=%t incorrect" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(isPrint(_r)));
                    _n++;
                    if (_n > (10 : stdgo.StdGoTypes.GoInt)) {
                        return;
                    };
                };
            });
        };
    }
/**
    // Verify that our IsGraphic agrees with unicode.IsGraphic.
**/
function testIsGraphic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _r:stdgo.StdGoTypes.GoInt32 = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune);
            stdgo.Go.cfor(_r <= (1114111 : stdgo.StdGoTypes.GoInt32), _r++, {
                if (isGraphic(_r) != (stdgo.unicode.Unicode.isGraphic(_r))) {
                    _t.errorf(("IsGraphic(%U)=%t incorrect" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(isGraphic(_r)));
                    _n++;
                    if (_n > (10 : stdgo.StdGoTypes.GoInt)) {
                        return;
                    };
                };
            });
        };
    }
function testQuote(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _quotetests) {
            {
                var _out:stdgo.GoString = quote(_tt._in?.__copy__())?.__copy__();
                if (_out != (_tt._out)) {
                    _t.errorf(("Quote(%s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
            {
                var _out = appendQuote((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._in?.__copy__());
                if ((_out : stdgo.GoString) != (("abc" : stdgo.GoString) + _tt._out?.__copy__())) {
                    _t.errorf(("AppendQuote(%q, %s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(("abc" : stdgo.GoString) + _tt._out?.__copy__()));
                };
            };
        };
    }
function testQuoteToASCII(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _quotetests) {
            {
                var _out:stdgo.GoString = quoteToASCII(_tt._in?.__copy__())?.__copy__();
                if (_out != (_tt._ascii)) {
                    _t.errorf(("QuoteToASCII(%s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._ascii));
                };
            };
            {
                var _out = appendQuoteToASCII((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._in?.__copy__());
                if ((_out : stdgo.GoString) != (("abc" : stdgo.GoString) + _tt._ascii?.__copy__())) {
                    _t.errorf(("AppendQuoteToASCII(%q, %s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(("abc" : stdgo.GoString) + _tt._ascii?.__copy__()));
                };
            };
        };
    }
function testQuoteToGraphic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _quotetests) {
            {
                var _out:stdgo.GoString = quoteToGraphic(_tt._in?.__copy__())?.__copy__();
                if (_out != (_tt._graphic)) {
                    _t.errorf(("QuoteToGraphic(%s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._graphic));
                };
            };
            {
                var _out = appendQuoteToGraphic((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._in?.__copy__());
                if ((_out : stdgo.GoString) != (("abc" : stdgo.GoString) + _tt._graphic?.__copy__())) {
                    _t.errorf(("AppendQuoteToGraphic(%q, %s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(("abc" : stdgo.GoString) + _tt._graphic?.__copy__()));
                };
            };
        };
    }
function benchmarkQuote(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                quote(("\x07\x08\x0C\r\n\t\x0B\x07\x08\x0C\r\n\t\x0B\x07\x08\x0C\r\n\t\x0B" : stdgo.GoString));
            });
        };
    }
function benchmarkQuoteRune(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                quoteRune((7 : stdgo.StdGoTypes.GoInt32));
            });
        };
    }
function benchmarkAppendQuote(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _benchQuoteBuf = appendQuote((_benchQuoteBuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), ("\x07\x08\x0C\r\n\t\x0B\x07\x08\x0C\r\n\t\x0B\x07\x08\x0C\r\n\t\x0B" : stdgo.GoString));
            });
        };
    }
function benchmarkAppendQuoteRune(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _benchQuoteRuneBuf = appendQuoteRune((_benchQuoteRuneBuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (7 : stdgo.StdGoTypes.GoInt32));
            });
        };
    }
function testQuoteRune(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _quoterunetests) {
            {
                var _out:stdgo.GoString = quoteRune(_tt._in)?.__copy__();
                if (_out != (_tt._out)) {
                    _t.errorf(("QuoteRune(%U) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
            {
                var _out = appendQuoteRune((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._in);
                if ((_out : stdgo.GoString) != (("abc" : stdgo.GoString) + _tt._out?.__copy__())) {
                    _t.errorf(("AppendQuoteRune(%q, %U) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(("abc" : stdgo.GoString) + _tt._out?.__copy__()));
                };
            };
        };
    }
function testQuoteRuneToASCII(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _quoterunetests) {
            {
                var _out:stdgo.GoString = quoteRuneToASCII(_tt._in)?.__copy__();
                if (_out != (_tt._ascii)) {
                    _t.errorf(("QuoteRuneToASCII(%U) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._ascii));
                };
            };
            {
                var _out = appendQuoteRuneToASCII((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._in);
                if ((_out : stdgo.GoString) != (("abc" : stdgo.GoString) + _tt._ascii?.__copy__())) {
                    _t.errorf(("AppendQuoteRuneToASCII(%q, %U) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(("abc" : stdgo.GoString) + _tt._ascii?.__copy__()));
                };
            };
        };
    }
function testQuoteRuneToGraphic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _quoterunetests) {
            {
                var _out:stdgo.GoString = quoteRuneToGraphic(_tt._in)?.__copy__();
                if (_out != (_tt._graphic)) {
                    _t.errorf(("QuoteRuneToGraphic(%U) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._graphic));
                };
            };
            {
                var _out = appendQuoteRuneToGraphic((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._in);
                if ((_out : stdgo.GoString) != (("abc" : stdgo.GoString) + _tt._graphic?.__copy__())) {
                    _t.errorf(("AppendQuoteRuneToGraphic(%q, %U) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(("abc" : stdgo.GoString)), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(("abc" : stdgo.GoString) + _tt._graphic?.__copy__()));
                };
            };
        };
    }
function testCanBackquote(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _canbackquotetests) {
            {
                var _out:Bool = canBackquote(_tt._in?.__copy__());
                if (_out != (_tt._out)) {
                    _t.errorf(("CanBackquote(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function testUnquote(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _unquotetests) {
            _testUnquote(_t, _tt._in?.__copy__(), _tt._out?.__copy__(), (null : stdgo.Error));
        };
        for (__1 => _tt in _quotetests) {
            _testUnquote(_t, _tt._out?.__copy__(), _tt._in?.__copy__(), (null : stdgo.Error));
        };
        for (__2 => _s in _misquoted) {
            _testUnquote(_t, _s?.__copy__(), stdgo.Go.str()?.__copy__(), errSyntax);
        };
    }
/**
    // Issue 23685: invalid UTF-8 should not go through the fast path.
**/
function testUnquoteInvalidUTF8(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new stdgo.Slice<T__struct_4>(5, 5, ({ _in : ("\"foo\"" : stdgo.GoString), _want : ("foo" : stdgo.GoString), _wantErr : (null : stdgo.Error) } : T__struct_4), ({ _in : ("\"foo" : stdgo.GoString), _want : ("" : stdgo.GoString), _wantErr : errSyntax } : T__struct_4), ({ _in : stdgo.Go.str("\"", 192, "\"")?.__copy__(), _want : ("�" : stdgo.GoString), _wantErr : (null : stdgo.Error) } : T__struct_4), ({ _in : stdgo.Go.str("\"a", 192, "\"")?.__copy__(), _want : ("a�" : stdgo.GoString), _wantErr : (null : stdgo.Error) } : T__struct_4), ({ _in : stdgo.Go.str("\"\\t", 192, "\"")?.__copy__(), _want : ("\t�" : stdgo.GoString), _wantErr : (null : stdgo.Error) } : T__struct_4)) : stdgo.Slice<T__struct_4>);
        for (__0 => _tt in _tests) {
            _testUnquote(_t, _tt._in?.__copy__(), _tt._want?.__copy__(), _tt._wantErr);
        };
    }
function _testUnquote(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _in:stdgo.GoString, _want:stdgo.GoString, _wantErr:stdgo.Error):Void {
        var __tmp__ = unquote(_in?.__copy__()), _got:stdgo.GoString = __tmp__._0, _gotErr:stdgo.Error = __tmp__._1;
        if ((_got != _want) || (stdgo.Go.toInterface(_gotErr) != stdgo.Go.toInterface(_wantErr))) {
            _t.errorf(("Unquote(%q) = (%q, %v), want (%q, %v)" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_gotErr), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_wantErr));
        };
        if (_gotErr == null) {
            _want = _in?.__copy__();
        };
        var _suffix:stdgo.GoString = ("\n\r\\\"`\'" : stdgo.GoString);
        if ((_in.length) > (0 : stdgo.StdGoTypes.GoInt)) {
            _suffix = stdgo.strings.Strings.replaceAll(_suffix?.__copy__(), (_in.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__())?.__copy__();
        };
        _in = _in + (_suffix)?.__copy__();
        {
            var __tmp__ = quotedPrefix(_in?.__copy__());
            _got = __tmp__._0?.__copy__();
            _gotErr = __tmp__._1;
        };
        if ((_gotErr == null) && (_wantErr != null)) {
            {
                var __tmp__ = unquote(_got?.__copy__());
                _wantErr = __tmp__._1;
            };
            _want = _got?.__copy__();
        };
        if ((_got != _want) || (stdgo.Go.toInterface(_gotErr) != stdgo.Go.toInterface(_wantErr))) {
            _t.errorf(("QuotedPrefix(%q) = (%q, %v), want (%q, %v)" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_gotErr), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_wantErr));
        };
    }
function benchmarkUnquoteEasy(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                unquote(("\"Give me a rock, paper and scissors and I will move the world.\"" : stdgo.GoString));
            });
        };
    }
function benchmarkUnquoteHard(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                unquote(("\"\\x47ive me a \\x72ock, \\x70aper and \\x73cissors and \\x49 will move the world.\"" : stdgo.GoString));
            });
        };
    }
function testCountMallocs(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if (stdgo.runtime.Runtime.gomaxprocs((0 : stdgo.StdGoTypes.GoInt)) > (1 : stdgo.StdGoTypes.GoInt)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        _oneMB = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1000000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _oneMB.length.toBasic()) {
            _oneMB[(_i : stdgo.StdGoTypes.GoInt)] = (_i : stdgo.StdGoTypes.GoByte);
        };
        for (__16 => _mt in _mallocTest) {
            var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : stdgo.StdGoTypes.GoInt), _mt._fn);
            {
                var _max:stdgo.StdGoTypes.GoFloat64 = (_mt._count : stdgo.StdGoTypes.GoFloat64);
                if (_allocs > _max) {
                    _t.errorf(("%s: %v allocs, want <=%v" : stdgo.GoString), stdgo.Go.toInterface(_mt._desc), stdgo.Go.toInterface(_allocs), stdgo.Go.toInterface(_max));
                };
            };
        };
    }
function testAllocationsFromBytes(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _bytes:T__struct_7 = ({ bool_ : (("false" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), number : (("123456789" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), string : (("hello, world!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), buffer : new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1024 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__() } : T__struct_7);
        var _checkNoAllocs = function(_f:() -> Void):(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>) -> Void {
            return function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                _t.helper();
                {
                    var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : stdgo.StdGoTypes.GoInt), _f);
                    if (_allocs != (0 : stdgo.StdGoTypes.GoFloat64)) {
                        _t.errorf(("got %v allocs, want 0 allocs" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
                    };
                };
            };
        };
        _t.run(("Atoi" : stdgo.GoString), _checkNoAllocs(function():Void {
            {
                var __tmp__ = atoi((_bytes.number : stdgo.GoString)?.__copy__());
                sink.int_ = __tmp__._0;
                sink.error = __tmp__._1;
            };
        }));
        _t.run(("ParseBool" : stdgo.GoString), _checkNoAllocs(function():Void {
            {
                var __tmp__ = parseBool((_bytes.bool_ : stdgo.GoString)?.__copy__());
                sink.bool_ = __tmp__._0;
                sink.error = __tmp__._1;
            };
        }));
        _t.run(("ParseInt" : stdgo.GoString), _checkNoAllocs(function():Void {
            {
                var __tmp__ = parseInt((_bytes.number : stdgo.GoString)?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt));
                sink.int64 = __tmp__._0;
                sink.error = __tmp__._1;
            };
        }));
        _t.run(("ParseUint" : stdgo.GoString), _checkNoAllocs(function():Void {
            {
                var __tmp__ = parseUint((_bytes.number : stdgo.GoString)?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt));
                sink.uint64 = __tmp__._0;
                sink.error = __tmp__._1;
            };
        }));
        _t.run(("ParseFloat" : stdgo.GoString), _checkNoAllocs(function():Void {
            {
                var __tmp__ = parseFloat((_bytes.number : stdgo.GoString)?.__copy__(), (64 : stdgo.StdGoTypes.GoInt));
                sink.float64 = __tmp__._0;
                sink.error = __tmp__._1;
            };
        }));
        _t.run(("ParseComplex" : stdgo.GoString), _checkNoAllocs(function():Void {
            {
                var __tmp__ = parseComplex((_bytes.number : stdgo.GoString)?.__copy__(), (128 : stdgo.StdGoTypes.GoInt));
                sink.complex128 = __tmp__._0;
                sink.error = __tmp__._1;
            };
        }));
        _t.run(("CanBackquote" : stdgo.GoString), _checkNoAllocs(function():Void {
            sink.bool_ = canBackquote((_bytes.string : stdgo.GoString)?.__copy__());
        }));
        _t.run(("AppendQuote" : stdgo.GoString), _checkNoAllocs(function():Void {
            sink.bytes = appendQuote((_bytes.buffer.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_bytes.string : stdgo.GoString)?.__copy__());
        }));
        _t.run(("AppendQuoteToASCII" : stdgo.GoString), _checkNoAllocs(function():Void {
            sink.bytes = appendQuoteToASCII((_bytes.buffer.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_bytes.string : stdgo.GoString)?.__copy__());
        }));
        _t.run(("AppendQuoteToGraphic" : stdgo.GoString), _checkNoAllocs(function():Void {
            sink.bytes = appendQuoteToGraphic((_bytes.buffer.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_bytes.string : stdgo.GoString)?.__copy__());
        }));
    }
function testErrorPrefixes(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = atoi(("INVALID" : stdgo.GoString)), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _errInt:stdgo.Error = __tmp__._1;
        var __tmp__ = parseBool(("INVALID" : stdgo.GoString)), __1:Bool = __tmp__._0, _errBool:stdgo.Error = __tmp__._1;
        var __tmp__ = parseFloat(("INVALID" : stdgo.GoString), (64 : stdgo.StdGoTypes.GoInt)), __2:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _errFloat:stdgo.Error = __tmp__._1;
        var __tmp__ = parseInt(("INVALID" : stdgo.GoString), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), __3:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _errInt64:stdgo.Error = __tmp__._1;
        var __tmp__ = parseUint(("INVALID" : stdgo.GoString), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), __4:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _errUint64:stdgo.Error = __tmp__._1;
        var _vectors = (new stdgo.Slice<T__struct_8>(5, 5, ({ _err : _errInt, _want : ("Atoi" : stdgo.GoString) } : T__struct_8), ({ _err : _errBool, _want : ("ParseBool" : stdgo.GoString) } : T__struct_8), ({ _err : _errFloat, _want : ("ParseFloat" : stdgo.GoString) } : T__struct_8), ({ _err : _errInt64, _want : ("ParseInt" : stdgo.GoString) } : T__struct_8), ({ _err : _errUint64, _want : ("ParseUint" : stdgo.GoString) } : T__struct_8)) : stdgo.Slice<T__struct_8>);
        for (__5 => _v in _vectors) {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_v._err) : stdgo.StdGoTypes.Ref<NumError>)) : stdgo.StdGoTypes.Ref<NumError>), ok : true };
            } catch(_) {
                { value : (null : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>), ok : false };
            }, _nerr = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _t.errorf(("test %s, error was not a *NumError" : stdgo.GoString), stdgo.Go.toInterface(_v._want));
                continue;
            };
            {
                var _got:stdgo.GoString = _nerr.func?.__copy__();
                if (_got != (_v._want)) {
                    _t.errorf(("mismatching Func: got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_v._want));
                };
            };
        };
    }
@:keep var _ = {
        try {
            for (_i in 0 ... _parseUint64Tests.length.toBasic()) {
                var _test = (stdgo.Go.setRef(_parseUint64Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseUint64Test>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.strconv.Strconv.NumError(("ParseUint" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>));
                };
            };
            for (_i in 0 ... _parseUint64BaseTests.length.toBasic()) {
                var _test = (stdgo.Go.setRef(_parseUint64BaseTests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseUint64BaseTest>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.strconv.Strconv.NumError(("ParseUint" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>));
                };
            };
            for (_i in 0 ... _parseInt64Tests.length.toBasic()) {
                var _test = (stdgo.Go.setRef(_parseInt64Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseInt64Test>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.strconv.Strconv.NumError(("ParseInt" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>));
                };
            };
            for (_i in 0 ... _parseInt64BaseTests.length.toBasic()) {
                var _test = (stdgo.Go.setRef(_parseInt64BaseTests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseInt64BaseTest>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.strconv.Strconv.NumError(("ParseInt" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>));
                };
            };
            for (_i in 0 ... _parseUint32Tests.length.toBasic()) {
                var _test = (stdgo.Go.setRef(_parseUint32Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseUint32Test>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.strconv.Strconv.NumError(("ParseUint" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>));
                };
            };
            for (_i in 0 ... _parseInt32Tests.length.toBasic()) {
                var _test = (stdgo.Go.setRef(_parseInt32Tests[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.strconv_test.Strconv_test.T_parseInt32Test>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.strconv.Strconv.NumError(("ParseInt" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo.strconv.Strconv.NumError)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>));
                };
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

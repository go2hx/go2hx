package stdgo._internal.math.big;
function testFloatFormat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_31.T__struct_31>(97, 97, ...[
({ _format : ("%+.3e" : stdgo.GoString), _value : stdgo.Go.toInterface((0 : stdgo.GoFloat64)), _want : ("+0.000e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+.3e" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("+1.000e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+.3f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("-1.000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+.3F" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("-1.000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+.3F" : stdgo.GoString), _value : stdgo.Go.toInterface(((-1 : stdgo.GoFloat64) : stdgo.GoFloat32)), _want : ("-1.000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+07.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("+001.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+07.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("-001.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+10.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("     +1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+10.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("     -1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% .3E" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("-1.000E+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% .3e" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : (" 1.000e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+.3g" : stdgo.GoString), _value : stdgo.Go.toInterface((0 : stdgo.GoFloat64)), _want : ("+0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+.3g" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("+1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+.3g" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("-1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% .3g" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("-1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% .3g" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : (" 1" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%b" : stdgo.GoString), _value : stdgo.Go.toInterface(((1 : stdgo.GoFloat64) : stdgo.GoFloat32)), _want : ("8388608p-23" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%b" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("4503599627370496p-52" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%e" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("1.000000e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%e" : stdgo.GoString), _value : stdgo.Go.toInterface((1.2345678e+06 : stdgo.GoFloat64)), _want : ("1.234568e+06" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%e" : stdgo.GoString), _value : stdgo.Go.toInterface((1.2345678e-05 : stdgo.GoFloat64)), _want : ("1.234568e-05" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%e" : stdgo.GoString), _value : stdgo.Go.toInterface((-7 : stdgo.GoFloat64)), _want : ("-7.000000e+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%e" : stdgo.GoString), _value : stdgo.Go.toInterface((-1e-09 : stdgo.GoFloat64)), _want : ("-1.000000e-09" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%f" : stdgo.GoString), _value : stdgo.Go.toInterface((1.2345678e+06 : stdgo.GoFloat64)), _want : ("1234567.800000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%f" : stdgo.GoString), _value : stdgo.Go.toInterface((1.2345678e-05 : stdgo.GoFloat64)), _want : ("0.000012" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%f" : stdgo.GoString), _value : stdgo.Go.toInterface((-7 : stdgo.GoFloat64)), _want : ("-7.000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1e-09 : stdgo.GoFloat64)), _want : ("-0.000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%g" : stdgo.GoString), _value : stdgo.Go.toInterface((1.2345678e+06 : stdgo.GoFloat64)), _want : ("1.2345678e+06" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%g" : stdgo.GoString), _value : stdgo.Go.toInterface(((1.2345678e+06 : stdgo.GoFloat64) : stdgo.GoFloat32)), _want : ("1.2345678e+06" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%g" : stdgo.GoString), _value : stdgo.Go.toInterface((1.2345678e-05 : stdgo.GoFloat64)), _want : ("1.2345678e-05" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%g" : stdgo.GoString), _value : stdgo.Go.toInterface((-7 : stdgo.GoFloat64)), _want : ("-7" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%g" : stdgo.GoString), _value : stdgo.Go.toInterface((-1e-09 : stdgo.GoFloat64)), _want : ("-1e-09" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%g" : stdgo.GoString), _value : stdgo.Go.toInterface(((-1e-09 : stdgo.GoFloat64) : stdgo.GoFloat32)), _want : ("-1e-09" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%E" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("1.000000E+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%E" : stdgo.GoString), _value : stdgo.Go.toInterface((1.2345678e+06 : stdgo.GoFloat64)), _want : ("1.234568E+06" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%E" : stdgo.GoString), _value : stdgo.Go.toInterface((1.2345678e-05 : stdgo.GoFloat64)), _want : ("1.234568E-05" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%E" : stdgo.GoString), _value : stdgo.Go.toInterface((-7 : stdgo.GoFloat64)), _want : ("-7.000000E+00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%E" : stdgo.GoString), _value : stdgo.Go.toInterface((-1e-09 : stdgo.GoFloat64)), _want : ("-1.000000E-09" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%G" : stdgo.GoString), _value : stdgo.Go.toInterface((1.2345678e+06 : stdgo.GoFloat64)), _want : ("1.2345678E+06" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%G" : stdgo.GoString), _value : stdgo.Go.toInterface(((1.2345678e+06 : stdgo.GoFloat64) : stdgo.GoFloat32)), _want : ("1.2345678E+06" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%G" : stdgo.GoString), _value : stdgo.Go.toInterface((1.2345678e-05 : stdgo.GoFloat64)), _want : ("1.2345678E-05" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%G" : stdgo.GoString), _value : stdgo.Go.toInterface((-7 : stdgo.GoFloat64)), _want : ("-7" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%G" : stdgo.GoString), _value : stdgo.Go.toInterface((-1e-09 : stdgo.GoFloat64)), _want : ("-1E-09" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%G" : stdgo.GoString), _value : stdgo.Go.toInterface(((-1e-09 : stdgo.GoFloat64) : stdgo.GoFloat32)), _want : ("-1E-09" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%20.6e" : stdgo.GoString), _value : stdgo.Go.toInterface((1234.5 : stdgo.GoFloat64)), _want : ("        1.234500e+03" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%20.6e" : stdgo.GoString), _value : stdgo.Go.toInterface((0.0012345 : stdgo.GoFloat64)), _want : ("        1.234500e-03" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%20e" : stdgo.GoString), _value : stdgo.Go.toInterface((1234.5 : stdgo.GoFloat64)), _want : ("        1.234500e+03" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%20e" : stdgo.GoString), _value : stdgo.Go.toInterface((0.0012345 : stdgo.GoFloat64)), _want : ("        1.234500e-03" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%20.8e" : stdgo.GoString), _value : stdgo.Go.toInterface((1234.5 : stdgo.GoFloat64)), _want : ("      1.23450000e+03" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%20f" : stdgo.GoString), _value : stdgo.Go.toInterface((1234.56789 : stdgo.GoFloat64)), _want : ("         1234.567890" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%20f" : stdgo.GoString), _value : stdgo.Go.toInterface((0.00123456789 : stdgo.GoFloat64)), _want : ("            0.001235" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%20f" : stdgo.GoString), _value : stdgo.Go.toInterface((1.2345678901234568e+10 : stdgo.GoFloat64)), _want : ("  12345678901.234568" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%-20f" : stdgo.GoString), _value : stdgo.Go.toInterface((1234.56789 : stdgo.GoFloat64)), _want : ("1234.567890         " : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%20.8f" : stdgo.GoString), _value : stdgo.Go.toInterface((1234.56789 : stdgo.GoFloat64)), _want : ("       1234.56789000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%20.8f" : stdgo.GoString), _value : stdgo.Go.toInterface((0.00123456789 : stdgo.GoFloat64)), _want : ("          0.00123457" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%g" : stdgo.GoString), _value : stdgo.Go.toInterface((1234.56789 : stdgo.GoFloat64)), _want : ("1234.56789" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%g" : stdgo.GoString), _value : stdgo.Go.toInterface((0.00123456789 : stdgo.GoFloat64)), _want : ("0.00123456789" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%g" : stdgo.GoString), _value : stdgo.Go.toInterface((1.23456789e+20 : stdgo.GoFloat64)), _want : ("1.23456789e+20" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%20e" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))), _want : ("                +Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%-20f" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt))), _want : ("-Inf                " : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("-1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% .2f" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : (" 1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% .2f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("-1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("+1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("-1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%7.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("   1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%7.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("  -1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% 7.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("   1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% 7.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("  -1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+7.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("  +1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+7.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("  -1.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%07.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("0001.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%07.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("-001.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% 07.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : (" 001.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% 07.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("-001.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+07.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("+001.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+07.2f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("-001.00" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%020f" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt))), _want : ("                -Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%020f" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))), _want : ("                +Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% 020f" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt))), _want : ("                -Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% 020f" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))), _want : ("                 Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+020f" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt))), _want : ("                -Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%+020f" : stdgo.GoString), _value : stdgo.Go.toInterface(stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))), _want : ("                +Inf" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%20f" : stdgo.GoString), _value : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _want : ("           -1.000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%v" : stdgo.GoString), _value : stdgo.Go.toInterface((0 : stdgo.GoFloat64)), _want : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%v" : stdgo.GoString), _value : stdgo.Go.toInterface((-7 : stdgo.GoFloat64)), _want : ("-7" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%v" : stdgo.GoString), _value : stdgo.Go.toInterface((-1e-09 : stdgo.GoFloat64)), _want : ("-1e-09" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%v" : stdgo.GoString), _value : stdgo.Go.toInterface(((-1e-09 : stdgo.GoFloat64) : stdgo.GoFloat32)), _want : ("-1e-09" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%010v" : stdgo.GoString), _value : stdgo.Go.toInterface((0 : stdgo.GoFloat64)), _want : ("0000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%.20f" : stdgo.GoString), _value : stdgo.Go.toInterface(("1e-20" : stdgo.GoString)), _want : ("0.00000000000000000001" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%.20f" : stdgo.GoString), _value : stdgo.Go.toInterface(("-1e-20" : stdgo.GoString)), _want : ("-0.00000000000000000001" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%30.20f" : stdgo.GoString), _value : stdgo.Go.toInterface(("-1e-20" : stdgo.GoString)), _want : ("       -0.00000000000000000001" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%030.20f" : stdgo.GoString), _value : stdgo.Go.toInterface(("-1e-20" : stdgo.GoString)), _want : ("-00000000.00000000000000000001" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%030.20f" : stdgo.GoString), _value : stdgo.Go.toInterface(("+1e-20" : stdgo.GoString)), _want : ("000000000.00000000000000000001" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("% 030.20f" : stdgo.GoString), _value : stdgo.Go.toInterface(("+1e-20" : stdgo.GoString)), _want : (" 00000000.00000000000000000001" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31),
({ _format : ("%s" : stdgo.GoString), _value : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _want : ("%!s(*big.Float=1)" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31)].concat([for (i in 97 ... (97 > 97 ? 97 : 97 : stdgo.GoInt).toBasic()) ({ _format : ("" : stdgo.GoString), _value : (null : stdgo.AnyInterface), _want : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_31.T__struct_31)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_31.T__struct_31>)) {
            var _value = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
            {
                final __type__ = _test._value;
                if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32))) {
                    var _v:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                    @:check2r @:check2r _value.setPrec((24u32 : stdgo.GoUInt)).setFloat64((_v : stdgo.GoFloat64));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64))) {
                    var _v:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                    @:check2r @:check2r _value.setPrec((53u32 : stdgo.GoUInt)).setFloat64(_v);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                    var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                    @:check2r @:check2r _value.setPrec((512u32 : stdgo.GoUInt)).parse(_v?.__copy__(), (0 : stdgo.GoInt));
                } else {
                    var _v:stdgo.AnyInterface = __type__?.__underlying__();
                    @:check2r _t.fatalf(("unsupported test value: %v (%T)" : stdgo.GoString), _v, _v);
                };
            };
            {
                var _got = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_test._format?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_value)))?.__copy__() : stdgo.GoString);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("%v: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }

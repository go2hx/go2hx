package stdgo._internal.go.scanner;
function testNumbers(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L928"
        for (__0 => _test in (new stdgo.Slice<stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3>(111, 111, ...[
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0b0" : stdgo.GoString), _tokens : ("0b0" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0b1010" : stdgo.GoString), _tokens : ("0b1010" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0B1110" : stdgo.GoString), _tokens : ("0B1110" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0b" : stdgo.GoString), _tokens : ("0b" : stdgo.GoString), _err : ("binary literal has no digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0b0190" : stdgo.GoString), _tokens : ("0b0190" : stdgo.GoString), _err : ("invalid digit \'9\' in binary literal" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0b01a0" : stdgo.GoString), _tokens : ("0b01 a0" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0b." : stdgo.GoString), _tokens : ("0b." : stdgo.GoString), _err : ("invalid radix point in binary literal" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0b.1" : stdgo.GoString), _tokens : ("0b.1" : stdgo.GoString), _err : ("invalid radix point in binary literal" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0b1.0" : stdgo.GoString), _tokens : ("0b1.0" : stdgo.GoString), _err : ("invalid radix point in binary literal" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0b1e10" : stdgo.GoString), _tokens : ("0b1e10" : stdgo.GoString), _err : ("\'e\' exponent requires decimal mantissa" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0b1P-1" : stdgo.GoString), _tokens : ("0b1P-1" : stdgo.GoString), _err : ("\'P\' exponent requires hexadecimal mantissa" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("0b10i" : stdgo.GoString), _tokens : ("0b10i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("0b10.0i" : stdgo.GoString), _tokens : ("0b10.0i" : stdgo.GoString), _err : ("invalid radix point in binary literal" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0o0" : stdgo.GoString), _tokens : ("0o0" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0o1234" : stdgo.GoString), _tokens : ("0o1234" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0O1234" : stdgo.GoString), _tokens : ("0O1234" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0o" : stdgo.GoString), _tokens : ("0o" : stdgo.GoString), _err : ("octal literal has no digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0o8123" : stdgo.GoString), _tokens : ("0o8123" : stdgo.GoString), _err : ("invalid digit \'8\' in octal literal" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0o1293" : stdgo.GoString), _tokens : ("0o1293" : stdgo.GoString), _err : ("invalid digit \'9\' in octal literal" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0o12a3" : stdgo.GoString), _tokens : ("0o12 a3" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0o." : stdgo.GoString), _tokens : ("0o." : stdgo.GoString), _err : ("invalid radix point in octal literal" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0o.2" : stdgo.GoString), _tokens : ("0o.2" : stdgo.GoString), _err : ("invalid radix point in octal literal" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0o1.2" : stdgo.GoString), _tokens : ("0o1.2" : stdgo.GoString), _err : ("invalid radix point in octal literal" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0o1E+2" : stdgo.GoString), _tokens : ("0o1E+2" : stdgo.GoString), _err : ("\'E\' exponent requires decimal mantissa" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0o1p10" : stdgo.GoString), _tokens : ("0o1p10" : stdgo.GoString), _err : ("\'p\' exponent requires hexadecimal mantissa" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("0o10i" : stdgo.GoString), _tokens : ("0o10i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("0o10e0i" : stdgo.GoString), _tokens : ("0o10e0i" : stdgo.GoString), _err : ("\'e\' exponent requires decimal mantissa" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0" : stdgo.GoString), _tokens : ("0" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0123" : stdgo.GoString), _tokens : ("0123" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("08123" : stdgo.GoString), _tokens : ("08123" : stdgo.GoString), _err : ("invalid digit \'8\' in octal literal" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("01293" : stdgo.GoString), _tokens : ("01293" : stdgo.GoString), _err : ("invalid digit \'9\' in octal literal" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0F." : stdgo.GoString), _tokens : ("0 F ." : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0123F." : stdgo.GoString), _tokens : ("0123 F ." : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0123456x" : stdgo.GoString), _tokens : ("0123456 x" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("1" : stdgo.GoString), _tokens : ("1" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("1234" : stdgo.GoString), _tokens : ("1234" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("1f" : stdgo.GoString), _tokens : ("1 f" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("0i" : stdgo.GoString), _tokens : ("0i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("0678i" : stdgo.GoString), _tokens : ("0678i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0." : stdgo.GoString), _tokens : ("0." : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("123." : stdgo.GoString), _tokens : ("123." : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0123." : stdgo.GoString), _tokens : ("0123." : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : (".0" : stdgo.GoString), _tokens : (".0" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : (".123" : stdgo.GoString), _tokens : (".123" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : (".0123" : stdgo.GoString), _tokens : (".0123" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0.0" : stdgo.GoString), _tokens : ("0.0" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("123.123" : stdgo.GoString), _tokens : ("123.123" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0123.0123" : stdgo.GoString), _tokens : ("0123.0123" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0e0" : stdgo.GoString), _tokens : ("0e0" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("123e+0" : stdgo.GoString), _tokens : ("123e+0" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0123E-1" : stdgo.GoString), _tokens : ("0123E-1" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0.e+1" : stdgo.GoString), _tokens : ("0.e+1" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("123.E-10" : stdgo.GoString), _tokens : ("123.E-10" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0123.e123" : stdgo.GoString), _tokens : ("0123.e123" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : (".0e-1" : stdgo.GoString), _tokens : (".0e-1" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : (".123E+10" : stdgo.GoString), _tokens : (".123E+10" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : (".0123E123" : stdgo.GoString), _tokens : (".0123E123" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0.0e1" : stdgo.GoString), _tokens : ("0.0e1" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("123.123E-10" : stdgo.GoString), _tokens : ("123.123E-10" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0123.0123e+456" : stdgo.GoString), _tokens : ("0123.0123e+456" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0e" : stdgo.GoString), _tokens : ("0e" : stdgo.GoString), _err : ("exponent has no digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0E+" : stdgo.GoString), _tokens : ("0E+" : stdgo.GoString), _err : ("exponent has no digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("1e+f" : stdgo.GoString), _tokens : ("1e+ f" : stdgo.GoString), _err : ("exponent has no digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0p0" : stdgo.GoString), _tokens : ("0p0" : stdgo.GoString), _err : ("\'p\' exponent requires hexadecimal mantissa" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("1.0P-1" : stdgo.GoString), _tokens : ("1.0P-1" : stdgo.GoString), _err : ("\'P\' exponent requires hexadecimal mantissa" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("0.i" : stdgo.GoString), _tokens : ("0.i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : (".123i" : stdgo.GoString), _tokens : (".123i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("123.123i" : stdgo.GoString), _tokens : ("123.123i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("123e+0i" : stdgo.GoString), _tokens : ("123e+0i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("123.E-10i" : stdgo.GoString), _tokens : ("123.E-10i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : (".123E+10i" : stdgo.GoString), _tokens : (".123E+10i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0x0" : stdgo.GoString), _tokens : ("0x0" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0x1234" : stdgo.GoString), _tokens : ("0x1234" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0xcafef00d" : stdgo.GoString), _tokens : ("0xcafef00d" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0XCAFEF00D" : stdgo.GoString), _tokens : ("0XCAFEF00D" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0x" : stdgo.GoString), _tokens : ("0x" : stdgo.GoString), _err : ("hexadecimal literal has no digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0x1g" : stdgo.GoString), _tokens : ("0x1 g" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("0xf00i" : stdgo.GoString), _tokens : ("0xf00i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x0p0" : stdgo.GoString), _tokens : ("0x0p0" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x12efp-123" : stdgo.GoString), _tokens : ("0x12efp-123" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0xABCD.p+0" : stdgo.GoString), _tokens : ("0xABCD.p+0" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x.0189P-0" : stdgo.GoString), _tokens : ("0x.0189P-0" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x1.ffffp+1023" : stdgo.GoString), _tokens : ("0x1.ffffp+1023" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x." : stdgo.GoString), _tokens : ("0x." : stdgo.GoString), _err : ("hexadecimal literal has no digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x0." : stdgo.GoString), _tokens : ("0x0." : stdgo.GoString), _err : ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x.0" : stdgo.GoString), _tokens : ("0x.0" : stdgo.GoString), _err : ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x1.1" : stdgo.GoString), _tokens : ("0x1.1" : stdgo.GoString), _err : ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x1.1e0" : stdgo.GoString), _tokens : ("0x1.1e0" : stdgo.GoString), _err : ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x1.2gp1a" : stdgo.GoString), _tokens : ("0x1.2 gp1a" : stdgo.GoString), _err : ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x0p" : stdgo.GoString), _tokens : ("0x0p" : stdgo.GoString), _err : ("exponent has no digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0xeP-" : stdgo.GoString), _tokens : ("0xeP-" : stdgo.GoString), _err : ("exponent has no digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x1234PAB" : stdgo.GoString), _tokens : ("0x1234P AB" : stdgo.GoString), _err : ("exponent has no digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x1.2p1a" : stdgo.GoString), _tokens : ("0x1.2p1 a" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("0xf00.bap+12i" : stdgo.GoString), _tokens : ("0xf00.bap+12i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0b_1000_0001" : stdgo.GoString), _tokens : ("0b_1000_0001" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0o_600" : stdgo.GoString), _tokens : ("0o_600" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0_466" : stdgo.GoString), _tokens : ("0_466" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("1_000" : stdgo.GoString), _tokens : ("1_000" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("1_000.000_1" : stdgo.GoString), _tokens : ("1_000.000_1" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("10e+1_2_3i" : stdgo.GoString), _tokens : ("10e+1_2_3i" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0x_f00d" : stdgo.GoString), _tokens : ("0x_f00d" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x_f00d.0p1_2" : stdgo.GoString), _tokens : ("0x_f00d.0p1_2" : stdgo.GoString), _err : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0b__1000" : stdgo.GoString), _tokens : ("0b__1000" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0o60___0" : stdgo.GoString), _tokens : ("0o60___0" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0466_" : stdgo.GoString), _tokens : ("0466_" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("1_." : stdgo.GoString), _tokens : ("1_." : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0._1" : stdgo.GoString), _tokens : ("0._1" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("2.7_e0" : stdgo.GoString), _tokens : ("2.7_e0" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (7 : stdgo._internal.go.token.Token_token.Token), _src : ("10e+12_i" : stdgo.GoString), _tokens : ("10e+12_i" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (5 : stdgo._internal.go.token.Token_token.Token), _src : ("0x___0" : stdgo.GoString), _tokens : ("0x___0" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3),
({ _tok : (6 : stdgo._internal.go.token.Token_token.Token), _src : ("0x1.0_p0" : stdgo.GoString), _tokens : ("0x1.0_p0" : stdgo.GoString), _err : ("\'_\' must separate successive digits" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3)].concat([for (i in 111 ... (111 > 111 ? 111 : 111 : stdgo.GoInt).toBasic()) ({ _tok : ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token), _src : ("" : stdgo.GoString), _tokens : ("" : stdgo.GoString), _err : ("" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3)])) : stdgo.Slice<stdgo._internal.go.scanner.Scanner_t__struct_3.T__struct_3>)) {
            var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
            var _err:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1083"
            _s.init(stdgo._internal.go.scanner.Scanner__fset._fset.addFile((stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo._internal.go.scanner.Scanner__fset._fset.base(), (_test._src.length)), (_test._src : stdgo.Slice<stdgo.GoUInt8>), function(__17:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1084"
                if (_err == ((stdgo.Go.str() : stdgo.GoString))) {
                    _err = _msg?.__copy__();
                };
            }, (0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1088"
            for (_i => _want in stdgo._internal.strings.Strings_split.split(_test._tokens?.__copy__(), (" " : stdgo.GoString))) {
                _err = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                var __tmp__ = _s.scan(), __17:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok:stdgo._internal.go.token.Token_token.Token = __tmp__._1, _lit:stdgo.GoString = __tmp__._2;
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1093"
                {
                    final __value__ = _tok;
                    if (__value__ == ((53 : stdgo._internal.go.token.Token_token.Token))) {
                        _lit = ("." : stdgo.GoString);
                    } else if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                        _lit = ("+" : stdgo.GoString);
                    } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                        _lit = ("-" : stdgo.GoString);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1102"
                if (_i == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1103"
                    if (_tok != (_test._tok)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1104"
                        _t.errorf(("%q: got token %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._tok)));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1106"
                    if (_err != (_test._err)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1107"
                        _t.errorf(("%q: got error %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._err));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1111"
                if (_lit != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1112"
                    _t.errorf(("%q: got literal %q (%s); want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok)), stdgo.Go.toInterface(_want));
                };
            };
            var __tmp__ = _s.scan(), __17:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok:stdgo._internal.go.token.Token_token.Token = __tmp__._1, __18:stdgo.GoString = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1118"
            if (_tok == ((57 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    var __tmp__ = _s.scan();
                    _tok = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1121"
            if (_tok != ((1 : stdgo._internal.go.token.Token_token.Token))) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L1122"
                _t.errorf(("%q: got %s; want EOF" : stdgo.GoString), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok)));
            };
        };
    }

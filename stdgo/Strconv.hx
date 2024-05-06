package stdgo;
/**
    Package strconv implements conversions to and from string representations
    of basic data types.
    
    # Numeric Conversions
    
    The most common numeric conversions are Atoi (string to int) and Itoa (int to string).
    
    	i, err := strconv.Atoi("-42")
    	s := strconv.Itoa(-42)
    
    These assume decimal and the Go int type.
    
    [ParseBool], [ParseFloat], [ParseInt], and [ParseUint] convert strings to values:
    
    	b, err := strconv.ParseBool("true")
    	f, err := strconv.ParseFloat("3.1415", 64)
    	i, err := strconv.ParseInt("-42", 10, 64)
    	u, err := strconv.ParseUint("42", 10, 64)
    
    The parse functions return the widest type (float64, int64, and uint64),
    but if the size argument specifies a narrower width the result can be
    converted to that narrower type without data loss:
    
    	s := "2147483647" // biggest int32
    	i64, err := strconv.ParseInt(s, 10, 32)
    	...
    	i := int32(i64)
    
    [FormatBool], [FormatFloat], [FormatInt], and [FormatUint] convert values to strings:
    
    	s := strconv.FormatBool(true)
    	s := strconv.FormatFloat(3.1415, 'E', -1, 64)
    	s := strconv.FormatInt(-42, 16)
    	s := strconv.FormatUint(42, 16)
    
    [AppendBool], [AppendFloat], [AppendInt], and [AppendUint] are similar but
    append the formatted value to a destination slice.
    
    # String Conversions
    
    [Quote] and [QuoteToASCII] convert strings to quoted Go string literals.
    The latter guarantees that the result is an ASCII string, by escaping
    any non-ASCII Unicode with \u:
    
    	q := strconv.Quote("Hello, 世界")
    	q := strconv.QuoteToASCII("Hello, 世界")
    
    [QuoteRune] and [QuoteRuneToASCII] are similar but accept runes and
    return quoted Go rune literals.
    
    [Unquote] and [UnquoteChar] unquote Go string and rune literals.
**/
private var __go2hxdoc__package : Bool;
final intSize : haxe.UInt64 = stdgo._internal.strconv.Strconv.intSize;
var errRange(get, set) : stdgo.Error;
private function get_errRange():stdgo.Error return stdgo._internal.strconv.Strconv.errRange;
private function set_errRange(v:stdgo.Error):stdgo.Error return stdgo._internal.strconv.Strconv.errRange = v;
var errSyntax(get, set) : stdgo.Error;
private function get_errSyntax():stdgo.Error return stdgo._internal.strconv.Strconv.errSyntax;
private function set_errSyntax(v:stdgo.Error):stdgo.Error return stdgo._internal.strconv.Strconv.errSyntax = v;
var bitSizeError(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>;
private function get_bitSizeError():(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> return stdgo._internal.strconv.Strconv.bitSizeError;
private function set_bitSizeError(v:(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>):(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> return stdgo._internal.strconv.Strconv.bitSizeError = v;
var baseError(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>;
private function get_baseError():(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> return stdgo._internal.strconv.Strconv.baseError;
private function set_baseError(v:(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>):(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> return stdgo._internal.strconv.Strconv.baseError = v;
@:forward @:forward.new abstract NumError(stdgo._internal.strconv.Strconv.NumError) from stdgo._internal.strconv.Strconv.NumError to stdgo._internal.strconv.Strconv.NumError {

}
@:forward @:forward.new abstract T_decimal(stdgo._internal.strconv.Strconv.T_decimal) from stdgo._internal.strconv.Strconv.T_decimal to stdgo._internal.strconv.Strconv.T_decimal {

}
@:forward @:forward.new abstract T_leftCheat(stdgo._internal.strconv.Strconv.T_leftCheat) from stdgo._internal.strconv.Strconv.T_leftCheat to stdgo._internal.strconv.Strconv.T_leftCheat {

}
@:forward @:forward.new abstract T_floatInfo(stdgo._internal.strconv.Strconv.T_floatInfo) from stdgo._internal.strconv.Strconv.T_floatInfo to stdgo._internal.strconv.Strconv.T_floatInfo {

}
@:forward @:forward.new abstract T_decimalSlice(stdgo._internal.strconv.Strconv.T_decimalSlice) from stdgo._internal.strconv.Strconv.T_decimalSlice to stdgo._internal.strconv.Strconv.T_decimalSlice {

}
/**
    ParseBool returns the boolean value represented by the string.
    It accepts 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False.
    Any other value returns an error.
**/
function parseBool(str:String):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.parseBool(str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    FormatBool returns "true" or "false" according to the value of b.
**/
function formatBool(b:Bool):String {
        return stdgo._internal.strconv.Strconv.formatBool(b);
    }
/**
    AppendBool appends "true" or "false", according to the value of b,
    to dst and returns the extended buffer.
**/
function appendBool(dst:Array<StdTypes.Int>, b:Bool):Array<StdTypes.Int> {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendBool(dst, b)) i];
    }
/**
    ParseComplex converts the string s to a complex number
    with the precision specified by bitSize: 64 for complex64, or 128 for complex128.
    When bitSize=64, the result still has type complex128, but it will be
    convertible to complex64 without changing its value.
    
    The number represented by s must be of the form N, Ni, or N±Ni, where N stands
    for a floating-point number as recognized by ParseFloat, and i is the imaginary
    component. If the second N is unsigned, a + sign is required between the two components
    as indicated by the ±. If the second N is NaN, only a + sign is accepted.
    The form may be parenthesized and cannot contain any spaces.
    The resulting complex number consists of the two components converted by ParseFloat.
    
    The errors that ParseComplex returns have concrete type *NumError
    and include err.Num = s.
    
    If s is not syntactically well-formed, ParseComplex returns err.Err = ErrSyntax.
    
    If s is syntactically well-formed but either component is more than 1/2 ULP
    away from the largest floating point number of the given component's size,
    ParseComplex returns err.Err = ErrRange and c = ±Inf for the respective component.
**/
function parseComplex(s:String, bitSize:StdTypes.Int):stdgo.Tuple<stdgo.GoComplex128, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.parseComplex(s, bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    ParseFloat converts the string s to a floating-point number
    with the precision specified by bitSize: 32 for float32, or 64 for float64.
    When bitSize=32, the result still has type float64, but it will be
    convertible to float32 without changing its value.
    
    ParseFloat accepts decimal and hexadecimal floating-point numbers
    as defined by the Go syntax for [floating-point literals].
    If s is well-formed and near a valid floating-point number,
    ParseFloat returns the nearest floating-point number rounded
    using IEEE754 unbiased rounding.
    (Parsing a hexadecimal floating-point value only rounds when
    there are more bits in the hexadecimal representation than
    will fit in the mantissa.)
    
    The errors that ParseFloat returns have concrete type *NumError
    and include err.Num = s.
    
    If s is not syntactically well-formed, ParseFloat returns err.Err = ErrSyntax.
    
    If s is syntactically well-formed but is more than 1/2 ULP
    away from the largest floating point number of the given size,
    ParseFloat returns f = ±Inf, err.Err = ErrRange.
    
    ParseFloat recognizes the string "NaN", and the (possibly signed) strings "Inf" and "Infinity"
    as their respective special floating point values. It ignores case when matching.
    
    [floating-point literals]: https://go.dev/ref/spec#Floating-point_literals
**/
function parseFloat(s:String, bitSize:StdTypes.Int):stdgo.Tuple<StdTypes.Float, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.parseFloat(s, bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    ParseUint is like ParseInt but for unsigned numbers.
    
    A sign prefix is not permitted.
**/
function parseUint(s:String, base:StdTypes.Int, bitSize:StdTypes.Int):stdgo.Tuple<haxe.UInt64, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.parseUint(s, base, bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    ParseInt interprets a string s in the given base (0, 2 to 36) and
    bit size (0 to 64) and returns the corresponding value i.
    
    The string may begin with a leading sign: "+" or "-".
    
    If the base argument is 0, the true base is implied by the string's
    prefix following the sign (if present): 2 for "0b", 8 for "0" or "0o",
    16 for "0x", and 10 otherwise. Also, for argument base 0 only,
    underscore characters are permitted as defined by the Go syntax for
    [integer literals].
    
    The bitSize argument specifies the integer type
    that the result must fit into. Bit sizes 0, 8, 16, 32, and 64
    correspond to int, int8, int16, int32, and int64.
    If bitSize is below 0 or above 64, an error is returned.
    
    The errors that ParseInt returns have concrete type *NumError
    and include err.Num = s. If s is empty or contains invalid
    digits, err.Err = ErrSyntax and the returned value is 0;
    if the value corresponding to s cannot be represented by a
    signed integer of the given size, err.Err = ErrRange and the
    returned value is the maximum magnitude integer of the
    appropriate bitSize and sign.
    
    [integer literals]: https://go.dev/ref/spec#Integer_literals
**/
function parseInt(s:String, base:StdTypes.Int, bitSize:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.parseInt(s, base, bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Atoi is equivalent to ParseInt(s, 10, 0), converted to type int.
**/
function atoi(s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.atoi(s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    FormatComplex converts the complex number c to a string of the
    form (a+bi) where a and b are the real and imaginary parts,
    formatted according to the format fmt and precision prec.
    
    The format fmt and precision prec have the same meaning as in FormatFloat.
    It rounds the result assuming that the original was obtained from a complex
    value of bitSize bits, which must be 64 for complex64 and 128 for complex128.
**/
function formatComplex(c:stdgo.GoComplex128, fmt:StdTypes.Int, prec:StdTypes.Int, bitSize:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.formatComplex(c, fmt, prec, bitSize);
    }
/**
    FormatFloat converts the floating-point number f to a string,
    according to the format fmt and precision prec. It rounds the
    result assuming that the original was obtained from a floating-point
    value of bitSize bits (32 for float32, 64 for float64).
    
    The format fmt is one of
    'b' (-ddddp±ddd, a binary exponent),
    'e' (-d.dddde±dd, a decimal exponent),
    'E' (-d.ddddE±dd, a decimal exponent),
    'f' (-ddd.dddd, no exponent),
    'g' ('e' for large exponents, 'f' otherwise),
    'G' ('E' for large exponents, 'f' otherwise),
    'x' (-0xd.ddddp±ddd, a hexadecimal fraction and binary exponent), or
    'X' (-0Xd.ddddP±ddd, a hexadecimal fraction and binary exponent).
    
    The precision prec controls the number of digits (excluding the exponent)
    printed by the 'e', 'E', 'f', 'g', 'G', 'x', and 'X' formats.
    For 'e', 'E', 'f', 'x', and 'X', it is the number of digits after the decimal point.
    For 'g' and 'G' it is the maximum number of significant digits (trailing
    zeros are removed).
    The special precision -1 uses the smallest number of digits
    necessary such that ParseFloat will return f exactly.
**/
function formatFloat(f:StdTypes.Float, fmt:StdTypes.Int, prec:StdTypes.Int, bitSize:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.formatFloat(f, fmt, prec, bitSize);
    }
/**
    AppendFloat appends the string form of the floating-point number f,
    as generated by FormatFloat, to dst and returns the extended buffer.
**/
function appendFloat(dst:Array<StdTypes.Int>, f:StdTypes.Float, fmt:StdTypes.Int, prec:StdTypes.Int, bitSize:StdTypes.Int):Array<StdTypes.Int> {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendFloat(dst, f, fmt, prec, bitSize)) i];
    }
function newDecimal(i:haxe.UInt64):T_decimal {
        return stdgo._internal.strconv.Strconv.newDecimal(i);
    }
function setOptimize(b:Bool):Bool {
        return stdgo._internal.strconv.Strconv.setOptimize(b);
    }
function parseFloatPrefix(s:String, bitSize:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Float, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.parseFloatPrefix(s, bitSize);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
function mulByLog2Log10(x:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strconv.Strconv.mulByLog2Log10(x);
    }
function mulByLog10Log2(x:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strconv.Strconv.mulByLog10Log2(x);
    }
/**
    FormatUint returns the string representation of i in the given base,
    for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
    for digit values >= 10.
**/
function formatUint(i:haxe.UInt64, base:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.formatUint(i, base);
    }
/**
    FormatInt returns the string representation of i in the given base,
    for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
    for digit values >= 10.
**/
function formatInt(i:haxe.Int64, base:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.formatInt(i, base);
    }
/**
    Itoa is equivalent to FormatInt(int64(i), 10).
**/
function itoa(i:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.itoa(i);
    }
/**
    AppendInt appends the string form of the integer i,
    as generated by FormatInt, to dst and returns the extended buffer.
**/
function appendInt(dst:Array<StdTypes.Int>, i:haxe.Int64, base:StdTypes.Int):Array<StdTypes.Int> {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendInt(dst, i, base)) i];
    }
/**
    AppendUint appends the string form of the unsigned integer i,
    as generated by FormatUint, to dst and returns the extended buffer.
**/
function appendUint(dst:Array<StdTypes.Int>, i:haxe.UInt64, base:StdTypes.Int):Array<StdTypes.Int> {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendUint(dst, i, base)) i];
    }
/**
    Quote returns a double-quoted Go string literal representing s. The
    returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
    control characters and non-printable characters as defined by
    IsPrint.
**/
function quote(s:String):String {
        return stdgo._internal.strconv.Strconv.quote(s);
    }
/**
    AppendQuote appends a double-quoted Go string literal representing s,
    as generated by Quote, to dst and returns the extended buffer.
**/
function appendQuote(dst:Array<StdTypes.Int>, s:String):Array<StdTypes.Int> {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendQuote(dst, s)) i];
    }
/**
    QuoteToASCII returns a double-quoted Go string literal representing s.
    The returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
    non-ASCII characters and non-printable characters as defined by IsPrint.
**/
function quoteToASCII(s:String):String {
        return stdgo._internal.strconv.Strconv.quoteToASCII(s);
    }
/**
    AppendQuoteToASCII appends a double-quoted Go string literal representing s,
    as generated by QuoteToASCII, to dst and returns the extended buffer.
**/
function appendQuoteToASCII(dst:Array<StdTypes.Int>, s:String):Array<StdTypes.Int> {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendQuoteToASCII(dst, s)) i];
    }
/**
    QuoteToGraphic returns a double-quoted Go string literal representing s.
    The returned string leaves Unicode graphic characters, as defined by
    IsGraphic, unchanged and uses Go escape sequences (\t, \n, \xFF, \u0100)
    for non-graphic characters.
**/
function quoteToGraphic(s:String):String {
        return stdgo._internal.strconv.Strconv.quoteToGraphic(s);
    }
/**
    AppendQuoteToGraphic appends a double-quoted Go string literal representing s,
    as generated by QuoteToGraphic, to dst and returns the extended buffer.
**/
function appendQuoteToGraphic(dst:Array<StdTypes.Int>, s:String):Array<StdTypes.Int> {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendQuoteToGraphic(dst, s)) i];
    }
/**
    QuoteRune returns a single-quoted Go character literal representing the
    rune. The returned string uses Go escape sequences (\t, \n, \xFF, \u0100)
    for control characters and non-printable characters as defined by IsPrint.
    If r is not a valid Unicode code point, it is interpreted as the Unicode
    replacement character U+FFFD.
**/
function quoteRune(r:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.quoteRune(r);
    }
/**
    AppendQuoteRune appends a single-quoted Go character literal representing the rune,
    as generated by QuoteRune, to dst and returns the extended buffer.
**/
function appendQuoteRune(dst:Array<StdTypes.Int>, r:StdTypes.Int):Array<StdTypes.Int> {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendQuoteRune(dst, r)) i];
    }
/**
    QuoteRuneToASCII returns a single-quoted Go character literal representing
    the rune. The returned string uses Go escape sequences (\t, \n, \xFF,
    \u0100) for non-ASCII characters and non-printable characters as defined
    by IsPrint.
    If r is not a valid Unicode code point, it is interpreted as the Unicode
    replacement character U+FFFD.
**/
function quoteRuneToASCII(r:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.quoteRuneToASCII(r);
    }
/**
    AppendQuoteRuneToASCII appends a single-quoted Go character literal representing the rune,
    as generated by QuoteRuneToASCII, to dst and returns the extended buffer.
**/
function appendQuoteRuneToASCII(dst:Array<StdTypes.Int>, r:StdTypes.Int):Array<StdTypes.Int> {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendQuoteRuneToASCII(dst, r)) i];
    }
/**
    QuoteRuneToGraphic returns a single-quoted Go character literal representing
    the rune. If the rune is not a Unicode graphic character,
    as defined by IsGraphic, the returned string will use a Go escape sequence
    (\t, \n, \xFF, \u0100).
    If r is not a valid Unicode code point, it is interpreted as the Unicode
    replacement character U+FFFD.
**/
function quoteRuneToGraphic(r:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.quoteRuneToGraphic(r);
    }
/**
    AppendQuoteRuneToGraphic appends a single-quoted Go character literal representing the rune,
    as generated by QuoteRuneToGraphic, to dst and returns the extended buffer.
**/
function appendQuoteRuneToGraphic(dst:Array<StdTypes.Int>, r:StdTypes.Int):Array<StdTypes.Int> {
        final dst = ([for (i in dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendQuoteRuneToGraphic(dst, r)) i];
    }
/**
    CanBackquote reports whether the string s can be represented
    unchanged as a single-line backquoted string without control
    characters other than tab.
**/
function canBackquote(s:String):Bool {
        return stdgo._internal.strconv.Strconv.canBackquote(s);
    }
/**
    UnquoteChar decodes the first character or byte in the escaped string
    or character literal represented by the string s.
    It returns four values:
    
     1. value, the decoded Unicode code point or byte value;
     2. multibyte, a boolean indicating whether the decoded character requires a multibyte UTF-8 representation;
     3. tail, the remainder of the string after the character; and
     4. an error that will be nil if the character is syntactically valid.
    
    The second argument, quote, specifies the type of literal being parsed
    and therefore which escaped quote character is permitted.
    If set to a single quote, it permits the sequence \' and disallows unescaped '.
    If set to a double quote, it permits \" and disallows unescaped ".
    If set to zero, it does not permit either escape and allows both quote characters to appear unescaped.
**/
function unquoteChar(s:String, quote:StdTypes.Int):stdgo.Tuple.Tuple4<StdTypes.Int, Bool, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.unquoteChar(s, quote);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
/**
    QuotedPrefix returns the quoted string (as understood by Unquote) at the prefix of s.
    If s does not start with a valid quoted string, QuotedPrefix returns an error.
**/
function quotedPrefix(s:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.quotedPrefix(s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Unquote interprets s as a single-quoted, double-quoted,
    or backquoted Go string literal, returning the string value
    that s quotes.  (If s is single-quoted, it would be a Go
    character literal; Unquote returns the corresponding
    one-character string.)
**/
function unquote(s:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.unquote(s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    IsPrint reports whether the rune is defined as printable by Go, with
    the same definition as unicode.IsPrint: letters, numbers, punctuation,
    symbols and ASCII space.
**/
function isPrint(r:StdTypes.Int):Bool {
        return stdgo._internal.strconv.Strconv.isPrint(r);
    }
/**
    IsGraphic reports whether the rune is defined as a Graphic by Unicode. Such
    characters include letters, marks, numbers, punctuation, symbols, and
    spaces, from categories L, M, N, P, S, and Zs.
**/
function isGraphic(r:StdTypes.Int):Bool {
        return stdgo._internal.strconv.Strconv.isGraphic(r);
    }
@:forward @:forward.new abstract NumError_asInterface(stdgo._internal.strconv.Strconv.NumError_asInterface) from stdgo._internal.strconv.Strconv.NumError_asInterface to stdgo._internal.strconv.Strconv.NumError_asInterface {

}
@:forward @:forward.new abstract NumError_static_extension(stdgo._internal.strconv.Strconv.NumError_static_extension) from stdgo._internal.strconv.Strconv.NumError_static_extension to stdgo._internal.strconv.Strconv.NumError_static_extension {

}
@:forward @:forward.new abstract T_decimal_asInterface(stdgo._internal.strconv.Strconv.T_decimal_asInterface) from stdgo._internal.strconv.Strconv.T_decimal_asInterface to stdgo._internal.strconv.Strconv.T_decimal_asInterface {

}
@:forward @:forward.new abstract T_decimal_static_extension(stdgo._internal.strconv.Strconv.T_decimal_static_extension) from stdgo._internal.strconv.Strconv.T_decimal_static_extension to stdgo._internal.strconv.Strconv.T_decimal_static_extension {

}

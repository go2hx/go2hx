package stdgo.strconv;
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
function get_errRange():stdgo.Error return stdgo._internal.strconv.Strconv.errRange;
function set_errRange(v:stdgo.Error):stdgo.Error return stdgo._internal.strconv.Strconv.errRange = v;
var errSyntax(get, set) : stdgo.Error;
function get_errSyntax():stdgo.Error return stdgo._internal.strconv.Strconv.errSyntax;
function set_errSyntax(v:stdgo.Error):stdgo.Error return stdgo._internal.strconv.Strconv.errSyntax = v;
var bitSizeError(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>;
function get_bitSizeError():(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> return stdgo._internal.strconv.Strconv.bitSizeError;
function set_bitSizeError(v:(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>):(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> return stdgo._internal.strconv.Strconv.bitSizeError = v;
var baseError(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>;
function get_baseError():(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> return stdgo._internal.strconv.Strconv.baseError;
function set_baseError(v:(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>):(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> return stdgo._internal.strconv.Strconv.baseError = v;
@:invalid typedef NumError = Dynamic;
@:invalid typedef T_decimal = Dynamic;
@:invalid typedef T_leftCheat = Dynamic;
@:invalid typedef T_floatInfo = Dynamic;
@:invalid typedef T_decimalSlice = Dynamic;
/**
    ParseBool returns the boolean value represented by the string.
    It accepts 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False.
    Any other value returns an error.
**/
inline function parseBool(str:String):stdgo.Tuple<Bool, stdgo.Error> throw "not implemented";
/**
    FormatBool returns "true" or "false" according to the value of b.
**/
inline function formatBool(b:Bool):String throw "not implemented";
/**
    AppendBool appends "true" or "false", according to the value of b,
    to dst and returns the extended buffer.
**/
inline function appendBool(dst:Array<Int>, b:Bool):Array<Int> throw "not implemented";
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
inline function parseComplex(s:String, bitSize:Int):stdgo.Tuple<stdgo.GoComplex128, stdgo.Error> throw "not implemented";
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
inline function parseFloat(s:String, bitSize:Int):stdgo.Tuple<Float, stdgo.Error> throw "not implemented";
/**
    ParseUint is like ParseInt but for unsigned numbers.
    
    A sign prefix is not permitted.
**/
inline function parseUint(s:String, base:Int, bitSize:Int):stdgo.Tuple<haxe.UInt64, stdgo.Error> throw "not implemented";
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
inline function parseInt(s:String, base:Int, bitSize:Int):stdgo.Tuple<haxe.Int64, stdgo.Error> throw "not implemented";
/**
    Atoi is equivalent to ParseInt(s, 10, 0), converted to type int.
**/
inline function atoi(s:String):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
/**
    FormatComplex converts the complex number c to a string of the
    form (a+bi) where a and b are the real and imaginary parts,
    formatted according to the format fmt and precision prec.
    
    The format fmt and precision prec have the same meaning as in FormatFloat.
    It rounds the result assuming that the original was obtained from a complex
    value of bitSize bits, which must be 64 for complex64 and 128 for complex128.
**/
inline function formatComplex(c:stdgo.GoComplex128, fmt:Int, prec:Int, bitSize:Int):String throw "not implemented";
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
inline function formatFloat(f:Float, fmt:Int, prec:Int, bitSize:Int):String throw "not implemented";
/**
    AppendFloat appends the string form of the floating-point number f,
    as generated by FormatFloat, to dst and returns the extended buffer.
**/
inline function appendFloat(dst:Array<Int>, f:Float, fmt:Int, prec:Int, bitSize:Int):Array<Int> throw "not implemented";
inline function newDecimal(i:haxe.UInt64):T_decimal throw "not implemented";
inline function setOptimize(b:Bool):Bool throw "not implemented";
inline function parseFloatPrefix(s:String, bitSize:Int):stdgo.Tuple.Tuple3<Float, Int, stdgo.Error> throw "not implemented";
inline function mulByLog2Log10(x:Int):Int throw "not implemented";
inline function mulByLog10Log2(x:Int):Int throw "not implemented";
/**
    FormatUint returns the string representation of i in the given base,
    for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
    for digit values >= 10.
**/
inline function formatUint(i:haxe.UInt64, base:Int):String throw "not implemented";
/**
    FormatInt returns the string representation of i in the given base,
    for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
    for digit values >= 10.
**/
inline function formatInt(i:haxe.Int64, base:Int):String throw "not implemented";
/**
    Itoa is equivalent to FormatInt(int64(i), 10).
**/
inline function itoa(i:Int):String throw "not implemented";
/**
    AppendInt appends the string form of the integer i,
    as generated by FormatInt, to dst and returns the extended buffer.
**/
inline function appendInt(dst:Array<Int>, i:haxe.Int64, base:Int):Array<Int> throw "not implemented";
/**
    AppendUint appends the string form of the unsigned integer i,
    as generated by FormatUint, to dst and returns the extended buffer.
**/
inline function appendUint(dst:Array<Int>, i:haxe.UInt64, base:Int):Array<Int> throw "not implemented";
/**
    Quote returns a double-quoted Go string literal representing s. The
    returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
    control characters and non-printable characters as defined by
    IsPrint.
**/
inline function quote(s:String):String throw "not implemented";
/**
    AppendQuote appends a double-quoted Go string literal representing s,
    as generated by Quote, to dst and returns the extended buffer.
**/
inline function appendQuote(dst:Array<Int>, s:String):Array<Int> throw "not implemented";
/**
    QuoteToASCII returns a double-quoted Go string literal representing s.
    The returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
    non-ASCII characters and non-printable characters as defined by IsPrint.
**/
inline function quoteToASCII(s:String):String throw "not implemented";
/**
    AppendQuoteToASCII appends a double-quoted Go string literal representing s,
    as generated by QuoteToASCII, to dst and returns the extended buffer.
**/
inline function appendQuoteToASCII(dst:Array<Int>, s:String):Array<Int> throw "not implemented";
/**
    QuoteToGraphic returns a double-quoted Go string literal representing s.
    The returned string leaves Unicode graphic characters, as defined by
    IsGraphic, unchanged and uses Go escape sequences (\t, \n, \xFF, \u0100)
    for non-graphic characters.
**/
inline function quoteToGraphic(s:String):String throw "not implemented";
/**
    AppendQuoteToGraphic appends a double-quoted Go string literal representing s,
    as generated by QuoteToGraphic, to dst and returns the extended buffer.
**/
inline function appendQuoteToGraphic(dst:Array<Int>, s:String):Array<Int> throw "not implemented";
/**
    QuoteRune returns a single-quoted Go character literal representing the
    rune. The returned string uses Go escape sequences (\t, \n, \xFF, \u0100)
    for control characters and non-printable characters as defined by IsPrint.
    If r is not a valid Unicode code point, it is interpreted as the Unicode
    replacement character U+FFFD.
**/
inline function quoteRune(r:Int):String throw "not implemented";
/**
    AppendQuoteRune appends a single-quoted Go character literal representing the rune,
    as generated by QuoteRune, to dst and returns the extended buffer.
**/
inline function appendQuoteRune(dst:Array<Int>, r:Int):Array<Int> throw "not implemented";
/**
    QuoteRuneToASCII returns a single-quoted Go character literal representing
    the rune. The returned string uses Go escape sequences (\t, \n, \xFF,
    \u0100) for non-ASCII characters and non-printable characters as defined
    by IsPrint.
    If r is not a valid Unicode code point, it is interpreted as the Unicode
    replacement character U+FFFD.
**/
inline function quoteRuneToASCII(r:Int):String throw "not implemented";
/**
    AppendQuoteRuneToASCII appends a single-quoted Go character literal representing the rune,
    as generated by QuoteRuneToASCII, to dst and returns the extended buffer.
**/
inline function appendQuoteRuneToASCII(dst:Array<Int>, r:Int):Array<Int> throw "not implemented";
/**
    QuoteRuneToGraphic returns a single-quoted Go character literal representing
    the rune. If the rune is not a Unicode graphic character,
    as defined by IsGraphic, the returned string will use a Go escape sequence
    (\t, \n, \xFF, \u0100).
    If r is not a valid Unicode code point, it is interpreted as the Unicode
    replacement character U+FFFD.
**/
inline function quoteRuneToGraphic(r:Int):String throw "not implemented";
/**
    AppendQuoteRuneToGraphic appends a single-quoted Go character literal representing the rune,
    as generated by QuoteRuneToGraphic, to dst and returns the extended buffer.
**/
inline function appendQuoteRuneToGraphic(dst:Array<Int>, r:Int):Array<Int> throw "not implemented";
/**
    CanBackquote reports whether the string s can be represented
    unchanged as a single-line backquoted string without control
    characters other than tab.
**/
inline function canBackquote(s:String):Bool throw "not implemented";
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
inline function unquoteChar(s:String, quote:Int):stdgo.Tuple.Tuple4<Int, Bool, String, stdgo.Error> throw "not implemented";
/**
    QuotedPrefix returns the quoted string (as understood by Unquote) at the prefix of s.
    If s does not start with a valid quoted string, QuotedPrefix returns an error.
**/
inline function quotedPrefix(s:String):stdgo.Tuple<String, stdgo.Error> throw "not implemented";
/**
    Unquote interprets s as a single-quoted, double-quoted,
    or backquoted Go string literal, returning the string value
    that s quotes.  (If s is single-quoted, it would be a Go
    character literal; Unquote returns the corresponding
    one-character string.)
**/
inline function unquote(s:String):stdgo.Tuple<String, stdgo.Error> throw "not implemented";
/**
    IsPrint reports whether the rune is defined as printable by Go, with
    the same definition as unicode.IsPrint: letters, numbers, punctuation,
    symbols and ASCII space.
**/
inline function isPrint(r:Int):Bool throw "not implemented";
/**
    IsGraphic reports whether the rune is defined as a Graphic by Unicode. Such
    characters include letters, marks, numbers, punctuation, symbols, and
    spaces, from categories L, M, N, P, S, and Zs.
**/
inline function isGraphic(r:Int):Bool throw "not implemented";
@:invalid typedef NumError_asInterface = Dynamic;
@:invalid typedef NumError_static_extension = Dynamic;
@:invalid typedef T_decimal_asInterface = Dynamic;
@:invalid typedef T_decimal_static_extension = Dynamic;
